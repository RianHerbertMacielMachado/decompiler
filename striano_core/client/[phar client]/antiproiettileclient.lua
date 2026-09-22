local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "useKevlar"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "useKevlar"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.secondarioattivo
  L0_2 = L0_2(L1_2)
  if nil == L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "e indossa2"
    L0_2(L1_2)
    L0_2 = SetPedArmour
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = 100
    L0_2(L1_2, L2_2)
    L0_2 = TriggerEvent
    L1_2 = "esx:EditGiubb"
    L0_2(L1_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Delete first secondary outfit /secno."
    L0_2(L1_2, L2_2)
  end
end
L0_1(L1_1, L2_1)
