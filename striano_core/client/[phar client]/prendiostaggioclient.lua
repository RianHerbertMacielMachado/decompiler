local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = false
function L1_1(A0_2)
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
L2_1 = RegisterCommand
L3_1 = "takehostage"
function L4_1()
  local L0_2, L1_2
  L0_2 = callTakeHostage
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = "th"
function L4_1()
  local L0_2, L1_2
  L0_2 = callTakeHostage
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = "ostaggio"
function L4_1()
  local L0_2, L1_2
  L0_2 = callTakeHostage
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = "drag"
function L4_1()
  local L0_2, L1_2
  L0_2 = callDrag
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = "inbraccio"
function L4_1()
  local L0_2, L1_2
  L0_2 = callInBraccio
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "TakeHostage:syncTarget"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "TakeHostage:syncTarget"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L7_2 = 49
  if A6_2 then
    L7_2 = A6_2
  end
  L8_2 = GetPlayerPed
  L9_2 = GetPlayerFromServerId
  L10_2 = A0_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L9_2 = -1
  if 33 == L7_2 then
    L9_2 = 0
  end
  L10_2 = AttachEntityToEntity
  L11_2 = PlayerPedId
  L11_2 = L11_2()
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = 0.0
  L18_2 = 0.0
  L19_2 = 0.0
  L20_2 = false
  L21_2 = false
  L22_2 = false
  L23_2 = false
  L24_2 = 2
  L25_2 = false
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  while true do
    L10_2 = IsEntityAttached
    L11_2 = PlayerPedId
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2()
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    if not L10_2 then
      break
    end
    L10_2 = Wait
    L11_2 = 0
    L10_2(L11_2)
    L10_2 = L0_1
    if L10_2 then
      L10_2 = false
      L0_1 = L10_2
      return
    end
    L10_2 = IsEntityPlayingAnim
    L11_2 = PlayerPedId
    L11_2 = L11_2()
    L12_2 = "anim@move_m@prisoner_cuffed_fp"
    L13_2 = "aim_low_loop"
    L14_2 = 3
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    if not L10_2 then
      L10_2 = HasAnimDictLoaded
      L11_2 = A1_2
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = RequestAnimDict
        L11_2 = A1_2
        L10_2(L11_2)
        while true do
          L10_2 = HasAnimDictLoaded
          L11_2 = A1_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            break
          end
          L10_2 = Wait
          L11_2 = 10
          L10_2(L11_2)
        end
      end
      L10_2 = IsEntityPlayingAnim
      L11_2 = PlayerPedId
      L11_2 = L11_2()
      L12_2 = A1_2
      L13_2 = A2_2
      L14_2 = 3
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      if not L10_2 then
        L10_2 = TaskPlayAnim
        L11_2 = PlayerPedId
        L11_2 = L11_2()
        L12_2 = A1_2
        L13_2 = A2_2
        L14_2 = 8.0
        L15_2 = -8.0
        L16_2 = 100000
        L17_2 = L7_2
        L18_2 = 0
        L19_2 = false
        L20_2 = false
        L21_2 = false
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
      L10_2 = IsEntityPlayingAnim
      L11_2 = PlayerPedId
      L11_2 = L11_2()
      L12_2 = "anim@hand_rest_holster"
      L13_2 = "hand_rest"
      L14_2 = 3
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      if not L10_2 then
        L10_2 = IsEntityPlayingAnim
        L11_2 = PlayerPedId
        L11_2 = L11_2()
        L12_2 = "nm"
        L13_2 = "firemans_carry"
        L14_2 = 3
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        if not L10_2 then
          goto lbl_147
        end
      end
      L10_2 = IsDisabledControlPressed
      L11_2 = 0
      L12_2 = 73
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        L10_2 = DetachEntity
        L11_2 = PlayerPedId
        L11_2 = L11_2()
        L12_2 = true
        L13_2 = false
        L10_2(L11_2, L12_2, L13_2)
        L10_2 = ClearPedSecondaryTask
        L11_2 = PlayerPedId
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2()
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        L10_2 = ExecuteCommand
        L11_2 = "e c"
        L10_2(L11_2)
        L10_2 = DetachEntity
        L11_2 = PlayerPedId
        L11_2 = L11_2()
        L12_2 = true
        L13_2 = false
        L10_2(L11_2, L12_2, L13_2)
        L10_2 = ClearPedSecondaryTask
        L11_2 = L8_2
        L10_2(L11_2)
        L10_2 = TriggerServerEvent
        L11_2 = "TakeHostage:stop"
        L12_2 = A0_2
        L10_2(L11_2, L12_2)
        return
      end
    end
    ::lbl_147::
    L10_2 = DisableAllControlActions
    L11_2 = 0
    L10_2(L11_2)
    L10_2 = DisableAllControlActions
    L11_2 = 1
    L10_2(L11_2)
    L10_2 = DisableAllControlActions
    L11_2 = 2
    L10_2(L11_2)
  end
  L10_2 = ClearPedSecondaryTask
  L11_2 = PlayerPedId
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L10_2 = ExecuteCommand
  L11_2 = "e c"
  L10_2(L11_2)
  L10_2 = DetachEntity
  L11_2 = PlayerPedId
  L11_2 = L11_2()
  L12_2 = true
  L13_2 = false
  L10_2(L11_2, L12_2, L13_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "TakeHostage:releaseHostage"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "TakeHostage:releaseHostage"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = DetachEntity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = ExecuteCommand
  L1_2 = "e c"
  L0_2(L1_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "TakeHostage:stop"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "TakeHostage:stop"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = true
  L0_1 = L0_2
  L0_2 = ClearPedSecondaryTask
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2 = L1_2()
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DetachEntity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Wait
  L1_2 = 150
  L0_2(L1_2)
  L0_2 = false
  L0_1 = L0_2
  L0_2 = ExecuteCommand
  L1_2 = "e puliscimani"
  L0_2(L1_2)
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L1_1
  L2_2 = 1.0
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = IsEntityPlayingAnim
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = "random@dealgonewrong"
    L5_2 = "idle_a"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = GetPlayerPed
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = "move_injured_ground"
      L5_2 = "front_loop"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        goto lbl_29
      end
    end
    do return end
    ::lbl_29::
    L2_2 = IsEntityPlayingAnim
    L3_2 = L0_2
    L4_2 = "random@dealgonewrong"
    L5_2 = "idle_a"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = L0_2
      L4_2 = "move_injured_ground"
      L5_2 = "front_loop"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        goto lbl_46
      end
    end
    do return end
    ::lbl_46::
    L2_2 = IsEntityPlayingAnim
    L3_2 = L0_2
    L4_2 = "random@dealgonewrong"
    L5_2 = "idle_a"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = L0_2
      L4_2 = "move_injured_ground"
      L5_2 = "front_loop"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        goto lbl_63
      end
    end
    do return end
    ::lbl_63::
    L2_2 = IsEntityPlayingAnim
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = "random@dealgonewrong"
    L5_2 = "idle_a"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = GetPlayerPed
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = "move_injured_ground"
      L5_2 = "front_loop"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        goto lbl_84
      end
    end
    do return end
    ::lbl_84::
    L2_2 = IsEntityPlayingAnim
    L3_2 = L0_2
    L4_2 = "anim@gangops@hostage@"
    L5_2 = "perp_idle"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = L0_2
      L4_2 = "anim@gangops@hostage@"
      L5_2 = "victim_idle"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        goto lbl_101
      end
    end
    do return end
    ::lbl_101::
    L2_2 = IsEntityPlayingAnim
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = "anim@gangops@hostage@"
    L5_2 = "perp_idle"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = GetPlayerPed
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = "anim@gangops@hostage@"
      L5_2 = "victim_idle"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        goto lbl_122
      end
    end
    do return end
    ::lbl_122::
    L2_2 = IsEntityAttached
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    if not L2_2 then
      L2_2 = IsEntityAttached
      L3_2 = GetPlayerPed
      L4_2 = L1_2
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      if not L2_2 then
        goto lbl_136
      end
    end
    do return end
    ::lbl_136::
    L2_2 = IsPedArmed
    L3_2 = L0_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = IsPedArmed
      L3_2 = L0_2
      L4_2 = 4
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = exports
        L2_2 = L2_2.striano_combat
        L3_2 = L2_2
        L2_2 = L2_2.submexError
        L4_2 = "You need a fire weapon to take hostage."
        L2_2(L3_2, L4_2)
        return
      end
    end
    L2_2 = GetEntityCoords
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L3_2 = GetEntityForwardVector
    L4_2 = GetPlayerPed
    L5_2 = L1_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L4_2 = GetPlayerServerId
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = table
    L5_2 = L5_2.unpack
    L6_2 = L3_2 * -1.0
    L6_2 = L2_2 + L6_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    if -1 ~= L4_2 then
      L8_2 = GetEntityCoords
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L9_2 = vector3
      L10_2 = L5_2
      L11_2 = L6_2
      L12_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2 - L9_2
      L8_2 = #L8_2
      if L8_2 < 1.0 then
        L8_2 = SetCurrentPedWeapon
        L9_2 = PlayerPedId
        L9_2 = L9_2()
        L10_2 = foundWeapon
        L11_2 = true
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = TriggerServerEvent
        L9_2 = "TakeHostage:sync"
        L10_2 = L4_2
        L11_2 = "anim@gangops@hostage@"
        L12_2 = "victim_idle"
        L13_2 = -0.24
        L14_2 = 0.11
        L15_2 = 0.0
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L8_2 = ClearPedSecondaryTask
        L9_2 = PlayerPedId
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L8_2 = ExecuteCommand
        L9_2 = "e c"
        L8_2(L9_2)
        L8_2 = DetachEntity
        L9_2 = PlayerPedId
        L9_2 = L9_2()
        L10_2 = true
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        while true do
          L8_2 = IsControlPressed
          L9_2 = 0
          L10_2 = 73
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
          L8_2 = L0_1
          if L8_2 then
            L8_2 = false
            L0_1 = L8_2
            return
          end
          L8_2 = "anim@gangops@hostage@"
          L9_2 = "perp_idle"
          L10_2 = HasAnimDictLoaded
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            L10_2 = RequestAnimDict
            L11_2 = L8_2
            L10_2(L11_2)
            while true do
              L10_2 = HasAnimDictLoaded
              L11_2 = L8_2
              L10_2 = L10_2(L11_2)
              if L10_2 then
                break
              end
              L10_2 = Wait
              L11_2 = 10
              L10_2(L11_2)
            end
          end
          L10_2 = IsEntityPlayingAnim
          L11_2 = PlayerPedId
          L11_2 = L11_2()
          L12_2 = L8_2
          L13_2 = L9_2
          L14_2 = 3
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          if not L10_2 then
            L10_2 = TaskPlayAnim
            L11_2 = PlayerPedId
            L11_2 = L11_2()
            L12_2 = L8_2
            L13_2 = L9_2
            L14_2 = 8.0
            L15_2 = -8.0
            L16_2 = 100000
            L17_2 = 49
            L18_2 = 0
            L19_2 = false
            L20_2 = false
            L21_2 = false
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          end
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 24
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 25
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 47
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 58
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 21
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisablePlayerFiring
          L11_2 = PlayerPedId
          L11_2 = L11_2()
          L12_2 = true
          L10_2(L11_2, L12_2)
          L10_2 = IsEntityDead
          L11_2 = PlayerPedId
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2()
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          if not L10_2 then
            L10_2 = IsPedFatallyInjured
            L11_2 = PlayerPedId
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2()
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            if not L10_2 then
              L10_2 = IsEntityAttached
              L11_2 = GetPlayerPed
              L12_2 = L1_2
              L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
              L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
              if L10_2 then
                goto lbl_325
              end
            end
          end
          do return end
          ::lbl_325::
        end
        L8_2 = TriggerServerEvent
        L9_2 = "TakeHostage:releaseHostage"
        L10_2 = GetPlayerServerId
        L11_2 = L1_2
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L8_2 = ClearPedSecondaryTask
        L9_2 = PlayerPedId
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L8_2 = ExecuteCommand
        L9_2 = "e c"
        L8_2(L9_2)
    end
    else
      L8_2 = exports
      L8_2 = L8_2.striano_combat
      L9_2 = L8_2
      L8_2 = L8_2.submexError
      L10_2 = "You must be in the back of the victim."
      L8_2(L9_2, L10_2)
    end
  else
    L2_2 = ExecuteCommand
    L3_2 = "e shrug5"
    L2_2(L3_2)
  end
end
callTakeHostage = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L1_1
  L2_2 = 1.0
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = IsEntityAttached
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    if not L2_2 then
      L2_2 = IsEntityAttached
      L3_2 = GetPlayerPed
      L4_2 = L1_2
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      if not L2_2 then
        goto lbl_22
      end
    end
    do return end
    ::lbl_22::
    L2_2 = IsPedFatallyInjured
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    if not L2_2 then
      return
    end
    L2_2 = GetEntityCoords
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L3_2 = GetEntityForwardVector
    L4_2 = GetPlayerPed
    L5_2 = L1_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L4_2 = GetPlayerServerId
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = table
    L5_2 = L5_2.unpack
    L6_2 = L3_2 * 0.1
    L6_2 = L2_2 + L6_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    if -1 ~= L4_2 then
      L8_2 = GetEntityCoords
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L9_2 = vector3
      L10_2 = L5_2
      L11_2 = L6_2
      L12_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2 - L9_2
      L8_2 = #L8_2
      if L8_2 < 1.0 then
        L8_2 = SetCurrentPedWeapon
        L9_2 = PlayerPedId
        L9_2 = L9_2()
        L10_2 = foundWeapon
        L11_2 = true
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = TriggerServerEvent
        L9_2 = "TakeHostage:sync"
        L10_2 = L4_2
        L11_2 = "anim@hand_rest_holster"
        L12_2 = "hand_rest"
        L13_2 = -0.33
        L14_2 = 0.1
        L15_2 = 0.0
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L8_2 = ClearPedSecondaryTask
        L9_2 = PlayerPedId
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L8_2 = ExecuteCommand
        L9_2 = "e c"
        L8_2(L9_2)
        L8_2 = DetachEntity
        L9_2 = PlayerPedId
        L9_2 = L9_2()
        L10_2 = true
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        while true do
          L8_2 = IsControlPressed
          L9_2 = 0
          L10_2 = 73
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
          L8_2 = L0_1
          if L8_2 then
            L8_2 = false
            L0_1 = L8_2
            return
          end
          L8_2 = "anim@amb@code_human_in_car_idles@arm@generic@ds@idle_d"
          L9_2 = "idle_lowdoor"
          L10_2 = HasAnimDictLoaded
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            L10_2 = RequestAnimDict
            L11_2 = L8_2
            L10_2(L11_2)
            while true do
              L10_2 = HasAnimDictLoaded
              L11_2 = L8_2
              L10_2 = L10_2(L11_2)
              if L10_2 then
                break
              end
              L10_2 = Wait
              L11_2 = 10
              L10_2(L11_2)
            end
          end
          L10_2 = IsEntityPlayingAnim
          L11_2 = PlayerPedId
          L11_2 = L11_2()
          L12_2 = L8_2
          L13_2 = L9_2
          L14_2 = 3
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          if not L10_2 then
            L10_2 = TaskPlayAnim
            L11_2 = PlayerPedId
            L11_2 = L11_2()
            L12_2 = L8_2
            L13_2 = L9_2
            L14_2 = 8.0
            L15_2 = -8.0
            L16_2 = 100000
            L17_2 = 49
            L18_2 = 0
            L19_2 = false
            L20_2 = false
            L21_2 = false
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          end
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 24
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 25
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 47
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 58
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 21
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisablePlayerFiring
          L11_2 = PlayerPedId
          L11_2 = L11_2()
          L12_2 = true
          L10_2(L11_2, L12_2)
          L10_2 = IsEntityDead
          L11_2 = PlayerPedId
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2()
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          if not L10_2 then
            L10_2 = IsPedFatallyInjured
            L11_2 = PlayerPedId
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2()
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            if not L10_2 then
              goto lbl_194
            end
          end
          do return end
          ::lbl_194::
        end
        L8_2 = TriggerServerEvent
        L9_2 = "TakeHostage:releaseHostage"
        L10_2 = GetPlayerServerId
        L11_2 = L1_2
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
end
callDrag = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L1_1
  L2_2 = 1.0
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = IsEntityAttached
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    if not L2_2 then
      L2_2 = IsEntityAttached
      L3_2 = GetPlayerPed
      L4_2 = L1_2
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      if not L2_2 then
        goto lbl_22
      end
    end
    do return end
    ::lbl_22::
    L2_2 = IsPedFatallyInjured
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    if not L2_2 then
      return
    end
    L2_2 = GetEntityCoords
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L3_2 = GetEntityForwardVector
    L4_2 = GetPlayerPed
    L5_2 = L1_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L4_2 = GetPlayerServerId
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = table
    L5_2 = L5_2.unpack
    L6_2 = L3_2 * 0.1
    L6_2 = L2_2 + L6_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    if -1 ~= L4_2 then
      L8_2 = GetEntityCoords
      L9_2 = PlayerPedId
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L9_2 = vector3
      L10_2 = L5_2
      L11_2 = L6_2
      L12_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2 - L9_2
      L8_2 = #L8_2
      if L8_2 < 1.0 then
        L8_2 = SetCurrentPedWeapon
        L9_2 = PlayerPedId
        L9_2 = L9_2()
        L10_2 = foundWeapon
        L11_2 = true
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = TriggerServerEvent
        L9_2 = "TakeHostage:sync"
        L10_2 = L4_2
        L11_2 = "nm"
        L12_2 = "firemans_carry"
        L13_2 = 0.15
        L14_2 = 0.27
        L15_2 = 0.63
        L16_2 = 33
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L8_2 = ClearPedSecondaryTask
        L9_2 = PlayerPedId
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L8_2 = ExecuteCommand
        L9_2 = "e c"
        L8_2(L9_2)
        L8_2 = DetachEntity
        L9_2 = PlayerPedId
        L9_2 = L9_2()
        L10_2 = true
        L11_2 = false
        L8_2(L9_2, L10_2, L11_2)
        while true do
          L8_2 = IsControlPressed
          L9_2 = 0
          L10_2 = 73
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
          L8_2 = L0_1
          if L8_2 then
            L8_2 = false
            L0_1 = L8_2
            return
          end
          L8_2 = "missfinale_c2mcs_1"
          L9_2 = "fin_c2_mcs_1_camman"
          L10_2 = HasAnimDictLoaded
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            L10_2 = RequestAnimDict
            L11_2 = L8_2
            L10_2(L11_2)
            while true do
              L10_2 = HasAnimDictLoaded
              L11_2 = L8_2
              L10_2 = L10_2(L11_2)
              if L10_2 then
                break
              end
              L10_2 = Wait
              L11_2 = 10
              L10_2(L11_2)
            end
          end
          L10_2 = IsEntityPlayingAnim
          L11_2 = PlayerPedId
          L11_2 = L11_2()
          L12_2 = L8_2
          L13_2 = L9_2
          L14_2 = 3
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
          if not L10_2 then
            L10_2 = TaskPlayAnim
            L11_2 = PlayerPedId
            L11_2 = L11_2()
            L12_2 = L8_2
            L13_2 = L9_2
            L14_2 = 8.0
            L15_2 = -8.0
            L16_2 = 100000
            L17_2 = 49
            L18_2 = 0
            L19_2 = false
            L20_2 = false
            L21_2 = false
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          end
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 24
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 25
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 47
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 58
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisableControlAction
          L11_2 = 0
          L12_2 = 21
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
          L10_2 = DisablePlayerFiring
          L11_2 = PlayerPedId
          L11_2 = L11_2()
          L12_2 = true
          L10_2(L11_2, L12_2)
          L10_2 = IsEntityDead
          L11_2 = PlayerPedId
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2()
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          if not L10_2 then
            L10_2 = IsPedFatallyInjured
            L11_2 = PlayerPedId
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2()
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            if not L10_2 then
              goto lbl_195
            end
          end
          do return end
          ::lbl_195::
        end
        L8_2 = TriggerServerEvent
        L9_2 = "TakeHostage:releaseHostage"
        L10_2 = GetPlayerServerId
        L11_2 = L1_2
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
end
callInBraccio = L2_1
