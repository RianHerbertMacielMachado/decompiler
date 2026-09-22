local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = nil
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = L8_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L12_2 = RequestModelStriano
  L13_2 = A0_2
  L12_2(L13_2)
  L12_2 = IsEntityVisible
  L13_2 = PlayerPedId
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L13_2()
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  if L12_2 then
    L12_2 = nil
    L13_2 = L0_1
    if nil ~= L13_2 then
      L13_2 = DoesEntityExist
      L14_2 = L0_1
      L13_2 = L13_2(L14_2)
      if L13_2 then
        L12_2 = L0_1
    end
    else
      L13_2 = CreateObject
      L14_2 = GetHashKey
      L15_2 = A0_2
      L14_2 = L14_2(L15_2)
      L15_2 = L9_2
      L16_2 = L10_2
      L17_2 = L11_2 - 0.2
      L18_2 = true
      L19_2 = true
      L20_2 = false
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L12_2 = L13_2
    end
    L13_2 = 0
    while true do
      L14_2 = DoesEntityExist
      L15_2 = L12_2
      L14_2 = L14_2(L15_2)
      if not (not L14_2 and L13_2 < 100) then
        break
      end
      L13_2 = L13_2 + 1
      L14_2 = Wait
      L15_2 = 0
      L14_2(L15_2)
    end
    if L13_2 < 100 then
      L14_2 = AttachEntityToEntity
      L15_2 = L12_2
      L16_2 = L8_2
      L17_2 = GetPedBoneIndex
      L18_2 = L8_2
      L19_2 = A1_2
      L17_2 = L17_2(L18_2, L19_2)
      L18_2 = A2_2
      L19_2 = A3_2
      L20_2 = A4_2
      L21_2 = A5_2
      L22_2 = A6_2
      L23_2 = A7_2
      L24_2 = true
      L25_2 = true
      L26_2 = false
      L27_2 = true
      L28_2 = 1
      L29_2 = true
      L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
      L0_1 = L12_2
      L14_2 = SetModelAsNoLongerNeeded
      L15_2 = A0_2
      L14_2(L15_2)
    end
  end
end
L2_1 = false
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = TriggerServerEvent
  L1_2 = "megaphone:applySubmix"
  L2_2 = false
  L0_2(L1_2, L2_2)
  usingMegaphone = false
  L0_2 = Wait
  L1_2 = 25
  L0_2(L1_2)
  L0_2 = faiAnim
  L1_2 = "cellphone@"
  L2_2 = "cellphone_cellphone_outro"
  L3_2 = 1000
  L4_2 = 49
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Wait
  L1_2 = 250
  L0_2(L1_2)
  L0_2 = L0_1
  if nil ~= L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = L0_1
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = L0_1
    L0_2(L1_2)
    L0_2 = nil
    L0_1 = L0_2
  end
  L0_2 = false
  L2_1 = L0_2
end
DisableMegSub = L3_1
function L3_1()
  local L0_2, L1_2
  usingMegaphone = true
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = faiAnim
    L1_3 = "molly@megaphone"
    L2_3 = "megaphone_clip"
    L3_3 = -1
    L4_3 = 49
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L1_1
    L1_3 = "prop_megaphone_01"
    L2_3 = 28422
    L3_3 = 0.05
    L4_3 = 0.054
    L5_3 = -0.006
    L6_3 = -71.8855
    L7_3 = -13.0889
    L8_3 = -16.0242
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L0_3 = TriggerServerEvent
    L1_3 = "megaphone:applySubmix"
    L2_3 = true
    L0_3(L1_3, L2_3)
    while true do
      L0_3 = usingMegaphone
      if not L0_3 then
        break
      end
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 73
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        break
      end
      L0_3 = IsPedFatallyInjured
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      if L0_3 then
        break
      end
      L0_3 = IsPedRagdoll
      L1_3 = PlayerPedId
      L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L1_3()
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      if L0_3 then
        break
      end
      L0_3 = IsEntityPlayingAnim
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = "molly@megaphone"
      L3_3 = "megaphone_clip"
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = IsEntityPlayingAnim
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = "molly@megaphone2"
        L3_3 = "megaphone_clip"
        L4_3 = 3
        L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
        if not L0_3 then
          goto lbl_85
        end
      end
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 47
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = L2_1
        L0_3 = not L0_3
        L2_1 = L0_3
      end
      L0_3 = L2_1
      if not L0_3 then
        L0_3 = faiAnim
        L1_3 = "molly@megaphone"
        L2_3 = "megaphone_clip"
        L3_3 = -1
        L4_3 = 49
        L0_3(L1_3, L2_3, L3_3, L4_3)
      else
        L0_3 = faiAnim
        L1_3 = "molly@megaphone2"
        L2_3 = "megaphone_clip"
        L3_3 = -1
        L4_3 = 49
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
      ::lbl_85::
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    while true do
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 73
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
    L0_3 = DisableMegSub
    L0_3()
  end
  L0_2(L1_2)
end
UseMegaphone = L3_1
L3_1 = RegisterNetEvent
L4_1 = "AttivaMegafono"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "AttivaMegafono"
function L5_1()
  local L0_2, L1_2
  L0_2 = UseMegaphone
  L0_2()
end
L3_1(L4_1, L5_1)
L3_1 = {}
L4_1 = -455129387
L3_1[L4_1] = 1
L4_1 = -773893275
L3_1[L4_1] = 300.0
L4_1 = 2006643436
L3_1[L4_1] = 5000.0
L4_1 = -688973352
L3_1[L4_1] = 0.0
L4_1 = -1383405282
L3_1[L4_1] = 0.2
L4_1 = 1634608902
L3_1[L4_1] = 0.0
L4_1 = 1556538169
L3_1[L4_1] = 550.0
L4_1 = -1555401541
L3_1[L4_1] = 0.0
L4_1 = nil
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = CreateAudioSubmix
  L1_2 = "Megaphone"
  L0_2 = L0_2(L1_2)
  L4_1 = L0_2
  L0_2 = SetAudioSubmixEffectRadioFx
  L1_2 = L4_1
  L2_2 = 0
  L0_2(L1_2, L2_2)
  L0_2 = pairs
  L1_2 = L3_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = SetAudioSubmixEffectParamInt
    L7_2 = L4_1
    L8_2 = 0
    L9_2 = L4_2
    L10_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L0_2 = AddAudioSubmixOutput
  L1_2 = L4_1
  L2_2 = 0
  L0_2(L1_2, L2_2)
end
L5_1(L6_1)
L5_1 = RegisterNetEvent
L6_1 = "megaphone:updateSubmixStatus"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = false
  if A0_2 then
    if L2_2 then
      L3_2 = MumbleSetVolumeOverrideByServerId
      L4_2 = A1_2
      L5_2 = 0.9
      L3_2(L4_2, L5_2)
    end
    L3_2 = soundDistanceMeg
    L4_2 = MumbleSetSubmixForServerId
    L5_2 = A1_2
    L6_2 = L4_1
    L4_2(L5_2, L6_2)
    L4_2 = exports
    L4_2 = L4_2["pma-voice"]
    L5_2 = L4_2
    L4_2 = L4_2.overrideProximityRange
    L6_2 = L3_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  else
    L3_2 = MumbleSetSubmixForServerId
    L4_2 = A1_2
    L5_2 = -1
    L3_2(L4_2, L5_2)
    if L2_2 then
      L3_2 = MumbleSetVolumeOverrideByServerId
      L4_2 = A1_2
      L5_2 = -1.0
      L3_2(L4_2, L5_2)
    end
    L3_2 = exports
    L3_2 = L3_2["pma-voice"]
    L4_2 = L3_2
    L3_2 = L3_2.clearProximityOverride
    L3_2(L4_2)
    L3_2 = MumbleClearVoiceTargetPlayers
    L4_2 = 1
    L3_2(L4_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "onResourceStop"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L0_1
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L0_1
      L1_2(L2_2)
      L1_2 = DeleteEntity
      L2_2 = L0_1
      L1_2(L2_2)
      L1_2 = nil
      L0_1 = L1_2
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "inMeg"
function L7_1()
  local L0_2, L1_2
  L0_2 = usingMegaphone
  return L0_2
end
L5_1(L6_1, L7_1)
