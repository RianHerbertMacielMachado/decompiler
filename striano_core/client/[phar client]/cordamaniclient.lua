local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2)
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
PlayerVicino = L0_1
L0_1 = false
L1_1 = RegisterNetEvent
L2_1 = "fn_cuff_item:checkCuff"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "fn_cuff_item:checkCuff"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerVicino
  L0_2, L1_2 = L0_2()
  if -1 ~= L1_2 then
    L2_2 = 1.8
    if L1_2 <= L2_2 then
      L2_2 = IsEntityAttached
      L3_2 = GetPlayerPed
      L4_2 = L0_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        L2_2 = IsPedFatallyInjured
        L3_2 = GetPlayerPed
        L4_2 = L0_2
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        if not L2_2 then
          L2_2 = IsEntityPlayingAnim
          L3_2 = GetPlayerPed
          L4_2 = L0_2
          L3_2 = L3_2(L4_2)
          L4_2 = "anim@move_m@prisoner_cuffed_fp"
          L5_2 = "aim_low_loop"
          L6_2 = 3
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
          if not L2_2 then
            return
          end
        end
      end
      L2_2 = ExecuteCommand
      L3_2 = "e mechanic4"
      L2_2(L3_2)
      L2_2 = TriggerServerEvent
      L3_2 = "fn_cuff_item:handcuff"
      L4_2 = GetPlayerServerId
      L5_2 = L0_2
      L4_2 = L4_2(L5_2)
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
      L2_2 = ExecuteCommand
      L3_2 = "e c"
      L2_2(L3_2)
  end
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submex
    L4_2 = "Nessuno nelle vicinanze da poter legare."
    L2_2(L3_2, L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterCommand
L2_1 = "slega"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.getTagliente
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = GetSelectedPedWeapon
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetHashKey
    L6_2 = "weapon_dagger"
    L5_2 = L5_2(L6_2)
    if L4_2 ~= L5_2 then
      L4_2 = GetSelectedPedWeapon
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = GetHashKey
      L6_2 = "weapon_switchblade"
      L5_2 = L5_2(L6_2)
      if L4_2 ~= L5_2 then
        L4_2 = GetSelectedPedWeapon
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = GetHashKey
        L6_2 = "weapon_machete"
        L5_2 = L5_2(L6_2)
        if L4_2 ~= L5_2 then
          L4_2 = GetSelectedPedWeapon
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          L5_2 = GetHashKey
          L6_2 = "weapon_knife"
          L5_2 = L5_2(L6_2)
          if L4_2 == L5_2 then
          else
            L4_2 = exports
            L4_2 = L4_2.striano_combat
            L5_2 = L4_2
            L4_2 = L4_2.submex
            L6_2 = "Non hai un arma affilata per questa operazione."
            L4_2(L5_2, L6_2)
            return
          end
        end
      end
    end
  end
  L4_2 = PlayerVicino
  L4_2, L5_2 = L4_2()
  if -1 ~= L5_2 then
    L6_2 = 1.7
    if L5_2 <= L6_2 then
      L6_2 = ExecuteCommand
      L7_2 = "e uncuff2"
      L6_2(L7_2)
      L6_2 = TriggerServerEvent
      L7_2 = "fn_cuff_item:uncuff"
      L8_2 = GetPlayerServerId
      L9_2 = L4_2
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
  end
  else
    L6_2 = exports
    L6_2 = L6_2.striano_combat
    L7_2 = L6_2
    L6_2 = L6_2.submex
    L8_2 = "Nessuno nelle vicinanze da poter slegare."
    L6_2(L7_2, L8_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "fn_cuff_item:forceUncuff"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "fn_cuff_item:forceUncuff"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "e uncuff2"
    L0_2(L1_2)
  end
  L0_2 = false
  L0_1 = L0_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = ClearPedSecondaryTask
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = SetEnableHandcuffs
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetPedCanPlayGestureAnims
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "fn_cuff_item:handcuff"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "fn_cuff_item:handcuff"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = true
  L0_1 = L1_2
  L1_2 = ClearPedTasks
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = SetPedCanPlayAmbientBaseAnims
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetEnableHandcuffs
  L2_2 = L0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = SetCurrentPedWeapon
  L2_2 = L0_2
  L3_2 = -1569615261
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetPedCanPlayGestureAnims
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = ExecuteCommand
  L2_2 = "e c"
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 25
  L1_2(L2_2)
  L1_2 = LoopFascette
  L1_2()
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "onResourceStart"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = SetEnableHandcuffs
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L0_1
      if L0_3 then
        L0_3 = GetVehiclePedIsIn
        L1_3 = L0_2
        L2_3 = false
        L0_3 = L0_3(L1_3, L2_3)
        if 0 ~= L0_3 then
          L1_3 = GetEntitySpeed
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          if L1_3 > 0.0 then
            L1_3 = DisableControlAction
            L2_3 = 0
            L3_3 = 75
            L4_3 = true
            L1_3(L2_3, L3_3, L4_3)
          end
        end
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 73
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 25
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 24
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 140
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = DisableControlAction
        L2_3 = 0
        L3_3 = 303
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = IsEntityPlayingAnim
        L2_3 = L0_2
        L3_3 = "anim@move_m@prisoner_cuffed_fp"
        L4_3 = "aim_low_loop"
        L5_3 = 3
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
        if not L1_3 then
          L1_3 = ExecuteCommand
          L2_3 = "e cuff2"
          L1_3(L2_3)
        end
      else
        L0_3 = print
        L1_3 = "Annullo la corda nera."
        L0_3(L1_3)
        return
      end
    end
  end
  L1_2(L2_2)
end
LoopFascette = L1_1
