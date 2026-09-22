local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = "weapons@first_person@aim_idle@p_m_zero@pistol@shared@fidgets@c"
  L2_2 = "fidget_med_loop"
  L3_2 = IsPedArmed
  L4_2 = L0_2
  L5_2 = 4
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = IsEntityPlayingAnim
    L4_2 = L0_2
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = IsPedInCover
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsPedInHighCover
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          goto lbl_30
        end
      end
    end
  end
  do return end
  ::lbl_30::
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
      L4_2 = 0
      L3_2(L4_2)
    end
  end
  L3_2 = TaskPlayAnim
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 2.0
  L8_2 = 2.0
  L9_2 = 5000
  L10_2 = 48
  L11_2 = 0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = Wait
  L4_2 = 125
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    while true do
      L0_3 = IsEntityPlayingAnim
      L1_3 = L0_2
      L2_3 = L1_2
      L3_3 = L2_2
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        break
      end
      L0_3 = IsPedShooting
      L1_3 = L0_2
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = IsControlPressed
        L1_3 = 24
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 25
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            goto lbl_29
          end
        end
      end
      L0_3 = ClearPedTasks
      L1_3 = L0_2
      L0_3(L1_3)
      do break end
      ::lbl_29::
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L3_2(L4_2)
end
L1_1 = RegisterCommand
L2_1 = "guardaarma"
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2()
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
