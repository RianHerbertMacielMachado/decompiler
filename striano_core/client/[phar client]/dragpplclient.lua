local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = 0.3
L1_1 = {}
L1_1.InProgress = false
L1_1.target = -1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexError
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
function L3_1(A0_2)
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
L4_1 = TaskPlayAnim
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L11_2 = L4_1
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = A4_2
  L17_2 = A5_2
  L18_2 = A6_2
  L19_2 = A7_2
  L20_2 = A8_2
  L21_2 = A9_2
  L22_2 = A10_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L11_2 = RemoveAnimDict
  L12_2 = A1_2
  L11_2(L12_2)
  return
end
TaskPlayAnim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = "combat@drag_ped@"
  L2_2 = "injured_drag_ped"
  L3_2 = 3
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = IsEntityPlayingAnim
  L5_2 = L3_2
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L4_2 = TaskPlayAnim
    L5_2 = L3_2
    L6_2 = L1_2
    L7_2 = L2_2
    L8_2 = 3.0
    L9_2 = 3.0
    L10_2 = -1
    L11_2 = 1
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L4_2 = IsEntityPlayingAnim
  L5_2 = L3_2
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L4_2 = GetEntityAnimCurrentTime
    L5_2 = L3_2
    L6_2 = L1_2
    L7_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = L0_1
    if L4_2 >= L5_2 then
      L5_2 = SetEntityAnimCurrentTime
      L6_2 = L3_2
      L7_2 = L1_2
      L8_2 = L2_2
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = TaskPlayAnim
      L6_2 = L3_2
      L7_2 = L1_2
      L8_2 = L2_2
      L9_2 = 3.0
      L10_2 = 3.0
      L11_2 = -1
      L12_2 = 1
      L13_2 = false
      L14_2 = false
      L15_2 = false
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
    L5_2 = GetEntityAnimCurrentTime
    L6_2 = L3_2
    L7_2 = L1_2
    L8_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = Wait
    L7_2 = 7
    L6_2(L7_2)
    L6_2 = GetEntityAnimCurrentTime
    L7_2 = L3_2
    L8_2 = L1_2
    L9_2 = L2_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L5_2 == L6_2 then
      L7_2 = SetEntityAnimSpeed
      L8_2 = L3_2
      L9_2 = L1_2
      L10_2 = L2_2
      L11_2 = 0
      L7_2(L8_2, L9_2, L10_2, L11_2)
    else
      L7_2 = SetEntityAnimSpeed
      L8_2 = L3_2
      L9_2 = L1_2
      L10_2 = L2_2
      L11_2 = 0
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
end
PlayAnimTarget = L5_1
function L5_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L1_1.InProgress
      if L0_3 then
        L0_3 = DisablePlayerFiring
        L1_3 = playerPed
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = SetCurrentPedWeapon
        L1_3 = playerPed
        L2_3 = GetHashKey
        L3_3 = "WEAPON_UNARMED"
        L2_3 = L2_3(L3_3)
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = SetPedCanPlayGestureAnims
        L1_3 = playerPed
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 29
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 140
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 74
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 38
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 22
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 289
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 23
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 75
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 311
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 311
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 2
        L2_3 = 311
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 178
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 303
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = IsControlJustPressed
        L1_3 = 1
        L2_3 = 323
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlJustPressed
          L1_3 = 0
          L2_3 = 73
          L0_3 = L0_3(L1_3, L2_3)
        end
        if L0_3 then
          L0_3 = DragClosest
          L0_3()
          L0_3 = ExecuteCommand
          L1_3 = "e c"
          L0_3(L1_3)
          L0_3 = ExecuteCommand
          L1_3 = "e puliscimani"
          L0_3(L1_3)
          return
        end
      else
        return
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L0_2(L1_2)
end
WaitControlsInteractions = L5_1
L5_1 = true
L6_1 = RegisterCommand
L7_1 = "trascina"
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityAttached
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = IsEntityPositionFrozen
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = L5_1
  if L1_2 then
    L1_2 = false
    L5_1 = L1_2
    L1_2 = DragClosest
    L1_2()
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = true
    L5_1 = L1_2
  end
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L1_1.InProgress
  if not L0_2 then
    L0_2 = LoadAnim
    L1_2 = "combat@drag_ped@"
    L0_2(L1_2)
    L0_2 = PlayerVicino
    L0_2, L1_2 = L0_2()
    if -1 ~= L0_2 and L1_2 <= 2.0 then
      L2_2 = IsPedFatallyInjured
      L3_2 = GetPlayerPed
      L4_2 = L0_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        L2_2 = GetPlayerServerId
        L3_2 = L0_2
        L2_2 = L2_2(L3_2)
        if -1 ~= L2_2 then
          L1_1.InProgress = true
          L1_1.target = L2_2
          L3_2 = WaitControlsInteractions
          L3_2()
          L3_2 = TriggerServerEvent
          L4_2 = "xenos_DragPeople:sync"
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
          L3_2 = TriggerServerEvent
          L4_2 = "xenos_DragPeople:syncSOLO"
          L5_2 = GetPlayerServerId
          L6_2 = PlayerId
          L6_2 = L6_2()
          L5_2, L6_2 = L5_2(L6_2)
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = faketrascina
          L3_2()
          L3_2 = ClearPedTasks
          L4_2 = PlayerPedId
          L4_2, L5_2, L6_2 = L4_2()
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = PlayAnimTarget
          L3_2()
        end
      end
    end
  else
    L0_2 = GetPlayerPed
    L1_2 = GetPlayerFromServerId
    L2_2 = L1_1.target
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2(L2_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = TriggerServerEvent
    L2_2 = "xenos_DragPeople:stop"
    L3_2 = L1_1.target
    L1_2(L2_2, L3_2)
    L1_2 = DetachEntity
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = true
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DetachEntity
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_1.InProgress = false
    L1_1.target = 0
  end
end
DragClosest = L6_1
L6_1 = AddEventHandler
L7_1 = "esx:onPlayerDeath"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.InProgress
  if L1_2 then
    L1_2 = GetPlayerPed
    L2_2 = GetPlayerFromServerId
    L3_2 = L1_1.target
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    L2_2 = TriggerServerEvent
    L3_2 = "xenos_DragPeople:stop"
    L4_2 = L1_1.target
    L2_2(L3_2, L4_2)
    L2_2 = DetachEntity
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = true
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = ClearPedTasks
    L3_2 = L1_2
    L2_2(L3_2)
    L1_1.InProgress = false
    L1_1.target = 0
  end
  L1_2 = ChiudiTrascina
  L1_2()
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "xenos_DragPeople:syncTarget"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "xenos_DragPeople:syncTarget"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = LoadAnim
  L2_2 = "combat@drag_ped@"
  L1_2(L2_2)
  L1_2 = GetPlayerPed
  L2_2 = GetPlayerFromServerId
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L1_1.InProgress = true
  L3_2 = TriggerServerEvent
  L4_2 = "esx_ambulancejjj:revive"
  L5_2 = GetPlayerFromServerId
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = SetEntityCoords
  L4_2 = L2_2
  L5_2 = GetOffsetFromEntityInWorldCoords
  L6_2 = L1_2
  L7_2 = 0.0
  L8_2 = 1.2
  L9_2 = -1.0
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = SetEntityHeading
  L4_2 = L2_2
  L5_2 = GetEntityHeading
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = ClearPedTasks
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = AttachEntityToEntity
  L4_2 = L2_2
  L5_2 = L1_2
  L6_2 = 1816
  L7_2 = 4103
  L8_2 = 0.48
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = ClearPedTasks
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = PlayAnimTarget
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = LoopBloccaTastiDrag
  L3_2()
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L1_1.InProgress
      if true == L0_3 then
        L0_3 = DisableAllControlActions
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 0
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 1
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = EnableControlAction
        L1_3 = 0
        L2_3 = 2
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = PlayAnimTarget
        L0_3()
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
LoopBloccaTastiDrag = L6_1
L6_1 = RegisterNetEvent
L7_1 = "xenos_DragPeople:cl_stop"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "xenos_DragPeople:cl_stop"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_1.InProgress = false
  L1_2 = DetachEntity
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = true
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearPedTasks
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ClearPedTasks
  L2_2 = GetPlayerPed
  L3_2 = GetPlayerFromServerId
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = ExecuteCommand
  L2_2 = "e injured2"
  L1_2(L2_2)
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = IsEntityPlayingAnim
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = "combat@drag_ped@"
  L3_2 = "injured_drag_plyr"
  L4_2 = 3
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  if L0_2 then
    return
  end
  L0_2 = loopTrascina
  L0_2()
end
faketrascina = L6_1
L6_1 = 0
L7_1 = 50
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = "combat@drag_ped@"
  L1_2 = "injured_drag_plyr"
  L2_2 = TaskPlayAnim
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = 3.0
  L7_2 = 3.0
  L8_2 = -1
  L9_2 = 1
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 29
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 157
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 158
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 159
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 160
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 161
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 162
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 163
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 164
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 165
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 23
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 37
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 192
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 204
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 221
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 349
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 16
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 17
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 170
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 24
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 25
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 44
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 140
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 141
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 142
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 257
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 263
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 264
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = DisableControlAction
      L2_3 = 0
      L3_3 = 245
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = exports
      L1_3 = L1_3.striano_core
      L2_3 = L1_3
      L1_3 = L1_3.draw
      L3_3 = 38
      L4_3 = "Drop"
      L1_3(L2_3, L3_3, L4_3)
      while true do
        L1_3 = IsControlPressed
        L2_3 = 0
        L3_3 = 32
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
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = SetEntityAnimSpeed
        L2_3 = L0_3
        L3_3 = L0_2
        L4_3 = L1_2
        L5_3 = 0
        L1_3(L2_3, L3_3, L4_3, L5_3)
        L1_3 = exports
        L1_3 = L1_3.striano_core
        L2_3 = L1_3
        L1_3 = L1_3.draw
        L3_3 = 38
        L4_3 = "Drop"
        L1_3(L2_3, L3_3, L4_3)
      end
      L1_3 = IsControlJustPressed
      L2_3 = 0
      L3_3 = 73
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = IsDisabledControlJustPressed
        L2_3 = 0
        L3_3 = 73
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          goto lbl_212
        end
      end
      L1_3 = IsControlPressed
      L2_3 = 0
      L3_3 = 21
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L1_3 = ChiudiTrascina
        L1_3()
        return
      end
      ::lbl_212::
      L1_3 = IsEntityPlayingAnim
      L2_3 = L0_3
      L3_3 = L0_2
      L4_3 = L1_2
      L5_3 = 3
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      if not L1_3 then
        L1_3 = TaskPlayAnim
        L2_3 = L0_3
        L3_3 = L0_2
        L4_3 = L1_2
        L5_3 = 3.0
        L6_3 = 3.0
        L7_3 = -1
        L8_3 = 1
        L9_3 = false
        L10_3 = false
        L11_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L1_3 = faiAnim
      L2_3 = "impexp_int-0"
      L3_3 = "mp_m_waremech_01_dual-0"
      L4_3 = -1
      L5_3 = 49
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = IsControlPressed
      L2_3 = 0
      L3_3 = 21
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = SetEntityAnimSpeed
        L2_3 = L0_3
        L3_3 = L0_2
        L4_3 = L1_2
        L5_3 = 1.5
        L1_3(L2_3, L3_3, L4_3, L5_3)
      else
        L1_3 = SetEntityAnimSpeed
        L2_3 = L0_3
        L3_3 = L0_2
        L4_3 = L1_2
        L5_3 = 1.0
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L2_3 = L6_1
      L2_3 = L1_3 - L2_3
      L3_3 = L7_1
      if L2_3 >= L3_3 then
        L2_3 = GetEntityCoords
        L3_3 = L0_3
        L2_3 = L2_3(L3_3)
        L3_3 = TriggerServerEvent
        L4_3 = "updateTrascina"
        L5_3 = GetPlayerServerId
        L6_3 = PlayerId
        L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L6_3()
        L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        L6_3 = L2_3.x
        L7_3 = L2_3.y
        L8_3 = L2_3.z
        L9_3 = GetEntityHeading
        L10_3 = L0_3
        L9_3, L10_3, L11_3 = L9_3(L10_3)
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
        L6_1 = L1_3
      end
      L2_3 = IsEntityPlayingAnim
      L3_3 = L0_3
      L4_3 = L0_2
      L5_3 = L1_2
      L6_3 = 3
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      if L2_3 then
        L2_3 = GetEntityAnimCurrentTime
        L3_3 = L0_3
        L4_3 = L0_2
        L5_3 = L1_2
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L3_3 = L0_1
        if L2_3 >= L3_3 then
          L3_3 = SetEntityAnimCurrentTime
          L4_3 = L0_3
          L5_3 = L0_2
          L6_3 = L1_2
          L7_3 = L2_3
          L3_3(L4_3, L5_3, L6_3, L7_3)
          L3_3 = ClearPedTasks
          L4_3 = L0_3
          L3_3(L4_3)
        end
        L3_3 = GetEntityHeading
        L4_3 = L0_3
        L3_3 = L3_3(L4_3)
        L4_3 = IsControlPressed
        L5_3 = 0
        L6_3 = 34
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          L4_3 = SetEntityHeading
          L5_3 = L0_3
          L6_3 = L3_3 + 2
          L4_3(L5_3, L6_3)
        end
        L4_3 = IsControlPressed
        L5_3 = 0
        L6_3 = 35
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          L4_3 = SetEntityHeading
          L5_3 = L0_3
          L6_3 = L3_3 - 2
          L4_3(L5_3, L6_3)
        end
      else
        L2_3 = ExecuteCommand
        L3_3 = "e trascina"
        L2_3(L3_3)
      end
    end
  end
  L2_2(L3_2)
end
loopTrascina = L8_1
L8_1 = RegisterNetEvent
L9_1 = "updateTrascina"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2, L7_2, L8_2, L9_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 == A0_2 then
  else
    L5_2 = GetEntityCoords
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = vector3
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2 - L6_2
    L5_2 = #L5_2
    L6_2 = 150.0
    if L5_2 < L6_2 then
      L5_2 = GetPlayerPed
      L6_2 = GetPlayerFromServerId
      L7_2 = A0_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L6_2 = SetEntityHeading
      L7_2 = L5_2
      L8_2 = A4_2
      L6_2(L7_2, L8_2)
    end
  end
end
L8_1(L9_1, L10_1)
L8_1 = nil
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L8_1
  if nil ~= L0_2 then
    L0_2 = ClearPedTasks
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2()
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
    L0_2 = ExecuteCommand
    L1_2 = "e prendi6"
    L0_2(L1_2)
    L0_2 = IsEntityAttached
    L1_2 = L8_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DetachEntity
      L1_2 = L8_1
      L0_2(L1_2)
      L0_2 = GetEntityCoords
      L1_2 = PlayerPedId
      L1_2, L2_2, L3_2, L4_2, L5_2, L6_2 = L1_2()
      L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      L1_2 = SetEntityCoords
      L2_2 = L8_1
      L3_2 = L0_2.x
      L4_2 = L0_2.y
      L5_2 = L0_2.z
      L5_2 = L5_2 - 1
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = SetEntityRotation
      L2_2 = L8_1
      L3_2 = 0
      L4_2 = 0
      L5_2 = GetEntityHeading
      L6_2 = PlayerPedId
      L6_2 = L6_2()
      L5_2, L6_2 = L5_2(L6_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      L1_2 = nil
      L8_1 = L1_2
    end
  end
end
ChiudiTrascina = L9_1
L9_1 = RegisterCommand
L10_1 = "faketrascina"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = TriggerServerEvent
  L4_2 = "xenos_DragPeople:syncSOLO"
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2 = L6_2()
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "xenos_DragPeople:syncTargetSOLO"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "xenos_DragPeople:syncTargetSOLO"
function L11_1()
  local L0_2, L1_2
  L1_1.InProgress = true
  L0_2 = faketrascina
  L0_2()
  L0_2 = print
  L1_2 = "In trascina attivato."
  L0_2(L1_2)
end
L9_1(L10_1, L11_1)
