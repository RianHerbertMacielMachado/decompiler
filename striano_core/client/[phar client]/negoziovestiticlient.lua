local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = 7
L1_1 = nil
L2_1 = nil
L3_1 = nil
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = ExecuteCommand
  L1_2 = "e shrug5"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "skinchanger:getSkin"
  function L2_2(A0_3)
    local L1_3
    L1_1 = A0_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityModel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if 1885233650 ~= L1_2 and -1667301416 ~= L1_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "FaCrashare:editskin"
    L2_2(L3_2)
    return
  end
  L2_2 = GetResourceState
  L3_2 = "skinchanger"
  L2_2 = L2_2(L3_2)
  if "started" == L2_2 then
    L2_2 = exports
    L2_2 = L2_2.skinchanger
    L3_2 = L2_2
    L2_2 = L2_2.closeMenu
    L2_2(L3_2)
  end
  L2_2 = GetResourceState
  L3_2 = "striano_fastmenu"
  L2_2 = L2_2(L3_2)
  if "started" ~= L2_2 then
    return
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = {}
  L3_2.label = "\240\159\146\190 SAVE CURRENT OUTFIT"
  L3_2.event = "saveOutfit"
  L4_2 = {}
  L4_2.label = "\226\158\149 CREATE NEW OUTFIT"
  L4_2.event = "creaNuovoOutfit"
  L5_2 = {}
  L5_2.label = "\240\159\145\149 YOUR OUTFITS LIST"
  L5_2.event = "listaOutfit"
  L6_2 = {}
  L6_2.label = "\226\153\187\239\184\143 LOAD LAST OUTFIT"
  L6_2.event = "loadLast"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = exports
    L9_2 = L9_2.striano_fastmenu
    L10_2 = L9_2
    L9_2 = L9_2.addMenuItem
    L11_2 = L8_2.label
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerEvent
      L1_3 = "startEvent"
      L2_3 = L8_2.event
      L0_3(L1_3, L2_3)
    end
    L13_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L3_2 = exports
  L3_2 = L3_2.striano_fastmenu
  L4_2 = L3_2
  L3_2 = L3_2.openMenu
  L3_2(L4_2)
end
ApriNegozioVestitiMenu = L4_1
L4_1 = AddEventHandler
L5_1 = "startEvent"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    return
  end
  L1_2 = Wait
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = TriggerEvent
  L2_2 = A0_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "saveOutfit"
function L6_1()
  local L0_2, L1_2
  L0_2 = AcquistaVestiti
  L0_2()
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "loadLast"
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = "skinchanger:getSkin"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L3_1
    if nil ~= L1_3 then
      L1_3 = exports
      L1_3 = L1_3.skinchanger
      L2_3 = L1_3
      L1_3 = L1_3.closeMenu
      L1_3(L2_3)
      L1_1 = A0_3
      L1_3 = TriggerEvent
      L2_3 = "skinchanger:loadSkin"
      L3_3 = L3_1
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "e indossa"
      L1_3(L2_3)
      L1_3 = nil
      L3_1 = L1_3
      L1_3 = TriggerEvent
      L2_3 = "creaNuovoOutfit"
      L1_3(L2_3)
    else
      L1_3 = ExecuteCommand
      L2_3 = "e shrug4"
      L1_3(L2_3)
    end
  end
  L0_2(L1_2, L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "listaOutfit"
function L6_1()
  local L0_2, L1_2
  L0_2 = DressingFunc
  L0_2()
end
L4_1(L5_1, L6_1)
L4_1 = AddEventHandler
L5_1 = "creaNuovoOutfit"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.secondarioattivo
  L0_2 = L0_2(L1_2)
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.skinchanger
    L1_2 = L0_2
    L0_2 = L0_2.closeMenu
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_fastmenu
    L1_2 = L0_2
    L0_2 = L0_2.closeMenu
    L0_2(L1_2)
    L0_2 = Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
      while true do
        L0_3 = exports
        L0_3 = L0_3.skinchanger
        L1_3 = L0_3
        L0_3 = L0_3.menuaperto
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 1000
        L0_3(L1_3)
      end
      L0_3 = OpenInput
      L1_3 = "Save? Type \"yes\"."
      L0_3 = L0_3(L1_3)
      if "yes" == L0_3 then
        L1_3 = AcquistaVestiti
        L1_3()
      else
        L1_3 = exports
        L1_3 = L1_3.striano_combat
        L2_3 = L1_3
        L1_3 = L1_3.submexError
        L3_3 = "You do not confirm this outfit, if you change idea you can find it in menu."
        L1_3(L2_3, L3_3)
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:getSkin"
        function L3_3(A0_4)
          local L1_4
          L3_1 = A0_4
        end
        L1_3(L2_3, L3_3)
        L1_3 = L1_1
        if nil ~= L1_3 then
          L1_3 = TriggerEvent
          L2_3 = "skinchanger:loadSkin"
          L3_3 = L1_1
          L1_3(L2_3, L3_3)
          L1_3 = nil
          L1_1 = L1_3
        end
        L1_3 = ClearPedTasks
        L2_3 = PlayerPedId
        L2_3, L3_3 = L2_3()
        L1_3(L2_3, L3_3)
      end
    end
    L0_2(L1_2)
    L0_2 = TriggerEvent
    L1_2 = "striano_skin:edit"
    L2_2 = {}
    L3_2 = "tshirt_1"
    L4_2 = "tshirt_2"
    L5_2 = "torso_1"
    L6_2 = "torso_2"
    L7_2 = "arms"
    L8_2 = "arms_2"
    L9_2 = "pants_1"
    L10_2 = "pants_2"
    L11_2 = "shoes_1"
    L12_2 = "shoes_2"
    L13_2 = "chain_1"
    L14_2 = "chain_2"
    L15_2 = "ears_1"
    L16_2 = "ears_2"
    L17_2 = "glasses_1"
    L18_2 = "glasses_2"
    L19_2 = "helmet_1"
    L20_2 = "helmet_2"
    L21_2 = "bracelets_1"
    L22_2 = "bracelets_2"
    L23_2 = "watches_1"
    L24_2 = "watches_2"
    L25_2 = "decals_1"
    L26_2 = "decals_2"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L2_2[6] = L8_2
    L2_2[7] = L9_2
    L2_2[8] = L10_2
    L2_2[9] = L11_2
    L2_2[10] = L12_2
    L2_2[11] = L13_2
    L2_2[12] = L14_2
    L2_2[13] = L15_2
    L2_2[14] = L16_2
    L2_2[15] = L17_2
    L2_2[16] = L18_2
    L2_2[17] = L19_2
    L2_2[18] = L20_2
    L2_2[19] = L21_2
    L2_2[20] = L22_2
    L2_2[21] = L23_2
    L2_2[22] = L24_2
    L2_2[23] = L25_2
    L2_2[24] = L26_2
    L0_2(L1_2, L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "First you must remove secondary outfit."
    L0_2(L1_2, L2_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "aggiornaSecondario"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "aggiornaSecondario"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = TriggerServerCallback
  L3_2 = "getPlayerOutfits"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_2 = A0_3
    L1_3 = 1
    L2_3 = L1_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_2
      if L4_3 == L5_3 then
        L5_3 = TriggerServerEvent
        L6_3 = "ward:updategiacca"
        L7_3 = L1_2
        L7_3 = L7_3[L4_3]
        L7_3 = L7_3.skin
        L5_3(L6_3, L7_3)
        return
      end
    end
  end
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2 = L6_2()
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "editVestiti"
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = "editVestiti"
function L6_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.skinchanger
  L1_2 = L0_2
  L0_2 = L0_2.closeMenu
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 255
  L0_2(L1_2)
  L0_2 = ApriNegozioVestitiMenu
  L0_2()
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = 0
  end
  L2_2 = exports
  L2_2 = L2_2.skinchanger
  L3_2 = L2_2
  L2_2 = L2_2.closeMenu
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submex
  L4_2 = ""
  L2_2(L3_2, L4_2)
  if nil == L1_2 then
    L1_2 = 0
  end
  L2_2 = TriggerServerCallback
  L3_2 = "soldi:check"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = L1_2
    if 0 == L1_3 or A0_3 then
      L1_3 = "Name of outfit"
      L2_3 = OpenInput
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      if nil ~= L2_3 and "" ~= L2_3 then
        L3_3 = TriggerServerCallback
        L4_3 = "getPlayerOutfits"
        function L5_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
          L1_4 = 0
          if nil == A0_4 then
            L1_4 = 0
          else
            L1_4 = #A0_4
          end
          L2_4 = TriggerEvent
          L3_4 = "skinchanger:getSkin"
          function L4_4(A0_5)
            local L1_5
            L3_1 = A0_5
          end
          L2_4(L3_4, L4_4)
          L2_4 = L1_1
          if nil ~= L2_4 then
            L2_4 = TriggerEvent
            L3_4 = "skinchanger:loadSkin"
            L4_4 = L1_1
            L2_4(L3_4, L4_4)
            L2_4 = nil
            L1_1 = L2_4
          end
          L2_4 = L0_1
          if L1_4 < L2_4 then
            L2_4 = TriggerEvent
            L3_4 = "skinchanger:getSkin"
            function L4_4(A0_5)
              local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
              L1_5 = TriggerServerEvent
              L2_5 = "esx_eden_clotheshop:saveOutfit"
              L3_5 = L2_3
              L4_5 = A0_5
              L5_5 = GetPlayerServerId
              L6_5 = PlayerId
              L6_5 = L6_5()
              L5_5, L6_5 = L5_5(L6_5)
              L1_5(L2_5, L3_5, L4_5, L5_5, L6_5)
            end
            L2_4(L3_4, L4_4)
            L2_4 = exports
            L2_4 = L2_4.striano_combat
            L3_4 = L2_4
            L2_4 = L2_4.submexInfo
            L4_4 = "Outfit insert in your own list."
            L2_4(L3_4, L4_4)
          else
            L2_4 = exports
            L2_4 = L2_4.striano_combat
            L3_4 = L2_4
            L2_4 = L2_4.submexInfo
            L4_4 = "Operation locked, your account can save till "
            L5_4 = L0_1
            L6_4 = " outfits."
            L4_4 = L4_4 .. L5_4 .. L6_4
            L2_4(L3_4, L4_4)
          end
        end
        L6_3 = GetPlayerServerId
        L7_3 = PlayerId
        L7_3 = L7_3()
        L6_3, L7_3 = L6_3(L7_3)
        L3_3(L4_3, L5_3, L6_3, L7_3)
      else
        L3_3 = exports
        L3_3 = L3_3.striano_combat
        L4_3 = L3_3
        L3_3 = L3_3.submexError
        L5_3 = "Invalid name, outfit stored as last in the menu."
        L3_3(L4_3, L5_3)
        L3_3 = TriggerEvent
        L4_3 = "skinchanger:getSkin"
        function L5_3(A0_4)
          local L1_4
          L3_1 = A0_4
        end
        L3_3(L4_3, L5_3)
        L3_3 = L1_1
        if nil ~= L3_3 then
          L3_3 = TriggerEvent
          L4_3 = "skinchanger:loadSkin"
          L5_3 = L1_1
          L3_3(L4_3, L5_3)
          L3_3 = nil
          L1_1 = L3_3
        end
        L3_3 = ExecuteCommand
        L4_3 = "e shrug5"
        L3_3(L4_3)
      end
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "You don't have enough coins, outfit stored as last in the menu."
      L1_3(L2_3, L3_3)
      L1_3 = TriggerEvent
      L2_3 = "skinchanger:getSkin"
      function L3_3(A0_4)
        local L1_4
        L3_1 = A0_4
      end
      L1_3(L2_3, L3_3)
      L1_3 = L1_1
      if nil ~= L1_3 then
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:loadSkin"
        L3_3 = L1_1
        L1_3(L2_3, L3_3)
        L1_3 = nil
        L1_1 = L1_3
      end
      L1_3 = ExecuteCommand
      L2_3 = "e shrug5"
      L1_3(L2_3)
    end
  end
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
AcquistaVestiti = L4_1
L4_1 = RegisterCommand
L5_1 = "deldecal"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerEvent
  L1_2 = "skinchanger:change"
  L2_2 = "decals_1"
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = TriggerEvent
  L1_2 = "skinchanger:change"
  L2_2 = "decals_2"
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submex
  L2_2 = "Decals removed."
  L0_2(L1_2, L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterCommand
L5_1 = "braccia"
function L6_1()
  local L0_2, L1_2
  L0_2 = EditBraccia
  L0_2()
end
L4_1(L5_1, L6_1)
L4_1 = RegisterCommand
L5_1 = "guanti"
function L6_1()
  local L0_2, L1_2
  L0_2 = EditBraccia
  L0_2()
end
L4_1(L5_1, L6_1)
L4_1 = nil
L5_1 = nil
L6_1 = RegisterCommand
L7_1 = "braccia2"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai ancora effettuato modifiche in /braccia."
    L0_2(L1_2, L2_2)
  else
    L0_2 = TriggerEvent
    L1_2 = "skinchanger:getSkin"
    function L2_2(A0_3)
      local L1_3
      L1_3 = A0_3.arms
      L5_1 = L1_3
    end
    L0_2(L1_2, L2_2)
    L0_2 = TriggerEvent
    L1_2 = "skinchanger:change"
    L2_2 = "arms"
    L3_2 = L4_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = ExecuteCommand
    L1_2 = "e adjusttie"
    L0_2(L1_2)
    L0_2 = nil
    L4_1 = L0_2
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Hai rimosso le tue ultime braccia che avevi modificato."
    L0_2(L1_2, L2_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "braccia3"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L5_1
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai ancora applicato modifiche in /braccia."
    L0_2(L1_2, L2_2)
  else
    L0_2 = TriggerEvent
    L1_2 = "skinchanger:getSkin"
    function L2_2(A0_3)
      local L1_3
      L1_3 = A0_3.arms
      L4_1 = L1_3
    end
    L0_2(L1_2, L2_2)
    L0_2 = TriggerEvent
    L1_2 = "skinchanger:change"
    L2_2 = "arms"
    L3_2 = L5_1
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = ExecuteCommand
    L1_2 = "e adjusttie"
    L0_2(L1_2)
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Hai rimesso le tue ultime braccia modificate."
    L0_2(L1_2, L2_2)
  end
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerEvent
  L1_2 = "striano_skin:edit"
  L2_2 = {}
  L3_2 = "arms"
  L2_2[1] = L3_2
  L0_2(L1_2, L2_2)
end
EditBraccia = L6_1
L6_1 = RegisterNetEvent
L7_1 = "esx:EditGiubb"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "esx:EditGiubb"
function L8_1()
  local L0_2, L1_2
  L0_2 = EditGiubotto
  L0_2()
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "esx:settamiArmour"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "esx:settamiArmour"
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetPedArmour
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 100
  L0_2(L1_2, L2_2)
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = TriggerEvent
  L1_2 = "striano_skin:edit"
  L2_2 = {}
  L3_2 = "bproof_1"
  L4_2 = "bproof_2"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L0_2(L1_2, L2_2)
end
EditGiubotto = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if nil == A0_2 then
    return
  end
  if 52 == A0_2 or 53 == A0_2 then
    return
  end
  L1_2 = TriggerEvent
  L2_2 = "striano_skin:edit"
  L3_2 = {}
  L4_2 = "helmet_2"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
EditCasco = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = TriggerEvent
  L1_2 = "striano_skin:edit"
  L2_2 = {}
  L3_2 = "eyebrow_size"
  L4_2 = "eyebrow_color_1"
  L5_2 = "eyebrow_color_2"
  L6_2 = "eyebrow_depth"
  L7_2 = "eyebrow_height"
  L8_2 = "makeup_thickness"
  L9_2 = "makeup_color_1"
  L10_2 = "makeup_color_2"
  L11_2 = "lipstick_thickness"
  L12_2 = "lipstick_color_1"
  L13_2 = "lipstick_color_2"
  L14_2 = "blush_1"
  L15_2 = "blush_color"
  L16_2 = "freckles"
  L17_2 = "freckles_1"
  L18_2 = "beard_color_1"
  L19_2 = "hair_color_1"
  L20_2 = "hair_color_2"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L2_2[11] = L13_2
  L2_2[12] = L14_2
  L2_2[13] = L15_2
  L2_2[14] = L16_2
  L2_2[15] = L17_2
  L2_2[16] = L18_2
  L2_2[17] = L19_2
  L2_2[18] = L20_2
  L0_2(L1_2, L2_2)
end
editMakeup = L6_1
L6_1 = RegisterNetEvent
L7_1 = "eliminaOutfit"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "eliminaOutfit"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = TriggerServerCallback
  L3_2 = "getPlayerOutfits"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_2 = A0_3
    L1_3 = table
    L1_3 = L1_3.remove
    L2_3 = L1_2
    L3_3 = A0_2
    L1_3(L2_3, L3_3)
    L1_3 = TriggerServerEvent
    L2_3 = "updateOutfits"
    L3_3 = L1_2
    L1_3(L2_3, L3_3)
  end
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2 = L6_2()
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "rinominaOutfit"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "rinominaOutfit"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = TriggerServerCallback
  L4_2 = "getPlayerOutfits"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L2_2 = A0_3
    L1_3 = 1
    L2_3 = L2_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_2
      if L4_3 == L5_3 then
        L5_3 = L2_2
        L5_3 = L5_3[L4_3]
        L6_3 = A1_2
        L5_3.label = L6_3
      end
    end
    L1_3 = TriggerServerEvent
    L2_3 = "updateOutfits"
    L3_3 = L2_2
    L1_3(L2_3, L3_3)
  end
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2 = L7_2()
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "indossaOutfit"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "indossaOutfit"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = TriggerServerCallback
  L3_2 = "getPlayerOutfits"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_2 = A0_3
    L1_3 = 1
    L2_3 = L1_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_2
      if L4_3 == L5_3 then
        L5_3 = TriggerEvent
        L6_3 = "skinchanger:getSkin"
        function L7_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4
          L1_4 = TriggerEvent
          L2_4 = "skinchanger:loadClothes"
          L3_4 = A0_4
          L5_4 = L4_3
          L4_4 = L1_2
          L4_4 = L4_4[L5_4]
          L4_4 = L4_4.skin
          L1_4(L2_4, L3_4, L4_4)
        end
        L5_3(L6_3, L7_3)
        break
      end
    end
  end
  L5_2 = GetPlayerServerId
  L6_2 = PlayerId
  L6_2 = L6_2()
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.close
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 255
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Wear "
  L5_2 = A1_2[A0_2]
  L5_2 = L5_2.label
  L4_2 = L4_2 .. L5_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerServerEvent
    L1_3 = "esx_eden_clotheshop:indossaOutfit"
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
    L0_3 = CreateThread
    function L1_3()
      local L0_4, L1_4
      L0_4 = Wait
      L1_4 = 1500
      L0_4(L1_4)
      L0_4 = ExecuteCommand
      L1_4 = "e indossa2"
      L0_4(L1_4)
      L0_4 = TriggerEvent
      L1_4 = "SaveMySkin"
      L0_4(L1_4)
    end
    L0_3(L1_3)
    L0_3 = nil
    L1_1 = L0_3
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Rename"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = OpenInput
    L1_3 = "Insert name."
    L0_3 = L0_3(L1_3)
    if "" == L0_3 then
      L1_3 = #L0_3
      if not (L1_3 > 1) then
        goto lbl_25
      end
    end
    L1_3 = TriggerServerEvent
    L2_3 = "esx_eden_clotheshop:renameOutfit"
    L3_3 = A0_2
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = exports
    L1_3 = L1_3.striano_combat
    L2_3 = L1_3
    L1_3 = L1_3.testo3d
    L3_3 = "Renamed."
    L1_3(L2_3, L3_3)
    L1_3 = Wait
    L2_3 = 1000
    L1_3(L2_3)
    L1_3 = DressingFunc
    L1_3()
    goto lbl_28
    ::lbl_25::
    L1_3 = ExecuteCommand
    L2_3 = "e shrug4"
    L1_3(L2_3)
    ::lbl_28::
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Share with Nearest"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = PlayerVicino
    L0_3, L1_3 = L0_3()
    if -1 ~= L0_3 then
      L2_3 = 2.5
      if L1_3 <= L2_3 then
        L2_3 = TriggerServerEvent
        L3_3 = "condividiOutfit"
        L4_3 = GetPlayerServerId
        L5_3 = PlayerId
        L5_3, L6_3 = L5_3()
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = GetPlayerServerId
        L6_3 = L0_3
        L5_3 = L5_3(L6_3)
        L6_3 = A0_2
        L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    else
      L2_3 = ExecuteCommand
      L3_3 = "e shrug"
      L2_3(L3_3)
    end
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Secondary"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = OpenInput
    L1_3 = "Sure? Type \"yes\"."
    L0_3 = L0_3(L1_3)
    if "si" == L0_3 or "sI" == L0_3 or "Si" == L0_3 or "SI" == L0_3 then
      L1_3 = TriggerServerEvent
      L2_3 = "aggiornaSecondario"
      L3_3 = A0_2
      L1_3(L2_3, L3_3)
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.testo3d
      L3_3 = "Done."
      L1_3(L2_3, L3_3)
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
      L1_3 = DressingFunc
      L1_3()
    else
      L1_3 = ExecuteCommand
      L2_3 = "e shrug4"
      L1_3(L2_3)
    end
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Delete"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = OpenInput
    L1_3 = "Sure? Type \"yes\"."
    L0_3 = L0_3(L1_3)
    if "yes" == L0_3 then
      L1_3 = TriggerServerEvent
      L2_3 = "esx_eden_clotheshop:deleteOutfit"
      L3_3 = A0_2
      L1_3(L2_3, L3_3)
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.testo3d
      L3_3 = "Deleted."
      L1_3(L2_3, L3_3)
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
      L1_3 = DressingFunc
      L1_3()
    else
      L1_3 = ExecuteCommand
      L2_3 = "e shrug4"
      L1_3(L2_3)
    end
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
end
GestisciOutfitNegozio = L6_1
L6_1 = RegisterNetEvent
L7_1 = "condividiOutfit"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "condividiOutfit"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = TriggerServerCallback
  L4_2 = "getPlayerOutfits"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_2 = A0_3
    L1_3 = 1
    L2_3 = L2_2
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A1_2
      if L4_3 == L5_3 then
        L5_3 = TriggerEvent
        L6_3 = "riceviOutfit"
        L7_3 = A0_2
        L8_3 = L2_2
        L8_3 = L8_3[L4_3]
        L8_3 = L8_3.skin
        L9_3 = L2_2
        L9_3 = L9_3[L4_3]
        L9_3 = L9_3.label
        L5_3(L6_3, L7_3, L8_3, L9_3)
        break
      end
    end
  end
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2 = L7_2()
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "riceviOutfit"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "riceviOutfit"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submexInfo
  L4_2 = "A player want share with you outfit name "
  L5_2 = A1_2
  L6_2 = ", you accept it?"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  while true do
    L2_2 = exports
    L2_2 = L2_2.striano_core
    L3_2 = L2_2
    L2_2 = L2_2.draw
    L4_2 = 38
    L5_2 = "Yes, take it."
    L6_2 = 73
    L7_2 = "No, don't do it"
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = IsDisabledControlPressed
    L3_2 = 0
    L4_2 = 73
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = IsControlPressed
      L3_2 = 0
      L4_2 = 73
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = IsDisabledControlPressed
        L3_2 = 0
        L4_2 = 25
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L2_2 = IsControlPressed
          L3_2 = 0
          L4_2 = 25
          L2_2 = L2_2(L3_2, L4_2)
          if not L2_2 then
            goto lbl_48
          end
        end
      end
    end
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submex
    L4_2 = ""
    L2_2(L3_2, L4_2)
    do return end
    goto lbl_71
    ::lbl_48::
    L2_2 = IsDisabledControlPressed
    L3_2 = 0
    L4_2 = 38
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = IsControlPressed
      L3_2 = 0
      L4_2 = 38
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        goto lbl_71
      end
    end
    L2_2 = TriggerEvent
    L3_2 = "skinchanger:getSkin"
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = TriggerEvent
      L2_3 = "skinchanger:loadClothes"
      L3_3 = A0_3
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L2_2(L3_2, L4_2)
    L2_2 = Wait
    L3_2 = 1000
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "e indossa2"
    L2_2(L3_2)
    do return end
    ::lbl_71::
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "ApriAbbigliamento"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "ApriAbbigliamento"
function L8_1()
  local L0_2, L1_2
  L0_2 = DressingFunc
  L0_2()
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = TriggerServerCallback
  L1_2 = "getPlayerOutfits"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if nil ~= A0_3 then
      L1_3 = #A0_3
      if L1_3 > 0 then
        L1_3 = exports
        L1_3 = L1_3.skinchanger
        L2_3 = L1_3
        L1_3 = L1_3.closeMenu
        L1_3(L2_3)
        L1_3 = exports
        L1_3 = L1_3.striano_fastmenu
        L2_3 = L1_3
        L1_3 = L1_3.close
        L1_3(L2_3)
        L1_3 = exports
        L1_3 = L1_3.striano_fastmenu
        L2_3 = L1_3
        L1_3 = L1_3.clearMenu
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 255
        L1_3(L2_3)
        L1_3 = 1
        L2_3 = #A0_3
        L3_3 = 1
        for L4_3 = L1_3, L2_3, L3_3 do
          L5_3 = exports
          L5_3 = L5_3.striano_fastmenu
          L6_3 = L5_3
          L5_3 = L5_3.addMenuItem
          L7_3 = "["
          L8_3 = L4_3
          L9_3 = "] "
          L10_3 = A0_3[L4_3]
          L10_3 = L10_3.label
          L7_3 = L7_3 .. L8_3 .. L9_3 .. L10_3
          function L8_3()
            local L0_4, L1_4, L2_4
            L0_4 = GestisciOutfitNegozio
            L1_4 = L4_3
            L2_4 = A0_3
            L0_4(L1_4, L2_4)
          end
          L9_3 = false
          L5_3(L6_3, L7_3, L8_3, L9_3)
        end
        L1_3 = exports
        L1_3 = L1_3.striano_fastmenu
        L2_3 = L1_3
        L1_3 = L1_3.openMenu
        L1_3(L2_3)
    end
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "No outfits in list."
      L1_3(L2_3, L3_3)
    end
  end
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
DressingFunc = L6_1
L6_1 = RegisterNetEvent
L7_1 = "apriBarbiere"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "apriBarbiere"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.secondarioattivo
  L0_2 = L0_2(L1_2)
  if nil == L0_2 then
    L0_2 = TriggerEvent
    L1_2 = "striano_skin:edit"
    L2_2 = {}
    L3_2 = "beard_1"
    L4_2 = "beard_2"
    L5_2 = "beard_3"
    L6_2 = "beard_4"
    L7_2 = "hair_1"
    L8_2 = "hair_color_1"
    L9_2 = "hair_color_2"
    L10_2 = "eyebrows_1"
    L11_2 = "eyebrows_2"
    L12_2 = "eyebrows_3"
    L13_2 = "eyebrows_4"
    L14_2 = "makeup_1"
    L15_2 = "makeup_2"
    L16_2 = "makeup_3"
    L17_2 = "makeup_4"
    L18_2 = "lipstick_1"
    L19_2 = "lipstick_2"
    L20_2 = "lipstick_3"
    L21_2 = "lipstick_4"
    L22_2 = "ears_1"
    L23_2 = "ears_2"
    L24_2 = "blush_1"
    L25_2 = "blush_2"
    L26_2 = "blush_3"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L2_2[6] = L8_2
    L2_2[7] = L9_2
    L2_2[8] = L10_2
    L2_2[9] = L11_2
    L2_2[10] = L12_2
    L2_2[11] = L13_2
    L2_2[12] = L14_2
    L2_2[13] = L15_2
    L2_2[14] = L16_2
    L2_2[15] = L17_2
    L2_2[16] = L18_2
    L2_2[17] = L19_2
    L2_2[18] = L20_2
    L2_2[19] = L21_2
    L2_2[20] = L22_2
    L2_2[21] = L23_2
    L2_2[22] = L24_2
    L2_2[23] = L25_2
    L2_2[24] = L26_2
    L0_2(L1_2, L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "First use /secno."
    L0_2(L1_2, L2_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "rasabarba"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = OpenInput
  L1_2 = "Beard long (1-10)."
  L0_2 = L0_2(L1_2)
  if "" == L0_2 then
    L1_2 = #L0_2
    if not (L1_2 > 1) then
      goto lbl_14
    end
  end
  L1_2 = TriggerEvent
  L2_2 = "skinchanger:getSkin"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    if nil ~= A0_3 then
      L1_3 = A0_3.beard_2
      L2_3 = L0_2
      if L1_3 > L2_3 then
        L1_3 = A0_3.beard_2
        if L1_3 >= 0 then
          L1_3 = A0_3.beard_2
          if L1_3 <= 10 then
            L1_3 = L0_2
            A0_3.beard_2 = L1_3
            L1_3 = exports
            L1_3 = L1_3.striano_core
            L2_3 = L1_3
            L1_3 = L1_3.resetdpcloth
            L1_3(L2_3)
            L1_3 = TriggerEvent
            L2_3 = "skinchanger:loadSkin"
            L3_3 = A0_3
            L1_3(L2_3, L3_3)
            L1_3 = ExecuteCommand
            L2_3 = "e lavafaccia"
            L1_3(L2_3)
        end
        else
          L1_3 = ExecuteCommand
          L2_3 = "e shrug4"
          L1_3(L2_3)
          L1_3 = exports
          L1_3 = L1_3.striano_combat
          L2_3 = L1_3
          L1_3 = L1_3.testo3d
          L3_3 = "No beard valid."
          L1_3(L2_3, L3_3)
        end
      end
    end
  end
  L1_2(L2_2, L3_2)
  goto lbl_22
  ::lbl_14::
  L1_2 = ExecuteCommand
  L2_2 = "e shrug4"
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.testo3d
  L3_2 = "No beard valid."
  L1_2(L2_2, L3_2)
  ::lbl_22::
end
L6_1(L7_1, L8_1)
L6_1 = false
L7_1 = false
L8_1 = RegisterCommand
L9_1 = "rasacapelli"
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = L6_1
  if L0_2 then
    return
  end
  L0_2 = L7_1
  if L0_2 then
    L0_2 = false
    L7_1 = L0_2
    L0_2 = true
    L6_1 = L0_2
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = TriggerServerCallback
    L1_2 = "esx_skin:getPlayerSkin"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if nil ~= A0_3 then
        L1_3 = exports
        L1_3 = L1_3.striano_core
        L2_3 = L1_3
        L1_3 = L1_3.resetdpcloth
        L1_3(L2_3)
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:loadSkin"
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
        L1_3 = ExecuteCommand
        L2_3 = "e rasoio"
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 2000
        L1_3(L2_3)
        L1_3 = ExecuteCommand
        L2_3 = "e rasoio"
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 2000
        L1_3(L2_3)
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:change"
        L3_3 = "hair_1"
        L4_3 = 1
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:change"
        L3_3 = "hair_2"
        L4_3 = 0
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = ExecuteCommand
        L2_3 = "e rasoio"
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 2000
        L1_3(L2_3)
        L1_3 = ExecuteCommand
        L2_3 = "e rasoio"
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 2000
        L1_3(L2_3)
        L1_3 = ExecuteCommand
        L2_3 = "shakeoff"
        L1_3(L2_3)
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:change"
        L3_3 = "hair_1"
        L4_3 = 0
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = TriggerEvent
        L2_3 = "skinchanger:change"
        L3_3 = "hair_2"
        L4_3 = 10
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = Wait
        L2_3 = 2000
        L1_3(L2_3)
        L1_3 = ExecuteCommand
        L2_3 = "shakeoff"
        L1_3(L2_3)
        L1_3 = false
        L7_1 = L1_3
        L1_3 = false
        L6_1 = L1_3
      else
        L1_3 = exports
        L1_3 = L1_3.striano_combat
        L2_3 = L1_3
        L1_3 = L1_3.submexError
        L3_3 = "Error on skin for this operation"
        L1_3(L2_3, L3_3)
      end
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexInfo
    L2_2 = "To confirm use the command again in 7 secondi."
    L0_2(L1_2, L2_2)
    L0_2 = true
    L7_1 = L0_2
    L0_2 = Wait
    L1_2 = 7000
    L0_2(L1_2)
    L0_2 = false
    L7_1 = L0_2
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterCommand
L9_1 = "maxbarba"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = TriggerEvent
  L2_2 = "skinchanger:change"
  L3_2 = "beard_2"
  L4_2 = 10
  L1_2(L2_2, L3_2, L4_2)
end
L8_1(L9_1, L10_1)
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = Wait
    L1_2 = 3600000
    L0_2(L1_2)
    L0_2 = TriggerEvent
    L1_2 = "skinchanger:getSkin"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if nil ~= A0_3 then
        L1_3 = A0_3.beard_2
        if L1_3 < 10 then
          L1_3 = GetEntityModel
          L2_3 = PlayerPedId
          L2_3, L3_3, L4_3 = L2_3()
          L1_3 = L1_3(L2_3, L3_3, L4_3)
          if 1885233650 == L1_3 then
            L1_3 = TriggerEvent
            L2_3 = "skinchanger:change"
            L3_3 = "beard_2"
            L4_3 = A0_3.beard_2
            L4_3 = L4_3 + 1
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = print
            L2_3 = "Beard growing: "
            L3_3 = A0_3.beard_2
            L3_3 = L3_3 + 1
            L2_3 = L2_3 .. L3_3
            L1_3(L2_3)
          end
        end
      end
    end
    L0_2(L1_2, L2_2)
  end
end
L8_1(L9_1)
