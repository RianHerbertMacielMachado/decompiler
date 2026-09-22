local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ""
  L5_2 = A3_2
  L6_2 = ""
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = SetTextScale
  L6_2 = 0.45
  L7_2 = 0.45
  L5_2(L6_2, L7_2)
  L5_2 = SetTextFont
  L6_2 = 4
  L5_2(L6_2)
  L5_2 = SetTextOutline
  L5_2()
  L5_2 = SetTextProportional
  L6_2 = 1
  L5_2(L6_2)
  L5_2 = SetTextColour
  L6_2 = 255
  L7_2 = 255
  L8_2 = 255
  L9_2 = 215
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetTextEntry
  L6_2 = "STRING"
  L5_2(L6_2)
  L5_2 = SetTextCentre
  L6_2 = true
  L5_2(L6_2)
  L5_2 = AddTextComponentString
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = SetDrawOrigin
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = DrawText
  L6_2 = 0.0
  L7_2 = 0.0
  L5_2(L6_2, L7_2)
  L5_2 = ClearDrawOrigin
  L5_2()
end
L1_1 = false
L2_1 = 0
L3_1 = ""
L4_1 = 3000
function L5_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 then
    return
  end
  L0_2 = true
  L1_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    while true do
      L0_3 = L1_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = L2_1
      if L0_3 >= L2_3 then
        L2_3 = ExecuteCommand
        L3_3 = "e cc"
        L2_3(L3_3)
        L2_3 = false
        L1_1 = L2_3
        break
      end
      L2_3 = IsControlJustPressed
      L3_3 = 0
      L4_3 = 73
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = IsDisabledControlJustPressed
        L3_3 = 0
        L4_3 = 73
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = IsControlJustPressed
          L3_3 = 0
          L4_3 = 25
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = IsDisabledControlJustPressed
            L3_3 = 0
            L4_3 = 25
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = IsPedArmed
              L3_3 = L1_3
              L4_3 = 4
              L2_3 = L2_3(L3_3, L4_3)
              if L2_3 then
                goto lbl_56
              end
            end
          end
        end
      end
      L2_3 = ExecuteCommand
      L3_3 = "e cc"
      L2_3(L3_3)
      L2_3 = false
      L1_1 = L2_3
      do break end
      ::lbl_56::
      L2_3 = IsEntityPlayingAnim
      L3_3 = L1_3
      L4_3 = "anim@char_rld_pistol"
      L5_3 = "pistol_reload"
      L6_3 = 3
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
      if L2_3 then
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
            goto lbl_82
          end
        end
        L2_3 = ExecuteCommand
        L3_3 = "e cc"
        L2_3(L3_3)
        L2_3 = false
        L1_1 = L2_3
        break
      end
      ::lbl_82::
      L2_3 = GetEntityBonePosition_2
      L3_3 = L1_3
      L4_3 = GetPedBoneIndex
      L5_3 = L1_3
      L6_3 = 64113
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3, L6_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L3_3 = L0_1
      L4_3 = L2_3.x
      L5_3 = L2_3.y
      L6_3 = L2_3.z
      L7_3 = L3_1
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
  end
  L0_2(L1_2)
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2 or nil
  if not A0_2 then
    L2_2 = ""
  end
  L3_1 = L2_2
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = 3.0
  end
  L2_2 = L2_2 * 1000
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + L2_2
  L2_1 = L3_2
  L3_2 = L1_1
  if not L3_2 then
    L3_2 = L5_1
    L3_2()
  end
end
testo3dAmmo = L6_1
L6_1 = false
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = exports
  L2_2 = L2_2.striano_editor
  L3_2 = L2_2
  L2_2 = L2_2.crouchato
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = ExecuteCommand
    L3_2 = "e c"
    L2_2(L3_2)
  end
  L2_2 = ExecuteCommand
  L3_2 = "e cc"
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = MakePedReload
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  while true do
    L3_2 = IsPedReloading
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 25
    L3_2(L4_2)
  end
  L3_2 = Wait
  L4_2 = 25
  L3_2(L4_2)
  L3_2 = GetWeaponClipSize
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if 651271362 == A0_2 then
    L3_2 = L3_2 - 2
  elseif -1394978623 == A0_2 then
    L3_2 = L3_2 - 10
  elseif 1198879012 == A0_2 then
    L3_2 = 1
  end
  L4_2 = GetAmmoInClip
  L5_2 = L2_2
  L6_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L6_2 = testo3dAmmo
    L7_2 = "+"
    L8_2 = A1_2
    L9_2 = " ~h~("
    L10_2 = L5_2
    L11_2 = "/"
    L12_2 = L3_2
    L13_2 = ")"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
    L6_2(L7_2)
    L6_2 = faiAnim
    L7_2 = "random@arrests"
    L8_2 = "cop_gunaimed_door_open_idle"
    L9_2 = 1750
    L10_2 = 49
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
AnimazioneArma = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L6_1
      if L0_3 then
        L0_3 = DisablePlayerFiring
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = DisableAimCamThisUpdate
        L0_3()
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 24
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 25
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 106
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 45
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 246
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 73
        L0_3(L1_3, L2_3)
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
bloccatuttodisas = L7_1
L7_1 = RegisterCommand
L8_1 = "fixarma"
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetCurrentPedVehicleWeapon
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = -1569615261
  L0_2(L1_2, L2_2)
  L0_2 = SetCanPedEquipAllWeapons
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterCommand
L8_1 = "fixweap"
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetCurrentPedVehicleWeapon
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = -1569615261
  L0_2(L1_2, L2_2)
  L0_2 = SetCanPedEquipAllWeapons
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterCommand
L8_1 = "armahash"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetCurrentPedWeapon
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 1
  L0_2, L1_2 = L0_2(L1_2, L2_2)
  L2_2 = print
  L3_2 = "Weapon hash id: "
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterCommand
L8_1 = "reload"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsControlPressed
  L2_2 = 0
  L3_2 = 246
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsPedReloading
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedArmed
      L2_2 = L0_2
      L3_2 = 4
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = exports
        L1_2 = L1_2.striano_editor
        L2_2 = L1_2
        L1_2 = L1_2.induskfalls
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = IsPedRagdoll
          L2_2 = L0_2
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            L1_2 = IsPedFatallyInjured
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            if not L1_2 then
              L1_2 = GetCurrentPedWeapon
              L2_2 = L0_2
              L3_2 = 1
              L1_2, L2_2 = L1_2(L2_2, L3_2)
              L3_2 = GetWeaponClipSize
              L4_2 = L2_2
              L3_2 = L3_2(L4_2)
              if -1075685676 ~= L2_2 and 883325847 ~= L2_2 then
                L4_2 = HashToNameW
                L5_2 = L2_2
                L4_2 = L4_2(L5_2)
                if nil ~= L4_2 then
                  L4_2 = IsPedReloading
                  L5_2 = L0_2
                  L4_2 = L4_2(L5_2)
                  if not L4_2 then
                    if 651271362 == L2_2 then
                      L3_2 = L3_2 - 2
                    elseif -1394978623 == L2_2 then
                      L3_2 = L3_2 - 10
                    elseif 1198879012 == L2_2 then
                      L3_2 = 1
                    end
                    L4_2 = GetAmmoInPedWeapon
                    L5_2 = L0_2
                    L6_2 = L2_2
                    L4_2 = L4_2(L5_2, L6_2)
                    L5_2 = HashToNameW
                    L6_2 = L2_2
                    L5_2 = L5_2(L6_2)
                    if nil ~= L5_2 and L3_2 < L4_2 then
                      L5_2 = SetAmmoInClip
                      L6_2 = L0_2
                      L7_2 = L2_2
                      L8_2 = 0
                      L5_2(L6_2, L7_2, L8_2)
                      L5_2 = SetPedAmmo
                      L6_2 = L0_2
                      L7_2 = L2_2
                      L8_2 = L3_2
                      L5_2(L6_2, L7_2, L8_2)
                      L5_2 = RefillAmmoInstantly
                      L6_2 = L0_2
                      L5_2(L6_2)
                    end
                  end
                end
              end
              L4_2 = GetAmmoInClip
              L5_2 = L0_2
              L6_2 = L2_2
              L4_2, L5_2 = L4_2(L5_2, L6_2)
              L6_2 = HashToNameW
              L7_2 = L2_2
              L6_2 = L6_2(L7_2)
              L7_2 = L3_2 - L5_2
              if L7_2 > 0 then
                L8_2 = TriggerServerEvent
                L9_2 = "inv3d:ammoRequest"
                L10_2 = L6_2
                L11_2 = L7_2
                L12_2 = "player"
                L8_2(L9_2, L10_2, L11_2, L12_2)
              else
                L8_2 = GetWeaponClipSize
                L9_2 = L2_2
                L8_2 = L8_2(L9_2)
                L9_2 = GetAmmoInPedWeapon
                L10_2 = L0_2
                L11_2 = L2_2
                L9_2 = L9_2(L10_2, L11_2)
                L10_2 = testo3dAmmo
                L11_2 = ""
                L12_2 = L9_2
                L13_2 = "/"
                L14_2 = L8_2
                L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
                L10_2(L11_2)
                L10_2 = PlaySoundFrontend
                L11_2 = -1
                L12_2 = "PICK_UP_WEAPON"
                L13_2 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
                L14_2 = 1
                L10_2(L11_2, L12_2, L13_2, L14_2)
                L10_2 = faiAnim
                L11_2 = "anim@char_rld_pistol"
                L12_2 = "pistol_reload"
                L13_2 = 1350
                L14_2 = 49
                L10_2(L11_2, L12_2, L13_2, L14_2)
              end
              L8_2 = Wait
              L9_2 = 3000
              L8_2(L9_2)
            end
          end
        else
          L1_2 = MakePedReload
          L2_2 = L0_2
          L1_2(L2_2)
        end
      else
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterKeyMapping
L8_1 = "reload"
L9_1 = "Reload"
L10_1 = "keyboard"
L11_1 = "r"
L7_1(L8_1, L9_1, L10_1, L11_1)
L7_1 = RegisterNetEvent
L8_1 = "inv3d:ammoResult"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if not A0_2 or A1_2 <= 0 then
    L3_2 = GetCurrentPedWeapon
    L4_2 = L2_2
    L5_2 = 1
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L5_2 = GetWeaponClipSize
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetAmmoInPedWeapon
    L7_2 = L2_2
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = testo3dAmmo
    L8_2 = ""
    L9_2 = L6_2
    L10_2 = "/"
    L11_2 = L5_2
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
    L7_2(L8_2)
    L7_2 = PlaySoundFrontend
    L8_2 = -1
    L9_2 = "PICK_UP_WEAPON"
    L10_2 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
    L11_2 = 1
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = faiAnim
    L8_2 = "anim@char_rld_pistol"
    L9_2 = "pistol_reload"
    L10_2 = 1350
    L11_2 = 49
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return
  end
  L3_2 = GetCurrentPedWeapon
  L4_2 = L2_2
  L5_2 = 1
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = GetWeaponClipSize
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetAmmoInClip
  L7_2 = L2_2
  L8_2 = L4_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if L5_2 > L7_2 then
    L8_2 = SetAmmoInClip
    L9_2 = L2_2
    L10_2 = L4_2
    L11_2 = 0
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = SetPedAmmo
    L9_2 = L2_2
    L10_2 = L4_2
    L11_2 = math
    L11_2 = L11_2.min
    L12_2 = L5_2
    L13_2 = L7_2 + A1_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = true
    L6_1 = L8_2
    L8_2 = bloccatuttodisas
    L8_2()
    L8_2 = AnimazioneArma
    L9_2 = L4_2
    L10_2 = A1_2
    L8_2(L9_2, L10_2)
    L8_2 = Wait
    L9_2 = 500
    L8_2(L9_2)
    L8_2 = false
    L6_1 = L8_2
    L8_2 = RefillAmmoInstantly
    L9_2 = L2_2
    L8_2(L9_2)
  end
end
L7_1(L8_1, L9_1)
