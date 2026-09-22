local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = print
  L1_2 = "^7[^2STRIANO MOUNT ^3begin of v3^7] "
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = " ^2v"
  L4_2 = GetResourceMetadata
  L5_2 = GetCurrentResourceName
  L5_2 = L5_2()
  L6_2 = "version"
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = "unknown"
  end
  L5_2 = " ^3HAVE FUN!^7"
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
  L0_2(L1_2)
end
L0_1(L1_1)
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.destructor
  if L1_2 then
    L1_2 = A0_2.handle
    if L1_2 then
      L1_2 = A0_2.destructor
      L2_2 = A0_2.handle
      L1_2(L2_2)
    end
  end
  A0_2.destructor = nil
  A0_2.handle = nil
end
L0_1.__gc = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = coroutine
  L3_2 = L3_2.wrap
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L0_3, L1_3 = L0_3()
    if not L0_3 or 0 == L0_3 then
      return
    end
    if not L1_3 or 0 == L1_3 then
      L2_3 = A2_2
      L3_3 = L0_3
      L2_3(L3_3)
      return
    end
    L2_3 = {}
    L2_3.handle = L0_3
    L3_3 = A2_2
    L2_3.destructor = L3_3
    L3_3 = setmetatable
    L4_3 = L2_3
    L5_3 = L0_1
    L3_3(L4_3, L5_3)
    L3_3 = true
    repeat
      L4_3 = coroutine
      L4_3 = L4_3.yield
      L5_3 = L1_3
      L4_3(L5_3)
      L4_3 = A1_2
      L5_3 = L0_3
      L4_3, L5_3 = L4_3(L5_3)
      L1_3 = L5_3
      L3_3 = L4_3
    until not L3_3
    L2_3.destructor = nil
    L2_3.handle = nil
    L4_3 = A2_2
    L5_3 = L0_3
    L4_3(L5_3)
  end
  return L3_2(L4_2)
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L1_2 = FindFirstPed
  L2_2 = FindNextPed
  L3_2 = EndFindPed
  return L0_2(L1_2, L2_2, L3_2)
end
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  L5_2 = vector3
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = L2_1
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  for L11_2 in L7_2, L8_2, L9_2, L10_2 do
    if 0 ~= L11_2 and L11_2 ~= L6_2 then
      L12_2 = DoesEntityExist
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = IsPedAPlayer
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if not L12_2 then
          L12_2 = GetEntityCoords
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L13_2 = L5_2 - L12_2
          L13_2 = #L13_2
          if A3_2 >= L13_2 then
            L13_2 = #L4_2
            L13_2 = L13_2 + 1
            L4_2[L13_2] = L11_2
          end
        end
      end
    end
  end
  return L4_2
end
animBsA = "mp_character_creation@lineup@female_b"
animBsB = "loop"
L4_1 = {}
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = AttachedEntity
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = AttachedEntity
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L0_2
      L0_3 = L0_3 - L1_3
      L1_3 = 500
      if not (L0_3 < L1_3) then
        break
      end
      L0_3 = AttachedEntity
      if L0_3 then
        L0_3 = DoesEntityExist
        L1_3 = AttachedEntity
        L0_3 = L0_3(L1_3)
        if L0_3 then
          goto lbl_18
        end
      end
      do return end
      ::lbl_18::
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = Wait
      L2_3 = 9
      L1_3(L2_3)
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 - L0_3
      L1_3 = L1_3 / 1000
      L2_3 = GetEntityRotation
      L3_3 = AttachedEntity
      L2_3 = L2_3(L3_3)
      L3_3 = L2_3.x
      if L3_3 >= 20.0 then
        break
      end
      L3_3 = SetEntityRotation
      L4_3 = AttachedEntity
      L5_3 = math
      L5_3 = L5_3.min
      L6_3 = L2_3.x
      L7_3 = 1.0 * L1_3
      L6_3 = L6_3 + L7_3
      L7_3 = 20.0
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = L2_3.y
      L7_3 = L2_3.z
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
    end
  end
  L1_2(L2_2)
end
RotateAttachedEntityGradually = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = animBsA
  L4_2 = animBsB
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = IsEntityAttached
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = ClearPedSecondaryTask
      L2_2 = L0_2
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 75
      L1_2(L2_2)
      L1_2 = faiAnim
      L2_2 = "timetable@jimmy@mics3_ig_15@"
      L3_2 = "mics3_15_base_tracy"
      L4_2 = 450
      L5_2 = 49
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = RotateAttachedEntityGradually
      L1_2()
      L1_2 = Wait
      L2_2 = 250
      L1_2(L2_2)
    end
  end
end
L6_1 = {}
KeyFlood = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = KeyFlood
  L1_2 = L1_2[A0_2]
  L1_2 = not L1_2
  return L1_2
end
CanPress = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = KeyFlood
  L2_2[A0_2] = true
  L2_2 = SetTimeout
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 750
  end
  function L4_2()
    local L0_3, L1_3
    L0_3 = KeyFlood
    L1_3 = A0_2
    L0_3[L1_3] = nil
  end
  L2_2(L3_2, L4_2)
end
StartKeyFlood = L6_1
function L6_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
clamp = L6_1
L6_1 = {}
L6_1.a = "move_m@injured"
L6_1.b = "idle_turn_l_-90"
turnAnim_L = L6_1
L6_1 = {}
L6_1.a = "move_m@injured"
L6_1.b = "idle_turn_r_90"
turnAnim_R = L6_1
L6_1 = {}
L6_1.a = "move_m@injured"
L6_1.b = "sprint"
runAnim = L6_1
L6_1 = {}
L6_1.a = "move_m@injured"
L6_1.b = "run"
animBaseAnimale = L6_1
L6_1 = {}
L6_1.a = "move_strafe@first_person@generic"
L6_1.b = "run_bwd_180_loop"
backwardAnim = L6_1
dicBase = "bzzz@horse@stand"
animBase = "bz_horse_stand"
customFlag = nil
dicFast = "timetable@ron@ig_3_couch"
animFast = "base"
fishSpeed = nil
MyModelSpeedVar = 0
ogniPoco = 0
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = HorseExist
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = "rick3d@horsepassage"
    L2_2 = "horsepassage"
    L3_2 = IsEntityPlayingAnim
    L4_2 = A0_2
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = IsEntityPlayingAnim
      L4_2 = A0_2
      L5_2 = myRunStyle
      L6_2 = "gallop"
      L7_2 = 3
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      if not L3_2 then
        L3_2 = HasAnimDictLoaded
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = RequestAnimDict
          L4_2 = L1_2
          L3_2(L4_2)
          while true do
            L3_2 = HasAnimDictLoaded
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            if L3_2 then
              break
            end
            L3_2 = Wait
            L4_2 = 10
            L3_2(L4_2)
          end
        end
        L3_2 = TaskPlayAnim
        L4_2 = A0_2
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = 8.0
        L8_2 = 8.0
        L9_2 = -1
        L10_2 = 1
        L11_2 = 0
        L12_2 = false
        L13_2 = false
        L14_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L3_2 = SetEntityAnimSpeed
        L4_2 = A0_2
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = 1.5
        L3_2(L4_2, L5_2, L6_2, L7_2)
        L3_2 = CreateThread
        function L4_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
          while true do
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 210
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              break
            end
            L0_3 = Wait
            L1_3 = 0
            L0_3(L1_3)
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 45
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsControlPressed
              L1_3 = 0
              L2_3 = SprintHorseKey
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                L0_3 = IsDisabledControlPressed
                L1_3 = 0
                L2_3 = 21
                L0_3 = L0_3(L1_3, L2_3)
                if not L0_3 then
                  goto lbl_131
                end
              end
            end
            L0_3 = SetEntityAnimSpeed
            L1_3 = A0_2
            L2_3 = L1_2
            L3_3 = L2_2
            L4_3 = 2.5
            L0_3(L1_3, L2_3, L3_3, L4_3)
            L0_3 = GetEntityCoords
            L1_3 = Animal
            L1_3 = L1_3.Handle
            L0_3 = L0_3(L1_3)
            L1_3 = GetEntityForwardVector
            L2_3 = Animal
            L2_3 = L2_3.Handle
            L1_3 = L1_3(L2_3)
            L2_3 = table
            L2_3 = L2_3.unpack
            L3_3 = L1_3 * 0.7
            L3_3 = L3_3 * -1
            L3_3 = L0_3 + L3_3
            L2_3, L3_3, L4_3 = L2_3(L3_3)
            L5_3 = GetEntityCoords
            L6_3 = Animal
            L6_3 = L6_3.Handle
            L5_3 = L5_3(L6_3)
            L6_3 = GetEntityForwardVector
            L7_3 = Animal
            L7_3 = L7_3.Handle
            L6_3 = L6_3(L7_3)
            L7_3 = table
            L7_3 = L7_3.unpack
            L8_3 = L6_3 * 0.5
            L8_3 = L5_3 + L8_3
            L7_3, L8_3, L9_3 = L7_3(L8_3)
            L10_3 = dustballa
            if nil == L10_3 then
              L10_3 = PlayEffect
              L11_3 = "core"
              L12_3 = "ent_anim_dusty_hands"
              L13_3 = vector3
              L14_3 = L2_3
              L15_3 = L3_3
              L16_3 = L4_3 - 1.1
              L13_3 = L13_3(L14_3, L15_3, L16_3)
              L14_3 = 2.5
              L15_3 = vector3
              L16_3 = 0.0
              L17_3 = 0.0
              L18_3 = 0.0
              L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3, L17_3, L18_3)
              L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
              dustballa = L10_3
              L10_3 = PlayEffect
              L11_3 = "core"
              L12_3 = "ent_anim_dusty_hands"
              L13_3 = vector3
              L14_3 = L7_3
              L15_3 = L8_3
              L16_3 = L9_3 - 1.1
              L13_3 = L13_3(L14_3, L15_3, L16_3)
              L14_3 = 2.5
              L15_3 = vector3
              L16_3 = 0.0
              L17_3 = 0.0
              L18_3 = 0.0
              L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3, L17_3, L18_3)
              L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
              dustballa2 = L10_3
              L10_3 = GetGameTimer
              L10_3 = L10_3()
              dusttimer = L10_3
            else
              L10_3 = GetGameTimer
              L10_3 = L10_3()
              L11_3 = dusttimer
              L10_3 = L10_3 - L11_3
              L11_3 = 255
              if L10_3 >= L11_3 then
                L10_3 = StopParticleFxLooped
                L11_3 = dustballa
                L12_3 = 0
                L10_3(L11_3, L12_3)
                L10_3 = StopParticleFxLooped
                L11_3 = dustballa2
                L12_3 = 0
                L10_3(L11_3, L12_3)
                L10_3 = RemoveParticleFx
                L11_3 = dustballa2
                L12_3 = true
                L10_3(L11_3, L12_3)
                dusttimer = 0
                dustballa = nil
                dustballa2 = nil
                goto lbl_237
                ::lbl_131::
                L0_3 = SetEntityAnimSpeed
                L1_3 = A0_2
                L2_3 = L1_2
                L3_3 = L2_2
                L4_3 = 1.5
                L0_3(L1_3, L2_3, L3_3, L4_3)
                L0_3 = GetEntityCoords
                L1_3 = Animal
                L1_3 = L1_3.Handle
                L0_3 = L0_3(L1_3)
                L1_3 = GetEntityForwardVector
                L2_3 = Animal
                L2_3 = L2_3.Handle
                L1_3 = L1_3(L2_3)
                L2_3 = table
                L2_3 = L2_3.unpack
                L3_3 = L1_3 * 0.7
                L3_3 = L3_3 * -1
                L3_3 = L0_3 + L3_3
                L2_3, L3_3, L4_3 = L2_3(L3_3)
                L5_3 = GetEntityCoords
                L6_3 = Animal
                L6_3 = L6_3.Handle
                L5_3 = L5_3(L6_3)
                L6_3 = GetEntityForwardVector
                L7_3 = Animal
                L7_3 = L7_3.Handle
                L6_3 = L6_3(L7_3)
                L7_3 = table
                L7_3 = L7_3.unpack
                L8_3 = L6_3 * 0.5
                L8_3 = L5_3 + L8_3
                L7_3, L8_3, L9_3 = L7_3(L8_3)
                L10_3 = dustballa
                if nil == L10_3 then
                  L10_3 = PlayEffect
                  L11_3 = "core"
                  L12_3 = "ent_anim_dusty_hands"
                  L13_3 = vector3
                  L14_3 = L2_3
                  L15_3 = L3_3
                  L16_3 = L4_3 - 1.1
                  L13_3 = L13_3(L14_3, L15_3, L16_3)
                  L14_3 = 2.5
                  L15_3 = vector3
                  L16_3 = 0.0
                  L17_3 = 0.0
                  L18_3 = 0.0
                  L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3, L17_3, L18_3)
                  L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                  dustballa = L10_3
                  L10_3 = PlayEffect
                  L11_3 = "core"
                  L12_3 = "ent_anim_dusty_hands"
                  L13_3 = vector3
                  L14_3 = L7_3
                  L15_3 = L8_3
                  L16_3 = L9_3 - 1.1
                  L13_3 = L13_3(L14_3, L15_3, L16_3)
                  L14_3 = 2.5
                  L15_3 = vector3
                  L16_3 = 0.0
                  L17_3 = 0.0
                  L18_3 = 0.0
                  L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3, L17_3, L18_3)
                  L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                  dustballa2 = L10_3
                  L10_3 = GetGameTimer
                  L10_3 = L10_3()
                  dusttimer = L10_3
                else
                  L10_3 = GetGameTimer
                  L10_3 = L10_3()
                  L11_3 = dusttimer
                  L10_3 = L10_3 - L11_3
                  L11_3 = 555
                  if L10_3 >= L11_3 then
                    L10_3 = StopParticleFxLooped
                    L11_3 = dustballa
                    L12_3 = 0
                    L10_3(L11_3, L12_3)
                    L10_3 = RemoveParticleFx
                    L11_3 = dustballa
                    L12_3 = true
                    L10_3(L11_3, L12_3)
                    L10_3 = StopParticleFxLooped
                    L11_3 = dustballa2
                    L12_3 = 0
                    L10_3(L11_3, L12_3)
                    L10_3 = RemoveParticleFx
                    L11_3 = dustballa2
                    L12_3 = true
                    L10_3(L11_3, L12_3)
                    dusttimer = 0
                    dustballa = nil
                    dustballa2 = nil
                  end
                end
              end
            end
            ::lbl_237::
          end
        end
        L3_2(L4_2)
      end
    end
  end
end
AnimHorseBalla = L6_1
function L6_1(A0_2, A1_2)
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
GetNearbyPeds = L6_1
L6_1 = CreateThread
function L7_1()
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
L6_1(L7_1)
L6_1 = RegisterNetEvent
L7_1 = "fivem_netstats"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "fivem_netstats"
function L8_1()
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
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = GetActivePlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = PlayerId
    L10_2 = L10_2()
    if L9_2 ~= L10_2 then
      L10_2 = GetPlayerPed
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if 0 ~= L10_2 then
        L11_2 = DoesEntityExist
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = GetEntityCoords
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L11_2 = L3_2 - L11_2
          L11_2 = #L11_2
          if A2_2 >= L11_2 then
            L12_2 = true
            return L12_2
          end
          if A1_2 then
            L12_2 = DoesEntityExist
            L13_2 = A1_2
            L12_2 = L12_2(L13_2)
            if L12_2 then
              L12_2 = IsEntityAttachedToEntity
              L13_2 = L10_2
              L14_2 = A1_2
              L12_2 = L12_2(L13_2, L14_2)
              if L12_2 then
                L12_2 = true
                return L12_2
              end
            end
          end
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
PlayerNearbyOrAttached = L6_1
stoSalendo = false
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L0_2 = stoSalendo
  if not L0_2 then
    L0_2 = ActiveMenu
    if not L0_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  stoSalendo = true
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = dhorseprint
  L2_2 = "Richiamo Sali a Cavallo!"
  L1_2(L2_2)
  L1_2 = PossoSalire
  if L1_2 then
    L1_2 = InShopHorse
    if not L1_2 then
      L1_2 = IsEntityAttached
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = PlayerNearbyOrAttached
        L2_2 = L0_2
        L3_2 = nil
        L4_2 = 1.35
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        if not L1_2 then
          L1_2 = GetEntityCoords
          L2_2 = L0_2
          L3_2 = false
          L1_2 = L1_2(L2_2, L3_2)
          L2_2 = 1.25
          L3_2 = pairs
          L4_2 = L3_1
          L5_2 = L1_2.x
          L6_2 = L1_2.y
          L7_2 = L1_2.z
          L8_2 = 7.0
          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
          L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
            L9_2 = DoesEntityExist
            L10_2 = L8_2
            L9_2 = L9_2(L10_2)
            if L9_2 then
              L9_2 = print
              L10_2 = "[MODEL CHECK - CODE HOP]"
              L11_2 = L8_2
              L12_2 = type
              L13_2 = L8_2
              L12_2 = L12_2(L13_2)
              L13_2 = DoesEntityExist
              L14_2 = L8_2
              L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L13_2(L14_2)
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
              L9_2 = GetValidEntityModel
              L10_2 = L8_2
              L9_2 = L9_2(L10_2)
              if L9_2 then
                L10_2 = L2_2
                L11_2 = AquaticAnimalModel
                L12_2 = L9_2
                L11_2 = L11_2(L12_2)
                L12_2 = IsFastAnimalModel
                L13_2 = L9_2
                L12_2 = L12_2(L13_2)
                L13_2 = GetHashKey
                L14_2 = "a_c_humpback"
                L13_2 = L13_2(L14_2)
                if L9_2 == L13_2 then
                  L10_2 = 5.0
                end
                L13_2 = GetEntityCoords
                L14_2 = L0_2
                L13_2 = L13_2(L14_2)
                L14_2 = GetEntityCoords
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L13_2 = L13_2 - L14_2
                L13_2 = #L13_2
                L14_2 = Animal
                L14_2 = L14_2.InControl
                if not (not L14_2 and L10_2 > L13_2) then
                  goto lbl_432
                end
                L14_2 = Citizen
                L14_2 = L14_2.InvokeNative
                L15_2 = -7918206464511161279
                L16_2 = L0_2
                L14_2 = L14_2(L15_2, L16_2)
                L14_2 = IsEntityPositionFrozen
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L14_2 = GetEntityAlpha
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L15_2 = 253
                L14_2 = IsPedFalling
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L14_2 = IsPedFatallyInjured
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L14_2 = IsPedDeadOrDying
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L14_2 = IsPedGettingUp
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L14_2 = IsPedRagdoll
                L15_2 = L8_2
                L14_2 = L14_2(L15_2)
                L14_2 = IsEntityAttached
                L15_2 = L0_2
                L14_2 = L14_2(L15_2)
                L14_2 = not L14_2 and L14_2
                if not L14_2 then
                  goto lbl_432
                end
                L15_2 = DoesEntityExist
                L16_2 = L8_2
                L15_2 = L15_2(L16_2)
                if not L15_2 then
                  goto lbl_432
                end
                L15_2 = nil
                L16_2 = ipairs
                L17_2 = AnimalsModel
                L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
                for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
                  L22_2 = GetHashKey
                  L23_2 = L21_2.model
                  L22_2 = L22_2(L23_2)
                  if L9_2 == L22_2 then
                    L15_2 = L21_2
                    break
                  end
                end
                if not L15_2 then
                  goto lbl_432
                end
                L16_2 = IsPedAnimale
                L17_2 = L8_2
                L16_2 = L16_2(L17_2)
                L17_2 = NetworkGetPlayerIndexFromPed
                L18_2 = L8_2
                L17_2 = L17_2(L18_2)
                if -1 ~= L17_2 then
                  goto lbl_432
                end
                L17_2 = PlayerNearbyOrAttached
                L18_2 = L0_2
                L19_2 = L8_2
                L20_2 = 1.35
                L17_2 = L17_2(L18_2, L19_2, L20_2)
                if not L17_2 then
                  L18_2 = pairs
                  L19_2 = L3_1
                  L20_2 = L1_2.x
                  L21_2 = L1_2.y
                  L22_2 = L1_2.z
                  L23_2 = L10_2
                  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
                  L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                  for L22_2, L23_2 in L18_2, L19_2, L20_2, L21_2 do
                    if L23_2 ~= L8_2 then
                      L24_2 = DoesEntityExist
                      L25_2 = L23_2
                      L24_2 = L24_2(L25_2)
                      if L24_2 then
                        L24_2 = IsEntityAttachedToEntity
                        L25_2 = L23_2
                        L26_2 = L8_2
                        L24_2 = L24_2(L25_2, L26_2)
                        if L24_2 then
                          L17_2 = true
                          break
                        end
                      end
                    end
                  end
                end
                if L17_2 then
                  goto lbl_432
                end
                L18_2 = 0
                while true do
                  L19_2 = DoesEntityExist
                  L20_2 = L8_2
                  L19_2 = L19_2(L20_2)
                  if not L19_2 then
                    break
                  end
                  L19_2 = NetworkHasControlOfEntity
                  L20_2 = L8_2
                  L19_2 = L19_2(L20_2)
                  if not (not L19_2 and L18_2 < 100) then
                    break
                  end
                  L19_2 = NetworkRequestControlOfEntity
                  L20_2 = L8_2
                  L19_2(L20_2)
                  L18_2 = L18_2 + 1
                  L19_2 = Wait
                  L20_2 = 0
                  L19_2(L20_2)
                end
                L19_2 = DoesEntityExist
                L20_2 = L8_2
                L19_2 = L19_2(L20_2)
                if L19_2 then
                  L19_2 = ClearPedTasks
                  L20_2 = L0_2
                  L19_2(L20_2)
                  L19_2 = ClearPedSecondaryTask
                  L20_2 = L0_2
                  L19_2(L20_2)
                  if L16_2 then
                    if not L11_2 then
                      L19_2 = RotToHorse
                      L20_2 = L0_2
                      L21_2 = L8_2
                      L19_2(L20_2, L21_2)
                      L19_2 = "laddersbase"
                      L20_2 = HasAnimDictLoaded
                      L21_2 = L19_2
                      L20_2 = L20_2(L21_2)
                      if not L20_2 then
                        L20_2 = RequestAnimDict
                        L21_2 = L19_2
                        L20_2(L21_2)
                        while true do
                          L20_2 = HasAnimDictLoaded
                          L21_2 = L19_2
                          L20_2 = L20_2(L21_2)
                          if L20_2 then
                            break
                          end
                          L20_2 = Wait
                          L21_2 = 10
                          L20_2(L21_2)
                          L20_2 = DoesEntityExist
                          L21_2 = L8_2
                          L20_2 = L20_2(L21_2)
                          if not L20_2 then
                            break
                          end
                        end
                      end
                      L20_2 = DoesEntityExist
                      L21_2 = L8_2
                      L20_2 = L20_2(L21_2)
                      if L20_2 then
                        L20_2 = TaskPlayAnim
                        L21_2 = L0_2
                        L22_2 = L19_2
                        L23_2 = "get_off_top_back_stand_left_hand"
                        L24_2 = 8.0
                        L25_2 = 8.0
                        L26_2 = 650
                        L27_2 = 1
                        L28_2 = 0
                        L29_2 = false
                        L30_2 = false
                        L31_2 = false
                        L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                      end
                    else
                      L19_2 = SetPedSurvivesBeingOutOfWater
                      L20_2 = L8_2
                      L21_2 = true
                      L19_2(L20_2, L21_2)
                    end
                    CavalloMiSegue = false
                    if not L11_2 then
                      L19_2 = Wait
                      L20_2 = 650
                      L19_2(L20_2)
                    end
                    L19_2 = DoesEntityExist
                    L20_2 = L8_2
                    L19_2 = L19_2(L20_2)
                    if L19_2 then
                      L19_2 = Animal
                      L19_2 = L19_2.Handle
                      L19_2 = nil == L19_2
                      L20_2 = Animal
                      L20_2.Handle = L8_2
                      L20_2 = Animal
                      L20_2.Model = L9_2
                      if L19_2 then
                        L20_2 = maxHorseStamina
                        horseStamina = L20_2
                        L20_2 = GetGameTimer
                        L20_2 = L20_2()
                        lastUpdateMs = L20_2
                        tiredMode = false
                        staminaMode = false
                        L20_2 = BlipSetupHorse
                        L20_2 = L20_2()
                        BLIPCAVALLO = L20_2
                        L20_2 = LoopBlipCavallo
                        L20_2()
                      end
                      L20_2 = Animal
                      L20_2 = L20_2.Attach
                      L21_2 = L9_2
                      L22_2 = L11_2
                      L23_2 = L12_2
                      L20_2(L21_2, L22_2, L23_2)
                      staminaMode = false
                      break
                    end
                    L19_2 = print
                    L20_2 = "[RIDEHORSE] ANIMAL NOT FOUND BEFORE ATTACH:"
                    L21_2 = L8_2
                    L19_2(L20_2, L21_2)
                    break
                  end
                  L19_2 = RotToHorse
                  L20_2 = L0_2
                  L21_2 = L8_2
                  L19_2(L20_2, L21_2)
                  L19_2 = "laddersbase"
                  L20_2 = HasAnimDictLoaded
                  L21_2 = L19_2
                  L20_2 = L20_2(L21_2)
                  if not L20_2 then
                    L20_2 = RequestAnimDict
                    L21_2 = L19_2
                    L20_2(L21_2)
                    while true do
                      L20_2 = HasAnimDictLoaded
                      L21_2 = L19_2
                      L20_2 = L20_2(L21_2)
                      if L20_2 then
                        break
                      end
                      L20_2 = Wait
                      L21_2 = 10
                      L20_2(L21_2)
                      L20_2 = DoesEntityExist
                      L21_2 = L8_2
                      L20_2 = L20_2(L21_2)
                      if not L20_2 then
                        break
                      end
                    end
                  end
                  L20_2 = DoesEntityExist
                  L21_2 = L8_2
                  L20_2 = L20_2(L21_2)
                  if L20_2 then
                    L20_2 = TaskPlayAnim
                    L21_2 = L0_2
                    L22_2 = L19_2
                    L23_2 = "get_off_top_back_stand_left_hand"
                    L24_2 = 8.0
                    L25_2 = 8.0
                    L26_2 = 650
                    L27_2 = 1
                    L28_2 = 0
                    L29_2 = false
                    L30_2 = false
                    L31_2 = false
                    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
                    CavalloMiSegue = false
                    L20_2 = Wait
                    L21_2 = 650
                    L20_2(L21_2)
                  end
                  L20_2 = DoesEntityExist
                  L21_2 = L8_2
                  L20_2 = L20_2(L21_2)
                  if L20_2 then
                    L20_2 = SetEntityInvincible
                    L21_2 = L8_2
                    L22_2 = true
                    L20_2(L21_2, L22_2)
                    L20_2 = Animal
                    L20_2.Handle = L8_2
                    L20_2 = Animal
                    L20_2.Model = L9_2
                    L20_2 = Animal
                    L20_2 = L20_2.AttachHumanoid
                    L20_2()
                    L20_2 = GetGameTimer
                    L20_2 = L20_2()
                    lastUpdateMs = L20_2
                    staminaMode = false
                    break
                  end
                  L20_2 = print
                  L21_2 = "[RIDEHORSE] HUMANOID NOT VALID BEFORE ATTACH:"
                  L22_2 = L8_2
                  L20_2(L21_2, L22_2)
                  break
                else
                  L19_2 = print
                  L20_2 = "[RIDEHORSE] HANDLE NOT FOUND WHILE REQUEST:"
                  L21_2 = L8_2
                  L19_2(L20_2, L21_2)
                end
              else
                L10_2 = print
                L11_2 = "[RIDEHORSE] MODEL NOT VALID:"
                L12_2 = L8_2
                L10_2(L11_2, L12_2)
              end
            end
            ::lbl_432::
          end
        end
      end
    end
  end
  L1_2 = Wait
  L2_2 = 250
  L1_2(L2_2)
  stoSalendo = false
end
SaliACavallo = L6_1
L6_1 = exports
L7_1 = "saliCavalcatura"
function L8_1()
  local L0_2, L1_2
  L0_2 = SaliACavallo
  L0_2()
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = next
  L1_2 = L4_1
  L0_2 = L0_2(L1_2)
  if nil == L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = 2.2
  L4_2 = GetPlayerServerId
  L5_2 = PlayerId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2 = pairs
  L6_2 = L4_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = tonumber
    L12_2 = L10_2.serverId
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = tonumber
      L12_2 = L9_2
      L11_2 = L11_2(L12_2)
    end
    if L11_2 and L11_2 ~= L4_2 then
      L12_2 = tonumber
      L13_2 = L10_2.occupied
      L12_2 = L12_2(L13_2)
      if not L12_2 then
        L12_2 = 0
      end
      L13_2 = tonumber
      L14_2 = L10_2.seats
      L13_2 = L13_2(L14_2)
      if not L13_2 then
        L13_2 = 0
      end
      if L12_2 < L13_2 then
        L12_2 = GetPlayerFromServerId
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if -1 ~= L12_2 then
          L13_2 = GetPlayerPed
          L14_2 = L12_2
          L13_2 = L13_2(L14_2)
          if 0 ~= L13_2 then
            L14_2 = DoesEntityExist
            L15_2 = L13_2
            L14_2 = L14_2(L15_2)
            if L14_2 then
              L14_2 = GetEntityCoords
              L15_2 = L13_2
              L14_2 = L14_2(L15_2)
              L14_2 = L1_2 - L14_2
              L14_2 = #L14_2
              if L3_2 >= L14_2 then
                L3_2 = L14_2
                L2_2 = L11_2
              end
            end
          end
        end
      end
    end
  end
  if not L2_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = TriggerServerEvent
  L6_2 = "horse:requestPassenger"
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = true
  return L5_2
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = "laddersbase"
  L4_2 = "get_off_bottom_front_stand"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "anim@am_hold_up@female"
    L4_2 = "shoplift_high"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = IsEntityPlayingAnim
      L2_2 = L0_2
      L3_2 = "laddersbase"
      L4_2 = "get_off_top_back_stand_left_hand"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
  if L1_2 then
    L2_2 = dhorseprint
    L3_2 = "Sto gi\195\160 salendo a cavallo"
    L2_2(L3_2)
    return
  end
  L2_2 = ActiveMenu
  if not L2_2 then
    L2_2 = IsPedSittingInAnyVehicle
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedGettingIntoAVehicle
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_45
      end
    end
  end
  do return end
  ::lbl_45::
  L2_2 = IsEntityAttached
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L6_1
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = SaliACavallo
      L2_2()
    end
    return
  end
  L2_2 = GetEntityAttachedTo
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 then
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_81
    end
  end
  L3_2 = print
  L4_2 = "[RIDEHORSE] Entit\195\160 attaccata non valida:"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = DetachEntity
  L4_2 = L0_2
  L5_2 = true
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Animal
  L3_2.Handle = nil
  L3_2 = Animal
  L3_2.Model = nil
  do return end
  ::lbl_81::
  L3_2 = Animal
  L3_2 = L3_2.Handle
  if nil == L3_2 then
    L3_2 = print
    L4_2 = "[RIDEHORSE] Player attaccato ma Animal.Handle \195\168 nil"
    L3_2(L4_2)
    return
  end
  L3_2 = Animal
  L3_2 = L3_2.Model
  if not L3_2 or 0 == L3_2 then
    L4_2 = print
    L5_2 = "[MODEL CHECK - CODE 5 FALLBACK]"
    L6_2 = L2_2
    L7_2 = type
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L2_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L4_2 = GetValidEntityModel
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  if not L3_2 then
    L4_2 = print
    L5_2 = "[RIDEHORSE] Modello non valido CODE 5:"
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = nil
  L5_2 = ipairs
  L6_2 = AnimalsModel
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetHashKey
    L12_2 = L10_2.model
    L11_2 = L11_2(L12_2)
    if L3_2 == L11_2 then
      L4_2 = L10_2
      break
    end
  end
  L5_2 = AquaticAnimalModel
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if L4_2 then
    lastUpdateMs = 0
    if not L5_2 then
      L6_2 = DoesEntityExist
      L7_2 = L2_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = ClearPedTasks
        L7_2 = L2_2
        L6_2(L7_2)
        L6_2 = ClearPedSecondaryTask
        L7_2 = L2_2
        L6_2(L7_2)
        L6_2 = "creatures@deer@amb@world_deer_grazing@enter"
        L7_2 = HasAnimDictLoaded
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L7_2 = RequestAnimDict
          L8_2 = L6_2
          L7_2(L8_2)
          while true do
            L7_2 = HasAnimDictLoaded
            L8_2 = L6_2
            L7_2 = L7_2(L8_2)
            if L7_2 then
              break
            end
            L7_2 = Wait
            L8_2 = 10
            L7_2(L8_2)
            L7_2 = DoesEntityExist
            L8_2 = L2_2
            L7_2 = L7_2(L8_2)
            if not L7_2 then
              break
            end
          end
        end
        L7_2 = DoesEntityExist
        L8_2 = L2_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = TaskPlayAnim
          L8_2 = L2_2
          L9_2 = L6_2
          L10_2 = "enter"
          L11_2 = 2.0
          L12_2 = 2.0
          L13_2 = 550
          L14_2 = 1
          L15_2 = 0
          L16_2 = false
          L17_2 = false
          L18_2 = false
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        end
      end
    end
    L6_2 = DetachEntity
    L7_2 = L0_2
    L8_2 = true
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = DoesEntityExist
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = RotToHorse2
      L7_2 = L0_2
      L8_2 = L2_2
      L6_2(L7_2, L8_2)
    end
    L6_2 = "laddersbase"
    L7_2 = HasAnimDictLoaded
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = RequestAnimDict
      L8_2 = L6_2
      L7_2(L8_2)
      while true do
        L7_2 = HasAnimDictLoaded
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = Wait
        L8_2 = 10
        L7_2(L8_2)
      end
    end
    L7_2 = TaskPlayAnim
    L8_2 = L0_2
    L9_2 = L6_2
    L10_2 = "get_off_bottom_front_stand"
    L11_2 = 8.0
    L12_2 = 8.0
    L13_2 = 750
    L14_2 = 0
    L15_2 = 0
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if L5_2 then
      goto lbl_358
    end
    L7_2 = DoesEntityExist
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      goto lbl_358
    end
    L7_2 = L5_1
    L7_2()
    L7_2 = myAnimalAnim
    if "rottweiler" == L7_2 or "boar" == L7_2 then
      L7_2 = "deer"
    end
    L8_2 = "creatures@"
    L9_2 = L7_2
    L10_2 = "@move"
    L8_2 = L8_2 .. L9_2 .. L10_2
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
        L9_2 = DoesEntityExist
        L10_2 = L2_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          break
        end
      end
    end
    L9_2 = DoesEntityExist
    L10_2 = L2_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = TaskPlayAnim
      L10_2 = L2_2
      L11_2 = L8_2
      L12_2 = "walk_bck_dwn"
      L13_2 = 2.0
      L14_2 = 2.0
      L15_2 = 150
      L16_2 = 1
      L17_2 = 0
      L18_2 = false
      L19_2 = false
      L20_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
  else
    L6_2 = IsPedHuman
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      lastUpdateMs = 0
      L6_2 = DetachEntity
      L7_2 = L0_2
      L8_2 = true
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = DoesEntityExist
      L7_2 = L2_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = RotToHorse2
        L7_2 = L0_2
        L8_2 = L2_2
        L6_2(L7_2, L8_2)
      end
      L6_2 = "laddersbase"
      L7_2 = HasAnimDictLoaded
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if not L7_2 then
        L7_2 = RequestAnimDict
        L8_2 = L6_2
        L7_2(L8_2)
        while true do
          L7_2 = HasAnimDictLoaded
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 then
            break
          end
          L7_2 = Wait
          L8_2 = 10
          L7_2(L8_2)
        end
      end
      L7_2 = TaskPlayAnim
      L8_2 = L0_2
      L9_2 = L6_2
      L10_2 = "get_off_bottom_front_stand"
      L11_2 = 8.0
      L12_2 = 8.0
      L13_2 = 750
      L14_2 = 0
      L15_2 = 0
      L16_2 = false
      L17_2 = false
      L18_2 = false
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    else
      L6_2 = print
      L7_2 = "[RIDEHORSE] Modello attaccato non riconosciuto:"
      L8_2 = L3_2
      L6_2(L7_2, L8_2)
      lastUpdateMs = 0
      L6_2 = DetachEntity
      L7_2 = L0_2
      L8_2 = true
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  ::lbl_358::
  L6_2 = OnPlayerLeaveAnimal
  L6_2()
  L6_2 = DeleteHorseReins
  L6_2()
  reinsActive = false
  L6_2 = Animal
  L6_2 = L6_2.Handle
  if L6_2 then
    L6_2 = DoesEntityExist
    L7_2 = Animal
    L7_2 = L7_2.Handle
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = print
      L7_2 = "^2[RIDEHORSE]^7 Dismounted - keeping horse handle:"
      L8_2 = Animal
      L8_2 = L8_2.Handle
      L9_2 = "model:"
      L10_2 = Animal
      L10_2 = L10_2.Model
      L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  else
    L6_2 = print
    L7_2 = "^1[RIDEHORSE]^7 Horse disappeared after dismount, clearing handle"
    L6_2(L7_2)
    L6_2 = Animal
    L6_2.Handle = nil
    L6_2 = Animal
    L6_2.Model = nil
  end
  L6_2 = Wait
  L7_2 = 650
  L6_2(L7_2)
  L6_2 = delOnDrop
  if L6_2 then
    L6_2 = TriggerEvent
    L7_2 = "dropHorse"
    L6_2(L7_2)
  end
end
StrianoRide = L7_1
loopStamina = false
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A0_2 and 0 ~= A0_2 then
    L4_2 = DoesEntityExist
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_15
    end
  end
  L4_2 = print
  L5_2 = "[RIDEHORSE] LoopCavallo handle non valido:"
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  do return end
  ::lbl_15::
  if not A1_2 or 0 == A1_2 then
    L4_2 = print
    L5_2 = "[RIDEHORSE] LoopCavallo modello non valido:"
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = IsRidingAnimal
  if not L4_2 then
    IsRidingAnimal = true
    L4_2 = EnableOrbitCam
    if not L4_2 then
      L4_2 = CamActiveLocal
      if not L4_2 then
        goto lbl_42
      end
    end
    L4_2 = StartOrbitCam
    L5_2 = vector3
    L6_2 = 0.0
    L7_2 = 0.0
    L8_2 = 0.5
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    ::lbl_42::
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = AttachedEntity2
    if nil == L5_2 then
      L5_2 = GetEntityAttachedTo
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      AttachedEntity2 = L5_2
    end
    L5_2 = false
    L6_2 = ipairs
    L7_2 = AnimalsModel
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.fishSpeed
      if nil ~= L12_2 then
        L12_2 = L11_2.fishSpeed
        fishSpeed = L12_2
      else
        fishSpeed = nil
      end
    end
    L6_2 = HasAnimDictLoaded
    L7_2 = dicBase
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = RequestAnimDict
      L7_2 = dicBase
      L6_2(L7_2)
      while true do
        L6_2 = HasAnimDictLoaded
        L7_2 = dicBase
        L6_2 = L6_2(L7_2)
        if L6_2 then
          break
        end
        L6_2 = Wait
        L7_2 = 10
        L6_2(L7_2)
      end
    end
    L6_2 = dicFast
    L6_2 = #L6_2
    if L6_2 > 0 then
      L6_2 = HasAnimDictLoaded
      L7_2 = dicFast
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = RequestAnimDict
        L7_2 = dicFast
        L6_2(L7_2)
        while true do
          L6_2 = HasAnimDictLoaded
          L7_2 = dicFast
          L6_2 = L6_2(L7_2)
          if L6_2 then
            break
          end
          L6_2 = Wait
          L7_2 = 10
          L6_2(L7_2)
        end
      end
    end
    L6_2 = DisablePlayerFiring
    L7_2 = PlayerId
    L7_2 = L7_2()
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = SetEnableHandcuffs
    L7_2 = L4_2
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = SetPedCanPlayGestureAnims
    L7_2 = L4_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetPedCanPlayAmbientAnims
    L7_2 = L4_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetPedCanSwitchWeapon
    L7_2 = L4_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetPedCurrentWeaponVisible
    L7_2 = L4_2
    L8_2 = true
    L9_2 = true
    L10_2 = true
    L11_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = ResetPedWeaponMovementClipset
    L7_2 = L4_2
    L6_2(L7_2)
    L6_2 = ResetPedStrafeClipset
    L7_2 = L4_2
    L6_2(L7_2)
    L6_2 = DoesEntityExist
    L7_2 = AttachedEntity2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = SetPedDiesInWater
      L7_2 = AttachedEntity2
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = SetPedDiesInstantlyInWater
      L7_2 = AttachedEntity2
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
    L6_2 = loopStamina
    if not L6_2 then
      loopStamina = true
      L6_2 = CreateThread
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
        while true do
          L0_3 = DoesEntityExist
          L1_3 = A0_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            break
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = PlayerPedId
          L0_3 = L0_3()
          L1_3 = horseStamina
          if nil ~= L1_3 then
            L1_3 = IsEntityAttached
            L2_3 = L0_3
            L1_3 = L1_3(L2_3)
            if not L1_3 then
              L1_3 = tiredMode
              if L1_3 then
                L1_3 = horseStamina
                L2_3 = maxHorseStamina
                if L1_3 < L2_3 then
                  L1_3 = "creatures@cow@move"
                  L2_3 = "idle_sit"
                  L3_3 = IsEntityPlayingAnim
                  L4_3 = A0_2
                  L5_3 = L1_3
                  L6_3 = L2_3
                  L7_3 = 3
                  L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
                  if not L3_3 then
                    L3_3 = HasAnimDictLoaded
                    L4_3 = L1_3
                    L3_3 = L3_3(L4_3)
                    if not L3_3 then
                      L3_3 = RequestAnimDict
                      L4_3 = L1_3
                      L3_3(L4_3)
                      while true do
                        L3_3 = HasAnimDictLoaded
                        L4_3 = L1_3
                        L3_3 = L3_3(L4_3)
                        if L3_3 then
                          break
                        end
                        L3_3 = Wait
                        L4_3 = 10
                        L3_3(L4_3)
                      end
                    end
                    L3_3 = TaskPlayAnim
                    L4_3 = A0_2
                    L5_3 = L1_3
                    L6_3 = L2_3
                    L7_3 = 8.0
                    L8_3 = 8.0
                    L9_3 = -1
                    L10_3 = 1
                    L11_3 = 0
                    L12_3 = false
                    L13_3 = false
                    L14_3 = false
                    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                  end
                end
              end
            end
            L1_3 = IsEntityPlayingAnim
            L2_3 = A0_2
            L3_3 = "creatures@deer@move"
            L4_3 = "gallop"
            L5_3 = 3
            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
            if L1_3 then
              L1_3 = IsPedMoving
              L2_3 = A0_2
              L1_3 = L1_3(L2_3)
              if L1_3 then
                L1_3 = GetGameTimer
                L1_3 = L1_3()
                L2_3 = lastUpdateMs
                if 0 == L2_3 then
                  lastUpdateMs = L1_3
                else
                  L2_3 = lastUpdateMs
                  L2_3 = L1_3 - L2_3
                  lastUpdateMs = L1_3
                  L3_3 = MAX_DELTA_MS
                  if L2_3 > L3_3 then
                    L2_3 = MAX_DELTA_MS
                  end
                  L3_3 = horseStamina
                  if L3_3 then
                    L3_3 = horseStamina
                    if L3_3 > 0 then
                      L3_3 = drainPerMs
                      L3_3 = L3_3 * L2_3
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
                          goto lbl_117
                        end
                      end
                      L3_3 = L3_3 * 5
                      ::lbl_117::
                      L4_3 = clamp
                      L5_3 = horseStamina
                      L5_3 = L5_3 - L3_3
                      L6_3 = 0
                      L7_3 = maxHorseStamina
                      L4_3 = L4_3(L5_3, L6_3, L7_3)
                      horseStamina = L4_3
                  end
                  else
                    L3_3 = tiredMode
                    if L3_3 then
                      goto lbl_286
                    end
                    tiredMode = true
                    horseStamina = 0
                    staminaMode = true
                    L3_3 = checkerStamina
                    L4_3 = true
                    L3_3(L4_3)
                    L3_3 = ClearPedTasks
                    L4_3 = A0_2
                    L3_3(L4_3)
                    L3_3 = horseTiredMessage
                    L3_3()
                    L3_3 = ResetCavalloMove
                    L4_3 = A0_2
                    L3_3(L4_3)
                    L3_3 = L5_1
                    L3_3()
                    L3_3 = myAnimalAnim
                    if "rottweiler" == L3_3 or "boar" == L3_3 then
                      L3_3 = "deer"
                    end
                    L4_3 = "creatures@"
                    L5_3 = L3_3
                    L6_3 = "@move"
                    L4_3 = L4_3 .. L5_3 .. L6_3
                    L5_3 = "walk_bck_dwn"
                    L6_3 = HasAnimDictLoaded
                    L7_3 = L4_3
                    L6_3 = L6_3(L7_3)
                    if not L6_3 then
                      L6_3 = RequestAnimDict
                      L7_3 = L4_3
                      L6_3(L7_3)
                      while true do
                        L6_3 = HasAnimDictLoaded
                        L7_3 = L4_3
                        L6_3 = L6_3(L7_3)
                        if L6_3 then
                          break
                        end
                        L6_3 = Wait
                        L7_3 = 10
                        L6_3(L7_3)
                      end
                    end
                    L6_3 = TaskPlayAnim
                    L7_3 = A0_2
                    L8_3 = L4_3
                    L9_3 = L5_3
                    L10_3 = 2.0
                    L11_3 = 2.0
                    L12_3 = 150
                    L13_3 = 1
                    L14_3 = 0
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                    miMuovo = nil
                    controlloMovement = 0
                  end
                end
            end
            else
              L1_3 = horseStamina
              L2_3 = maxHorseStamina
              if L1_3 < L2_3 then
                L1_3 = GetGameTimer
                L1_3 = L1_3()
                L2_3 = lastUpdateMs
                L2_3 = L1_3 - L2_3
                lastUpdateMs = L1_3
                L3_3 = horseStamina
                L4_3 = maxHorseStamina
                if L3_3 < L4_3 then
                  L3_3 = IsPedMoving
                  L4_3 = A0_2
                  L3_3 = L3_3(L4_3)
                  if L3_3 then
                    L3_3 = horseStamina
                    L4_3 = rechargePerMs
                    L4_3 = L4_3 * L2_3
                    L3_3 = L3_3 + L4_3
                    horseStamina = L3_3
                  else
                    L3_3 = horseStamina
                    L4_3 = rechargePerMs
                    L4_3 = L4_3 * 2
                    L4_3 = L4_3 * L2_3
                    L3_3 = L3_3 + L4_3
                    horseStamina = L3_3
                  end
                end
              else
                L1_3 = tiredMode
                if L1_3 then
                  tiredMode = false
                  staminaMode = false
                  L1_3 = checkerStamina
                  L2_3 = false
                  L1_3(L2_3)
                  L1_3 = ClearPedTasks
                  L2_3 = A0_2
                  L1_3(L2_3)
                  L1_3 = ResetCavalloMove
                  L2_3 = A0_2
                  L1_3(L2_3)
                  L1_3 = L5_1
                  L1_3()
                  L1_3 = myAnimalAnim
                  if "rottweiler" == L1_3 or "boar" == L1_3 then
                    L1_3 = "deer"
                  end
                  L2_3 = "creatures@"
                  L3_3 = L1_3
                  L4_3 = "@move"
                  L2_3 = L2_3 .. L3_3 .. L4_3
                  L3_3 = "walk_bck_dwn"
                  L4_3 = HasAnimDictLoaded
                  L5_3 = L2_3
                  L4_3 = L4_3(L5_3)
                  if not L4_3 then
                    L4_3 = RequestAnimDict
                    L5_3 = L2_3
                    L4_3(L5_3)
                    while true do
                      L4_3 = HasAnimDictLoaded
                      L5_3 = L2_3
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
                  L5_3 = A0_2
                  L6_3 = L2_3
                  L7_3 = L3_3
                  L8_3 = 2.0
                  L9_3 = 2.0
                  L10_3 = 150
                  L11_3 = 1
                  L12_3 = 0
                  L13_3 = false
                  L14_3 = false
                  L15_3 = false
                  L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                  miMuovo = nil
                  controlloMovement = 0
                  lastUpdateMs = 0
                end
              end
            end
            ::lbl_286::
            L1_3 = LoopStaminaVisive
            L2_3 = A0_2
            L1_3(L2_3)
          end
        end
        loopStamina = false
      end
      L6_2(L7_2)
    end
    L6_2 = 0.22
    L7_2 = -0.22
    L8_2 = 3.0
    L9_2 = CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      while true do
        L0_3 = IsRidingAnimal
        if not L0_3 then
          break
        end
        L0_3 = eroVeloce
        if not L0_3 then
          L0_3 = canReise
          L0_3 = L0_3()
          if L0_3 then
            L0_3 = IsEntityPlayingAnim
            L1_3 = L4_2
            L2_3 = dicBase
            L3_3 = animBase
            L4_3 = 3
            L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
            if not L0_3 then
              L0_3 = IsEntityPlayingAnim
              L1_3 = L4_2
              L2_3 = animBsA
              L3_3 = animBsB
              L4_3 = 3
              L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
              if not L0_3 then
                goto lbl_107
              end
            end
            L0_3 = 0.22
            L1_3 = -0.22
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = 35
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L0_3 = 0.4
            else
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = 34
              L2_3 = L2_3(L3_3, L4_3)
              if L2_3 then
                L1_3 = -0.4
              end
            end
            L2_3 = GetFrameTime
            L2_3 = L2_3()
            L3_3 = math
            L3_3 = L3_3.min
            L4_3 = L8_2
            L4_3 = L4_3 * L2_3
            L5_3 = 1.0
            L3_3 = L3_3(L4_3, L5_3)
            L4_3 = L6_2
            L5_3 = L6_2
            L5_3 = L0_3 - L5_3
            L5_3 = L5_3 * L3_3
            L4_3 = L4_3 + L5_3
            L6_2 = L4_3
            L4_3 = L7_2
            L5_3 = L7_2
            L5_3 = L1_3 - L5_3
            L5_3 = L5_3 * L3_3
            L4_3 = L4_3 + L5_3
            L7_2 = L4_3
            L4_3 = GetOffsetFromEntityInWorldCoords
            L5_3 = L4_2
            L6_3 = L6_2
            L7_3 = 0.15
            L8_3 = 0.3
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
            L5_3 = GetOffsetFromEntityInWorldCoords
            L6_3 = L4_2
            L7_3 = L7_2
            L8_3 = 0.15
            L9_3 = 0.3
            L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
            L6_3 = SetIkTarget
            L7_3 = L4_2
            L8_3 = 4
            L9_3 = 0
            L10_3 = 0
            L11_3 = L4_3.x
            L12_3 = L4_3.y
            L13_3 = L4_3.z
            L14_3 = 0
            L15_3 = 0
            L16_3 = 0
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
            L6_3 = SetIkTarget
            L7_3 = L4_2
            L8_3 = 3
            L9_3 = 0
            L10_3 = 0
            L11_3 = L5_3.x
            L12_3 = L5_3.y
            L13_3 = L5_3.z
            L14_3 = 0
            L15_3 = 0
            L16_3 = 0
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
          end
        end
        ::lbl_107::
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
    end
    L9_2(L10_2)
    L9_2 = nil
    L10_2 = 1000
    L11_2 = 0
    L12_2 = A2_2
    L13_2 = A3_2
    L14_2 = GetHashKey
    L15_2 = "a_c_fish"
    L14_2 = L14_2(L15_2)
    L14_2 = A1_2 ~= L14_2
    L15_2 = CreateThread
    function L16_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3
      L0_3 = dhorseprint
      L1_3 = "Inizio il Loop Riding!"
      L0_3(L1_3)
      while true do
        L0_3 = IsRidingAnimal
        if not L0_3 then
          break
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = Wait
        L2_3 = 9
        L1_3(L2_3)
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        L1_3 = L1_3 - L0_3
        L1_3 = L1_3 / 1000
        L1_3 = L1_3 * 65
        L2_3 = IsEntityAttached
        L3_3 = L4_2
        L2_3 = L2_3(L3_3)
        if not L2_3 then
          AnimalChecksOkay = false
          L2_3 = "laddersbase"
          L3_3 = HasAnimDictLoaded
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if not L3_3 then
            L3_3 = RequestAnimDict
            L4_3 = L2_3
            L3_3(L4_3)
            while true do
              L3_3 = HasAnimDictLoaded
              L4_3 = L2_3
              L3_3 = L3_3(L4_3)
              if L3_3 then
                break
              end
              L3_3 = Wait
              L4_3 = 10
              L3_3(L4_3)
            end
          end
          L3_3 = TaskPlayAnim
          L4_3 = L4_2
          L5_3 = "laddersbase"
          L6_3 = "get_off_bottom_front_stand"
          L7_3 = 8.0
          L8_3 = 8.0
          L9_3 = 1000
          L10_3 = 0
          L11_3 = 0
          L12_3 = false
          L13_3 = false
          L14_3 = false
          L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
          L3_3 = Wait
          L4_3 = 800
          L3_3(L4_3)
          L3_3 = ClearPedTasks
          L4_3 = L4_2
          L3_3(L4_3)
          L3_3 = OnPlayerLeaveAnimal
          L3_3()
          return
        end
        L2_3 = IsRidingAnimal
        if L2_3 then
          L2_3 = IsPedRagdoll
          L3_3 = L4_2
          L2_3 = L2_3(L3_3)
          if not L2_3 then
            L2_3 = AttachedEntity
            if nil == L2_3 then
              L2_3 = GetEntityAttachedTo
              L3_3 = L4_2
              L2_3 = L2_3(L3_3)
              AttachedEntity = L2_3
            end
            L2_3 = checkHighFall
            if L2_3 then
              L2_3 = GetEntityVelocity
              L3_3 = AttachedEntity
              L2_3 = L2_3(L3_3)
              L3_3 = IsPedFalling
              L4_3 = AttachedEntity
              L3_3 = L3_3(L4_3)
              if not L3_3 then
                L3_3 = L2_3.z
                L3_3 = L3_3 < -5.0
              end
              if L3_3 then
                L4_3 = L9_2
                if not L4_3 then
                  L4_3 = GetGameTimer
                  L4_3 = L4_3()
                  L9_2 = L4_3
                else
                  L4_3 = GetGameTimer
                  L4_3 = L4_3()
                  L5_3 = L9_2
                  L4_3 = L4_3 - L5_3
                  L5_3 = L10_2
                  if not (L4_3 >= L5_3) then
                    L4_3 = IsPedRagdoll
                    L5_3 = AttachedEntity
                    L4_3 = L4_3(L5_3)
                  end
                  if L4_3 then
                    L4_3 = PlaySoundFrontend
                    L5_3 = -1
                    L6_3 = "Whoosh_1s_L_to_R"
                    L7_3 = "MP_LOBBY_SOUNDS"
                    L8_3 = 1
                    L4_3(L5_3, L6_3, L7_3, L8_3)
                    L4_3 = nil
                    L9_2 = L4_3
                    AnimalChecksOkay = false
                    L4_3 = DropPlayerFromAnimal
                    L5_3 = AttachedEntity
                    L4_3(L5_3)
                    return
                  end
                end
              else
                L4_3 = nil
                L9_2 = L4_3
              end
            else
              L2_3 = nil
              L9_2 = L2_3
            end
            L2_3 = IsEntityInWater
            L3_3 = A0_2
            L2_3 = L2_3(L3_3)
            if L2_3 then
              L2_3 = SetPedCanRagdoll
              L3_3 = A0_2
              L4_3 = false
              L2_3(L3_3, L4_3)
              L2_3 = GetEntityMaxHealth
              L3_3 = AttachedEntity
              L2_3 = L2_3(L3_3)
              L3_3 = GetEntityHealth
              L4_3 = AttachedEntity
              L3_3 = L3_3(L4_3)
              if L2_3 > L3_3 then
                L3_3 = SetEntityHealth
                L4_3 = AttachedEntity
                L5_3 = L2_3
                L3_3(L4_3, L5_3)
              end
            end
            L2_3 = IsControlJustPressed
            L3_3 = 0
            L4_3 = 23
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = TutorialHorse
              if L2_3 then
                L2_3 = mostraInfo
                L2_3 = not L2_3
                mostraInfo = L2_3
              end
            end
            L2_3 = DoesEntityExist
            L3_3 = AttachedEntity
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              goto lbl_2451
            end
            AnimalChecksOkay = true
            L2_3 = IsPedRagdoll
            L3_3 = AttachedEntity
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = IsPedFatallyInjured
              L3_3 = AttachedEntity
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = IsPedFatallyInjured
                L3_3 = L4_2
                L2_3 = L2_3(L3_3)
                if not L2_3 then
                  goto lbl_204
                end
              end
            end
            AnimalChecksOkay = false
            L2_3 = SetPedCanRagdoll
            L3_3 = AttachedEntity
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = DropPlayerFromAnimal
            L3_3 = AttachedEntity
            L2_3(L3_3)
            L2_3 = dhorseprint
            L3_3 = "Chiudo per cavallo morto!"
            L2_3(L3_3)
            do return end
            ::lbl_204::
            L2_3 = IsEntityPlayingAnim
            L3_3 = L4_2
            L4_3 = "laddersbase"
            L5_3 = "get_off_bottom_front_stand"
            L6_3 = 3
            L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
            if not L2_3 then
              L2_3 = IsEntityPlayingAnim
              L3_3 = L4_2
              L4_3 = animBsA
              L5_3 = animBsB
              L6_3 = 3
              L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
              if not L2_3 then
                L2_3 = increasedflag
                L3_3 = customFlag
                if nil ~= L3_3 then
                  L2_3 = customFlag
                end
                L3_3 = faiAnim
                L4_3 = dicBase
                L5_3 = animBase
                L6_3 = -1
                L7_3 = L2_3
                L3_3(L4_3, L5_3, L6_3, L7_3)
                L3_3 = IsControlPressed
                L4_3 = 0
                L5_3 = 25
                L3_3 = L3_3(L4_3, L5_3)
                if not L3_3 then
                  L3_3 = IsDisabledControlPressed
                  L4_3 = 0
                  L5_3 = 25
                  L3_3 = L3_3(L4_3, L5_3)
                  if not L3_3 then
                end
                else
                  L3_3 = AttachedEntity
                  if nil ~= L3_3 then
                    L3_3 = AttachedEntity
                    if 0 ~= L3_3 then
                      L3_3 = DoesEntityExist
                      L4_3 = AttachedEntity
                      L3_3 = L3_3(L4_3)
                      if L3_3 then
                        L3_3 = IsPedMoving
                        L4_3 = AttachedEntity
                        L3_3 = L3_3(L4_3)
                        if L3_3 then
                          L3_3 = eroVeloce
                          if L3_3 then
                            L3_3 = GetGameplayCamRot
                            L4_3 = 2
                            L3_3 = L3_3(L4_3)
                            L4_3 = cam
                            if nil ~= L4_3 then
                              L4_3 = GetCamRot
                              L5_3 = cam
                              L6_3 = 2
                              L4_3 = L4_3(L5_3, L6_3)
                              L3_3 = L4_3
                            end
                            L4_3 = L3_3.z
                            L5_3 = GetEntityHeading
                            L6_3 = AttachedEntity
                            L5_3 = L5_3(L6_3)
                            L6_3 = L4_3 - L5_3
                            L6_3 = L6_3 + 360.0
                            L6_3 = L6_3 % 360.0
                            L7_3 = 180.0
                            if L6_3 > L7_3 then
                              L6_3 = L6_3 - 360.0
                            end
                            L7_3 = 3.0
                            L8_3 = math
                            L8_3 = L8_3.abs
                            L9_3 = L6_3
                            L8_3 = L8_3(L9_3)
                            L9_3 = 0.3
                            if L8_3 > L9_3 then
                              L8_3 = math
                              L8_3 = L8_3.min
                              L9_3 = L7_3
                              L10_3 = math
                              L10_3 = L10_3.abs
                              L11_3 = L6_3
                              L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3 = L10_3(L11_3)
                              L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
                              if L6_3 > 0 then
                                L9_3 = 1
                                if L9_3 then
                                  goto lbl_311
                                end
                              end
                              L9_3 = -1
                              ::lbl_311::
                              L10_3 = L8_3 * L9_3
                              L10_3 = L5_3 + L10_3
                              L11_3 = SetEntityHeading
                              L12_3 = AttachedEntity
                              L13_3 = L10_3
                              L11_3(L12_3, L13_3)
                              L11_3 = syncRot
                              L12_3 = AttachedEntity
                              L11_3(L12_3)
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            L2_3 = DisableControlAction
            L3_3 = 0
            L4_3 = 73
            L2_3(L3_3, L4_3)
            L2_3 = DisableControlAction
            L3_3 = 1
            L4_3 = 73
            L2_3(L3_3, L4_3)
            L2_3 = DisableControlAction
            L3_3 = 2
            L4_3 = 73
            L2_3(L3_3, L4_3)
            L2_3 = HorseCanJump
            if L2_3 then
              L2_3 = IsPedFalling
              L3_3 = AttachedEntity
              L2_3 = L2_3(L3_3)
              if not L2_3 then
                L2_3 = SetPedCanRagdoll
                L3_3 = AttachedEntity
                L4_3 = false
                L2_3(L3_3, L4_3)
                L2_3 = IsEntityInWater
                L3_3 = AttachedEntity
                L2_3 = L2_3(L3_3)
                if not L2_3 then
                  L2_3 = IsControlPressed
                  L3_3 = 0
                  L4_3 = 44
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = IsDisabledControlPressed
                    L3_3 = 0
                    L4_3 = 44
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      goto lbl_382
                    end
                  end
                  L2_3 = GetEntityRotation
                  L3_3 = AttachedEntity
                  L2_3 = L2_3(L3_3)
                  L2_3 = L2_3.x
                  if L2_3 < 20.0 then
                    L2_3 = GetEntityRotation
                    L3_3 = AttachedEntity
                    L2_3 = L2_3(L3_3)
                    L3_3 = SetEntityRotation
                    L4_3 = AttachedEntity
                    L5_3 = L2_3.x
                    L6_3 = 1.0 * L1_3
                    L5_3 = L5_3 + L6_3
                    L6_3 = L2_3.y
                    L7_3 = L2_3.z
                    L3_3(L4_3, L5_3, L6_3, L7_3)
                  end
                  ::lbl_382::
                  L2_3 = IsControlPressed
                  L3_3 = 0
                  L4_3 = 44
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = IsDisabledControlPressed
                    L3_3 = 0
                    L4_3 = 44
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      L2_3 = RayCastGamePlayCamera
                      L3_3 = AttachedEntity
                      L4_3 = L4_2
                      L5_3 = L13_2
                      L2_3(L3_3, L4_3, L5_3)
                    end
                  end
                  L2_3 = GetEntityRotation
                  L3_3 = AttachedEntity
                  L2_3 = L2_3(L3_3)
                  L2_3 = L2_3.x
                  if L2_3 > 75.0 then
                    L2_3 = GetEntityRotation
                    L3_3 = AttachedEntity
                    L2_3 = L2_3(L3_3)
                    L2_3 = L2_3.x
                    if L2_3 < 90.0 then
                      goto lbl_423
                    end
                  end
                  L2_3 = GetEntityRotation
                  L3_3 = AttachedEntity
                  L2_3 = L2_3(L3_3)
                  L2_3 = L2_3.x
                  if L2_3 < -75.0 then
                    L2_3 = GetEntityRotation
                    L3_3 = AttachedEntity
                    L2_3 = L2_3(L3_3)
                    L2_3 = L2_3.x
                    ::lbl_423::
                    if L2_3 > -90.0 then
                      L2_3 = exports
                      L2_3 = L2_3.striano_ridehorse
                      L3_3 = L2_3
                      L2_3 = L2_3.cadoCavallo
                      L2_3(L3_3)
                    end
                  end
                end
              end
            end
            L2_3 = L12_2
            if nil ~= L2_3 then
              L2_3 = L12_2
              if L2_3 then
                L2_3 = ApplyForceToEntity
                L3_3 = AttachedEntity
                L4_3 = 1
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = -0.3
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
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = GoUpCoco
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = GoUpCoco
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    goto lbl_475
                  end
                end
                L2_3 = GetEntityRotation
                L3_3 = AttachedEntity
                L2_3 = L2_3(L3_3)
                L3_3 = SetEntityRotation
                L4_3 = AttachedEntity
                L5_3 = L2_3.x
                L6_3 = 0.3 * L1_3
                L5_3 = L5_3 + L6_3
                L6_3 = L2_3.y
                L7_3 = L2_3.z
                L3_3(L4_3, L5_3, L6_3, L7_3)
                goto lbl_500
                ::lbl_475::
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = GoDownCoco
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = GoDownCoco
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    goto lbl_500
                  end
                end
                L2_3 = GetEntityRotation
                L3_3 = AttachedEntity
                L2_3 = L2_3(L3_3)
                L3_3 = SetEntityRotation
                L4_3 = AttachedEntity
                L5_3 = L2_3.x
                L6_3 = 0.3 * L1_3
                L5_3 = L5_3 - L6_3
                L6_3 = L2_3.y
                L7_3 = L2_3.z
                L3_3(L4_3, L5_3, L6_3, L7_3)
                ::lbl_500::
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = 21
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = 21
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    goto lbl_543
                  end
                end
                L2_3 = DoesEntityExist
                L3_3 = AttachedEntity
                L2_3 = L2_3(L3_3)
                if L2_3 then
                  L2_3 = L14_2
                  if L2_3 then
                    L2_3 = SetPedMoveRateOverride
                    L3_3 = AttachedEntity
                    L4_3 = fishSpeed
                    if not L4_3 then
                      L4_3 = 1.0
                    end
                    L2_3(L3_3, L4_3)
                  end
                end
                L2_3 = GetOffsetFromEntityInWorldCoords
                L3_3 = AttachedEntity
                L4_3 = 0.0
                L5_3 = 1.5
                L6_3 = -0.5
                L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                L3_3 = TaskGoStraightToCoord
                L4_3 = AttachedEntity
                L5_3 = L2_3
                L6_3 = 1.5
                L7_3 = 1000
                L8_3 = GetEntityHeading
                L9_3 = AttachedEntity
                L8_3 = L8_3(L9_3)
                L9_3 = 0.0
                L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
              end
            end
            ::lbl_543::
            L2_3 = AnimalChecksOkay
            if not L2_3 then
              goto lbl_2451
            end
            L2_3 = ActiveMenu
            if L2_3 then
              goto lbl_2451
            end
            L2_3 = Animal
            L2_3 = L2_3.InControl
            if not L2_3 then
              goto lbl_2451
            end
            L2_3 = WhileOnHorse
            L2_3()
            L2_3 = IsControlJustPressed
            L3_3 = 0
            L4_3 = GoForwardKey
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsControlJustPressed
              L3_3 = 0
              L4_3 = LeftKeyHorseRot
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = IsControlJustPressed
                L3_3 = 0
                L4_3 = RightKeyHorseRot
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  goto lbl_646
                end
              end
            end
            L2_3 = L12_2
            if not L2_3 then
              L2_3 = IsPedAnimale
              L3_3 = A0_2
              L2_3 = L2_3(L3_3)
              if L2_3 then
                L2_3 = IsEntityPlayingAnim
                L3_3 = A0_2
                L4_3 = "creatures@"
                L5_3 = myAnimalAnim
                L6_3 = "@move"
                L4_3 = L4_3 .. L5_3 .. L6_3
                L5_3 = "idle_turn_r"
                L6_3 = 3
                L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                if not L2_3 then
                  L2_3 = IsEntityPlayingAnim
                  L3_3 = A0_2
                  L4_3 = "creatures@"
                  L5_3 = myAnimalAnim
                  L6_3 = "@move"
                  L4_3 = L4_3 .. L5_3 .. L6_3
                  L5_3 = "idle_turn_l"
                  L6_3 = 3
                  L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                  if not L2_3 then
                    goto lbl_646
                  end
                end
                L2_3 = L5_1
                L2_3()
                L2_3 = myAnimalAnim
                if "rottweiler" == L2_3 or "boar" == L2_3 then
                  L2_3 = "deer"
                end
                L3_3 = "creatures@"
                L4_3 = L2_3
                L5_3 = "@move"
                L3_3 = L3_3 .. L4_3 .. L5_3
                L4_3 = "walk_bck_dwn"
                L5_3 = HasAnimDictLoaded
                L6_3 = L3_3
                L5_3 = L5_3(L6_3)
                if not L5_3 then
                  L5_3 = RequestAnimDict
                  L6_3 = L3_3
                  L5_3(L6_3)
                  while true do
                    L5_3 = HasAnimDictLoaded
                    L6_3 = L3_3
                    L5_3 = L5_3(L6_3)
                    if L5_3 then
                      break
                    end
                    L5_3 = Wait
                    L6_3 = 10
                    L5_3(L6_3)
                  end
                end
                L5_3 = TaskPlayAnim
                L6_3 = A0_2
                L7_3 = L3_3
                L8_3 = L4_3
                L9_3 = 2.0
                L10_3 = 2.0
                L11_3 = 150
                L12_3 = 1
                L13_3 = 0
                L14_3 = false
                L15_3 = false
                L16_3 = false
                L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
              end
            end
            ::lbl_646::
            L2_3 = GetGameTimer
            L2_3 = L2_3()
            L3_3 = L11_2
            L2_3 = L2_3 - L3_3
            L3_3 = 1000
            if L2_3 >= L3_3 then
              L2_3 = GetGameTimer
              L2_3 = L2_3()
              L11_2 = L2_3
              L2_3 = IsEntityPlayingAnim
              L3_3 = L4_2
              L4_3 = animBsA
              L5_3 = animBsB
              L6_3 = 3
              L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
              if L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = RightKeyHorseRot
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsControlPressed
                  L3_3 = 0
                  L4_3 = LeftKeyHorseRot
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = IsControlPressed
                    L3_3 = 0
                    L4_3 = GoForwardKey
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      L2_3 = IsEntityPlayingAnim
                      L3_3 = A0_2
                      L4_3 = "creatures@"
                      L5_3 = myAnimalAnim
                      L6_3 = "@move"
                      L4_3 = L4_3 .. L5_3 .. L6_3
                      L5_3 = "idle_turn_r"
                      L6_3 = 3
                      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                      if not L2_3 then
                        L2_3 = IsEntityPlayingAnim
                        L3_3 = A0_2
                        L4_3 = "creatures@"
                        L5_3 = myAnimalAnim
                        L6_3 = "@move"
                        L4_3 = L4_3 .. L5_3 .. L6_3
                        L5_3 = "idle_turn_l"
                        L6_3 = 3
                        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                        if not L2_3 then
                          L2_3 = ClearPedSecondaryTask
                          L3_3 = L4_2
                          L2_3(L3_3)
                          L2_3 = faiAnim
                          L3_3 = dicBase
                          L4_3 = animBase
                          L5_3 = -1
                          L6_3 = increasedflag
                          L2_3(L3_3, L4_3, L5_3, L6_3)
                        end
                      end
                    else
                      L2_3 = ClearPedSecondaryTask
                      L3_3 = L4_2
                      L2_3(L3_3)
                    end
                  end
                end
              end
            end
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = LeftKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = RightKeyHorseRot
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = GoForwardKey
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsControlPressed
                  L3_3 = 0
                  L4_3 = GoBackwardKey
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = faiAnim
                    L3_3 = animBsA
                    L4_3 = animBsB
                    L5_3 = -1
                    L6_3 = 49
                    L2_3(L3_3, L4_3, L5_3, L6_3)
                  end
                end
                L2_3 = 130.0
                L3_3 = 0.03
                L4_3 = IsDisabledControlPressed
                L5_3 = 0
                L6_3 = RunHorseKey
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = IsControlPressed
                  L5_3 = 0
                  L6_3 = RunHorseKey
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsControlPressed
                    L5_3 = 0
                    L6_3 = SprintHorseKey
                    L4_3 = L4_3(L5_3, L6_3)
                    if not L4_3 then
                      L4_3 = IsDisabledControlPressed
                      L5_3 = 0
                      L6_3 = SprintHorseKey
                      L4_3 = L4_3(L5_3, L6_3)
                      if not L4_3 then
                        L4_3 = eroVeloce
                        if not L4_3 then
                          goto lbl_778
                        end
                      end
                    end
                  end
                end
                L2_3 = 180.0
                ::lbl_778::
                L4_3 = GetFrameTime
                L4_3 = L4_3()
                if L3_3 < L4_3 then
                  L4_3 = L3_3
                end
                L5_3 = GetEntityRotation
                L6_3 = A0_2
                L7_3 = 2
                L5_3 = L5_3(L6_3, L7_3)
                L6_3 = IsControlPressed
                L7_3 = 0
                L8_3 = GoForwardKey
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = miMuovo
                  if nil ~= L6_3 then
                    L6_3 = ClearPedSecondaryTask
                    L7_3 = A0_2
                    L6_3(L7_3)
                    miMuovo = nil
                    controlloMovement = 0
                  end
                end
                L6_3 = backward
                if L6_3 then
                  L6_3 = -1.0
                  if L6_3 then
                    goto lbl_808
                  end
                end
                L6_3 = 1.0
                ::lbl_808::
                L7_3 = L5_3.z
                L8_3 = L6_3 * L2_3
                L8_3 = L8_3 * L4_3
                L7_3 = L7_3 + L8_3
                L7_3 = L7_3 % 360.0
                L8_3 = SetEntityHeading
                L9_3 = A0_2
                L10_3 = L7_3
                L8_3(L9_3, L10_3)
                L8_3 = SetEntityRotation
                L9_3 = A0_2
                L10_3 = L5_3.x
                L11_3 = L5_3.y
                L12_3 = L7_3
                L13_3 = 2
                L14_3 = false
                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                L8_3 = syncRot
                L9_3 = A0_2
                L8_3(L9_3)
              end
            end
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = LeftKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = RightKeyHorseRot
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = CanPress
                L3_3 = LeftKeyHorseRot
                L2_3 = L2_3(L3_3)
                if L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = 25
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = IsControlPressed
                    L3_3 = 0
                    L4_3 = 25
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      L2_3 = canReise
                      L2_3 = L2_3()
                      if L2_3 then
                        L2_3 = L12_2
                        if not L2_3 then
                          L2_3 = IsEntityPlayingAnim
                          L3_3 = A0_2
                          L4_3 = "creatures@"
                          L5_3 = myAnimalAnim
                          L6_3 = "@move"
                          L4_3 = L4_3 .. L5_3 .. L6_3
                          L5_3 = "idle_turn_r"
                          L6_3 = 3
                          L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                          if L2_3 then
                            L2_3 = IsPedAnimale
                            L3_3 = A0_2
                            L2_3 = L2_3(L3_3)
                            if L2_3 then
                              L2_3 = L5_1
                              L2_3()
                              L2_3 = myAnimalAnim
                              if "rottweiler" == L2_3 or "boar" == L2_3 then
                                L2_3 = "deer"
                              end
                              L3_3 = "creatures@"
                              L4_3 = L2_3
                              L5_3 = "@move"
                              L3_3 = L3_3 .. L4_3 .. L5_3
                              L4_3 = "walk_bck_dwn"
                              L5_3 = HasAnimDictLoaded
                              L6_3 = L3_3
                              L5_3 = L5_3(L6_3)
                              if not L5_3 then
                                L5_3 = RequestAnimDict
                                L6_3 = L3_3
                                L5_3(L6_3)
                                while true do
                                  L5_3 = HasAnimDictLoaded
                                  L6_3 = L3_3
                                  L5_3 = L5_3(L6_3)
                                  if L5_3 then
                                    break
                                  end
                                  L5_3 = Wait
                                  L6_3 = 10
                                  L5_3(L6_3)
                                end
                              end
                              L5_3 = TaskPlayAnim
                              L6_3 = A0_2
                              L7_3 = L3_3
                              L8_3 = L4_3
                              L9_3 = 2.0
                              L10_3 = 2.0
                              L11_3 = 150
                              L12_3 = 1
                              L13_3 = 0
                              L14_3 = false
                              L15_3 = false
                              L16_3 = false
                              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                            end
                          end
                        end
                        L2_3 = L12_2
                        if not L2_3 then
                          L2_3 = IsPedAnimale
                          L3_3 = A0_2
                          L2_3 = L2_3(L3_3)
                          if L2_3 then
                            L2_3 = IsControlPressed
                            L3_3 = 0
                            L4_3 = RightKeyHorseRot
                            L2_3 = L2_3(L3_3, L4_3)
                            if not L2_3 then
                              L2_3 = possoGirare
                              if L2_3 then
                                L2_3 = IsEntityPlayingAnim
                                L3_3 = A0_2
                                L4_3 = "rick3d@horsepassage"
                                L5_3 = "horsepassage"
                                L6_3 = 3
                                L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                                if not L2_3 then
                                  L2_3 = backward
                                  if not L2_3 then
                                    L2_3 = eroVeloce
                                    if not L2_3 then
                                      L2_3 = IsControlPressed
                                      L3_3 = 0
                                      L4_3 = RightKeyHorseRot
                                      L2_3 = L2_3(L3_3, L4_3)
                                      if not L2_3 then
                                        L2_3 = IsControlPressed
                                        L3_3 = 0
                                        L4_3 = GoForwardKey
                                        L2_3 = L2_3(L3_3, L4_3)
                                        if not L2_3 then
                                          L2_3 = "creatures@"
                                          L3_3 = myAnimalAnim
                                          L4_3 = "@move"
                                          L2_3 = L2_3 .. L3_3 .. L4_3
                                          L3_3 = "idle_turn_l"
                                          L4_3 = HasAnimDictLoaded
                                          L5_3 = L2_3
                                          L4_3 = L4_3(L5_3)
                                          if not L4_3 then
                                            L4_3 = RequestAnimDict
                                            L5_3 = L2_3
                                            L4_3(L5_3)
                                            while true do
                                              L4_3 = HasAnimDictLoaded
                                              L5_3 = L2_3
                                              L4_3 = L4_3(L5_3)
                                              if L4_3 then
                                                break
                                              end
                                              L4_3 = Wait
                                              L5_3 = 10
                                              L4_3(L5_3)
                                            end
                                          end
                                          L4_3 = IsEntityPlayingAnim
                                          L5_3 = A0_2
                                          L6_3 = L2_3
                                          L7_3 = L3_3
                                          L8_3 = 3
                                          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                                          if not L4_3 then
                                            L4_3 = TaskPlayAnim
                                            L5_3 = A0_2
                                            L6_3 = L2_3
                                            L7_3 = L3_3
                                            L8_3 = 2.4
                                            L9_3 = 2.4
                                            L10_3 = -1
                                            L11_3 = 1
                                            L12_3 = 0
                                            L13_3 = false
                                            L14_3 = false
                                            L15_3 = false
                                            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                                            L4_3 = lastAnims
                                            L4_3.a = L2_3
                                            L4_3 = lastAnims
                                            L4_3.b = L3_3
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
            L2_3 = IsControlJustReleased
            L3_3 = 0
            L4_3 = LeftKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = faiAnim
              L3_3 = dicBase
              L4_3 = animBase
              L5_3 = -1
              L6_3 = increasedflag
              L2_3(L3_3, L4_3, L5_3, L6_3)
            end
            L2_3 = IsControlJustReleased
            L3_3 = 0
            L4_3 = LeftKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = CanPress
              L3_3 = LeftKeyHorseRot
              L2_3 = L2_3(L3_3)
              if L2_3 then
                L2_3 = StartKeyFlood
                L3_3 = LeftKeyHorseRot
                L4_3 = 750
                L2_3(L3_3, L4_3)
              end
            end
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = RightKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = LeftKeyHorseRot
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = GoForwardKey
                L2_3 = L2_3(L3_3, L4_3)
                if not L2_3 then
                  L2_3 = IsControlPressed
                  L3_3 = 0
                  L4_3 = GoBackwardKey
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = faiAnim
                    L3_3 = animBsA
                    L4_3 = animBsB
                    L5_3 = -1
                    L6_3 = 49
                    L2_3(L3_3, L4_3, L5_3, L6_3)
                  end
                end
                L2_3 = 130.0
                L3_3 = 0.03
                L4_3 = IsDisabledControlPressed
                L5_3 = 0
                L6_3 = RunHorseKey
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = IsControlPressed
                  L5_3 = 0
                  L6_3 = RunHorseKey
                  L4_3 = L4_3(L5_3, L6_3)
                  if not L4_3 then
                    L4_3 = IsControlPressed
                    L5_3 = 0
                    L6_3 = SprintHorseKey
                    L4_3 = L4_3(L5_3, L6_3)
                    if not L4_3 then
                      L4_3 = IsDisabledControlPressed
                      L5_3 = 0
                      L6_3 = SprintHorseKey
                      L4_3 = L4_3(L5_3, L6_3)
                      if not L4_3 then
                        L4_3 = eroVeloce
                        if not L4_3 then
                          goto lbl_1104
                        end
                      end
                    end
                  end
                end
                L2_3 = 180.0
                ::lbl_1104::
                L4_3 = GetFrameTime
                L4_3 = L4_3()
                if L3_3 < L4_3 then
                  L4_3 = L3_3
                end
                L5_3 = GetEntityRotation
                L6_3 = A0_2
                L7_3 = 2
                L5_3 = L5_3(L6_3, L7_3)
                L6_3 = IsControlPressed
                L7_3 = 0
                L8_3 = GoForwardKey
                L6_3 = L6_3(L7_3, L8_3)
                if L6_3 then
                  L6_3 = miMuovo
                  if nil ~= L6_3 then
                    L6_3 = ClearPedSecondaryTask
                    L7_3 = A0_2
                    L6_3(L7_3)
                    miMuovo = nil
                    controlloMovement = 0
                  end
                end
                L6_3 = nil
                L7_3 = backward
                if L7_3 then
                  L6_3 = 1.0
                else
                  L6_3 = -1.0
                end
                L7_3 = L5_3.z
                L8_3 = L6_3 * L2_3
                L8_3 = L8_3 * L4_3
                L7_3 = L7_3 + L8_3
                L7_3 = L7_3 % 360.0
                L8_3 = SetEntityHeading
                L9_3 = A0_2
                L10_3 = L7_3
                L8_3(L9_3, L10_3)
                L8_3 = SetEntityRotation
                L9_3 = A0_2
                L10_3 = L5_3.x
                L11_3 = L5_3.y
                L12_3 = L7_3
                L13_3 = 2
                L14_3 = false
                L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                L8_3 = syncRot
                L9_3 = A0_2
                L8_3(L9_3)
              end
            end
            L2_3 = IsControlPressed
            L3_3 = 0
            L4_3 = RightKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = LeftKeyHorseRot
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = CanPress
                L3_3 = RightKeyHorseRot
                L2_3 = L2_3(L3_3)
                if L2_3 then
                  L2_3 = IsDisabledControlPressed
                  L3_3 = 0
                  L4_3 = 25
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = IsControlPressed
                    L3_3 = 0
                    L4_3 = 25
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      L2_3 = canReise
                      L2_3 = L2_3()
                      if L2_3 then
                        L2_3 = L12_2
                        if not L2_3 then
                          L2_3 = IsEntityPlayingAnim
                          L3_3 = A0_2
                          L4_3 = "creatures@"
                          L5_3 = myAnimalAnim
                          L6_3 = "@move"
                          L4_3 = L4_3 .. L5_3 .. L6_3
                          L5_3 = "idle_turn_l"
                          L6_3 = 3
                          L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                          if L2_3 then
                            L2_3 = IsPedAnimale
                            L3_3 = A0_2
                            L2_3 = L2_3(L3_3)
                            if L2_3 then
                              L2_3 = L5_1
                              L2_3()
                              L2_3 = myAnimalAnim
                              if "rottweiler" == L2_3 or "boar" == L2_3 then
                                L2_3 = "deer"
                              end
                              L3_3 = "creatures@"
                              L4_3 = L2_3
                              L5_3 = "@move"
                              L3_3 = L3_3 .. L4_3 .. L5_3
                              L4_3 = "walk_bck_dwn"
                              L5_3 = HasAnimDictLoaded
                              L6_3 = L3_3
                              L5_3 = L5_3(L6_3)
                              if not L5_3 then
                                L5_3 = RequestAnimDict
                                L6_3 = L3_3
                                L5_3(L6_3)
                                while true do
                                  L5_3 = HasAnimDictLoaded
                                  L6_3 = L3_3
                                  L5_3 = L5_3(L6_3)
                                  if L5_3 then
                                    break
                                  end
                                  L5_3 = Wait
                                  L6_3 = 10
                                  L5_3(L6_3)
                                end
                              end
                              L5_3 = TaskPlayAnim
                              L6_3 = A0_2
                              L7_3 = L3_3
                              L8_3 = L4_3
                              L9_3 = 2.0
                              L10_3 = 2.0
                              L11_3 = 150
                              L12_3 = 1
                              L13_3 = 0
                              L14_3 = false
                              L15_3 = false
                              L16_3 = false
                              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                            end
                          end
                        end
                        L2_3 = L12_2
                        if not L2_3 then
                          L2_3 = IsControlPressed
                          L3_3 = 0
                          L4_3 = LeftKeyHorseRot
                          L2_3 = L2_3(L3_3, L4_3)
                          if not L2_3 then
                            L2_3 = possoGirare
                            if L2_3 then
                              L2_3 = IsEntityPlayingAnim
                              L3_3 = A0_2
                              L4_3 = "rick3d@horsepassage"
                              L5_3 = "horsepassage"
                              L6_3 = 3
                              L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                              if not L2_3 then
                                L2_3 = backward
                                if not L2_3 then
                                  L2_3 = eroVeloce
                                  if not L2_3 then
                                    L2_3 = IsControlPressed
                                    L3_3 = 0
                                    L4_3 = LeftKeyHorseRot
                                    L2_3 = L2_3(L3_3, L4_3)
                                    if not L2_3 then
                                      L2_3 = IsControlPressed
                                      L3_3 = 0
                                      L4_3 = GoForwardKey
                                      L2_3 = L2_3(L3_3, L4_3)
                                      if not L2_3 then
                                        L2_3 = IsPedAnimale
                                        L3_3 = A0_2
                                        L2_3 = L2_3(L3_3)
                                        if L2_3 then
                                          L2_3 = "creatures@"
                                          L3_3 = myAnimalAnim
                                          L4_3 = "@move"
                                          L2_3 = L2_3 .. L3_3 .. L4_3
                                          L3_3 = "idle_turn_r"
                                          L4_3 = HasAnimDictLoaded
                                          L5_3 = L2_3
                                          L4_3 = L4_3(L5_3)
                                          if not L4_3 then
                                            L4_3 = RequestAnimDict
                                            L5_3 = L2_3
                                            L4_3(L5_3)
                                            while true do
                                              L4_3 = HasAnimDictLoaded
                                              L5_3 = L2_3
                                              L4_3 = L4_3(L5_3)
                                              if L4_3 then
                                                break
                                              end
                                              L4_3 = Wait
                                              L5_3 = 10
                                              L4_3(L5_3)
                                            end
                                          end
                                          L4_3 = IsEntityPlayingAnim
                                          L5_3 = A0_2
                                          L6_3 = L2_3
                                          L7_3 = L3_3
                                          L8_3 = 3
                                          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                                          if not L4_3 then
                                            L4_3 = TaskPlayAnim
                                            L5_3 = A0_2
                                            L6_3 = L2_3
                                            L7_3 = L3_3
                                            L8_3 = 2.4
                                            L9_3 = 2.4
                                            L10_3 = -1
                                            L11_3 = 1
                                            L12_3 = 0
                                            L13_3 = false
                                            L14_3 = false
                                            L15_3 = false
                                            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                                            L4_3 = lastAnims
                                            L4_3.a = L2_3
                                            L4_3 = lastAnims
                                            L4_3.b = L3_3
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
            L2_3 = IsControlJustReleased
            L3_3 = 0
            L4_3 = RightKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = faiAnim
              L3_3 = dicBase
              L4_3 = animBase
              L5_3 = -1
              L6_3 = increasedflag
              L2_3(L3_3, L4_3, L5_3, L6_3)
            end
            L2_3 = IsControlJustReleased
            L3_3 = 0
            L4_3 = RightKeyHorseRot
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = CanPress
              L3_3 = RightKeyHorseRot
              L2_3 = L2_3(L3_3)
              if L2_3 then
                L2_3 = StartKeyFlood
                L3_3 = RightKeyHorseRot
                L4_3 = 750
                L2_3(L3_3, L4_3)
              end
            end
            L2_3 = L12_2
            if not L2_3 then
              L2_3 = IsControlPressed
              L3_3 = 0
              L4_3 = 210
              L2_3 = L2_3(L3_3, L4_3)
              if L2_3 then
                L2_3 = IsEntityPlayingAnim
                L3_3 = A0_2
                L4_3 = "rick3d@horsepassage"
                L5_3 = "horsepassage"
                L6_3 = 3
                L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                if not L2_3 then
                  L2_3 = AnimHorseBalla
                  L3_3 = A0_2
                  L2_3(L3_3)
                end
              else
                L2_3 = IsEntityPlayingAnim
                L3_3 = A0_2
                L4_3 = "rick3d@horsepassage"
                L5_3 = "horsepassage"
                L6_3 = 3
                L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
                if L2_3 then
                  L2_3 = ClearPedTasks
                  L3_3 = A0_2
                  L2_3(L3_3)
                end
              end
            end
            L2_3 = MyModelSpeedVar
            if L2_3 > 0 then
              L2_3 = L12_2
              if not L2_3 then
                L2_3 = DoesEntityExist
                L3_3 = A0_2
                L2_3 = L2_3(L3_3)
                if L2_3 then
                  L2_3 = L14_2
                  if L2_3 then
                    L2_3 = SetEntityAnimSpeed
                    L3_3 = A0_2
                    L4_3 = myRunStyle
                    L5_3 = "gallop"
                    L6_3 = MyModelSpeedVar
                    L2_3(L3_3, L4_3, L5_3, L6_3)
                  end
                end
              end
            end
            L2_3 = eroVeloce
            if not L2_3 then
              L2_3 = TutorialHorse
              if L2_3 then
                L2_3 = mostraInfo
                if L2_3 then
                  L2_3 = TutorialHorseInfo
                  L3_3 = L12_2
                  L2_3(L3_3)
                end
              end
              L2_3 = backward
              if not L2_3 then
                L2_3 = L12_2
                if not L2_3 then
                  L2_3 = IsControlPressed
                  L3_3 = 0
                  L4_3 = SprintHorseKey
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = IsDisabledControlPressed
                    L3_3 = 0
                    L4_3 = SprintHorseKey
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      goto lbl_1902
                    end
                  end
                  L2_3 = L12_2
                  if not L2_3 then
                    L2_3 = IsPedAnimale
                    L3_3 = A0_2
                    L2_3 = L2_3(L3_3)
                    if L2_3 then
                      miMuovo = nil
                      controlloMovement = 0
                      L2_3 = ClearPedSecondaryTask
                      L3_3 = L4_2
                      L2_3(L3_3)
                      eroVeloce = true
                      L2_3 = myRunStyle
                      L3_3 = "gallop"
                      L4_3 = HasAnimDictLoaded
                      L5_3 = L2_3
                      L4_3 = L4_3(L5_3)
                      if not L4_3 then
                        L4_3 = RequestAnimDict
                        L5_3 = L2_3
                        L4_3(L5_3)
                        while true do
                          L4_3 = HasAnimDictLoaded
                          L5_3 = L2_3
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
                      L5_3 = A0_2
                      L6_3 = L2_3
                      L7_3 = L3_3
                      L8_3 = 15.0
                      L9_3 = 15.0
                      L10_3 = -1
                      L11_3 = 1
                      L12_3 = 0
                      L13_3 = false
                      L14_3 = false
                      L15_3 = false
                      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
                      L4_3 = lastAnims
                      L4_3.a = L2_3
                      L4_3 = lastAnims
                      L4_3.b = L3_3
                      while true do
                        L4_3 = eroVeloce
                        if not L4_3 then
                          break
                        end
                        L4_3 = IsControlPressed
                        L5_3 = 0
                        L6_3 = GoBackwardKey
                        L4_3 = L4_3(L5_3, L6_3)
                        if L4_3 then
                          break
                        end
                        L4_3 = Wait
                        L5_3 = 0
                        L4_3(L5_3)
                        L4_3 = GetEntityVelocity
                        L5_3 = A0_2
                        L4_3 = L4_3(L5_3)
                        L5_3 = IsPedFalling
                        L6_3 = A0_2
                        L5_3 = L5_3(L6_3)
                        if not L5_3 then
                          L5_3 = L4_3.z
                          L5_3 = L5_3 < -5.0
                        end
                        if L5_3 then
                          break
                        end
                        L6_3 = GetEntityCoords
                        L7_3 = A0_2
                        L6_3 = L6_3(L7_3)
                        L7_3 = GetEntityForwardVector
                        L8_3 = A0_2
                        L7_3 = L7_3(L8_3)
                        L8_3 = table
                        L8_3 = L8_3.unpack
                        L9_3 = L7_3 * 4.0
                        L9_3 = L6_3 + L9_3
                        L8_3, L9_3, L10_3 = L8_3(L9_3)
                        L11_3 = GetEntityCoords
                        L12_3 = A0_2
                        L11_3 = L11_3(L12_3)
                        L12_3 = GetEntityForwardVector
                        L13_3 = A0_2
                        L12_3 = L12_3(L13_3)
                        L13_3 = table
                        L13_3 = L13_3.unpack
                        L14_3 = L12_3 * 2.5
                        L14_3 = L11_3 + L14_3
                        L13_3, L14_3, L15_3 = L13_3(L14_3)
                        L16_3 = dustballa
                        if nil == L16_3 then
                          L16_3 = PlayEffect
                          L17_3 = "core"
                          L18_3 = "ped_foot_sand_deep"
                          L19_3 = vector3
                          L20_3 = L8_3
                          L21_3 = L9_3
                          L22_3 = L10_3 - 1.3
                          L19_3 = L19_3(L20_3, L21_3, L22_3)
                          L20_3 = 4.5
                          L21_3 = vector3
                          L22_3 = 0.0
                          L23_3 = 0.0
                          L24_3 = 0.0
                          L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3 = L21_3(L22_3, L23_3, L24_3)
                          L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
                          dustballa = L16_3
                          L16_3 = PlayEffect
                          L17_3 = "core"
                          L18_3 = "ped_foot_sand_deep"
                          L19_3 = vector3
                          L20_3 = L13_3
                          L21_3 = L14_3
                          L22_3 = L15_3 - 1.3
                          L19_3 = L19_3(L20_3, L21_3, L22_3)
                          L20_3 = 4.5
                          L21_3 = vector3
                          L22_3 = 0.0
                          L23_3 = 0.0
                          L24_3 = 0.0
                          L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3 = L21_3(L22_3, L23_3, L24_3)
                          L16_3 = L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
                          dustballa2 = L16_3
                          L16_3 = GetGameTimer
                          L16_3 = L16_3()
                          dusttimer = L16_3
                        else
                          L16_3 = GetGameTimer
                          L16_3 = L16_3()
                          L17_3 = dusttimer
                          L16_3 = L16_3 - L17_3
                          L17_3 = 255
                          if L16_3 >= L17_3 then
                            L16_3 = StopParticleFxLooped
                            L17_3 = dustballa
                            L18_3 = 0
                            L16_3(L17_3, L18_3)
                            L16_3 = StopParticleFxLooped
                            L17_3 = dustballa
                            L18_3 = 0
                            L16_3(L17_3, L18_3)
                            dusttimer = 0
                            dustballa = nil
                            dustballa2 = nil
                          end
                        end
                        L16_3 = faiAnim
                        L17_3 = dicBase
                        L18_3 = animBase
                        L19_3 = -1
                        L20_3 = flags
                        L16_3(L17_3, L18_3, L19_3, L20_3)
                        L16_3 = IsControlPressed
                        L17_3 = 0
                        L18_3 = LeftKeyHorseRot
                        L16_3 = L16_3(L17_3, L18_3)
                        if L16_3 then
                          L16_3 = IsControlPressed
                          L17_3 = 0
                          L18_3 = RightKeyHorseRot
                          L16_3 = L16_3(L17_3, L18_3)
                          if not L16_3 then
                            L16_3 = 130.0
                            L17_3 = 0.03
                            L18_3 = IsDisabledControlPressed
                            L19_3 = 0
                            L20_3 = RunHorseKey
                            L18_3 = L18_3(L19_3, L20_3)
                            if not L18_3 then
                              L18_3 = IsControlPressed
                              L19_3 = 0
                              L20_3 = RunHorseKey
                              L18_3 = L18_3(L19_3, L20_3)
                              if not L18_3 then
                                L18_3 = IsControlPressed
                                L19_3 = 0
                                L20_3 = SprintHorseKey
                                L18_3 = L18_3(L19_3, L20_3)
                                if not L18_3 then
                                  L18_3 = IsDisabledControlPressed
                                  L19_3 = 0
                                  L20_3 = SprintHorseKey
                                  L18_3 = L18_3(L19_3, L20_3)
                                  if not L18_3 then
                                    L18_3 = eroVeloce
                                    if not L18_3 then
                                      goto lbl_1663
                                    end
                                  end
                                end
                              end
                            end
                            L16_3 = 180.0
                            ::lbl_1663::
                            L18_3 = GetFrameTime
                            L18_3 = L18_3()
                            if L17_3 < L18_3 then
                              L18_3 = L17_3
                            end
                            L19_3 = GetEntityRotation
                            L20_3 = A0_2
                            L21_3 = 2
                            L19_3 = L19_3(L20_3, L21_3)
                            L20_3 = IsControlPressed
                            L21_3 = 0
                            L22_3 = GoForwardKey
                            L20_3 = L20_3(L21_3, L22_3)
                            if L20_3 then
                              L20_3 = miMuovo
                              if nil ~= L20_3 then
                                L20_3 = ClearPedSecondaryTask
                                L21_3 = A0_2
                                L20_3(L21_3)
                                miMuovo = nil
                                controlloMovement = 0
                              end
                            end
                            L20_3 = backward
                            if L20_3 then
                              L20_3 = -1.0
                              if L20_3 then
                                goto lbl_1693
                              end
                            end
                            L20_3 = 1.0
                            ::lbl_1693::
                            L21_3 = L19_3.z
                            L22_3 = L20_3 * L16_3
                            L22_3 = L22_3 * L18_3
                            L21_3 = L21_3 + L22_3
                            L21_3 = L21_3 % 360.0
                            L22_3 = SetEntityHeading
                            L23_3 = A0_2
                            L24_3 = L21_3
                            L22_3(L23_3, L24_3)
                            L22_3 = SetEntityRotation
                            L23_3 = A0_2
                            L24_3 = L19_3.x
                            L25_3 = L19_3.y
                            L26_3 = L21_3
                            L27_3 = 2
                            L28_3 = false
                            L22_3(L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
                            L22_3 = syncRot
                            L23_3 = A0_2
                            L22_3(L23_3)
                          end
                        end
                        L16_3 = IsControlPressed
                        L17_3 = 0
                        L18_3 = RightKeyHorseRot
                        L16_3 = L16_3(L17_3, L18_3)
                        if L16_3 then
                          L16_3 = IsControlPressed
                          L17_3 = 0
                          L18_3 = LeftKeyHorseRot
                          L16_3 = L16_3(L17_3, L18_3)
                          if not L16_3 then
                            L16_3 = 130.0
                            L17_3 = 0.03
                            L18_3 = IsDisabledControlPressed
                            L19_3 = 0
                            L20_3 = RunHorseKey
                            L18_3 = L18_3(L19_3, L20_3)
                            if not L18_3 then
                              L18_3 = IsControlPressed
                              L19_3 = 0
                              L20_3 = RunHorseKey
                              L18_3 = L18_3(L19_3, L20_3)
                              if not L18_3 then
                                L18_3 = IsControlPressed
                                L19_3 = 0
                                L20_3 = SprintHorseKey
                                L18_3 = L18_3(L19_3, L20_3)
                                if not L18_3 then
                                  L18_3 = IsDisabledControlPressed
                                  L19_3 = 0
                                  L20_3 = SprintHorseKey
                                  L18_3 = L18_3(L19_3, L20_3)
                                  if not L18_3 then
                                    L18_3 = eroVeloce
                                    if not L18_3 then
                                      goto lbl_1759
                                    end
                                  end
                                end
                              end
                            end
                            L16_3 = 180.0
                            ::lbl_1759::
                            L18_3 = GetFrameTime
                            L18_3 = L18_3()
                            if L17_3 < L18_3 then
                              L18_3 = L17_3
                            end
                            L19_3 = GetEntityRotation
                            L20_3 = A0_2
                            L21_3 = 2
                            L19_3 = L19_3(L20_3, L21_3)
                            L20_3 = IsControlPressed
                            L21_3 = 0
                            L22_3 = GoForwardKey
                            L20_3 = L20_3(L21_3, L22_3)
                            if L20_3 then
                              L20_3 = miMuovo
                              if nil ~= L20_3 then
                                L20_3 = ClearPedSecondaryTask
                                L21_3 = A0_2
                                L20_3(L21_3)
                                miMuovo = nil
                                controlloMovement = 0
                              end
                            end
                            L20_3 = nil
                            L21_3 = backward
                            if L21_3 then
                              L20_3 = 1.0
                            else
                              L20_3 = -1.0
                            end
                            L21_3 = L19_3.z
                            L22_3 = L20_3 * L16_3
                            L22_3 = L22_3 * L18_3
                            L21_3 = L21_3 + L22_3
                            L21_3 = L21_3 % 360.0
                            L22_3 = SetEntityHeading
                            L23_3 = A0_2
                            L24_3 = L21_3
                            L22_3(L23_3, L24_3)
                            L22_3 = SetEntityRotation
                            L23_3 = A0_2
                            L24_3 = L19_3.x
                            L25_3 = L19_3.y
                            L26_3 = L21_3
                            L27_3 = 2
                            L28_3 = false
                            L22_3(L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
                            L22_3 = syncRot
                            L23_3 = A0_2
                            L22_3(L23_3)
                          end
                        end
                        L16_3 = IsControlPressed
                        L17_3 = 0
                        L18_3 = 21
                        L16_3 = L16_3(L17_3, L18_3)
                        if L16_3 then
                          L16_3 = IsControlPressed
                          L17_3 = 0
                          L18_3 = GoForwardKey
                          L16_3 = L16_3(L17_3, L18_3)
                          if L16_3 then
                            L16_3 = SetEntityAnimSpeed
                            L17_3 = A0_2
                            L18_3 = myRunStyle
                            L19_3 = "gallop"
                            L20_3 = MyModelSpeedVar
                            L21_3 = MultipleFloatShif
                            L20_3 = L20_3 * L21_3
                            L16_3(L17_3, L18_3, L19_3, L20_3)
                        end
                        else
                          L16_3 = SetEntityAnimSpeed
                          L17_3 = A0_2
                          L18_3 = myRunStyle
                          L19_3 = "gallop"
                          L20_3 = MyModelSpeedVar
                          L16_3(L17_3, L18_3, L19_3, L20_3)
                        end
                      end
                      backward = false
                      miMuovo = nil
                      eroVeloce = false
                      controlloMovement = 0
                      L4_3 = L5_1
                      L4_3()
                      L4_3 = myAnimalAnim
                      if "rottweiler" == L4_3 or "boar" == L4_3 then
                        L4_3 = "deer"
                      end
                      L5_3 = "creatures@"
                      L6_3 = L4_3
                      L7_3 = "@move"
                      L5_3 = L5_3 .. L6_3 .. L7_3
                      L6_3 = "walk_bck_dwn"
                      L7_3 = HasAnimDictLoaded
                      L8_3 = L5_3
                      L7_3 = L7_3(L8_3)
                      if not L7_3 then
                        L7_3 = RequestAnimDict
                        L8_3 = L5_3
                        L7_3(L8_3)
                        while true do
                          L7_3 = HasAnimDictLoaded
                          L8_3 = L5_3
                          L7_3 = L7_3(L8_3)
                          if L7_3 then
                            break
                          end
                          L7_3 = Wait
                          L8_3 = 10
                          L7_3(L8_3)
                        end
                      end
                      L7_3 = TaskPlayAnim
                      L8_3 = A0_2
                      L9_3 = L5_3
                      L10_3 = L6_3
                      L11_3 = 2.0
                      L12_3 = 2.0
                      L13_3 = 150
                      L14_3 = 1
                      L15_3 = 0
                      L16_3 = false
                      L17_3 = false
                      L18_3 = false
                      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                      while true do
                        L7_3 = IsEntityPlayingAnim
                        L8_3 = A0_2
                        L9_3 = L5_3
                        L10_3 = L6_3
                        L11_3 = 3
                        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                        if not L7_3 then
                          goto lbl_2185
                        end
                        L7_3 = Wait
                        L8_3 = 125
                        L7_3(L8_3)
                      end
                      goto lbl_2185
                      ::lbl_1902::
                      L2_3 = IsControlPressed
                      L3_3 = 0
                      L4_3 = GoForwardKey
                      L2_3 = L2_3(L3_3, L4_3)
                      if L2_3 then
                        L2_3 = IsControlPressed
                        L3_3 = 0
                        L4_3 = 210
                        L2_3 = L2_3(L3_3, L4_3)
                        L2_3 = IsDisabledControlPressed
                        L3_3 = 0
                        L4_3 = 45
                        L2_3 = L2_3(L3_3, L4_3)
                        L2_3 = not L2_3 and L2_3
                      end
                      L3_3 = L2_3
                      if L3_3 then
                        L4_3 = IsEntityPlayingAnim
                        L5_3 = A0_2
                        L6_3 = "creatures@"
                        L7_3 = myAnimalAnim
                        L8_3 = "@move"
                        L6_3 = L6_3 .. L7_3 .. L8_3
                        L7_3 = "idle_turn_l"
                        L8_3 = 3
                        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                        if not L4_3 then
                          L4_3 = IsEntityPlayingAnim
                          L5_3 = A0_2
                          L6_3 = "creatures@"
                          L7_3 = myAnimalAnim
                          L8_3 = "@move"
                          L6_3 = L6_3 .. L7_3 .. L8_3
                          L7_3 = "idle_turn_r"
                          L8_3 = 3
                          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
                          if not L4_3 then
                            goto lbl_1998
                          end
                          L4_3 = IsPedAnimale
                          L5_3 = A0_2
                          L4_3 = L4_3(L5_3)
                          if not L4_3 then
                            goto lbl_1998
                          end
                        end
                        L4_3 = ResetCavalloMove
                        L5_3 = A0_2
                        L4_3(L5_3)
                        L4_3 = L5_1
                        L4_3()
                        L4_3 = myAnimalAnim
                        if "rottweiler" == L4_3 or "boar" == L4_3 then
                          L4_3 = "deer"
                        end
                        L5_3 = "creatures@"
                        L6_3 = L4_3
                        L7_3 = "@move"
                        L5_3 = L5_3 .. L6_3 .. L7_3
                        L6_3 = "walk_bck_dwn"
                        L7_3 = HasAnimDictLoaded
                        L8_3 = L5_3
                        L7_3 = L7_3(L8_3)
                        if not L7_3 then
                          L7_3 = RequestAnimDict
                          L8_3 = L5_3
                          L7_3(L8_3)
                          while true do
                            L7_3 = HasAnimDictLoaded
                            L8_3 = L5_3
                            L7_3 = L7_3(L8_3)
                            if L7_3 then
                              break
                            end
                            L7_3 = Wait
                            L8_3 = 10
                            L7_3(L8_3)
                          end
                        end
                        L7_3 = TaskPlayAnim
                        L8_3 = A0_2
                        L9_3 = L5_3
                        L10_3 = L6_3
                        L11_3 = 2.0
                        L12_3 = 2.0
                        L13_3 = 150
                        L14_3 = 1
                        L15_3 = 0
                        L16_3 = false
                        L17_3 = false
                        L18_3 = false
                        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                        ::lbl_1998::
                        L4_3 = "creatures@"
                        L5_3 = myAnimalAnim
                        L6_3 = "@move"
                        L4_3 = L4_3 .. L5_3 .. L6_3
                        L5_3 = "walk"
                        L6_3 = GetOffsetFromEntityInWorldCoords
                        L7_3 = A0_2
                        L8_3 = 0.0
                        L9_3 = Range
                        L9_3 = L9_3 + 20.5
                        L10_3 = -0.5
                        L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
                        L7_3 = miMuovo
                        if nil == L7_3 then
                          miMuovo = L6_3
                          L7_3 = IsEntityPlayingAnim
                          L8_3 = A0_2
                          L9_3 = "creatures@"
                          L10_3 = myAnimalAnim
                          L11_3 = "@move"
                          L9_3 = L9_3 .. L10_3 .. L11_3
                          L10_3 = "walk"
                          L11_3 = 3
                          L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
                          if not L7_3 then
                            L7_3 = IsPedAnimale
                            L8_3 = A0_2
                            L7_3 = L7_3(L8_3)
                            if L7_3 then
                              L7_3 = HasAnimDictLoaded
                              L8_3 = L4_3
                              L7_3 = L7_3(L8_3)
                              if not L7_3 then
                                L7_3 = RequestAnimDict
                                L8_3 = L4_3
                                L7_3(L8_3)
                                while true do
                                  L7_3 = HasAnimDictLoaded
                                  L8_3 = L4_3
                                  L7_3 = L7_3(L8_3)
                                  if L7_3 then
                                    break
                                  end
                                  L7_3 = Wait
                                  L8_3 = 10
                                  L7_3(L8_3)
                                end
                              end
                              L7_3 = TaskPlayAnim
                              L8_3 = A0_2
                              L9_3 = L4_3
                              L10_3 = L5_3
                              L11_3 = 3.0
                              L12_3 = 3.0
                              L13_3 = -1
                              L14_3 = 1
                              L15_3 = 0
                              L16_3 = false
                              L17_3 = false
                              L18_3 = false
                              L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
                              L7_3 = lastAnims
                              L7_3.a = L4_3
                              L7_3 = lastAnims
                              L7_3.b = L5_3
                            end
                          end
                          L7_3 = GetControlNormal
                          L8_3 = 0
                          L9_3 = RightKeyHorse
                          L7_3 = L7_3(L8_3, L9_3)
                          L8_3 = GetControlNormal
                          L9_3 = 0
                          L10_3 = LeftKeyHorse
                          L8_3 = L8_3(L9_3, L10_3)
                          L9_3 = GetOffsetFromEntityInWorldCoords
                          L10_3 = A0_2
                          L11_3 = L7_3
                          L12_3 = L8_3 * -1.0
                          L12_3 = L12_3 * 0.5
                          L13_3 = -0.5
                          L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
                          L10_3 = TaskLookAtCoord
                          L11_3 = L4_2
                          L12_3 = L9_3.x
                          L13_3 = L9_3.y
                          L14_3 = L9_3.z
                          L15_3 = 1000
                          L16_3 = 0
                          L17_3 = 2
                          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                          L10_3 = TaskLookAtCoord
                          L11_3 = A0_2
                          L12_3 = L9_3.x
                          L13_3 = L9_3.y
                          L14_3 = L9_3.z
                          L15_3 = 1000
                          L16_3 = 0
                          L17_3 = 2
                          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                        else
                          L7_3 = GetEntityCoords
                          L8_3 = A0_2
                          L7_3 = L7_3(L8_3)
                          L8_3 = miMuovo
                          L7_3 = L7_3 - L8_3
                          L7_3 = #L7_3
                          if L7_3 < 10.0 then
                            miMuovo = nil
                            controlloMovement = 0
                          end
                        end
                        L7_3 = tiredMode
                        if not L7_3 then
                          L7_3 = IsControlPressed
                          L8_3 = 0
                          L9_3 = GoForwardKey
                          L7_3 = L7_3(L8_3, L9_3)
                          if L7_3 then
                            L7_3 = IsControlPressed
                            L8_3 = 0
                            L9_3 = 21
                            L7_3 = L7_3(L8_3, L9_3)
                            if L7_3 then
                              L7_3 = staminaMode
                              if not L7_3 then
                                staminaMode = true
                                L7_3 = checkerStamina
                                L8_3 = true
                                L7_3(L8_3)
                              end
                              L7_3 = SetEntityAnimSpeed
                              L8_3 = A0_2
                              L9_3 = L4_3
                              L10_3 = L5_3
                              L11_3 = MyModelSpeedVar
                              L11_3 = L11_3 * 1.9
                              L7_3(L8_3, L9_3, L10_3, L11_3)
                            else
                              L7_3 = SetEntityAnimSpeed
                              L8_3 = A0_2
                              L9_3 = L4_3
                              L10_3 = L5_3
                              L11_3 = MyModelSpeedVar
                              L7_3(L8_3, L9_3, L10_3, L11_3)
                              L7_3 = staminaMode
                              if L7_3 then
                                staminaMode = false
                                L7_3 = checkerStamina
                                L8_3 = false
                                L7_3(L8_3)
                              end
                            end
                          end
                        end
                        L7_3 = horsedebug
                        if L7_3 then
                          L7_3 = DrawMarker
                          L8_3 = 1
                          L9_3 = L6_3.x
                          L10_3 = L6_3.y
                          L11_3 = L6_3.z
                          L12_3 = 0.0
                          L13_3 = 0.0
                          L14_3 = 0.0
                          L15_3 = 0
                          L16_3 = 0.0
                          L17_3 = 0.0
                          L18_3 = 0.05
                          L19_3 = 0.05
                          L20_3 = 2.0
                          L21_3 = 255
                          L22_3 = 255
                          L23_3 = 255
                          L24_3 = 255
                          L25_3 = false
                          L26_3 = true
                          L27_3 = 2
                          L28_3 = false
                          L29_3 = false
                          L30_3 = false
                          L31_3 = false
                          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
                        end
                      end
                    end
                  end
                end
              end
              ::lbl_2185::
              L2_3 = L12_2
              if not L2_3 then
                L2_3 = IsControlPressed
                L3_3 = 0
                L4_3 = GoBackwardKey
                L2_3 = L2_3(L3_3, L4_3)
                if L2_3 then
                  L2_3 = CanPress
                  L3_3 = GoBackwardKey
                  L2_3 = L2_3(L3_3)
                  if L2_3 then
                    L2_3 = IsControlPressed
                    L3_3 = 0
                    L4_3 = 210
                    L2_3 = L2_3(L3_3, L4_3)
                    if not L2_3 then
                      L2_3 = IsDisabledControlPressed
                      L3_3 = 0
                      L4_3 = 45
                      L2_3 = L2_3(L3_3, L4_3)
                      if not L2_3 then
                        miMuovo = nil
                        controlloMovement = 0
                        L2_3 = backward
                        if not L2_3 then
                          backward = true
                        end
                        L2_3 = myAnimalAnim
                        if "rottweiler" == L2_3 or "boar" == L2_3 then
                          L2_3 = "deer"
                        end
                        L3_3 = "creatures@"
                        L4_3 = L2_3
                        L5_3 = "@move"
                        L3_3 = L3_3 .. L4_3 .. L5_3
                        L4_3 = "walk_backwards"
                        L5_3 = IsEntityPlayingAnim
                        L6_3 = A0_2
                        L7_3 = "creatures@"
                        L8_3 = L2_3
                        L9_3 = "@move"
                        L7_3 = L7_3 .. L8_3 .. L9_3
                        L8_3 = "walk_backwards"
                        L9_3 = 3
                        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                        if not L5_3 then
                          L5_3 = HasAnimDictLoaded
                          L6_3 = L3_3
                          L5_3 = L5_3(L6_3)
                          if not L5_3 then
                            L5_3 = RequestAnimDict
                            L6_3 = L3_3
                            L5_3(L6_3)
                            while true do
                              L5_3 = HasAnimDictLoaded
                              L6_3 = L3_3
                              L5_3 = L5_3(L6_3)
                              if L5_3 then
                                break
                              end
                              L5_3 = Wait
                              L6_3 = 10
                              L5_3(L6_3)
                            end
                          end
                          L5_3 = TaskPlayAnim
                          L6_3 = A0_2
                          L7_3 = L3_3
                          L8_3 = L4_3
                          L9_3 = 3.0
                          L10_3 = 3.0
                          L11_3 = -1
                          L12_3 = 1
                          L13_3 = 0
                          L14_3 = false
                          L15_3 = false
                          L16_3 = false
                          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                          L5_3 = lastAnims
                          L5_3.a = L3_3
                          L5_3 = lastAnims
                          L5_3.b = L4_3
                          L5_3 = GetEntityCoords
                          L6_3 = A0_2
                          L5_3 = L5_3(L6_3)
                          L6_3 = GetEntityForwardVector
                          L7_3 = A0_2
                          L6_3 = L6_3(L7_3)
                          L7_3 = table
                          L7_3 = L7_3.unpack
                          L8_3 = L6_3 * 0.7
                          L8_3 = L8_3 * -1
                          L8_3 = L5_3 + L8_3
                          L7_3, L8_3, L9_3 = L7_3(L8_3)
                          L10_3 = PlayEffect
                          L11_3 = "core"
                          L12_3 = "ent_anim_dusty_hands"
                          L13_3 = vector3
                          L14_3 = L7_3
                          L15_3 = L8_3
                          L16_3 = L9_3 - 1.1
                          L13_3 = L13_3(L14_3, L15_3, L16_3)
                          L14_3 = 3.5
                          L15_3 = vector3
                          L16_3 = 0.0
                          L17_3 = 0.0
                          L18_3 = 0.0
                          L15_3 = L15_3(L16_3, L17_3, L18_3)
                          L16_3 = true
                          L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                        end
                      end
                    end
                  end
                end
              end
            end
            L2_3 = myAnimalAnim
            if "rottweiler" == L2_3 or "boar" == L2_3 then
              L2_3 = "deer"
            end
            L3_3 = IsControlPressed
            L4_3 = 0
            L5_3 = GoBackwardKey
            L3_3 = L3_3(L4_3, L5_3)
            if not L3_3 then
              L3_3 = IsEntityPlayingAnim
              L4_3 = A0_2
              L5_3 = "creatures@"
              L6_3 = L2_3
              L7_3 = "@move"
              L5_3 = L5_3 .. L6_3 .. L7_3
              L6_3 = "walk_backwards"
              L7_3 = 3
              L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
              if L3_3 then
                L3_3 = StartKeyFlood
                L4_3 = GoBackwardKey
                L5_3 = 750
                L3_3(L4_3, L5_3)
                L3_3 = L12_2
                if not L3_3 then
                  backward = false
                  miMuovo = nil
                  eroVeloce = false
                  controlloMovement = 0
                  L3_3 = L5_1
                  L3_3()
                  L3_3 = myAnimalAnim
                  if "rottweiler" == L3_3 or "boar" == L3_3 then
                    L3_3 = "deer"
                  end
                  L4_3 = "creatures@"
                  L5_3 = L3_3
                  L6_3 = "@move"
                  L4_3 = L4_3 .. L5_3 .. L6_3
                  L5_3 = "walk_bck_dwn"
                  L6_3 = HasAnimDictLoaded
                  L7_3 = L4_3
                  L6_3 = L6_3(L7_3)
                  if not L6_3 then
                    L6_3 = RequestAnimDict
                    L7_3 = L4_3
                    L6_3(L7_3)
                    while true do
                      L6_3 = HasAnimDictLoaded
                      L7_3 = L4_3
                      L6_3 = L6_3(L7_3)
                      if L6_3 then
                        break
                      end
                      L6_3 = Wait
                      L7_3 = 10
                      L6_3(L7_3)
                    end
                  end
                  L6_3 = TaskPlayAnim
                  L7_3 = Animal
                  L7_3 = L7_3.Handle
                  L8_3 = L4_3
                  L9_3 = L5_3
                  L10_3 = 2.0
                  L11_3 = 2.0
                  L12_3 = 150
                  L13_3 = 1
                  L14_3 = 0
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                end
              end
            end
            L3_3 = eroVeloce
            if L3_3 then
              L3_3 = backward
              if not L3_3 then
                L3_3 = GetControlNormal
                L4_3 = 0
                L5_3 = RightKeyHorse
                L3_3 = L3_3(L4_3, L5_3)
                L4_3 = GetControlNormal
                L5_3 = 0
                L6_3 = LeftKeyHorse
                L4_3 = L4_3(L5_3, L6_3)
                L5_3 = GetOffsetFromEntityInWorldCoords
                L6_3 = A0_2
                L7_3 = L3_3 * 1.5
                L8_3 = Range
                L8_3 = L8_3 - 50.5
                L9_3 = -0.5
                L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
                L6_3 = L5_3.x
                L7_3 = L5_3.y
                L8_3 = L5_3.z
                L9_3 = horsedebug
                if L9_3 then
                  L9_3 = DrawMarker
                  L10_3 = 1
                  L11_3 = L6_3
                  L12_3 = L7_3
                  L13_3 = L8_3
                  L14_3 = 0.0
                  L15_3 = 0.0
                  L16_3 = 0.0
                  L17_3 = 0
                  L18_3 = 0.0
                  L19_3 = 0.0
                  L20_3 = 0.05
                  L21_3 = 0.05
                  L22_3 = 2.0
                  L23_3 = 0
                  L24_3 = 0
                  L25_3 = 0
                  L26_3 = 255
                  L27_3 = false
                  L28_3 = true
                  L29_3 = 2
                  L30_3 = false
                  L31_3 = false
                  L32_3 = false
                  L33_3 = false
                  L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
                end
                L9_3 = TutorialHorse
                if L9_3 then
                  L9_3 = mostraInfo
                  if L9_3 then
                    L9_3 = TutorialHorseInfo2
                    L9_3()
                  end
                end
              end
            end
        end
        else
          L2_3 = dhorseprint
          L3_3 = "Loop Riding terminato da return!"
          L2_3(L3_3)
          return
        end
        ::lbl_2451::
      end
      L0_3 = dhorseprint
      L1_3 = "Loop Riding terminato!"
      L0_3(L1_3)
    end
    L15_2(L16_2)
  end
end
LoopCavallo = L7_1
L7_1 = RegisterNetEvent
L8_1 = "getBackMyAnimals"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "getBackMyAnimals"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = #A0_2
    if L1_2 > 0 then
      MyAnimals = A0_2
      L1_2 = horseprint
      L2_2 = "^2[Animals Loaded!] ^7You have "
      L3_2 = MyAnimals
      L3_2 = #L3_2
      L4_2 = " animals in your list."
      L2_2 = L2_2 .. L3_2 .. L4_2
      L1_2(L2_2)
  end
  else
    L1_2 = horseprint
    L2_2 = "^2[Striano Animals] ^7No animals detected in your own list."
    L1_2(L2_2)
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "AssignHorse"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "AssignHorse"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = MyAnimals
  if L2_2 then
    L2_2 = MyAnimals
    L2_2 = #L2_2
    if L2_2 > 0 then
      L2_2 = MyAnimals
      L2_2 = L2_2[A0_2]
      if L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = "Striano:AssignHorse"
        L4_2 = A1_2
        L5_2 = MyAnimals
        L5_2 = L5_2[A0_2]
        L6_2 = MyAnimals
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.model
        L7_2 = GetPlayerServerId
        L8_2 = PlayerId
        L8_2 = L8_2()
        L7_2, L8_2 = L7_2(L8_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        L2_2 = table
        L2_2 = L2_2.remove
        L3_2 = MyAnimals
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
        L2_2 = TriggerServerEvent
        L3_2 = "Striano:SaveAnimal"
        L4_2 = GetPlayerServerId
        L5_2 = PlayerId
        L5_2, L6_2, L7_2, L8_2 = L5_2()
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        L5_2 = MyAnimals
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "AssignClient"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "AssignClient"
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = SuccessBuy
  L2_2 = A0_2
  L1_2(L2_2)
end
L7_1(L8_1, L9_1)
noFloodStopHorse = false
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = noFloodStopHorse
  if not L1_2 then
    L1_2 = IsPedMoving
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = GetEntityRotationVelocity
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2.z
      L2_2 = 0.1
      if not (L1_2 > L2_2) then
        goto lbl_24
      end
    end
    noFloodStopHorse = true
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = GetEntityCoords
      L1_3 = A0_2
      L0_3 = L0_3(L1_3)
      L1_3 = Wait
      L2_3 = 25
      L1_3(L2_3)
      L1_3 = SetEntityAngularVelocity
      L2_3 = A0_2
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = SetEntityVelocity
      L2_3 = A0_2
      L3_3 = 0.0
      L4_3 = 0.0
      L5_3 = 0.0
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = GetEntityHeading
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      ROTCavallo = L1_3
      L1_3 = GetEntityRotation
      L2_3 = A0_2
      L1_3 = L1_3(L2_3)
      L2_3 = SetEntityHeading
      L3_3 = A0_2
      L4_3 = ROTCavallo
      L2_3(L3_3, L4_3)
      L2_3 = SetEntityRotation
      L3_3 = A0_2
      L4_3 = L1_3.x
      L5_3 = L1_3.y
      L6_3 = ROTCavallo
      L2_3(L3_3, L4_3, L5_3, L6_3)
      miMuovo = nil
      backward = false
      eroVeloce = false
      L2_3 = horsedebug
      if L2_3 then
        L2_3 = PlaySoundFrontend
        L3_3 = -1
        L4_3 = "CONFIRM_BEEP"
        L5_3 = "HUD_MINI_GAME_SOUNDSET"
        L6_3 = 1
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
      L2_3 = IsPedAnimale
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        L2_3 = standIdleHuman
        L3_3 = A0_2
        L2_3(L3_3)
      end
    end
    L1_2(L2_2)
    L1_2 = Wait
    L2_2 = 125
    L1_2(L2_2)
    noFloodStopHorse = false
  end
  ::lbl_24::
end
ResetCavalloMove = L7_1
L7_1 = false
L8_1 = {}
L9_1 = false
L10_1 = {}
L11_1 = RegisterCommand
L12_1 = "scananimalbones"
function L13_1()
  local L0_2, L1_2
  L0_2 = L9_1
  if L0_2 then
    L0_2 = false
    L9_1 = L0_2
    L0_2 = print
    L1_2 = "[BONE SCAN] Interruzione richiesta"
    L0_2(L1_2)
    return
  end
  L0_2 = Animal
  L0_2 = L0_2.Handle
  if nil ~= L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = Animal
    L1_2 = L1_2.Handle
    L0_2 = L0_2(L1_2)
    if L0_2 then
      goto lbl_24
    end
  end
  L0_2 = print
  L1_2 = "[BONE SCAN] Animal.Handle non esiste"
  L0_2(L1_2)
  do return end
  ::lbl_24::
  L0_2 = true
  L9_1 = L0_2
  L0_2 = {}
  L10_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3
    L0_3 = Animal
    L0_3 = L0_3.Handle
    L1_3 = {}
    L2_3 = print
    L3_3 = "[BONE SCAN] Inizio scansione | MODEL: %s"
    L4_3 = L3_3
    L3_3 = L3_3.format
    L5_3 = modl
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L3_3(L4_3, L5_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
    L2_3 = 0
    L3_3 = 65535
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L9_1
      if not L6_3 then
        break
      end
      L6_3 = DoesEntityExist
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      if not L6_3 then
        break
      end
      L6_3 = GetPedBoneIndex
      L7_3 = L0_3
      L8_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3)
      if L6_3 and -1 ~= L6_3 then
        L7_3 = L1_3[L6_3]
        if not L7_3 then
          L1_3[L6_3] = true
          L7_3 = L10_1
          L7_3 = #L7_3
          L8_3 = L7_3 + 1
          L7_3 = L10_1
          L9_3 = {}
          L9_3.id = L5_3
          L9_3.index = L6_3
          L7_3[L8_3] = L9_3
        end
      end
      L7_3 = L5_3 % 500
      if 0 == L7_3 then
        L7_3 = exports
        L7_3 = L7_3.striano_core
        L8_3 = L7_3
        L7_3 = L7_3.Debug
        L9_3 = "Scansione bone"
        L10_3 = "%s / 65535"
        L11_3 = L10_3
        L10_3 = L10_3.format
        L12_3 = L5_3
        L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L10_3(L11_3, L12_3)
        L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
        L7_3 = exports
        L7_3 = L7_3.striano_core
        L8_3 = L7_3
        L7_3 = L7_3.Debug
        L9_3 = "Bone trovati"
        L10_3 = L10_1
        L10_3 = #L10_3
        L7_3(L8_3, L9_3, L10_3)
        L7_3 = Wait
        L8_3 = 0
        L7_3(L8_3)
      end
    end
    L2_3 = exports
    L2_3 = L2_3.striano_core
    L3_3 = L2_3
    L2_3 = L2_3.RemoveDebug
    L4_3 = "Scansione bone"
    L2_3(L3_3, L4_3)
    L2_3 = exports
    L2_3 = L2_3.striano_core
    L3_3 = L2_3
    L2_3 = L2_3.RemoveDebug
    L4_3 = "Bone trovati"
    L2_3(L3_3, L4_3)
    L2_3 = L9_1
    if L2_3 then
      L2_3 = DoesEntityExist
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if L2_3 then
        goto lbl_97
      end
    end
    L2_3 = print
    L3_3 = "[BONE SCAN] Interrotta | %s bone trovati"
    L4_3 = L3_3
    L3_3 = L3_3.format
    L5_3 = L10_1
    L5_3 = #L5_3
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L3_3(L4_3, L5_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
    L2_3 = false
    L9_1 = L2_3
    do return end
    ::lbl_97::
    L2_3 = table
    L2_3 = L2_3.sort
    L3_3 = L10_1
    function L4_3(A0_4, A1_4)
      local L2_4, L3_4
      L2_4 = A0_4.index
      L3_4 = A1_4.index
      L2_4 = L2_4 < L3_4
      return L2_4
    end
    L2_3(L3_3, L4_3)
    L2_3 = print
    L3_3 = ""
    L2_3(L3_3)
    L2_3 = print
    L3_3 = "[BONE SCAN] COMPLETATA | %s BONE TROVATI"
    L4_3 = L3_3
    L3_3 = L3_3.format
    L5_3 = L10_1
    L5_3 = #L5_3
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L3_3(L4_3, L5_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
    L2_3 = print
    L3_3 = "local AnimalBones={"
    L2_3(L3_3)
    L2_3 = ipairs
    L3_3 = L10_1
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = print
      L9_3 = "\t{id=%s,index=%s},"
      L10_3 = L9_3
      L9_3 = L9_3.format
      L11_3 = L7_3.id
      L12_3 = L7_3.index
      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L9_3(L10_3, L11_3, L12_3)
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
    end
    L2_3 = print
    L3_3 = "}"
    L2_3(L3_3)
    L2_3 = print
    L3_3 = "[BONE SCAN] FINE TABELLA"
    L2_3(L3_3)
    L2_3 = print
    L3_3 = "[BONE SCAN] Marker attivi. Riesegui /scananimalbones per chiuderli."
    L2_3(L3_3)
    L2_3 = print
    L3_3 = ""
    L2_3(L3_3)
    L2_3 = 1
    L3_3 = 1000
    L4_3 = GetGameTimer
    L4_3 = L4_3()
    L5_3 = false
    while true do
      L6_3 = L9_1
      if not L6_3 then
        break
      end
      L6_3 = DoesEntityExist
      L7_3 = L0_3
      L6_3 = L6_3(L7_3)
      if not L6_3 then
        break
      end
      L6_3 = L10_1
      L6_3 = #L6_3
      if not (L6_3 > 0) then
        break
      end
      L6_3 = Wait
      L7_3 = 0
      L6_3(L7_3)
      L6_3 = DisableControlAction
      L7_3 = 0
      L8_3 = 22
      L9_3 = true
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = IsDisabledControlPressed
      L7_3 = 0
      L8_3 = 22
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = GetGameTimer
      L7_3 = L7_3()
      L8_3 = L7_3 - L4_3
      L4_3 = L7_3
      if not L6_3 then
        L3_3 = L3_3 - L8_3
        if L3_3 <= 0 then
          L2_3 = L2_3 + 1
          L9_3 = L10_1
          L9_3 = #L9_3
          if L2_3 > L9_3 then
            L2_3 = 1
          end
          L3_3 = 500
          L9_3 = IsControlPressed
          L10_3 = 0
          L11_3 = 21
          L9_3 = L9_3(L10_3, L11_3)
          if not L9_3 then
            L9_3 = IsDisabledControlPressed
            L10_3 = 0
            L11_3 = 21
            L9_3 = L9_3(L10_3, L11_3)
            if not L9_3 then
              goto lbl_202
            end
          end
          L3_3 = 500
        end
      end
      ::lbl_202::
      L9_3 = L10_1
      L9_3 = L9_3[L2_3]
      L10_3 = GetWorldPositionOfEntityBone
      L11_3 = L0_3
      L12_3 = L9_3.index
      L10_3 = L10_3(L11_3, L12_3)
      L11_3 = GetEntityCoords
      L12_3 = L0_3
      L11_3 = L11_3(L12_3)
      L12_3 = IsDisabledControlJustPressed
      L13_3 = 0
      L14_3 = 22
      L12_3 = L12_3(L13_3, L14_3)
      if L12_3 then
        L12_3 = print
        L13_3 = "BONE SELEZIONATO "
        L14_3 = L9_3.id
        L15_3 = " | "
        L16_3 = L9_3.index
        L13_3 = L13_3 .. L14_3 .. L15_3 .. L16_3
        L12_3(L13_3)
      end
      L12_3 = L10_3 - L11_3
      L12_3 = #L12_3
      if L12_3 < 15.0 then
        L12_3 = L10_3.z
        L13_3 = L11_3.z
        L12_3 = L12_3 < L13_3
        L13_3 = 255
        L14_3 = 60
        L15_3 = 60
        if L12_3 then
          L16_3 = 0
          L17_3 = 255
          L15_3 = 80
          L14_3 = L17_3
          L13_3 = L16_3
        end
        if L6_3 then
          L16_3 = 255
          L17_3 = 200
          L15_3 = 0
          L14_3 = L17_3
          L13_3 = L16_3
        end
        L16_3 = DrawMarker
        L17_3 = 28
        L18_3 = L10_3.x
        L19_3 = L10_3.y
        L20_3 = L10_3.z
        L21_3 = 0.0
        L22_3 = 0.0
        L23_3 = 0.0
        L24_3 = 0.0
        L25_3 = 0.0
        L26_3 = 0.0
        L27_3 = 0.1
        L28_3 = 0.1
        L29_3 = 0.1
        L30_3 = L13_3
        L31_3 = L14_3
        L32_3 = L15_3
        L33_3 = 230
        L34_3 = false
        L35_3 = false
        L36_3 = 2
        L37_3 = false
        L38_3 = nil
        L39_3 = nil
        L40_3 = false
        L16_3(L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
      end
      if L6_3 then
        L12_3 = exports
        L12_3 = L12_3.striano_core
        L13_3 = L12_3
        L12_3 = L12_3.Debug
        L14_3 = "Bone selezionato"
        L15_3 = "ID: %s | INDEX: %s"
        L16_3 = L15_3
        L15_3 = L15_3.format
        L17_3 = L9_3.id
        L18_3 = L9_3.index
        L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3 = L15_3(L16_3, L17_3, L18_3)
        L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3, L37_3, L38_3, L39_3, L40_3)
      elseif L5_3 then
        L12_3 = exports
        L12_3 = L12_3.striano_core
        L13_3 = L12_3
        L12_3 = L12_3.RemoveDebug
        L14_3 = "Bone selezionato"
        L12_3(L13_3, L14_3)
      end
      L5_3 = L6_3
    end
    L6_3 = exports
    L6_3 = L6_3.striano_core
    L7_3 = L6_3
    L6_3 = L6_3.RemoveDebug
    L8_3 = "Bone selezionato"
    L6_3(L7_3, L8_3)
    L6_3 = false
    L9_1 = L6_3
    L6_3 = print
    L7_3 = "[BONE SCAN] Visualizzazione disattivata"
    L6_3(L7_3)
  end
  L0_2(L1_2)
end
L14_1 = false
L11_1(L12_1, L13_1, L14_1)
AnimalGroundIkActive = false
L11_1 = false
L12_1 = {}
L13_1 = {}
L13_1.boneId = 18905
L13_1.ikIndex = 3
L13_1.offsetZ = 0.3
L14_1 = {}
L14_1.boneId = 57005
L14_1.ikIndex = 4
L14_1.offsetZ = 0.3
L12_1[1] = L13_1
L12_1[2] = L14_1
L13_1 = 0.3
L14_1 = 0.75
L15_1 = 15.0
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = L12_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2.boneIndex = -1
    L7_2.target = nil
    L8_2 = L7_2.boneId
    if L8_2 then
      L8_2 = L7_2.boneId
      if 0 ~= L8_2 then
        L8_2 = GetPedBoneIndex
        L9_2 = A0_2
        L10_2 = L7_2.boneId
        L8_2 = L8_2(L9_2, L10_2)
        L7_2.boneIndex = L8_2
        L8_2 = L7_2.boneIndex
        if -1 ~= L8_2 then
          L1_2 = L1_2 + 1
        else
        end
      end
    end
  end
  return L1_2
end
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = GetWorldPositionOfEntityBone
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = vector3
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = L13_1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_2 + L3_2
  L4_2 = vector3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = L14_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2 = L2_2 - L4_2
  L5_2 = _ENV
  L6_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  L5_2 = L5_2[L6_2]
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L9_2 = L4_2.x
  L10_2 = L4_2.y
  L11_2 = L4_2.z
  L12_2 = 511
  L13_2 = A0_2
  L14_2 = 7
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = GetShapeTestResult
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L10_2 = 2 == L6_2 and 1 == L7_2
  L11_2 = L2_2
  L12_2 = L3_2
  L13_2 = L4_2
  L14_2 = L8_2
  L15_2 = L9_2
  return L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
end
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L2_2 = L17_1
  L3_2 = A0_2
  L4_2 = A1_2.boneIndex
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L8_2 = vector3
    L9_2 = 0.0
    L10_2 = 0.0
    L11_2 = A1_2.offsetZ
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L8_2 = L6_2 + L8_2
    L9_2 = math
    L9_2 = L9_2.min
    L10_2 = L15_1
    L11_2 = GetFrameTime
    L11_2 = L11_2()
    L10_2 = L10_2 * L11_2
    L11_2 = 1.0
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A1_2.target
    if L10_2 then
      L10_2 = A1_2.target
      L11_2 = A1_2.target
      L11_2 = L8_2 - L11_2
      L11_2 = L11_2 * L9_2
      L10_2 = L10_2 + L11_2
      A1_2.target = L10_2
    else
      A1_2.target = L8_2
    end
    L10_2 = eroVeloce
    if not L10_2 then
      L10_2 = IsControlPressed
      L11_2 = 0
      L12_2 = 21
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L10_2 = SetIkTarget
        L11_2 = A0_2
        L12_2 = A1_2.ikIndex
        L13_2 = 0
        L14_2 = -1
        L15_2 = A1_2.target
        L15_2 = L15_2.x
        L16_2 = A1_2.target
        L16_2 = L16_2.y
        L17_2 = A1_2.target
        L17_2 = L17_2.z
        L18_2 = 1
        L19_2 = -1
        L20_2 = -1
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      end
    end
    L10_2 = L11_1
    if L10_2 then
      L10_2 = DrawLine
      L11_2 = L4_2.x
      L12_2 = L4_2.y
      L13_2 = L4_2.z
      L14_2 = L6_2.x
      L15_2 = L6_2.y
      L16_2 = L6_2.z
      L17_2 = 0
      L18_2 = 255
      L19_2 = 80
      L20_2 = 255
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L10_2 = DrawLine
      L11_2 = L3_2.x
      L12_2 = L3_2.y
      L13_2 = L3_2.z
      L14_2 = A1_2.target
      L14_2 = L14_2.x
      L15_2 = A1_2.target
      L15_2 = L15_2.y
      L16_2 = A1_2.target
      L16_2 = L16_2.z
      L17_2 = 255
      L18_2 = 200
      L19_2 = 0
      L20_2 = 255
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L10_2 = DrawMarker
      L11_2 = 28
      L12_2 = A1_2.target
      L12_2 = L12_2.x
      L13_2 = A1_2.target
      L13_2 = L13_2.y
      L14_2 = A1_2.target
      L14_2 = L14_2.z
      L15_2 = 0.0
      L16_2 = 0.0
      L17_2 = 0.0
      L18_2 = 0.0
      L19_2 = 0.0
      L20_2 = 0.0
      L21_2 = 0.06
      L22_2 = 0.06
      L23_2 = 0.06
      L24_2 = 0
      L25_2 = 255
      L26_2 = 80
      L27_2 = 220
      L28_2 = false
      L29_2 = false
      L30_2 = 2
      L31_2 = false
      L32_2 = nil
      L33_2 = nil
      L34_2 = false
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
    end
  else
    A1_2.target = nil
    L8_2 = L11_1
    if L8_2 then
      L8_2 = DrawLine
      L9_2 = L4_2.x
      L10_2 = L4_2.y
      L11_2 = L4_2.z
      L12_2 = L5_2.x
      L13_2 = L5_2.y
      L14_2 = L5_2.z
      L15_2 = 255
      L16_2 = 40
      L17_2 = 40
      L18_2 = 255
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
  return L2_2
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = AnimalGroundIkActive
  if L1_2 then
    return
  end
  if A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_16
    end
  end
  L1_2 = print
  L2_2 = "[ANIMAL IK] Animal.Handle non esiste"
  L1_2(L2_2)
  do return end
  ::lbl_16::
  L1_2 = A0_2
  L2_2 = L16_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if 0 == L2_2 then
    L3_2 = print
    L4_2 = "[ANIMAL IK] Inserisci almeno un bone ID valido nella tabella AnimalFeet"
    L3_2(L4_2)
    return
  end
  AnimalGroundIkActive = true
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = AnimalGroundIkActive
      if not L0_3 then
        break
      end
      L0_3 = DoesEntityExist
      L1_3 = L1_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = SetPedCanLegIk
      L1_3 = L1_2
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = SetPedLegIkMode
      L1_3 = L1_2
      L2_3 = 2
      L0_3(L1_3, L2_3)
      L0_3 = 0
      L1_3 = ipairs
      L2_3 = L12_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.boneIndex
        if L7_3 then
          L7_3 = L6_3.boneIndex
          if -1 ~= L7_3 then
            L7_3 = L18_1
            L8_3 = L1_2
            L9_3 = L6_3
            L7_3 = L7_3(L8_3, L9_3)
            if L7_3 then
              L0_3 = L0_3 + 1
            end
          end
        end
      end
      L1_3 = L11_1
      if L1_3 then
        L1_3 = exports
        L1_3 = L1_3.striano_core
        L2_3 = L1_3
        L1_3 = L1_3.Debug
        L3_3 = "Animal Ground IK"
        L4_3 = "%s / %s zampe"
        L5_3 = L4_3
        L4_3 = L4_3.format
        L6_3 = L0_3
        L7_3 = L2_2
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L4_3(L5_3, L6_3, L7_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      end
    end
    L0_3 = ipairs
    L1_3 = L12_1
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L5_3.target = nil
    end
    L0_3 = DoesEntityExist
    L1_3 = L1_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = SetPedLegIkMode
      L1_3 = L1_2
      L2_3 = 0
      L0_3(L1_3, L2_3)
    end
    L0_3 = L11_1
    if L0_3 then
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.RemoveDebug
      L2_3 = "Animal Ground IK"
      L0_3(L1_3, L2_3)
    end
    AnimalGroundIkActive = false
  end
  L3_2(L4_2)
end
StartAnimalGroundIk = L19_1
L19_1 = RegisterNetEvent
L20_1 = "horse:updateActiveRiders"
L19_1(L20_1)
L19_1 = AddEventHandler
L20_1 = "horse:updateActiveRiders"
function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  L4_1 = L1_2
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNetEvent
L20_1 = "horse:acceptPassenger"
L19_1(L20_1)
L19_1 = AddEventHandler
L20_1 = "horse:acceptPassenger"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Animal
  L2_2 = L2_2.InControl
  if not L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "horse:cancelPassenger"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = GetPlayerFromServerId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if -1 == L2_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "horse:cancelPassenger"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = GetPlayerPed
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_35
    end
  end
  L4_2 = TriggerServerEvent
  L5_2 = "horse:cancelPassenger"
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  do return end
  ::lbl_35::
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = GetEntityCoords
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 - L5_2
  L4_2 = #L4_2
  L5_2 = 2.2
  if L4_2 > L5_2 then
    L5_2 = TriggerServerEvent
    L6_2 = "horse:cancelPassenger"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = HandsUpToGoUp
  if L5_2 then
    L5_2 = IsEntityPlayingAnim
    L6_2 = L3_2
    L7_2 = "missminuteman_1ig_2"
    L8_2 = "handsup_base"
    L9_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      L5_2 = ShowInstructionalButtonsTimed
      L6_2 = "Player must be with handsup."
      L5_2(L6_2)
      L5_2 = TriggerServerEvent
      L6_2 = "horse:cancelPassenger"
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
      return
    end
  end
  playerCarryng = A0_2
  L5_2 = TriggerServerEvent
  L6_2 = "horse:syncCava"
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
end
L19_1(L20_1, L21_1)
