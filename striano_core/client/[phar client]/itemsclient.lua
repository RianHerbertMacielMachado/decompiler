local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = 5
L1_1 = -0.06
L2_1 = 0.15
L3_1 = 2.0
L4_1 = AddEventHandler
L5_1 = "smb:breath"
L4_1(L5_1)
L4_1 = RegisterNetEvent
L5_1 = "smb:breath"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = breath
  L2_2 = NetToPed
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetInteriorFromEntity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L1_2 = IsPedSittingInAnyVehicle
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedFatallyInjured
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = IsEntityVisible
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          goto lbl_23
        end
      end
    end
  end
  do return end
  goto lbl_57
  ::lbl_23::
  L1_2 = RequestNamedPtfxAsset
  L2_2 = "cut_michael1"
  L1_2(L2_2)
  while true do
    L1_2 = HasNamedPtfxAssetLoaded
    L2_2 = "cut_michael1"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = UseParticleFxAssetNextCall
  L2_2 = "cut_michael1"
  L1_2(L2_2)
  L1_2 = StartParticleFxNonLoopedOnPedBone
  L2_2 = "cs_mich1_breath"
  L3_2 = A0_2
  L4_2 = L2_1
  L5_2 = L1_1
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 39317
  L11_2 = L3_1
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L1_2 = RemoveNamedPtfxAsset
  L2_2 = "cut_michael1"
  L1_2(L2_2)
  do return end
  ::lbl_57::
end
breath = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerServerEvent
  L1_2 = "smb:breath"
  L2_2 = PedToNet
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
EsciFumoFunc = L4_1
L4_1 = AddEventHandler
L5_1 = "onResourceStop"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = propSigaretta
    if nil ~= L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = propSigaretta
      L1_2(L2_2)
      L1_2 = DeleteObject
      L2_2 = propSigaretta
      L1_2(L2_2)
      propSigaretta = nil
    end
  end
end
L4_1(L5_1, L6_1)
