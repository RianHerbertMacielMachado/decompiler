local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityBonePosition_2
  L3_2 = L1_2
  L4_2 = GetPedBoneIndex
  L5_2 = L1_2
  L6_2 = 24818
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = L0_1
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L6_2 = L6_2 + 0.5
  L7_2 = A0_2
  L8_2 = 0.6
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L2_1 = false
L3_1 = false
timerRespawn = 0
IsDead = false
L4_1 = 12
L5_1 = RegisterCommand
L6_1 = "respawnme"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityHealth
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPedArmour
  L5_2 = L0_2
  L4_2 = L4_2(L5_2)
  L5_2 = timerRespawn
  if L5_2 > 1 then
    timerRespawn = 1
  end
  L5_2 = Wait
  L6_2 = 0
  L5_2(L6_2)
  L5_2 = NetworkResurrectLocalPlayer
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L9_2 = L2_2
  L10_2 = true
  L11_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = SetEntityCoordsNoOffset
  L6_2 = L0_2
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L9_2 = L1_2.z
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L13_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 25
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "loadtattoo"
    L0_3(L1_3)
  end
  L5_2(L6_2)
  L5_2 = ExecuteCommand
  L6_2 = "prova3 "
  L5_2(L6_2)
  if L3_2 < 110 then
    L5_2 = SetEntityHealth
    L6_2 = L0_2
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = SetEntityHealth
    L6_2 = L0_2
    L7_2 = 110
    L5_2(L6_2, L7_2)
  end
  L5_2 = SetPedArmour
  L6_2 = L0_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = ExecuteCommand
  L6_2 = "stopragdoll"
  L5_2(L6_2)
  L5_2 = exports
  L5_2 = L5_2.striano_core
  L6_2 = L5_2
  L5_2 = L5_2.EndOrbitCam
  L5_2(L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = {}
L6_1 = -1569615261
L7_1 = 1737195953
L8_1 = 1317494643
L9_1 = -1786099057
L10_1 = 1141786504
L11_1 = -2067956739
L12_1 = -868994466
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L5_1[5] = L10_1
L5_1[6] = L11_1
L5_1[7] = L12_1
L6_1 = {}
L7_1 = -1716189206
L8_1 = 1223143800
L9_1 = -1955384325
L10_1 = -1833087301
L11_1 = 910830060
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L6_1[5] = L11_1
L7_1 = {}
L8_1 = 453432689
L9_1 = 1593441988
L10_1 = 584646201
L11_1 = -1716589765
L12_1 = 324215364
L13_1 = 736523883
L14_1 = -270015777
L15_1 = -1074790547
L16_1 = -2084633992
L17_1 = -1357824103
L18_1 = -1660422300
L19_1 = 2144741730
L20_1 = 487013001
L21_1 = 2017895192
L22_1 = -494615257
L23_1 = -1654528753
L24_1 = 100416529
L25_1 = 205991906
L26_1 = 1119849093
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L7_1[4] = L11_1
L7_1[5] = L12_1
L7_1[6] = L13_1
L7_1[7] = L14_1
L7_1[8] = L15_1
L7_1[9] = L16_1
L7_1[10] = L17_1
L7_1[11] = L18_1
L7_1[12] = L19_1
L7_1[13] = L20_1
L7_1[14] = L21_1
L7_1[15] = L22_1
L7_1[16] = L23_1
L7_1[17] = L24_1
L7_1[18] = L25_1
L7_1[19] = L26_1
L8_1 = {}
L9_1 = -100946242
L10_1 = 148160082
L8_1[1] = L9_1
L8_1[2] = L10_1
L9_1 = {}
L10_1 = -842959696
L9_1[1] = L10_1
L10_1 = {}
L11_1 = -1568386805
L12_1 = 1305664598
L13_1 = -1312131151
L14_1 = 375527679
L15_1 = 324506233
L16_1 = 1752584910
L17_1 = -1813897027
L18_1 = 741814745
L19_1 = -37975472
L20_1 = 539292904
L21_1 = 341774354
L22_1 = -1090665087
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
L11_1 = {}
L12_1 = -1600701090
L11_1[1] = L12_1
L12_1 = {}
L13_1 = 615608432
L14_1 = 883325847
L15_1 = -544306709
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L13_1 = {}
L14_1 = -10959621
L15_1 = 1936677264
L13_1[1] = L14_1
L13_1[2] = L15_1
L14_1 = {}
L15_1 = 133987706
L16_1 = -1553120962
L14_1[1] = L15_1
L14_1[2] = L16_1
L15_1 = CreateThread
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetWeaponsNoAutoswap
  L1_2 = true
  L0_2(L1_2)
  L0_2 = TaskSwapWeapon
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetWeaponsNoAutoreload
  L1_2 = true
  L0_2(L1_2)
end
L15_1(L16_1)
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
function L16_1()
  local L0_2, L1_2
  L0_2 = StartDistressSignal
  L0_2()
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    while true do
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = timerRespawn
      if L1_3 > 1 then
        L1_3 = GetEntitySpeed
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if L1_3 < 1.0 then
          L1_3 = GetEntityCoords
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = timerRespawn
          L2_3 = L2_3 - 1
          timerRespawn = L2_3
          L2_3 = PlaySoundFrontend
          L3_3 = -1
          L4_3 = "SELECT"
          L5_3 = "HUD_FRONTEND_CLOTHESSHOP_SOUNDSET"
          L6_3 = 1
          L2_3(L3_3, L4_3, L5_3, L6_3)
          L2_3 = timerRespawn
          if L2_3 <= 1 then
            timerRespawn = 0
            L2_3 = ExecuteCommand
            L3_3 = "prova3 "
            L2_3(L3_3)
            return
          end
        end
      end
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = timerRespawn
      if not (L0_3 > 1) then
        break
      end
      L0_3 = L1_1
      L1_3 = "~h~"
      L2_3 = timerRespawn
      L2_3 = L2_3 - 2
      L3_3 = "~h~s."
      L1_3 = L1_3 .. L2_3 .. L3_3
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
looprespawn = L16_1
L16_1 = exports
L17_1 = "sonomorto"
function L18_1()
  local L0_2, L1_2
  L0_2 = IsDead
  return L0_2
end
L16_1(L17_1, L18_1)
L16_1 = exports
L17_1 = "getmorto"
function L18_1()
  local L0_2, L1_2
  L0_2 = IsDead
  return L0_2
end
L16_1(L17_1, L18_1)
notFastGetup = false
L16_1 = exports
L17_1 = "fastgetup"
function L18_1()
  local L0_2, L1_2
  notFastGetup = true
end
L16_1(L17_1, L18_1)
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = DisplayRadar
  L2_2 = false
  L1_2(L2_2)
  L1_2 = SetEveryoneIgnorePlayer
  L2_2 = PlayerId
  L2_2 = L2_2()
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityInvincible
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = NetworkSetPlayerIsPassive
  L2_2 = true
  L1_2(L2_2)
  L1_2 = SetBlockingOfNonTemporaryEvents
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanBeTargetted
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCanBeDamaged
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEntityCanBeTargetedWithoutLos
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetCurrentPedWeapon
  L2_2 = L0_2
  L3_2 = -1569615261
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ExecuteCommand
  L2_2 = "hudoff2"
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsDead
      if L0_3 then
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 37
        L0_3(L1_3, L2_3)
        L0_3 = IsPedRagdoll
        L1_3 = L0_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 246
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 23
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 82
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 318
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 289
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
        end
        L0_3 = timerRespawn
        if 0 == L0_3 then
          while true do
            L0_3 = GetEntitySpeed
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            L1_3 = 0.1
            if not (L0_3 > L1_3) then
              break
            end
            L0_3 = IsEntityInWater
            L1_3 = L0_2
            L0_3 = L0_3(L1_3)
            if L0_3 then
              break
            end
            L0_3 = Wait
            L1_3 = 0
            L0_3(L1_3)
          end
          L0_3 = ExecuteCommand
          L1_3 = "prova3 "
          L0_3(L1_3)
          timerRespawn = -1
          L0_3 = PlaySoundFrontend
          L1_3 = -1
          L2_3 = "OOB_Start"
          L3_3 = "GTAO_FM_Events_Soundset"
          L4_3 = 0
          L0_3(L1_3, L2_3, L3_3, L4_3)
          L0_3 = ExecuteCommand
          L1_3 = "face mood_sleeping_1"
          L0_3(L1_3)
          L0_3 = TriggerServerEvent
          L1_3 = "getBlackout"
          L2_3 = GetPlayerServerId
          L3_3 = PlayerId
          L3_3, L4_3 = L3_3()
          L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
          L0_3(L1_3, L2_3, L3_3, L4_3)
        end
        L0_3 = timerRespawn
        if -1 == L0_3 then
          L0_3 = SetPlayerInvincibleKeepRagdollEnabled
          L1_3 = L0_2
          L2_3 = true
          L0_3(L1_3, L2_3)
        end
      else
        L0_3 = SetPlayerInvincibleKeepRagdollEnabled
        L1_3 = L0_2
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = FreezeEntityPosition
        L1_3 = L0_2
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = SetEntityInvincible
        L1_3 = L0_2
        L2_3 = false
        L0_3(L1_3, L2_3)
        timerRespawn = 0
        L0_3 = ExecuteCommand
        L1_3 = "prova3 "
        L0_3(L1_3)
        L0_3 = ExecuteCommand
        L1_3 = "stopragdoll"
        L0_3(L1_3)
        L0_3 = ExecuteCommand
        L1_3 = "face reset"
        L0_3(L1_3)
        IsDead = false
        L0_3 = exports
        L0_3 = L0_3.text_guide
        L1_3 = L0_3
        L0_3 = L0_3.GuidaNascondi
        L0_3(L1_3)
        return
      end
    end
  end
  L1_2(L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    while true do
      L1_3 = timerRespawn
      if -1 == L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    while true do
      L1_3 = notFastGetup
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 33
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 33
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 32
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 32
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 34
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 34
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 35
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 35
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 22
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 22
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 21
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 21
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 74
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 74
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 73
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsDisabledControlJustPressed
      L2_3 = 0
      L3_3 = 73
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        break
      end
      L1_3 = IsPedFatallyInjured
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        break
      end
      L1_3 = L1_1
      L2_3 = "Press to getup."
      L1_3(L2_3)
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    L1_3 = exports
    L1_3 = L1_3.text_guide
    L2_3 = L1_3
    L1_3 = L1_3.ClearGuideText
    L1_3(L2_3)
    L1_3 = exports
    L1_3 = L1_3.text_guide
    L2_3 = L1_3
    L1_3 = L1_3.GuidaNascondi
    L1_3(L2_3)
    L1_3 = exports
    L1_3 = L1_3.striano_combat
    L2_3 = L1_3
    L1_3 = L1_3.submex
    L3_3 = ""
    L1_3(L2_3, L3_3)
    L1_3 = ExecuteCommand
    L2_3 = "prova3 "
    L1_3(L2_3)
    L1_3 = ExecuteCommand
    L2_3 = "face reset"
    L1_3(L2_3)
    L1_3 = GetEntityHealth
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if L1_3 > 110 then
      L2_3 = SetEntityHealth
      L3_3 = L0_3
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    else
      L2_3 = SetEntityHealth
      L3_3 = L0_3
      L4_3 = 110
      L2_3(L3_3, L4_3)
    end
    L2_3 = TriggerServerEvent
    L3_3 = "status:set"
    L4_3 = GetPlayerServerId
    L5_3 = PlayerId
    L5_3, L6_3, L7_3 = L5_3()
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = "vitapl"
    L6_3 = GetEntityHealth
    L7_3 = L0_3
    L6_3, L7_3 = L6_3(L7_3)
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = TriggerEvent
    L3_3 = "esx_ambulancejjj:revive"
    L2_3(L3_3)
    L2_3 = ExecuteCommand
    L3_3 = "hudon2"
    L2_3(L3_3)
    L2_3 = ExecuteCommand
    L3_3 = "guidabase"
    L2_3(L3_3)
    L2_3 = notFastGetup
    if not L2_3 then
      L2_3 = Wait
      L3_3 = 1000
      L2_3(L3_3)
    end
    notFastGetup = false
    IsDead = false
    L2_3 = ExecuteCommand
    L3_3 = "atmosfera"
    L2_3(L3_3)
  end
  L1_2(L2_2)
end
StartDistressSignal = L16_1
L16_1 = RegisterNetEvent
L17_1 = "morto3d"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "morto3d"
function L18_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A2_2
  L5_2 = DisplayMorto
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = L4_2
  L9_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L16_1(L17_1, L18_1)
L16_1 = {}
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.idd
    if L8_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
function L18_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = true
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 60000
    L0_3(L1_3)
    L0_3 = false
    L4_2 = L0_3
  end
  L5_2(L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L4_2
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L1_3 = vector3
      L2_3 = A1_2.x
      L3_3 = A1_2.y
      L4_3 = A1_2.z
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L2_3 = vector3
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3 = L1_3 - L2_3
      L1_3 = #L1_3
      if L1_3 < 25.0 then
        L1_3 = Draw3DText
        L2_3 = A1_2.x
        L3_3 = A1_2.y
        L4_3 = A1_2.z
        L5_3 = " [~y~"
        L6_3 = A0_2
        L7_3 = "~w~] "
        L8_3 = A2_2
        L9_3 = "~n~("
        L10_3 = A3_2
        L11_3 = ")"
        L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = L17_1
        L2_3 = L16_1
        L3_3 = A0_2
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          L1_3 = table
          L1_3 = L1_3.insert
          L2_3 = L16_1
          L3_3 = {}
          L4_3 = A0_2
          L3_3.idd = L4_3
          L1_3(L2_3, L3_3)
          L1_3 = print
          L2_3 = "Diconnected ["
          L3_3 = A0_2
          L4_3 = "] ("
          L5_3 = A2_2
          L6_3 = ") "
          L7_3 = A3_2
          L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3 .. L7_3
          L1_3(L2_3)
        end
      end
    end
    L0_3 = ipairs
    L1_3 = L16_1
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L5_3.idd
      L7_3 = A0_2
      if L6_3 == L7_3 then
        L6_3 = table
        L6_3 = L6_3.remove
        L7_3 = L16_1
        L8_3 = L4_3
        L6_3(L7_3, L8_3)
        break
      end
    end
  end
  L5_2(L6_2)
end
DisplayMorto = L18_1
L18_1 = CreateThread
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedFatallyInjured
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedDeadOrDying
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        goto lbl_76
      end
    end
    L1_2 = IsPedHuman
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = IsDead
      if not L1_2 then
        L1_2 = exports
        L1_2 = L1_2.striano_editor
        L2_2 = L1_2
        L1_2 = L1_2.induskfalls
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = SetPedConfigFlag
          L2_2 = L0_2
          L3_2 = 164
          L4_2 = false
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = L4_1
          timerRespawn = L1_2
          IsDead = true
          L1_2 = OnPlayerDeathFunc
          L1_2()
          L1_2 = looprespawn
          L1_2()
          L1_2 = ExecuteCommand
          L2_2 = "prova3 "
          L1_2(L2_2)
          L1_2 = exports
          L1_2 = L1_2.striano_editor
          L2_2 = L1_2
          L1_2 = L1_2.addFeritaFacciale
          L1_2(L2_2)
          L1_2 = ClearRagdollBlockingFlags
          L2_2 = L0_2
          L3_2 = 26
          L1_2(L2_2, L3_2)
          L1_2 = ResetPedRagdollTimer
          L2_2 = L0_2
          L1_2(L2_2)
          L1_2 = Wait
          L2_2 = 1000
          L1_2(L2_2)
          L1_2 = exports
          L1_2 = L1_2.striano_core
          L2_2 = L1_2
          L1_2 = L1_2.StartOrbitCam
          L3_2 = vector3
          L4_2 = 0.0
          L5_2 = 0.0
          L6_2 = 0.5
          L3_2 = L3_2(L4_2, L5_2, L6_2)
          L4_2 = L0_2
          L5_2 = nil
          L6_2 = 3.0
          L7_2 = 30.0
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
          L1_2 = TriggerServerEvent
          L2_2 = "getBlackout"
          L3_2 = GetPlayerServerId
          L4_2 = PlayerId
          L4_2, L5_2, L6_2, L7_2 = L4_2()
          L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
        end
      end
    end
    ::lbl_76::
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L18_1(L19_1)
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetPedDropsWeaponsWhenDead
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedAmmoToDrop
  L2_2 = L0_2
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "Zone_Enemy_Capture"
  L4_2 = "DLC_Apartments_Drop_Zone_Sounds"
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = GetPedCauseOfDeath
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ""
  L3_2 = L15_1
  L4_2 = L5_1
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = false
    L3_1 = L3_2
    L2_2 = "**MORTO** (fight) "
  else
    L3_2 = L15_1
    L4_2 = L7_1
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = false
      L3_1 = L3_2
      L2_2 = "**MORTO** (bullet) "
    else
      L3_2 = L15_1
      L4_2 = L6_1
      L5_2 = L1_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = false
        L3_1 = L3_2
        L2_2 = "**MORTO** (cut) "
      else
        L3_2 = L15_1
        L4_2 = L8_1
        L5_2 = L1_2
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L3_2 = false
          L3_1 = L3_2
          L2_2 = "**MORTO** (animal) "
        else
          L3_2 = L15_1
          L4_2 = L9_1
          L5_2 = L1_2
          L3_2 = L3_2(L4_2, L5_2)
          if L3_2 then
            L3_2 = false
            L3_1 = L3_2
            MortoCaduta = true
            L2_2 = "**MORTO** (fall) "
          else
            L3_2 = L15_1
            L4_2 = L10_1
            L5_2 = L1_2
            L3_2 = L3_2(L4_2, L5_2)
            if L3_2 then
              L3_2 = false
              L3_1 = L3_2
              L2_2 = "**MORTO** (explosion) "
            else
              L3_2 = L15_1
              L4_2 = L11_1
              L5_2 = L1_2
              L3_2 = L3_2(L4_2, L5_2)
              if L3_2 then
                L3_2 = false
                L3_1 = L3_2
                L2_2 = "**MORTO** (gas) "
              else
                L3_2 = L15_1
                L4_2 = L12_1
                L5_2 = L1_2
                L3_2 = L3_2(L4_2, L5_2)
                if L3_2 then
                  L3_2 = false
                  L3_1 = L3_2
                  L2_2 = "**MORTO** (fire) "
                else
                  L3_2 = L15_1
                  L4_2 = L13_1
                  L5_2 = L1_2
                  L3_2 = L3_2(L4_2, L5_2)
                  if L3_2 then
                    L3_2 = false
                    L3_1 = L3_2
                    L2_2 = "**MORTO** (water) "
                  else
                    L3_2 = L15_1
                    L4_2 = L14_1
                    L5_2 = L1_2
                    L3_2 = L3_2(L4_2, L5_2)
                    if L3_2 then
                      L3_2 = false
                      L3_1 = L3_2
                      L2_2 = "**MORTO** (car) "
                    else
                      L3_2 = false
                      L3_1 = L3_2
                      L2_2 = "**MORTO** (unknow) "
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
  L3_2 = GetPedLastDamageBone
  L4_2 = L0_2
  L3_2, L4_2 = L3_2(L4_2)
  if L3_2 then
    L5_2 = MortoCaduta
    if not L5_2 and (65068 == L4_2 or 47495 == L4_2 or 46240 == L4_2 or 35731 == L4_2 or 31086 == L4_2 or 39317 == L4_2) then
      L5_2 = false
      L3_1 = L5_2
    end
  end
  L5_2 = GetEntityModel
  L6_2 = L0_2
  L5_2 = L5_2(L6_2)
  if 1885233650 ~= L5_2 then
    L5_2 = GetEntityModel
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    if -1667301416 ~= L5_2 then
      L5_2 = false
      L3_1 = L5_2
    end
  end
  L5_2 = IsPedInAnyVehicle
  L6_2 = L0_2
  L7_2 = true
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = GetEntityCoords
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    L6_2 = SetEntityCoords
    L7_2 = L0_2
    L8_2 = L5_2.x
    L9_2 = L5_2.y
    L10_2 = L5_2.z
    L10_2 = L10_2 - 0.47
    L11_2 = true
    L12_2 = true
    L13_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L5_2 = exports
  L5_2 = L5_2.striano_core
  L6_2 = L5_2
  L5_2 = L5_2.nebbia
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = DoScreenFadeOut
    L6_2 = 1000
    L5_2(L6_2)
    L5_2 = Wait
    L6_2 = 2000
    L5_2(L6_2)
    L5_2 = SetEntityCoords
    L6_2 = L0_2
    L7_2 = 2873.581
    L8_2 = 7502.057
    L9_2 = 19.402
    L10_2 = true
    L11_2 = true
    L12_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L5_2 = Wait
    L6_2 = 500
    L5_2(L6_2)
    L5_2 = GetEntityCoords
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    L6_2 = PlayEffectTutorial
    L7_2 = "core"
    L8_2 = "trail_splash_petrol"
    L9_2 = vector3
    L10_2 = L5_2.x
    L11_2 = L5_2.y
    L12_2 = L5_2.z
    L12_2 = L12_2 - 1.5
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = 5.5
    L11_2 = vector3
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = CreateThread
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 5500
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
    L7_2 = Wait
    L8_2 = 1000
    L7_2(L8_2)
    L7_2 = DoScreenFadeIn
    L8_2 = 1000
    L7_2(L8_2)
  end
end
OnPlayerDeathFunc = L18_1
L18_1 = RegisterNetEvent
L19_1 = "esx_ambulancejjj:revive"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "esx_ambulancejjj:revive"
function L20_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = timerRespawn
  if L1_2 > 3 then
    timerRespawn = 3
  end
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      L0_3 = DoScreenFadeOut
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 900
      L0_3(L1_3)
      L0_3 = GetEntityCoords
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      L1_3 = GetEntityHeading
      L2_3 = L0_2
      L1_3 = L1_3(L2_3)
      L2_3 = false
      L3_3 = IsPedDeadOrDying
      L4_3 = L0_2
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        L3_3 = IsPedFatallyInjured
        L4_3 = L0_2
        L3_3 = L3_3(L4_3)
        if not L3_3 then
          goto lbl_52
        end
      end
      L3_3 = RequestCollisionAtCoord
      L4_3 = L0_3.x
      L5_3 = L0_3.y
      L6_3 = L0_3.z
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = NetworkResurrectLocalPlayer
      L4_3 = L0_3.x
      L5_3 = L0_3.y
      L6_3 = L0_3.z
      L7_3 = L1_3
      L8_3 = true
      L9_3 = false
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      L3_3 = SetEntityCoordsNoOffset
      L4_3 = L0_2
      L5_3 = L0_3.x
      L6_3 = L0_3.y
      L7_3 = L0_3.z
      L8_3 = false
      L9_3 = false
      L10_3 = false
      L11_3 = true
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L3_3 = CreateThread
      function L4_3()
        local L0_4, L1_4
        L0_4 = Wait
        L1_4 = 25
        L0_4(L1_4)
        L0_4 = ExecuteCommand
        L1_4 = "loadtattoo"
        L0_4(L1_4)
      end
      L3_3(L4_3)
      L2_3 = true
      goto lbl_58
      ::lbl_52::
      L3_3 = TriggerEvent
      L4_3 = "esx_ambulancejjj:healAdmin"
      L3_3(L4_3)
      L3_3 = ExecuteCommand
      L4_3 = "respawnme"
      L3_3(L4_3)
      ::lbl_58::
      L3_3 = exports
      L3_3 = L3_3.striano_core
      L4_3 = L3_3
      L3_3 = L3_3.EndOrbitCam
      L3_3(L4_3)
      L3_3 = exports
      L3_3 = L3_3.striano_combat
      L4_3 = L3_3
      L3_3 = L3_3.resetcolpi
      L3_3(L4_3)
      MortoCaduta = false
      L3_3 = IsPedRagdoll
      L4_3 = L0_2
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = ExecuteCommand
        L4_3 = "stopragdoll"
        L3_3(L4_3)
      end
      if L2_3 then
        L3_3 = exports
        L3_3 = L3_3.skinchanger
        L4_3 = L3_3
        L3_3 = L3_3.myOfficialCoords
        L3_3 = L3_3(L4_3)
        L4_3 = FreezeEntityPosition
        L5_3 = L0_2
        L6_3 = true
        L4_3(L5_3, L6_3)
        L4_3 = SetEntityCoords
        L5_3 = L0_2
        L6_3 = L3_3.x
        L7_3 = L3_3.y
        L8_3 = L3_3.z
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = Wait
        L5_3 = 250
        L4_3(L5_3)
        L4_3 = GetEntityForwardVector
        L5_3 = L0_2
        L4_3 = L4_3(L5_3)
        L5_3 = table
        L5_3 = L5_3.unpack
        L6_3 = GetEntityCoords
        L7_3 = L0_2
        L6_3 = L6_3(L7_3)
        L7_3 = L4_3 * 1.0
        L6_3 = L6_3 + L7_3
        L5_3, L6_3, L7_3 = L5_3(L6_3)
        L8_3 = vector3
        L9_3 = L5_3
        L10_3 = L6_3
        L11_3 = L7_3
        L8_3 = L8_3(L9_3, L10_3, L11_3)
        L3_3 = L8_3
        L8_3 = SetEntityCoords
        L9_3 = L0_2
        L10_3 = L3_3.x
        L11_3 = L3_3.y
        L12_3 = L3_3.z
        L8_3(L9_3, L10_3, L11_3, L12_3)
        L8_3 = Wait
        L9_3 = 250
        L8_3(L9_3)
        L8_3 = SetEntityCoords
        L9_3 = L0_2
        L10_3 = L3_3.x
        L11_3 = L3_3.y
        L12_3 = L3_3.z
        L8_3(L9_3, L10_3, L11_3, L12_3)
        L8_3 = Wait
        L9_3 = 250
        L8_3(L9_3)
        L8_3 = GetClosestObjectOfType
        L9_3 = vector3
        L10_3 = L3_3.x
        L11_3 = L3_3.y
        L12_3 = L3_3.z
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L10_3 = 50.0
        L11_3 = -167376511
        L12_3 = 0
        L13_3 = 0
        L14_3 = 0
        L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        if 0 ~= L8_3 then
          L9_3 = makeEntityFaceEntity
          L10_3 = L0_2
          L11_3 = L8_3
          L9_3(L10_3, L11_3)
          L9_3 = TriggerEvent
          L10_3 = "bracierePos"
          L11_3 = GetEntityCoords
          L12_3 = L8_3
          L11_3, L12_3, L13_3, L14_3 = L11_3(L12_3)
          L9_3(L10_3, L11_3, L12_3, L13_3, L14_3)
        end
        L9_3 = ExecuteCommand
        L10_3 = "e falo"
        L9_3(L10_3)
        L9_3 = Wait
        L10_3 = 550
        L9_3(L10_3)
        L9_3 = DoScreenFadeIn
        L10_3 = 950
        L9_3(L10_3)
        L9_3 = SetEntityHealth
        L10_3 = L0_2
        L11_3 = 120
        L9_3(L10_3, L11_3)
        L9_3 = Wait
        L10_3 = 3750
        L9_3(L10_3)
        L9_3 = ClearPedTasks
        L10_3 = L0_2
        L9_3(L10_3)
        L9_3 = FreezeEntityPosition
        L10_3 = L0_2
        L11_3 = false
        L9_3(L10_3, L11_3)
        L9_3 = ExecuteCommand
        L10_3 = "e Injured"
        L9_3(L10_3)
        L9_3 = exports
        L9_3 = L9_3.striano_combat
        L10_3 = L9_3
        L9_3 = L9_3.fodera2
        L9_3(L10_3)
        L9_3 = exports
        L9_3 = L9_3.striano_ridehorse
        L10_3 = L9_3
        L9_3 = L9_3.ShowInstructionalButtonsTimed
        L11_3 = "~h~Drink Eteris for heal or warm up."
        L12_3 = {}
        L13_3 = 288
        L12_3[1] = L13_3
        L9_3(L10_3, L11_3, L12_3)
        L9_3 = Wait
        L10_3 = 2000
        L9_3(L10_3)
        L9_3 = ExecuteCommand
        L10_3 = "guidaBase"
        L9_3(L10_3)
        L9_3 = ExecuteCommand
        L10_3 = "shakeoff"
        L9_3(L10_3)
        L9_3 = Wait
        L10_3 = 2000
        L9_3(L10_3)
        L9_3 = ExecuteCommand
        L10_3 = "atmosfera"
        L9_3(L10_3)
      end
    end
    L1_2(L2_2)
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "esx_ambulancejjj:respawn"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "esx_ambulancejjj:respawn"
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityHeading
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = RequestCollisionAtCoord
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = NetworkResurrectLocalPlayer
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2
  L8_2 = true
  L9_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = SetEntityCoordsNoOffset
  L4_2 = L0_2
  L5_2 = L1_2.x
  L6_2 = L1_2.y
  L7_2 = L1_2.z
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L11_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  MortoCaduta = false
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "esx_ambulancejjj:revive3"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "esx_ambulancejjj:revive3"
function L20_1()
  local L0_2, L1_2
  L0_2 = timerRespawn
  if L0_2 > 3 then
    timerRespawn = 3
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterCommand
L19_1 = "sonomorto"
function L20_1()
  local L0_2, L1_2
  L0_2 = IsDead
  if L0_2 then
    L0_2 = print
    L1_2 = "Si sono morto"
    L0_2(L1_2)
  else
    L0_2 = print
    L1_2 = "No non sono morto"
    L0_2(L1_2)
  end
end
L18_1(L19_1, L20_1)
L18_1 = false
L19_1 = RegisterCommand
L20_1 = "flagtestlg"
function L21_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L18_1
  L0_2 = not L0_2
  L18_1 = L0_2
  L0_2 = SetPedConfigFlag
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 164
  L3_2 = L18_1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L18_1
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Flag LG: Attivo"
    L0_2(L1_2, L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Flag LG: Disattivo"
    L0_2(L1_2, L2_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = RegisterCommand
L20_1 = "aiuta"
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerVicino
  L0_2, L1_2 = L0_2()
  if -1 ~= L0_2 then
    L2_2 = 1.3
    if L1_2 < L2_2 then
      L2_2 = ExecuteCommand
      L3_2 = "e aiuta"
      L2_2(L3_2)
      L2_2 = Wait
      L3_2 = 2000
      L2_2(L3_2)
      L2_2 = TriggerServerEvent
      L3_2 = "esx_ambulancejjj:revive"
      L4_2 = GetPlayerFromServerId
      L5_2 = L0_2
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = Wait
      L3_2 = "e prendi6"
      L2_2(L3_2)
    end
  end
end
L19_1(L20_1, L21_1)
function L19_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = 0.3
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
L20_1 = RegisterCommand
L21_1 = "analizza"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerVicino
  L0_2, L1_2 = L0_2()
  if -1 ~= L1_2 then
    L2_2 = 1.5
    if L1_2 <= L2_2 then
      L2_2 = GetPedLastDamageBone
      L3_2 = GetPlayerPed
      L4_2 = L0_2
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
      L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      if L2_2 then
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = GetPedBoneCoords
        L6_2 = GetPlayerPed
        L7_2 = L0_2
        L6_2 = L6_2(L7_2)
        L7_2 = L3_2
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
        L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        L7_2 = CreateThread
        function L8_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
          L0_3 = 250
          while true do
            L1_3 = Wait
            L2_3 = 0
            L1_3(L2_3)
            L0_3 = L0_3 - 1
            if L0_3 <= 0 then
              return
            end
            L1_3 = L19_1
            L2_3 = L4_2
            L3_3 = L5_2
            L4_3 = L6_2
            L5_3 = "x"
            L1_3(L2_3, L3_3, L4_3, L5_3)
          end
        end
        L7_2(L8_2)
      else
        L4_2 = exports
        L4_2 = L4_2.striano_combat
        L5_2 = L4_2
        L4_2 = L4_2.submexError
        L6_2 = "No serious injuries identified on the player."
        L4_2(L5_2, L6_2)
      end
  end
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "No one nearby."
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "e shrug3"
    L2_2(L3_2)
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "painkiller"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "painkiller"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = ExecuteCommand
  L1_2 = "e painkiller"
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 2500
  L0_2(L1_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = "misstrevor1ig_7"
  L4_2 = "ortega_01_drinking_idle_intro"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 then
    L1_2 = GetEntityHealth
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2 + 30
    L3_2 = exports
    L3_2 = L3_2.striano_core
    L4_2 = L3_2
    L3_2 = L3_2.getliferank
    L3_2 = L3_2(L4_2)
    if L2_2 < L3_2 then
      L4_2 = SetEntityHealth
      L5_2 = L0_2
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
      L4_2 = exports
      L4_2 = L4_2.striano_combat
      L5_2 = L4_2
      L4_2 = L4_2.submexInfo
      L6_2 = "+30hp ("
      L7_2 = GetEntityHealth
      L8_2 = L0_2
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2 - 100
      L8_2 = "hp)"
      L6_2 = L6_2 .. L7_2 .. L8_2
      L4_2(L5_2, L6_2)
    else
      L4_2 = SetEntityHealth
      L5_2 = L0_2
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    L4_2 = TriggerServerEvent
    L5_2 = "status:set"
    L6_2 = GetPlayerServerId
    L7_2 = PlayerId
    L7_2, L8_2, L9_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = "vitapl"
    L8_2 = GetEntityHealth
    L9_2 = L0_2
    L8_2, L9_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = ExecuteCommand
    L5_2 = "e posatasca"
    L4_2(L5_2)
    L4_2 = TriggerEvent
    L5_2 = "xnTattoos:resetferita"
    L4_2(L5_2)
  else
    L1_2 = ExecuteCommand
    L2_2 = "e shrug6"
    L1_2(L2_2)
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:usabenda"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:usabenda"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L2_1
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_core
    L1_2 = L0_2
    L0_2 = L0_2.getliferank
    L0_2 = L0_2(L1_2)
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetEntityHealth
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L0_2 > L2_2 then
      L2_2 = true
      L2_1 = L2_2
      L2_2 = ExecuteCommand
      L3_2 = "e benda"
      L2_2(L3_2)
      L2_2 = Wait
      L3_2 = 6000
      L2_2(L3_2)
      L2_2 = false
      L2_1 = L2_2
      L2_2 = IsEntityPlayingAnim
      L3_2 = L1_2
      L4_2 = "anim@amb@nightclub@poster@"
      L5_2 = "poster_placement"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if L2_2 then
        L2_2 = exports
        L2_2 = L2_2.striano_combat
        L3_2 = L2_2
        L2_2 = L2_2.submex
        L4_2 = ""
        L2_2(L3_2, L4_2)
        L2_2 = ExecuteCommand
        L3_2 = "e puliscimani"
        L2_2(L3_2)
        L2_2 = GetEntityHealth
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L3_2 = L2_2 + 10
        L4_2 = exports
        L4_2 = L4_2.striano_core
        L5_2 = L4_2
        L4_2 = L4_2.getliferank
        L4_2 = L4_2(L5_2)
        if L3_2 < L4_2 then
          L5_2 = SetEntityHealth
          L6_2 = L1_2
          L7_2 = L3_2
          L5_2(L6_2, L7_2)
          L5_2 = exports
          L5_2 = L5_2.striano_combat
          L6_2 = L5_2
          L5_2 = L5_2.submexInfo
          L7_2 = "+10hp ("
          L8_2 = GetEntityHealth
          L9_2 = L1_2
          L8_2 = L8_2(L9_2)
          L8_2 = L8_2 - 100
          L9_2 = "hp)"
          L7_2 = L7_2 .. L8_2 .. L9_2
          L5_2(L6_2, L7_2)
        else
          L5_2 = SetEntityHealth
          L6_2 = L1_2
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
        end
        L5_2 = exports
        L5_2 = L5_2.striano_editor
        L6_2 = L5_2
        L5_2 = L5_2.resettaferitasingola
        L5_2(L6_2)
        L5_2 = ExecuteCommand
        L6_2 = "e puliscimani"
        L5_2(L6_2)
        L5_2 = TriggerServerEvent
        L6_2 = "status:set"
        L7_2 = GetPlayerServerId
        L8_2 = PlayerId
        L8_2, L9_2, L10_2 = L8_2()
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L8_2 = "vitapl"
        L9_2 = GetEntityHealth
        L10_2 = L1_2
        L9_2, L10_2 = L9_2(L10_2)
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      end
    else
      L2_2 = ExecuteCommand
      L3_2 = "e shrug6"
      L2_2(L3_2)
    end
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:medikit"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:medikit"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L2_1
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_editor
    L1_2 = L0_2
    L0_2 = L0_2.crouchato
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = ExecuteCommand
      L2_2 = "fixcrouch"
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 25
      L1_2(L2_2)
      L1_2 = true
      L2_1 = L1_2
      L1_2 = ExecuteCommand
      L2_2 = "e benda2"
      L1_2(L2_2)
      L1_2 = Wait
      L2_2 = 5500
      L1_2(L2_2)
      L1_2 = IsEntityPlayingAnim
      L2_2 = L0_2
      L3_2 = "anim@amb@nightclub@poster@"
      L4_2 = "poster_placement"
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if L1_2 then
        L1_2 = GetEntitySpeed
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = 0.5
        if L1_2 < L2_2 then
          L1_2 = ExecuteCommand
          L2_2 = "e cc"
          L1_2(L2_2)
          L1_2 = ExecuteCommand
          L2_2 = "e benda2"
          L1_2(L2_2)
          L1_2 = Wait
          L2_2 = 5500
          L1_2(L2_2)
          L1_2 = false
          L2_1 = L1_2
          L1_2 = IsEntityPlayingAnim
          L2_2 = L0_2
          L3_2 = "anim@amb@nightclub@poster@"
          L4_2 = "poster_placement"
          L5_2 = 3
          L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
          if L1_2 then
            L1_2 = GetEntitySpeed
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            L2_2 = 0.5
            if L1_2 < L2_2 then
              L1_2 = exports
              L1_2 = L1_2.striano_combat
              L2_2 = L1_2
              L1_2 = L1_2.submex
              L3_2 = ""
              L1_2(L2_2, L3_2)
              L1_2 = ExecuteCommand
              L2_2 = "e puliscimani"
              L1_2(L2_2)
              L1_2 = TriggerServerEvent
              L2_2 = "status:remove"
              L3_2 = GetPlayerServerId
              L4_2 = PlayerId
              L4_2, L5_2 = L4_2()
              L3_2 = L3_2(L4_2, L5_2)
              L4_2 = "stress"
              L5_2 = 100000
              L1_2(L2_2, L3_2, L4_2, L5_2)
              L1_2 = exports
              L1_2 = L1_2.striano_core
              L2_2 = L1_2
              L1_2 = L1_2.liferank
              L1_2(L2_2)
              L1_2 = exports
              L1_2 = L1_2.striano_editor
              L2_2 = L1_2
              L1_2 = L1_2.ResettaFerite
              L1_2(L2_2)
          end
          else
            L1_2 = false
            L2_1 = L1_2
          end
      end
      else
        L1_2 = false
        L2_1 = L1_2
      end
    else
      L0_2 = false
      L2_1 = L0_2
      L0_2 = ExecuteCommand
      L1_2 = "e shrug5"
      L0_2(L1_2)
    end
  end
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:healAdmin"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:healAdmin"
function L22_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.liferank
  L0_2(L1_2)
  L0_2 = IsEntityPositionFrozen
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "e stretch6"
    L0_2(L1_2)
  end
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.setcamminata
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 125
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "atmosfera"
  L0_2(L1_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:healAdminNoAnim"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:healAdminNoAnim"
function L22_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.liferank
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.setcamminata
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 125
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "atmosfera"
  L0_2(L1_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:pocavitaAdmin"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:pocavitaAdmin"
function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = SetEntityHealth
  L2_2 = L0_2
  L3_2 = 120
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "status:set"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2, L5_2, L6_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = "vitapl"
  L5_2 = GetEntityHealth
  L6_2 = L0_2
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = print
  L2_2 = "Poca vita set: "
  L3_2 = GetEntityHealth
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 - 100
  L4_2 = " - MAX: "
  L5_2 = GetEntityMaxHealth
  L6_2 = L0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 - 100
  L6_2 = " hp."
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 125
  L1_2(L2_2)
  L1_2 = ExecuteCommand
  L2_2 = "atmosfera"
  L1_2(L2_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:cleanme"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:cleanme"
function L22_1()
  local L0_2, L1_2
  L0_2 = CleanMe
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2(L1_2)
end
L20_1(L21_1, L22_1)
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ClearPedBloodDamage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ClearPedEnvDirt
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = ClearPedDamageDecalByZone
  L2_2 = A0_2
  L3_2 = 0
  L4_2 = "ALL"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearPedDamageDecalByZone
  L2_2 = A0_2
  L3_2 = 1
  L4_2 = "ALL"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearPedDamageDecalByZone
  L2_2 = A0_2
  L3_2 = 2
  L4_2 = "ALL"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearPedDamageDecalByZone
  L2_2 = A0_2
  L3_2 = 3
  L4_2 = "ALL"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearPedDamageDecalByZone
  L2_2 = A0_2
  L3_2 = 4
  L4_2 = "ALL"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearPedDamageDecalByZone
  L2_2 = A0_2
  L3_2 = 5
  L4_2 = "ALL"
  L1_2(L2_2, L3_2, L4_2)
end
CleanMe = L20_1
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:armourAdmin"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:armourAdmin"
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetPedArmour
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = ExecuteCommand
  L2_2 = "prova Bulletproof set by admin: "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx_ambulancejjj:delarmourAdmin"
L20_1(L21_1)
L20_1 = AddEventHandler
L21_1 = "esx_ambulancejjj:delarmourAdmin"
function L22_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetPedArmour
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = ExecuteCommand
  L1_2 = "prova Bulletproof removed by admin."
  L0_2(L1_2)
end
L20_1(L21_1, L22_1)
function L20_1(A0_2)
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
loadDict = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = loadDict
  L2_2 = "missheistfbi3b_ig7"
  L1_2(L2_2)
  L1_2 = TaskPlayAnim
  L2_2 = A0_2
  L3_2 = "missheistfbi3b_ig7"
  L4_2 = "lift_fibagent_loop"
  L5_2 = 8.0
  L6_2 = 8.0
  L7_2 = 800
  L8_2 = 49
  L9_2 = 2.0
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
takelanim = L20_1
L20_1 = false
L21_1 = false
L22_1 = 2500
L23_1 = CreateThread
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsPedInAnyVehicle
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = Wait
      L2_2 = 2500
      L1_2(L2_2)
    else
      L1_2 = IsControlPressed
      L2_2 = 0
      L3_2 = 137
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = IsControlPressed
        L2_2 = 0
        L3_2 = 21
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = L20_1
          if not L1_2 then
            L1_2 = GetEntitySpeed
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            L2_2 = 0.2
            if L1_2 > L2_2 then
              L1_2 = IsPedRagdoll
              L2_2 = L0_2
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = IsEntityDead
                L2_2 = L0_2
                L1_2 = L1_2(L2_2)
                if not L1_2 then
                  L1_2 = IsPedDeadOrDying
                  L2_2 = L0_2
                  L3_2 = 1
                  L1_2 = L1_2(L2_2, L3_2)
                  if not L1_2 then
                    L1_2 = {}
                    L2_2 = takelanim
                    L3_2 = L0_2
                    L2_2(L3_2)
                    L2_2 = Wait
                    L3_2 = 350
                    L2_2(L3_2)
                    L2_2 = SetPedRagdollOnCollision
                    L3_2 = L0_2
                    L4_2 = true
                    L2_2(L3_2, L4_2)
                    L2_2 = true
                    L20_1 = L2_2
                    L2_2 = Wait
                    L3_2 = 0
                    L2_2(L3_2)
                    L2_2 = GetTouchedPlayers
                    L2_2 = L2_2()
                    if nil ~= L2_2 and 0 ~= L2_2 then
                      L3_2 = L1_2[L2_2]
                      if not L3_2 then
                        L3_2 = IsPedRagdoll
                        L4_2 = GetPlayerPed
                        L5_2 = L2_2
                        L4_2, L5_2, L6_2 = L4_2(L5_2)
                        L3_2 = L3_2(L4_2, L5_2, L6_2)
                        if not L3_2 then
                          L1_2[L2_2] = true
                          L3_2 = TriggerServerEvent
                          L4_2 = "Tackle:Server:TacklePlayer"
                          L5_2 = GetPlayerServerId
                          L6_2 = L2_2
                          L5_2, L6_2 = L5_2(L6_2)
                          L3_2(L4_2, L5_2, L6_2)
                          L3_2 = SetPedRagdollOnCollision
                          L4_2 = L0_2
                          L5_2 = false
                          L3_2(L4_2, L5_2)
                          L3_2 = Wait
                          L4_2 = 1000
                          L3_2(L4_2)
                        end
                      end
                    end
                    L3_2 = Wait
                    L4_2 = 1000
                    L3_2(L4_2)
                    L3_2 = false
                    L20_1 = L3_2
                    L3_2 = SetPedRagdollOnCollision
                    L4_2 = L0_2
                    L5_2 = false
                    L3_2(L4_2, L5_2)
                    L3_2 = Wait
                    L4_2 = 1000
                    L3_2(L4_2)
                  end
                end
              end
            end
          end
        end
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
      end
    end
  end
end
L23_1(L24_1)
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetActivePlayers
  L1_2 = L1_2()
  L2_2 = -1
  L3_2 = -1
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetEntityCoords
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = ipairs
  L7_2 = L1_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = GetPlayerPed
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 ~= L4_2 then
      L13_2 = GetEntityCoords
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      L14_2 = L13_2 - L5_2
      L14_2 = #L14_2
      if -1 == L2_2 or L2_2 > L14_2 then
        L3_2 = L11_2
        L2_2 = L14_2
      end
    end
  end
  if -1 ~= L2_2 and A0_2 >= L2_2 then
    return L3_2
  else
    L6_2 = nil
    return L6_2
  end
end
L24_1 = RegisterNetEvent
L25_1 = "Tackle:Client:TacklePlayer"
L24_1(L25_1)
L24_1 = AddEventHandler
L25_1 = "Tackle:Client:TacklePlayer"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    L1_2 = L23_1
    L2_2 = 2.1
    L1_2 = L1_2(L2_2)
    if nil ~= L1_2 then
      L2_2 = ExecuteCommand
      L3_2 = "prova Tackle getted."
      L2_2(L3_2)
      L2_2 = true
      L21_1 = L2_2
      L2_2 = SetPedToRagdoll
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = 5000
      L5_2 = 5000
      L6_2 = 0
      L7_2 = 0
      L8_2 = 0
      L9_2 = 0
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L2_2 = Wait
      L3_2 = 5000
      L2_2(L3_2)
      L2_2 = false
      L21_1 = L2_2
    end
  end
end
L24_1(L25_1, L26_1)
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
GetPlayers = L24_1
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 0
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = IsEntityTouchingEntity
    L8_2 = PlayerPedId
    L8_2 = L8_2()
    L9_2 = GetPlayerPed
    L10_2 = L6_2
    L9_2, L10_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L0_2 = L6_2
    end
  end
  return L0_2
end
GetTouchedPlayers = L24_1
