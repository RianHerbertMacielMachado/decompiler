local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
preferite = L0_1
index2 = 0
drawf = 0
UltimoAsterisco = 0
timerDev = -1
SecondiAttesa = 25
FuncAttiva = false
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if nil == A0_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "hide4"
    L3_2(L4_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "hide3"
    L3_2(L4_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "hide5"
    L3_2(L4_2)
    closeall = true
  else
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "show5"
    L4_2.content = A1_2
    L3_2(L4_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "show3"
    L4_2.content = A0_2
    L3_2(L4_2)
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "show4"
    L4_2.content = A2_2
    L3_2(L4_2)
  end
end
setupMenuRapid = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = index2
  if L0_2 > 0 then
    index2 = 0
    L0_2 = setupMenuRapid
    L1_2 = nil
    L0_2(L1_2)
    timerDev = -1
  end
  FuncAttiva = false
  L0_2 = StopRapidTimer
  L0_2()
end
ChiudiTuttoRapid = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  if A0_2 then
    L2_2 = timerDev
    if -1 == L2_2 then
      L1_2 = true
    end
  end
  if not L1_2 then
    L2_2 = index2
    L2_2 = L2_2 + 1
    index2 = L2_2
    L2_2 = index2
    L3_2 = preferite
    L3_2 = #L3_2
    if L2_2 > L3_2 then
      index2 = 1
    end
    L2_2 = index2
    L2_2 = L2_2 - 1
    if 0 == L2_2 then
      L3_2 = preferite
      L4_2 = preferite
      L4_2 = #L4_2
      L2_2 = L3_2[L4_2]
    else
      L3_2 = preferite
      L4_2 = index2
      L4_2 = L4_2 - 1
      L2_2 = L3_2[L4_2]
    end
    L3_2 = index2
    L3_2 = L3_2 + 1
    L4_2 = preferite
    L4_2 = #L4_2
    if L3_2 > L4_2 then
      L4_2 = preferite
      L3_2 = L4_2[1]
    else
      L4_2 = preferite
      L5_2 = index2
      L5_2 = L5_2 + 1
      L3_2 = L4_2[L5_2]
    end
    L4_2 = setupMenuRapid
    L5_2 = preferite
    L6_2 = index2
    L5_2 = L5_2[L6_2]
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SuonoScroll
    L4_2()
    L4_2 = StartRapidTimer
    L5_2 = SecondiAttesa
    L4_2(L5_2)
  end
end
GoUpInAnimations2 = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  if A0_2 then
    L2_2 = timerDev
    if -1 == L2_2 then
      L1_2 = true
    end
  end
  if not L1_2 then
    L2_2 = index2
    L2_2 = L2_2 - 1
    index2 = L2_2
    L2_2 = index2
    if L2_2 <= 0 then
      L2_2 = preferite
      L2_2 = #L2_2
      index2 = L2_2
    end
    L2_2 = index2
    L2_2 = L2_2 - 1
    if 0 == L2_2 then
      L3_2 = preferite
      L4_2 = preferite
      L4_2 = #L4_2
      L2_2 = L3_2[L4_2]
    else
      L3_2 = preferite
      L4_2 = index2
      L4_2 = L4_2 - 1
      L2_2 = L3_2[L4_2]
    end
    L3_2 = index2
    L3_2 = L3_2 + 1
    L4_2 = preferite
    L4_2 = #L4_2
    if L3_2 > L4_2 then
      L4_2 = preferite
      L3_2 = L4_2[1]
    else
      L4_2 = preferite
      L5_2 = index2
      L5_2 = L5_2 + 1
      L3_2 = L4_2[L5_2]
    end
    L4_2 = setupMenuRapid
    L5_2 = preferite
    L6_2 = index2
    L5_2 = L5_2[L6_2]
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SuonoScroll
    L4_2()
    L4_2 = SecondiAttesa
    timerDev = L4_2
  end
end
GoDownInAnimations2 = L0_1
TimerRapidToken = 0
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    A0_2 = SecondiAttesa
  end
  L1_2 = TimerRapidToken
  L1_2 = L1_2 + 1
  TimerRapidToken = L1_2
  L1_2 = TimerRapidToken
  timerDev = A0_2
  L2_2 = SetTimeout
  L3_2 = A0_2 * 1000
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_2
    L1_3 = TimerRapidToken
    if L0_3 ~= L1_3 then
      return
    end
    timerDev = -1
    L0_3 = ChiudiTuttoRapid
    L0_3()
  end
  L2_2(L3_2, L4_2)
end
StartRapidTimer = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = TimerRapidToken
  L0_2 = L0_2 + 1
  TimerRapidToken = L0_2
  timerDev = -1
end
StopRapidTimer = L0_1
L0_1 = {}
L1_1 = {}
L1_1.button = 15
function L2_1()
  local L0_2, L1_2
  L0_2 = GoUpInAnimations2
  L0_2()
end
L1_1.func = L2_1
L1_1.onlymenouno = nil
L1_1.chiudisubito = false
L2_1 = {}
L2_1.button = 14
function L3_1()
  local L0_2, L1_2
  L0_2 = GoDownInAnimations2
  L0_2()
end
L2_1.func = L3_1
L2_1.onlymenouno = nil
L2_1.chiudisubito = false
L3_1 = {}
L3_1.button = 24
function L4_1()
  local L0_2, L1_2
  L0_2 = PlayCommand
  L0_2()
end
L3_1.func = L4_1
L3_1.onlymenouno = nil
L3_1.chiudisubito = false
L4_1 = {}
L4_1.button = 172
function L5_1()
  local L0_2, L1_2
  L0_2 = GoUpInAnimations2
  L0_2()
end
L4_1.func = L5_1
L4_1.onlymenouno = true
L4_1.chiudisubito = false
L5_1 = {}
L5_1.button = 173
function L6_1()
  local L0_2, L1_2
  L0_2 = GoDownInAnimations2
  L0_2()
end
L5_1.func = L6_1
L5_1.onlymenouno = true
L5_1.chiudisubito = false
L6_1 = {}
L6_1.button = 191
function L7_1()
  local L0_2, L1_2
  L0_2 = PlayCommand
  L0_2()
end
L6_1.func = L7_1
L6_1.onlymenouno = true
L6_1.chiudisubito = false
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
options2 = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = FuncAttiva
  if not L0_2 then
    L0_2 = getVoiceChanger
    L0_2 = L0_2()
    if L0_2 then
      FuncAttiva = true
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = Citizen
      L1_2 = L1_2.InvokeNative
      L2_2 = -7918206464511161279
      L3_2 = L0_2
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = GetResourceState
        L2_2 = "striano_core"
        L1_2 = L1_2(L2_2)
        if "started" == L1_2 then
          L1_2 = ExecuteCommand
          L2_2 = "pointingstop"
          L1_2(L2_2)
        end
      end
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        while true do
          L0_3 = timerDev
          if -1 ~= L0_3 then
            L0_3 = index2
            if not (L0_3 <= 0) then
              goto lbl_9
            end
          end
          FuncAttiva = false
          do return end
          ::lbl_9::
          L0_3 = LoopDrawRapid
          L0_3()
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 14
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DisableControlAction
          L1_3 = 0
          L2_3 = 15
          L3_3 = true
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = timerDev
          if L0_3 > 0 then
            L0_3 = DisableControlAction
            L1_3 = 0
            L2_3 = 24
            L3_3 = true
            L0_3(L1_3, L2_3, L3_3)
          end
          L0_3 = IsPauseMenuActive
          L0_3 = L0_3()
          if not L0_3 then
            L0_3 = timerDev
            if L0_3 > 0 then
              L0_3 = GetPedParachuteState
              L1_3 = L0_2
              L0_3 = L0_3(L1_3)
              if not (L0_3 > -1) then
                L0_3 = IsControlJustPressed
                L1_3 = 0
                L2_3 = 245
                L0_3 = L0_3(L1_3, L2_3)
                if not L0_3 then
                  L0_3 = IsControlJustPressed
                  L1_3 = 0
                  L2_3 = 170
                  L0_3 = L0_3(L1_3, L2_3)
                  if not L0_3 then
                    L0_3 = IsControlPressed
                    L1_3 = 0
                    L2_3 = 311
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      L0_3 = IsDisabledControlPressed
                      L1_3 = 0
                      L2_3 = 37
                      L0_3 = L0_3(L1_3, L2_3)
                      if not L0_3 then
                        L0_3 = IsDisabledControlJustReleased
                        L1_3 = 0
                        L2_3 = 25
                        L0_3 = L0_3(L1_3, L2_3)
                        if not L0_3 then
                          L0_3 = IsControlPressed
                          L1_3 = 0
                          L2_3 = 194
                          L0_3 = L0_3(L1_3, L2_3)
                          if not L0_3 then
                            L0_3 = IsControlPressed
                            L1_3 = 0
                            L2_3 = 199
                            L0_3 = L0_3(L1_3, L2_3)
                            if not L0_3 then
                              L0_3 = IsControlPressed
                              L1_3 = 0
                              L2_3 = 200
                              L0_3 = L0_3(L1_3, L2_3)
                              if not L0_3 then
                                goto lbl_92
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
              L0_3 = ChiudiTuttoRapid
              L0_3()
              return
            end
          end
          ::lbl_92::
          L0_3 = IsDisabledControlJustPressed
          L1_3 = 0
          L2_3 = 74
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = drawVisible
            L0_3 = not L0_3
            drawVisible = L0_3
          end
          L0_3 = 1
          L1_3 = options2
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = IsDisabledControlJustPressed
            L5_3 = 0
            L6_3 = options2
            L6_3 = L6_3[L3_3]
            L6_3 = L6_3.button
            L4_3 = L4_3(L5_3, L6_3)
            if not L4_3 then
              L4_3 = IsControlJustPressed
              L5_3 = 0
              L6_3 = options2
              L6_3 = L6_3[L3_3]
              L6_3 = L6_3.button
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                goto lbl_173
              end
            end
            L4_3 = GetPedParachuteState
            L5_3 = L0_2
            L4_3 = L4_3(L5_3)
            if -1 == L4_3 then
              L4_3 = IsControlPressed
              L5_3 = 0
              L6_3 = 25
              L4_3 = L4_3(L5_3, L6_3)
              if not L4_3 then
                L4_3 = IsDisabledControlPressed
                L5_3 = 0
                L6_3 = 25
                L4_3 = L4_3(L5_3, L6_3)
                if not L4_3 then
                  L4_3 = canManageRapids
                  L5_3 = L0_2
                  L4_3 = L4_3(L5_3)
                  if L4_3 then
                    L4_3 = IsControlPressed
                    L5_3 = 0
                    L6_3 = 37
                    L4_3 = L4_3(L5_3, L6_3)
                    if not L4_3 then
                      L4_3 = options2
                      L4_3 = L4_3[L3_3]
                      L4_3 = L4_3.chiudisubito
                      if L4_3 then
                        L4_3 = options2
                        L4_3 = L4_3[L3_3]
                        L4_3 = L4_3.func
                        L5_3 = options2
                        L5_3 = L5_3[L3_3]
                        L5_3 = L5_3.onlymenouno
                        L4_3(L5_3)
                        L4_3 = ChiudiTuttoRapid
                        L4_3()
                        return
                      else
                        L4_3 = options2
                        L4_3 = L4_3[L3_3]
                        L4_3 = L4_3.func
                        L5_3 = options2
                        L5_3 = L5_3[L3_3]
                        L5_3 = L5_3.onlymenouno
                        L4_3(L5_3)
                      end
                    end
                  end
                end
              end
            end
            ::lbl_173::
          end
          L0_3 = Wait
          L1_3 = 0
          L0_3(L1_3)
        end
      end
      L1_2(L2_2)
    end
  end
end
LoopRotellaAnimDev = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
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
  while true do
    L0_2 = NetworkIsSessionStarted
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    if nil ~= L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
  end
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = Starter_Anim
  L0_2()
end
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStart"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = Starter_Anim
    L1_2()
  end
end
L0_1(L1_1, L2_1)
L0_1 = {}
pending = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = "CB-%d-%d"
  L1_2 = L0_2
  L0_2 = L0_2.format
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 100000
  L5_2 = 999999
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  return L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
genReqId = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = genReqId
  L3_2 = L3_2()
  L4_2 = pending
  L4_2[L3_2] = A2_2
  L4_2 = TriggerServerEvent
  L5_2 = "devanim:req"
  L6_2 = L3_2
  L7_2 = A0_2
  L8_2 = A1_2 or L8_2
  if not A1_2 then
    L8_2 = {}
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
serverCallback = L0_1
L0_1 = RegisterNetEvent
L1_1 = "devanim:resp"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = pending
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = pending
    L4_2[A0_2] = nil
    L4_2 = L3_2
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = serverCallback
  L3_2 = "saveAnims"
  L4_2 = {}
  L4_2.list = A0_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A1_2
    if L2_3 then
      L2_3 = A1_2
      L3_3 = A0_3
      L4_3 = A1_3
      L2_3(L3_3, L4_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
DevAnim_Save = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = serverCallback
  L2_2 = "getAnims"
  L3_2 = {}
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    if not A0_3 or not A1_3 then
      L2_3 = A0_2
      L3_3 = {}
      L2_3(L3_3)
      return
    end
    L2_3 = A0_2
    L3_3 = A1_3.list
    if not L3_3 then
      L3_3 = {}
    end
    L2_3(L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
DevAnim_Get = L0_1
