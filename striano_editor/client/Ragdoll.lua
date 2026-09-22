local L0_1, L1_1
isInRagdoll = false
timerUpdatePos = 0
function L0_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    while true do
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = isInRagdoll
      if L1_3 then
        L1_3 = IsPedFatallyInjured
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = exports
          L1_3 = L1_3.striano_core
          L2_3 = L1_3
          L1_3 = L1_3.sonomorto
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            L1_3 = exports
            L1_3 = L1_3.striano_core
            L2_3 = L1_3
            L1_3 = L1_3.gettutorial
            L1_3 = L1_3(L2_3)
            if L1_3 then
              L1_3 = draw
              L2_3 = 38
              L3_3 = "\226\172\134\239\184\143"
              L1_3(L2_3, L3_3)
            end
          end
        end
        L1_3 = SetPedToRagdoll
        L2_3 = L0_3
        L3_3 = 1000
        L4_3 = 1000
        L5_3 = 0
        L6_3 = false
        L7_3 = false
        L8_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = timerUpdatePos
        if 0 == L1_3 then
          L1_3 = GetGameTimer
          L1_3 = L1_3()
          timerUpdatePos = L1_3
        end
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        L2_3 = timerUpdatePos
        L1_3 = L1_3 - L2_3
        L2_3 = 3000
        if L1_3 >= L2_3 then
          L1_3 = TriggerServerEvent
          L2_3 = "SyncPedCoords"
          L3_3 = GetPlayerServerId
          L4_3 = PlayerId
          L4_3, L5_3, L6_3, L7_3, L8_3 = L4_3()
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
          L4_3 = PedToNet
          L5_3 = L0_3
          L4_3 = L4_3(L5_3)
          L5_3 = GetEntityCoords
          L6_3 = L0_3
          L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
          timerUpdatePos = 0
        end
        L1_3 = GivePlayerRagdollControl
        L2_3 = L0_3
        L3_3 = true
        L1_3(L2_3, L3_3)
      else
        timerUpdatePos = 0
        return
      end
    end
  end
  L0_2(L1_2)
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = isInRagdoll
      if L0_3 then
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 24
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 25
        L0_3(L1_3, L2_3)
      else
        L0_3 = SetPedToRagdoll
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = 0
        L3_3 = 0
        L4_3 = 4
        L5_3 = 0
        L6_3 = 0
        L7_3 = 0
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L0_3 = ClearRagdollBlockingFlags
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = 26
        L0_3(L1_3, L2_3)
        L0_3 = ResetPedRagdollTimer
        L1_3 = PlayerPedId
        L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3 = L1_3()
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        return
      end
    end
  end
  L0_2(L1_2)
end
loopRagPlayer = L0_1
imDEAD = false
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
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
        goto lbl_30
      end
    end
    L1_2 = IsPedHuman
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = imDEAD
      if not L1_2 then
        imDEAD = true
        L1_2 = isInRagdoll
        if L1_2 then
          isInRagdoll = false
        end
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
        goto lbl_37
        ::lbl_30::
        L1_2 = imDEAD
        if L1_2 then
          imDEAD = false
          L1_2 = {}
          MioNemico = L1_2
        end
      end
    end
    ::lbl_37::
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
end
L0_1(L1_1)
