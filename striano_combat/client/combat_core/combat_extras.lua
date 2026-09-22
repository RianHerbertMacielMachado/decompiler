local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1
L0_1 = {}
MantisHandler = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = IsInPowerSavingMode
    L0_2 = L0_2()
    if not L0_2 then
      break
    end
    L0_2 = draw
    L1_2 = -1
    L2_2 = "Waiting focus..."
    L0_2(L1_2, L2_2)
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
    L0_2 = draw
    L1_2 = -1
    L2_2 = "Waiting exit pause..."
    L0_2(L1_2, L2_2)
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  while true do
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = draw
    L1_2 = -1
    L2_2 = "Waiting session..."
    L0_2(L1_2, L2_2)
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  while true do
    L0_2 = NetworkIsPlayerActive
    L1_2 = PlayerId
    L1_2, L2_2, L3_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    if L0_2 then
      break
    end
    L0_2 = draw
    L1_2 = -1
    L2_2 = "Waiting player active..."
    L0_2(L1_2, L2_2)
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  while true do
    if L0_2 and 0 ~= L0_2 then
      L1_2 = DoesEntityExist
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
    end
    L1_2 = draw
    L2_2 = -1
    L3_2 = "Waiting valid ped..."
    L1_2(L2_2, L3_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L0_2 = L1_2
  end
  L1_2 = Wait
  L2_2 = 1500
  L1_2(L2_2)
  L1_2 = InitCombat
  L1_2()
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  while true do
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L0_2 = L1_2
    if L0_2 and 0 ~= L0_2 then
      L1_2 = DoesEntityExist
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = IsEntityVisible
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = IsEntityPositionFrozen
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            break
          end
        end
      end
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = onInitCombat
  L1_2()
  L1_2 = loopPortali
  L1_2()
  L1_2 = print
  L2_2 = "^2[Striano Combat v1.99] ^7Hello Fighters, have fun. ^1<3"
  L1_2(L2_2)
  L1_2 = EasyCombat
  if L1_2 then
    L1_2 = print
    L2_2 = "^2[Easy Combat is ACTIVE!] ^7Use ^1/EasyCombat ^7to enable Classic Combat with WASD System!"
    L1_2(L2_2)
  end
  L1_2 = print
  L2_2 = "^5Combat Ready, your combat style (melee) ID: ^5[^7"
  L3_2 = tostring
  L4_2 = myWStyle
  L3_2 = L3_2(L4_2)
  L4_2 = "^5]"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = onInitCombatCustom
  L1_2()
end
InitCombat = L0_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetInvokingResource
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = "striano_combat"
  end
  L2_2 = L0_1
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[L1_2] = L3_2
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = 0
  end
  L3_2 = L3_2 + 1
  L2_2[A0_2] = L3_2
end
trackLoad = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetInvokingResource
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = "striano_combat"
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = L0_1
      L2_2 = L2_2[L1_2]
      L3_2 = L0_1
      L3_2 = L3_2[L1_2]
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2 - 1
      L2_2[A0_2] = L3_2
      L2_2 = L0_1
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2[A0_2]
      if L2_2 <= 0 then
        L2_2 = L0_1
        L2_2 = L2_2[L1_2]
        L2_2[A0_2] = nil
      end
    end
  end
end
trackUnload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = trackLoad
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
end
DebugRequestAnimDict = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = trackUnload
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = RemoveAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
end
DebugRemoveAnimDict = L1_1
L1_1 = 0
L2_1 = {}
L3_1 = 0
L4_1 = {}
L5_1 = "W"
L6_1 = "A"
L7_1 = "D"
L8_1 = "SW"
L9_1 = "SA"
L10_1 = "SD"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L4_1[5] = L9_1
L4_1[6] = L10_1
L5_1 = RegisterNetEvent
L6_1 = "trainCombat"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "trainCombat"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = mySword
  if 0 == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexType
    L2_2 = "You need a melee weapon to training!"
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L2_1
  L1_2 = #L1_2
  if 0 == L1_2 then
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "TENNIS_MATCH_POINT"
    L4_2 = "HUD_AWARDS"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = {}
    L2_1 = L1_2
    L1_2 = 1
    L2_2 = 10
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = math
      L5_2 = L5_2.random
      L6_2 = 1
      L7_2 = L4_1
      L7_2 = #L7_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L2_1
      L7_2 = L4_1
      L7_2 = L7_2[L5_2]
      L6_2[L4_2] = L7_2
    end
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexType
    L3_2 = "Get ready and complete the combination in time! Remember 'S' means Shift +  Key!"
    L1_2(L2_2, L3_2)
    L1_2 = Sfoggiate
    if not L1_2 then
      L1_2 = handleSword
      L1_2()
    end
    L1_2 = Wait
    L2_2 = 5000
    L1_2(L2_2)
    L1_2 = ""
    L2_2 = testo3d
    L3_2 = "Combination ready."
    L2_2(L3_2)
    L2_2 = 1
    L3_2 = L2_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      if 1 == L5_2 then
        L6_2 = L2_1
        L1_2 = L6_2[L5_2]
      else
        L6_2 = L1_2
        L7_2 = " "
        L8_2 = L2_1
        L8_2 = L8_2[L5_2]
        L6_2 = L6_2 .. L7_2 .. L8_2
        L1_2 = L6_2
      end
    end
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submex
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = LoopTimerTraining
    L2_2()
  end
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if 0 == L0_2 then
    L0_2 = 10
    L3_1 = L0_2
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      while true do
        L0_3 = L3_1
        if L0_3 > 0 then
          L0_3 = L3_1
          L0_3 = L0_3 - 1
          L3_1 = L0_3
        end
        L0_3 = L3_1
        if 0 == L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_combat
          L1_3 = L0_3
          L0_3 = L0_3.submexType
          L2_3 = "Training stopped for too much waiting."
          L0_3(L1_3, L2_3)
          L0_3 = PlaySoundFrontend
          L1_3 = -1
          L2_3 = "MP_AWARD"
          L3_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          L4_3 = 1
          L0_3(L1_3, L2_3, L3_3, L4_3)
          L0_3 = {}
          L2_1 = L0_3
          L0_3 = 0
          L1_1 = L0_3
          L0_3 = 0
          L3_1 = L0_3
          return
        end
        L0_3 = L3_1
        if L0_3 < 0 then
          L0_3 = 0
          L3_1 = L0_3
          return
        end
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
      end
    end
    L0_2(L1_2)
  end
end
LoopTimerTraining = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = EasyCombat
  if L2_2 then
    L2_2 = PlaySoundFrontend
    L3_2 = -1
    L4_2 = "MP_AWARD"
    L5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submex
    L4_2 = "You can't train with Easy Combat active."
    L2_2(L3_2, L4_2)
    L2_2 = Sfoggiate
    if L2_2 then
      L2_2 = FoderaArmi
      L2_2()
    end
    while true do
      L2_2 = CombatActive
      if not L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 0
      L2_2(L3_2)
    end
    L2_2 = {}
    L2_1 = L2_2
    L2_2 = 0
    L1_1 = L2_2
    L2_2 = -10
    L3_1 = L2_2
  else
    L2_2 = L2_1
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = L1_1
      L2_2 = L2_2 + 1
      L1_1 = L2_2
      L2_2 = 6
      L3_1 = L2_2
      L2_2 = ""
      L4_2 = L1_1
      L3_2 = L2_1
      L3_2 = L3_2[L4_2]
      if L3_2 == A0_2 then
        L3_2 = L1_1
        L3_2 = L3_2 + 1
        L4_2 = L2_1
        L4_2 = #L4_2
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          if 1 == L6_2 then
            L7_2 = L2_1
            L2_2 = L7_2[L6_2]
          else
            L7_2 = L2_2
            L8_2 = " "
            L9_2 = L2_1
            L9_2 = L9_2[L6_2]
            L7_2 = L7_2 .. L8_2 .. L9_2
            L2_2 = L7_2
          end
          L7_2 = exports
          L7_2 = L7_2.striano_combat
          L8_2 = L7_2
          L7_2 = L7_2.submex
          L9_2 = L2_2
          L7_2(L8_2, L9_2)
        end
        L3_2 = PlaySoundFrontend
        L4_2 = -1
        L5_2 = "MP_5_SECOND_TIMER"
        L6_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        L7_2 = 1
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L3_2 = testo3d
        L4_2 = "Good!"
        L3_2(L4_2)
        L3_2 = L1_1
        if 10 == L3_2 then
          CombatActive = false
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submex
          L5_2 = ""
          L3_2(L4_2, L5_2)
          L3_2 = PlaySoundFrontend
          L4_2 = -1
          L5_2 = "Mission_Pass_Notify"
          L6_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
          L7_2 = 1
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = {}
          L2_1 = L3_2
          L3_2 = 0
          L1_1 = L3_2
          L3_2 = -10
          L3_1 = L3_2
          L3_2 = FoderaArmi
          L3_2()
          L3_2 = 0.01
          L4_2 = exports
          L4_2 = L4_2.striano_combat
          L5_2 = L4_2
          L4_2 = L4_2.submexType
          L6_2 = "Training complete, now you are more fast of "
          L7_2 = L3_2
          L8_2 = " between each moves."
          L6_2 = L6_2 .. L7_2 .. L8_2
          L4_2(L5_2, L6_2)
          L4_2 = myOwnSpeed
          L4_2 = L4_2 + 0.01
          myOwnSpeed = L4_2
          L4_2 = myTraining
          if 10 == L4_2 then
            L4_2 = testo3d
            L5_2 = [[
10 Train!
Valor Warrior!]]
            L4_2(L5_2)
            L4_2 = myOwnSpeed
            L4_2 = L4_2 + 0.05
            myOwnSpeed = L4_2
            myTraining = 0
            L4_2 = shareSound
            L5_2 = "sounds/striano_combat/magic/soulsteal"
            L6_2 = 0.1
            L7_2 = PlayerPedId
            L7_2 = L7_2()
            L8_2 = 3.0
            L4_2(L5_2, L6_2, L7_2, L8_2)
          end
          L4_2 = ResetStrafeImmediately
          L5_2 = L1_2
          L4_2(L5_2)
          L4_2 = ClearPedTasks
          L5_2 = L1_2
          L4_2(L5_2)
        end
      else
        L3_2 = PlaySoundFrontend
        L4_2 = -1
        L5_2 = "MP_AWARD"
        L6_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        L7_2 = 1
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.submex
        L5_2 = "You failed the combination, training stopped."
        L3_2(L4_2, L5_2)
        L3_2 = Sfoggiate
        if L3_2 then
          L3_2 = FoderaArmi
          L3_2()
        end
        while true do
          L3_2 = CombatActive
          if not L3_2 then
            break
          end
          L3_2 = Wait
          L4_2 = 0
          L3_2(L4_2)
        end
        L3_2 = {}
        L2_1 = L3_2
        L3_2 = 0
        L1_1 = L3_2
        L3_2 = -10
        L3_1 = L3_2
      end
    end
  end
end
CheckTrain = L5_1
L5_1 = RegisterNetEvent
L6_1 = "party:friendlyFireBlocked"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "party:friendlyFireBlocked"
function L7_1()
  local L0_2, L1_2
  L0_2 = MarkerOn
  if L0_2 then
    L0_2 = print
    L1_2 = "hey friendlyFireBlocked!"
    L0_2(L1_2)
  end
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = BloodActive
  if L2_2 then
    if 1 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_8"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 2 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_9"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 3 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "Car_Crash_Light"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 4 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "Dirt_Grass"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 5 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_DogAttack"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 6 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_Dumpster"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 7 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "BigHitByVehicle"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 8 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "Fall"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 9 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_Shark"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 10 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "Splashback_Face_0"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 11 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_Torture"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 12 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "Useful_Bits"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 13 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_TrevorTreeBang"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 14 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_Finale_Michael_Face"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 15 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_Franklin_finb"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 16 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_Finale_Michael"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 17 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_Franklin_finb2"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 18 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "Explosion_Med"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 19 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "SCR_TracySplash"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 20 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "Skin_Melee_0"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 21 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_0"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 22 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_1"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 23 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_2"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 24 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_3"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 25 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_4"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 26 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_5"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 27 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_6"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif 28 == A1_2 then
      L2_2 = ApplyPedDamagePackLegacy
      L3_2 = A0_2
      L4_2 = "HOSPITAL_7"
      L5_2 = 1.0
      L6_2 = 1.0
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
ApplyBlood = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 1
  L1_2 = holsterlist
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = IsEntityPlayingAnim
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = holsterlist
    L6_2 = L6_2[L3_2]
    L6_2 = L6_2.a
    L7_2 = holsterlist
    L7_2 = L7_2[L3_2]
    L7_2 = L7_2.b
    L8_2 = 3
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if L4_2 then
      L4_2 = true
      return L4_2
    end
  end
  L0_2 = false
  return L0_2
end
inHolsterAnim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = inLeviosa
  if not L2_2 then
    L2_2 = inSpellAnim
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = L1_2
      L4_2 = "hit_react_heavy_front_knockback_stagger"
      L5_2 = "hit_react_heavy_front_knockback_stagger_clip"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        L2_2 = IsEntityPlayingAnim
        L3_2 = L1_2
        L4_2 = "melee@wfire@beast_werewolf_animset"
        L5_2 = "wfire_wmg_werewolf_beast_forward_sprint_anim"
        L6_2 = 3
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        if not L2_2 then
          L2_2 = SfoggiatoBow
          if L2_2 then
            L2_2 = IsDisabledControlPressed
            L3_2 = 0
            L4_2 = 24
            L2_2 = L2_2(L3_2, L4_2)
            if L2_2 then
              L2_2 = TriggerServerEvent
              L3_2 = "SyncRotationCombat"
              L4_2 = GetGameplayCamRot
              L5_2 = 0
              L4_2 = L4_2(L5_2)
              L4_2 = L4_2.z
              L5_2 = GetEntityCoords
              L6_2 = L1_2
              L5_2 = L5_2(L6_2)
              L6_2 = GetPlayerServerId
              L7_2 = PlayerId
              L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
              L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              L2_2 = ecc
              L2_2()
              L2_2 = ClearPedSecondaryTask
              L3_2 = L1_2
              L2_2(L3_2)
              L2_2 = ClearPedTasks
              L3_2 = L1_2
              L2_2(L3_2)
              L2_2 = "bow_and_arrow_idle_aim"
              L3_2 = "bow_and_arrow_idle_aim_clip"
              L4_2 = GetGameplayCamRot
              L5_2 = 2
              L4_2 = L4_2(L5_2)
              L4_2 = L4_2.x
              if L4_2 >= 20.0 then
                L5_2 = "bow_and_arrow_aim_idle_up"
                L3_2 = "bow_and_arrow_aim_idle_up_clip"
                L2_2 = L5_2
              elseif L4_2 < -20.0 then
                L5_2 = "bow_and_arrow_aim_idle_down"
                L3_2 = "bow_and_arrow_aim_idle_down_clip"
                L2_2 = L5_2
              end
              L5_2 = 2
              L6_2 = IsEntityAttached
              L7_2 = L1_2
              L6_2 = L6_2(L7_2)
              if L6_2 then
                L5_2 = 49
              end
              L6_2 = LoadAnim
              L7_2 = L2_2
              L6_2(L7_2)
              L6_2 = Wait
              L7_2 = 25
              L6_2(L7_2)
              L6_2 = TaskPlayAnim
              L7_2 = L1_2
              L8_2 = L2_2
              L9_2 = L3_2
              L10_2 = 3.0
              L11_2 = 1.0
              L12_2 = -1
              L13_2 = L5_2
              L14_2 = false
              L15_2 = false
              L16_2 = false
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
            else
              L2_2 = inBowAnims
              L3_2 = L1_2
              L2_2 = L2_2(L3_2)
              if L2_2 then
                L2_2 = IsEntityAttached
                L3_2 = L1_2
                L2_2 = L2_2(L3_2)
                if L2_2 then
                  L2_2 = ClearPedTasks
                  L3_2 = L1_2
                  L2_2(L3_2)
                else
                  L2_2 = ecc
                  L2_2()
                end
              end
            end
          else
            function L2_2(A0_3, A1_3)
              local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
              L2_3 = LoadAnim
              L3_3 = idleFight
              L3_3 = L3_3[A0_3]
              L3_3 = L3_3.a
              L2_3(L3_3)
              while true do
                L2_3 = UltimaMossa
                if not (L2_3 > 0) then
                  break
                end
                L2_3 = IsEntityPlayingAnim
                L3_3 = A1_3
                L4_3 = AnimFightList
                L5_3 = UltimaMossa
                L4_3 = L4_3[L5_3]
                L4_3 = L4_3.a
                L5_3 = AnimFightList
                L6_3 = UltimaMossa
                L5_3 = L5_3[L6_3]
                L5_3 = L5_3.b
                L6_3 = 3
                L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                if not L2_3 then
                  break
                end
                L2_3 = Wait
                L3_3 = 0
                L2_3(L3_3)
              end
              L2_3 = IsEntityAttached
              L3_3 = A1_3
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = ClearPedSecondaryTask
                L3_3 = A1_3
                L2_3(L3_3)
                L2_3 = ClearPedTasks
                L3_3 = A1_3
                L2_3(L3_3)
              else
                L2_3 = ecc
                L2_3()
              end
              L2_3 = idleFight
              L2_3 = L2_3[A0_3]
              L2_3 = L2_3.flag
              if not L2_3 then
                L2_3 = 49
              end
              L3_3 = IsEntityAttached
              L4_3 = A1_3
              L3_3 = L3_3(L4_3)
              if not L3_3 then
                L3_3 = IsEntityInWater
                L4_3 = A1_3
                L3_3 = L3_3(L4_3)
                if not L3_3 then
                  goto lbl_58
                end
              end
              L2_3 = 49
              ::lbl_58::
              L3_3 = TaskPlayAnim
              L4_3 = A1_3
              L5_3 = idleFight
              L5_3 = L5_3[A0_3]
              L5_3 = L5_3.a
              L6_3 = idleFight
              L6_3 = L6_3[A0_3]
              L6_3 = L6_3.b
              L7_3 = 3.0
              L8_3 = 1.0
              L9_3 = -1
              L10_3 = L2_3
              L11_3 = false
              L12_3 = false
              L13_3 = false
              L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            end
            animIdleLocal = L2_2
            L2_2 = IsControlPressed
            L3_2 = 0
            L4_2 = 32
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
                if not L2_2 then
                  L2_2 = IsControlPressed
                  L3_2 = 0
                  L4_2 = 22
                  L2_2 = L2_2(L3_2, L4_2)
                  if not L2_2 then
                    L2_2 = IsDisabledControlPressed
                    L3_2 = 0
                    L4_2 = 32
                    L2_2 = L2_2(L3_2, L4_2)
                    if not L2_2 then
                      L2_2 = IsDisabledControlPressed
                      L3_2 = 0
                      L4_2 = 34
                      L2_2 = L2_2(L3_2, L4_2)
                      if not L2_2 then
                        L2_2 = IsDisabledControlPressed
                        L3_2 = 0
                        L4_2 = 35
                        L2_2 = L2_2(L3_2, L4_2)
                        if not L2_2 then
                          L2_2 = IsDisabledControlPressed
                          L3_2 = 0
                          L4_2 = 22
                          L2_2 = L2_2(L3_2, L4_2)
                        end
                      end
                    end
                  end
                end
              end
            end
            L3_2 = idleFight
            L3_2 = L3_2[A0_2]
            L3_2 = L3_2.flag
            if 1 == L3_2 then
              if not L2_2 then
                L3_2 = animIdleLocal
                L4_2 = A0_2
                L5_2 = L1_2
                L3_2(L4_2, L5_2)
              end
            else
              L3_2 = animIdleLocal
              L4_2 = A0_2
              L5_2 = L1_2
              L3_2(L4_2, L5_2)
            end
          end
        end
      end
    end
  end
end
LoadIdleFight = L5_1
L5_1 = exports
L6_1 = "LoadIdleFight"
L7_1 = LoadIdleFight
L5_1(L6_1, L7_1)
SuperSpeed = false
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = SuperSpeed
  L0_2 = not L0_2
  SuperSpeed = L0_2
  L0_2 = SuperSpeed
  if L0_2 then
    L0_2 = genGrunt
    L0_2()
    L0_2 = GetGameTimer
    L0_2 = L0_2()
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = SuperSpeed
        if not L0_3 then
          return
        end
        L0_3 = SetPedMoveRateOverride
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = SuperSpeedVelocity
        L0_3(L1_3, L2_3)
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L0_2
        L0_3 = L0_3 - L1_3
        L1_3 = TIMER_SUPERSPEED
        L1_3 = L1_3 - L0_3
        if L1_3 > 0 then
          L2_3 = math
          L2_3 = L2_3.ceil
          L3_3 = L1_3 / 1000
          L2_3 = L2_3(L3_3)
          L3_3 = table
          L3_3 = L3_3.unpack
          L4_3 = GetPedBoneCoords
          L5_3 = PlayerPedId
          L5_3 = L5_3()
          L6_3 = 24818
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L4_3(L5_3, L6_3)
          L3_3, L4_3, L5_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          L6_3 = vector3
          L7_3 = L3_3
          L8_3 = L4_3
          L9_3 = L5_3
          L6_3 = L6_3(L7_3, L8_3, L9_3)
          L7_3 = DrawText3DCombat
          L8_3 = L3_3
          L9_3 = L4_3
          L10_3 = L5_3 - 1.0
          L11_3 = "~h~"
          L12_3 = L2_3
          L11_3 = L11_3 .. L12_3
          L7_3(L8_3, L9_3, L10_3, L11_3)
        else
          SuperSpeed = false
          L2_3 = SetPedMoveRateOverride
          L3_3 = PlayerPedId
          L3_3 = L3_3()
          L4_3 = 0.0
          L2_3(L3_3, L4_3)
          return
        end
      end
    end
    L1_2(L2_2)
  else
    L0_2 = SetPedMoveRateOverride
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = 0.0
    L0_2(L1_2, L2_2)
  end
end
ToggleSuperSpeed = L5_1
function L5_1()
  local L0_2, L1_2
  SuperSpeed = true
  L0_2 = SuperSpeed
  if L0_2 then
    L0_2 = genGrunt
    L0_2()
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = SuperSpeed
        if not L0_3 then
          return
        end
        L0_3 = SetPedMoveRateOverride
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = 2.0
        L0_3(L1_3, L2_3)
      end
    end
    L0_2(L1_2)
  end
end
activeSuperSpeed = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  SuperSpeed = false
  L0_2 = SetPedMoveRateOverride
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 0.0
  L0_2(L1_2, L2_2)
end
stopSuperSpeed = L5_1
L5_1 = RegisterNetEvent
L6_1 = "combat:ApplySword"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "combat:ApplySword"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.strianosetweapon
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2
  L0_2 = SwordObj
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = SwordObj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = SwordObj
      L0_2(L1_2)
      L0_2 = DelIfOnClient
      L1_2 = SwordObj
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = SwordObj
      L0_2(L1_2)
      SwordObj = nil
    end
  end
  L0_2 = SwordObj2
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = SwordObj2
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = SwordObj2
      L0_2(L1_2)
      L0_2 = DelIfOnClient
      L1_2 = SwordObj2
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = SwordObj2
      L0_2(L1_2)
      SwordObj2 = nil
    end
  end
  L0_2 = BowObj
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = BowObj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = BowObj
      L0_2(L1_2)
      L0_2 = DelIfOnClient
      L1_2 = BowObj
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = BowObj
      L0_2(L1_2)
      BowObj = nil
    end
  end
  L0_2 = ShieldObj
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = ShieldObj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = SetEntityAsMissionEntity
      L1_2 = ShieldObj
      L0_2(L1_2)
      L0_2 = DelIfOnClient
      L1_2 = ShieldObj
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = ShieldObj
      L0_2(L1_2)
      ShieldObj = nil
    end
  end
end
DeleteAllAttached = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = myShield
  if L1_2 > 0 then
    L1_2 = IsPedHuman
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsEntityVisible
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = GetEntityCoords
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = ShieldObj
        if L2_2 then
          L2_2 = DetachEntity
          L3_2 = ShieldObj
          L2_2(L3_2)
          L2_2 = SetEntityAsMissionEntity
          L3_2 = ShieldObj
          L2_2(L3_2)
          L2_2 = DelIfOnClient
          L3_2 = ShieldObj
          L2_2(L3_2)
          L2_2 = DeleteEntity
          L3_2 = ShieldObj
          L2_2(L3_2)
          ShieldObj = nil
        end
        L2_2 = ShieldList
        L3_2 = myShield
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.m
        L3_2 = RequestModelStriano
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = CreateObjectNoOffset
        L4_2 = GetHashKey
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = L1_2.x
        L6_2 = L1_2.y
        L7_2 = L1_2.z
        L7_2 = L7_2 - 1.0
        L8_2 = true
        L9_2 = true
        L10_2 = false
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        ShieldObj = L3_2
        L3_2 = SetEntityCollision
        L4_2 = ShieldObj
        L5_2 = false
        L6_2 = false
        L3_2(L4_2, L5_2, L6_2)
        while true do
          L3_2 = DoesEntityExist
          L4_2 = ShieldObj
          L3_2 = L3_2(L4_2)
          if L3_2 then
            break
          end
          L3_2 = Wait
          L4_2 = 0
          L3_2(L4_2)
        end
        L3_2 = MakeSwordNET
        L4_2 = ShieldObj
        L3_2(L4_2)
        L3_2 = ShieldList
        L4_2 = myShield
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.attposato
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = L3_2
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
        f = L9_2
        e = L8_2
        d = L7_2
        c = L6_2
        b = L5_2
        a = L4_2
        L4_2 = AttachEntityToEntity
        L5_2 = ShieldObj
        L6_2 = L0_2
        L7_2 = GetPedBoneIndex
        L8_2 = L0_2
        L9_2 = ShieldList
        L10_2 = myShield
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.boneposato
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = a
        L9_2 = b
        L10_2 = c
        L11_2 = d
        L12_2 = e
        L13_2 = f
        L14_2 = true
        L15_2 = true
        L16_2 = false
        L17_2 = true
        L18_2 = 1
        L19_2 = true
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L4_2 = SetModelAsNoLongerNeeded
        L5_2 = L2_2
        L4_2(L5_2)
      end
    end
  end
end
GeneraShield = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = myBow
  if L1_2 > 0 then
    L1_2 = IsPedHuman
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsEntityVisible
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = ImACreaturePed
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = GetEntityCoords
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          L2_2 = BowObj
          if L2_2 then
            L2_2 = DoesEntityExist
            L3_2 = BowObj
            L2_2 = L2_2(L3_2)
            if L2_2 then
              L2_2 = SetEntityAsMissionEntity
              L3_2 = BowObj
              L2_2(L3_2)
              L2_2 = DelIfOnClient
              L3_2 = BowObj
              L2_2(L3_2)
              L2_2 = DeleteEntity
              L3_2 = BowObj
              L2_2(L3_2)
              BowObj = nil
            end
          end
          L2_2 = BowList
          L3_2 = myBow
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.m
          L3_2 = L2_2
          L4_2 = RequestModelStriano
          L5_2 = L3_2
          L4_2(L5_2)
          L4_2 = CreateObjectNoOffset
          L5_2 = GetHashKey
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          L6_2 = L1_2.x
          L7_2 = L1_2.y
          L8_2 = L1_2.z
          L8_2 = L8_2 - 1.0
          L9_2 = true
          L10_2 = true
          L11_2 = false
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
          BowObj = L4_2
          L4_2 = SetEntityCollision
          L5_2 = BowObj
          L6_2 = false
          L7_2 = false
          L4_2(L5_2, L6_2, L7_2)
          while true do
            L4_2 = DoesEntityExist
            L5_2 = BowObj
            L4_2 = L4_2(L5_2)
            if L4_2 then
              break
            end
            L4_2 = Wait
            L5_2 = 0
            L4_2(L5_2)
          end
          L4_2 = MakeSwordNET
          L5_2 = BowObj
          L4_2(L5_2)
          L4_2 = BowList
          L5_2 = myBow
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2.posato
          L5_2 = AttachEntityToEntity
          L6_2 = BowObj
          L7_2 = L0_2
          L8_2 = GetPedBoneIndex
          L9_2 = L0_2
          L10_2 = 24818
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = L4_2[1]
          L10_2 = L4_2[2]
          L11_2 = L4_2[3]
          L12_2 = L4_2[4]
          L13_2 = L4_2[5]
          L14_2 = L4_2[6]
          L15_2 = true
          L16_2 = true
          L17_2 = false
          L18_2 = true
          L19_2 = 1
          L20_2 = true
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L5_2 = SetModelAsNoLongerNeeded
          L6_2 = L3_2
          L5_2(L6_2)
        end
      end
    end
  end
end
GeneraBow = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = BowObj
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = BowObj
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = BowObj
      L1_2(L2_2)
      L1_2 = DelIfOnClient
      L2_2 = BowObj
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = BowObj
      L1_2(L2_2)
      BowObj = nil
    end
  end
end
delBow = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L9_2 = TriggerServerEvent
  L10_2 = "HitSound"
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  L18_2 = A7_2
  L19_2 = A8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
SuonoGlobal = L5_1
function L5_1()
  local L0_2, L1_2
  L0_2 = SwordObj
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = SwordObj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DetachEntity
      L1_2 = SwordObj
      L0_2(L1_2)
      L0_2 = SetEntityAsMissionEntity
      L1_2 = SwordObj
      L0_2(L1_2)
      L0_2 = DelIfOnClient
      L1_2 = SwordObj
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = SwordObj
      L0_2(L1_2)
      SwordObj = nil
    end
  end
  L0_2 = SwordObj2
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = SwordObj2
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DetachEntity
      L1_2 = SwordObj2
      L0_2(L1_2)
      L0_2 = SetEntityAsMissionEntity
      L1_2 = SwordObj2
      L0_2(L1_2)
      L0_2 = DelIfOnClient
      L1_2 = SwordObj2
      L0_2(L1_2)
      L0_2 = DeleteEntity
      L1_2 = SwordObj2
      L0_2(L1_2)
      SwordObj2 = nil
    end
  end
end
resetSwords = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = SfoggiatoBow
  if L0_2 then
    L0_2 = myBow
    if L0_2 > 0 then
      L0_2 = DoesEntityExist
      L1_2 = BowObj
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = PlayerPedId
        L0_2 = L0_2()
        SfoggiatoBow = false
        L1_2 = DetachEntity
        L2_2 = BowObj
        L1_2(L2_2)
        L1_2 = Wait
        L2_2 = 0
        L1_2(L2_2)
        L1_2 = BowList
        L2_2 = myBow
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.posato
        L2_2 = AttachEntityToEntity
        L3_2 = BowObj
        L4_2 = L0_2
        L5_2 = GetPedBoneIndex
        L6_2 = L0_2
        L7_2 = 24818
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = L1_2[1]
        L7_2 = L1_2[2]
        L8_2 = L1_2[3]
        L9_2 = L1_2[4]
        L10_2 = L1_2[5]
        L11_2 = L1_2[6]
        L12_2 = true
        L13_2 = true
        L14_2 = false
        L15_2 = true
        L16_2 = 1
        L17_2 = true
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L2_2 = delBowCam
        L2_2()
        L2_2 = ClearPedTasks
        L3_2 = L0_2
        L2_2(L3_2)
        L2_2 = ClearPedSecondaryTask
        L3_2 = L0_2
        L2_2(L3_2)
      end
    end
  end
end
resetBow = L5_1
function L5_1()
  local L0_2, L1_2
  L0_2 = FightPed
  if nil ~= L0_2 then
    FightPed = nil
  end
  L0_2 = indexTarget
  if L0_2 > 0 then
    indexTarget = 0
  end
end
ResetEnemy = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = SwordList
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L5_2 == A0_2 then
      L7_2 = L6_2.Name
      return L7_2
    end
  end
end
GetSwordNameFromId = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = IsPedFatallyInjured
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = IsPedDeadOrDying
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
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
end
makeEntityFaceEntity = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = IsPedFatallyInjured
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = IsPedFatallyInjured
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
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
      L9_2 = L6_2 + 90.0
      L7_2(L8_2, L9_2)
    end
  end
end
makeEntityFaceEntity2 = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = FightPed
  if nil ~= L0_2 then
    L0_2 = 0.5
    L1_2 = GetEntityCoords
    L2_2 = FightPed
    L1_2 = L1_2(L2_2)
    L2_2 = GetEntityForwardVector
    L3_2 = FightPed
    L2_2 = L2_2(L3_2)
    L3_2 = table
    L3_2 = L3_2.unpack
    L4_2 = L2_2 * L0_2
    L4_2 = L4_2 * -1
    L4_2 = L1_2 + L4_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = GetEntityCoords
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = vector3
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L7_2 - L8_2
    L7_2 = #L7_2
    L8_2 = 0.75
    if L7_2 < L8_2 then
      L7_2 = GetEntitySpeed
      L8_2 = FightPed
      L7_2 = L7_2(L8_2)
      if L7_2 <= 2.0 then
        L7_2 = FightPed
        if nil ~= L7_2 then
          L7_2 = IsPedFatallyInjured
          L8_2 = FightPed
          L7_2 = L7_2(L8_2)
          if not L7_2 then
            L7_2 = IsEntityAttached
            L8_2 = FightPed
            L7_2 = L7_2(L8_2)
            if not L7_2 then
              L7_2 = IsPedDeadOrDying
              L8_2 = FightPed
              L7_2 = L7_2(L8_2)
              if not L7_2 then
                L7_2 = FixCrouch
                L7_2()
                L7_2 = ClearPedTasks
                L8_2 = L6_2
                L7_2(L8_2)
                L7_2 = makeEntityFaceEntity
                L8_2 = L6_2
                L9_2 = FightPed
                L7_2(L8_2, L9_2)
                L7_2 = FreezeEntityPosition
                L8_2 = FightPed
                L9_2 = true
                L7_2(L8_2, L9_2)
                L7_2 = SetPedMute
                L8_2 = FightPed
                L7_2(L8_2)
                L7_2 = CanPedSpeak
                L8_2 = FightPed
                L9_2 = false
                L10_2 = 0
                L7_2(L8_2, L9_2, L10_2)
                L7_2 = StopPedSpeaking
                L8_2 = FightPed
                L9_2 = false
                L7_2(L8_2, L9_2)
                L7_2 = DisablePedPainAudio
                L8_2 = FightPed
                L9_2 = true
                L7_2(L8_2, L9_2)
                L7_2 = "gt_Animations"
                L8_2 = "rz_neckbreak_atk_clip"
                L9_2 = LoadAnim
                L10_2 = L7_2
                L9_2(L10_2)
                L9_2 = "gt_Animations"
                L10_2 = "rz_neckbreak_vic_clip"
                L11_2 = LoadAnim
                L12_2 = L9_2
                L11_2(L12_2)
                L11_2 = TaskPlayAnim
                L12_2 = L6_2
                L13_2 = L7_2
                L14_2 = L8_2
                L15_2 = 3.0
                L16_2 = 1.0
                L17_2 = 2500
                L18_2 = 0
                L19_2 = 0
                L20_2 = 0
                L21_2 = 0
                L22_2 = 0
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                L11_2 = TaskPlayAnim
                L12_2 = FightPed
                L13_2 = L9_2
                L14_2 = L10_2
                L15_2 = 3.0
                L16_2 = 1.0
                L17_2 = 2500
                L18_2 = 2
                L19_2 = 0
                L20_2 = 0
                L21_2 = 0
                L22_2 = 0
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                L11_2 = SetPedCanRagdoll
                L12_2 = FightPed
                L13_2 = true
                L11_2(L12_2, L13_2)
                L11_2 = SetPedCanRagdollFromPlayerImpact
                L12_2 = FightPed
                L13_2 = true
                L11_2(L12_2, L13_2)
                L11_2 = Wait
                L12_2 = 1300
                L11_2(L12_2)
                L11_2 = GetEntityCoords
                L12_2 = L6_2
                L11_2 = L11_2(L12_2)
                L12_2 = SuonoGlobal
                L13_2 = -1
                L14_2 = "LEADERBOARD"
                L15_2 = L11_2.x
                L16_2 = L11_2.y
                L17_2 = L11_2.z
                L18_2 = "HUD_MINI_GAME_SOUNDSET"
                L19_2 = 1
                L20_2 = 7.0
                L21_2 = 0
                L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                L12_2 = Wait
                L13_2 = 400
                L12_2(L13_2)
                L12_2 = FreezeEntityPosition
                L13_2 = FightPed
                L14_2 = false
                L12_2(L13_2, L14_2)
                L12_2 = ClearPedTasks
                L13_2 = L6_2
                L12_2(L13_2)
                L12_2 = IsPedAPlayer
                L13_2 = FightPed
                L12_2 = L12_2(L13_2)
                if L12_2 then
                  L12_2 = PlayerVicino
                  L12_2, L13_2 = L12_2()
                  if -1 ~= L12_2 then
                    L14_2 = IsPedAPlayer
                    L15_2 = GetPlayerPed
                    L16_2 = L12_2
                    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2)
                    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
                    if L14_2 then
                      L14_2 = FightPed
                      L15_2 = GetPlayerPed
                      L16_2 = L12_2
                      L15_2 = L15_2(L16_2)
                      if L14_2 == L15_2 then
                        L14_2 = TriggerServerEvent
                        L15_2 = "SetHPCombat"
                        L16_2 = GetPlayerServerId
                        L17_2 = L12_2
                        L16_2 = L16_2(L17_2)
                        L17_2 = 0
                        L14_2(L15_2, L16_2, L17_2)
                      end
                    end
                  end
                else
                  L12_2 = SetEntityHealth
                  L13_2 = FightPed
                  L14_2 = 0
                  L12_2(L13_2, L14_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
BrokeNeck = L5_1
L5_1 = RegisterNetEvent
L6_1 = "SetHPCombat"
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "SetHPCombat"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = SetEntityHealth
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedRagdoll
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IDFLAG
      L2_2 = FlagAnimBase
      if L1_2 == L2_2 then
        L1_2 = pushForward
        L2_2 = L0_2
        L3_2 = -1.0
        L1_2(L2_2, L3_2)
      end
    end
  end
end
CollMe = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IDFLAG
  L2_2 = FlagAnimBase
  if L1_2 == L2_2 then
    L1_2 = IsPedRagdoll
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedFatallyInjured
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = GetEntityCoords
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = GetEntityForwardVector
        L3_2 = L0_2
        L2_2 = L2_2(L3_2)
        L3_2 = -20.0
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = L2_2 * L3_2
        L5_2 = L1_2 + L5_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L7_2 = vector3
        L8_2 = L1_2.x
        L8_2 = L4_2 - L8_2
        L9_2 = L1_2.y
        L9_2 = L5_2 - L9_2
        L10_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L8_2 = GetEntityVelocity
        L9_2 = L0_2
        L8_2 = L8_2(L9_2)
        L9_2 = SetEntityVelocity
        L10_2 = L0_2
        L11_2 = L8_2.x
        L12_2 = L7_2.x
        L11_2 = L11_2 + L12_2
        L12_2 = L8_2.y
        L13_2 = L7_2.y
        L12_2 = L12_2 + L13_2
        L13_2 = -2.0
        L9_2(L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
end
SlowMe = L5_1
filming = false
L5_1 = {}
L5_1.x = 0.0
L5_1.y = -0.001
function L6_1()
  local L0_2, L1_2
  L0_2 = filmBands
  if L0_2 then
    filming = true
    L0_2 = hideHudFunc
    L0_2()
    L0_2 = LoopFilm
    L0_2()
  end
end
startFilm = L6_1
function L6_1()
  local L0_2, L1_2
  filming = false
  L0_2 = showHudFunc
  L0_2()
end
stopFilm = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = filming
      if not L0_3 then
        break
      end
      L0_3 = filmBands
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = HideHUDThisFrame
      L0_3()
      L0_3 = drawRct
      L1_3 = L5_1.x
      L1_3 = L1_3 + 0.0
      L2_3 = L5_1.y
      L2_3 = L2_3 + 0.0
      L3_3 = 1.0
      L4_3 = 0.15
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 255
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L0_3 = drawRct
      L1_3 = L5_1.x
      L1_3 = L1_3 + 0.0
      L2_3 = L5_1.y
      L2_3 = L2_3 + 0.85
      L3_3 = 1.0
      L4_3 = 0.151
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 255
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
  end
  L0_2(L1_2)
end
LoopFilm = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L8_2 = DrawRect
  L9_2 = A2_2 / 2
  L9_2 = A0_2 + L9_2
  L10_2 = A3_2 / 2
  L10_2 = A1_2 + L10_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L14_2 = A5_2
  L15_2 = A6_2
  L16_2 = A7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
drawRct = L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = HideHelpTextThisFrame
  L0_2()
  L0_2 = HideHudComponentThisFrame
  L1_2 = 1
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 2
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 3
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 4
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 6
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 7
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 8
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 9
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 13
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 15
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 18
  L0_2(L1_2)
  L0_2 = HideHudComponentThisFrame
  L1_2 = 19
  L0_2(L1_2)
end
HideHUDThisFrame = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A0_2
  if nil ~= A1_2 then
    L2_2 = A1_2
  end
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = GetEntityCoords
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2 * 0.5
  L5_2 = L5_2 + L6_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L7_2 = 511
  L8_2 = GetShapeTestResult
  L9_2 = StartShapeTestRay
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = L6_2 - 0.1
  L13_2 = L4_2
  L14_2 = L5_2
  L15_2 = L6_2 - 150.0
  L16_2 = L7_2
  L17_2 = L2_2
  L18_2 = 1
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if L9_2 and L10_2 then
    L13_2 = GetEntityCoords
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 - L10_2
    L13_2 = #L13_2
    L14_2 = 2.5
    if L13_2 > L14_2 then
      L13_2 = true
      return L13_2
    else
      L13_2 = false
      return L13_2
    end
  else
    L13_2 = false
    return L13_2
  end
end
sonoInAria = L6_1
L6_1 = 0
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 3500
  L2_2 = 120
  L3_2 = 6000
  L4_2 = 25000
  L5_2 = A0_2 * L2_2
  L5_2 = L1_2 + L5_2
  if L3_2 > L5_2 then
    L5_2 = L3_2
  end
  if L4_2 < L5_2 then
    L5_2 = L4_2
  end
  return L5_2
end
calcImportantDuration = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = editorcombatopen
  if L1_2 then
    return
  end
  L1_2 = L6_1
  if L1_2 > 0 then
    L1_2 = 0
    L6_1 = L1_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "hide"
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 25
    L1_2(L2_2)
  end
  if A0_2 then
    L1_2 = #A0_2
    if 0 ~= L1_2 then
      goto lbl_31
    end
  end
  L1_2 = 0
  L6_1 = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "hide"
  L1_2(L2_2)
  do return end
  ::lbl_31::
  L1_2 = calcImportantDuration
  L2_2 = #A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + L1_2
  L6_1 = L2_2
  L3_2 = PlaySoundFrontend
  L4_2 = -1
  L5_2 = "End_Squelch"
  L6_2 = "CB_RADIO_SFX"
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "show"
  L4_2.content = A0_2
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L6_1
      if 0 == L0_3 then
        L0_3 = SendNUIMessage
        L1_3 = {}
        L1_3.action = "hide"
        L0_3(L1_3)
        return
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L2_2
      if L0_3 >= L1_3 then
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "hide"
        L1_3(L2_3)
        L1_3 = 0
        L6_1 = L1_3
        return
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
  end
  L3_2(L4_2)
end
strianoImportant = L7_1
L7_1 = idstring
if not L7_1 then
  L7_1 = 0
end
idstring = L7_1
L7_1 = stringaAttesa
if not L7_1 then
  L7_1 = ""
end
stringaAttesa = L7_1
L7_1 = timerDelSub
if not L7_1 then
  L7_1 = -1
end
timerDelSub = L7_1
L7_1 = {}
L7_1.active = false
L7_1.endAt = 0
L7_1.loopRunning = false
L7_1.gen = 0
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 2200
  if A1_2 then
    L3_2 = 130
    if L3_2 then
      goto lbl_8
    end
  end
  L3_2 = 100
  ::lbl_8::
  L4_2 = 4500
  L5_2 = 20000
  L6_2 = A0_2 * L3_2
  L6_2 = L2_2 + L6_2
  if L4_2 > L6_2 then
    L6_2 = L4_2
  end
  if L5_2 < L6_2 then
    L6_2 = L5_2
  end
  return L6_2
end
calcMsgDuration = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L7_1.loopRunning
  if L0_2 then
    return
  end
  L7_1.loopRunning = true
  L0_2 = L7_1.gen
  L0_2 = L0_2 + 1
  L7_1.gen = L0_2
  L0_2 = L7_1.gen
  L1_2 = false
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L7_1.active
      if not L0_3 then
        break
      end
      L0_3 = L0_2
      L1_3 = L7_1.gen
      if L0_3 ~= L1_3 then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L1_2
      if L1_3 then
        L1_3 = timerDelSub
        if 0 == L1_3 then
          L1_3 = SendNUIMessage
          L2_3 = {}
          L2_3.action = "hide2"
          L1_3(L2_3)
          L7_1.active = false
          break
        end
      end
      L1_3 = L7_1.endAt
      if L0_3 >= L1_3 then
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "hide2"
        L1_3(L2_3)
        L7_1.active = false
        break
      end
      L1_3 = true
      L1_2 = L1_3
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L0_3 = L0_2
    L1_3 = L7_1.gen
    if L0_3 == L1_3 then
      L7_1.loopRunning = false
    end
  end
  L2_2(L3_2)
end
EnsureSubLoop = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L7_1.active
  if not L1_2 then
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = 0
  L4_2 = L7_1.endAt
  L4_2 = L4_2 - L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = L1_2 + L2_2
  L4_2 = L4_2 + L3_2
  L7_1.endAt = L4_2
  L4_2 = L2_2 + L3_2
  timerDelSub = L4_2
  L4_2 = L7_1.loopRunning
  if not L4_2 then
    L4_2 = EnsureSubLoop
    L4_2()
  end
end
extendSubDuration = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~r~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~q~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~q~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~q~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~p~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~c~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~m~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~u~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~o~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~s~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~w~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~n~"
  L4_2 = " "
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  return A0_2
end
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  if A0_2 then
    L5_2 = #A0_2
    if 0 ~= L5_2 then
      goto lbl_17
    end
  end
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "hide2"
  L5_2(L6_2)
  L7_1.active = false
  L7_1.endAt = 0
  timerDelSub = -1
  do return end
  ::lbl_17::
  L5_2 = #A0_2
  if L5_2 > 5 then
    L5_2 = L8_1
    if L5_2 then
      L5_2 = L8_1
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      A0_2 = L5_2
    end
  end
  if nil == A2_2 then
    L5_2 = SendNUIMessage
    L6_2 = {}
    L6_2.action = "show2"
    L6_2.content = A0_2
    L5_2(L6_2)
    if not A3_2 then
      L5_2 = PlaySoundFrontend
      L6_2 = -1
      L7_2 = "COMPUTERS_MOUSE_CLICK"
      L8_2 = 0
      L9_2 = 1
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  else
    idstring = 0
    stringaAttesa = ""
    L5_2 = CreateThread
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      L0_3 = A0_2
      L1_3 = {}
      L2_3 = 1
      L3_3 = #L0_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L7_3 = L0_3
        L6_3 = L0_3.sub
        L8_3 = L5_3
        L9_3 = L5_3
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L1_3[L5_3] = L6_3
      end
      L2_3 = 0
      idstring = 1
      L3_3 = idstring
      L3_3 = L1_3[L3_3]
      if " " ~= L3_3 then
        L3_3 = A3_2
        if not L3_3 then
          L3_3 = GetEntityCoords
          L4_3 = L4_2
          L3_3 = L3_3(L4_3)
          L4_3 = SuonoGlobal
          if L4_3 then
            L4_3 = SuonoGlobal
            L5_3 = -1
            L6_3 = "NAV_UP_DOWN"
            L7_3 = L3_3.x
            L8_3 = L3_3.y
            L9_3 = L3_3.z
            L10_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            L11_3 = 1
            L12_3 = 7.0
            L13_3 = 0
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
          end
        end
      end
      L3_3 = idstring
      L3_3 = L1_3[L3_3]
      if L3_3 then
        L3_3 = stringaAttesa
        L4_3 = idstring
        L4_3 = L1_3[L4_3]
        L3_3 = L3_3 .. L4_3
        stringaAttesa = L3_3
        L3_3 = SendNUIMessage
        L4_3 = {}
        L4_3.action = "show2"
        L5_3 = stringaAttesa
        L4_3.content = L5_3
        L3_3(L4_3)
      end
      while true do
        L3_3 = Wait
        L4_3 = 7
        L3_3(L4_3)
        L3_3 = idstring
        L4_3 = A0_2
        L4_3 = #L4_3
        if L3_3 < L4_3 then
          L3_3 = idstring
          L3_3 = L3_3 + 1
          idstring = L3_3
          L3_3 = idstring
          L3_3 = L1_3[L3_3]
          if nil ~= L3_3 then
            L3_3 = idstring
            L3_3 = L1_3[L3_3]
            if " " ~= L3_3 then
              if 0 == L2_3 then
                L3_3 = A3_2
                if not L3_3 then
                  L2_3 = L2_3 + 1
                  L3_3 = PlaySoundFrontend
                  L4_3 = -1
                  L5_3 = "NAV_UP_DOWN"
                  L6_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                  L7_3 = 1
                  L3_3(L4_3, L5_3, L6_3, L7_3)
              end
              elseif L2_3 > 1 then
                L2_3 = 0
              else
                L2_3 = L2_3 + 1
              end
            else
              L3_3 = A3_2
              if not L3_3 then
                L3_3 = Wait
                L4_3 = 25
                L3_3(L4_3)
                L3_3 = PlaySoundFrontend
                L4_3 = -1
                L5_3 = "NAV_LEFT_RIGHT"
                L6_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                L7_3 = 0
                L3_3(L4_3, L5_3, L6_3, L7_3)
                L3_3 = Wait
                L4_3 = 25
                L3_3(L4_3)
              end
            end
            L3_3 = idstring
            L3_3 = L1_3[L3_3]
            if nil ~= L3_3 then
              L3_3 = stringaAttesa
              L4_3 = idstring
              L4_3 = L1_3[L4_3]
              L3_3 = L3_3 .. L4_3
              stringaAttesa = L3_3
              L3_3 = SendNUIMessage
              L4_3 = {}
              L4_3.action = "show2"
              L5_3 = stringaAttesa
              L4_3.content = L5_3
              L3_3(L4_3)
            else
              idstring = 0
              stringaAttesa = ""
              return
            end
          else
            idstring = 0
            return
          end
        else
          idstring = 0
          return
        end
      end
    end
    L5_2(L6_2)
    while true do
      L5_2 = idstring
      if not (L5_2 > 0) then
        break
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
  end
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 or L5_2 <= 0 then
    L6_2 = calcMsgDuration
    L7_2 = #A0_2
    L8_2 = nil ~= A2_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  L6_2 = 9500
  if L5_2 < L6_2 then
    L5_2 = 9500
  end
  L6_2 = timerDelSub
  if 0 == L6_2 then
    timerDelSub = -1
  end
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L7_1.active = true
  L7_2 = L6_2 + L5_2
  L7_1.endAt = L7_2
  timerDelSub = L5_2
  L7_2 = L7_1.loopRunning
  if not L7_2 then
    L7_2 = EnsureSubLoop
    L7_2()
  else
    L7_2 = L7_1.gen
    L7_2 = L7_2 + 1
    L7_1.gen = L7_2
    L7_1.loopRunning = false
    L7_2 = EnsureSubLoop
    L7_2()
  end
end
strianoSub = L9_1
L9_1 = nil
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^%s*(.-)%s*$"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2 = L1_2
  if "" == A0_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "hide6"
    L1_2(L2_2)
    L1_2 = nil
    L9_1 = L1_2
    return
  end
  L1_2 = #A0_2
  if L1_2 > 5 then
    L1_2 = L8_1
    if L1_2 then
      L1_2 = L8_1
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      A0_2 = L1_2
    end
  end
  L1_2 = L9_1
  if A0_2 == L1_2 then
    return
  end
  L9_1 = A0_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "show6"
  L2_2.content = A0_2
  L1_2(L2_2)
end
strianoSub2 = L10_1
L10_1 = nil
L11_1 = 0
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^%s*(.-)%s*$"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2 = L1_2
  if "" == A0_2 then
    L1_2 = L11_1
    L1_2 = L1_2 + 1
    L11_1 = L1_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "hide7"
    L1_2(L2_2)
    L1_2 = nil
    L10_1 = L1_2
    return
  end
  L1_2 = #A0_2
  if L1_2 > 5 then
    L1_2 = L8_1
    if L1_2 then
      L1_2 = L8_1
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      A0_2 = L1_2
    end
  end
  L1_2 = L11_1
  L1_2 = L1_2 + 1
  L11_1 = L1_2
  L1_2 = L11_1
  L2_2 = L10_1
  if A0_2 ~= L2_2 then
    L10_1 = A0_2
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "show7"
    L3_2.content = A0_2
    L2_2(L3_2)
  end
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 7000
    L0_3(L1_3)
    L0_3 = L1_2
    L1_3 = L11_1
    if L0_3 ~= L1_3 then
      return
    end
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.action = "hide7"
    L0_3(L1_3)
    L0_3 = nil
    L10_1 = L0_3
  end
  L2_2(L3_2)
end
strianoSub3 = L12_1
L12_1 = {}
L13_1 = "GENERIC_CURSE_HIGH"
L14_1 = "GENERIC_INSULT_HIGH"
L15_1 = "GENERIC_FUCK_YOU"
L16_1 = "GENERIC_SHOCKED_HIGH"
L17_1 = "GENERIC_WHATEVER"
L18_1 = "GENERIC_INSULT_MED"
L19_1 = "GENERIC_HI"
L20_1 = "GENERIC_BEG"
L21_1 = "GENERIC_THANKS"
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L12_1[4] = L16_1
L12_1[5] = L17_1
L12_1[6] = L18_1
L12_1[7] = L19_1
L12_1[8] = L20_1
L12_1[9] = L21_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsEntityDead
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = math
      L1_2 = L1_2.random
      L2_2 = L12_1
      L2_2 = #L2_2
      L1_2 = L1_2(L2_2)
      L2_2 = L12_1
      L1_2 = L2_2[L1_2]
      L2_2 = PlayPedAmbientSpeechNative
      L3_2 = A0_2
      L4_2 = L1_2
      L5_2 = "SPEECH_PARAMS_FORCE_SHOUTED"
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
MakePedAngry = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2, A12_2)
  local L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L13_2 = A0_2
  L14_2 = A1_2
  L15_2 = nil
  L16_2 = true
  L17_2 = #A0_2
  if L17_2 > 0 then
    L17_2 = GetHashKey
    L18_2 = L13_2
    L17_2 = L17_2(L18_2)
    L18_2 = RequestModelStriano
    L19_2 = L17_2
    L18_2(L19_2)
    L18_2 = CreatePed
    L19_2 = 26
    L20_2 = L17_2
    L21_2 = L14_2.x
    L22_2 = L14_2.y
    L22_2 = L22_2 + 1.5
    L23_2 = L14_2.z
    L23_2 = L23_2 - 1.0
    L24_2 = A9_2 + 0.0
    if not L24_2 then
      L24_2 = 0.0
    end
    L25_2 = L16_2
    L26_2 = false
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L15_2 = L18_2
  end
  L17_2 = 0
  while true do
    L18_2 = DoesEntityExist
    L19_2 = L15_2
    L18_2 = L18_2(L19_2)
    if not (not L18_2 and L17_2 < 100) then
      break
    end
    L17_2 = L17_2 + 1
    L18_2 = Wait
    L19_2 = 0
    L18_2(L19_2)
  end
  L18_2 = FightAttribute
  L19_2 = L15_2
  L18_2(L19_2)
  L18_2 = {}
  L18_2.p = L15_2
  L18_2.combatSet = A2_2
  L18_2.stamina = A4_2
  L18_2.level = A3_2
  L18_2.lotto = false
  L18_2.missionID = A7_2
  L18_2.sfidante = A8_2
  L18_2.posbase = A1_2
  L18_2.colpi = 0
  L18_2.weapEnemy = nil
  L18_2.timing = A11_2
  L18_2.Id_Arma = A12_2
  L18_2.sword_obj = nil
  L19_2 = math
  L19_2 = L19_2.random
  L20_2 = 1
  L21_2 = 2
  L19_2 = L19_2(L20_2, L21_2)
  L18_2.voice = L19_2
  L19_2 = GetEntityCoords
  L20_2 = L15_2
  L19_2 = L19_2(L20_2)
  L18_2.lastpos = L19_2
  L18_2.checktimer = 0
  L19_2 = table
  L19_2 = L19_2.insert
  L20_2 = MioNemico
  L21_2 = L18_2
  L19_2(L20_2, L21_2)
  L19_2 = handleNemico
  L20_2 = L18_2
  L21_2 = L15_2
  L19_2(L20_2, L21_2)
  if A5_2 then
    FightPed = L15_2
  end
  L19_2 = SetModelAsNoLongerNeeded
  L20_2 = pedHash
  L19_2(L20_2)
  L19_2 = SetEntityHealth
  L20_2 = L15_2
  L21_2 = A6_2
  L19_2(L20_2, L21_2)
  return L15_2
end
CreateNemico = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = MioNemico
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L6_2.p
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L6_2.p
      if L7_2 == A0_2 and nil ~= L6_2 then
        L7_2 = L6_2.colpi
        if nil ~= L7_2 then
          L7_2 = Sfoggiate
          if L7_2 then
            L7_2 = mySword
            if L7_2 > 0 then
              L7_2 = L6_2.colpi
              L7_2 = L7_2 + 5
              L6_2.colpi = L7_2
          end
          else
            L7_2 = L6_2.colpi
            L7_2 = L7_2 + 1
            L6_2.colpi = L7_2
          end
          L7_2 = ApplicaSangueDaiColpi
          L8_2 = A0_2
          L9_2 = L6_2.colpi
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
end
AggiornaColpiSubiti = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = IsEntityAttached
  L3_2 = A0_2
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
        L2_2 = GetEntityForwardVector
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        L3_2 = 0.5
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = L2_2 * L3_2
        L5_2 = L1_2 + L5_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L7_2 = vector3
        L8_2 = L4_2
        L9_2 = L5_2
        L10_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L1_2 = L7_2
        TargetCoords = L1_2
    end
  end
  else
    L2_2 = IsPedClimbing
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = {}
      L2_2.r = 255
      L2_2.g = 0
      L2_2.b = 110
      L2_2.a = 200
      L3_2 = GetEntityCoords
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = RayCastGamePlayCamera
      L5_2 = 15.0
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      if L4_2 then
        L7_2 = MarkerOn
        if L7_2 then
          L7_2 = DrawMarker
          L8_2 = 28
          L9_2 = L5_2.x
          L10_2 = L5_2.y
          L11_2 = L5_2.z
          L12_2 = 0.0
          L13_2 = 0.0
          L14_2 = 0.0
          L15_2 = 0.0
          L16_2 = 180.0
          L17_2 = 0.0
          L18_2 = 0.05
          L19_2 = 0.05
          L20_2 = 0.05
          L21_2 = L2_2.r
          L22_2 = L2_2.g
          L23_2 = L2_2.b
          L24_2 = L2_2.a
          L25_2 = false
          L26_2 = true
          L27_2 = 2
          L28_2 = nil
          L29_2 = nil
          L30_2 = false
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
        end
        TargetCoords = L5_2
      end
    end
  end
end
PallaTarget = L13_1
L13_1 = false
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = "hit_react_left_leg_stumble_knockdown"
  L4_2 = "hit_react_left_leg_stumble_knockdown_clip"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = castingSpell
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = L0_2
      L3_2 = "magic@motions_left_hand_beam_struggle"
      L4_2 = "magic@motions_left_hand_beam_struggle_clip"
      L5_2 = 1
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = L0_2
        L3_2 = "kp_9cg_knockdown_wounded_start"
        L4_2 = "kp_9cg_knockdown_wounded_start_clip"
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = IsEntityPlayingAnim
          L2_2 = L0_2
          L3_2 = "kp_9cg_knockdown_wounded_loop"
          L4_2 = "kp_9cg_knockdown_wounded_loop_clip"
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if not L1_2 then
            L1_2 = IsControlPressed
            L2_2 = 0
            L3_2 = 22
            L1_2 = L1_2(L2_2, L3_2)
            if not L1_2 then
              L1_2 = IsDisabledControlPressed
              L2_2 = 0
              L3_2 = 22
              L1_2 = L1_2(L2_2, L3_2)
              if not L1_2 then
                L1_2 = L13_1
                if not L1_2 then
                  L1_2 = true
                  L13_1 = L1_2
                  L1_2 = CreateThread
                  function L2_2()
                    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
                    L0_3 = getStyleCombat
                    L0_3 = L0_3()
                    L1_3 = IsDisabledControlPressed
                    L2_3 = 0
                    L3_3 = 22
                    L1_3 = L1_3(L2_3, L3_3)
                    if not L1_3 then
                      L1_3 = IsEntityPlayingAnim
                      L2_3 = L0_2
                      L3_3 = idleFight
                      L4_3 = L0_3.Idle
                      L3_3 = L3_3[L4_3]
                      L3_3 = L3_3.a
                      L4_3 = idleFight
                      L5_3 = L0_3.Idle
                      L4_3 = L4_3[L5_3]
                      L4_3 = L4_3.b
                      L5_3 = 3
                      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                      if not L1_3 then
                        L1_3 = HoRollato
                        if not L1_3 then
                          L1_3 = IsPedSprinting
                          L2_3 = L0_2
                          L1_3 = L1_3(L2_3)
                          if not L1_3 then
                            L1_3 = IsEntityPlayingAnim
                            L2_3 = L0_2
                            L3_3 = "hit_react_left_leg_stumble_knockdown"
                            L4_3 = "hit_react_left_leg_stumble_knockdown_clip"
                            L5_3 = 3
                            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
                            if not L1_3 then
                              L1_3 = CombatActive
                              if L1_3 then
                                L1_3 = IsPedInAnyVehicle
                                L2_3 = L0_2
                                L1_3 = L1_3(L2_3)
                                if not L1_3 then
                                  L1_3 = FeritoCombat
                                  L1_3 = L1_3()
                                  if not L1_3 then
                                    L1_3 = GetSelectedPedWeapon
                                    L2_3 = L0_2
                                    L1_3 = L1_3(L2_3)
                                    if -1569615261 == L1_3 then
                                      L1_3 = IsPedArmed
                                      L2_3 = L0_2
                                      L3_3 = 7
                                      L1_3 = L1_3(L2_3, L3_3)
                                      if not L1_3 then
                                        L1_3 = FixCrouch
                                        L1_3()
                                        L1_3 = IsEntityAttached
                                        L2_3 = L0_2
                                        L1_3 = L1_3(L2_3)
                                        if L1_3 then
                                          L1_3 = Sfoggiate
                                          if not L1_3 then
                                            goto lbl_75
                                          end
                                        end
                                        L1_3 = LoadIdleFight
                                        L2_3 = L0_3.Idle
                                        L1_3(L2_3)
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
                    ::lbl_75::
                    L1_3 = Wait
                    L2_3 = 75
                    L1_3(L2_3)
                    L1_3 = false
                    L13_1 = L1_3
                  end
                  L1_2(L2_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
IdleAnimFunc = L14_1
L14_1 = CreateThread
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = nostamina
    if not L1_2 then
      L1_2 = FiatoneCapriola
      if L1_2 <= 0 then
        L1_2 = debuggerClb
        if nil ~= L1_2 then
          L1_2 = SetEntityAsMissionEntity
          L2_2 = debuggerClb
          L1_2(L2_2)
          L1_2 = DeleteEntity
          L2_2 = debuggerClb
          L1_2(L2_2)
          debuggerClb = nil
        end
        L1_2 = GetGameTimer
        L1_2 = L1_2()
        startTimeJumpObj = L1_2
        L1_2 = delBowCam
        L1_2()
        L1_2 = ecc
        L1_2()
        L1_2 = ClearPedTasks
        L2_2 = L0_2
        L1_2(L2_2)
        L1_2 = ClearPedSecondaryTask
        L2_2 = L0_2
        L1_2(L2_2)
        L1_2 = PlaySoundFrontend
        L2_2 = -1
        L3_2 = "QUIT_WHOOSH"
        L4_2 = "HUD_MINI_GAME_SOUNDSET"
        L5_2 = 1
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = outchFunc
        L1_2()
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
      end
      L1_2 = IsDisabledControlPressed
      L2_2 = 0
      L3_2 = 24
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        L1_2 = IsDisabledControlPressed
        L2_2 = 0
        L3_2 = 22
        L1_2 = L1_2(L2_2, L3_2)
        if not L1_2 then
          L1_2 = FiatoneCapriola
          L2_2 = maxStamina
          if L1_2 < L2_2 then
            L1_2 = IsDisabledControlPressed
            L2_2 = 0
            L3_2 = tastoDifesa
            L1_2 = L1_2(L2_2, L3_2)
            if not L1_2 then
              L1_2 = IsPedRagdoll
              L2_2 = L0_2
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = IsControlPressed
                L2_2 = 0
                L3_2 = 21
                L1_2 = L1_2(L2_2, L3_2)
                if L1_2 then
                  L1_2 = FiatoneCapriola
                  L2_2 = delStaminaFight
                  L3_2 = exports
                  L3_2 = L3_2.striano_combat
                  L4_2 = L3_2
                  L3_2 = L3_2.GetStaminaRegenMultiplier
                  L3_2 = L3_2(L4_2)
                  L2_2 = L2_2 * L3_2
                  L1_2 = L1_2 + L2_2
                  FiatoneCapriola = L1_2
                else
                  L1_2 = FiatoneCapriola
                  L2_2 = delStaminaFight
                  L2_2 = L2_2 * 2
                  L3_2 = exports
                  L3_2 = L3_2.striano_combat
                  L4_2 = L3_2
                  L3_2 = L3_2.GetStaminaRegenMultiplier
                  L3_2 = L3_2(L4_2)
                  L2_2 = L2_2 * L3_2
                  L1_2 = L1_2 + L2_2
                  FiatoneCapriola = L1_2
                end
                L1_2 = FiatoneCapriola
                L2_2 = maxStamina
                if L1_2 >= L2_2 then
                  L1_2 = maxStamina
                  FiatoneCapriola = L1_2
                  PossoCapriola = true
                end
              end
            end
          end
        end
      end
    else
      L1_2 = FiatoneCapriola
      L2_2 = maxStamina
      if L1_2 < L2_2 then
        L1_2 = maxStamina
        FiatoneCapriola = L1_2
        PossoCapriola = true
      end
    end
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L14_1(L15_1)
L14_1 = RegisterNetEvent
L15_1 = "AssignNearPlayer"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "AssignNearPlayer"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = myCombatList
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = myCombatList
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.WithoutShift
    L6_2 = L6_2.CombatA
    tnsa = L6_2
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.WithoutShift
    L6_2 = L6_2.CombatD
    tnsd = L6_2
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.WithoutShift
    L6_2 = L6_2.CombatW
    tnsw = L6_2
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.WithShift
    L6_2 = L6_2.CombatA
    tsa = L6_2
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.WithShift
    L6_2 = L6_2.CombatD
    tsd = L6_2
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.WithShift
    L6_2 = L6_2.CombatW
    tsw = L6_2
    L6_2 = FightWStyle
    L6_2 = #L6_2
    L6_2 = L6_2 + L5_2
    L7_2 = FightWStyle
    L8_2 = {}
    L9_2 = L1_2[L5_2]
    L9_2 = L9_2.Name
    L8_2.Name = L9_2
    L9_2 = {}
    L9_2.a = "kp_wm_gs_parry_02"
    L9_2.b = "kp_wm_gs_parry_02_clip"
    L8_2.Block = L9_2
    L9_2 = L1_2[L5_2]
    L9_2 = L9_2.Idle
    L8_2.Idle = L9_2
    L9_2 = {}
    L10_2 = tnsa
    L9_2.CombatA = L10_2
    L10_2 = tnsd
    L9_2.CombatD = L10_2
    L10_2 = tnsw
    L9_2.CombatW = L10_2
    L8_2.WithoutShift = L9_2
    L9_2 = {}
    L10_2 = tsa
    L9_2.CombatA = L10_2
    L10_2 = tsd
    L9_2.CombatD = L10_2
    L10_2 = tsw
    L9_2.CombatW = L10_2
    L8_2.WithShift = L9_2
    L8_2.deletable = true
    L7_2[L6_2] = L8_2
    L7_2 = EasyCombatStyle
    L8_2 = BuildEasyStyle
    L9_2 = FightWStyle
    L9_2 = L9_2[L6_2]
    L8_2 = L8_2(L9_2)
    L7_2[L6_2] = L8_2
    L7_2 = print
    L8_2 = "^3You get a new style combat from another player ID: ^2[^3"
    L9_2 = L6_2
    L10_2 = "^2]"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
    L7_2 = testo3d
    L8_2 = "New combat style get."
    L7_2(L8_2)
    L7_2 = PlaySoundFrontend
    L8_2 = -1
    L9_2 = "Mission_Pass_Notify"
    L10_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    L11_2 = 0
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = TriggerServerEvent
    L8_2 = "updatePlayerInfo"
    L9_2 = mySword
    L10_2 = myShield
    L11_2 = myCombatList
    L12_2 = myWStyle
    L13_2 = myBow
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "getBackCombatList"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "getBackCombatList"
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L5_2 = #A0_2
    if L5_2 > 0 then
      L5_2 = A0_2[1]
      if nil ~= L5_2 then
        myCombatList = A0_2
        L5_2 = print
        L6_2 = "^3You have ["
        L7_2 = #A0_2
        L8_2 = "] own combat-set.^7"
        L6_2 = L6_2 .. L7_2 .. L8_2
        L5_2(L6_2)
      end
    end
  end
  if nil ~= A1_2 then
    L5_2 = FightWStyle
    L5_2 = L5_2[A1_2]
    if nil ~= L5_2 then
      L5_2 = FightWStyle
      L5_2 = #L5_2
      if A1_2 <= L5_2 then
        myWStyle = A1_2
      end
    end
  end
  if nil ~= A2_2 then
    myShield = A2_2
  end
  if nil ~= A4_2 then
    myBow = A4_2
  end
  DelaySkill = 50
  L5_2 = DelaySkill
  L6_2 = moltiplicatoreRoll
  L5_2 = L5_2 * L6_2
  mioCoolDown = L5_2
  if nil ~= A3_2 then
    mySword = A3_2
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.strianosetweapon
    L7_2 = mySword
    L5_2(L6_2, L7_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "getBackCombatListOnly"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "getBackCombatListOnly"
function L16_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = #A0_2
    if L1_2 > 0 then
      L1_2 = A0_2[1]
      if nil ~= L1_2 then
        myCombatList = A0_2
      end
    end
  end
end
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = CloseAllMenuCombat
  L1_2()
  L1_2 = Wait
  L2_2 = 0
  L1_2(L2_2)
  timerDelSub = -1
  L1_2 = ResetVarCreateCombat
  L1_2()
  L1_2 = ""
  L2_2 = myCombatList
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2.WithoutShift
  L3_2 = L3_2.CombatA
  tnsa = L3_2
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2.WithoutShift
  L3_2 = L3_2.CombatD
  tnsd = L3_2
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2.WithoutShift
  L3_2 = L3_2.CombatW
  tnsw = L3_2
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2.WithShift
  L3_2 = L3_2.CombatA
  tsa = L3_2
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2.WithShift
  L3_2 = L3_2.CombatD
  tsd = L3_2
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2.WithShift
  L3_2 = L3_2.CombatW
  tsw = L3_2
  L3_2 = 1
  L4_2 = tnsw
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = stringaW
    L8_2 = ""
    L9_2 = tnsw
    L9_2 = L9_2[L6_2]
    L10_2 = " "
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    stringaW = L7_2
  end
  L3_2 = 1
  L4_2 = tnsa
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = stringaA
    L8_2 = ""
    L9_2 = tnsa
    L9_2 = L9_2[L6_2]
    L10_2 = " "
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    stringaA = L7_2
  end
  L3_2 = 1
  L4_2 = tnsd
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = stringaD
    L8_2 = ""
    L9_2 = tnsd
    L9_2 = L9_2[L6_2]
    L10_2 = " "
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    stringaD = L7_2
  end
  L3_2 = 1
  L4_2 = tsw
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = stringaSW
    L8_2 = ""
    L9_2 = tsw
    L9_2 = L9_2[L6_2]
    L10_2 = " "
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    stringaSW = L7_2
  end
  L3_2 = 1
  L4_2 = tsa
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = stringaSA
    L8_2 = ""
    L9_2 = tsa
    L9_2 = L9_2[L6_2]
    L10_2 = " "
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    stringaSA = L7_2
  end
  L3_2 = 1
  L4_2 = tsd
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = stringaSD
    L8_2 = ""
    L9_2 = tsd
    L9_2 = L9_2[L6_2]
    L10_2 = " "
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    stringaSD = L7_2
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "show0"
  L5_2 = "ID Set"
  L6_2 = L1_2
  L7_2 = ": "
  L8_2 = A0_2
  L9_2 = " di "
  L10_2 = #L2_2
  L11_2 = " ("
  L12_2 = L2_2[A0_2]
  L12_2 = L12_2.Name
  L13_2 = [[
)

W: ]]
  L14_2 = stringaW
  L15_2 = [[

A: ]]
  L16_2 = stringaA
  L17_2 = [[

D: ]]
  L18_2 = stringaD
  L19_2 = [[

Sh+W: ]]
  L20_2 = stringaSW
  L21_2 = [[

Sh+A: ]]
  L22_2 = stringaSA
  L23_2 = [[

Sh+D: ]]
  L24_2 = stringaSD
  L25_2 = [[

Idle ID: ]]
  L26_2 = L2_2[A0_2]
  L26_2 = L26_2.Idle
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2
  L4_2.content = L5_2
  L3_2(L4_2)
end
AggiornaStrigCombat = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  timerDelSub = -1
  L1_2 = ResetVarCreateCombat
  L1_2()
  L1_2 = FightWStyle
  L2_2 = L1_2[A0_2]
  L2_2 = L2_2.WithoutShift
  L2_2 = L2_2.CombatA
  tnsa = L2_2
  L2_2 = L1_2[A0_2]
  L2_2 = L2_2.WithoutShift
  L2_2 = L2_2.CombatD
  tnsd = L2_2
  L2_2 = L1_2[A0_2]
  L2_2 = L2_2.WithoutShift
  L2_2 = L2_2.CombatW
  tnsw = L2_2
  L2_2 = L1_2[A0_2]
  L2_2 = L2_2.WithShift
  L2_2 = L2_2.CombatA
  tsa = L2_2
  L2_2 = L1_2[A0_2]
  L2_2 = L2_2.WithShift
  L2_2 = L2_2.CombatA
  tsd = L2_2
  L2_2 = L1_2[A0_2]
  L2_2 = L2_2.WithShift
  L2_2 = L2_2.CombatA
  tsw = L2_2
  L2_2 = 1
  L3_2 = tnsw
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = stringaW
    L7_2 = ""
    L8_2 = tnsw
    L8_2 = L8_2[L5_2]
    L9_2 = " "
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    stringaW = L6_2
  end
  L2_2 = 1
  L3_2 = tnsa
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = stringaA
    L7_2 = ""
    L8_2 = tnsa
    L8_2 = L8_2[L5_2]
    L9_2 = " "
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    stringaA = L6_2
  end
  L2_2 = 1
  L3_2 = tnsd
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = stringaD
    L7_2 = ""
    L8_2 = tnsd
    L8_2 = L8_2[L5_2]
    L9_2 = " "
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    stringaD = L6_2
  end
  L2_2 = 1
  L3_2 = tsw
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = stringaSW
    L7_2 = ""
    L8_2 = tsw
    L8_2 = L8_2[L5_2]
    L9_2 = " "
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    stringaSW = L6_2
  end
  L2_2 = 1
  L3_2 = tsa
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = stringaSA
    L7_2 = ""
    L8_2 = tsa
    L8_2 = L8_2[L5_2]
    L9_2 = " "
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    stringaSA = L6_2
  end
  L2_2 = 1
  L3_2 = tsd
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = stringaSD
    L7_2 = ""
    L8_2 = tsd
    L8_2 = L8_2[L5_2]
    L9_2 = " "
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    stringaSD = L6_2
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "show0"
  L4_2 = "ID Set: "
  L5_2 = A0_2
  L6_2 = " di "
  L7_2 = #L1_2
  L8_2 = " ("
  L9_2 = L1_2[A0_2]
  L9_2 = L9_2.Name
  L10_2 = [[
)

W: ]]
  L11_2 = stringaW
  L12_2 = [[

A: ]]
  L13_2 = stringaA
  L14_2 = [[

D: ]]
  L15_2 = stringaD
  L16_2 = [[

Sh+W: ]]
  L17_2 = stringaSW
  L18_2 = [[

Sh+A: ]]
  L19_2 = stringaSA
  L20_2 = [[

Sh+D: ]]
  L21_2 = stringaSD
  L22_2 = [[

Idle ID: ]]
  L23_2 = L1_2[A0_2]
  L23_2 = L23_2.Idle
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2 .. L23_2
  L3_2.content = L4_2
  L2_2(L3_2)
end
AggiornaStrigCombatBase = L14_1
function L14_1()
  local L0_2, L1_2
  stringaW = ""
  stringaA = ""
  stringaD = ""
  stringaSW = ""
  stringaSA = ""
  stringaSD = ""
  L0_2 = {}
  tnsa = L0_2
  L0_2 = {}
  tnsd = L0_2
  L0_2 = {}
  tnsw = L0_2
  L0_2 = {}
  tsa = L0_2
  L0_2 = {}
  tsd = L0_2
  L0_2 = {}
  tsw = L0_2
end
ResetVarCreateCombat = L14_1
function L14_1()
  local L0_2, L1_2
  L0_2 = strianoImportant
  L1_2 = ""
  L0_2(L1_2)
  CombatListAperta = false
  indexList = 1
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide0"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide3"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide4"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide5"
  L0_2(L1_2)
  inAnimList = false
end
CloseAllMenuCombat = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.gmatch
  L4_2 = "[^,%s]+"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L8_2 = tonumber
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L1_2[L7_2] = L8_2
  end
  return L1_2
end
split = L14_1
L14_1 = CreateThread
function L15_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide0"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide2"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide3"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide4"
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide5"
  L0_2(L1_2)
end
L14_1(L15_1)
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = 1
  L2_2 = AnimFightList
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = 1
    L6_2 = AnimFightList
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.r
    if nil ~= L6_2 then
      L6_2 = AnimFightList
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.w
      if nil == L6_2 then
        L6_2 = AnimFightList
        L6_2 = L6_2[L4_2]
        L5_2 = L6_2.r
      end
    end
    L6_2 = 1
    L7_2 = L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L0_2
      L12_2 = L4_2
      L10_2(L11_2, L12_2)
    end
  end
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = #L0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = print
  L3_2 = "You get a new move, ID: "
  L4_2 = L0_2[L1_2]
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = fAddMossa
  L3_2 = L0_2[L1_2]
  L2_2(L3_2)
end
fsetMossaRandom = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 and A0_2 > 0 then
    L1_2 = AnimFightList
    L1_2 = #L1_2
    if A0_2 <= L1_2 then
      L1_2 = false
      L2_2 = 1
      L3_2 = myMoves
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = myMoves
        L6_2 = L6_2[L5_2]
        if L6_2 == A0_2 then
          L1_2 = true
        end
      end
      if not L1_2 then
        L2_2 = table
        L2_2 = L2_2.insert
        L3_2 = myMoves
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
        L2_2 = exports
        L2_2 = L2_2.striano_combat
        L3_2 = L2_2
        L2_2 = L2_2.submexInfo
        L4_2 = "You learned a new move, ID "
        L5_2 = A0_2
        L6_2 = " added to your own set."
        L4_2 = L4_2 .. L5_2 .. L6_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = exports
        L2_2 = L2_2.striano_combat
        L3_2 = L2_2
        L2_2 = L2_2.submex
        L4_2 = "You already know the move ID: "
        L5_2 = A0_2
        L6_2 = "."
        L4_2 = L4_2 .. L5_2 .. L6_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
fAddMossa = L14_1
L14_1 = RegisterNetEvent
L15_1 = "AddMoveClient"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "AddMoveClient"
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = fAddMossa
  L2_2 = A0_2
  L1_2(L2_2)
end
L14_1(L15_1, L16_1)
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = DoesEntityExist
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = IsPedAPlayer
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = PlayerVicino
      L4_2, L5_2 = L4_2()
      if -1 ~= L4_2 then
        L6_2 = IsPedAPlayer
        L7_2 = GetPlayerPed
        L8_2 = L4_2
        L7_2, L8_2, L9_2 = L7_2(L8_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        if L6_2 then
          L6_2 = GetPlayerPed
          L7_2 = L4_2
          L6_2 = L6_2(L7_2)
          if A0_2 == L6_2 then
            L6_2 = BloodActive
            if L6_2 then
              L6_2 = TriggerServerEvent
              L7_2 = "ApplyBloodCombat"
              L8_2 = GetPlayerServerId
              L9_2 = L4_2
              L8_2 = L8_2(L9_2)
              L9_2 = A1_2
              L6_2(L7_2, L8_2, L9_2)
            end
          end
        end
      end
    else
      L4_2 = ApplyPedDamagePack
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = 1.0
      L8_2 = 1.0
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
end
ApplyPedDamagePackLegacy = L14_1
L14_1 = RegisterNetEvent
L15_1 = "ApplyBloodCombat"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "ApplyBloodCombat"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = BloodActive
  if L1_2 then
    L1_2 = ApplyPedDamagePack
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = A0_2
    L4_2 = 1.0
    L5_2 = 1.0
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.incombatanim
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = SetPedToRagdoll
    L2_2 = ped
    L3_2 = 250
    L4_2 = 250
    L5_2 = 6
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = math
    L1_2 = L1_2.random
    L2_2 = 1
    L3_2 = 5
    L1_2 = L1_2(L2_2, L3_2)
    if 1 == L1_2 then
      L2_2 = ApplyDirtyPed
      L2_2()
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "HitSound"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "HitSound"
function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L9_2 = vector3
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = GetEntityCoords
  L11_2 = PlayerPedId
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2()
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = L10_2 - L9_2
  L10_2 = #L10_2
  if L10_2 < 7.0 then
    L10_2 = PlaySoundFromCoord
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = A2_2
    L14_2 = A3_2
    L15_2 = A4_2
    L16_2 = A5_2
    L17_2 = A6_2
    L18_2 = A7_2
    L19_2 = A8_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  end
end
L14_1(L15_1, L16_1)
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = SwordObj
  if nil ~= L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = SwordObj
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = SwordObj
      L2_2(L3_2)
      L2_2 = DelIfOnClient
      L3_2 = SwordObj
      L2_2(L3_2)
      L2_2 = DeleteEntity
      L3_2 = SwordObj
      L2_2(L3_2)
      SwordObj = nil
    end
  end
  L2_2 = SwordObj2
  if nil ~= L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = SwordObj2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = SwordObj2
      L2_2(L3_2)
      L2_2 = DelIfOnClient
      L3_2 = SwordObj2
      L2_2(L3_2)
      L2_2 = DeleteEntity
      L3_2 = SwordObj2
      L2_2(L3_2)
      SwordObj2 = nil
    end
  end
  L2_2 = CreateObject
  L3_2 = -402391240
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = true
  L8_2 = true
  L9_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  SwordObj = L2_2
  L2_2 = AttachEntityToEntity
  L3_2 = SwordObj
  L4_2 = L0_2
  L5_2 = GetPedBoneIndex
  L6_2 = L0_2
  L7_2 = 57005
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 0.09
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = true
  L13_2 = true
  L14_2 = false
  L15_2 = true
  L16_2 = 1
  L17_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = CreateObject
  L3_2 = -402391240
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = true
  L8_2 = true
  L9_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  SwordObj2 = L2_2
  L2_2 = AttachEntityToEntity
  L3_2 = SwordObj2
  L4_2 = L0_2
  L5_2 = GetPedBoneIndex
  L6_2 = L0_2
  L7_2 = 18905
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 0.09
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 180.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = true
  L13_2 = true
  L14_2 = false
  L15_2 = true
  L16_2 = 1
  L17_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = PlayEntityAnim
  L3_2 = SwordObj
  L4_2 = "mantis_clip"
  L5_2 = "mantis@spawn"
  L6_2 = 2.0
  L7_2 = true
  L8_2 = false
  L9_2 = false
  L10_2 = 0
  L11_2 = 0.015151515151515152
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = PlayEntityAnim
  L3_2 = SwordObj2
  L4_2 = "mantis_clip"
  L5_2 = "mantis@spawn"
  L6_2 = 2.0
  L7_2 = true
  L8_2 = false
  L9_2 = false
  L10_2 = 0
  L11_2 = 0.015151515151515152
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L2_2 = DoesEntityExist
    L3_2 = SwordObj
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = MakeSwordNET
  L3_2 = SwordObj
  L2_2(L3_2)
  while true do
    L2_2 = DoesEntityExist
    L3_2 = SwordObj2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = MakeSwordNET
  L3_2 = SwordObj2
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = SwordObj
  L4_2 = SwordObj2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  MantisHandler = L2_2
  L2_2 = SetTimeout
  L3_2 = 1300
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = ipairs
    L1_3 = MantisHandler
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = DoesEntityExist
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L6_3 = SetEntityAnimSpeed
        L7_3 = L5_3
        L8_3 = "mantis@spawn"
        L9_3 = "mantis_clip"
        L10_3 = 0.0
        L6_3(L7_3, L8_3, L9_3, L10_3)
      end
    end
  end
  L2_2(L3_2, L4_2)
end
SpawnMantisBlades = L14_1
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = ipairs
  L1_2 = MantisHandler
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = SetEntityAnimSpeed
      L7_2 = L5_2
      L8_2 = "mantis@spawn"
      L9_2 = "mantis_clip"
      L10_2 = 2.0
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
  L0_2 = SwordObj
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = SwordObj
    L0_2 = L0_2(L1_2)
    if L0_2 then
      SwordObj = nil
    end
  end
  L0_2 = SwordObj2
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = SwordObj2
    L0_2 = L0_2(L1_2)
    if L0_2 then
      SwordObj2 = nil
    end
  end
  L0_2 = SetTimeout
  L1_2 = 1000
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = ipairs
    L1_3 = MantisHandler
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = DoesEntityExist
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L6_3 = DetachEntity
        L7_3 = L5_3
        L8_3 = false
        L9_3 = false
        L6_3(L7_3, L8_3, L9_3)
        L6_3 = DeleteEntity
        L7_3 = L5_3
        L6_3(L7_3)
      end
    end
    L0_3 = {}
    MantisHandler = L0_3
  end
  L0_2(L1_2, L2_2)
end
ResumeAnimationAndDelete = L14_1
function L14_1()
  local L0_2, L1_2
  L0_2 = LucetutAttiva
  if not L0_2 then
    LucetutAttiva = true
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      while true do
        L0_3 = inAnimList
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
        L10_3 = L6_3 + 1.3
        L11_3 = L2_3.x
        L12_3 = L2_3.y
        L13_3 = L2_3.z
        L13_3 = L13_3 - 180
        L14_3 = 255
        L15_3 = 255
        L16_3 = 190
        L17_3 = 7.0
        L18_3 = 0.15
        L19_3 = 5.0
        L20_3 = 150.0
        L21_3 = 10.0
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
        L7_3 = table
        L7_3 = L7_3.unpack
        L8_3 = L3_3 * -1.0
        L8_3 = L1_3 + L8_3
        L7_3, L8_3, L9_3 = L7_3(L8_3)
        L10_3 = DrawSpotLightWithShadow
        L11_3 = L7_3
        L12_3 = L8_3
        L13_3 = L9_3 + 1.3
        L14_3 = L2_3.x
        L15_3 = L2_3.y
        L16_3 = L2_3.z
        L16_3 = L16_3 - 180
        L17_3 = 255
        L18_3 = 255
        L19_3 = 190
        L20_3 = 7.0
        L21_3 = 0.15
        L22_3 = 5.0
        L23_3 = 150.0
        L24_3 = 10.0
        L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
      end
      L0_3 = Wait
      L1_3 = 150
      L0_3(L1_3)
      LucetutAttiva = false
    end
    L0_2(L1_2)
  end
end
LoopLuceCaratteristiche = L14_1
MagicID = 0
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = delSpellCharge
  L2_2()
  L2_2 = A0_2.pedAura
  L2_2 = L2_2.s
  if not L2_2 then
    L2_2 = 2.0
  end
  L3_2 = SafeEntToNet
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = print
    L5_2 = "This ped not exist (spawnAura). "
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = TriggerServerEvent
  L5_2 = "PlayEffectEnt"
  L6_2 = {}
  L7_2 = A0_2.pedAura
  L7_2 = L7_2.a
  L6_2.a = L7_2
  L7_2 = A0_2.pedAura
  L7_2 = L7_2.b
  L6_2.b = L7_2
  L6_2.ent = L3_2
  L6_2.s = L2_2
  L4_2(L5_2, L6_2)
end
spawnAura = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = A0_2
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
  L1_2(L2_2)
end
magicShake = L14_1
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = onFinisher
  L0_2()
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SafeEntToNet
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = print
    L3_2 = "This ped not exist (mexSpecialMove). "
    L4_2 = L0_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "PlayEffectEnt"
  L4_2 = {}
  L4_2.a = "scr_rcbarry1"
  L4_2.b = "scr_alien_teleport"
  L4_2.ent = L1_2
  L4_2.s = 0.9
  L2_2(L3_2, L4_2)
end
mexSpecialMove = L14_1
striano_cam = nil
testPedEnemy = nil
cycletime = 0.1
lastTimeFinisher = nil
L14_1 = {}
fired = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 0.08
    L2_3 = BigWeap
    L2_3 = L2_3()
    if L2_3 then
      L1_3 = L1_3 * 2
    end
    while true do
      L2_3 = striano_cam
      if nil == L2_3 then
        break
      end
      L1_3 = L1_3 - 1.0E-4
      L2_3 = 0.001
      if L1_3 < L2_3 then
        L1_3 = 0.001
      end
      L2_3 = ShakeCam
      L3_3 = striano_cam
      L4_3 = "SMALL_EXPLOSION_SHAKE"
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = 250
      if L2_3 > L3_3 then
        L2_3 = StopCamShaking
        L3_3 = striano_cam
        L4_3 = true
        L2_3(L3_3, L4_3)
        return
      end
      L2_3 = Wait
      L3_3 = timerShaker
      L2_3(L3_3)
    end
  end
  L1_2(L2_2)
end
strianoShCam = L14_1
function L14_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = cycletime
      L1_3 = 0.1
      if not (L0_3 > L1_3) then
        break
      end
      L0_3 = inFinisher
      if L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      L0_3 = cycletime
      L0_3 = L0_3 - 0.005
      cycletime = L0_3
      L0_3 = SetTimecycleModifierStrength
      L1_3 = cycletime
      L0_3(L1_3)
    end
    L0_3 = inFinisher
    if not L0_3 then
      cycleaction = false
    end
  end
  L0_2(L1_2)
end
ResetCycle = L14_1
cycleaction = false
function L14_1()
  local L0_2, L1_2
  L0_2 = cycleaction
  if L0_2 then
    return
  end
  cycleaction = true
  L0_2 = ResetCycle
  L0_2()
  lastTimeFinisher = nil
  L0_2 = {}
  fired = L0_2
end
ResetHitControl = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  return L2_2(L3_2)
end
gpc = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = GetPedBoneCoords
  L4_2 = L1_2
  L5_2 = 0
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = vector3
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  return L5_2
end
gpcb = L14_1
function L14_1()
  local L0_2, L1_2
  L0_2 = PlayerPedId
  return L0_2()
end
gpp = L14_1
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = gpcb
  L1_2 = gpp
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = BloodActive
  if L1_2 then
    L1_2 = PlayEffect
    L2_2 = "scr_solomon3"
    L3_2 = "scr_trev4_747_blood_splash"
    L4_2 = L0_2
    L5_2 = 3.5
    L6_2 = 1.5
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = PlayEffect
    L2_2 = "scr_solomon3"
    L3_2 = "scr_trev4_747_blood_impact"
    L4_2 = L0_2
    L5_2 = 0.2
    L6_2 = 1.5
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = PlayEffect
  L2_2 = "scr_josh3"
  L3_2 = "scr_josh3_light_explosion"
  L4_2 = L0_2
  L5_2 = 0.3
  L6_2 = 0.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = DoesEntityExist
  L2_2 = testPedEnemy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = BloodActive
    if L1_2 then
      L1_2 = ApplyBlood
      L2_2 = testPedEnemy
      L3_2 = math
      L3_2 = L3_2.floor
      L4_2 = math
      L4_2 = L4_2.random
      L5_2 = 1
      L6_2 = 6
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
  L1_2 = ImASkeleton
  L2_2 = testPedEnemy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = PlayPain
    L2_2 = testPedEnemy
    L3_2 = 7
    L4_2 = 0.0
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
peffect = L14_1
function L14_1()
  local L0_2, L1_2
  L0_2 = genSwordWosh
  L0_2()
end
soundFinisherHitmap = L14_1
L14_1 = {}
L15_1 = {}
L15_1.t = 0.1575
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.1
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = SetTimecycleModifier
  L2_2 = "mp_lad_night"
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
  L1_2 = finisherSound
  L1_2()
end
L15_1.ff = L16_1
L16_1 = {}
L16_1.t = 0.2
function L17_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.1
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
end
L16_1.ff = L17_1
L17_1 = {}
L17_1.t = 0.2617
function L18_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.1
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
end
L17_1.ff = L18_1
L18_1 = {}
L18_1.t = 0.3949
function L19_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.2
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
end
L18_1.ff = L19_1
L19_1 = {}
L19_1.t = 0.4199
function L20_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.2
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
end
L19_1.ff = L20_1
L20_1 = {}
L20_1.t = 0.4927
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.2
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
end
L20_1.ff = L21_1
L21_1 = {}
L21_1.t = 0.5291
function L22_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.1
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
end
L21_1.ff = L22_1
L22_1 = {}
L22_1.t = 0.5656
function L23_1()
  local L0_2, L1_2, L2_2
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = strianoShCam
  L1_2()
  L1_2 = cycletime
  L1_2 = L1_2 + 0.2
  cycletime = L1_2
  L1_2 = SetTimecycleModifierStrength
  L2_2 = cycletime
  L1_2(L2_2)
  L1_2 = peffect
  L1_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = Wait
    L1_3 = 950
    L0_3(L1_3)
    L0_3 = DoesEntityExist
    L1_3 = testPedEnemy
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = BloodActive
      if L0_3 then
        L0_3 = GetEntityCoords
        L1_3 = testPedEnemy
        L0_3 = L0_3(L1_3)
        L1_3 = PlayEffect
        L2_3 = "scr_solomon3"
        L3_3 = "scr_trev4_747_blood_splash"
        L4_3 = L0_3
        L5_3 = 1.0
        L6_3 = 1.5
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
      end
    end
  end
  L1_2(L2_2)
end
L22_1.ff = L23_1
L23_1 = {}
L23_1.t = 0.7153
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = splatterSound
  L0_2()
  L0_2 = genSwordSpecial
  L0_2()
  L0_2 = cycletime
  L0_2 = L0_2 + 0.2
  cycletime = L0_2
  L0_2 = cycletime
  if L0_2 > 1.0 then
    cycletime = 1.0
  end
  L0_2 = SetTimecycleModifierStrength
  L1_2 = cycletime
  L0_2(L1_2)
  L0_2 = PlayEffect
  L1_2 = "core"
  L2_2 = "ent_dst_rocks_small"
  L3_2 = p
  L4_2 = 5.5
  L5_2 = 1.5
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = PlayEffect
  L1_2 = "core"
  L2_2 = "ent_anim_dusty_hands"
  L3_2 = p
  L4_2 = 5.5
  L5_2 = 1.5
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L0_2 = BloodActive
  if L0_2 then
    L0_2 = PlayEffect
    L1_2 = "scr_solomon3"
    L2_2 = "scr_trev4_747_blood_splash"
    L3_2 = p
    L4_2 = 3.5
    L5_2 = 1.5
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = PlayEffect
    L1_2 = "scr_solomon3"
    L2_2 = "scr_trev4_747_blood_impact"
    L3_2 = p
    L4_2 = 0.3
    L5_2 = 1.5
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  end
  L0_2 = gpc
  L1_2 = gpp
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = soundFinisherHitmap
  L1_2()
  L1_2 = gpcb
  L2_2 = gpp
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = PlayEffect
  L3_2 = "scr_josh3"
  L4_2 = "scr_josh3_light_explosion"
  L5_2 = L1_2
  L6_2 = 0.5
  L7_2 = 1.5
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = DoesEntityExist
  L3_2 = testPedEnemy
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = 1
      L1_3 = 5
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = AddBlood
        L4_3()
        L4_3 = Wait
        L5_3 = 25
        L4_3(L5_3)
      end
    end
    L2_2(L3_2)
    L2_2 = ApplyBlood
    L3_2 = testPedEnemy
    L4_2 = 11
    L2_2(L3_2, L4_2)
    L2_2 = FreezeEntityPosition
    L3_2 = testPedEnemy
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = SetEntityHealth
    L3_2 = testPedEnemy
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = Wait
    L3_2 = 75
    L2_2(L3_2)
    L2_2 = IsPedAPlayer
    L3_2 = testPedEnemy
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = ApplyForceToEntityCenterOfMass
      L3_2 = testPedEnemy
      L4_2 = 2
      L5_2 = 0.0
      L6_2 = 0.0
      L7_2 = 2.0
      L8_2 = true
      L9_2 = true
      L10_2 = true
      L11_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L2_2 = Wait
      L3_2 = 75
      L2_2(L3_2)
      L2_2 = ApplyForceToEntityCenterOfMass
      L3_2 = testPedEnemy
      L4_2 = 2
      L5_2 = 0.5
      L6_2 = 0.5
      L7_2 = 0.0
      L8_2 = true
      L9_2 = true
      L10_2 = true
      L11_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    L2_2 = GetEntityVelocity
    L3_2 = testPedEnemy
    L2_2 = L2_2(L3_2)
    L3_2 = SetEntityVelocity
    L4_2 = testPedEnemy
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = 1.5
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = BloodActive
    if L3_2 then
      L3_2 = GetEntityCoords
      L4_2 = testPedEnemy
      L3_2 = L3_2(L4_2)
      L4_2 = PlayEffect
      L5_2 = "scr_solomon3"
      L6_2 = "scr_trev4_747_blood_splash"
      L7_2 = L3_2
      L8_2 = 3.5
      L9_2 = 1.5
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = PlayEffect
      L5_2 = "scr_solomon3"
      L6_2 = "scr_trev4_747_blood_impact"
      L7_2 = L3_2
      L8_2 = 0.3
      L9_2 = 1.5
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    end
    testPedEnemy = nil
  end
end
L23_1.ff = L24_1
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L14_1[7] = L21_1
L14_1[8] = L22_1
L14_1[9] = L23_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A2_2
  L3_2 = A0_2 > L3_2
  return L3_2
end
inWindow = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 then
    return
  end
  L1_2 = lastTimeFinisher
  if not L1_2 then
    lastTimeFinisher = A0_2
  end
  L1_2 = lastTimeFinisher
  if A0_2 < L1_2 then
    L1_2 = {}
    fired = L1_2
  end
  L1_2 = ipairs
  L2_2 = L14_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = fired
    L7_2 = L7_2[L5_2]
    if not L7_2 then
      L7_2 = inWindow
      L8_2 = A0_2
      L9_2 = L6_2.t
      L10_2 = 0.01
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if L7_2 then
        L7_2 = L6_2.ff
        L7_2()
        L7_2 = fired
        L7_2[L5_2] = true
      end
    end
  end
  lastTimeFinisher = A0_2
end
UpdateHitControl = L15_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = "a_m_m_trampbeac_01"
  L1_2 = GetHashKey
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = RequestModelStriano
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityForwardVector
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L4_2 * 1.85
  L6_2 = L3_2 + L6_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L8_2 = vector3
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  coordZomb = L8_2
  L8_2 = CreatePed
  L9_2 = 26
  L10_2 = L1_2
  L11_2 = coordZomb
  L11_2 = L11_2.x
  L12_2 = coordZomb
  L12_2 = L12_2.y
  L13_2 = coordZomb
  L13_2 = L13_2.z
  L13_2 = L13_2 - 1.0
  L14_2 = 0.0
  L15_2 = true
  L16_2 = false
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  testPedEnemy = L8_2
  while true do
    L8_2 = DoesEntityExist
    L9_2 = testPedEnemy
    L8_2 = L8_2(L9_2)
    if L8_2 then
      break
    end
    L8_2 = Wait
    L9_2 = 0
    L8_2(L9_2)
  end
  L8_2 = SetEntityHeading
  L9_2 = testPedEnemy
  L10_2 = GetEntityHeading
  L11_2 = L2_2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 - 180.0
  L8_2(L9_2, L10_2)
  L8_2 = "kp_ftk_ultimate_dual_sword_finisher_victim_norag"
  L9_2 = "kp_ftk_ultimate_dual_sword_finisher_victim_norag_clip"
  L10_2 = GetGameTimer
  L10_2 = L10_2()
  L11_2 = 3000
  L12_2 = DebugRequestAnimDict
  L13_2 = L8_2
  L12_2(L13_2)
  while true do
    L12_2 = HasAnimDictLoaded
    L13_2 = L8_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      break
    end
    L12_2 = GetGameTimer
    L12_2 = L12_2()
    L12_2 = L12_2 - L10_2
    if not (L11_2 > L12_2) then
      break
    end
    L12_2 = Wait
    L13_2 = 0
    L12_2(L13_2)
  end
  L12_2 = TaskPlayAnim
  L13_2 = testPedEnemy
  L14_2 = L8_2
  L15_2 = L9_2
  L16_2 = 2.0
  L17_2 = 2.0
  L18_2 = -1
  L19_2 = 2
  L20_2 = 2
  L21_2 = false
  L22_2 = false
  L23_2 = false
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
end
SpawnTestEnemy = L15_1
inFinisher = false
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L1_2 = inFinisher
  if L1_2 then
    return
  end
  L1_2 = mySword
  if 0 == L1_2 then
    return
  end
  L1_2 = testPedEnemy
  if nil == L1_2 then
    L1_2 = SpawnTestEnemy
    L1_2()
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityAttached
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = IsPedDeadOrDying
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedFatallyInjured
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_32
      end
    end
  end
  do return end
  ::lbl_32::
  L2_2 = GetSelectedPedWeapon
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if -1569615261 ~= L2_2 then
    L2_2 = IsPedArmed
    L3_2 = L1_2
    L4_2 = 7
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = SetCurrentPedWeapon
      L3_2 = L1_2
      L4_2 = -1569615261
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  cycletime = 0.1
  cycleaction = false
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = L3_2 * 1.85
  L5_2 = L2_2 + L5_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L7_2 = vector3
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = IsPedAPlayer
  L9_2 = testPedEnemy
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = ServerIdFromPed
    L9_2 = testPedEnemy
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = TriggerServerEvent
      L10_2 = "getFinisher"
      L11_2 = L8_2
      L12_2 = A0_2 - 180.0
      L13_2 = L4_2
      L14_2 = L5_2
      L15_2 = L6_2
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
  L8_2 = Sfoggiate
  if not L8_2 then
    L8_2 = handleSword
    L9_2 = true
    L8_2(L9_2)
  end
  L8_2 = SetPedCanRagdollFromPlayerImpact
  L9_2 = testPedEnemy
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = ClearPedTasksImmediately
  L9_2 = L1_2
  L8_2(L9_2)
  L8_2 = ClearPedTasksImmediately
  L9_2 = testPedEnemy
  L8_2(L9_2)
  L8_2 = FreezeEntityPosition
  L9_2 = L1_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = FreezeEntityPosition
  L9_2 = testPedEnemy
  L10_2 = true
  L8_2(L9_2, L10_2)
  inFinisher = true
  L8_2 = BloccaTasti
  L8_2()
  L8_2 = CreateCam
  L9_2 = "DEFAULT_SCRIPTED_CAMERA"
  L10_2 = true
  L8_2 = L8_2(L9_2, L10_2)
  striano_cam = L8_2
  L8_2 = table
  L8_2 = L8_2.unpack
  L9_2 = GetPedBoneCoords
  L10_2 = L1_2
  L11_2 = 0
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L9_2(L10_2, L11_2)
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L11_2 = vector3
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = L10_2 + 1.0
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = startFilm
  L12_2()
  L12_2 = Wait
  L13_2 = 255
  L12_2(L13_2)
  L12_2 = ClearPedTasksImmediately
  L13_2 = L1_2
  L12_2(L13_2)
  L12_2 = ClearPedTasksImmediately
  L13_2 = testPedEnemy
  L12_2(L13_2)
  L12_2 = SetEntityCoords
  L13_2 = testPedEnemy
  L14_2 = L7_2.x
  L15_2 = L7_2.y
  L16_2 = L7_2.z
  L16_2 = L16_2 - 1.0
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = SetEntityHeading
  L13_2 = testPedEnemy
  L14_2 = A0_2 - 180.0
  L12_2(L13_2, L14_2)
  L12_2 = "kp_ftk_ultimate_dual_sword_finisher_victim_norag"
  L13_2 = "kp_ftk_ultimate_dual_sword_finisher_victim_norag_clip"
  L14_2 = LoadAnim
  L15_2 = L12_2
  L14_2(L15_2)
  L14_2 = TaskPlayAnim
  L15_2 = testPedEnemy
  L16_2 = L12_2
  L17_2 = L13_2
  L18_2 = 2.0
  L19_2 = 2.0
  L20_2 = -1
  L21_2 = 2
  L22_2 = 2
  L23_2 = false
  L24_2 = false
  L25_2 = false
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L14_2 = "kp_ftk_ultimate_dual_sword_finisher_atk_norag"
  L15_2 = "kp_ftk_ultimate_dual_sword_finisher_atk_norag_clip"
  L16_2 = LoadAnim
  L17_2 = L14_2
  L16_2(L17_2)
  L16_2 = FreezeEntityPosition
  L17_2 = L1_2
  L18_2 = false
  L16_2(L17_2, L18_2)
  L16_2 = FreezeEntityPosition
  L17_2 = testPedEnemy
  L18_2 = false
  L16_2(L17_2, L18_2)
  L16_2 = SetEntityHeading
  L17_2 = L1_2
  L18_2 = A0_2
  L16_2(L17_2, L18_2)
  L16_2 = TaskPlayAnim
  L17_2 = L1_2
  L18_2 = L14_2
  L19_2 = L15_2
  L20_2 = 2.0
  L21_2 = 2.0
  L22_2 = -1
  L23_2 = 2
  L24_2 = 2
  L25_2 = false
  L26_2 = false
  L27_2 = false
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L16_2 = GetEntityCoords
  L17_2 = L1_2
  L16_2 = L16_2(L17_2)
  L17_2 = GetEntityForwardVector
  L18_2 = L1_2
  L17_2 = L17_2(L18_2)
  L18_2 = table
  L18_2 = L18_2.unpack
  L19_2 = L17_2 * 2.2
  L19_2 = L19_2 * -1
  L19_2 = L16_2 + L19_2
  L18_2, L19_2, L20_2 = L18_2(L19_2)
  L21_2 = SetCamCoord
  L22_2 = striano_cam
  L23_2 = L18_2
  L24_2 = L19_2
  L25_2 = L20_2
  L21_2(L22_2, L23_2, L24_2, L25_2)
  L21_2 = PointCamAtCoord
  L22_2 = striano_cam
  L23_2 = L11_2.x
  L24_2 = L11_2.y
  L25_2 = L11_2.z
  L21_2(L22_2, L23_2, L24_2, L25_2)
  L21_2 = SetCamActive
  L22_2 = striano_cam
  L23_2 = true
  L21_2(L22_2, L23_2)
  L21_2 = RenderScriptCams
  L22_2 = true
  L23_2 = false
  L24_2 = 0
  L25_2 = true
  L26_2 = true
  L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
  L21_2 = CreateThread
  function L22_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = inFinisher
      if not L0_3 then
        break
      end
      L0_3 = IsEntityPlayingAnim
      L1_3 = L1_2
      L2_3 = L14_2
      L3_3 = L15_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityAnimCurrentTime
      L1_3 = L1_2
      L2_3 = L14_2
      L3_3 = L15_2
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L1_3 = UpdateHitControl
      L2_3 = L0_3
      L1_3(L2_3)
    end
  end
  L21_2(L22_2)
  L21_2 = 0.1
  L22_2 = 0.1
  L23_2 = Wait
  L24_2 = 125
  L23_2(L24_2)
  L23_2 = CreateThread
  function L24_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = L1_2
      L2_3 = L14_2
      L3_3 = L15_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = GetEntityAnimCurrentTime
        L1_3 = L1_2
        L2_3 = L14_2
        L3_3 = L15_2
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = 0.7
        if L0_3 < L1_3 then
          L0_3 = RenderScriptCams
          L1_3 = false
          L2_3 = false
          L3_3 = 0
          L4_3 = true
          L5_3 = true
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          L0_3 = table
          L0_3 = L0_3.unpack
          L1_3 = GetPedBoneCoords
          L2_3 = L1_2
          L3_3 = 0
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L1_3(L2_3, L3_3)
          L0_3, L1_3, L2_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
          L3_3 = ClearPedTasksImmediately
          L4_3 = L1_2
          L3_3(L4_3)
          L3_3 = Wait
          L4_3 = 0
          L3_3(L4_3)
          L3_3 = SetEntityCoords
          L4_3 = L1_2
          L5_3 = L0_3
          L6_3 = L1_3
          L7_3 = L2_3 - 1
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = "hit_react_heavy_front_knockback_stagger"
          L4_3 = "hit_react_heavy_front_knockback_stagger_clip"
          L5_3 = LoadAnim
          L6_3 = L3_3
          L5_3(L6_3)
          L5_3 = TaskPlayAnim
          L6_3 = L1_2
          L7_3 = L3_3
          L8_3 = L4_3
          L9_3 = 3.0
          L10_3 = 1.0
          L11_3 = 100
          L12_3 = 0
          L13_3 = 0
          L14_3 = 0
          L15_3 = 0
          L16_3 = 0
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
          inFinisher = false
          L5_3 = ResetHitControl
          L5_3()
          return
        end
      end
      L0_3 = L22_2
      L0_3 = L0_3 + 0.009
      L22_2 = L0_3
      L0_3 = L21_2
      L0_3 = L0_3 + 0.018
      L21_2 = L0_3
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = table
      L1_3 = L1_3.unpack
      L2_3 = GetPedBoneCoords
      L3_3 = L0_3
      L4_3 = 0
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L2_3(L3_3, L4_3)
      L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L4_3 = vector3
      L5_3 = L1_3
      L6_3 = L2_3
      L7_3 = L3_3 + 1.0
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = GetEntityCoords
      L6_3 = L0_3
      L5_3 = L5_3(L6_3)
      L6_3 = GetEntityForwardVector
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      L7_3 = table
      L7_3 = L7_3.unpack
      L8_3 = L22_2
      L8_3 = 2.0 + L8_3
      L8_3 = L6_3 * L8_3
      L8_3 = L8_3 * -1
      L8_3 = L5_3 + L8_3
      L7_3, L8_3, L9_3 = L7_3(L8_3)
      L10_3 = SetCamCoord
      L11_3 = striano_cam
      L12_3 = L7_3
      L13_3 = L8_3
      L14_3 = L21_2
      L14_3 = L9_3 + L14_3
      L10_3(L11_3, L12_3, L13_3, L14_3)
      L10_3 = PointCamAtCoord
      L11_3 = striano_cam
      L12_3 = L4_3.x
      L13_3 = L4_3.y
      L14_3 = L4_3.z
      L10_3(L11_3, L12_3, L13_3, L14_3)
    end
  end
  L23_2(L24_2)
  L23_2 = Wait
  L24_2 = 25
  L23_2(L24_2)
  while true do
    L23_2 = IsEntityPlayingAnim
    L24_2 = L1_2
    L25_2 = L14_2
    L26_2 = L15_2
    L27_2 = 3
    L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
    if not L23_2 then
      break
    end
    L23_2 = GetEntityAnimCurrentTime
    L24_2 = L1_2
    L25_2 = L14_2
    L26_2 = L15_2
    L23_2 = L23_2(L24_2, L25_2, L26_2)
    L24_2 = 0.7
    if not (L23_2 < L24_2) then
      break
    end
    L23_2 = Wait
    L24_2 = 0
    L23_2(L24_2)
  end
  L23_2 = CreateThread
  function L24_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 0.08
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
      L2_3 = ShakeCam
      L3_3 = striano_cam
      L4_3 = "SMALL_EXPLOSION_SHAKE"
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = 1050
      if L2_3 > L3_3 then
        L2_3 = StopCamShaking
        L3_3 = striano_cam
        L4_3 = true
        L2_3(L3_3, L4_3)
        return
      end
      L2_3 = Wait
      L3_3 = timerShaker
      L2_3(L3_3)
    end
  end
  L23_2(L24_2)
  while true do
    L23_2 = IsEntityPlayingAnim
    L24_2 = L1_2
    L25_2 = L14_2
    L26_2 = L15_2
    L27_2 = 3
    L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2)
    if not L23_2 then
      break
    end
    L23_2 = GetEntityAnimCurrentTime
    L24_2 = L1_2
    L25_2 = L14_2
    L26_2 = L15_2
    L23_2 = L23_2(L24_2, L25_2, L26_2)
    L24_2 = 0.87
    if not (L23_2 < L24_2) then
      break
    end
    L23_2 = Wait
    L24_2 = 0
    L23_2(L24_2)
  end
  L23_2 = SetEntityAnimSpeed
  L24_2 = L1_2
  L25_2 = L14_2
  L26_2 = L15_2
  L27_2 = 0.0
  L23_2(L24_2, L25_2, L26_2, L27_2)
  L23_2 = table
  L23_2 = L23_2.unpack
  L24_2 = GetPedBoneCoords
  L25_2 = L1_2
  L26_2 = 0
  L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L24_2(L25_2, L26_2)
  L23_2, L24_2, L25_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L26_2 = ClearPedTasksImmediately
  L27_2 = L1_2
  L26_2(L27_2)
  L26_2 = Wait
  L27_2 = 0
  L26_2(L27_2)
  L26_2 = SetEntityCoords
  L27_2 = L1_2
  L28_2 = L23_2
  L29_2 = L24_2
  L30_2 = L25_2 - 1
  L26_2(L27_2, L28_2, L29_2, L30_2)
  L26_2 = "hit_react_heavy_front_knockback_stagger"
  L27_2 = "hit_react_heavy_front_knockback_stagger_clip"
  L28_2 = LoadAnim
  L29_2 = L26_2
  L28_2(L29_2)
  L28_2 = TaskPlayAnim
  L29_2 = L1_2
  L30_2 = L26_2
  L31_2 = L27_2
  L32_2 = 3.0
  L33_2 = 1.0
  L34_2 = 100
  L35_2 = 0
  L36_2 = 0
  L37_2 = 0
  L38_2 = 0
  L39_2 = 0
  L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L28_2 = RenderScriptCams
  L29_2 = false
  L30_2 = false
  L31_2 = 0
  L32_2 = true
  L33_2 = true
  L28_2(L29_2, L30_2, L31_2, L32_2, L33_2)
  L28_2 = DestroyCam
  L29_2 = striano_cam
  L30_2 = false
  L28_2(L29_2, L30_2)
  striano_cam = nil
  L28_2 = stopFilm
  L28_2()
  inFinisher = false
  L28_2 = print
  L29_2 = "FINISH ATTACKER FINISHER!"
  L28_2(L29_2)
  L28_2 = ApplyHeavyStandWeap
  L28_2()
  testPedEnemy = nil
  L28_2 = ResetHitControl
  L28_2()
end
startFinisher = L15_1
L15_1 = RegisterNetEvent
L16_1 = "getFinisher"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "getFinisher"
function L17_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L4_2 = finisherSound
  L4_2()
  L4_2 = print
  L5_2 = "^2I GOT A FINISHER FROM ANOTHER PLAYER!^7"
  L4_2(L5_2)
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  L5_2 = ClearPedTasksImmediately
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  inFinisher = true
  L5_2 = BloccaTasti
  L5_2()
  L5_2 = SetEntityCoords
  L6_2 = L4_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2 - 1.0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = CreateCam
  L6_2 = "DEFAULT_SCRIPTED_CAMERA"
  L7_2 = true
  L5_2 = L5_2(L6_2, L7_2)
  striano_cam = L5_2
  L5_2 = Wait
  L6_2 = 75
  L5_2(L6_2)
  L5_2 = ClearPedTasksImmediately
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = ClearPedSecondaryTask
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = ClearPedTasks
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityCoords
  L6_2 = L4_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2 - 1.0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetEntityHeading
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  L5_2 = "kp_ftk_ultimate_dual_sword_finisher_victim_norag"
  L6_2 = "kp_ftk_ultimate_dual_sword_finisher_victim_norag_clip"
  L7_2 = LoadAnim
  L8_2 = L5_2
  L7_2(L8_2)
  L7_2 = TaskPlayAnim
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = 2.0
  L12_2 = 2.0
  L13_2 = -1
  L14_2 = 2
  L15_2 = 2
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = Wait
  L8_2 = 0
  L7_2(L8_2)
  L7_2 = GetEntityCoords
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = GetEntityForwardVector
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = L8_2 * 2.2
  L10_2 = L10_2 * -1
  L10_2 = L7_2 + L10_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  L12_2 = table
  L12_2 = L12_2.unpack
  L13_2 = GetPedBoneCoords
  L14_2 = L4_2
  L15_2 = 0
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L13_2(L14_2, L15_2)
  L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L15_2 = vector3
  L16_2 = L12_2
  L17_2 = L13_2
  L18_2 = L14_2 + 1.0
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L16_2 = SetCamCoord
  L17_2 = striano_cam
  L18_2 = L9_2
  L19_2 = L10_2
  L20_2 = L11_2
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = PointCamAtCoord
  L17_2 = striano_cam
  L18_2 = L15_2.x
  L19_2 = L15_2.y
  L20_2 = L15_2.z
  L16_2(L17_2, L18_2, L19_2, L20_2)
  L16_2 = SetCamActive
  L17_2 = striano_cam
  L18_2 = true
  L16_2(L17_2, L18_2)
  L16_2 = RenderScriptCams
  L17_2 = true
  L18_2 = false
  L19_2 = 0
  L20_2 = true
  L21_2 = true
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
  L16_2 = CreateThread
  function L17_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = inFinisher
      if not L0_3 then
        break
      end
      L0_3 = IsEntityPlayingAnim
      L1_3 = L4_2
      L2_3 = L5_2
      L3_3 = L6_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityAnimCurrentTime
      L1_3 = L4_2
      L2_3 = L5_2
      L3_3 = L6_2
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L1_3 = UpdateHitControl
      L2_3 = L0_3
      L1_3(L2_3)
    end
  end
  L16_2(L17_2)
  L16_2 = 0.1
  L17_2 = 0.1
  L18_2 = CreateThread
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    while true do
      L0_3 = striano_cam
      if nil == L0_3 then
        break
      end
      L0_3 = IsEntityPlayingAnim
      L1_3 = L4_2
      L2_3 = L5_2
      L3_3 = L6_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        break
      end
      L0_3 = inFinisher
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = L4_2
      L2_3 = L5_2
      L3_3 = L6_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = GetEntityAnimCurrentTime
        L1_3 = L4_2
        L2_3 = L5_2
        L3_3 = L6_2
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = 0.7
        if L0_3 < L1_3 then
          L0_3 = RenderScriptCams
          L1_3 = false
          L2_3 = false
          L3_3 = 0
          L4_3 = true
          L5_3 = true
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          L0_3 = table
          L0_3 = L0_3.unpack
          L1_3 = GetPedBoneCoords
          L2_3 = L4_2
          L3_3 = 0
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L1_3(L2_3, L3_3)
          L0_3, L1_3, L2_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L3_3 = Wait
          L4_3 = 0
          L3_3(L4_3)
          L3_3 = SetEntityCoords
          L4_3 = L4_2
          L5_3 = L0_3
          L6_3 = L1_3
          L7_3 = L2_3 - 1
          L3_3(L4_3, L5_3, L6_3, L7_3)
          inFinisher = false
          L3_3 = ResetHitControl
          L3_3()
          return
        end
      end
      L0_3 = L17_2
      L0_3 = L0_3 + 0.009
      L17_2 = L0_3
      L0_3 = L16_2
      L0_3 = L0_3 + 0.018
      L16_2 = L0_3
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = table
      L1_3 = L1_3.unpack
      L2_3 = GetPedBoneCoords
      L3_3 = L0_3
      L4_3 = 0
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L2_3(L3_3, L4_3)
      L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L4_3 = vector3
      L5_3 = L1_3
      L6_3 = L2_3
      L7_3 = L3_3 + 1.0
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = GetEntityCoords
      L6_3 = L0_3
      L5_3 = L5_3(L6_3)
      L6_3 = GetEntityForwardVector
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      L7_3 = table
      L7_3 = L7_3.unpack
      L8_3 = L17_2
      L8_3 = 2.0 + L8_3
      L8_3 = L6_3 * L8_3
      L8_3 = L8_3 * -1
      L8_3 = L5_3 + L8_3
      L7_3, L8_3, L9_3 = L7_3(L8_3)
      L10_3 = SetCamCoord
      L11_3 = striano_cam
      L12_3 = L7_3
      L13_3 = L8_3
      L14_3 = L16_2
      L14_3 = L9_3 + L14_3
      L10_3(L11_3, L12_3, L13_3, L14_3)
      L10_3 = PointCamAtCoord
      L11_3 = striano_cam
      L12_3 = L4_3.x
      L13_3 = L4_3.y
      L14_3 = L4_3.z
      L10_3(L11_3, L12_3, L13_3, L14_3)
    end
  end
  L18_2(L19_2)
  L18_2 = Wait
  L19_2 = 25
  L18_2(L19_2)
  while true do
    L18_2 = IsEntityPlayingAnim
    L19_2 = L4_2
    L20_2 = L5_2
    L21_2 = L6_2
    L22_2 = 3
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
    if not L18_2 then
      break
    end
    L18_2 = GetEntityAnimCurrentTime
    L19_2 = L4_2
    L20_2 = L5_2
    L21_2 = L6_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L19_2 = 0.7
    if not (L18_2 < L19_2) then
      break
    end
    L18_2 = Wait
    L19_2 = 0
    L18_2(L19_2)
  end
  L18_2 = CreateThread
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 0.08
    L2_3 = BigWeap
    L2_3 = L2_3()
    if L2_3 then
      L1_3 = L1_3 * 2
    end
    while true do
      L2_3 = striano_cam
      if nil == L2_3 then
        break
      end
      L1_3 = L1_3 - 1.0E-4
      L2_3 = 0.001
      if L1_3 < L2_3 then
        L1_3 = 0.001
      end
      L2_3 = ShakeCam
      L3_3 = striano_cam
      L4_3 = "SMALL_EXPLOSION_SHAKE"
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = 1050
      if L2_3 > L3_3 then
        L2_3 = StopCamShaking
        L3_3 = striano_cam
        L4_3 = true
        L2_3(L3_3, L4_3)
        return
      end
      L2_3 = Wait
      L3_3 = timerShaker
      L2_3(L3_3)
    end
  end
  L18_2(L19_2)
  while true do
    L18_2 = IsEntityPlayingAnim
    L19_2 = L4_2
    L20_2 = L5_2
    L21_2 = L6_2
    L22_2 = 3
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
    if not L18_2 then
      break
    end
    L18_2 = GetEntityAnimCurrentTime
    L19_2 = L4_2
    L20_2 = L5_2
    L21_2 = L6_2
    L18_2 = L18_2(L19_2, L20_2, L21_2)
    L19_2 = 0.87
    if not (L18_2 < L19_2) then
      break
    end
    L18_2 = Wait
    L19_2 = 0
    L18_2(L19_2)
  end
  L18_2 = CreateThread
  function L19_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 1
    L1_3 = 5
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = AddBlood
      L4_3()
      L4_3 = Wait
      L5_3 = 25
      L4_3(L5_3)
    end
  end
  L18_2(L19_2)
  L18_2 = RenderScriptCams
  L19_2 = false
  L20_2 = false
  L21_2 = 0
  L22_2 = true
  L23_2 = true
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
  L18_2 = striano_cam
  if nil ~= L18_2 then
    L18_2 = DestroyCam
    L19_2 = striano_cam
    L20_2 = false
    L18_2(L19_2, L20_2)
    striano_cam = nil
  end
  inFinisher = false
  L18_2 = SetPedToRagdoll
  L19_2 = L4_2
  L20_2 = 1000
  L21_2 = 1000
  L22_2 = 6
  L23_2 = 0
  L24_2 = 0
  L25_2 = 0
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L18_2 = Wait
  L19_2 = 225
  L18_2(L19_2)
  L18_2 = ApplyDamageToPed
  L19_2 = L4_2
  L20_2 = 1000
  L21_2 = false
  L18_2(L19_2, L20_2, L21_2)
  L18_2 = OnFinisherEnd
  L18_2()
  L18_2 = print
  L19_2 = "FINISHER VICTIM STOP!"
  L18_2(L19_2)
end
L15_1(L16_1, L17_1)
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 or 0 == A0_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = NetworkGetEntityIsNetworked
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
    return L2_2
  end
  if not A1_2 then
    A1_2 = 2000
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = NetworkGetNetworkIdFromEntity
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  while 0 == L3_2 do
    L4_2 = DoesEntityExist
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    L4_2 = L4_2 - L2_2
    if not (A1_2 > L4_2) then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = NetworkGetNetworkIdFromEntity
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  return L3_2
end
GetNetIdSafe = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetNetIdSafe
  L2_2 = A0_2
  L3_2 = 2000
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = A0_2
      L2_2(L3_2)
    end
    return
  end
  L2_2 = ipairs
  L3_2 = ObjOnServer
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == L1_2 then
      L8_2 = RequestDeleteObject
      L9_2 = L1_2
      L8_2(L9_2)
      return
    end
  end
end
DelIfOnClient = L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = print
    L2_2 = "Net id to delete from client to server not exist. (This is just an info NOT an error.)"
    L1_2(L2_2)
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "combat_obj:delete"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
RequestDeleteObject = L15_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = inSpellAnim
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = MagicID
    if 0 == L1_2 then
      L1_2 = faiAnim
      L2_2 = "gestures@f@standing@casual"
      L3_2 = "gesture_pleased"
      L4_2 = 5
      L5_2 = 49
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
ecc = L15_1
L15_1 = activeFx
if not L15_1 then
  L15_1 = {}
end
activeFx = L15_1
L15_1 = RegisterNetEvent
L16_1 = "ptfx:stopFx"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = activeFx
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = StopParticleFxLooped
    L3_2 = L1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = RemoveParticleFx
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = activeFx
    L2_2[A0_2] = nil
  end
end
L15_1(L16_1, L17_1)
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = StopParticleFxLooped
    L2_2 = A0_2
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
end
StopEffect = L15_1
L15_1 = RegisterNetEvent
L16_1 = "EffectCombat"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "EffectCombat"
function L17_1(...)
  local L0_2, L1_2
  L0_2 = PlayEffect
  L1_2 = ...
  L0_2(L1_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "combat:setSword"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "combat:setSword"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.strianosetweapon
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "resetTimerSpells"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "resetTimerSpells"
function L17_1()
  local L0_2, L1_2
  L0_2 = StopTimer
  L0_2()
end
L15_1(L16_1, L17_1)
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = Sfoggiate
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = SwordList
    L2_2 = mySword
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.heavstand
    if nil ~= L1_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.incombatanim
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = GetEntitySpeed
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = 0.01
        if L1_2 <= L2_2 then
          L1_2 = exports
          L1_2 = L1_2.striano_combat
          L2_2 = L1_2
          L1_2 = L1_2.inanim
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsEntityPlayingAnim
            L2_2 = L0_2
            L3_2 = AnimFightList
            L4_2 = indexCombat
            if not L4_2 then
              L4_2 = 1
            end
            L3_2 = L3_2[L4_2]
            L3_2 = L3_2.a
            L4_2 = AnimFightList
            L5_2 = indexCombat
            if not L5_2 then
              L5_2 = 1
            end
            L4_2 = L4_2[L5_2]
            L4_2 = L4_2.b
            L5_2 = 3
            L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
            if not L1_2 then
              inHeavyWeap = true
              L1_2 = SwordList
              L2_2 = mySword
              L1_2 = L1_2[L2_2]
              L1_2 = L1_2.m
              L2_2 = GetEntityCoords
              L3_2 = L0_2
              L2_2 = L2_2(L3_2)
              L3_2 = SwordObj
              if nil ~= L3_2 then
                L3_2 = DoesEntityExist
                L4_2 = SwordObj
                L3_2 = L3_2(L4_2)
                if L3_2 then
                  L3_2 = DetachEntity
                  L4_2 = SwordObj
                  L3_2(L4_2)
                  L3_2 = SetEntityAsMissionEntity
                  L4_2 = SwordObj
                  L3_2(L4_2)
                  L3_2 = DelIfOnClient
                  L4_2 = SwordObj
                  L3_2(L4_2)
                  L3_2 = DeleteEntity
                  L4_2 = SwordObj
                  L3_2(L4_2)
                  SwordObj = nil
                end
              end
              L3_2 = CreateObjectNoOffset
              L4_2 = GetHashKey
              L5_2 = L1_2
              L4_2 = L4_2(L5_2)
              L5_2 = L2_2.x
              L6_2 = L2_2.y
              L7_2 = L2_2.z
              L7_2 = L7_2 - 1.0
              L8_2 = true
              L9_2 = true
              L10_2 = false
              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
              SwordObj = L3_2
              L3_2 = SetEntityCollision
              L4_2 = SwordObj
              L5_2 = false
              L6_2 = false
              L3_2(L4_2, L5_2, L6_2)
              L3_2 = 0
              while true do
                L4_2 = DoesEntityExist
                L5_2 = SwordObj
                L4_2 = L4_2(L5_2)
                if not (not L4_2 and L3_2 < 100) then
                  break
                end
                L4_2 = Wait
                L5_2 = 0
                L4_2(L5_2)
                L3_2 = L3_2 + 1
              end
              if L3_2 < 100 then
                L4_2 = MakeSwordNET
                L5_2 = SwordObj
                L4_2(L5_2)
                L4_2 = SwordList
                L5_2 = mySword
                L4_2 = L4_2[L5_2]
                L4_2 = L4_2.heavstand
                L5_2 = table
                L5_2 = L5_2.unpack
                L6_2 = L4_2
                L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
                f = L10_2
                e = L9_2
                d = L8_2
                c = L7_2
                b = L6_2
                a = L5_2
                L5_2 = AttachEntityToEntity
                L6_2 = SwordObj
                L7_2 = L0_2
                L8_2 = GetPedBoneIndex
                L9_2 = L0_2
                L10_2 = SwordList
                L11_2 = mySword
                L10_2 = L10_2[L11_2]
                L10_2 = L10_2.bone
                L8_2 = L8_2(L9_2, L10_2)
                L9_2 = a
                L10_2 = b
                L11_2 = c
                L12_2 = d
                L13_2 = e
                L14_2 = f
                L15_2 = true
                L16_2 = true
                L17_2 = false
                L18_2 = true
                L19_2 = 1
                L20_2 = true
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
                L5_2 = SetModelAsNoLongerNeeded
                L6_2 = L1_2
                L5_2(L6_2)
                L5_2 = Wait
                L6_2 = 25
                L5_2(L6_2)
                L5_2 = SwordList
                L6_2 = mySword
                L5_2 = L5_2[L6_2]
                L5_2 = L5_2.heavyanim
                if nil ~= L5_2 then
                  L5_2 = SwordList
                  L6_2 = mySword
                  L5_2 = L5_2[L6_2]
                  L5_2 = L5_2.heavyanim
                  L6_2 = faiAnim
                  L7_2 = L5_2.a
                  L8_2 = L5_2.b
                  L9_2 = -1
                  L10_2 = 49
                  L11_2 = L0_2
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
                else
                  L5_2 = faiAnim
                  L6_2 = "move_action@generic@2h_melee_weapon@upper"
                  L7_2 = "idle"
                  L8_2 = -1
                  L9_2 = 49
                  L10_2 = L0_2
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
ApplyHeavyStandWeap = L15_1
L15_1 = RegisterNetEvent
L16_1 = "explosion:do"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "explosion:do"
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = AddExplosion
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L10_2 = A1_2 or L10_2
  if not A1_2 then
    L10_2 = 6
  end
  L11_2 = A2_2 or L11_2
  if not A2_2 then
    L11_2 = 0.2
  end
  L12_2 = false ~= A3_2
  L13_2 = A4_2 or L13_2
  if not A4_2 then
    L13_2 = false
  end
  L14_2 = A5_2 or L14_2
  if not A5_2 then
    L14_2 = 0.0
  end
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L15_1(L16_1, L17_1)
L15_1 = {}
L16_1 = 7.0
L17_1 = 8.0
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = math
  L1_2 = L1_2.random
  L1_2 = L1_2()
  L2_2 = math
  L2_2 = L2_2.pi
  L1_2 = L1_2 * L2_2
  L1_2 = L1_2 * 2
  L2_2 = math
  L2_2 = L2_2.random
  L2_2 = L2_2()
  L3_2 = L16_1
  L2_2 = L2_2 * L3_2
  L3_2 = vector3
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * L2_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * L2_2
  L6_2 = 0.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2 + L3_2
  L5_2 = GetGroundZUltra
  L6_2 = L4_2.x
  L7_2 = L4_2.y
  L8_2 = L4_2.z
  L8_2 = L8_2 + 20.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = vector3
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = L5_2
  return L6_2(L7_2, L8_2, L9_2)
end
randomPointAroundPlayer = L18_1
function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L1_3 = randomPointAroundPlayer
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = ClearPedTasks
      L3_3 = A0_2
      L2_3(L3_3)
      L2_3 = TaskGoStraightToCoord
      L3_3 = A0_2
      L4_3 = L1_3.x
      L5_3 = L1_3.y
      L6_3 = L1_3.z
      L7_3 = L17_1
      L8_3 = -1
      L9_3 = 0.0
      L10_3 = 0.0
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L2_3 = SilPedFunc
      L3_3 = A0_2
      L2_3(L3_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      while true do
        L3_3 = GetEntityCoords
        L4_3 = A0_2
        L3_3 = L3_3(L4_3)
        L3_3 = L3_3 - L1_3
        L3_3 = #L3_3
        if not (L3_3 > 2.0) then
          break
        end
        L3_3 = GetGameTimer
        L3_3 = L3_3()
        L3_3 = L3_3 - L2_3
        L4_3 = 8000
        if not (L3_3 < L4_3) then
          break
        end
        L3_3 = Wait
        L4_3 = 25
        L3_3(L4_3)
      end
    end
  end
  L1_2(L2_2)
end
runAroundPlayer = L18_1
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = L15_1
  L2_2 = #L2_2
  if 0 == L2_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = "dbzflight@landing1"
    L4_2 = "flight_land_clip"
    L5_2 = LoadAnim
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = GetEntityCoords
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L6_2 = vector3
    L7_2 = L5_2.x
    L8_2 = L5_2.y
    L9_2 = L5_2.z
    L9_2 = L9_2 - 1.1
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = PlayEffect
    L8_2 = "scr_mp_creator"
    L9_2 = "scr_mp_plane_landing_tyre_smoke"
    L10_2 = L6_2
    L11_2 = 5.5
    L12_2 = 0.9
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = {}
    L8_2 = faiAnim
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = 1350
    L12_2 = 1
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = 1
    L9_2 = A1_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = ClonePed
      L13_2 = L2_2
      L14_2 = math
      L14_2 = L14_2.random
      L15_2 = 1
      L16_2 = 359
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = true
      L16_2 = true
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
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
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L7_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L15_1
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
      L13_2 = SafeEntToNet
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if not L13_2 then
        L14_2 = print
        L15_2 = "This cloned not exist (ClonerPed). "
        L16_2 = L12_2
        L14_2(L15_2, L16_2)
        return
      end
      L14_2 = GetMySkin
      L14_2 = L14_2()
      L15_2 = TriggerServerEvent
      L16_2 = "striano:ChangerUpdate"
      L17_2 = L13_2
      L18_2 = L14_2
      L19_2 = GetPlayerServerId
      L20_2 = PlayerId
      L20_2 = L20_2()
      L19_2, L20_2 = L19_2(L20_2)
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
      L15_2 = SetPedCanRagdoll
      L16_2 = L12_2
      L17_2 = false
      L15_2(L16_2, L17_2)
      L15_2 = SetPedFleeAttributes
      L16_2 = L12_2
      L17_2 = 0
      L18_2 = false
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = SetBlockingOfNonTemporaryEvents
      L16_2 = L12_2
      L17_2 = true
      L15_2(L16_2, L17_2)
      L15_2 = SetPedKeepTask
      L16_2 = L12_2
      L17_2 = true
      L15_2(L16_2, L17_2)
      L15_2 = SetPedMovementClipset
      L16_2 = L12_2
      L17_2 = "move_m@brave@a"
      L18_2 = 1.0
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = SetPedCombatAttributes
      L16_2 = L12_2
      L17_2 = 46
      L18_2 = true
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = SetPedMoveRateOverride
      L16_2 = L12_2
      L17_2 = 10.0
      L15_2(L16_2, L17_2)
      L15_2 = SetPedDesiredMoveBlendRatio
      L16_2 = L12_2
      L17_2 = 3.0
      L15_2(L16_2, L17_2)
      L15_2 = TaskCombatHatedTargetsAroundPed
      L16_2 = L12_2
      L17_2 = 20.0
      L18_2 = 0
      L15_2(L16_2, L17_2, L18_2)
      L15_2 = SetPedAlertness
      L16_2 = L12_2
      L17_2 = 3
      L15_2(L16_2, L17_2)
      L15_2 = CreateThread
      function L16_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = ClearPedTasks
        L1_3 = L12_2
        L0_3(L1_3)
        L0_3 = ClearPedSecondaryTask
        L1_3 = L12_2
        L0_3(L1_3)
        L0_3 = TaskPlayAnim
        L1_3 = L12_2
        L2_3 = L3_2
        L3_3 = L4_2
        L4_3 = 5.0
        L5_3 = 5.0
        L6_3 = 1350
        L7_3 = 1
        L8_3 = false
        L9_3 = false
        L10_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        while true do
          L0_3 = IsEntityPlayingAnim
          L1_3 = L12_2
          L2_3 = L3_2
          L3_3 = L4_2
          L4_3 = 3
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
        L0_3 = ClearPedTasks
        L1_3 = L12_2
        L0_3(L1_3)
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = ApplyTattoo
        L1_3 = L12_2
        L2_3 = L14_2
        L0_3(L1_3, L2_3)
        L0_3 = Wait
        L1_3 = 25
        L0_3(L1_3)
        L0_3 = TriggerServerEvent
        L1_3 = "striano:ChangerUpdate"
        L2_3 = L13_2
        L3_3 = L14_2
        L4_3 = GetPlayerServerId
        L5_3 = PlayerId
        L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L5_3()
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L5_3 = lastTattooDetected
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
        L0_3 = SetPedCanRagdoll
        L1_3 = L12_2
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = runAroundPlayer
        L1_3 = L12_2
        L0_3(L1_3)
      end
      L15_2(L16_2)
    end
    if A0_2 then
      L8_2 = CreateThread
      function L9_2()
        local L0_3, L1_3
        L0_3 = Wait
        L1_3 = A0_2
        L0_3(L1_3)
        L0_3 = clearDelEvil
        L0_3()
      end
      L8_2(L9_2)
    end
    return L7_2
  end
end
ClonerPed = L18_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = L15_1
  L0_2 = #L0_2
  if L0_2 > 0 then
    L0_2 = 1
    L1_2 = L15_1
    L1_2 = #L1_2
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = L15_1
      L4_2 = L4_2[L3_2]
      L5_2 = ClearPedSecondaryTask
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = ClearPedTasks
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
      L5_2 = SetPedToRagdoll
      L6_2 = L4_2
      L7_2 = 2000
      L8_2 = 2000
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2 = Wait
      L6_2 = 1000
      L5_2(L6_2)
      L5_2 = 25
      L6_2 = math
      L6_2 = L6_2.max
      L7_2 = 1
      L8_2 = math
      L8_2 = L8_2.floor
      L9_2 = 750
      L9_2 = L9_2 / L5_2
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L7_2 = 0
      L8_2 = L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = math
        L11_2 = L11_2.floor
        L12_2 = L10_2 / L6_2
        L12_2 = L12_2 * 255
        L11_2 = L11_2(L12_2)
        L12_2 = 255
        L11_2 = L12_2 - L11_2
        L12_2 = SetEntityAlpha
        L13_2 = L4_2
        L14_2 = L11_2
        L15_2 = false
        L12_2(L13_2, L14_2, L15_2)
        L12_2 = Wait
        L13_2 = L5_2
        L12_2(L13_2)
      end
      L7_2 = SetEntityVisible
      L8_2 = L4_2
      L9_2 = false
      L10_2 = false
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = SetEntityAlpha
      L8_2 = L4_2
      L9_2 = 0
      L10_2 = false
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = Wait
      L8_2 = 1000
      L7_2(L8_2)
      L7_2 = DeletePed
      L8_2 = L4_2
      L7_2(L8_2)
    end
    L0_2 = {}
    L15_1 = L0_2
  end
end
clearDelEvil = L18_1
function L18_1(A0_2, A1_2)
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
makeEntityFacePos = L18_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L0_2 = 0.5
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  while true do
    L3_2 = IsControlPressed
    L4_2 = 0
    L5_2 = 25
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L3_2 = IsDisabledControlPressed
      L4_2 = 0
      L5_2 = 25
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        break
      end
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = DisableControlAction
    L4_2 = 0
    L5_2 = 0
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = DisableControlAction
    L4_2 = 0
    L5_2 = 24
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = DisableFirstPersonCamThisFrame
    L3_2()
    L3_2 = IsEntityPlayingAnim
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = "magic@motions_left_hand_beam_struggle"
    L6_2 = "magic@motions_left_hand_beam_struggle_clip"
    L7_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = faiAnim
      L4_2 = "magic@motions_left_hand_beam_struggle"
      L5_2 = "magic@motions_left_hand_beam_struggle_clip"
      L6_2 = -1
      L7_2 = 49
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = getCoordsScene
    L3_2 = L3_2()
    if nil ~= L3_2 then
      L4_2 = GetEntityCoords
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L4_2 = L3_2 - L4_2
      L4_2 = #L4_2
      distance = L4_2
      L4_2 = distance
      if L4_2 < 30 then
        L0_2 = 0.1
      else
        L4_2 = distance
        if L4_2 > 30 then
          L4_2 = distance
          if L4_2 < 90 then
            L0_2 = 0.2
        end
        else
          L0_2 = 0.4
        end
      end
      L4_2 = table
      L4_2 = L4_2.unpack
      L5_2 = GetPedBoneCoords
      L6_2 = L1_2
      L7_2 = 18905
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L5_2(L6_2, L7_2)
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L7_2 = vector3
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L8_2 = GetEntityCoords
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L8_2 = L8_2 - L3_2
      L8_2 = #L8_2
      if L8_2 <= 2 then
        L8_2 = DrawText3DCombat
        L9_2 = L3_2.x
        L10_2 = L3_2.y
        L11_2 = L3_2.z
        L12_2 = "~r~~h~."
        L8_2(L9_2, L10_2, L11_2, L12_2)
      else
        L8_2 = DrawMarker
        L9_2 = 28
        L10_2 = L3_2.x
        L11_2 = L3_2.y
        L12_2 = L3_2.z
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L17_2 = 0
        L18_2 = 0
        L19_2 = 0.2
        L20_2 = 0.2
        L21_2 = 2.0
        L22_2 = 0
        L23_2 = 100
        L24_2 = 100
        L25_2 = 100
        L26_2 = false
        L27_2 = false
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        L8_2 = DrawMarker
        L9_2 = 28
        L10_2 = L3_2.x
        L11_2 = L3_2.y
        L12_2 = L3_2.z
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L17_2 = 0
        L18_2 = 0
        L19_2 = L0_2
        L20_2 = L0_2
        L21_2 = L0_2
        L22_2 = 255
        L23_2 = 255
        L24_2 = 255
        L25_2 = 200
        L26_2 = false
        L27_2 = false
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        L8_2 = DrawText3DCombat
        L9_2 = L3_2.x
        L10_2 = L3_2.y
        L11_2 = L3_2.z
        L12_2 = "~h~mouse-sx"
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      L8_2 = makeEntityFacePos
      L9_2 = L1_2
      L10_2 = vector3
      L11_2 = L3_2.x
      L12_2 = L3_2.y
      L13_2 = L3_2.z
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L10_2(L11_2, L12_2, L13_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L8_2 = IsControlJustPressed
      L9_2 = 0
      L10_2 = 24
      L8_2 = L8_2(L9_2, L10_2)
      if not L8_2 then
        L8_2 = IsDisabledControlJustPressed
        L9_2 = 0
        L10_2 = 24
        L8_2 = L8_2(L9_2, L10_2)
        if not L8_2 then
          goto lbl_192
        end
      end
      L8_2 = IsPedRagdoll
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      if not L8_2 then
        L8_2 = IsPedFalling
        L9_2 = PlayerPedId
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L9_2()
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
        if not L8_2 then
          L8_2 = GetEntityCoords
          L9_2 = PlayerPedId
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2 = L9_2()
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
          L8_2 = L8_2 - L3_2
          L8_2 = #L8_2
          if L8_2 > 2 then
            return L3_2
          end
        end
      end
    end
    ::lbl_192::
  end
  L3_2 = delBowCam
  L3_2()
  L3_2 = ecc
  L3_2()
end
getCoordsBall = L18_1
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = GetGameplayCamRot
  L4_2 = 2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = math
  L6_2 = L6_2.rad
  L7_2 = L3_2.z
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = -L5_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = math
  L7_2 = L7_2.rad
  L8_2 = L3_2.x
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2 * L6_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = math
  L7_2 = L7_2.rad
  L8_2 = L3_2.z
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = math
  L8_2 = L8_2.rad
  L9_2 = L3_2.x
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 * L7_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = math
  L8_2 = L8_2.rad
  L9_2 = L3_2.x
  L8_2, L9_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = vector3
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = math
  L7_2 = L7_2.rad
  L8_2 = L3_2.z
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L6_2 = -L6_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = math
  L8_2 = L8_2.rad
  L9_2 = L3_2.z
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = -L7_2
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2 * A0_2
  L6_2 = L2_2 + L6_2
  L7_2 = L5_2 * A1_2
  L6_2 = L6_2 + L7_2
  return L6_2
end
GetPointInFrontOfCam = L18_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetPointInFrontOfCam
  L1_2 = 2.0
  L2_2 = 1.5
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = GetShapeTestResult
  L2_2 = _ENV
  L3_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L2_2 = L2_2[L3_2]
  L3_2 = L0_2
  L4_2 = getCoordsFromCam
  L5_2 = distMaxTele
  L6_2 = L0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = -1
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = 4
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 then
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L6_2 = L6_2(L7_2)
    L6_2 = L3_2 - L6_2
    L6_2 = #L6_2
    if L6_2 < 50.0 then
      return L3_2
  end
  else
    L6_2 = nil
    return L6_2
  end
end
getCoordsScene = L18_1
function L18_1(A0_2, A1_2)
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
getCoordsFromCam = L18_1
L18_1 = RegisterNetEvent
L19_1 = "striano:Teletrasporto"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "striano:Teletrasporto"
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = myMana
  if L0_2 >= 1 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "magic@motions_left_hand_beam_struggle"
    L4_2 = "magic@motions_left_hand_beam_struggle_clip"
    L5_2 = 1
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = ecc
      L1_2()
      L1_2 = startBowCam
      L1_2()
      L1_2 = IsPedHuman
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = getCoordsBall
        L1_2 = L1_2()
        L2_2 = vector3
        L3_2 = 0
        L4_2 = 0
        L5_2 = 0
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        if L1_2 ~= L2_2 and nil ~= L1_2 then
          L2_2 = GetEntityCoords
          L3_2 = L0_2
          L2_2 = L2_2(L3_2)
          L2_2 = L2_2 - L1_2
          L2_2 = #L2_2
          if L2_2 > 2 then
            L2_2 = myMana
            L3_2 = costManaSingleTeleport
            if L2_2 >= L3_2 then
              L2_2 = makeEntityFacePos
              L3_2 = L0_2
              L4_2 = vector3
              L5_2 = L1_2.x
              L6_2 = L1_2.y
              L7_2 = L1_2.z
              L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2)
              L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
              L2_2 = ExecuteCommand
              L3_2 = "e cc"
              L2_2(L3_2)
              L2_2 = delBowCam
              L2_2()
              L2_2 = shareSound
              L3_2 = "sounds/striano_combat/magic/spells/spell_9"
              L4_2 = 0.2
              L5_2 = PlayerPedId
              L5_2 = L5_2()
              L6_2 = 3.0
              L2_2(L3_2, L4_2, L5_2, L6_2)
              CombatActive = false
              L2_2 = Wait
              L3_2 = 25
              L2_2(L3_2)
              L2_2 = faiAnim
              L3_2 = "magic@motions_telekinesis_lift_kill_takedown_victim"
              L4_2 = "magic@motions_telekinesis_lift_kill_takedown_victim_clip"
              L5_2 = 1500
              L6_2 = 1
              L7_2 = L0_2
              L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
              L2_2 = CreateThread
              function L3_2()
                local L0_3, L1_3
                L0_3 = FadeOutPlayer
                L1_3 = 1000
                L0_3(L1_3)
              end
              L2_2(L3_2)
              L2_2 = Wait
              L3_2 = 500
              L2_2(L3_2)
              L2_2 = GetPedBoneCoords
              L3_2 = L0_2
              L4_2 = 11816
              L5_2 = -0.9
              L6_2 = 1.0
              L7_2 = 0.0
              L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
              L3_2 = PlayEffect
              L4_2 = "core"
              L5_2 = "exp_xs_ray"
              L6_2 = L2_2
              L7_2 = 1.0
              L3_2(L4_2, L5_2, L6_2, L7_2)
              L3_2 = Wait
              L4_2 = 250
              L3_2(L4_2)
              L3_2 = PlaySoundFrontend
              L4_2 = -1
              L5_2 = "Frontend_Beast_Freeze_Screen"
              L6_2 = "FM_Events_Sasquatch_Sounds"
              L7_2 = 0
              L3_2(L4_2, L5_2, L6_2, L7_2)
              L3_2 = Wait
              L4_2 = 1000
              L3_2(L4_2)
              L3_2 = CreateThread
              function L4_2()
                local L0_3, L1_3
                L0_3 = FadeInPlayer
                L1_3 = 350
                L0_3(L1_3)
              end
              L3_2(L4_2)
              L3_2 = SetEntityCoords
              L4_2 = L0_2
              L5_2 = L1_2.x
              L6_2 = L1_2.y
              L7_2 = L1_2.z
              L7_2 = L7_2 + 1.0
              L8_2 = 0.0
              L9_2 = 0.0
              L10_2 = 0.0
              L11_2 = false
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
              L3_2 = PlayEffect
              L4_2 = "core"
              L5_2 = "exp_xs_ray"
              L6_2 = vector3
              L7_2 = L1_2.x
              L8_2 = L1_2.y
              L9_2 = L1_2.z
              L9_2 = L9_2 + 1.0
              L6_2 = L6_2(L7_2, L8_2, L9_2)
              L7_2 = 1.5
              L3_2(L4_2, L5_2, L6_2, L7_2)
              L3_2 = ExecuteCommand
              L4_2 = "e endladderdown"
              L3_2(L4_2)
              L3_2 = shareSound
              L4_2 = "sounds/striano_combat/magic/spells/spell_15"
              L5_2 = 0.1
              L6_2 = L0_2
              L7_2 = 3.0
              L3_2(L4_2, L5_2, L6_2, L7_2)
              L3_2 = delManaSingle
              L4_2 = costManaSingleTeleport
              L3_2(L4_2)
              L3_2 = Wait
              L4_2 = 1000
              L3_2(L4_2)
              L3_2 = TriggerEvent
              L4_2 = "striano:Teletrasporto"
              L3_2(L4_2)
            end
          end
        end
      end
    end
  else
    L0_2 = NoManaFunc
    L1_2 = 29
    L0_2(L1_2)
  end
end
L18_1(L19_1, L20_1)
bloccato = false
function L18_1()
  local L0_2, L1_2
  L0_2 = Citizen
  L0_2 = L0_2.CreateThread
  function L1_2()
    local L0_3, L1_3
    while true do
      L0_3 = bloccato
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableAllControlActions
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = bloccato
      if not L0_3 then
        return
      end
    end
  end
  L0_2(L1_2)
end
bloccatofunc = L18_1
L18_1 = RegisterNetEvent
L19_1 = "striano:Laser"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "striano:Laser"
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = myMana
  if L0_2 >= 1 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "magic@motions_left_hand_beam_struggle"
    L4_2 = "magic@motions_left_hand_beam_struggle_clip"
    L5_2 = 1
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = L0_2
      L3_2 = "magic@motions_lift_up_and_crush"
      L4_2 = "magic@motions_lift_up_and_crush_clip"
      L5_2 = 1
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = startBowCam
        L1_2()
        L1_2 = getCoordsBall
        L1_2 = L1_2()
        L2_2 = vector3
        L3_2 = 0
        L4_2 = 0
        L5_2 = 0
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        if L1_2 ~= L2_2 and nil ~= L1_2 then
          L2_2 = GetEntityCoords
          L3_2 = L0_2
          L2_2 = L2_2(L3_2)
          L2_2 = L2_2 - L1_2
          L2_2 = #L2_2
          if L2_2 > 2 then
            L2_2 = IsPedRagdoll
            L3_2 = L0_2
            L2_2 = L2_2(L3_2)
            if not L2_2 then
              L2_2 = IsPedFatallyInjured
              L3_2 = L0_2
              L2_2 = L2_2(L3_2)
              if not L2_2 then
                L2_2 = myMana
                L3_2 = costManaSingleLaser
                if L2_2 >= L3_2 then
                  L2_2 = GetEntityCoords
                  L3_2 = L0_2
                  L2_2 = L2_2(L3_2)
                  L3_2 = makeEntityFacePos
                  L4_2 = L0_2
                  L5_2 = vector3
                  L6_2 = L1_2.x
                  L7_2 = L1_2.y
                  L8_2 = L1_2.z
                  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L5_2(L6_2, L7_2, L8_2)
                  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                  L3_2 = FreezeEntityPosition
                  L4_2 = L0_2
                  L5_2 = true
                  L3_2(L4_2, L5_2)
                  L3_2 = ClearPedTasks
                  L4_2 = L0_2
                  L3_2(L4_2)
                  L3_2 = faiAnim
                  L4_2 = "magic@motions_lift_up_and_crush"
                  L5_2 = "magic@motions_lift_up_and_crush_clip"
                  L6_2 = -1
                  L7_2 = 49
                  L3_2(L4_2, L5_2, L6_2, L7_2)
                  L3_2 = Wait
                  L4_2 = 25
                  L3_2(L4_2)
                  L3_2 = SetEntityAnimSpeed
                  L4_2 = L0_2
                  L5_2 = "magic@motions_lift_up_and_crush"
                  L6_2 = "magic@motions_lift_up_and_crush_clip"
                  L7_2 = 1.2
                  L3_2(L4_2, L5_2, L6_2, L7_2)
                  L3_2 = shareSound
                  L4_2 = "sounds/striano_combat/magic/spells/spell_3"
                  L5_2 = 0.2
                  L6_2 = L0_2
                  L7_2 = 3.0
                  L3_2(L4_2, L5_2, L6_2, L7_2)
                  bloccato = true
                  L3_2 = bloccatofunc
                  L3_2()
                  L3_2 = Wait
                  L4_2 = 1550
                  L3_2(L4_2)
                  L3_2 = IsEntityPlayingAnim
                  L4_2 = L0_2
                  L5_2 = "magic@motions_lift_up_and_crush"
                  L6_2 = "magic@motions_lift_up_and_crush_clip"
                  L7_2 = 1
                  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                  if L3_2 then
                    L3_2 = makeEntityFacePos
                    L4_2 = L0_2
                    L5_2 = vector3
                    L6_2 = L1_2.x
                    L7_2 = L1_2.y
                    L8_2 = L1_2.z
                    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L5_2(L6_2, L7_2, L8_2)
                    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                    L3_2 = GetEntityForwardVector
                    L4_2 = L0_2
                    L3_2 = L3_2(L4_2)
                    L4_2 = table
                    L4_2 = L4_2.unpack
                    L5_2 = L3_2 * 6.0
                    L5_2 = L2_2 + L5_2
                    L4_2, L5_2, L6_2 = L4_2(L5_2)
                    L7_2 = vector3
                    L8_2 = L4_2
                    L9_2 = L5_2
                    L10_2 = L6_2 + 0.35
                    L7_2 = L7_2(L8_2, L9_2, L10_2)
                    L8_2 = PlayEffect
                    L9_2 = "core"
                    L10_2 = "proj_laser_enemy"
                    L11_2 = L7_2
                    L12_2 = 1.5
                    L13_2 = 1.0
                    L14_2 = nil
                    L15_2 = vector3
                    L16_2 = 0.0
                    L17_2 = 0.0
                    L18_2 = GetEntityHeading
                    L19_2 = L0_2
                    L18_2, L19_2 = L18_2(L19_2)
                    L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
                    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                    L8_2 = shareSound
                    L9_2 = "sounds/striano_combat/magic/spells/spell_5"
                    L10_2 = 0.1
                    L11_2 = L0_2
                    L12_2 = 3.0
                    L8_2(L9_2, L10_2, L11_2, L12_2)
                    L8_2 = Wait
                    L9_2 = 350
                    L8_2(L9_2)
                    L8_2 = makeEntityFacePos
                    L9_2 = L0_2
                    L10_2 = vector3
                    L11_2 = L1_2.x
                    L12_2 = L1_2.y
                    L13_2 = L1_2.z
                    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2, L12_2, L13_2)
                    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                    L8_2 = TriggerServerEvent
                    L9_2 = "ApplyDamageNearly"
                    L10_2 = L1_2.x
                    L11_2 = L1_2.y
                    L12_2 = L1_2.z
                    L13_2 = 10
                    L14_2 = 3.5
                    L15_2 = GetPlayerServerId
                    L16_2 = PlayerId
                    L16_2, L17_2, L18_2, L19_2 = L16_2()
                    L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
                    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
                    L8_2 = PlayEffect
                    L9_2 = "core"
                    L10_2 = "ent_ray_meth_fires"
                    L11_2 = vector3
                    L12_2 = L1_2.x
                    L13_2 = L1_2.y
                    L14_2 = L1_2.z
                    L11_2 = L11_2(L12_2, L13_2, L14_2)
                    L12_2 = 1.5
                    L8_2(L9_2, L10_2, L11_2, L12_2)
                    L8_2 = PlayEffect
                    L9_2 = "core"
                    L10_2 = "proj_laser_enemy"
                    L11_2 = vector3
                    L12_2 = L1_2.x
                    L13_2 = L1_2.y
                    L14_2 = L1_2.z
                    L11_2 = L11_2(L12_2, L13_2, L14_2)
                    L12_2 = 1.5
                    L8_2(L9_2, L10_2, L11_2, L12_2)
                    L8_2 = RagdollArea
                    L9_2 = 3.5
                    L10_2 = L1_2
                    L8_2(L9_2, L10_2)
                    L8_2 = Wait
                    L9_2 = 350
                    L8_2(L9_2)
                  end
                  bloccato = false
                  L3_2 = FreezeEntityPosition
                  L4_2 = L0_2
                  L5_2 = false
                  L3_2(L4_2, L5_2)
                  L3_2 = ClearPedTasks
                  L4_2 = L0_2
                  L3_2(L4_2)
                  L3_2 = ecc
                  L3_2()
                  L3_2 = Wait
                  L4_2 = 1
                  L3_2(L4_2)
                  L3_2 = delManaSingle
                  L4_2 = costManaSingleLaser
                  L3_2(L4_2)
                  L3_2 = TriggerEvent
                  L4_2 = "striano:Laser"
                  L3_2(L4_2)
                end
              end
            end
          end
        end
      end
    end
  else
    L0_2 = NoManaFunc
    L1_2 = 28
    L0_2(L1_2)
  end
end
L18_1(L19_1, L20_1)
InGrab = false
chiudiTuttoWitcher = false
inWitcher = false
noFloodWitcher = false
AggiornaWitcherTimer = 0
objCava = nil
function L18_1()
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
GiocatoriWitcher = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = 0.0
  if nil == A0_2 then
    L1_2 = 3.0
  else
    L1_2 = A0_2
  end
  L2_2 = GiocatoriWitcher
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
PlayerVicinoWitcher = L18_1
L18_1 = RegisterNetEvent
L19_1 = "attivaWitcherWalk"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "attivaWitcherWalk"
function L20_1()
  local L0_2, L1_2
  L0_2 = AttivaWitcher
  L0_2()
end
L18_1(L19_1, L20_1)
function L18_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 - A0_2
  L3_2 = L3_2 * 0.5
  L3_2 = L3_2 * A2_2
  L3_2 = A0_2 + L3_2
  return L3_2
end
lerp = L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = GetEntityForwardVector
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2 * 1.2
  L3_2 = L3_2 + L4_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L5_2 = -1
  L6_2 = GetShapeTestResult
  L7_2 = StartShapeTestRay
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2 + 1.0
  L11_2 = L2_2
  L12_2 = L3_2
  L13_2 = L4_2 - 2.0
  L14_2 = L5_2
  L15_2 = A0_2
  L16_2 = 1
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L7_2 then
    L11_2 = objCava
    if nil == L11_2 then
      L11_2 = CreateObject
      L12_2 = -1837161340
      L13_2 = L8_2
      L14_2 = true
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      objCava = L11_2
      L11_2 = SetEntityVisible
      L12_2 = objCava
      L13_2 = false
      L11_2(L12_2, L13_2)
      L11_2 = FreezeEntityPosition
      L12_2 = objCava
      L13_2 = true
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityNoCollisionEntity
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L13_2 = objCava
      L14_2 = true
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = SetEntityHeading
      L12_2 = objCava
      L13_2 = GetEntityHeading
      L14_2 = A0_2
      L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = SetEntityCollision
      L12_2 = objCava
      L13_2 = false
      L14_2 = false
      L11_2(L12_2, L13_2, L14_2)
    else
      L11_2 = SetEntityNoCollisionEntity
      L12_2 = PlayerPedId
      L12_2 = L12_2()
      L13_2 = objCava
      L14_2 = true
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = SetEntityCoords
      L12_2 = objCava
      L13_2 = L8_2
      L11_2(L12_2, L13_2)
      L11_2 = SetEntityHeading
      L12_2 = objCava
      L13_2 = GetEntityHeading
      L14_2 = A0_2
      L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2(L14_2)
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = PlaceObjectOnGroundProperly
      L12_2 = objCava
      L11_2(L12_2)
      L11_2 = GetEntityRotation
      L12_2 = A0_2
      L11_2 = L11_2(L12_2)
      L12_2 = SetEntityRotation
      L13_2 = A0_2
      L14_2 = lerp
      L15_2 = GetEntityRotation
      L16_2 = A0_2
      L15_2 = L15_2(L16_2)
      L15_2 = L15_2.x
      L16_2 = GetEntityRotation
      L17_2 = objCava
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.x
      L16_2 = L16_2 + 10.0
      L17_2 = 1.0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = 0.0
      L16_2 = L11_2.z
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
end
RayCastGamePlayCameraWT = L18_1
function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = GetEntityForwardVector
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L1_3()
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L1_3 = table
    L1_3 = L1_3.unpack
    L2_3 = GetEntityCoords
    L3_3 = PlayerPedId
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L3_3()
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L3_3 = L0_3 * 0.7
    L2_3 = L2_3 + L3_3
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    L4_3 = PlaySoundFrontend
    L5_3 = -1
    L6_3 = "1st_Person_Transition"
    L7_3 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
    L8_3 = 0
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = TriggerServerEvent
    L5_3 = "animWitcher"
    L6_3 = GetPlayerServerId
    L7_3 = A0_2
    L6_3 = L6_3(L7_3)
    L7_3 = "nightmare_anim"
    L8_3 = "grab_floataway_vic"
    L9_3 = 750
    L10_3 = 2
    L11_3 = vector3
    L12_3 = L1_3
    L13_3 = L2_3
    L14_3 = L3_3
    L11_3 = L11_3(L12_3, L13_3, L14_3)
    L12_3 = GetEntityHeading
    L13_3 = PlayerPedId
    L13_3, L14_3 = L13_3()
    L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3)
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    L4_3 = Wait
    L5_3 = 750
    L4_3(L5_3)
    L4_3 = TriggerServerEvent
    L5_3 = "vaiRagdollWitcher"
    L6_3 = GetPlayerServerId
    L7_3 = A0_2
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L6_3(L7_3)
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
  end
  L1_2(L2_2)
end
AnimVittima = L18_1
L18_1 = RegisterNetEvent
L19_1 = "animWitcher"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "animWitcher"
function L20_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = SetEntityCoords
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = A4_2.x
  L9_2 = A4_2.y
  L10_2 = A4_2.z
  L10_2 = L10_2 - 1.0
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = SetEntityHeading
  L7_2 = PlayerPedId
  L7_2 = L7_2()
  L8_2 = A5_2 + 0.0
  L6_2(L7_2, L8_2)
  L6_2 = Wait
  L7_2 = 1
  L6_2(L7_2)
  L6_2 = PlaySoundFrontend
  L7_2 = -1
  L8_2 = "1st_Person_Transition"
  L9_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
  L10_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = faiAnim
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "vaiRagdollWitcher"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "vaiRagdollWitcher"
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = SetPedToRagdoll
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 1000
  L3_2 = 1000
  L4_2 = 0
  L5_2 = 1
  L6_2 = 1
  L7_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L18_1(L19_1, L20_1)
function L18_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = inWitcher
      if not L0_3 then
        break
      end
      L0_3 = myMana
      L1_3 = costManaSingleWitcher
      if not (L0_3 >= L1_3) then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 73
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsPedRagdoll
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedFatallyInjured
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            goto lbl_54
          end
        end
      end
      L1_3 = fineWitcher
      L1_3()
      L1_3 = Wait
      L2_3 = 1
      L1_3(L2_3)
      L1_3 = IsPedRagdoll
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = IsPedFatallyInjured
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = SetEntityHeading
          L2_3 = L0_3
          L3_3 = GetGameplayCamRot
          L4_3 = 0
          L3_3 = L3_3(L4_3)
          L3_3 = L3_3.z
          L1_3(L2_3, L3_3)
          L1_3 = AttivaWitcher
          L1_3()
        end
      end
      do return end
      ::lbl_54::
      L1_3 = faiAnim
      L2_3 = "nightmare_anim"
      L3_3 = "dash_handsout"
      L4_3 = -1
      L5_3 = 1
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = SetEntityHeading
      L2_3 = L0_3
      L3_3 = GetGameplayCamRot
      L4_3 = 0
      L3_3 = L3_3(L4_3)
      L3_3 = L3_3.z
      L1_3(L2_3, L3_3)
      L1_3 = draw
      L2_3 = 21
      L3_3 = "Fast"
      L4_3 = 24
      L5_3 = "Take"
      L6_3 = 73
      L7_3 = "Cancel"
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L1_3 = IsControlPressed
      L2_3 = 0
      L3_3 = 21
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = SetEntityAnimSpeed
        L2_3 = L0_3
        L3_3 = "nightmare_anim"
        L4_3 = "dash_handsout"
        L5_3 = 2.5
        L1_3(L2_3, L3_3, L4_3, L5_3)
      else
        L1_3 = SetEntityAnimSpeed
        L2_3 = L0_3
        L3_3 = "nightmare_anim"
        L4_3 = "dash_handsout"
        L5_3 = 1.5
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = RequestCollisionAtCoord
      L3_3 = L1_3.x
      L4_3 = L1_3.y
      L5_3 = L1_3.z
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = IsControlJustPressed
      L3_3 = 0
      L4_3 = 24
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = 24
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          goto lbl_167
        end
      end
      L2_3 = delManaSingle
      L3_3 = costManaSingleWitcher
      L2_3(L3_3)
      L2_3 = SetEntityHeading
      L3_3 = L0_3
      L4_3 = GetGameplayCamRot
      L5_3 = 0
      L4_3 = L4_3(L5_3)
      L4_3 = L4_3.z
      L2_3(L3_3, L4_3)
      L2_3 = Wait
      L3_3 = 1
      L2_3(L3_3)
      L2_3 = faiAnim
      L3_3 = "nightmare_anim"
      L4_3 = "grab_floataway_atc"
      L5_3 = 750
      L6_3 = 2
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = PlayerVicinoWitcher
      L2_3, L3_3 = L2_3()
      if -1 ~= L2_3 then
        L4_3 = IsPedAPlayer
        L5_3 = GetPlayerPed
        L6_3 = L2_3
        L5_3, L6_3, L7_3 = L5_3(L6_3)
        L4_3 = L4_3(L5_3, L6_3, L7_3)
        if L4_3 then
          L4_3 = 2.5
          if L3_3 < L4_3 then
            L4_3 = IsPedRagdoll
            L5_3 = GetPlayerPed
            L6_3 = L2_3
            L5_3, L6_3, L7_3 = L5_3(L6_3)
            L4_3 = L4_3(L5_3, L6_3, L7_3)
            if not L4_3 then
              L4_3 = IsPedGettingUp
              L5_3 = GetPlayerPed
              L6_3 = L2_3
              L5_3, L6_3, L7_3 = L5_3(L6_3)
              L4_3 = L4_3(L5_3, L6_3, L7_3)
              if not L4_3 then
                L4_3 = AnimVittima
                L5_3 = L2_3
                L4_3(L5_3)
              end
            end
          end
        end
      end
      L4_3 = Wait
      L5_3 = 750
      L4_3(L5_3)
      ::lbl_167::
      L2_3 = AggiornaWitcherTimer
      if 0 == L2_3 then
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        AggiornaWitcherTimer = L2_3
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L3_3 = AggiornaWitcherTimer
      L2_3 = L2_3 - L3_3
      L3_3 = 250
      if L2_3 > L3_3 then
        L2_3 = TriggerServerEvent
        L3_3 = "SyncRotationWitcher"
        L4_3 = GetEntityRotation
        L5_3 = L0_3
        L4_3 = L4_3(L5_3)
        L5_3 = GetEntityCoords
        L6_3 = L0_3
        L5_3 = L5_3(L6_3)
        L6_3 = GetPlayerServerId
        L7_3 = PlayerId
        L7_3 = L7_3()
        L6_3, L7_3 = L6_3(L7_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
        AggiornaWitcherTimer = 0
      end
    end
  end
  L0_2(L1_2)
end
LoopPrendiPlayer = L18_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = inWitcher
  if not L0_2 then
    L0_2 = noFloodWitcher
    if not L0_2 then
      noFloodWitcher = true
      L0_2 = ClearPedTasks
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2 = L1_2()
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = CreateThread
      function L1_2()
        local L0_3, L1_3, L2_3, L3_3
        while true do
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = inWitcher
          if not L0_3 then
            L0_3 = DisablePlayerFiring
            L1_3 = PlayerPedId
            L1_3 = L1_3()
            L2_3 = true
            L0_3(L1_3, L2_3)
            L0_3 = DisableAimCamThisUpdate
            L0_3()
            L0_3 = DisableControlAction
            L1_3 = 1
            L2_3 = 311
            L3_3 = true
            L0_3(L1_3, L2_3, L3_3)
            L0_3 = DisableControlAction
            L1_3 = 0
            L2_3 = 311
            L3_3 = true
            L0_3(L1_3, L2_3, L3_3)
          else
            return
          end
        end
      end
      L0_2(L1_2)
      L0_2 = OnFixCrouch
      L0_2()
      CombatActive = false
      inWitcher = true
      noFloodWitcher = false
      L0_2 = GetGameTimer
      L0_2 = L0_2()
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.fodera2
      L1_2(L2_2)
      L1_2 = 0
      L2_2 = CreateThread
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
        while true do
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = PlayerPedId
          L0_3 = L0_3()
          L1_3 = IsEntityInWater
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = IsPedFalling
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = IsPedRagdoll
              L2_3 = L0_3
              L1_3 = L1_3(L2_3)
              if not L1_3 then
                L1_3 = IsControlJustPressed
                L2_3 = 0
                L3_3 = 73
                L1_3 = L1_3(L2_3, L3_3)
                if not L1_3 then
                  L1_3 = IsPedRagdoll
                  L2_3 = L0_3
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = IsPedFatallyInjured
                    L2_3 = L0_3
                    L1_3 = L1_3(L2_3)
                    if not L1_3 then
                      goto lbl_69
                    end
                  end
                end
                L1_3 = fineWitcher
                L1_3()
                L1_3 = Wait
                L2_3 = 1
                L1_3(L2_3)
                L1_3 = IsPedRagdoll
                L2_3 = L0_3
                L1_3 = L1_3(L2_3)
                if not L1_3 then
                  L1_3 = IsPedFatallyInjured
                  L2_3 = L0_3
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = SetEntityHeading
                    L2_3 = L0_3
                    L3_3 = GetGameplayCamRot
                    L4_3 = 0
                    L3_3 = L3_3(L4_3)
                    L3_3 = L3_3.z
                    L1_3(L2_3, L3_3)
                    L1_3 = Wait
                    L2_3 = 1
                    L1_3(L2_3)
                    L1_3 = faiAnim
                    L2_3 = "get_up@directional@movement@from_knees@standard"
                    L3_3 = "getup_l_0"
                    L4_3 = 750
                    L5_3 = 1
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                  end
                end
                do return end
                ::lbl_69::
                L1_3 = IsControlJustPressed
                L2_3 = 0
                L3_3 = 74
                L1_3 = L1_3(L2_3, L3_3)
                if L1_3 then
                  L1_3 = SetEntityHeading
                  L2_3 = L0_3
                  L3_3 = GetGameplayCamRot
                  L4_3 = 0
                  L3_3 = L3_3(L4_3)
                  L3_3 = L3_3.z
                  L1_3(L2_3, L3_3)
                  L1_3 = Wait
                  L2_3 = 1
                  L1_3(L2_3)
                  L1_3 = faiAnim
                  L2_3 = "nightmare_anim"
                  L3_3 = "float_scare_start"
                  L4_3 = 750
                  L5_3 = 2
                  L1_3(L2_3, L3_3, L4_3, L5_3)
                  L1_3 = Wait
                  L2_3 = 500
                  L1_3(L2_3)
                  L1_3 = faiAnim
                  L2_3 = "nightmare_anim"
                  L3_3 = "dash_handsout"
                  L4_3 = -1
                  L5_3 = 1
                  L1_3(L2_3, L3_3, L4_3, L5_3)
                  L1_3 = LoopPrendiPlayer
                  L1_3()
                  return
                end
                L1_3 = chiudiTuttoWitcher
                if not L1_3 then
                  L1_3 = IsPedRagdoll
                  L2_3 = L0_3
                  L1_3 = L1_3(L2_3)
                  if not L1_3 then
                    L1_3 = IsPedFatallyInjured
                    L2_3 = L0_3
                    L1_3 = L1_3(L2_3)
                    if not L1_3 then
                      goto lbl_119
                    end
                  end
                end
                L1_3 = fineWitcher
                L1_3()
                do return end
                ::lbl_119::
                L1_3 = draw
                L2_3 = 32
                L3_3 = "Move"
                L4_3 = 21
                L5_3 = "Go fast"
                L6_3 = 74
                L7_3 = "Attack Mode"
                L8_3 = 73
                L9_3 = "Cancel"
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
                L1_3 = IsControlPressed
                L2_3 = 0
                L3_3 = 73
                L1_3 = L1_3(L2_3, L3_3)
                if not L1_3 then
                  L1_3 = IsControlPressed
                  L2_3 = 0
                  L3_3 = 22
                  L1_3 = L1_3(L2_3, L3_3)
                  if not L1_3 then
                    L1_3 = IsControlPressed
                    L2_3 = 0
                    L3_3 = 32
                    L1_3 = L1_3(L2_3, L3_3)
                    if L1_3 then
                      L1_3 = 2000
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = 21
                      L2_3 = L2_3(L3_3, L4_3)
                      if L2_3 then
                        L1_3 = 1000
                      end
                      L2_3 = SetEntityHeading
                      L3_3 = L0_3
                      L4_3 = GetGameplayCamRot
                      L5_3 = 0
                      L4_3 = L4_3(L5_3)
                      L4_3 = L4_3.z
                      L2_3(L3_3, L4_3)
                      L2_3 = faiAnim
                      L3_3 = "nightmare_anim"
                      L4_3 = "crawl_forward_slow"
                      L5_3 = -1
                      L6_3 = 1
                      L2_3(L3_3, L4_3, L5_3, L6_3)
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = 21
                      L2_3 = L2_3(L3_3, L4_3)
                      if L2_3 then
                        L2_3 = SetEntityAnimSpeed
                        L3_3 = L0_3
                        L4_3 = "nightmare_anim"
                        L5_3 = "crawl_forward_slow"
                        L6_3 = 2.5
                        L2_3(L3_3, L4_3, L5_3, L6_3)
                      else
                        L2_3 = SetEntityAnimSpeed
                        L3_3 = L0_3
                        L4_3 = "nightmare_anim"
                        L5_3 = "crawl_forward_slow"
                        L6_3 = 1.5
                        L2_3(L3_3, L4_3, L5_3, L6_3)
                      end
                      L2_3 = GetEntityCoords
                      L3_3 = L0_3
                      L2_3 = L2_3(L3_3)
                      L3_3 = RequestCollisionAtCoord
                      L4_3 = L2_3.x
                      L5_3 = L2_3.y
                      L6_3 = L2_3.z
                      L3_3(L4_3, L5_3, L6_3)
                      L3_3 = 550
                      L4_3 = IsControlPressed
                      L5_3 = 0
                      L6_3 = 21
                      L4_3 = L4_3(L5_3, L6_3)
                      if L4_3 then
                        L3_3 = L3_3 / 2
                      end
                      L4_3 = L1_2
                      if 0 == L4_3 then
                        L4_3 = GetGameTimer
                        L4_3 = L4_3()
                        L1_2 = L4_3
                      else
                        L4_3 = GetGameTimer
                        L4_3 = L4_3()
                        L5_3 = L1_2
                        L4_3 = L4_3 - L5_3
                        if L3_3 <= L4_3 then
                          L4_3 = IsEntityPlayingAnim
                          L5_3 = L0_3
                          L6_3 = a
                          L7_3 = b
                          L8_3 = 1
                          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                          if L4_3 then
                            L4_3 = GetEntityBonePosition_2
                            L5_3 = L0_3
                            L6_3 = GetPedBoneIndex
                            L7_3 = L0_3
                            L8_3 = 12844
                            L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3(L7_3, L8_3)
                            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                            L5_3 = vector3
                            L6_3 = L4_3.x
                            L7_3 = L4_3.y
                            L8_3 = L4_3.z
                            L8_3 = L8_3 - 0.9
                            L5_3 = L5_3(L6_3, L7_3, L8_3)
                            L4_3 = L5_3
                            L5_3 = TriggerEvent
                            L6_3 = "EffectCombat"
                            L7_3 = "core"
                            L8_3 = "ent_dst_rocks_small"
                            L9_3 = L4_3
                            L10_3 = 4.5
                            L11_3 = 0.5
                            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                            L5_3 = TriggerEvent
                            L6_3 = "EffectCombat"
                            L7_3 = "core"
                            L8_3 = "bul_gravel"
                            L9_3 = L4_3
                            L10_3 = 3.5
                            L11_3 = 0.5
                            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
                            L5_3 = GetEntityBonePosition_2
                            L6_3 = L0_3
                            L7_3 = GetPedBoneIndex
                            L8_3 = L0_3
                            L9_3 = 6286
                            L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L7_3(L8_3, L9_3)
                            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                            L6_3 = vector3
                            L7_3 = L5_3.x
                            L8_3 = L5_3.y
                            L9_3 = L5_3.z
                            L6_3 = L6_3(L7_3, L8_3, L9_3)
                            L5_3 = L6_3
                            L6_3 = TriggerEvent
                            L7_3 = "EffectCombat"
                            L8_3 = "ent_dst_rocks_small"
                            L9_3 = L5_3
                            L10_3 = 0.8
                            L11_3 = 0.5
                            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
                            L6_3 = GetEntityBonePosition_2
                            L7_3 = L0_3
                            L8_3 = GetPedBoneIndex
                            L9_3 = L0_3
                            L10_3 = 36029
                            L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3, L10_3)
                            L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                            L7_3 = vector3
                            L8_3 = L6_3.x
                            L9_3 = L6_3.y
                            L10_3 = L6_3.z
                            L7_3 = L7_3(L8_3, L9_3, L10_3)
                            L6_3 = L7_3
                            L7_3 = TriggerEvent
                            L8_3 = "EffectCombat"
                            L9_3 = "ent_dst_rocks_small"
                            L10_3 = L6_3
                            L11_3 = 0.8
                            L12_3 = 0.5
                            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                            L7_3 = 0
                            L1_2 = L7_3
                          end
                        end
                      end
                      L4_3 = RayCastGamePlayCameraWT
                      L5_3 = L0_3
                      L4_3(L5_3)
                    else
                      L1_3 = faiAnim
                      L2_3 = "nightmare_anim"
                      L3_3 = "creature_crawl_idle"
                      L4_3 = -1
                      L5_3 = 1
                      L1_3(L2_3, L3_3, L4_3, L5_3)
                    end
                end
                else
                  L1_3 = IsControlPressed
                  L2_3 = 0
                  L3_3 = 22
                  L1_3 = L1_3(L2_3, L3_3)
                  if L1_3 then
                    L1_3 = IsControlJustPressed
                    L2_3 = 0
                    L3_3 = 22
                    L1_3 = L1_3(L2_3, L3_3)
                    if L1_3 then
                      L1_3 = GetEntitySpeed
                      L2_3 = L0_3
                      L1_3 = L1_3(L2_3)
                      L2_3 = 0.1
                      if L1_3 < L2_3 then
                        L1_3 = ClearPedTasks
                        L2_3 = L0_3
                        L1_3(L2_3)
                        L1_3 = TaskClimb
                        L2_3 = L0_3
                        L1_3(L2_3)
                      end
                    end
                  else
                    L1_3 = faiAnim
                    L2_3 = "nightmare_anim"
                    L3_3 = "creature_crawl_idle"
                    L4_3 = -1
                    L5_3 = 1
                    L1_3(L2_3, L3_3, L4_3, L5_3)
                  end
                end
                L1_3 = AggiornaWitcherTimer
                if 0 == L1_3 then
                  L1_3 = GetGameTimer
                  L1_3 = L1_3()
                  AggiornaWitcherTimer = L1_3
                end
                L1_3 = GetGameTimer
                L1_3 = L1_3()
                L2_3 = AggiornaWitcherTimer
                L1_3 = L1_3 - L2_3
                L2_3 = 1000
                if L1_3 > L2_3 then
                  L1_3 = TriggerServerEvent
                  L2_3 = "SyncRotationWitcher"
                  L3_3 = GetEntityRotation
                  L4_3 = L0_3
                  L3_3 = L3_3(L4_3)
                  L4_3 = GetEntityCoords
                  L5_3 = L0_3
                  L4_3 = L4_3(L5_3)
                  L5_3 = GetPlayerServerId
                  L6_3 = PlayerId
                  L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3()
                  L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                  L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
                  AggiornaWitcherTimer = 0
                end
            end
          end
          else
            L1_3 = Wait
            L2_3 = 1000
            L1_3(L2_3)
          end
        end
      end
      L2_2(L3_2)
    end
  end
end
AttivaWitcher = L18_1
L18_1 = RegisterNetEvent
L19_1 = "SyncRotationWitcher"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "SyncRotationWitcher"
function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L3_2 ~= A2_2 then
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
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = SetEntityCoords
        L6_2 = L3_2
        L7_2 = A1_2.x
        L8_2 = A1_2.y
        L9_2 = A1_2.z
        L9_2 = L9_2 - 1.0
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = SetEntityRotation
        L6_2 = L3_2
        L7_2 = A0_2
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L18_1(L19_1, L20_1)
function L18_1()
  local L0_2, L1_2
  chiudiTuttoWitcher = true
  inWitcher = false
  L0_2 = ClearPedTasks
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
  L0_2 = objCava
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = objCava
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = objCava
    L0_2(L1_2)
    objCava = nil
  end
  L0_2 = Wait
  L1_2 = 1
  L0_2(L1_2)
  chiudiTuttoWitcher = false
end
fineWitcher = L18_1
L18_1 = RegisterNetEvent
L19_1 = "striano:Fiamme"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "striano:Fiamme"
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = false
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = ClearPedTasks
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = faiAnim
  L3_2 = "magic@motions_left_hand_beam_struggle"
  L4_2 = "magic@motions_left_hand_beam_struggle_clip"
  L5_2 = -1
  L6_2 = 49
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Wait
  L3_2 = 150
  L2_2(L3_2)
  L2_2 = vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = "core"
  L4_2 = "ent_amb_torch_fire"
  L5_2 = stopCurrentMagicFX
  L5_2()
  L5_2 = Wait
  L6_2 = 125
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = CombatActive
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
      L0_3 = SafeEntToNet
      L1_3 = L1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L1_3 = print
        L2_3 = "This ped not exist (Fiamme). "
        L3_3 = L1_2
        L1_3(L2_3, L3_3)
        return
      end
      L1_3 = TriggerServerEvent
      L2_3 = "PlayEffectEnt"
      L3_3 = {}
      L4_3 = L3_2
      L3_3.a = L4_3
      L4_3 = L4_2
      L3_3.b = L4_3
      L3_3.ent = L0_3
      L3_3.s = 0.2
      L3_3.bone = 18905
      L3_3.timer = 1100
      L1_3(L2_3, L3_3)
    end
  end
  L5_2(L6_2)
  while true do
    L5_2 = CombatActive
    if not L5_2 then
      break
    end
    L5_2 = IsControlPressed
    L6_2 = 0
    L7_2 = 73
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L5_2 = IsDisabledControlPressed
    L6_2 = 0
    L7_2 = 73
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L5_2 = SetEntityHeading
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = GetGameplayCamRot
    L8_2 = 0
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.z
    L5_2(L6_2, L7_2)
    L5_2 = IsEntityPlayingAnim
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = "magic@motions_left_hand_beam_struggle"
    L8_2 = "magic@motions_left_hand_beam_struggle_clip"
    L9_2 = 1
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      L5_2 = faiAnim
      L6_2 = "magic@motions_left_hand_beam_struggle"
      L7_2 = "magic@motions_left_hand_beam_struggle_clip"
      L8_2 = -1
      L9_2 = 49
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
    if not L0_2 then
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = true
        L0_2 = L0_3
        L0_3 = vector3
        L1_3 = GetGameplayCamRelativeHeading
        L1_3 = L1_3()
        L2_3 = GetGameplayCamRelativePitch
        L2_3 = L2_3()
        L2_3 = L2_3 + 40
        L3_3 = 0.0
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = SafeEntToNet
        L2_3 = L1_2
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L2_3 = print
          L3_3 = "This ped not exist (Fiamme LP). "
          L4_3 = L1_2
          L2_3(L3_3, L4_3)
          return
        end
        L2_3 = TriggerServerEvent
        L3_3 = "PlayEffectEnt"
        L4_3 = {}
        L4_3.a = "core"
        L4_3.b = "ent_sht_flame"
        L4_3.ent = L1_3
        L4_3.s = 2.2
        L4_3.bone = 18905
        L4_3.timer = 250
        L4_3.r = L0_3
        L2_3(L3_3, L4_3)
        L2_3 = Wait
        L3_3 = 250
        L2_3(L3_3)
        L2_3 = false
        L0_2 = L2_3
      end
      L5_2(L6_2)
    end
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  L5_2 = ecc
  L5_2()
end
L18_1(L19_1, L20_1)
L18_1 = {}
Portali = L18_1
mioPortale = 0
PortaleBase = nil
PortaleFine = nil
AttesaElimina = false
DecisioneDel = 0
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetGameplayCamRot
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = RotationToDirection
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L6_2 = L3_2.y
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L6_2 = L3_2.z
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.z = L5_2
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = -1
  L14_2 = -1
  L15_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
RayCastGamePlayPortale = L18_1
L18_1 = RegisterCommand
L19_1 = "countportal"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = print
  L3_2 = "There are "
  L4_2 = Portali
  L4_2 = #L4_2
  L5_2 = " portal active."
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
varLoopPortali = 0
function L18_1()
  local L0_2, L1_2
  L0_2 = varLoopPortali
  if 0 == L0_2 then
    varLoopPortali = 1
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3
      while true do
        L0_3 = varLoopPortali
        if not (L0_3 > 0) then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = PlayerPedId
        L0_3 = L0_3()
        L1_3 = false
        L2_3 = Portali
        L2_3 = #L2_3
        if L2_3 > 0 then
          L2_3 = IsPedRagdoll
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = IsPedFatallyInjured
            L3_3 = L0_3
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = IsEntityVisible
              L3_3 = L0_3
              L2_3 = L2_3(L3_3)
              if L2_3 then
                L2_3 = 1
                L3_3 = Portali
                L3_3 = #L3_3
                L4_3 = 1
                for L5_3 = L2_3, L3_3, L4_3 do
                  L6_3 = GetEntityCoords
                  L7_3 = L0_3
                  L6_3 = L6_3(L7_3)
                  L7_3 = Portali
                  L7_3 = L7_3[L5_3]
                  L7_3 = L7_3.pos1
                  L6_3 = L6_3 - L7_3
                  L6_3 = #L6_3
                  if L6_3 < 35.0 then
                    L6_3 = DrawMarker
                    L7_3 = 1
                    L8_3 = Portali
                    L8_3 = L8_3[L5_3]
                    L8_3 = L8_3.pos1
                    L8_3 = L8_3.x
                    L9_3 = Portali
                    L9_3 = L9_3[L5_3]
                    L9_3 = L9_3.pos1
                    L9_3 = L9_3.y
                    L10_3 = Portali
                    L10_3 = L10_3[L5_3]
                    L10_3 = L10_3.pos1
                    L10_3 = L10_3.z
                    L10_3 = L10_3 - 0.5
                    L11_3 = 0.0
                    L12_3 = 0.0
                    L13_3 = 0.0
                    L14_3 = 0.0
                    L15_3 = 0.0
                    L16_3 = 0.0
                    L17_3 = 0.3
                    L18_3 = 0.3
                    L19_3 = 3.0
                    L20_3 = 255
                    L21_3 = 255
                    L22_3 = 255
                    L23_3 = 250
                    L24_3 = false
                    L25_3 = true
                    L26_3 = 2
                    L27_3 = nil
                    L28_3 = nil
                    L29_3 = false
                    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
                    L6_3 = DrawText3DCombat
                    L7_3 = Portali
                    L7_3 = L7_3[L5_3]
                    L7_3 = L7_3.pos1
                    L7_3 = L7_3.x
                    L8_3 = Portali
                    L8_3 = L8_3[L5_3]
                    L8_3 = L8_3.pos1
                    L8_3 = L8_3.y
                    L9_3 = Portali
                    L9_3 = L9_3[L5_3]
                    L9_3 = L9_3.pos1
                    L9_3 = L9_3.z
                    L10_3 = "~h~["
                    L11_3 = L5_3
                    L12_3 = "]"
                    L10_3 = L10_3 .. L11_3 .. L12_3
                    L6_3(L7_3, L8_3, L9_3, L10_3)
                    L1_3 = true
                  end
                  L6_3 = GetEntityCoords
                  L7_3 = L0_3
                  L6_3 = L6_3(L7_3)
                  L7_3 = Portali
                  L7_3 = L7_3[L5_3]
                  L7_3 = L7_3.pos2
                  L6_3 = L6_3 - L7_3
                  L6_3 = #L6_3
                  if L6_3 < 35.0 then
                    L6_3 = DrawMarker
                    L7_3 = 1
                    L8_3 = Portali
                    L8_3 = L8_3[L5_3]
                    L8_3 = L8_3.pos2
                    L8_3 = L8_3.x
                    L9_3 = Portali
                    L9_3 = L9_3[L5_3]
                    L9_3 = L9_3.pos2
                    L9_3 = L9_3.y
                    L10_3 = Portali
                    L10_3 = L10_3[L5_3]
                    L10_3 = L10_3.pos2
                    L10_3 = L10_3.z
                    L10_3 = L10_3 - 0.5
                    L11_3 = 0.0
                    L12_3 = 0.0
                    L13_3 = 0.0
                    L14_3 = 0.0
                    L15_3 = 0.0
                    L16_3 = 0.0
                    L17_3 = 0.3
                    L18_3 = 0.3
                    L19_3 = 3.0
                    L20_3 = 0
                    L21_3 = 0
                    L22_3 = 0
                    L23_3 = 250
                    L24_3 = false
                    L25_3 = true
                    L26_3 = 2
                    L27_3 = nil
                    L28_3 = nil
                    L29_3 = false
                    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3)
                    L6_3 = DrawText3DCombat
                    L7_3 = Portali
                    L7_3 = L7_3[L5_3]
                    L7_3 = L7_3.pos2
                    L7_3 = L7_3.x
                    L8_3 = Portali
                    L8_3 = L8_3[L5_3]
                    L8_3 = L8_3.pos2
                    L8_3 = L8_3.y
                    L9_3 = Portali
                    L9_3 = L9_3[L5_3]
                    L9_3 = L9_3.pos2
                    L9_3 = L9_3.z
                    L10_3 = "~h~["
                    L11_3 = L5_3
                    L12_3 = "]"
                    L10_3 = L10_3 .. L11_3 .. L12_3
                    L6_3(L7_3, L8_3, L9_3, L10_3)
                    L1_3 = true
                  end
                  L6_3 = CombatActive
                  if not L6_3 then
                    L6_3 = GetEntityCoords
                    L7_3 = L0_3
                    L6_3 = L6_3(L7_3)
                    L7_3 = Portali
                    L7_3 = L7_3[L5_3]
                    L7_3 = L7_3.pos1
                    L6_3 = L6_3 - L7_3
                    L6_3 = #L6_3
                    if L6_3 < 2.0 then
                      L6_3 = faiAnim
                      L7_3 = "anim@heists@ornate_bank@thermal_charge"
                      L8_3 = "cover_eyes_loop"
                      L9_3 = -1
                      L10_3 = 49
                      L6_3(L7_3, L8_3, L9_3, L10_3)
                      L6_3 = shareSound
                      L7_3 = "sounds/striano_combat/magic/spells/spell_4"
                      L8_3 = 0.02
                      L9_3 = L0_3
                      L10_3 = 7.0
                      L6_3(L7_3, L8_3, L9_3, L10_3)
                      L1_3 = true
                      L6_3 = FadeOutPlayer
                      L7_3 = 750
                      L6_3(L7_3)
                      L6_3 = SetEntityCoords
                      L7_3 = L0_3
                      L8_3 = Portali
                      L8_3 = L8_3[L5_3]
                      L8_3 = L8_3.pos2
                      L6_3(L7_3, L8_3)
                      L6_3 = faiAnim
                      L7_3 = "laddersbase"
                      L8_3 = "get_off_bottom_front_stand"
                      L9_3 = 750
                      L10_3 = 1
                      L6_3(L7_3, L8_3, L9_3, L10_3)
                      L6_3 = FadeInPlayer
                      L7_3 = 350
                      L6_3(L7_3)
                      L6_3 = Wait
                      L7_3 = 4000
                      L6_3(L7_3)
                    else
                      L6_3 = GetEntityCoords
                      L7_3 = L0_3
                      L6_3 = L6_3(L7_3)
                      L7_3 = Portali
                      L7_3 = L7_3[L5_3]
                      L7_3 = L7_3.pos2
                      L6_3 = L6_3 - L7_3
                      L6_3 = #L6_3
                      if L6_3 < 2.0 then
                        L6_3 = faiAnim
                        L7_3 = "anim@heists@ornate_bank@thermal_charge"
                        L8_3 = "cover_eyes_loop"
                        L9_3 = -1
                        L10_3 = 49
                        L6_3(L7_3, L8_3, L9_3, L10_3)
                        L1_3 = true
                        L6_3 = shareSound
                        L7_3 = "sounds/striano_combat/magic/spells/spell_4"
                        L8_3 = 0.02
                        L9_3 = L0_3
                        L10_3 = 7.0
                        L6_3(L7_3, L8_3, L9_3, L10_3)
                        L6_3 = FadeOutPlayer
                        L7_3 = 750
                        L6_3(L7_3)
                        L6_3 = SetEntityCoords
                        L7_3 = L0_3
                        L8_3 = Portali
                        L8_3 = L8_3[L5_3]
                        L8_3 = L8_3.pos1
                        L6_3(L7_3, L8_3)
                        L6_3 = faiAnim
                        L7_3 = "laddersbase"
                        L8_3 = "get_off_bottom_front_stand"
                        L9_3 = 750
                        L10_3 = 1
                        L6_3(L7_3, L8_3, L9_3, L10_3)
                        L6_3 = FadeInPlayer
                        L7_3 = 350
                        L6_3(L7_3)
                        L6_3 = Wait
                        L7_3 = 4000
                        L6_3(L7_3)
                      end
                    end
                  end
                end
                if not L1_3 then
                  L2_3 = Wait
                  L3_3 = 3000
                  L2_3(L3_3)
                end
            end
          end
          else
            L2_3 = Wait
            L3_3 = 5000
            L2_3(L3_3)
          end
        else
          varLoopPortali = 0
          return
        end
      end
    end
    L0_2(L1_2)
  end
end
loopPortali = L18_1
L18_1 = RegisterNetEvent
L19_1 = "delPortale"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "delPortale"
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Portali
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = Portali
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "finePortale"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "finePortale"
function L20_1(A0_2)
  local L1_2
  mioPortale = A0_2
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "getPortali"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "getPortali"
function L20_1(A0_2)
  local L1_2, L2_2
  Portali = A0_2
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = loopPortali
  L1_2()
end
L18_1(L19_1, L20_1)
function L18_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submex
  L2_2 = ""
  L0_2(L1_2, L2_2)
  L0_2 = mioPortale
  if L0_2 > 0 then
    L0_2 = TriggerServerEvent
    L1_2 = "delPortale"
    L2_2 = mioPortale
    L0_2(L1_2, L2_2)
    mioPortale = 0
    AttesaElimina = false
    DecisioneDel = 2
    return
  else
    PortaleBase = nil
    AttesaElimina = false
    return
  end
end
waitDelPortale = L18_1
L18_1 = RegisterNetEvent
L19_1 = "startPortale"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "startPortale"
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = "magic@motions_left_hand_beam_struggle"
  L4_2 = "magic@motions_left_hand_beam_struggle_clip"
  L5_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = faiAnim
    L2_2 = "magic@motions_left_hand_beam_struggle"
    L3_2 = "magic@motions_left_hand_beam_struggle_clip"
    L4_2 = -1
    L5_2 = 49
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = ClearPedSecondaryTask
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 250
      L0_3(L1_3)
      L0_3 = startBowCam
      L0_3()
    end
    L1_2(L2_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = AttesaElimina
        if not L0_3 then
          L0_3 = {}
          L0_3.r = 255
          L0_3.g = 255
          L0_3.b = 255
          L0_3.a = 250
          L1_3 = GetEntityCoords
          L2_3 = L0_2
          L1_3 = L1_3(L2_3)
          L2_3 = RayCastGamePlayPortale
          L3_3 = 30.0
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          if L2_3 then
            L5_3 = GetEntityCoords
            L6_3 = L0_2
            L5_3 = L5_3(L6_3)
            L5_3 = L5_3 - L3_3
            L5_3 = #L5_3
            if L5_3 > 2.0 then
              L5_3 = DrawMarker
              L6_3 = 1
              L7_3 = L3_3.x
              L8_3 = L3_3.y
              L9_3 = L3_3.z
              L9_3 = L9_3 - 0.5
              L10_3 = 0.0
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = 0.3
              L17_3 = 0.3
              L18_3 = 3.5
              L19_3 = L0_3.r
              L20_3 = L0_3.g
              L21_3 = L0_3.b
              L22_3 = L0_3.a
              L23_3 = false
              L24_3 = true
              L25_3 = 2
              L26_3 = nil
              L27_3 = nil
              L28_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            else
              L5_3 = DrawMarker
              L6_3 = 1
              L7_3 = L3_3.x
              L8_3 = L3_3.y
              L9_3 = L3_3.z
              L9_3 = L9_3 - 0.5
              L10_3 = 0.0
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = 0.1
              L17_3 = 0.1
              L18_3 = 2.5
              L19_3 = 0
              L20_3 = 0
              L21_3 = 0
              L22_3 = 100
              L23_3 = false
              L24_3 = true
              L25_3 = 2
              L26_3 = nil
              L27_3 = nil
              L28_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
            end
          end
          L5_3 = IsDisabledControlJustPressed
          L6_3 = 0
          L7_3 = 25
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsControlJustPressed
            L6_3 = 0
            L7_3 = 25
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              goto lbl_100
            end
          end
          L5_3 = ClearPedTasks
          L6_3 = L0_2
          L5_3(L6_3)
          L5_3 = delBowCam
          L5_3()
          do return end
          ::lbl_100::
          L5_3 = IsDisabledControlJustPressed
          L6_3 = 0
          L7_3 = 73
          L5_3 = L5_3(L6_3, L7_3)
          if not L5_3 then
            L5_3 = IsControlJustPressed
            L6_3 = 0
            L7_3 = 73
            L5_3 = L5_3(L6_3, L7_3)
            if not L5_3 then
              goto lbl_114
            end
          end
          L5_3 = waitDelPortale
          L5_3()
          ::lbl_114::
          L5_3 = PortaleBase
          if nil ~= L5_3 then
            L5_3 = draw
            L6_3 = 24
            L7_3 = "Portal [~h~1~h~]"
            L8_3 = 73
            L9_3 = "Reset"
            L10_3 = 25
            L11_3 = "Close"
            L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
          else
            L5_3 = draw
            L6_3 = 24
            L7_3 = "Portal [~h~1~h~]"
            L8_3 = 25
            L9_3 = "Close"
            L5_3(L6_3, L7_3, L8_3, L9_3)
          end
          L5_3 = IsEntityPlayingAnim
          L6_3 = L0_2
          L7_3 = "magic@motions_left_hand_beam_struggle"
          L8_3 = "magic@motions_left_hand_beam_struggle_clip"
          L9_3 = 1
          L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
          if not L5_3 then
            L5_3 = ClearPedSecondaryTask
            L6_3 = L0_2
            L5_3(L6_3)
            L5_3 = ClearPedTasks
            L6_3 = L0_2
            L5_3(L6_3)
            L5_3 = faiAnim
            L6_3 = "magic@motions_left_hand_beam_struggle"
            L7_3 = "magic@motions_left_hand_beam_struggle_clip"
            L8_3 = -1
            L9_3 = 49
            L5_3(L6_3, L7_3, L8_3, L9_3)
          end
          if L2_3 then
            L5_3 = SetEntityHeading
            L6_3 = L0_2
            L7_3 = GetGameplayCamRot
            L8_3 = 0
            L7_3 = L7_3(L8_3)
            L7_3 = L7_3.z
            L5_3(L6_3, L7_3)
            L5_3 = PortaleBase
            if nil == L5_3 then
              L5_3 = IsControlJustPressed
              L6_3 = 0
              L7_3 = 24
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = IsDisabledControlJustPressed
                L6_3 = 0
                L7_3 = 24
                L5_3 = L5_3(L6_3, L7_3)
              end
              if L5_3 and nil ~= L3_3 then
                L5_3 = GetEntityCoords
                L6_3 = L0_2
                L5_3 = L5_3(L6_3)
                L5_3 = L5_3 - L3_3
                L5_3 = #L5_3
                if L5_3 > 2.0 then
                  L5_3 = vector3
                  L6_3 = L3_3.x
                  L7_3 = L3_3.y
                  L8_3 = L3_3.z
                  L8_3 = L8_3 + 0.5
                  L5_3 = L5_3(L6_3, L7_3, L8_3)
                  L6_3 = false
                  L7_3 = 1
                  L8_3 = Portali
                  L8_3 = #L8_3
                  L9_3 = 1
                  for L10_3 = L7_3, L8_3, L9_3 do
                    L11_3 = Portali
                    L11_3 = L11_3[L10_3]
                    L11_3 = L11_3.pos1
                    L11_3 = L11_3 - L5_3
                    L11_3 = #L11_3
                    if L11_3 < 2.0 then
                      L6_3 = true
                    end
                    L11_3 = Portali
                    L11_3 = L11_3[L10_3]
                    L11_3 = L11_3.pos2
                    L11_3 = L11_3 - L5_3
                    L11_3 = #L11_3
                    if L11_3 < 2.0 then
                      L6_3 = true
                    end
                  end
                  L7_3 = Wait
                  L8_3 = 7
                  L7_3(L8_3)
                  if not L6_3 then
                    L7_3 = mioPortale
                    if L7_3 > 0 then
                      L7_3 = waitDelPortale
                      L7_3()
                    end
                    L7_3 = DecisioneDel
                    if 2 ~= L7_3 then
                      L7_3 = DecisioneDel
                    end
                    if 0 == L7_3 then
                      DecisioneDel = 0
                      PortaleFine = nil
                      L7_3 = ClearPedTasks
                      L8_3 = L0_2
                      L7_3(L8_3)
                      L7_3 = PlayEffect
                      L8_3 = "scr_bike_adversary"
                      L9_3 = "scr_adversary_weap_smoke"
                      L10_3 = L5_3
                      L11_3 = 2.5
                      L12_3 = 1.0
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                      L7_3 = faiAnim
                      L8_3 = "magic@motions_both_hands_lift_up"
                      L9_3 = "magic@motions_both_hands_lift_up_clip"
                      L10_3 = -1
                      L11_3 = 49
                      L7_3(L8_3, L9_3, L10_3, L11_3)
                      PortaleBase = L5_3
                      L7_3 = Wait
                      L8_3 = 500
                      L7_3(L8_3)
                      L7_3 = shareSound
                      L8_3 = "sounds/striano_combat/magic/spells/spell_3"
                      L9_3 = 0.1
                      L10_3 = L0_2
                      L11_3 = 3.0
                      L7_3(L8_3, L9_3, L10_3, L11_3)
                      L7_3 = PlaySoundFrontend
                      L8_3 = -1
                      L9_3 = "Grab_Parachute"
                      L10_3 = "BASEJUMPS_SOUNDS"
                      L11_3 = 1
                      L7_3(L8_3, L9_3, L10_3, L11_3)
                      L7_3 = Wait
                      L8_3 = 1500
                      L7_3(L8_3)
                    end
                  end
                end
              end
            else
              L5_3 = draw
              L6_3 = 24
              L7_3 = "Create Portal [2]"
              L8_3 = 73
              L9_3 = "Reset"
              L10_3 = 25
              L11_3 = "Close"
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
              L5_3 = DrawText3DCombat
              L6_3 = PortaleBase
              L6_3 = L6_3.x
              L7_3 = PortaleBase
              L7_3 = L7_3.y
              L8_3 = PortaleBase
              L8_3 = L8_3.z
              L9_3 = "~h~[Start]"
              L5_3(L6_3, L7_3, L8_3, L9_3)
              L5_3 = DrawMarker
              L6_3 = 1
              L7_3 = PortaleBase
              L7_3 = L7_3.x
              L8_3 = PortaleBase
              L8_3 = L8_3.y
              L9_3 = PortaleBase
              L9_3 = L9_3.z
              L9_3 = L9_3 - 0.5
              L10_3 = 0.0
              L11_3 = 0.0
              L12_3 = 0.0
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = 0.2
              L17_3 = 0.2
              L18_3 = 3.0
              L19_3 = 0
              L20_3 = 0
              L21_3 = 0
              L22_3 = 250
              L23_3 = false
              L24_3 = true
              L25_3 = 2
              L26_3 = nil
              L27_3 = nil
              L28_3 = false
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
              L5_3 = IsDisabledControlJustPressed
              L6_3 = 0
              L7_3 = 73
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = IsControlJustPressed
                L6_3 = 0
                L7_3 = 73
                L5_3 = L5_3(L6_3, L7_3)
                if not L5_3 then
                  goto lbl_332
                end
              end
              L5_3 = waitDelPortale
              L5_3()
              ::lbl_332::
              L5_3 = IsControlJustPressed
              L6_3 = 0
              L7_3 = 24
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = IsDisabledControlJustPressed
                L6_3 = 0
                L7_3 = 24
                L5_3 = L5_3(L6_3, L7_3)
              end
              if L5_3 and nil ~= L3_3 then
                L5_3 = GetEntityCoords
                L6_3 = L0_2
                L5_3 = L5_3(L6_3)
                L5_3 = L5_3 - L3_3
                L5_3 = #L5_3
                if L5_3 > 2.0 then
                  L5_3 = vector3
                  L6_3 = L3_3.x
                  L7_3 = L3_3.y
                  L8_3 = L3_3.z
                  L8_3 = L8_3 + 0.5
                  L5_3 = L5_3(L6_3, L7_3, L8_3)
                  L6_3 = PortaleBase
                  L6_3 = L5_3 - L6_3
                  L6_3 = #L6_3
                  if L6_3 > 4.0 and nil ~= L5_3 then
                    L6_3 = vector3
                    L7_3 = 0.0
                    L8_3 = 0.0
                    L9_3 = 0.0
                    L6_3 = L6_3(L7_3, L8_3, L9_3)
                    L6_3 = L5_3 - L6_3
                    L6_3 = #L6_3
                    if L6_3 > 50.0 then
                      L6_3 = false
                      L7_3 = 1
                      L8_3 = Portali
                      L8_3 = #L8_3
                      L9_3 = 1
                      for L10_3 = L7_3, L8_3, L9_3 do
                        L11_3 = Portali
                        L11_3 = L11_3[L10_3]
                        L11_3 = L11_3.pos1
                        L11_3 = L11_3 - L5_3
                        L11_3 = #L11_3
                        if L11_3 < 2.0 then
                          L6_3 = true
                        end
                        L11_3 = Portali
                        L11_3 = L11_3[L10_3]
                        L11_3 = L11_3.pos2
                        L11_3 = L11_3 - L5_3
                        L11_3 = #L11_3
                        if L11_3 < 2.0 then
                          L6_3 = true
                        end
                      end
                      L7_3 = Wait
                      L8_3 = 7
                      L7_3(L8_3)
                      if not L6_3 then
                        L7_3 = ClearPedTasks
                        L8_3 = L0_2
                        L7_3(L8_3)
                        L7_3 = shareSound
                        L8_3 = "sounds/striano_combat/magic/soulsteal"
                        L9_3 = 0.1
                        L10_3 = PlayerPedId
                        L10_3 = L10_3()
                        L11_3 = 3.0
                        L7_3(L8_3, L9_3, L10_3, L11_3)
                        L7_3 = faiAnim
                        L8_3 = "magic@motions_both_hands_lift_up"
                        L9_3 = "magic@motions_both_hands_lift_up_clip"
                        L10_3 = 2000
                        L11_3 = 49
                        L7_3(L8_3, L9_3, L10_3, L11_3)
                        L7_3 = Wait
                        L8_3 = 500
                        L7_3(L8_3)
                        L7_3 = shareSound
                        L8_3 = "sounds/striano_combat/magic/spells/spell_3"
                        L9_3 = 0.1
                        L10_3 = PlayerPedId
                        L10_3 = L10_3()
                        L11_3 = 3.0
                        L7_3(L8_3, L9_3, L10_3, L11_3)
                        PortaleFine = L5_3
                        L7_3 = TriggerServerEvent
                        L8_3 = "creaPortale"
                        L9_3 = PortaleBase
                        L10_3 = PortaleFine
                        L11_3 = GetPlayerServerId
                        L12_3 = PlayerId
                        L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L12_3()
                        L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
                        L7_3 = PlayEffect
                        L8_3 = "scr_xm_heat"
                        L9_3 = "scr_xm_heat_camo"
                        L10_3 = PortaleBase
                        L11_3 = 2.5
                        L12_3 = 1.0
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                        L7_3 = PlayEffect
                        L8_3 = "scr_bike_adversary"
                        L9_3 = "scr_adversary_weap_smoke"
                        L10_3 = PortaleBase
                        L11_3 = 2.5
                        L12_3 = 1.0
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                        L7_3 = PlayEffect
                        L8_3 = "scr_xm_heat"
                        L9_3 = "scr_xm_heat_camo"
                        L10_3 = PortaleFine
                        L11_3 = 2.5
                        L12_3 = 1.0
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                        L7_3 = PlayEffect
                        L8_3 = "scr_bike_adversary"
                        L9_3 = "scr_adversary_weap_smoke"
                        L10_3 = PortaleFine
                        L11_3 = 2.5
                        L12_3 = 1.0
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
                        PortaleBase = nil
                        PortaleFine = nil
                        L7_3 = PlaySoundFrontend
                        L8_3 = -1
                        L9_3 = "Grab_Parachute"
                        L10_3 = "BASEJUMPS_SOUNDS"
                        L11_3 = 1
                        L7_3(L8_3, L9_3, L10_3, L11_3)
                        L7_3 = Wait
                        L8_3 = 1000
                        L7_3(L8_3)
                        L7_3 = loopPortali
                        L7_3()
                        L7_3 = delBowCam
                        L7_3()
                        return
                      else
                        L7_3 = exports
                        L7_3 = L7_3.striano_combat
                        L8_3 = L7_3
                        L7_3 = L7_3.submexError
                        L9_3 = "Failed for too less distance."
                        L7_3(L8_3, L9_3)
                      end
                  end
                  else
                    L6_3 = exports
                    L6_3 = L6_3.striano_combat
                    L7_3 = L6_3
                    L6_3 = L6_3.submexError
                    L8_3 = "Failed for too much distance between portals."
                    L6_3(L7_3, L8_3)
                  end
                end
              end
            end
          end
        end
      end
    end
    L1_2(L2_2)
  end
end
L18_1(L19_1, L20_1)
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = ecc
  L1_2()
  L1_2 = ClearPedSecondaryTask
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = ClearPedTasks
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = PlayEffect
  L2_2 = "core"
  L3_2 = "bul_rubber_dust"
  L4_2 = GetEntityCoords
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 2.0
  L6_2 = 0.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = faiAnim
  L2_2 = "missexile3"
  L3_2 = "ex03_train_roof_idle"
  L4_2 = -1
  L5_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = "Release to hawl!"
  L1_2(L2_2, L3_2)
  while true do
    L1_2 = IsControlPressed
    L2_2 = 0
    L3_2 = 25
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = IsDisabledControlPressed
      L2_2 = 0
      L3_2 = 25
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        break
      end
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = ""
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = ecc
  L1_2()
  L1_2 = ClearPedSecondaryTask
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = ClearPedTasks
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = SafeEntToNet
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = print
    L3_2 = "This ped not exist (WolfHulu). "
    L4_2 = L0_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = TriggerServerEvent
  L3_2 = "PlayEffectEnt"
  L4_2 = {}
  L4_2.a = "scr_paintnspray"
  L4_2.b = "scr_respray_smoke"
  L4_2.ent = L1_2
  L4_2.s = 15.0
  L5_2 = {}
  L6_2 = 10.0
  L7_2 = 0.0
  L8_2 = 10.0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L4_2.c = L5_2
  L4_2.o = 1.0
  L2_2(L3_2, L4_2)
  L2_2 = TriggerServerEvent
  L3_2 = "PlayEffectEnt"
  L4_2 = {}
  L4_2.a = "scr_paintnspray"
  L4_2.b = "scr_respray_smoke"
  L4_2.ent = L1_2
  L4_2.s = 10.0
  L5_2 = {}
  L6_2 = 10.0
  L7_2 = 0.0
  L8_2 = 10.0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L4_2.c = L5_2
  L4_2.o = 1.0
  L2_2(L3_2, L4_2)
  L2_2 = TriggerServerEvent
  L3_2 = "PlayEffectEnt"
  L4_2 = {}
  L4_2.a = "scr_paintnspray"
  L4_2.b = "scr_respray_smoke"
  L4_2.ent = L1_2
  L4_2.s = 5.0
  L5_2 = {}
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = 0.0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L4_2.c = L5_2
  L4_2.o = 0.7
  L2_2(L3_2, L4_2)
  L2_2 = "melee@wfire@beast_werewolf_animset"
  L3_2 = "wfire_wmg_were_beast_intro_roar_v1_clip"
  L4_2 = faiAnim
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = -1
  L8_2 = 2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = Wait
  L5_2 = 700
  L4_2(L5_2)
  L4_2 = SetEntityAnimSpeed
  L5_2 = L0_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0.1
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.wolf_ulu
  L4_2(L5_2)
  L4_2 = earthQArea
  L5_2 = 15.5
  L6_2 = GetEntityCoords
  L7_2 = L0_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = Wait
  L5_2 = 4500
  L4_2(L5_2)
  L4_2 = SetEntityAnimSpeed
  L5_2 = L0_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 1.1
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = Wait
  L5_2 = 1000
  L4_2(L5_2)
  L4_2 = ClearPedTasks
  L5_2 = L0_2
  L4_2(L5_2)
end
WolfHulu = L18_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = ecc
  L1_2()
  L1_2 = ClearPedSecondaryTask
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = ClearPedTasks
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = PlayEffect
  L2_2 = "core"
  L3_2 = "bul_rubber_dust"
  L4_2 = GetEntityCoords
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 2.0
  L6_2 = 0.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = "melee@wfire@beast_werewolf_animset"
  L2_2 = "wfire_wmg_were_beast_feral_to_idle_trans_clip"
  L3_2 = faiAnim
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = 1900
  L7_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = SetEntityAnimSpeed
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 0.2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
AnimBark = L18_1
function L18_1(A0_2, A1_2, A2_2)
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
GetClosestObject = L18_1
lastOutlined = nil
leviosaZeta = 1.0
inLeviosa = false
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = "export@nib@wizardsv_base_attack_pose2"
  L2_2 = "nib@wizardsv_base_attack_pose2"
  L3_2 = 0.4108424782753
  L4_2 = IsEntityPlayingAnim
  L5_2 = L0_2
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = SetFollowPedCamViewMode
    L5_2 = 4
    L4_2(L5_2)
    L4_2 = SetFollowPedCamViewMode
    L5_2 = 1
    L4_2(L5_2)
    L4_2 = SetCamViewModeForContext
    L5_2 = GetCamActiveViewModeContext
    L5_2 = L5_2()
    L6_2 = 1
    L4_2(L5_2, L6_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 0
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableFirstPersonCamThisFrame
    L4_2()
    L4_2 = faiAnim
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = -1
    L8_2 = 49
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = Wait
    L5_2 = 25
    L4_2(L5_2)
    L4_2 = SetEntityAnimSpeed
    L5_2 = L0_2
    L6_2 = L1_2
    L7_2 = L2_2
    L8_2 = 3.0
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      while true do
        L0_3 = GetEntityAnimCurrentTime
        L1_3 = L0_2
        L2_3 = L1_2
        L3_3 = L2_2
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = L3_2
        if not (L0_3 < L1_3) then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      L0_3 = SetEntityAnimCurrentTime
      L1_3 = L0_2
      L2_3 = L1_2
      L3_3 = L2_2
      L4_3 = L3_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = SetEntityAnimSpeed
      L1_3 = L0_2
      L2_3 = L1_2
      L3_3 = L2_2
      L4_3 = 0.0
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L4_2(L5_2)
  end
end
WandAnim = L18_1
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
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
RotToCoords = L18_1
function L18_1(A0_2, A1_2)
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
mulNumber = L18_1
function L18_1(A0_2)
  local L1_2
  L1_2 = math
  L1_2 = L1_2.pi
  L1_2 = A0_2 * L1_2
  L1_2 = L1_2 / 180.0
  return L1_2
end
degToRad = L18_1
function L18_1(A0_2, A1_2)
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
addVector3 = L18_1
function L18_1(A0_2, A1_2)
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
subVector3 = L18_1
function L18_1(A0_2)
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
rotationToDirection = L18_1
function L18_1(A0_2)
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
w2s = L18_1
function L18_1(A0_2, A1_2)
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
processCoordinates = L18_1
function L18_1(A0_2, A1_2, A2_2)
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
s2w = L18_1
function L18_1(A0_2, A1_2)
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
screenToWorld = L18_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = inLeviosa
  if L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetGamePool
  L2_2 = "CObject"
  L1_2 = L1_2(L2_2)
  L2_2 = "export@nib@wizardsv_base_attack_pose2"
  L3_2 = "nib@wizardsv_base_attack_pose2"
  L4_2 = 0.5
  L5_2 = 0.0
  L6_2 = 0.4108424782753
  inLeviosa = true
  L7_2 = PlaySoundFrontend
  L8_2 = -1
  L9_2 = "Zoom_In"
  L10_2 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
  L11_2 = 1
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = ClearPedTasks
  L8_2 = L0_2
  L7_2(L8_2)
  L7_2 = ClearPedSecondaryTask
  L8_2 = L0_2
  L7_2(L8_2)
  L7_2 = WandAnim
  L7_2()
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
    while true do
      L0_3 = DoesEntityExist
      L1_3 = wandObject
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 32
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 33
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 34
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 35
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsEntityPlayingAnim
              L1_3 = L0_2
              L2_3 = libstrafe
              L3_3 = strafe_fw
              L4_3 = 3
              L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
              if not L0_3 then
                L0_3 = IsEntityPlayingAnim
                L1_3 = L0_2
                L2_3 = libstrafe
                L3_3 = strafe_bk
                L4_3 = 3
                L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                if not L0_3 then
                  L0_3 = IsEntityPlayingAnim
                  L1_3 = L0_2
                  L2_3 = libstrafe
                  L3_3 = "run_bwd_-90_loop"
                  L4_3 = 3
                  L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                  if not L0_3 then
                    L0_3 = IsEntityPlayingAnim
                    L1_3 = L0_2
                    L2_3 = libstrafe
                    L3_3 = "run_fwd_90_loop"
                    L4_3 = 3
                    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                    if not L0_3 then
                      L0_3 = IsEntityPlayingAnim
                      L1_3 = L0_2
                      L2_3 = libstrafe
                      L3_3 = "run_bwd_135_loop"
                      L4_3 = 3
                      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                      if not L0_3 then
                        L0_3 = IsEntityPlayingAnim
                        L1_3 = L0_2
                        L2_3 = libstrafe
                        L3_3 = "run_bwd_-135_loop"
                        L4_3 = 3
                        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                        if not L0_3 then
                          L0_3 = IsEntityPlayingAnim
                          L1_3 = L0_2
                          L2_3 = libstrafe
                          L3_3 = "run_fwd_45_loop"
                          L4_3 = 3
                          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                          if not L0_3 then
                            L0_3 = IsEntityPlayingAnim
                            L1_3 = L0_2
                            L2_3 = libstrafe
                            L3_3 = "run_fwd_-45_loop"
                            L4_3 = 3
                            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
                            if not L0_3 then
                              goto lbl_105
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
              L0_3 = ClearPedTasks
              L1_3 = L0_2
              L0_3(L1_3)
              L0_3 = ClearPedSecondaryTask
              L1_3 = L0_2
              L0_3(L1_3)
              L0_3 = WandAnim
              L0_3()
            end
          end
        end
      end
      ::lbl_105::
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
          L1_3 = DisableControlAction
          L2_3 = 0
          L3_3 = 22
          L1_3(L2_3, L3_3)
          L1_3 = IsDisabledControlPressed
          L2_3 = 0
          L3_3 = 22
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = DisableControlAction
            L2_3 = 0
            L3_3 = 1
            L4_3 = true
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = DisableControlAction
            L2_3 = 0
            L3_3 = 2
            L4_3 = true
            L1_3(L2_3, L3_3, L4_3)
          end
          L1_3 = DrawMarker
          L2_3 = 28
          L3_3 = L0_3.x
          L4_3 = L0_3.y
          L5_3 = L0_3.z
          L6_3 = 0.0
          L7_3 = 0.0
          L8_3 = 0.0
          L9_3 = 0.0
          L10_3 = 0.0
          L11_3 = 0.0
          L12_3 = 0.1
          L13_3 = 0.1
          L14_3 = 0.1
          L15_3 = 255
          L16_3 = 255
          L17_3 = 255
          L18_3 = 255
          L19_3 = false
          L20_3 = false
          L21_3 = 2
          L22_3 = nil
          L23_3 = nil
          L24_3 = false
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3)
          L1_3 = RotToCoords
          L2_3 = L0_2
          L3_3 = L0_3
          L1_3(L2_3, L3_3)
          L1_3 = WandAnim
          L1_3()
          L1_3 = Finded
          if nil == L1_3 then
            L1_3 = IsControlJustPressed
            L2_3 = 0
            L3_3 = 24
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              L1_3 = IsDisabledControlJustPressed
              L2_3 = 0
              L3_3 = 24
              L1_3 = L1_3(L2_3, L3_3)
            end
            if L1_3 then
              L1_3 = PlaySoundFrontend
              L2_3 = -1
              L3_3 = "Zoom_In"
              L4_3 = "DLC_HEIST_PLANNING_BOARD_SOUNDS"
              L5_3 = 1
              L1_3(L2_3, L3_3, L4_3, L5_3)
              L1_3 = GetClosestObject
              L2_3 = Leviosable
              L3_3 = L0_3
              L4_3 = 3.0
              L1_3 = L1_3(L2_3, L3_3, L4_3)
              if L1_3 > 0 then
                L2_3 = L1_3
                L3_3 = DoesEntityExist
                L4_3 = L2_3
                L3_3 = L3_3(L4_3)
                if L3_3 then
                  L3_3 = GetEntityCoords
                  L4_3 = L2_3
                  L3_3 = L3_3(L4_3)
                  L4_3 = GetEntityCoords
                  L5_3 = L2_3
                  L4_3 = L4_3(L5_3)
                  L3_3 = L3_3 - L4_3
                  L3_3 = #L3_3
                  L4_3 = MaxDistLeviosaTake
                  if L3_3 < L4_3 then
                    L3_3 = Finded
                    if nil == L3_3 then
                      L3_3 = GetEntityCoords
                      L4_3 = L2_3
                      L3_3 = L3_3(L4_3)
                      L3_3 = L0_3 - L3_3
                      L3_3 = #L3_3
                      L4_3 = 2.5
                      if L3_3 < L4_3 then
                        L3_3 = SetEntityCollision
                        L4_3 = L2_3
                        L5_3 = false
                        L6_3 = false
                        L3_3(L4_3, L5_3, L6_3)
                        L3_3 = SetEntityDrawOutline
                        L4_3 = L2_3
                        L5_3 = true
                        L3_3(L4_3, L5_3)
                        L3_3 = SetEntityDrawOutlineColor
                        L4_3 = 255
                        L5_3 = 255
                        L6_3 = 255
                        L7_3 = 100
                        L3_3(L4_3, L5_3, L6_3, L7_3)
                        lastOutlined = L2_3
                        Finded = L2_3
                        L3_3 = SetEntityLodDist
                        L4_3 = Finded
                        L5_3 = 800
                        L3_3(L4_3, L5_3)
                        L3_3 = soundLeviosa
                        L3_3()
                        L3_3 = PlayEffect
                        L4_3 = "avalon_particles"
                        L5_3 = "avalon_magic_trail1"
                        L6_3 = GetEntityCoords
                        L7_3 = Finded
                        L6_3 = L6_3(L7_3)
                        L7_3 = 2.5
                        L8_3 = 1.0
                        L9_3 = vector3
                        L10_3 = 1.0
                        L11_3 = 3.0
                        L12_3 = 2.0
                        L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L9_3(L10_3, L11_3, L12_3)
                        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                      end
                    end
                  end
                end
              end
            end
          else
            L1_3 = 0.025
            L2_3 = 0.15
            L3_3 = 1.0
            L4_3 = IsControlJustPressed
            L5_3 = 0
            L6_3 = 21
            L4_3 = L4_3(L5_3, L6_3)
            if L4_3 then
              L4_3 = RotateWithMouse
              L5_3 = Finded
              L6_3 = {}
              L7_3 = {}
              L7_3.x = 10.0
              L7_3.y = 10.0
              L7_3.z = 10.0
              L6_3.sens = L7_3
              L7_3 = {}
              L7_3.x = true
              L7_3.y = true
              L7_3.z = true
              L6_3.axes = L7_3
              L6_3.invertY = true
              L4_3(L5_3, L6_3)
              L4_3 = SetFollowPedCamViewMode
              L5_3 = 4
              L4_3(L5_3)
              L4_3 = SetFollowPedCamViewMode
              L5_3 = 0
              L4_3(L5_3)
              L4_3 = SetCamViewModeForContext
              L5_3 = GetCamActiveViewModeContext
              L5_3 = L5_3()
              L6_3 = 0
              L4_3(L5_3, L6_3)
              L4_3 = DisableControlAction
              L5_3 = 0
              L6_3 = 0
              L7_3 = true
              L4_3(L5_3, L6_3, L7_3)
              L4_3 = DisableFirstPersonCamThisFrame
              L4_3()
              L4_3 = faiAnim
              L5_3 = "export@nib@wizardsv_spin_hand"
              L6_3 = "nib@wizardsv_spin_hand"
              L7_3 = -1
              L8_3 = 49
              L4_3(L5_3, L6_3, L7_3, L8_3)
            end
            L4_3 = IsControlPressed
            L5_3 = 0
            L6_3 = 21
            L4_3 = L4_3(L5_3, L6_3)
            if L4_3 then
              L4_3 = IsControlPressed
              L5_3 = 0
              L6_3 = 24
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsControlPressed
                L5_3 = 0
                L6_3 = 25
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = IsControlPressed
                  L5_3 = 0
                  L6_3 = 73
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = 0.125
                    L4_2 = L4_3
                    L1_3 = 0.0125
                    L2_3 = 0.075
                    while true do
                      L4_3 = IsControlPressed
                      L5_3 = 0
                      L6_3 = 21
                      L4_3 = L4_3(L5_3, L6_3)
                      if not L4_3 then
                        goto lbl_851
                      end
                      L4_3 = Wait
                      L5_3 = 0
                      L4_3(L5_3)
                      L4_3 = L5_2
                      L4_3 = L4_3 + L1_3
                      L5_2 = L4_3
                      L4_3 = L0_3.x
                      L5_3 = math
                      L5_3 = L5_3.cos
                      L6_3 = L5_2
                      L5_3 = L5_3(L6_3)
                      L6_3 = L4_2
                      L5_3 = L5_3 * L6_3
                      L4_3 = L4_3 + L5_3
                      L5_3 = L0_3.y
                      L6_3 = math
                      L6_3 = L6_3.sin
                      L7_3 = L5_2
                      L6_3 = L6_3(L7_3)
                      L7_3 = L4_2
                      L6_3 = L6_3 * L7_3
                      L5_3 = L5_3 + L6_3
                      L6_3 = L0_3.z
                      L7_3 = math
                      L7_3 = L7_3.sin
                      L8_3 = L5_2
                      L8_3 = L8_3 * L3_3
                      L7_3 = L7_3(L8_3)
                      L7_3 = L7_3 * L2_3
                      L6_3 = L6_3 + L7_3
                      L7_3 = SetEntityCoords
                      L8_3 = Finded
                      L9_3 = L4_3
                      L10_3 = L5_3
                      L11_3 = leviosaZeta
                      L11_3 = L6_3 + L11_3
                      L12_3 = false
                      L13_3 = false
                      L14_3 = false
                      L15_3 = false
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                      L7_3 = IsControlJustPressed
                      L8_3 = 0
                      L9_3 = 24
                      L7_3 = L7_3(L8_3, L9_3)
                      if not L7_3 then
                        L7_3 = IsDisabledControlJustPressed
                        L8_3 = 0
                        L9_3 = 24
                        L7_3 = L7_3(L8_3, L9_3)
                        if not L7_3 then
                          goto lbl_421
                        end
                      end
                      L7_3 = GetEntityCoords
                      L8_3 = L0_2
                      L7_3 = L7_3(L8_3)
                      L7_3 = L0_3 - L7_3
                      L7_3 = #L7_3
                      L8_3 = MaxDistLeviosaRelease
                      if L7_3 <= L8_3 then
                        L7_3 = ResetOutlined
                        L7_3()
                      end
                      ::lbl_421::
                      L7_3 = IsControlJustPressed
                      L8_3 = 0
                      L9_3 = 25
                      L7_3 = L7_3(L8_3, L9_3)
                      if not L7_3 then
                        L7_3 = IsDisabledControlJustPressed
                        L8_3 = 0
                        L9_3 = 25
                        L7_3 = L7_3(L8_3, L9_3)
                        if not L7_3 then
                          goto lbl_444
                        end
                      end
                      L7_3 = GetEntityCoords
                      L8_3 = L0_2
                      L7_3 = L7_3(L8_3)
                      L7_3 = L0_3 - L7_3
                      L7_3 = #L7_3
                      L8_3 = MaxDistLeviosaRelease
                      if L7_3 <= L8_3 then
                        L7_3 = ResetOutlined
                        L7_3()
                      end
                      ::lbl_444::
                      L7_3 = DisableControlAction
                      L8_3 = 0
                      L9_3 = 30
                      L10_3 = true
                      L7_3(L8_3, L9_3, L10_3)
                      L7_3 = DisableControlAction
                      L8_3 = 0
                      L9_3 = 31
                      L10_3 = true
                      L7_3(L8_3, L9_3, L10_3)
                      L7_3 = DisableControlAction
                      L8_3 = 0
                      L9_3 = 14
                      L10_3 = true
                      L7_3(L8_3, L9_3, L10_3)
                      L7_3 = DisableControlAction
                      L8_3 = 0
                      L9_3 = 15
                      L10_3 = true
                      L7_3(L8_3, L9_3, L10_3)
                      L7_3 = IsControlPressed
                      L8_3 = 0
                      L9_3 = 15
                      L7_3 = L7_3(L8_3, L9_3)
                      if not L7_3 then
                        L7_3 = IsDisabledControlPressed
                        L8_3 = 0
                        L9_3 = 15
                        L7_3 = L7_3(L8_3, L9_3)
                        if not L7_3 then
                          goto lbl_485
                        end
                      end
                      L7_3 = leviosaZeta
                      L7_3 = L7_3 + 0.05
                      leviosaZeta = L7_3
                      L7_3 = leviosaZeta
                      L8_3 = 5.5
                      if L7_3 > L8_3 then
                        leviosaZeta = 5.5
                      end
                      ::lbl_485::
                      L7_3 = IsControlPressed
                      L8_3 = 0
                      L9_3 = 14
                      L7_3 = L7_3(L8_3, L9_3)
                      if not L7_3 then
                        L7_3 = IsDisabledControlPressed
                        L8_3 = 0
                        L9_3 = 14
                        L7_3 = L7_3(L8_3, L9_3)
                        if not L7_3 then
                          goto lbl_506
                        end
                      end
                      L7_3 = leviosaZeta
                      L7_3 = L7_3 - 0.05
                      leviosaZeta = L7_3
                      L7_3 = leviosaZeta
                      L8_3 = 0.05
                      if L7_3 < L8_3 then
                        leviosaZeta = 0.05
                      end
                      ::lbl_506::
                      L7_3 = GetGameTimer
                      L7_3 = L7_3()
                      L8_3 = GetGameplayCamRot
                      L9_3 = 2
                      L8_3 = L8_3(L9_3)
                      L9_3 = GetGameplayCamRot
                      L10_3 = 2
                      L9_3 = L9_3(L10_3)
                      L10_3 = false
                      L11_3 = false
                      L12_3 = L9_3.x
                      L13_3 = L8_3.x
                      L12_3 = L12_3 - L13_3
                      L13_3 = L9_3.z
                      L14_3 = L8_3.z
                      L13_3 = L13_3 - L14_3
                      L14_3 = math
                      L14_3 = L14_3.abs
                      L15_3 = L12_3
                      L14_3 = L14_3(L15_3)
                      L15_3 = 2.5
                      if L14_3 > L15_3 then
                        L14_3 = GetGameTimer
                        L14_3 = L14_3()
                        L14_3 = L14_3 - L7_3
                        L15_3 = 1000
                        if L14_3 > L15_3 then
                          L10_3 = true
                          if L12_3 > 0 then
                          else
                          end
                        end
                      end
                      L14_3 = math
                      L14_3 = L14_3.abs
                      L15_3 = L13_3
                      L14_3 = L14_3(L15_3)
                      L15_3 = 2.5
                      if L14_3 > L15_3 then
                        L14_3 = GetGameTimer
                        L14_3 = L14_3()
                        L14_3 = L14_3 - L7_3
                        L15_3 = 1000
                        if L14_3 > L15_3 and not L10_3 then
                          L11_3 = true
                          if L13_3 > 0 then
                          else
                          end
                        end
                      end
                      L8_3 = L9_3
                    end
                end
              end
            end
            else
              L4_3 = L5_2
              L4_3 = L4_3 + L1_3
              L5_2 = L4_3
              L4_3 = L0_3.x
              L5_3 = math
              L5_3 = L5_3.cos
              L6_3 = L5_2
              L5_3 = L5_3(L6_3)
              L6_3 = L4_2
              L5_3 = L5_3 * L6_3
              L4_3 = L4_3 + L5_3
              L5_3 = L0_3.y
              L6_3 = math
              L6_3 = L6_3.sin
              L7_3 = L5_2
              L6_3 = L6_3(L7_3)
              L7_3 = L4_2
              L6_3 = L6_3 * L7_3
              L5_3 = L5_3 + L6_3
              L6_3 = L0_3.z
              L7_3 = math
              L7_3 = L7_3.sin
              L8_3 = L5_2
              L8_3 = L8_3 * L3_3
              L7_3 = L7_3(L8_3)
              L7_3 = L7_3 * L2_3
              L6_3 = L6_3 + L7_3
              L7_3 = SetEntityCoords
              L8_3 = Finded
              L9_3 = L4_3
              L10_3 = L5_3
              L11_3 = leviosaZeta
              L11_3 = L6_3 + L11_3
              L12_3 = false
              L13_3 = false
              L14_3 = false
              L15_3 = false
              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
              L7_3 = IsControlJustPressed
              L8_3 = 0
              L9_3 = 24
              L7_3 = L7_3(L8_3, L9_3)
              if not L7_3 then
                L7_3 = IsDisabledControlJustPressed
                L8_3 = 0
                L9_3 = 24
                L7_3 = L7_3(L8_3, L9_3)
                if not L7_3 then
                  goto lbl_635
                end
              end
              L7_3 = GetEntityCoords
              L8_3 = L0_2
              L7_3 = L7_3(L8_3)
              L7_3 = L0_3 - L7_3
              L7_3 = #L7_3
              L8_3 = MaxDistLeviosaRelease
              if L7_3 <= L8_3 then
                L7_3 = ResetOutlined
                L7_3()
              end
              ::lbl_635::
              L7_3 = DisableControlAction
              L8_3 = 0
              L9_3 = 38
              L10_3 = true
              L7_3(L8_3, L9_3, L10_3)
              L7_3 = DisableControlAction
              L8_3 = 0
              L9_3 = 44
              L10_3 = true
              L7_3(L8_3, L9_3, L10_3)
              L7_3 = IsControlPressed
              L8_3 = 0
              L9_3 = 44
              L7_3 = L7_3(L8_3, L9_3)
              if not L7_3 then
                L7_3 = IsDisabledControlPressed
                L8_3 = 0
                L9_3 = 44
                L7_3 = L7_3(L8_3, L9_3)
                if not L7_3 then
                  goto lbl_666
                end
              end
              L7_3 = leviosaZeta
              L7_3 = L7_3 + 0.01
              leviosaZeta = L7_3
              L7_3 = leviosaZeta
              L8_3 = 5.5
              if L7_3 > L8_3 then
                leviosaZeta = 5.5
              end
              ::lbl_666::
              L7_3 = IsControlPressed
              L8_3 = 0
              L9_3 = 38
              L7_3 = L7_3(L8_3, L9_3)
              if not L7_3 then
                L7_3 = IsDisabledControlPressed
                L8_3 = 0
                L9_3 = 38
                L7_3 = L7_3(L8_3, L9_3)
                if not L7_3 then
                  goto lbl_686
                end
              end
              L7_3 = leviosaZeta
              L7_3 = L7_3 - 0.01
              leviosaZeta = L7_3
              L7_3 = leviosaZeta
              if L7_3 < 1.0 then
                leviosaZeta = 1.0
              end
              ::lbl_686::
              L7_3 = IsControlJustPressed
              L8_3 = 0
              L9_3 = 74
              L7_3 = L7_3(L8_3, L9_3)
              if not L7_3 then
                L7_3 = IsDisabledControlJustPressed
                L8_3 = 0
                L9_3 = 74
                L7_3 = L7_3(L8_3, L9_3)
                if not L7_3 then
                  goto lbl_851
                end
              end
              L7_3 = GetEntityCoords
              L8_3 = L0_2
              L7_3 = L7_3(L8_3)
              L7_3 = L0_3 - L7_3
              L7_3 = #L7_3
              L8_3 = MaxDistLeviosaRelease
              if L7_3 <= L8_3 then
                L7_3 = DetachEntity
                L8_3 = Finded
                L9_3 = true
                L10_3 = true
                L7_3(L8_3, L9_3, L10_3)
                L7_3 = FreezeEntityPosition
                L8_3 = Finded
                L9_3 = false
                L7_3(L8_3, L9_3)
                L7_3 = SetEntityInvincible
                L8_3 = Finded
                L9_3 = true
                L7_3(L8_3, L9_3)
                L7_3 = SetEntityProofs
                L8_3 = Finded
                L9_3 = true
                L10_3 = true
                L11_3 = true
                L12_3 = true
                L13_3 = true
                L14_3 = true
                L15_3 = true
                L16_3 = true
                L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                L7_3 = SetEntityCanBeDamaged
                L8_3 = Finded
                L9_3 = false
                L7_3(L8_3, L9_3)
                L7_3 = SetEntityHasGravity
                L8_3 = Finded
                L9_3 = true
                L7_3(L8_3, L9_3)
                L7_3 = DetachEntity
                L8_3 = Finded
                L9_3 = true
                L10_3 = true
                L7_3(L8_3, L9_3, L10_3)
                L7_3 = FreezeEntityPosition
                L8_3 = Finded
                L9_3 = false
                L7_3(L8_3, L9_3)
                L7_3 = SetEntityCollision
                L8_3 = Finded
                L9_3 = true
                L10_3 = true
                L7_3(L8_3, L9_3, L10_3)
                L7_3 = RequestCollisionAtCoord
                L8_3 = GetEntityCoords
                L9_3 = Finded
                L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L8_3(L9_3)
                L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                L7_3 = SetEntityLodDist
                L8_3 = Finded
                L9_3 = 800
                L7_3(L8_3, L9_3)
                L7_3 = GetEntityForwardVector
                L8_3 = PlayerPedId
                L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L8_3()
                L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                L8_3 = table
                L8_3 = L8_3.unpack
                L9_3 = GetEntityCoords
                L10_3 = PlayerPedId
                L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L10_3()
                L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                L10_3 = L7_3 * 1.0
                L9_3 = L9_3 + L10_3
                L8_3, L9_3, L10_3 = L8_3(L9_3)
                L11_3 = SetEntityCoords
                L12_3 = Finded
                L13_3 = L8_3
                L14_3 = L9_3
                L15_3 = L10_3
                L11_3(L12_3, L13_3, L14_3, L15_3)
                L11_3 = faiAnim
                L12_3 = "export@nib@wizardsv_wand_attack_1_run"
                L13_3 = "nib@wizardsv_wand_attack_1_run"
                L14_3 = 950
                L15_3 = 49
                L11_3(L12_3, L13_3, L14_3, L15_3)
                L11_3 = Wait
                L12_3 = 25
                L11_3(L12_3)
                L11_3 = SetEntityAnimSpeed
                L12_3 = L0_2
                L13_3 = "export@nib@wizardsv_wand_attack_1_run"
                L14_3 = "nib@wizardsv_wand_attack_1_run"
                L15_3 = 3.0
                L11_3(L12_3, L13_3, L14_3, L15_3)
                L11_3 = Wait
                L12_3 = 950
                L11_3(L12_3)
                L11_3 = 50.0
                L12_3 = GetEntityForwardVector
                L13_3 = L0_2
                L12_3 = L12_3(L13_3)
                L13_3 = ApplyForceToEntity
                L14_3 = Finded
                L15_3 = 1
                L16_3 = L12_3.x
                L16_3 = L16_3 * L11_3
                L17_3 = L12_3.y
                L17_3 = L17_3 * L11_3
                L18_3 = 9.0
                L19_3 = 0.0
                L20_3 = 0.0
                L21_3 = 0.0
                L22_3 = 0
                L23_3 = false
                L24_3 = true
                L25_3 = true
                L26_3 = false
                L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                while true do
                  L13_3 = GetEntitySpeed
                  L14_3 = Finded
                  L13_3 = L13_3(L14_3)
                  L14_3 = 0.5
                  if not (L13_3 > L14_3) then
                    break
                  end
                  L13_3 = Wait
                  L14_3 = 0
                  L13_3(L14_3)
                end
                L13_3 = RequestCollisionAtCoord
                L14_3 = GetEntityCoords
                L15_3 = Finded
                L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L14_3(L15_3)
                L13_3(L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
                L13_3 = SetEntityCollision
                L14_3 = Finded
                L15_3 = true
                L16_3 = true
                L13_3(L14_3, L15_3, L16_3)
                L13_3 = SetEntityDrawOutline
                L14_3 = lastOutlined
                L15_3 = false
                L13_3(L14_3, L15_3)
                lastOutlined = nil
                Finded = nil
                leviosaZeta = 1.0
              end
            end
          end
        end
      end
      ::lbl_851::
    end
    L0_3 = ResetOutlined
    L0_3()
    L0_3 = Wait
    L1_3 = 125
    L0_3(L1_3)
    L0_3 = ClearPedSecondaryTask
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
    L0_3 = ClearPedTasks
    L1_3 = PlayerPedId
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
    inLeviosa = false
    wandObject = nil
  end
  L7_2(L8_2)
end
LeviosaFunc = L18_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = lastOutlined
  if nil ~= L0_2 then
    L0_2 = RequestCollisionAtCoord
    L1_2 = GetEntityCoords
    L2_2 = lastOutlined
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2 = SetEntityCollision
    L1_2 = lastOutlined
    L2_2 = true
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = ApplyForceToEntityCenterOfMass
    L1_2 = lastOutlined
    L2_2 = 2
    L3_2 = 0.0
    L4_2 = 0.0
    L5_2 = 1.0
    L6_2 = true
    L7_2 = true
    L8_2 = false
    L9_2 = true
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L0_2 = SetEntityDrawOutline
    L1_2 = lastOutlined
    L2_2 = false
    L0_2(L1_2, L2_2)
    lastOutlined = nil
  end
  leviosaZeta = 1.0
  L0_2 = Finded
  if nil ~= L0_2 then
    L0_2 = soundLeviosaRelease
    L0_2()
  end
  Finded = nil
end
ResetOutlined = L18_1
L18_1 = {}
L19_1 = {}
L19_1.x = 55.0
L19_1.y = 55.0
L19_1.z = 85.0
L18_1.sens = L19_1
L18_1.deadzone = 0.002
L19_1 = {}
L20_1 = -85.0
L21_1 = 85.0
L19_1[1] = L20_1
L19_1[2] = L21_1
L18_1.clampPitch = L19_1
L19_1 = {}
L20_1 = -180.0
L21_1 = 180.0
L19_1[1] = L20_1
L19_1[2] = L21_1
L18_1.clampRoll = L19_1
L19_1 = {}
L19_1.x = true
L19_1.y = true
L19_1.z = true
L18_1.axes = L19_1
L18_1.invertY = true
L18_1.blockCamera = true
L19_1 = {}
L19_1.rollWithMouseX = 44
L19_1.rollWithMouseY = 38
L19_1.stop = 21
L18_1.keys = L19_1
function L19_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
clampROT = L19_1
function L19_1(A0_2, A1_2)
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
  L3_2 = L18_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2[L6_2]
    if nil == L8_2 then
      A1_2[L6_2] = L7_2
    end
  end
  L2_2 = pairs
  L3_2 = L18_1.sens
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
  L3_2 = L18_1.axes
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
  L3_2 = L18_1.keys
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2.keys
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L8_2 = A1_2.keys
      L8_2[L6_2] = L7_2
    end
  end
  L2_2 = CreateThread
  function L3_2()
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
            goto lbl_74
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
      ::lbl_74::
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
                goto lbl_130
              end
            end
            L7_3 = -1
            ::lbl_130::
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
                goto lbl_181
              end
            end
            L8_3 = -1
            ::lbl_181::
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
                      goto lbl_300
                    end
                  end
                end
              end
            end
          end
        end
      end
      L1_3 = false
      ::lbl_300::
      L7_3 = Wait
      L8_3 = 0
      L7_3(L8_3)
    end
    L2_3 = IsControlPressed
    L3_3 = 0
    L4_3 = 25
    L2_3 = L2_3(L3_3, L4_3)
    if not L2_3 then
      L2_3 = IsDisabledControlPressed
      L3_3 = 0
      L4_3 = 25
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        goto lbl_318
      end
    end
    L2_3 = WandAnim
    L2_3()
    ::lbl_318::
  end
  L2_2(L3_2)
end
RotateWithMouse = L19_1
L19_1 = false
isLightActive = L19_1
L19_1 = _ENV
L20_1 = "lastStartTimeLumos"
L21_1 = 0
L19_1[L20_1] = L21_1
L19_1 = _ENV
L20_1 = "effectThread"
L21_1 = nil
L19_1[L20_1] = L21_1
L19_1 = _ENV
L20_1 = "SpawnLightPulseAtPed"
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A0_2 or 0 == A0_2 then
    return
  end
  L3_2 = "des_farmhouse"
  L4_2 = "ent_ray_ch2_farm_fire_light"
  L5_2 = HasNamedPtfxAssetLoaded
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = RequestNamedPtfxAsset
    L6_2 = L3_2
    L5_2(L6_2)
    while true do
      L5_2 = HasNamedPtfxAssetLoaded
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
  end
  L5_2 = UseParticleFxAssetNextCall
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = GetEntityCoords
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.x
  L7_2 = L5_2.y
  L8_2 = L5_2.z
  L8_2 = L8_2 + 1.95
  L9_2 = SetParticleFxNonLoopedAlpha
  L10_2 = A2_2 or L10_2
  if not A2_2 then
    L10_2 = 0.3
  end
  L9_2(L10_2)
  L9_2 = StartNetworkedParticleFxNonLoopedAtCoord
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L8_2
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = A1_2 or L17_2
  if not A1_2 then
    L17_2 = 3.5
  end
  L18_2 = false
  L19_2 = false
  L20_2 = false
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
L19_1[L20_1] = L21_1
L19_1 = _ENV
L20_1 = "LightOn"
function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = isLightActive
  if L0_2 then
    lastStartTimeLumos = 0
    isLightActive = false
    effectThread = nil
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if not L0_2 or 0 == L0_2 then
    return
  end
  isLightActive = true
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  lastStartTimeLumos = L1_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = isLightActive
      if not L0_3 then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = SpawnLightPulseAtPed
      L2_3 = L0_2
      L1_3(L2_3)
      L1_3 = Wait
      L2_3 = 225
      L1_3(L2_3)
      L1_3 = lastStartTimeLumos
      L1_3 = L0_3 - L1_3
      L2_3 = 59000
      if not (L1_3 > L2_3) then
        L1_3 = lastStartTimeLumos
        if 0 ~= L1_3 then
          goto lbl_23
        end
      end
      isLightActive = false
      do break end
      ::lbl_23::
    end
    isLightActive = false
    effectThread = nil
    L0_3 = wandObject
    if nil ~= L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = wandObject
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = SetEntityAsMissionEntity
        L1_3 = wandObject
        L0_3(L1_3)
        L0_3 = DeleteEntity
        L1_3 = wandObject
        L0_3(L1_3)
        wandObject = nil
      end
    end
  end
  L1_2 = L1_2(L2_2)
  effectThread = L1_2
end
L19_1[L20_1] = L21_1
L19_1 = 100
L20_1 = {}
L21_1 = _ENV
L22_1 = "getPedByServerId"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if -1 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetPlayerPed
  L3_2 = L1_2
  return L2_2(L3_2)
end
L21_1[L22_1] = L23_1
L21_1 = _ENV
L22_1 = "StopInvisibility"
function L23_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = myInvisible
  if L0_2 then
    L0_2 = setSelfInvisible
    L1_2 = false
    L0_2(L1_2)
    L0_2 = GetPlayerServerId
    L1_2 = PlayerId
    L1_2, L2_2, L3_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L1_2 = TriggerServerEvent
    L2_2 = "__invis:end"
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  end
end
L21_1[L22_1] = L23_1
L21_1 = _ENV
L22_1 = "setTargetInvisibleForMe"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = getPedByServerId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 or 0 == L2_2 then
    return
  end
  L3_2 = NetworkConcealEntity
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityVisible
  L4_2 = L2_2
  L5_2 = not A1_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetEntityAlpha
  L4_2 = L2_2
  if A1_2 then
    L5_2 = 0
    if L5_2 then
      goto lbl_26
    end
  end
  L5_2 = 255
  ::lbl_26::
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = GetVehiclePedIsIn
  L4_2 = L2_2
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if 0 ~= L3_2 then
    L4_2 = NetworkConcealEntity
    L5_2 = L3_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L4_2 = SetEntityVisible
    L5_2 = L3_2
    L6_2 = not A1_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    if A1_2 then
      L4_2 = SetEntityAlpha
      L5_2 = L3_2
      L6_2 = 0
      L7_2 = false
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = ResetEntityAlpha
      L5_2 = L3_2
      L4_2(L5_2)
    end
  end
end
L21_1[L22_1] = L23_1
L21_1 = _ENV
L22_1 = "startOtherTimer"
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + A1_2
  L3_2 = L20_1
  L3_2[A0_2] = L2_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3
    while true do
      L1_3 = A0_2
      L0_3 = L20_1
      L0_3 = L0_3[L1_3]
      if not L0_3 then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L2_3 = A0_2
      L1_3 = L20_1
      L1_3 = L1_3[L2_3]
      if not (L0_3 < L1_3) then
        break
      end
      L0_3 = Wait
      L1_3 = 50
      L0_3(L1_3)
    end
    L1_3 = A0_2
    L0_3 = L20_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L2_3 = A0_2
      L1_3 = L20_1
      L1_3 = L1_3[L2_3]
      if L0_3 >= L1_3 then
        L0_3 = setTargetInvisibleForMe
        L1_3 = A0_2
        L2_3 = false
        L0_3(L1_3, L2_3)
        L1_3 = A0_2
        L0_3 = L20_1
        L0_3[L1_3] = nil
      end
    end
  end
  L3_2(L4_2)
end
L21_1[L22_1] = L23_1
L21_1 = RegisterNetEvent
L22_1 = "invis:applyTimer"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetPlayerServerId
  L2_2 = PlayerId
  L2_2, L3_2, L4_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if A0_2 == L1_2 then
    L2_2 = setSelfInvisible
    L3_2 = true
    L2_2(L3_2)
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = TIMER_INVISIBILITY
      L0_3 = L0_3 + L1_3
      while true do
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        if not (L0_3 > L1_3) then
          break
        end
        L1_3 = Wait
        L2_3 = 50
        L1_3(L2_3)
      end
      L1_3 = setSelfInvisible
      L2_3 = false
      L1_3(L2_3)
      L1_3 = TriggerServerEvent
      L2_3 = "__invis:end"
      L3_3 = L1_2
      L1_3(L2_3, L3_3)
    end
    L2_2(L3_2)
  else
    L2_2 = setTargetInvisibleForMe
    L3_2 = A0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = startOtherTimer
    L3_2 = A0_2
    L4_2 = TIMER_INVISIBILITY
    L2_2(L3_2, L4_2)
  end
end
L21_1(L22_1, L23_1)
L21_1 = RegisterNetEvent
L22_1 = "invis:off"
function L23_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L20_1
  L1_2[A0_2] = nil
  L1_2 = setTargetInvisibleForMe
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L21_1(L22_1, L23_1)
L21_1 = AddEventHandler
L22_1 = "playerSpawned"
function L23_1()
  local L0_2, L1_2
  L0_2 = setSelfInvisible
  L1_2 = false
  L0_2(L1_2)
end
L21_1(L22_1, L23_1)
L21_1 = {}
L22_1 = "active"
L23_1 = false
L21_1[L22_1] = L23_1
L22_1 = "endTime"
L23_1 = 0
L21_1[L22_1] = L23_1
L22_1 = _ENV
L23_1 = "startRagdoll"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = SetPedCanRagdoll
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetPedToRagdoll
  L2_2 = A0_2
  L3_2 = 1000
  L4_2 = 1000
  L5_2 = 0
  L6_2 = false
  L7_2 = false
  L8_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "stopRagdoll"
function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = ClearPedTasks
  L2_2 = A0_2
  L1_2(L2_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "disableRagdollControls"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 30
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 31
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 21
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 22
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 24
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 25
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 44
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 140
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 141
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 142
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 263
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 32
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 33
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 34
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 35
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
end
L22_1[L23_1] = L24_1
L22_1 = RegisterNetEvent
L23_1 = "my_spells:ragdollArea:apply"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 3000
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = L1_2 + A0_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = L21_1.active
  if not L4_2 then
    L21_1.active = true
    L21_1.endTime = L2_2
    L4_2 = startRagdoll
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = L21_1.active
        if not L0_3 then
          break
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L21_1.endTime
        if L0_3 >= L1_3 then
          L1_3 = stopRagdoll
          L2_3 = L3_2
          L1_3(L2_3)
          L21_1.active = false
          break
        end
        L1_3 = IsPedRagdoll
        L2_3 = L3_2
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = startRagdoll
          L2_3 = L3_2
          L1_3(L2_3)
        end
        L1_3 = disableRagdollControls
        L1_3()
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
      end
    end
    L4_2(L5_2)
  else
    L4_2 = L21_1.endTime
    if L2_2 > L4_2 then
      L21_1.endTime = L2_2
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = _ENV
L23_1 = "FreezeArea"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "my_spells:freezeArea:server"
  L4_2 = {}
  L5_2 = A1_2.x
  L4_2.x = L5_2
  L5_2 = A1_2.y
  L4_2.y = L5_2
  L5_2 = A1_2.z
  L4_2.z = L5_2
  L4_2.radius = A0_2
  L2_2(L3_2, L4_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "PoisonArea"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "my_spells:poisonArea:server"
  L4_2 = {}
  L5_2 = A1_2.x
  L4_2.x = L5_2
  L5_2 = A1_2.y
  L4_2.y = L5_2
  L5_2 = A1_2.z
  L4_2.z = L5_2
  L4_2.radius = A0_2
  L2_2(L3_2, L4_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "RagdollArea"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if nil ~= A1_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "my_spells:ragdollArea:server"
    L4_2 = {}
    L5_2 = A1_2.x
    L4_2.x = L5_2
    L5_2 = A1_2.y
    L4_2.y = L5_2
    L5_2 = A1_2.z
    L4_2.z = L5_2
    L4_2.radius = A0_2
    L2_2(L3_2, L4_2)
  end
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "earthQArea"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "my_spells:earthQArea:server"
  L4_2 = {}
  L5_2 = A1_2.x
  L4_2.x = L5_2
  L5_2 = A1_2.y
  L4_2.y = L5_2
  L5_2 = A1_2.z
  L4_2.z = L5_2
  L4_2.radius = A0_2
  L2_2(L3_2, L4_2)
end
L22_1[L23_1] = L24_1
L22_1 = RegisterNetEvent
L23_1 = "my_spells:earthQArea:apply"
function L24_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "In Quaker area!"
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 0.15
    L2_3 = BigWeap
    L2_3 = L2_3()
    if L2_3 then
      L1_3 = L1_3 * 2
    end
    while true do
      L1_3 = L1_3 - 0.001
      L2_3 = 0.01
      if L1_3 < L2_3 then
        L1_3 = 0.01
      end
      L2_3 = ShakeGameplayCam
      L3_3 = "SMALL_EXPLOSION_SHAKE"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = 950
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
  L1_2(L2_2)
end
L22_1(L23_1, L24_1)
L22_1 = _ENV
L23_1 = "ShakeCamQB"
function L24_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 0.15
    L2_3 = BigWeap
    L2_3 = L2_3()
    if L2_3 then
      L1_3 = L1_3 * 2
    end
    while true do
      L1_3 = L1_3 - 0.001
      L2_3 = 0.01
      if L1_3 < L2_3 then
        L1_3 = 0.01
      end
      L2_3 = ShakeGameplayCam
      L3_3 = "SMALL_EXPLOSION_SHAKE"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = 950
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
  L0_2(L1_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "ShakeCamQ"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = SetFollowPedCamViewMode
  L1_2 = 4
  L0_2(L1_2)
  L0_2 = SetFollowPedCamViewMode
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = SetCamViewModeForContext
  L1_2 = GetCamActiveViewModeContext
  L1_2 = L1_2()
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 0
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = 0.35
    L2_3 = BigWeap
    L2_3 = L2_3()
    if L2_3 then
      L1_3 = L1_3 * 2
    end
    while true do
      L1_3 = L1_3 - 0.001
      L2_3 = 0.01
      if L1_3 < L2_3 then
        L1_3 = 0.01
      end
      L2_3 = ShakeGameplayCam
      L3_3 = "SMALL_EXPLOSION_SHAKE"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      L2_3 = L2_3 - L0_3
      L3_3 = 950
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
  L0_2(L1_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "AnimQuake"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = "magic@motions_both_hands_lift_up"
  L2_2 = "magic@motions_both_hands_lift_up_clip"
  L3_2 = faiAnim
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = -1
  L7_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = SetEntityAnimSpeed
  L4_2 = A0_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 0.57
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "wetArea"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "my_spells:wetArea:server"
  L4_2 = {}
  L5_2 = A1_2.x
  L4_2.x = L5_2
  L5_2 = A1_2.y
  L4_2.y = L5_2
  L5_2 = A1_2.z
  L4_2.z = L5_2
  L4_2.radius = A0_2
  L2_2(L3_2, L4_2)
end
L22_1[L23_1] = L24_1
L22_1 = RegisterNetEvent
L23_1 = "my_spells:wetArea:apply"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedWetnessEnabledThisFrame
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = SetPedWetnessHeight
  L2_2 = L0_2
  L3_2 = 1.0
  L1_2(L2_2, L3_2)
end
L22_1(L23_1, L24_1)
L22_1 = _ENV
L23_1 = "freezeState"
L24_1 = {}
L25_1 = "active"
L26_1 = false
L24_1[L25_1] = L26_1
L25_1 = "endTime"
L26_1 = 0
L24_1[L25_1] = L26_1
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "disableCoreControls"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = veh
  L0_2 = 0 ~= L0_2
  if L0_2 then
    L1_2 = faiAnim
    L2_2 = "stungun@standing"
    L3_2 = "damage"
    L4_2 = -1
    L5_2 = 49
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = faiAnim
    L2_2 = "stungun@standing"
    L3_2 = "damage"
    L4_2 = -1
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 30
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 31
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 21
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 22
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 24
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 25
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 75
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 71
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 72
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 63
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = DisableControlAction
  L2_2 = 0
  L3_2 = 64
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "setFrozen"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetVehiclePedIsIn
  L3_2 = L1_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0 ~= L2_2
  L4_2 = FreezeEntityPosition
  L5_2 = L1_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = FreezeEntityPosition
    L5_2 = L2_2
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    if A0_2 then
      L4_2 = SetVehicleHandbrake
      L5_2 = L2_2
      L6_2 = true
      L4_2(L5_2, L6_2)
    else
      L4_2 = SetVehicleHandbrake
      L5_2 = L2_2
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
  if A0_2 then
    L4_2 = SetPedCanRagdoll
    L5_2 = L1_2
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = ClearPedTasks
    L5_2 = L1_2
    L4_2(L5_2)
    L4_2 = Wait
    L5_2 = 25
    L4_2(L5_2)
    L4_2 = freezeSpellSound
    L4_2()
    L4_2 = PlayEffect
    L5_2 = "scr_bike_adversary"
    L6_2 = "scr_adversary_gunsmith_weap_smoke"
    L7_2 = GetEntityCoords
    L8_2 = L1_2
    L7_2 = L7_2(L8_2)
    L8_2 = 2.0
    L9_2 = 1.0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = SetPedCanRagdoll
    L5_2 = L1_2
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end
L22_1[L23_1] = L24_1
L22_1 = RegisterNetEvent
L23_1 = "my_spells:freezeArea:apply"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 3000
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = L1_2 + A0_2
  L3_2 = freezeState
  L3_2 = L3_2.active
  if not L3_2 then
    L3_2 = freezeState
    L3_2.active = true
    L3_2 = freezeState
    L3_2.endTime = L2_2
    L3_2 = setFrozen
    L4_2 = true
    L3_2(L4_2)
    L3_2 = CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = freezeState
        L0_3 = L0_3.active
        if not L0_3 then
          break
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = freezeState
        L1_3 = L1_3.endTime
        if L0_3 >= L1_3 then
          L1_3 = setFrozen
          L2_3 = false
          L1_3(L2_3)
          L1_3 = freezeState
          L1_3.active = false
          L1_3 = ClearPedTasks
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L1_3(L2_3)
          break
        end
        L1_3 = disableCoreControls
        L1_3()
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
      end
    end
    L3_2(L4_2)
  else
    L3_2 = freezeState
    L3_2 = L3_2.endTime
    if L2_2 > L3_2 then
      L3_2 = freezeState
      L3_2.endTime = L2_2
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "my_spells:poisonArea:apply"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = SafeEntToNet
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = print
    L4_2 = "This ped not exist (poisonArea). "
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "PlayEffectEnt"
  L5_2 = {}
  L5_2.a = "scr_sum2_hal"
  L5_2.b = "scr_sum2_hal_bike_flames_green"
  L5_2.ent = L2_2
  L5_2.s = 2.0
  L5_2.c = nil
  L5_2.o = 0.2
  L3_2(L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = _ENV
L23_1 = "BloccaTasti"
function L24_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = inFinisher
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableAllControlActions
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableAllControlActions
      L1_3 = 1
      L0_3(L1_3)
      L0_3 = DisableAllControlActions
      L1_3 = 2
      L0_3(L1_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 1
      L0_3(L1_3, L2_3)
      L0_3 = EnableControlAction
      L1_3 = 0
      L2_3 = 2
      L0_3(L1_3, L2_3)
    end
  end
  L0_2(L1_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "finisherByPlayer"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = DoesEntityExist
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CreateThread
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
      inFinisher = true
      L0_3 = BloccaTasti
      L0_3()
      L0_3 = Wait
      L1_3 = 255
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = FreezeEntityPosition
      L2_3 = L0_3
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = FreezeEntityPosition
      L2_3 = testPedEnemy
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = Wait
      L2_3 = 25
      L1_3(L2_3)
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityForwardVector
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      L3_3 = table
      L3_3 = L3_3.unpack
      L4_3 = L2_3 * 0.9
      L4_3 = L1_3 + L4_3
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      L6_3 = SetEntityCoords
      L7_3 = A1_2
      L8_3 = vector3
      L9_3 = L3_3
      L10_3 = L4_3
      L11_3 = L5_3 - 1
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L8_3(L9_3, L10_3, L11_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L6_3 = A1_2
      testPedEnemy = L6_3
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
      L6_3 = SetEntityHeading
      L7_3 = A1_2
      L8_3 = GetEntityHeading
      L9_3 = L0_3
      L8_3 = L8_3(L9_3)
      L8_3 = L8_3 - 180.0
      L6_3(L7_3, L8_3)
      L6_3 = ClearPedTasks
      L7_3 = L0_3
      L6_3(L7_3)
      L6_3 = ClearPedTasks
      L7_3 = testPedEnemy
      L6_3(L7_3)
      L6_3 = SetEntityNoCollisionEntity
      L7_3 = L0_3
      L8_3 = testPedEnemy
      L9_3 = false
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
      L6_3 = A0_2
      L7_3 = LoadAnim
      L8_3 = FinisherList
      L8_3 = L8_3[L6_3]
      L8_3 = L8_3.a
      L7_3(L8_3)
      L7_3 = TaskPlayAnim
      L8_3 = L0_3
      L9_3 = FinisherList
      L9_3 = L9_3[L6_3]
      L9_3 = L9_3.a
      L10_3 = FinisherList
      L10_3 = L10_3[L6_3]
      L10_3 = L10_3.b
      L11_3 = 2.0
      L12_3 = 2.0
      L13_3 = -1
      L14_3 = 2
      L15_3 = 2
      L16_3 = false
      L17_3 = false
      L18_3 = false
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L7_3 = TaskPlayAnim
      L8_3 = testPedEnemy
      L9_3 = FinisherList
      L9_3 = L9_3[L6_3]
      L9_3 = L9_3.a
      L10_3 = FinisherList
      L10_3 = L10_3[L6_3]
      L10_3 = L10_3.c
      L11_3 = 2.0
      L12_3 = 2.0
      L13_3 = -1
      L14_3 = 2
      L15_3 = 2
      L16_3 = false
      L17_3 = false
      L18_3 = false
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L7_3 = FreezeEntityPosition
      L8_3 = L0_3
      L9_3 = false
      L7_3(L8_3, L9_3)
      L7_3 = FreezeEntityPosition
      L8_3 = testPedEnemy
      L9_3 = false
      L7_3(L8_3, L9_3)
      L7_3 = SetPedCanRagdollFromPlayerImpact
      L8_3 = testPedEnemy
      L9_3 = true
      L7_3(L8_3, L9_3)
      L7_3 = SetPedCanRagdoll
      L8_3 = testPedEnemy
      L9_3 = true
      L7_3(L8_3, L9_3)
      L7_3 = Wait
      L8_3 = 25
      L7_3(L8_3)
      L7_3 = splatterSound
      L7_3()
      L7_3 = true
      while L7_3 do
        L8_3 = Wait
        L9_3 = 0
        L8_3(L9_3)
        L8_3 = SetEntityNoCollisionEntity
        L9_3 = L0_3
        L10_3 = testPedEnemy
        L11_3 = false
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = GetEntityAnimCurrentTime
        L9_3 = L0_3
        L10_3 = FinisherList
        L10_3 = L10_3[L6_3]
        L10_3 = L10_3.a
        L11_3 = FinisherList
        L11_3 = L11_3[L6_3]
        L11_3 = L11_3.b
        L8_3 = L8_3(L9_3, L10_3, L11_3)
        L9_3 = inWindow
        L10_3 = L8_3
        L11_3 = FinisherList
        L11_3 = L11_3[L6_3]
        L11_3 = L11_3.astopat
        L12_3 = 0.01
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        if L9_3 then
          L9_3 = FinisherList
          L9_3 = L9_3[L6_3]
          L9_3 = L9_3.va
          if not L9_3 then
            L9_3 = FinisherList
            L9_3 = L9_3[L6_3]
            L9_3.va = true
            L9_3 = ClearPedTasks
            L10_3 = L0_3
            L9_3(L10_3)
          end
        end
        L9_3 = GetEntityAnimCurrentTime
        L10_3 = testPedEnemy
        L11_3 = FinisherList
        L11_3 = L11_3[L6_3]
        L11_3 = L11_3.a
        L12_3 = FinisherList
        L12_3 = L12_3[L6_3]
        L12_3 = L12_3.c
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L10_3 = inWindow
        L11_3 = L9_3
        L12_3 = FinisherList
        L12_3 = L12_3[L6_3]
        L12_3 = L12_3.bstopat
        L13_3 = 0.01
        L10_3 = L10_3(L11_3, L12_3, L13_3)
        if L10_3 then
          L10_3 = FinisherList
          L10_3 = L10_3[L6_3]
          L10_3 = L10_3.vb
          if not L10_3 then
            L10_3 = FinisherList
            L10_3 = L10_3[L6_3]
            L10_3.vb = true
            L10_3 = ApplyDamageToPedLegacy
            L11_3 = testPedEnemy
            L12_3 = 10
            L10_3(L11_3, L12_3)
            L10_3 = SetPedToRagdoll
            L11_3 = testPedEnemy
            L12_3 = 2000
            L13_3 = 2000
            L14_3 = 0
            L15_3 = 0
            L16_3 = 0
            L17_3 = 0
            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
            L10_3 = FinisherList
            L10_3 = L10_3[L6_3]
            L10_3 = L10_3.ff
            L10_3()
          end
        end
        L10_3 = FinisherList
        L10_3 = L10_3[L6_3]
        L10_3 = L10_3.va
        if L10_3 then
          L10_3 = FinisherList
          L10_3 = L10_3[L6_3]
          L10_3 = L10_3.vb
          if L10_3 then
            L7_3 = false
            L10_3 = print
            L11_3 = "Chiudo il controllo perch\195\168 entrambi sono stati richiamati."
            L10_3(L11_3)
          end
        end
        L10_3 = IsEntityPlayingAnim
        L11_3 = testPedEnemy
        L12_3 = FinisherList
        L12_3 = L12_3[L6_3]
        L12_3 = L12_3.a
        L13_3 = FinisherList
        L13_3 = L13_3[L6_3]
        L13_3 = L13_3.c
        L14_3 = 3
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
        if L10_3 then
          L10_3 = IsEntityPlayingAnim
          L11_3 = L0_3
          L12_3 = FinisherList
          L12_3 = L12_3[L6_3]
          L12_3 = L12_3.a
          L13_3 = FinisherList
          L13_3 = L13_3[L6_3]
          L13_3 = L13_3.b
          L14_3 = 3
          L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
          if L10_3 then
            goto lbl_255
          end
        end
        L7_3 = false
        L10_3 = print
        L11_3 = "Chiudo il controllo perch\195\168 anim non rilevata."
        L10_3(L11_3)
        ::lbl_255::
      end
      L8_3 = FinisherList
      L8_3 = L8_3[L6_3]
      L8_3.va = false
      L8_3 = FinisherList
      L8_3 = L8_3[L6_3]
      L8_3.vb = false
      L8_3 = SetEntityNoCollisionEntity
      L9_3 = L0_3
      L10_3 = testPedEnemy
      L11_3 = true
      L8_3(L9_3, L10_3, L11_3)
      L8_3 = CreateThread
      function L9_3()
        local L0_4, L1_4, L2_4
        while true do
          L0_4 = IsPedRagdoll
          L1_4 = testPedEnemy
          L0_4 = L0_4(L1_4)
          if not L0_4 then
            break
          end
          L0_4 = IsPedFatallyInjured
          L1_4 = testPedEnemy
          L0_4 = L0_4(L1_4)
          if L0_4 then
            break
          end
          L0_4 = Wait
          L1_4 = 0
          L0_4(L1_4)
        end
        L0_4 = GetEntityHealth
        L1_4 = testPedEnemy
        L0_4 = L0_4(L1_4)
        if L0_4 > 110 then
          L0_4 = SetPedCanRagdoll
          L1_4 = testPedEnemy
          L2_4 = false
          L0_4(L1_4, L2_4)
        end
      end
      L8_3(L9_3)
      inFinisher = false
      L8_3 = IdleStrafe
      L8_3()
    end
    L2_2(L3_2)
  end
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "playerGetHit"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = BloodActive
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = table
    L1_2 = L1_2.unpack
    L2_2 = GetPedBoneCoords
    L3_2 = L0_2
    L4_2 = 0
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2, L4_2)
    L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = vector3
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = PlayEffect
    L6_2 = "scr_solomon3"
    L7_2 = "scr_trev4_747_blood_splash"
    L8_2 = L4_2
    L9_2 = 2.5
    L10_2 = 1.5
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = PlayEffect
    L6_2 = "scr_solomon3"
    L7_2 = "scr_trev4_747_blood_impact"
    L8_2 = L4_2
    L9_2 = 0.2
    L10_2 = 1.5
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Hit_Out"
  L3_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "finisherNPC"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    inFinisher = true
    L0_3 = BloccaTasti
    L0_3()
    L0_3 = Wait
    L1_3 = 255
    L0_3(L1_3)
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = A1_2
    if nil == L1_3 then
      L1_3 = "ig_orleans"
      L2_3 = GetHashKey
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = RequestModelStriano
      L4_3 = L2_3
      L3_3(L4_3)
      L3_3 = PlayerPedId
      L3_3 = L3_3()
      L4_3 = GetEntityCoords
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = GetEntityForwardVector
      L6_3 = L3_3
      L5_3 = L5_3(L6_3)
      L6_3 = table
      L6_3 = L6_3.unpack
      L7_3 = L5_3 * 0.9
      L7_3 = L4_3 + L7_3
      L6_3, L7_3, L8_3 = L6_3(L7_3)
      L9_3 = vector3
      L10_3 = L6_3
      L11_3 = L7_3
      L12_3 = L8_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      coordZomb = L9_3
      L9_3 = CreatePed
      L10_3 = 26
      L11_3 = L2_3
      L12_3 = coordZomb
      L12_3 = L12_3.x
      L13_3 = coordZomb
      L13_3 = L13_3.y
      L14_3 = coordZomb
      L14_3 = L14_3.z
      L14_3 = L14_3 - 1.0
      L15_3 = 0.0
      L16_3 = true
      L17_3 = false
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      testPedEnemy = L9_3
      while true do
        L9_3 = DoesEntityExist
        L10_3 = testPedEnemy
        L9_3 = L9_3(L10_3)
        if L9_3 then
          break
        end
        L9_3 = Wait
        L10_3 = 0
        L9_3(L10_3)
      end
      L9_3 = Wait
      L10_3 = 25
      L9_3(L10_3)
      L9_3 = SetEntityHeading
      L10_3 = testPedEnemy
      L11_3 = GetEntityHeading
      L12_3 = L3_3
      L11_3 = L11_3(L12_3)
      L11_3 = L11_3 - 180.0
      L9_3(L10_3, L11_3)
    else
      L1_3 = Wait
      L2_3 = 25
      L1_3(L2_3)
      L1_3 = GetEntityCoords
      L2_3 = A1_2
      L1_3 = L1_3(L2_3)
      L2_3 = GetEntityForwardVector
      L3_3 = A1_2
      L2_3 = L2_3(L3_3)
      L3_3 = table
      L3_3 = L3_3.unpack
      L4_3 = L2_3 * 0.9
      L4_3 = L1_3 + L4_3
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      L6_3 = SetEntityCoords
      L7_3 = L0_3
      L8_3 = vector3
      L9_3 = L3_3
      L10_3 = L4_3
      L11_3 = L5_3 - 1
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L8_3(L9_3, L10_3, L11_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      L6_3 = A1_2
      testPedEnemy = L6_3
      L6_3 = Wait
      L7_3 = 25
      L6_3(L7_3)
      L6_3 = SetEntityHeading
      L7_3 = L0_3
      L8_3 = GetEntityHeading
      L9_3 = A1_2
      L8_3 = L8_3(L9_3)
      L8_3 = L8_3 - 180.0
      L6_3(L7_3, L8_3)
    end
    L1_3 = ClearPedTasks
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = ClearPedTasks
    L2_3 = testPedEnemy
    L1_3(L2_3)
    L1_3 = FreezeEntityPosition
    L2_3 = L0_3
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = FreezeEntityPosition
    L2_3 = testPedEnemy
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = Wait
    L2_3 = 25
    L1_3(L2_3)
    L1_3 = SetEntityNoCollisionEntity
    L2_3 = L0_3
    L3_3 = testPedEnemy
    L4_3 = false
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = Wait
    L2_3 = 0
    L1_3(L2_3)
    L1_3 = A0_2
    L2_3 = LoadAnim
    L3_3 = FinisherList
    L3_3 = L3_3[L1_3]
    L3_3 = L3_3.a
    L2_3(L3_3)
    L2_3 = TaskPlayAnim
    L3_3 = testPedEnemy
    L4_3 = FinisherList
    L4_3 = L4_3[L1_3]
    L4_3 = L4_3.a
    L5_3 = FinisherList
    L5_3 = L5_3[L1_3]
    L5_3 = L5_3.b
    L6_3 = 2.0
    L7_3 = 2.0
    L8_3 = -1
    L9_3 = 2
    L10_3 = 2
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L2_3 = TaskPlayAnim
    L3_3 = L0_3
    L4_3 = FinisherList
    L4_3 = L4_3[L1_3]
    L4_3 = L4_3.a
    L5_3 = FinisherList
    L5_3 = L5_3[L1_3]
    L5_3 = L5_3.c
    L6_3 = 2.0
    L7_3 = 2.0
    L8_3 = -1
    L9_3 = 2
    L10_3 = 2
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L2_3 = Wait
    L3_3 = 25
    L2_3(L3_3)
    L2_3 = splatterSound
    L2_3()
    L2_3 = true
    while L2_3 do
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
      L3_3 = SetEntityNoCollisionEntity
      L4_3 = L0_3
      L5_3 = testPedEnemy
      L6_3 = false
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = GetEntityAnimCurrentTime
      L4_3 = testPedEnemy
      L5_3 = FinisherList
      L5_3 = L5_3[L1_3]
      L5_3 = L5_3.a
      L6_3 = FinisherList
      L6_3 = L6_3[L1_3]
      L6_3 = L6_3.b
      L3_3 = L3_3(L4_3, L5_3, L6_3)
      L4_3 = inWindow
      L5_3 = L3_3
      L6_3 = FinisherList
      L6_3 = L6_3[L1_3]
      L6_3 = L6_3.astopat
      L7_3 = 0.01
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      if L4_3 then
        L4_3 = FinisherList
        L4_3 = L4_3[L1_3]
        L4_3 = L4_3.va
        if not L4_3 then
          L4_3 = FinisherList
          L4_3 = L4_3[L1_3]
          L4_3.va = true
          L4_3 = ClearPedTasks
          L5_3 = testPedEnemy
          L4_3(L5_3)
        end
      end
      L4_3 = GetEntityAnimCurrentTime
      L5_3 = L0_3
      L6_3 = FinisherList
      L6_3 = L6_3[L1_3]
      L6_3 = L6_3.a
      L7_3 = FinisherList
      L7_3 = L7_3[L1_3]
      L7_3 = L7_3.c
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L5_3 = inWindow
      L6_3 = L4_3
      L7_3 = FinisherList
      L7_3 = L7_3[L1_3]
      L7_3 = L7_3.bstopat
      L8_3 = 0.01
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      if L5_3 then
        L5_3 = FinisherList
        L5_3 = L5_3[L1_3]
        L5_3 = L5_3.vb
        if not L5_3 then
          L5_3 = FinisherList
          L5_3 = L5_3[L1_3]
          L5_3.vb = true
          L5_3 = SetPedToRagdoll
          L6_3 = L0_3
          L7_3 = 1000
          L8_3 = 1000
          L9_3 = 0
          L10_3 = 0
          L11_3 = 0
          L12_3 = 0
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          L5_3 = ApplyDamageToPedLegacy
          L6_3 = L0_3
          L7_3 = 5
          L5_3(L6_3, L7_3)
          L5_3 = FinisherList
          L5_3 = L5_3[L1_3]
          L5_3 = L5_3.ff
          L5_3()
        end
      end
      L5_3 = FinisherList
      L5_3 = L5_3[L1_3]
      L5_3 = L5_3.va
      if L5_3 then
        L5_3 = FinisherList
        L5_3 = L5_3[L1_3]
        L5_3 = L5_3.vb
        if L5_3 then
          L2_3 = false
        end
      end
      L5_3 = IsEntityPlayingAnim
      L6_3 = L0_3
      L7_3 = FinisherList
      L7_3 = L7_3[L1_3]
      L7_3 = L7_3.a
      L8_3 = FinisherList
      L8_3 = L8_3[L1_3]
      L8_3 = L8_3.c
      L9_3 = 3
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      if L5_3 then
        L5_3 = IsEntityPlayingAnim
        L6_3 = testPedEnemy
        L7_3 = FinisherList
        L7_3 = L7_3[L1_3]
        L7_3 = L7_3.a
        L8_3 = FinisherList
        L8_3 = L8_3[L1_3]
        L8_3 = L8_3.b
        L9_3 = 3
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
        if L5_3 then
          goto lbl_304
        end
      end
      L2_3 = false
      ::lbl_304::
    end
    L3_3 = FinisherList
    L3_3 = L3_3[L1_3]
    L3_3.va = false
    L3_3 = FinisherList
    L3_3 = L3_3[L1_3]
    L3_3.vb = false
    L3_3 = SetEntityNoCollisionEntity
    L4_3 = L0_3
    L5_3 = testPedEnemy
    L6_3 = true
    L3_3(L4_3, L5_3, L6_3)
    inFinisher = false
    L3_3 = IdleStrafe
    L3_3()
  end
  L2_2(L3_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "SilPedFunc"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetBlockingOfNonTemporaryEvents
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = DisablePedPainAudio
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = StopPedSpeaking
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetPedMute
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetAmbientVoiceName
  L2_2 = A0_2
  L3_2 = "MUTE"
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanPlayAmbientAnims
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanPlayAmbientBaseAnims
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedIsDrunk
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "ResetBowVars"
function L24_1()
  local L0_2, L1_2
  potenzaAvanti = true
  arrowForce = 0.0
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "GetBonePosSafe"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if nil ~= A1_2 then
    L2_2 = GetPedBoneCoords
    L3_2 = A0_2
    L4_2 = 57005
    L5_2 = A1_2[1]
    L6_2 = A1_2[2]
    L7_2 = A1_2[3]
    return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = GetPedBoneCoords
    L3_2 = A0_2
    L4_2 = 57005
    L5_2 = 0.0
    L6_2 = 0.0
    L7_2 = 0.0
    return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "ServerIdFromPed"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = IsPedAPlayer
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_13::
  L1_2 = NetworkGetPlayerIndexFromPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 or -1 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = GetPlayerServerId
  L3_2 = L1_2
  return L2_2(L3_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "GetPlayerHP_Client"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = nil
  L2_2 = nil
  do return L1_2, L2_2 end
  ::lbl_10::
  L1_2 = IsPedAPlayer
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = Entity
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.state
    if L1_2 then
      L2_2 = type
      L3_2 = L1_2.vhp
      L2_2 = L2_2(L3_2)
      if "number" == L2_2 then
        L2_2 = type
        L3_2 = L1_2.vhp_max
        L2_2 = L2_2(L3_2)
        if "number" == L2_2 then
          L2_2 = L1_2.vhp
          L3_2 = L1_2.vhp_max
          return L2_2, L3_2
        end
      end
    end
  end
  L1_2 = GetEntityHealth
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityMaxHealth
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = L1_2 - 100
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 1
  L6_2 = L2_2 - 100
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "InEnemyList"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = MioNemico
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesEntityExist
    L8_2 = L6_2.p
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L6_2.p
      if L7_2 == A0_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "SlideForward"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = FloodSlide
  if not L0_2 then
    FloodSlide = true
    L0_2 = "missheistfbi3b_ig6_v2"
    L1_2 = "rubble_slide_gunman"
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1
    L4_2 = 2
    L2_2 = L2_2(L3_2, L4_2)
    if 1 == L2_2 then
      L0_2 = "melee@ghost@fixed5@dead_as_disco@standard_anims"
      L1_2 = "gt_fixed5_dad_atk_dodge_fwd_charlie_clip"
    end
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = IsPedOnFoot
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = IsPedRagdoll
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = LoadAnim
        L5_2 = L0_2
        L4_2(L5_2)
        L4_2 = ClearPedSecondaryTask
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = SyncRotAndPos
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = TaskPlayAnim
        L5_2 = L3_2
        L6_2 = L0_2
        L7_2 = L1_2
        L8_2 = 3.0
        L9_2 = 3.0
        L10_2 = -1
        L11_2 = 1
        L12_2 = 0
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L4_2 = pushForward
        L5_2 = L3_2
        L6_2 = 1.5
        L4_2(L5_2, L6_2)
        L4_2 = CreateThread
        function L5_2()
          local L0_3, L1_3, L2_3, L3_3
          while true do
            L0_3 = FloodSlide
            if not L0_3 then
              break
            end
            L0_3 = Wait
            L1_3 = 0
            L0_3(L1_3)
            L0_3 = SetEntityHeading
            L1_3 = L3_2
            L2_3 = GetGameplayCamRot
            L3_3 = 0
            L2_3 = L2_3(L3_3)
            L2_3 = L2_3.z
            L0_3(L1_3, L2_3)
          end
        end
        L4_2(L5_2)
        L4_2 = BigWeap
        L4_2 = L4_2()
        if not L4_2 then
          L4_2 = Wait
          L5_2 = 350
          L4_2(L5_2)
        else
          L4_2 = Wait
          L5_2 = 150
          L4_2(L5_2)
        end
        L4_2 = TaskPlayAnim
        L5_2 = L3_2
        L6_2 = L0_2
        L7_2 = "exit"
        L8_2 = 3.0
        L9_2 = 1.0
        L10_2 = -1
        L11_2 = 1
        L12_2 = 0
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L4_2 = ClearPedSecondaryTask
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = Wait
        L5_2 = 500
        L4_2(L5_2)
        L4_2 = FiatoneCapriola
        L5_2 = fiatoneDash
        L6_2 = exports
        L6_2 = L6_2.striano_combat
        L7_2 = L6_2
        L6_2 = L6_2.GetStaminaDrainMultiplier
        L6_2 = L6_2(L7_2)
        L5_2 = L5_2 * L6_2
        L4_2 = L4_2 - L5_2
        FiatoneCapriola = L4_2
        FloodSlide = false
        HoRollato = false
        L4_2 = IdleAnimFunc
        L4_2()
      end
    end
  end
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "inSpellAnim"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = Spell_List
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = Spell_List
    L5_2 = L5_2[L4_2]
    L6_2 = IsEntityPlayingAnim
    L7_2 = A0_2
    L8_2 = L5_2.a
    L9_2 = L5_2.b
    L10_2 = 3
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "PlayerVicinoPed"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Giocatori
  L1_2 = L1_2()
  L2_2 = -1
  L3_2 = -1
  L4_2 = GetEntityCoords
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = #L1_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = GetPlayerPed
    L10_2 = L1_2[L8_2]
    L9_2 = L9_2(L10_2)
    if L9_2 ~= A0_2 then
      L10_2 = GetEntityCoords
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = L10_2 - L4_2
      L11_2 = #L11_2
      if -1 == L2_2 or L2_2 > L11_2 then
        L3_2 = L1_2[L8_2]
        L2_2 = L11_2
      end
    end
  end
  L5_2 = L3_2
  L6_2 = L2_2
  return L5_2, L6_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "FightAttribute"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetBlockingOfNonTemporaryEvents
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanRagdollFromPlayerImpact
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedFleeAttributes
  L2_2 = A0_2
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetPedCanRagdoll
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = TrainingPed
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "getPedHeadCoords"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetWorldPositionOfEntityBone
  L2_2 = A0_2
  L3_2 = GetPedBoneIndex
  L4_2 = A0_2
  L5_2 = 31086
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L1_2 == L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = vector3
    L4_2 = 0
    L5_2 = 0
    L6_2 = 0.9
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L2_2 + L3_2
    if L2_2 then
      goto lbl_34
      L1_2 = L2_2 or L1_2
    end
  end
  L2_2 = vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0.3
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L1_2 + L2_2
  ::lbl_34::
  L2_2 = GetFrameTime
  L2_2 = L2_2()
  L3_2 = GetEntityVelocity
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = L1_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * L2_2
  L5_2 = L5_2 + L6_2
  L6_2 = L1_2.y
  L7_2 = L3_2.y
  L7_2 = L7_2 * L2_2
  L6_2 = L6_2 + L7_2
  L7_2 = L1_2.z
  L8_2 = L3_2.z
  L8_2 = L8_2 * L2_2
  L7_2 = L7_2 + L8_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L1_2 = L4_2
  return L1_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "lastClipStrafe"
L24_1 = ""
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "BigWeap"
function L24_1()
  local L0_2, L1_2
  L0_2 = mySword
  if 0 ~= L0_2 then
    L0_2 = mySword
    if nil ~= L0_2 then
      goto lbl_9
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_9::
  L0_2 = SwordList
  L1_2 = mySword
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.big
  if nil == L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "ApplicaSangueDaiColpi"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 > 0 then
    L2_2 = A1_2
    if nil == A0_2 then
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      A0_2 = L3_2
    end
    L3_2 = ApplyBlood
    L4_2 = A0_2
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 21
    L8_2 = 28
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    if L2_2 >= 1 and L2_2 < 2 then
      L3_2 = ApplyBlood
      L4_2 = A0_2
      L5_2 = math
      L5_2 = L5_2.floor
      L6_2 = math
      L6_2 = L6_2.random
      L7_2 = 1
      L8_2 = 6
      L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
    if 2 == L2_2 then
      L3_2 = ApplyBlood
      L4_2 = A0_2
      L5_2 = 10
      L3_2(L4_2, L5_2)
    elseif L2_2 > 2 and L2_2 < 3 then
      L3_2 = math
      L3_2 = L3_2.random
      L4_2 = 1
      L5_2 = 2
      L3_2 = L3_2(L4_2, L5_2)
      if 1 == L3_2 then
        L4_2 = ApplyBlood
        L5_2 = A0_2
        L6_2 = 12
        L4_2(L5_2, L6_2)
      else
        L4_2 = ApplyBlood
        L5_2 = A0_2
        L6_2 = 18
        L4_2(L5_2, L6_2)
      end
    elseif 3 == L2_2 then
      L3_2 = ApplyBlood
      L4_2 = A0_2
      L5_2 = 13
      L3_2(L4_2, L5_2)
    elseif L2_2 > 3 and L2_2 < 4 then
      L3_2 = math
      L3_2 = L3_2.random
      L4_2 = 1
      L5_2 = 2
      L3_2 = L3_2(L4_2, L5_2)
      if 1 == L3_2 then
        L4_2 = ApplyBlood
        L5_2 = A0_2
        L6_2 = 16
        L4_2(L5_2, L6_2)
      else
        L4_2 = ApplyBlood
        L5_2 = A0_2
        L6_2 = 17
        L4_2(L5_2, L6_2)
      end
    elseif 4 == L2_2 then
      L3_2 = ApplyBlood
      L4_2 = A0_2
      L5_2 = 11
      L3_2(L4_2, L5_2)
    end
  end
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "inMovement"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = AnimFightList
  L2_2 = indexCombat
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = IsEntityAttached
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = indexCombat
      if L1_2 > 0 then
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
          goto lbl_87
        end
      end
      L1_2 = PossoCapriola
      if L1_2 then
        L1_2 = IsDisabledControlPressed
        L2_2 = 0
        L3_2 = tastoDifesa
        L1_2 = L1_2(L2_2, L3_2)
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
                if not L1_2 then
                  L1_2 = IsDisabledControlPressed
                  L2_2 = 0
                  L3_2 = 32
                  L1_2 = L1_2(L2_2, L3_2)
                  if not L1_2 then
                    L1_2 = IsDisabledControlPressed
                    L2_2 = 0
                    L3_2 = 33
                    L1_2 = L1_2(L2_2, L3_2)
                    if not L1_2 then
                      L1_2 = IsDisabledControlPressed
                      L2_2 = 0
                      L3_2 = 34
                      L1_2 = L1_2(L2_2, L3_2)
                      if not L1_2 then
                        L1_2 = IsDisabledControlPressed
                        L2_2 = 0
                        L3_2 = 35
                        L1_2 = L1_2(L2_2, L3_2)
                        if not L1_2 then
                          goto lbl_90
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
    ::lbl_87::
    L1_2 = true
    do return L1_2 end
    goto lbl_95
    ::lbl_90::
    L1_2 = false
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
  ::lbl_95::
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "mysplit"
function L24_1(A0_2, A1_2)
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
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "Giocatori"
function L24_1()
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
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "PlayerVicino"
function L24_1(A0_2)
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
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "PlayerVicinoPos"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = Giocatori
  L1_2 = L1_2()
  L2_2 = -1
  L3_2 = -1
  L4_2 = nil
  L5_2 = false
  L6_2 = PlayerId
  L6_2 = L6_2()
  if nil == L4_2 then
    L5_2 = true
    L4_2 = A0_2
  end
  L7_2 = 1
  L8_2 = #L1_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = GetPlayerPed
    L12_2 = L1_2[L10_2]
    L11_2 = L11_2(L12_2)
    if L5_2 then
      if not L5_2 then
        goto lbl_44
      end
      L12_2 = L1_2[L10_2]
      if L12_2 == L6_2 then
        goto lbl_44
      end
    end
    L12_2 = GetEntityCoords
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L13_2 = vector3
    L14_2 = L4_2.x
    L15_2 = L4_2.y
    L16_2 = L4_2.z
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L13_2 = L12_2 - L13_2
    L13_2 = #L13_2
    if -1 == L2_2 or L2_2 > L13_2 then
      L3_2 = L1_2[L10_2]
      L2_2 = L13_2
    end
    ::lbl_44::
  end
  L7_2 = L3_2
  L8_2 = L2_2
  return L7_2, L8_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "RotationToDirection"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "RayCastGamePlayCamera"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetGameplayCamRot
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = RotationToDirection
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L6_2 = L3_2.y
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L6_2 = L3_2.z
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.z = L5_2
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = -1
  L14_2 = -1
  L15_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "RayCastGamePlayCamera2"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetGameplayCamRot
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = RotationToDirection
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L6_2 = L3_2.y
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L6_2 = L3_2.z
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.z = L5_2
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = -1
  L14_2 = PlayerPedId
  L14_2 = L14_2()
  L15_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "timerShaker"
L24_1 = 225
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "setSkinStriano"
function L24_1(A0_2, A1_2)
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
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "GetHeadBlendData"
function L24_1(A0_2)
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
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "GetMySkin"
function L24_1()
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
L22_1[L23_1] = L24_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 1000
  end
  L2_2 = L2_2 + L3_2
  while true do
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if not (L2_2 > L3_2) then
      break
    end
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
  end
  L3_2 = nil
  return L3_2
end
L23_1 = RegisterNetEvent
L24_1 = "striano:ChangerUpdate"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "striano:ChangerUpdate"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = IsInPowerSavingMode
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = IsPauseMenuActive
    L4_2 = L4_2()
    if not L4_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L4_2 = NetworkIsSessionStarted
  L4_2 = L4_2()
  if not L4_2 then
    return
  end
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = tonumber
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if L4_2 == L5_2 then
    return
  end
  L4_2 = tonumber
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  if not A0_2 or A0_2 <= 0 then
    L4_2 = print
    L5_2 = "[ChangerUpdate] NPCNet NIL/0"
    L4_2(L5_2)
    return
  end
  L4_2 = L22_1
  L5_2 = A0_2
  L6_2 = 1000
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = print
    L6_2 = "[ChangerUpdate] entity NetID %s non disponibile su questo client"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = A0_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = IsEntityAPed
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = print
    L6_2 = "[ChangerUpdate] entity NetID %s non \195\168 un ped"
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = A0_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = NetworkHasControlOfEntity
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L5_2 = L5_2 + 500
    while true do
      L6_2 = NetworkHasControlOfEntity
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = GetGameTimer
      L6_2 = L6_2()
      if not (L5_2 > L6_2) then
        break
      end
      L6_2 = NetworkRequestControlOfEntity
      L7_2 = L4_2
      L6_2(L7_2)
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
    end
  end
  L5_2 = updateChangerMod
  L6_2 = L4_2
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  if nil ~= A3_2 then
    L5_2 = ApplyTattoo
    L6_2 = L4_2
    L7_2 = A3_2
    L5_2(L6_2, L7_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = _ENV
L24_1 = "updateChangerMod"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DoesEntityExist
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2, L4_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = GetEntityCoords
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 - L3_2
    L2_2 = #L2_2
    L3_2 = 300
    if L2_2 < L3_2 then
      L2_2 = setSkinStriano
      L3_2 = A1_2
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end
L23_1[L24_1] = L25_1
L23_1 = _ENV
L24_1 = "FadeOutPlayer"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 25
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A0_2 / L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = 0
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = L7_2 / L3_2
    L9_2 = L9_2 * 255
    L8_2 = L8_2(L9_2)
    L9_2 = 255
    L8_2 = L9_2 - L8_2
    L9_2 = SetEntityAlpha
    L10_2 = L1_2
    L11_2 = L8_2
    L12_2 = false
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = Wait
    L10_2 = L2_2
    L9_2(L10_2)
  end
  L4_2 = SetEntityVisible
  L5_2 = L1_2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityAlpha
  L5_2 = L1_2
  L6_2 = 0
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
end
L23_1[L24_1] = L25_1
L23_1 = _ENV
L24_1 = "FadeInPlayer"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = SetEntityVisible
  L3_2 = L1_2
  L4_2 = true
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = 25
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A0_2 / L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = 0
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = L7_2 / L3_2
    L9_2 = L9_2 * 255
    L8_2 = L8_2(L9_2)
    L9_2 = SetEntityAlpha
    L10_2 = L1_2
    L11_2 = L8_2
    L12_2 = false
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = Wait
    L10_2 = L2_2
    L9_2(L10_2)
  end
  L4_2 = ResetEntityAlpha
  L5_2 = L1_2
  L4_2(L5_2)
  L4_2 = SetEntityAlpha
  L5_2 = L1_2
  L6_2 = 255
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
end
L23_1[L24_1] = L25_1
L23_1 = _ENV
L24_1 = "ShowZoneName"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "showZoneName"
  L3_2.label = A0_2
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = ""
  end
  L3_2.subtitle = L4_2
  L2_2(L3_2)
  L2_2 = soundZone
  L2_2()
end
L23_1[L24_1] = L25_1
L23_1 = _ENV
L24_1 = "exports"
L23_1 = L23_1[L24_1]
L24_1 = "showZone"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ShowZoneName
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = _ENV
L24_1 = "exports"
L23_1 = L23_1[L24_1]
L24_1 = "hideZone"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "hideZoneName"
  L2_2(L3_2)
end
L23_1(L24_1, L25_1)
L23_1 = _ENV
L24_1 = "DestroyObjectNearCoords"
function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A2_2 then
    A2_2 = 2.0
  end
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if "string" == L4_2 then
    L4_2 = GetHashKey
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    A1_2 = L4_2 or A1_2
    if not L4_2 then
    end
  end
  L4_2 = GetClosestObjectOfType
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A2_2
  L9_2 = A1_2
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_33
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_33::
  L5_2 = testo3d2
  L6_2 = "~h~~g~+1"
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityAsMissionEntity
  L6_2 = L4_2
  L7_2 = true
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityAlpha
  L6_2 = L4_2
  L7_2 = 0
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityVisible
  L6_2 = L4_2
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = DoesEntityExist
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = SetEntityAsMissionEntity
    L6_2 = A3_2
    L5_2(L6_2)
    L5_2 = DeleteEntity
    L6_2 = A3_2
    L5_2(L6_2)
  end
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = PlaySoundFrontend
    L1_3 = -1
    L2_3 = "Hack_Success"
    L3_3 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    L4_3 = 1
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = Wait
    L1_3 = 5000
    L0_3(L1_3)
    L0_3 = DeleteObject
    L1_3 = L4_2
    L0_3(L1_3)
    L0_3 = DoesEntityExist
    L1_3 = L4_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = DeleteEntity
      L1_3 = L4_2
      L0_3(L1_3)
    end
  end
  L5_2(L6_2)
  L5_2 = true
  return L5_2
end
L23_1[L24_1] = L25_1
L23_1 = _ENV
L24_1 = "hitTargetCustom"
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L4_2 = DestroyObjectNearCoords
  L5_2 = L3_2
  L6_2 = A1_2
  L7_2 = 0.75
  L8_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
  end
end
L23_1[L24_1] = L25_1
L23_1 = {}
L24_1 = -295816636
L25_1 = {}
L26_1 = _ENV
L27_1 = "vector3"
L26_1 = L26_1[L27_1]
L27_1 = 2341.131
L28_1 = 7847.004
L29_1 = 6.821
L26_1 = L26_1(L27_1, L28_1, L29_1)
L27_1 = _ENV
L28_1 = "vector3"
L27_1 = L27_1[L28_1]
L28_1 = 2364.39
L29_1 = 7841.878
L30_1 = 10.264
L27_1 = L27_1(L28_1, L29_1, L30_1)
L28_1 = _ENV
L29_1 = "vector3"
L28_1 = L28_1[L29_1]
L29_1 = 2365.81
L30_1 = 7862.861
L31_1 = 26.214
L28_1 = L28_1(L29_1, L30_1, L31_1)
L29_1 = _ENV
L30_1 = "vector3"
L29_1 = L29_1[L30_1]
L30_1 = 2400.032
L31_1 = 7845.003
L32_1 = 31.494
L29_1 = L29_1(L30_1, L31_1, L32_1)
L30_1 = _ENV
L31_1 = "vector3"
L30_1 = L30_1[L31_1]
L31_1 = 2330.093
L32_1 = 7841.831
L33_1 = 7.404
L30_1 = L30_1(L31_1, L32_1, L33_1)
L31_1 = _ENV
L32_1 = "vector3"
L31_1 = L31_1[L32_1]
L32_1 = 2329.292
L33_1 = 7798.11
L34_1 = 23.024
L31_1, L32_1, L33_1, L34_1 = L31_1(L32_1, L33_1, L34_1)
L25_1[1] = L26_1
L25_1[2] = L27_1
L25_1[3] = L28_1
L25_1[4] = L29_1
L25_1[5] = L30_1
L25_1[6] = L31_1
L25_1[7] = L32_1
L25_1[8] = L33_1
L25_1[9] = L34_1
L26_1 = false
L27_1 = _ENV
L28_1 = "DeleteAllTargets"
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 1
  L1_2 = L23_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L23_1
    L4_2 = L4_2[L3_2]
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = SetEntityAsMissionEntity
      L6_2 = L4_2
      L7_2 = true
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = DeleteObject
      L6_2 = L4_2
      L5_2(L6_2)
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = DeleteEntity
        L6_2 = L4_2
        L5_2(L6_2)
      end
    end
  end
  L0_2 = {}
  L23_1 = L0_2
end
L27_1[L28_1] = L29_1
function L27_1()
  local L0_2, L1_2
  L0_2 = L26_1
  if L0_2 then
    return
  end
  L0_2 = true
  L26_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = L23_1
      L0_3 = #L0_3
      if not (L0_3 > 0) then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      L1_3 = L23_1
      L1_3 = #L1_3
      L2_3 = 1
      L3_3 = -1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L23_1
        L5_3 = L5_3[L4_3]
        L6_3 = DoesEntityExist
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = GetEntityCoords
          L7_3 = L5_3
          L6_3 = L6_3(L7_3)
          L7_3 = GetHeadingFromVector_2d
          L8_3 = L0_3.x
          L9_3 = L6_3.x
          L8_3 = L8_3 - L9_3
          L9_3 = L0_3.y
          L10_3 = L6_3.y
          L9_3 = L9_3 - L10_3
          L7_3 = L7_3(L8_3, L9_3)
          L8_3 = SetEntityHeading
          L9_3 = L5_3
          L10_3 = L7_3 + 180.0
          L10_3 = L10_3 % 360.0
          L8_3(L9_3, L10_3)
        else
          L6_3 = table
          L6_3 = L6_3.remove
          L7_3 = L23_1
          L8_3 = L4_3
          L6_3(L7_3, L8_3)
        end
      end
    end
    L0_3 = false
    L26_1 = L0_3
  end
  L0_2(L1_2)
end
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = DeleteAllTargets
  L0_2()
  L0_2 = RequestModel
  L1_2 = L24_1
  L0_2(L1_2)
  while true do
    L0_2 = HasModelLoaded
    L1_2 = L24_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = 1
  L1_2 = L25_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L25_1
    L4_2 = L4_2[L3_2]
    L5_2 = CreateObject
    L6_2 = L24_1
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = L4_2.z
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
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
      L6_2 = FreezeEntityPosition
      L7_2 = L5_2
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = L23_1
      L6_2 = #L6_2
      L7_2 = L6_2 + 1
      L6_2 = L23_1
      L6_2[L7_2] = L5_2
    end
  end
  L0_2 = SetModelAsNoLongerNeeded
  L1_2 = L24_1
  L0_2(L1_2)
  L0_2 = L27_1
  L0_2()
end
L29_1 = RegisterCommand
L30_1 = "targets"
function L31_1()
  local L0_2, L1_2
  L0_2 = L28_1
  L0_2()
end
L32_1 = false
L29_1(L30_1, L31_1, L32_1)
