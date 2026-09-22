local L0_1, L1_1, L2_1
L0_1 = RegisterServerEvent
L1_1 = "esx_skin:save"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_skin:save"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = identOf
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = print
    L4_2 = "Volevo salvare una Skin ma identifier era invalido ID: "
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  if nil == A0_2 then
    L3_2 = print
    L4_2 = "^2 TENTATIVO DI SALVATAGGIO DI UNA VAR 'skin' invalida (nil) "
    L5_2 = L2_2
    L6_2 = " ID_Player: "
    L7_2 = tostring
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L3_2(L4_2)
    return
  end
  L3_2 = SetVarDB
  L4_2 = L2_2
  L5_2 = "skin"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerCallback
L1_1 = "esx_skin:getPlayerSkin"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = identOf
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
    return
  end
  L3_2 = UserData
  L3_2 = L3_2.GetValue
  L4_2 = L2_2
  L5_2 = "skin"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" == L4_2 then
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
    return
  end
  L4_2 = {}
  L4_2.moles_1 = 0
  L4_2.hair_2 = 0
  L4_2.moles_2 = 0
  L4_2.bags_2 = 0
  L4_2.bracelets_2 = 0
  L4_2.shoes_1 = 34
  L4_2.bproof_1 = 0
  L4_2.eyebrows_1 = 0
  L4_2.mom = 0
  L4_2.chin_4 = 0
  L4_2.chest_3 = 0
  L4_2.chest_2 = 0
  L4_2.arms_2 = 0
  L4_2.eyebrows_3 = 0
  L4_2.jaw_1 = 0
  L4_2.blush_2 = 0
  L4_2.tshirt_1 = 15
  L4_2.ears_2 = 0
  L4_2.arms = 15
  L4_2.pants_1 = 61
  L4_2.nose_3 = 0
  L4_2.bags_1 = 0
  L4_2.decals_2 = 0
  L4_2.jaw_2 = 0
  L4_2.bodyb_1 = -1
  L4_2.mask_2 = 0
  L4_2.cheeks_2 = 0
  L4_2.sun_1 = 0
  L4_2.nose_2 = 0
  L4_2.bproof_2 = 0
  L4_2.chain_2 = 0
  L4_2.chin_2 = 0
  L4_2.torso_1 = 15
  L4_2.eyebrows_6 = 0
  L4_2.blush_3 = 0
  L4_2.beard_2 = 0
  L4_2.age_2 = 0
  L4_2.cheeks_3 = 0
  L4_2.nose_1 = 0
  L4_2.glasses_2 = 0
  L4_2.makeup_2 = 0
  L4_2.helmet_1 = -1
  L4_2.lipstick_2 = 0
  L4_2.helmet_2 = 0
  L4_2.eyebrows_2 = 0
  L4_2.makeup_4 = 0
  L4_2.cheeks_1 = 0
  L4_2.beard_3 = 0
  L4_2.bodyb_3 = -1
  L4_2.sex = 1
  L4_2.nose_5 = 0
  L4_2.tshirt_2 = 0
  L4_2.watches_1 = -1
  L4_2.complexion_2 = 0
  L4_2.mask_1 = 0
  L4_2.chest_1 = 0
  L4_2.hair_color_2 = 0
  L4_2.lipstick_1 = 0
  L4_2.blush_1 = 0
  L4_2.lipstick_3 = 0
  L4_2.lipstick_4 = 0
  L4_2.age_1 = 0
  L4_2.blemishes_2 = 0
  L4_2.chin_1 = 0
  L4_2.skin_md_weight = 0
  L4_2.face_md_weight = 0
  L4_2.eyebrows_5 = 0
  L4_2.hair_color_1 = 0
  L4_2.neck_thickness = 0
  L4_2.ears_1 = -1
  L4_2.blemishes_1 = 0
  L4_2.bracelets_1 = -1
  L4_2.makeup_3 = 0
  L4_2.eye_squint = 0
  L4_2.complexion_1 = 0
  L4_2.nose_6 = 0
  L4_2.pants_2 = 0
  L4_2.glasses_1 = 0
  L4_2.decals_1 = 0
  L4_2.eyebrows_4 = 0
  L4_2.shoes_2 = 0
  L4_2.eye_color = 0
  L4_2.lip_thickness = 0
  L4_2.beard_4 = 0
  L4_2.nose_4 = 0
  L4_2.watches_2 = 0
  L4_2.torso_2 = 0
  L4_2.sun_2 = 0
  L4_2.chain_1 = 0
  L4_2.makeup_1 = 0
  L4_2.dad = 0
  L4_2.bodyb_4 = 0
  L4_2.beard_1 = 0
  L4_2.chin_3 = 0
  L4_2.hair_1 = 0
  L4_2.bodyb_2 = 0
  L5_2 = SetVarDB
  L6_2 = L2_2
  L7_2 = "skin"
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "esx_skin:adminSkin"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "esx_skin:adminSkin"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "striano_skin:edit"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "skin"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.IsAdmin
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = tonumber
  L3_2 = A1_2[1]
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2[1]
    if nil == L2_2 then
      return
    end
    L3_2 = TriggerClientEvent
    L4_2 = "striano_skin:edit"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = TriggerClientEvent
    L3_2 = "striano_skin:edit"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "skin2"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = TriggerClientEvent
  L4_2 = "striano_skin:edit"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.IsAdmin
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
isAllowedToChange = L0_1
L0_1 = RegisterServerEvent
L1_1 = "ward:updategiacca"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "ward:updategiacca"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = identOf
  L2_2 = source
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = SetVarDB
  L3_2 = L1_2
  L4_2 = "giacca"
  L5_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L3_2 = TriggerClientEvent
    L4_2 = "anim:cmd"
    L5_2 = source
    L6_2 = "prova3 Secondary (/sec & /secno) updated."
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
