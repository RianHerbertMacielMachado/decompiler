local L0_1, L1_1, L2_1
L0_1 = exports
L1_1 = "resetbasket"
function L2_1()
  local L0_2, L1_2
  L0_2 = ResettaTuttoBasket
  L0_2()
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "canestro"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = CanestroMappa
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "rimettitorcialuce"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = TorciaLavoro
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = TorciaLavoro
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = TorciaLavoro
    L0_2(L1_2)
    L0_2 = AddPropToPlayer
    L1_2 = "xm_base_cia_lamp_floor_01a"
    L2_2 = 31086
    L3_2 = -0.19
    L4_2 = 0.0
    L5_2 = 0.0
    L6_2 = -76.5
    L7_2 = -3.5
    L8_2 = 8.0
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    TorciaLavoro = L0_2
  end
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "eliminatorcialuce"
function L2_1()
  local L0_2, L1_2
  L0_2 = TorciaLavoro
  if L0_2 then
    L0_2 = SetEntityAsMissionEntity
    L1_2 = TorciaLavoro
    L0_2(L1_2)
    L0_2 = DeleteEntity
    L1_2 = TorciaLavoro
    L0_2(L1_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "msglegacy"
function L2_1(A0_2)
  local L1_2, L2_2
  timerMex = 0
  L1_2 = Wait
  L2_2 = 200
  L1_2(L2_2)
  L1_2 = timerMsgLegacyPhar
  L1_2()
  timerMex = 20
  L1_2 = loopMessaggioLegacy
  L1_2()
  msglegacyUltimo = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "msglegacy2"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  timerMex = 0
  L2_2 = Wait
  L3_2 = 200
  L2_2(L3_2)
  timerMex = A1_2
  L2_2 = timerMsgLegacyPhar
  L2_2()
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "msglegacypiazza"
function L2_1(A0_2)
  local L1_2
  L1_2 = mostraMsgPiazza
  L1_2()
  msglegacyPiazza = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "stopmsgpiazza"
function L2_1()
  local L0_2, L1_2
  msglegacyPiazza = ""
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "vicinoNPC"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = false
  L1_2 = pairs
  L2_2 = NPC_Povero
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetEntityCoords
    L8_2 = PlayerPedId
    L8_2, L9_2, L10_2, L11_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = vector3
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = L6_2.z
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L7_2 - L8_2
    L7_2 = #L7_2
    if L7_2 < 10.0 then
      L0_2 = true
    end
  end
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "subtitle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submex
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "updateVoce"
function L2_1(A0_2)
  local L1_2
  GraduazioneVoce = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "ineditfreecam"
function L2_1()
  local L0_2, L1_2
  L0_2 = camFRC
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "secondarioattivo"
function L2_1()
  local L0_2, L1_2
  L0_2 = SkinPrimaSecondario
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "editmakeup"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.secondarioattivo
  L1_2 = L1_2(L2_2)
  if nil == L1_2 then
    L1_2 = editMakeup
    L1_2()
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submex
    L3_2 = "Delete first secondary outfit with ~q~~h~/secno~h~~w~."
    L1_2(L2_2, L3_2)
  end
end
L0_1(L1_1, L2_1)
