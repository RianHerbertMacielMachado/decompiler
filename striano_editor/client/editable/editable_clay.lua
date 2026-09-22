local L0_1, L1_1, L2_1
hashPiatto = -1675493326
piattiColpiti = 0
throwTimes = 0
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "1st_Person_Transition"
  L3_2 = "PLAYER_SWITCH_CUSTOM_SOUNDSET"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
SoundThrow = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetEntityForwardVector
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 30.0
  L5_2 = 40.0
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L0_2 * L3_2
  L2_2 = L2_2 + L3_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = vector3
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2 + 5.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  return L4_2
end
getSpawnPositionDish = L0_1
LoopVarClay = false
function L0_1()
  local L0_2, L1_2
  L0_2 = LoopVarClay
  if not L0_2 then
    LoopVarClay = true
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = LoopVarClay
        if not L0_3 then
          return
        end
        L0_3 = InfoWhile
        L0_3()
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsEntityAttached
            L1_3 = PlayerPedId
            L1_3, L2_3 = L1_3()
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              goto lbl_31
            end
          end
        end
        LoopVarClay = false
        LoopVarClayChallenge = false
        do return end
        ::lbl_31::
      end
    end
    L0_2(L1_2)
  end
end
LoopClay = L0_1
L0_1 = exports
L1_1 = "sonoInClay"
function L2_1()
  local L0_2, L1_2
  L0_2 = LoopVarClay
  if not L0_2 then
    L0_2 = LoopVarClayChallenge
  end
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "clay"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = LoopVarClayChallenge
  if L1_2 then
    return
  end
  L1_2 = IsPedArmed
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 4
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = LoopVarClay
    if L1_2 then
      LoopVarClay = false
      throwTimes = 0
      piattiColpiti = 0
    else
      L1_2 = LoopClay
      L1_2()
    end
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.testo3d
    L3_2 = "Fire weapon needed."
    L1_2(L2_2, L3_2)
  end
end
L0_1(L1_1, L2_1)
challengeStart = false
LoopVarClayChallenge = false
L0_1 = RegisterCommand
L1_1 = "clayChallenge"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsPedArmed
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 4
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = LoopVarClayChallenge
    if L1_2 then
      LoopVarClayChallenge = false
      throwTimes = 0
      piattiColpiti = 0
    else
      L1_2 = LoopClayChallenge
      L1_2()
    end
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.testo3d
    L3_2 = "Fire weapon needed."
    L1_2(L2_2, L3_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2
  L0_2 = LoopVarClayChallenge
  if not L0_2 then
    LoopVarClayChallenge = true
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = LoopVarClayChallenge
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = InfoWhileChallenge
        L0_3()
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsPedFatallyInjured
          L1_3 = PlayerPedId
          L1_3, L2_3 = L1_3()
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsEntityAttached
            L1_3 = PlayerPedId
            L1_3, L2_3 = L1_3()
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              goto lbl_31
            end
          end
        end
        LoopVarClay = false
        LoopVarClayChalleng = false
        challengeStart = false
        do return end
        ::lbl_31::
      end
    end
    L0_2(L1_2)
  end
end
LoopClayChallenge = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = challengeStart
  if not L0_2 then
    L0_2 = InfoClay
    L1_2 = 74
    L2_2 = "Start Challenge"
    L3_2 = 73
    L4_2 = "Close"
    L0_2(L1_2, L2_2, L3_2, L4_2)
  else
    L0_2 = InfoClay
    L1_2 = 73
    L2_2 = "Close ~h~[Throw: "
    L3_2 = throwTimes
    L4_2 = " - Hit"
    L5_2 = piattiColpiti
    L6_2 = "]"
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
    L0_2(L1_2, L2_2)
  end
  L0_2 = IsControlJustPressed
  L1_2 = 0
  L2_2 = 74
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = challengeStart
    if not L0_2 then
      L0_2 = IsPedArmed
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = 4
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        piattiColpiti = 0
        throwTimes = 0
        L0_2 = 5
        L1_2 = 0
        L2_2 = -1
        for L3_2 = L0_2, L1_2, L2_2 do
          L4_2 = PlaySoundFrontend
          L5_2 = -1
          L6_2 = "MP_IDLE_TIMER"
          L7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          L8_2 = 1
          L4_2(L5_2, L6_2, L7_2, L8_2)
          L4_2 = exports
          L4_2 = L4_2.striano_combat
          L5_2 = L4_2
          L4_2 = L4_2.testo3d
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
          L4_2 = Wait
          L5_2 = 1000
          L4_2(L5_2)
        end
        challengeStart = true
        while true do
          L0_2 = challengeStart
          if not L0_2 then
            break
          end
          L0_2 = SpawnPiattoSfida
          L0_2()
          L0_2 = Wait
          L1_2 = 7500
          L0_2(L1_2)
        end
      else
        L0_2 = exports
        L0_2 = L0_2.striano_combat
        L1_2 = L0_2
        L0_2 = L0_2.testo3d
        L2_2 = "Fire weapon needed."
        L0_2(L1_2, L2_2)
      end
    end
  end
end
InfoWhileChallenge = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.testo3d
  L2_2 = "Challenge ended."
  L0_2(L1_2, L2_2)
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "MP_IDLE_TIMER"
  L3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  L4_2 = 1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.testo3d
  L2_2 = "Throw: "
  L3_2 = throwTimes
  L4_2 = " - Hit: "
  L5_2 = piattiColpiti
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L0_2(L1_2, L2_2)
  L0_2 = print
  L1_2 = "Throw: "
  L2_2 = throwTimes
  L3_2 = " - Hit: "
  L4_2 = piattiColpiti
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  L0_2(L1_2)
  piattiColpiti = 0
  throwTimes = 0
end
onChallengeEnd = L0_1
NoSpawn5 = false
L0_1 = RegisterCommand
L1_1 = "clay5"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = NoSpawn5
  if not L1_2 then
    NoSpawn5 = true
    L1_2 = IsPedArmed
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = 4
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = 5
      L2_2 = 0
      L3_2 = -1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = PlaySoundFrontend
        L6_2 = -1
        L7_2 = "MP_IDLE_TIMER"
        L8_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        L9_2 = 1
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.testo3d
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        L5_2 = Wait
        L6_2 = 1000
        L5_2(L6_2)
      end
      L1_2 = 1
      L2_2 = 5
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = SpawnPiattoSfida
        L5_2()
        L5_2 = Wait
        L6_2 = 5000
        L5_2(L6_2)
      end
    else
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.testo3d
      L3_2 = "Fire weapon needed."
      L1_2(L2_2, L3_2)
    end
    NoSpawn5 = false
  end
end
L0_1(L1_1, L2_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = InfoClay
  L1_2 = 74
  L2_2 = "Throw "
  L3_2 = throwTimes
  L4_2 = " (~h~hit "
  L5_2 = piattiColpiti
  L6_2 = "~h~)"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L3_2 = 38
  L4_2 = "Challenge 5 Shot"
  L5_2 = 303
  L6_2 = "Challenge"
  L7_2 = 73
  L8_2 = "Close"
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L0_2 = IsControlJustPressed
  L1_2 = 0
  L2_2 = 74
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetSelectedPedWeapon
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = GetAmmoInClip
    L3_2 = L0_2
    L4_2 = L1_2
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    if L3_2 > 0 then
      L4_2 = SpawnPiattoSfida
      L4_2()
      L4_2 = ExecuteCommand
      L5_2 = "me Throw: "
      L6_2 = throwTimes
      L7_2 = " - Hit: "
      L8_2 = piattiColpiti
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      L4_2(L5_2)
      L4_2 = Wait
      L5_2 = 1000
      L4_2(L5_2)
    else
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.submexError
      L6_2 = "No ammo in clip to throw!"
      L4_2(L5_2, L6_2)
    end
  end
  L0_2 = IsControlJustPressed
  L1_2 = 0
  L2_2 = 38
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "clay5"
    L0_2(L1_2)
  end
  L0_2 = IsControlJustPressed
  L1_2 = 0
  L2_2 = 303
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = IsDisabledControlJustPressed
    L1_2 = 0
    L2_2 = 303
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      goto lbl_76
    end
  end
  LoopVarClay = false
  L0_2 = ExecuteCommand
  L1_2 = "clayChallenge"
  L0_2(L1_2)
  ::lbl_76::
end
InfoWhile = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "FestiveGift"
  L3_2 = "Feed_Message_Sounds"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = ExecuteCommand
  L1_2 = "me Throw: "
  L2_2 = throwTimes
  L3_2 = " - Hit: "
  L4_2 = piattiColpiti
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  L0_2(L1_2)
end
ObjectHitted = L0_1
