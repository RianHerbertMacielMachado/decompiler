local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = CQAdminCategories
if not L0_1 then
  L0_1 = {}
end
CQAdminCategories = L0_1
L0_1 = {}
L0_1.open = false
L1_1 = GetCurrentResourceName
L1_1 = L1_1()
L0_1.resource = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  if L0_2 then
    L0_2 = LocalPlayer
    L0_2 = L0_2.state
    L0_2 = L0_2.isAdmin
  end
  L0_2 = true == L0_2
  return L0_2
end
_players_cache = nil
_players_loading = false
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    return
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = CQAdminCategories
  L2_2[A0_2] = A1_2
end
RegisterAdminCategory = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = CQAdminCategories
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = type
      L8_2 = L6_2.build
      L7_2 = L7_2(L8_2)
      if "function" == L7_2 then
        L7_2 = pcall
        L8_2 = L6_2.build
        L7_2, L8_2 = L7_2(L8_2)
        if L7_2 then
          L9_2 = type
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if "table" == L9_2 then
            L8_2.__key = L5_2
            L9_2 = tonumber
            L10_2 = L6_2.order
            L9_2 = L9_2(L10_2)
            if not L9_2 then
              L9_2 = tonumber
              L10_2 = L8_2.order
              L9_2 = L9_2(L10_2)
              if not L9_2 then
                L9_2 = 9999
              end
            end
            L8_2.order = L9_2
            L9_2 = #L0_2
            L9_2 = L9_2 + 1
            L0_2[L9_2] = L8_2
        end
        else
          L9_2 = print
          L10_2 = "^1[STRIANO ADMIN]^0 build() failed for '%s'"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = L5_2
          L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
          L9_2(L10_2, L11_2, L12_2)
        end
      end
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = L0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.order
    if not L2_3 then
      L2_3 = 9999
    end
    L3_3 = A1_3.order
    if not L3_3 then
      L3_3 = 9999
    end
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  return L0_2
end
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "setCategories"
  L2_2 = L2_1
  L2_2 = L2_2()
  L1_2.data = L2_2
  L0_2(L1_2)
end
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.open
  if L0_2 then
    return
  end
  L0_2 = exports
  L0_2 = L0_2.striano_editor
  L1_2 = L0_2
  L0_2 = L0_2.isOpenQuest
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "striano_quest:close"
    L0_2(L1_2)
  end
  L0_1.open = true
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocusKeepInput
  L1_2 = false
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "striano_admin:sv:reqPlayersList"
  L0_2(L1_2)
  L0_2 = L3_1
  L0_2()
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "open"
  L0_2(L1_2)
end
CQAdmin_Open = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.open
  if not L0_2 then
    return
  end
  L0_1.open = false
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetNuiFocusKeepInput
  L1_2 = false
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "close"
  L0_2(L1_2)
end
CQAdmin_Close = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1.open
  if not L0_2 then
    return
  end
  L0_2 = L3_1
  L0_2()
end
CQAdmin_Refresh = L4_1
L4_1 = RegisterNetEvent
L5_1 = "striano_admin:cl:open"
L6_1 = CQAdmin_Open
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "striano_admin:cl:close"
L6_1 = CQAdmin_Close
L4_1(L5_1, L6_1)
L4_1 = RegisterCommand
L5_1 = "admin"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.gettutorial
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = closemenu
    L0_2()
    L0_2 = ActivateFrontendMenu
    L1_2 = GetHashKey
    L2_2 = "FE_MENU_VERSION_LANDING_MENU"
    L1_2 = L1_2(L2_2)
    L2_2 = 0
    L3_2 = -1
    L0_2(L1_2, L2_2, L3_2)
  else
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = IsEntityPlayingAnim
    L2_2 = L0_2
    L3_2 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
    L4_2 = "idle_a"
    L5_2 = 3
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if not L1_2 then
      L1_2 = exports
      L1_2 = L1_2.striano_inventory
      L2_2 = L1_2
      L1_2 = L1_2.isopen
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = exports
        L1_2 = L1_2.striano_core
        L2_2 = L1_2
        L1_2 = L1_2.inCall
        L1_2 = L1_2(L2_2)
        if 0 == L1_2 then
          L1_2 = GetPauseMenuState
          L1_2 = L1_2()
          if 0 == L1_2 then
            L1_2 = IsNuiFocused
            L1_2 = L1_2()
            if false == L1_2 then
              L1_2 = exports
              L1_2 = L1_2.skinchanger
              L2_2 = L1_2
              L1_2 = L1_2.menuaperto
              L1_2 = L1_2(L2_2)
              if not L1_2 then
                L1_2 = exports
                L1_2 = L1_2.striano_editor
                L2_2 = L1_2
                L1_2 = L1_2.inghost
                L1_2 = L1_2(L2_2)
                if nil == L1_2 then
                  L1_2 = exports
                  L1_2 = L1_2.striano_ridehorse
                  L2_2 = L1_2
                  L1_2 = L1_2.inShopAnimals
                  L1_2 = L1_2(L2_2)
                  if not L1_2 then
                    L1_2 = IsEntityVisible
                    L2_2 = L0_2
                    L1_2 = L1_2(L2_2)
                    if L1_2 then
                      L1_2 = L0_1.open
                      if L1_2 then
                        L1_2 = CQAdmin_Close
                        L1_2()
                      else
                        L1_2 = CQAdmin_Open
                        L1_2()
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L4_1(L5_1, L6_1)
L4_1 = _items_cache
_items_cache = L4_1
L4_1 = _items_loading
if not L4_1 then
  L4_1 = false
end
_items_loading = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = _items_cache
  if nil == L0_2 then
    L0_2 = _items_loading
    if not L0_2 then
      _items_loading = true
      L0_2 = TriggerServerEvent
      L1_2 = "striano_admin:sv:reqItemsList"
      L0_2(L1_2)
    end
  end
end
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2
  while true do
    L0_2 = Wait
    L1_2 = 600
    L0_2(L1_2)
    L0_2 = L1_1
    L0_2 = L0_2()
    if L0_2 then
      L0_2 = L4_1
      L0_2()
      return
    end
  end
end
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "onResourceStop"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.resource
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L0_1.open
  if L1_2 then
    L0_1.open = false
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetNuiFocusKeepInput
    L2_2 = false
    L1_2(L2_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "close"
    L1_2(L2_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "striano_admin:cl:setItemsList"
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  _items_cache = L1_2
  _items_loading = false
  L1_2 = L0_1.open
  if L1_2 then
    L1_2 = CQAdmin_Refresh
    L1_2()
  end
end
L5_1(L6_1, L7_1)
L5_1 = nil
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = A0_2
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetNuiFocusKeepInput
  L2_2 = false
  L1_2(L2_2)
end
function L7_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = L0_1.open
    if L0_2 then
      L0_2 = L6_1
      L1_2 = true
      L0_2(L1_2)
  end
  else
    L0_2 = L6_1
    L1_2 = false
    L0_2(L1_2)
  end
end
L8_1 = RegisterNUICallback
L9_1 = "striano-input:submit"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L5_1
  if L2_2 then
    L2_2 = tostring
    if A0_2 then
      L3_2 = A0_2.value
      if L3_2 then
        goto lbl_11
      end
    end
    L3_2 = ""
    ::lbl_11::
    L2_2 = L2_2(L3_2)
    L5_1.value = L2_2
    L5_1.done = true
  end
  L2_2 = L7_1
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNUICallback
L9_1 = "striano-input:cancel"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L5_1
  if L2_2 then
    L5_1.value = ""
    L5_1.done = true
  end
  L2_2 = L7_1
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = exports
L9_1 = "OpenInput"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L5_1
  if L3_2 then
    L3_2 = print
    L4_2 = "^1[striano_admin]^7 OpenInput blocked: _inputPending exist."
    L3_2(L4_2)
    L3_2 = ""
    return L3_2
  end
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = {}
  L3_2.done = false
  L3_2.value = ""
  L5_1 = L3_2
  L3_2 = L6_1
  L4_2 = true
  L3_2(L4_2)
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "input:open"
  L5_2 = tostring
  L6_2 = A0_2 or L6_2
  if not A0_2 then
    L6_2 = "Insert value"
  end
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L5_2 = tostring
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  L4_2.value = L5_2
  L5_2 = tostring
  L6_2 = A2_2.placeholder
  if not L6_2 then
    L6_2 = ""
  end
  L5_2 = L5_2(L6_2)
  L4_2.placeholder = L5_2
  L5_2 = tonumber
  L6_2 = A2_2.maxLen
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 64
  end
  L4_2.maxLen = L5_2
  L5_2 = tostring
  L6_2 = A2_2.pattern
  if not L6_2 then
    L6_2 = ".*"
  end
  L5_2 = L5_2(L6_2)
  L4_2.pattern = L5_2
  L5_2 = A2_2.isNumber
  L5_2 = true == L5_2
  L4_2.isNumber = L5_2
  L3_2(L4_2)
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L3_2 = L3_2 + 30000
  while true do
    L4_2 = L5_1
    if not L4_2 then
      break
    end
    L4_2 = L5_1.done
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = GetGameTimer
    L4_2 = L4_2()
    if L3_2 < L4_2 then
      L5_1.done = true
      L5_1.value = ""
      break
    end
  end
  L4_2 = L5_1
  if L4_2 then
    L4_2 = L5_1.value
    if L4_2 then
      goto lbl_94
    end
  end
  L4_2 = ""
  ::lbl_94::
  L5_2 = nil
  L5_1 = L5_2
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "input:close"
  L5_2(L6_2)
  L5_2 = L0_1.open
  if not L5_2 then
    L5_2 = SetNuiFocus
    L6_2 = false
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = SetNuiFocusKeepInput
    L6_2 = false
    L5_2(L6_2)
  end
  return L4_2
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = LocalPlayer
  L2_2 = L2_2.state
  if L2_2 then
    L2_2 = LocalPlayer
    L2_2 = L2_2.state
    L2_2 = L2_2.isAdmin
  end
  L2_2 = true == L2_2
  return L2_2
end
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    A0_2 = "Input"
  end
  if not A1_2 then
    A1_2 = ""
  end
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = GetResourceState
  L4_2 = "striano_core"
  L3_2 = L3_2(L4_2)
  if "started" == L3_2 then
    L3_2 = pcall
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = exports
      L0_3 = L0_3.striano_core
      L1_3 = L0_3
      L0_3 = L0_3.OpenInput
      L2_3 = A0_2
      L3_3 = A1_2
      L4_3 = A2_2
      return L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    L3_2, L4_2 = L3_2(L4_2)
    if L3_2 and nil ~= L4_2 then
      return L4_2
    end
  end
  L3_2 = AddTextEntry
  L4_2 = "STRIANO_INPUT_SAFE"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = DisplayOnscreenKeyboard
  L4_2 = 1
  L5_2 = "STRIANO_INPUT_SAFE"
  L6_2 = ""
  L7_2 = A1_2
  L8_2 = ""
  L9_2 = ""
  L10_2 = ""
  L11_2 = A2_2.maxLength
  if not L11_2 then
    L11_2 = 40
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  while true do
    L3_2 = UpdateOnscreenKeyboard
    L3_2 = L3_2()
    if 0 ~= L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = UpdateOnscreenKeyboard
  L3_2 = L3_2()
  if 1 == L3_2 then
    L3_2 = GetOnscreenKeyboardResult
    return L3_2()
  end
  L3_2 = nil
  return L3_2
end
OpenInput = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = TriggerEvent
  L1_2 = "striano_admin:cl:close"
  L0_2(L1_2)
end
closemenu = L9_1
L9_1 = {}
CQAdminCategories = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    return
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = CQAdminCategories
  L2_2[A0_2] = A1_2
end
RegisterAdminCategory = L9_1
L9_1 = RegisterNetEvent
L10_1 = "striano_admin:cl:setPlayersList"
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  _players_cache = L1_2
  _players_loading = false
end
L9_1(L10_1, L11_1)
function L9_1()
  local L0_2, L1_2
  L0_2 = _players_cache
  if nil == L0_2 then
    L0_2 = _players_loading
    if not L0_2 then
      _players_loading = true
      L0_2 = TriggerServerEvent
      L1_2 = "striano_admin:sv:reqPlayersList"
      L0_2(L1_2)
    end
  end
end
L10_1 = RegisterNUICallback
L11_1 = "striano_admin:cb:refreshPlayers"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  _players_loading = true
  L2_2 = TriggerServerEvent
  L3_2 = "striano_admin:sv:reqPlayersList"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = ExpandedPlayer
if not L10_1 then
  L10_1 = 0
end
ExpandedPlayer = L10_1
L10_1 = RegisterNUICallback
L11_1 = "striano_admin:cb:togglePlayerExpand"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = ExpandedPlayer
  if L3_2 == L2_2 then
    ExpandedPlayer = 0
  else
    ExpandedPlayer = L2_2
  end
  L3_2 = L0_1.open
  if L3_2 then
    L3_2 = CQAdmin_Refresh
    L3_2()
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L5_2 = ExpandedPlayer
  L4_2.expanded = L5_2
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterAdminCategory
L11_1 = "player"
L12_1 = {}
L12_1.order = 1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = _players_cache
  if nil == L0_2 then
    L0_2 = _players_loading
    if not L0_2 then
      _players_loading = true
      L0_2 = TriggerServerEvent
      L1_2 = "striano_admin:sv:reqPlayersList"
      L0_2(L1_2)
    end
  end
  L0_2 = {}
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L3_3 = "%s %d"
    L4_3 = L3_3
    L3_3 = L3_3.format
    L5_3 = A1_3
    L6_3 = A0_3
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = L0_2
    L4_3 = #L4_3
    L5_3 = L4_3 + 1
    L4_3 = L0_2
    L6_3 = {}
    L7_3 = "%s [ID: %d]%s"
    L8_3 = L7_3
    L7_3 = L7_3.format
    L9_3 = A1_3
    L10_3 = A0_3
    if A2_3 then
      L11_3 = " (You)"
      if L11_3 then
        goto lbl_23
      end
    end
    L11_3 = ""
    ::lbl_23::
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
    L6_3.label = L7_3
    L6_3.sub = L3_3
    L6_3.type = "button"
    L7_3 = ExpandedPlayer
    if L7_3 == A0_3 then
      L7_3 = "Close"
      if L7_3 then
        goto lbl_34
      end
    end
    L7_3 = "Open"
    ::lbl_34::
    L6_3.buttonLabel = L7_3
    L6_3.callback = "striano_admin:cb:togglePlayerExpand"
    L7_3 = {}
    L7_3.id = A0_3
    L6_3.payload = L7_3
    L6_3.rowClass = "player-header-row"
    L6_3.rowClickOnly = true
    L4_3[L5_3] = L6_3
    L4_3 = ExpandedPlayer
    if L4_3 ~= A0_3 then
      return
    end
    function L4_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4
      L2_4 = L0_2
      L2_4 = #L2_4
      L3_4 = L2_4 + 1
      L2_4 = L0_2
      L4_4 = {}
      L4_4.label = A0_4
      L5_4 = L3_3
      L4_4.sub = L5_4
      L4_4.type = "button"
      L4_4.callback = A1_4
      L5_4 = {}
      L6_4 = A0_3
      L5_4.id = L6_4
      L4_4.payload = L5_4
      L4_4.rowClass = "player-action-row"
      L4_4.rowClickOnly = true
      L2_4[L3_4] = L4_4
    end
    L5_3 = L4_3
    L6_3 = "Set Ped"
    L7_3 = "striano_admin:cb:pl_setped"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Reset Ped"
    L7_3 = "striano_admin:cb:pl_resetped"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Heal"
    L7_3 = "striano_admin:cb:pl_heal"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Revive"
    L7_3 = "striano_admin:cb:pl_revive"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Set Max HP"
    L7_3 = "striano_admin:cb:pl_maxHP"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Set Max Mana"
    L7_3 = "striano_admin:cb:pl_maxMana"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Clean"
    L7_3 = "striano_admin:cb:pl_clean"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Go to"
    L7_3 = "striano_admin:cb:pl_goto"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Bring"
    L7_3 = "striano_admin:cb:pl_bring"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Return"
    L7_3 = "striano_admin:cb:pl_return"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Give item"
    L7_3 = "striano_admin:cb:pl_giveItem"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Give key"
    L7_3 = "striano_admin:cb:pl_givekey"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Give temp key"
    L7_3 = "striano_admin:cb:pl_givekeyTemp"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Destroy key"
    L7_3 = "striano_admin:cb:pl_delkey"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Assign vehicle"
    L7_3 = "striano_admin:cb:assignVehByName"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Clear Inventory"
    L7_3 = "striano_admin:cb:pl_clearInv"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Clear Slot Fire Weapons"
    L7_3 = "striano_admin:cb:pl_clearWeaponSlot"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Manage Spells"
    L7_3 = "striano_admin:cb:pl_manageSpells"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Clear Combat Sword"
    L7_3 = "striano_admin:cb:pl_clearCombatSword"
    L5_3(L6_3, L7_3)
    L5_3 = L4_3
    L6_3 = "Open Keys Menu"
    L7_3 = "striano_admin:cb:openKeysMenu"
    L5_3(L6_3, L7_3)
  end
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = GetPlayerName
  L4_2 = PlayerId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if not L3_2 then
    L3_2 = "Me"
  end
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L2_2 = _players_cache
  if nil ~= L2_2 then
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = ipairs
    L4_2 = _players_cache
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = tonumber
      L10_2 = L8_2.id
      L9_2 = L9_2(L10_2)
      L10_2 = tostring
      L11_2 = L8_2.name
      if not L11_2 then
        L11_2 = "ID %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = L9_2
        L11_2 = L11_2(L12_2, L13_2)
      end
      L10_2 = L10_2(L11_2)
      if L9_2 and L9_2 ~= L2_2 then
        L11_2 = L1_2
        L12_2 = L9_2
        L13_2 = L10_2
        L14_2 = false
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
  L2_2 = {}
  L2_2.id = "player_mgmt"
  L2_2.label = "PLAYERS"
  L2_2.sub = ""
  L2_2.enabled = true
  L3_2 = {}
  L4_2 = {}
  L4_2.id = "player_actions"
  L4_2.type = "group"
  L4_2.label = "Player actions"
  L5_2 = {}
  L6_2 = {}
  L6_2.label = "Heal"
  L6_2.type = "button"
  L6_2.buttonLabel = "Heal"
  L6_2.callback = "striano_admin:cb:healSelf"
  L7_2 = {}
  L7_2.label = "Use bandage"
  L7_2.type = "button"
  L7_2.buttonLabel = "Bandage"
  L7_2.callback = "striano_admin:cb:healRP"
  L8_2 = {}
  L8_2.label = "Revive"
  L8_2.type = "button"
  L8_2.buttonLabel = "Revive"
  L8_2.callback = "striano_admin:cb:revive"
  L9_2 = {}
  L9_2.label = "Clean Blood/Dirty"
  L9_2.type = "button"
  L9_2.buttonLabel = "Clean"
  L9_2.callback = "striano_admin:cb:cleanPlayer"
  L10_2 = {}
  L10_2.label = "Give item"
  L10_2.type = "button"
  L10_2.buttonLabel = "Give"
  L10_2.callback = "striano_admin:cb:getItemInput"
  L11_2 = {}
  L11_2.label = "Clear inventory"
  L11_2.type = "button"
  L11_2.buttonLabel = "Clear"
  L11_2.callback = "clearInv"
  L12_2 = {}
  L12_2.label = "Change Ped Model"
  L12_2.type = "button"
  L12_2.buttonLabel = "Change"
  L12_2.callback = "applyPed"
  L13_2 = {}
  L13_2.label = "Reset Ped Model"
  L13_2.type = "button"
  L13_2.buttonLabel = "Reset"
  L13_2.callback = "resetPed"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L5_2[7] = L12_2
  L5_2[8] = L13_2
  L4_2.children = L5_2
  L5_2 = {}
  L5_2.id = "player_list"
  L5_2.type = "group"
  L5_2.label = "Players online"
  L5_2.children = L0_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L2_2.groups = L3_2
  return L2_2
end
L12_1.build = L13_1
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "striano_admin:cb:giveItemSelected"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.payload
  L1_2 = L1_2.id
  L2_2 = A0_2.payload
  L2_2 = L2_2.item
  if not L2_2 or "" == L2_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.submex
    L5_2 = "Item not selected"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = OpenInput
  L4_2 = "Insert amount"
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if nil == L4_2 then
    return
  end
  L5_2 = TriggerEvent
  L6_2 = "inv3d:serverGiveItem"
  L7_2 = L1_2
  L8_2 = "player"
  L9_2 = L2_2
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "goToSelected"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if nil == L2_2 or 0 == L2_2 then
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = ExecuteCommand
  L4_2 = "tpp2 "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = closemenu
  L3_2()
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "putBackPlayer"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if nil == L2_2 or 0 == L2_2 then
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = ExecuteCommand
  L4_2 = "getback "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = closemenu
  L3_2()
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "getPlayer"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if nil == L2_2 or 0 == L2_2 then
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = ExecuteCommand
  L4_2 = "tpp3 "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = closemenu
  L3_2()
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "esx:clearPedZona"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "esx:clearPedZona"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1.0
  if nil ~= A0_2 then
    L2_2 = tonumber
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2 + 0.0
    L2_2 = print
    L3_2 = "Delped range: "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "number" ~= L2_2 or L1_2 < 1.0 then
    L1_2 = 1.0
    L2_2 = print
    L3_2 = "Delped reset 1.0: "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
  end
  L2_2 = GetGamePool
  L3_2 = "CPed"
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = IsPedAPlayer
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = PlayerPedId
        L9_2 = L9_2()
        if L8_2 ~= L9_2 then
          L9_2 = GetEntityCoords
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          L10_2 = GetEntityCoords
          L11_2 = PlayerPedId
          L11_2, L12_2 = L11_2()
          L10_2 = L10_2(L11_2, L12_2)
          L9_2 = L9_2 - L10_2
          L9_2 = #L9_2
          if L1_2 > L9_2 then
            L9_2 = 0
            while true do
              L10_2 = NetworkHasControlOfEntity
              L11_2 = L8_2
              L10_2 = L10_2(L11_2)
              if not (not L10_2 and L9_2 < 100) then
                break
              end
              L9_2 = L9_2 + 1
              L10_2 = NetworkRequestControlOfEntity
              L11_2 = L8_2
              L10_2(L11_2)
              L10_2 = Wait
              L11_2 = 0
              L10_2(L11_2)
            end
            L10_2 = NetworkRequestControlOfEntity
            L11_2 = L8_2
            L10_2(L11_2)
            L10_2 = SetEntityAsMissionEntity
            L11_2 = L8_2
            L12_2 = true
            L10_2(L11_2, L12_2)
            L10_2 = DeletePed
            L11_2 = L8_2
            L10_2(L11_2)
          end
        end
      end
    end
  end
  L3_2 = ClearAreaOfPeds
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L1_2
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "striano_admin:cb:healRP"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if nil == L2_2 or 0 == L2_2 then
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = TriggerServerEvent
  L4_2 = "esx_ambulancejjj:heal"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "striano_admin:cb:healSelf"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if nil == L2_2 or 0 == L2_2 then
    L3_2 = GetPlayerServerId
    L4_2 = PlayerId
    L4_2, L5_2 = L4_2()
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = TriggerServerEvent
  L4_2 = "esx_ambulancejjj:healAdmin"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "getCTP"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ExecuteCommand
  L3_2 = "ctp"
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.testo3d
  L4_2 = "Coords get."
  L2_2(L3_2, L4_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = false
L11_1 = RegisterNUICallback
L12_1 = "hideHUD"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L10_1
  L2_2 = not L2_2
  L10_1 = L2_2
  L2_2 = L10_1
  if L2_2 then
    L2_2 = ExecuteCommand
    L3_2 = "hudoff"
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "hudoff2"
    L2_2(L3_2)
  else
    L2_2 = ExecuteCommand
    L3_2 = "hudon"
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "hudon2"
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "editVeh"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerEvent
  L3_2 = "Mx :: OpenCustomCar"
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "getVehKey"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetVehiclePedIsIn
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if 0 == L2_2 then
    L3_2 = exports
    L3_2 = L3_2.striano_combat
    L4_2 = L3_2
    L3_2 = L3_2.testo3d
    L5_2 = "Not in veh."
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = GetVehicleNumberPlateText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = print
  L5_2 = "GIVE KEY PLATE RAW:"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = TriggerServerEvent
  L5_2 = "striano_keys:sv:adminGiveKey"
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2 = L7_2()
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = closemenu
  L4_2()
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "getCTPa"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ExecuteCommand
  L3_2 = "ctpa"
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.testo3d
  L4_2 = "Coords/head get."
  L2_2(L3_2, L4_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "clearInv"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = OpenInput
  L3_2 = "Clear inventory? type 'yes'"
  L2_2 = L2_2(L3_2)
  if "yes" == L2_2 or "YES" == L2_2 then
    L3_2 = TriggerServerEvent
    L4_2 = "inv3d:clearInventory"
    L3_2(L4_2)
    L3_2 = closemenu
    L3_2()
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = CQ
if L11_1 then
  L11_1 = CQ
  L11_1 = L11_1.Controls
  if L11_1 then
    goto lbl_174
  end
end
L11_1 = {}
::lbl_174::
L12_1 = CQ
if L12_1 then
  L12_1 = CQ
  L12_1 = L12_1.Util
  if L12_1 then
    goto lbl_183
  end
end
L12_1 = {}
::lbl_183::
L13_1 = CQ
if L13_1 then
  L13_1 = CQ
  L13_1 = L13_1.Util
  if L13_1 then
    L13_1 = CQ
    L13_1 = L13_1.Util
    L13_1 = L13_1.getCamDir
    if L13_1 then
      goto lbl_196
    end
  end
end
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetGameplayCamRot
  L1_2 = 2
  L0_2 = L0_2(L1_2)
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = L0_2.z
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = L0_2.x
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L5_2 = L5_2 * L3_2
  L6_2 = math
  L6_2 = L6_2.cos
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 * L3_2
  L7_2 = math
  L7_2 = L7_2.sin
  L8_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
::lbl_196::
L14_1 = RegisterNUICallback
L15_1 = "striano_admin:cb:revive"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerEvent
  L3_2 = "esx_ambulancejjj:revive"
  L2_2(L3_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "striano_admin:cb:noclip"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = false
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = A0_2.value
    if nil ~= L3_2 then
      L3_2 = A0_2.value
      if L3_2 then
        L3_2 = true
        if L3_2 then
          goto lbl_17
          L2_2 = L3_2 or L2_2
        end
      end
      L2_2 = false
    end
  end
  ::lbl_17::
  L3_2 = ExecuteCommand
  L4_2 = "np"
  L3_2(L4_2)
  L3_2 = TriggerEvent
  L4_2 = "striano_admin:cl:close"
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "striano_admin:cb:superJump"
function L16_1()
  local L0_2, L1_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.togglesuperjump
  L0_2(L1_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "striano_admin:cb:cleanPlayer"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = closemenu
  L2_2()
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = ClearPedBloodDamage
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedWetness
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ClearPedEnvDirt
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = ResetPedVisibleDamage
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = TriggerEvent
  L4_2 = "xnTattoos:resetferite"
  L3_2(L4_2)
  L3_2 = TriggerEvent
  L4_2 = "xnTattoos:resetsporco"
  L3_2(L4_2)
  L3_2 = ExecuteCommand
  L4_2 = "shakeoff"
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "enterNearest"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closemenu
  L2_2()
  L2_2 = SaliVeicoloVicino
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "menuSound"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closemenu
  L2_2()
  L2_2 = ExecuteCommand
  L3_2 = "am"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  player = L0_2
  L0_2 = IsPedInAnyVehicle
  L1_2 = player
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = print
    L1_2 = "Sei gia in un veicolo!"
    L0_2(L1_2)
    return
  end
  L0_2 = GetEntityCoords
  L1_2 = player
  L0_2 = L0_2(L1_2)
  L1_2 = 5.0
  L2_2 = GetClosestVehicle
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L6_2 = L1_2
  L7_2 = 0
  L8_2 = 70
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  veh = L2_2
  L2_2 = veh
  if nil ~= L2_2 then
    L2_2 = veh
    if 0 ~= L2_2 then
      goto lbl_41
    end
  end
  L2_2 = GetClosestVehicle
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L6_2 = L1_2
  L7_2 = 0
  L8_2 = 12294
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  veh = L2_2
  ::lbl_41::
  L2_2 = veh
  if nil ~= L2_2 then
    L2_2 = veh
    if 0 ~= L2_2 then
      goto lbl_50
    end
  end
  L2_2 = VehicleInFront
  L2_2 = L2_2()
  veh = L2_2
  ::lbl_50::
  L2_2 = veh
  if nil ~= L2_2 then
    L2_2 = veh
    if 0 ~= L2_2 then
      goto lbl_80
    end
  end
  L2_2 = GetEntityCoords
  L3_2 = player
  L2_2 = L2_2(L3_2)
  L3_2 = GetOffsetFromEntityInWorldCoords
  L4_2 = player
  L5_2 = 0.0
  L6_2 = L1_2
  L7_2 = 0.0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = CastRayPointToPoint
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L8_2 = L3_2.x
  L9_2 = L3_2.y
  L10_2 = L3_2.z
  L11_2 = 30
  L12_2 = player
  L13_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = GetRaycastResult
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  veh = L9_2
  ::lbl_80::
  L2_2 = veh
  if 0 ~= L2_2 then
    L2_2 = veh
    if nil ~= L2_2 then
      L2_2 = DoesEntityExist
      L3_2 = veh
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = IsEntityOnScreen
        L3_2 = veh
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = exports
          L2_2 = L2_2.striano_core
          L3_2 = L2_2
          L2_2 = L2_2.inNoClip
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = exports
            L2_2 = L2_2.striano_core
            L3_2 = L2_2
            L2_2 = L2_2.stopNoClip
            L2_2(L3_2)
            L2_2 = print
            L3_2 = "Esco da NoClip!"
            L2_2(L3_2)
            L2_2 = Wait
            L3_2 = 125
            L2_2(L3_2)
          end
          L2_2 = NetworkRequestControlOfEntity
          L3_2 = veh
          L2_2(L3_2)
          L2_2 = Wait
          L3_2 = 100
          L2_2(L3_2)
          L2_2 = SetVehicleDoorsLocked
          L3_2 = veh
          L4_2 = 1
          L2_2(L3_2, L4_2)
          L2_2 = exports
          L2_2 = L2_2.striano_core
          L3_2 = L2_2
          L2_2 = L2_2.getsubmisID
          L2_2 = L2_2(L3_2)
          if 0 == L2_2 then
            L2_2 = TaskWarpPedIntoVehicle
            L3_2 = player
            L4_2 = veh
            L5_2 = -1
            L2_2(L3_2, L4_2, L5_2)
          end
        end
      end
    end
  end
end
SaliVeicoloVicino = L14_1
L14_1 = exports
L15_1 = "SaliVeicoloVicino"
function L16_1()
  local L0_2, L1_2
  L0_2 = SaliVeicoloVicino
  L0_2()
end
L14_1(L15_1, L16_1)
L14_1 = RegisterAdminCategory
L15_1 = "pausemenu"
L16_1 = {}
L16_1.order = 0
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = {}
  L0_2.id = "misc_settings"
  L0_2.label = "MANAGERS"
  L0_2.sub = ""
  L0_2.enabled = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = "display_options"
  L2_2.type = "group"
  L2_2.label = "Game Manager"
  L3_2 = {}
  L4_2 = {}
  L4_2.label = "Game Settings"
  L4_2.type = "button"
  L4_2.buttonLabel = "GTA 5 Settings"
  L4_2.callback = "openSettings"
  L5_2 = {}
  L5_2.label = "Open 3D Map"
  L5_2.type = "button"
  L5_2.buttonLabel = "Open"
  L5_2.callback = "nuicb_cmd"
  L6_2 = {}
  L6_2.cmd = "aprimappa"
  L5_2.payload = L6_2
  L6_2 = {}
  L6_2.label = "Vehicles Manager"
  L6_2.type = "button"
  L6_2.buttonLabel = "Manage"
  L6_2.callback = "nuicb_cmd"
  L7_2 = {}
  L7_2.cmd = "mv"
  L6_2.payload = L7_2
  L7_2 = {}
  L7_2.label = "Rapids Manager"
  L7_2.type = "button"
  L7_2.buttonLabel = "Manage"
  L7_2.callback = "nuicb_cmd"
  L8_2 = {}
  L8_2.cmd = "rapid"
  L7_2.payload = L8_2
  L8_2 = {}
  L8_2.label = "Quest Menu (WIP)"
  L8_2.type = "button"
  L8_2.buttonLabel = "Manage"
  L8_2.callback = "nuicb_cmd"
  L9_2 = {}
  L9_2.cmd = "striano_quest:respond"
  L8_2.payload = L9_2
  L9_2 = {}
  L9_2.label = "Manage Clothes"
  L9_2.type = "button"
  L9_2.buttonLabel = "Manage"
  L9_2.callback = "nuicb_cmd"
  L10_2 = {}
  L10_2.cmd = "vestiti"
  L9_2.payload = L10_2
  L10_2 = {}
  L10_2.label = "Manage Outfits"
  L10_2.type = "button"
  L10_2.buttonLabel = "Manage"
  L10_2.callback = "editVestiti"
  L11_2 = {}
  L11_2.label = "Spell Book"
  L11_2.type = "button"
  L11_2.buttonLabel = "Spells"
  L11_2.callback = "nuicb_cmd"
  L12_2 = {}
  L12_2.cmd = "spellBook"
  L11_2.payload = L12_2
  L12_2 = {}
  L12_2.label = "Boats Manager"
  L12_2.type = "button"
  L12_2.buttonLabel = "Boats"
  L12_2.callback = "nuicb_cmd"
  L13_2 = {}
  L13_2.cmd = "myBoats"
  L12_2.payload = L13_2
  L13_2 = {}
  L13_2.label = "Toggle HUD"
  L13_2.type = "button"
  L13_2.buttonLabel = "Toggle"
  L13_2.callback = "hideHUD"
  L14_2 = {}
  L14_2.label = "Keys list"
  L14_2.type = "button"
  L14_2.callback = "nuicb_cmd"
  L15_2 = {}
  L15_2.cmd = "keys"
  L14_2.payload = L15_2
  L15_2 = {}
  L15_2.label = "Get vehicle key"
  L15_2.type = "button"
  L15_2.callback = "getVehKey"
  L16_2 = {}
  L16_2.label = "Spawnables"
  L16_2.type = "button"
  L16_2.buttonLabel = "Manage"
  L16_2.callback = "nuicb_cmd"
  L17_2 = {}
  L17_2.cmd = "spawnables"
  L16_2.payload = L17_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L3_2[13] = L16_2
  L2_2.children = L3_2
  L1_2[1] = L2_2
  L0_2.groups = L1_2
  return L0_2
end
L16_1.build = L17_1
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "editVestiti"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closemenu
  L2_2()
  L2_2 = TriggerEvent
  L3_2 = "editVestiti"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterAdminCategory
L15_1 = "misc"
L16_1 = {}
L16_1.order = 2
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L0_2.id = "misc_settings"
  L0_2.label = "TOOLS"
  L0_2.sub = ""
  L0_2.enabled = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = "display_options"
  L2_2.type = "group"
  L2_2.label = "Misc"
  L3_2 = {}
  L4_2 = {}
  L4_2.label = "No-clip"
  L4_2.type = "button"
  L4_2.buttonLabel = "NC"
  L4_2.callback = "striano_admin:cb:noclip"
  L5_2 = {}
  L5_2.label = "Edit Character"
  L5_2.type = "button"
  L5_2.buttonLabel = "Edit"
  L5_2.callback = "editSkin"
  L6_2 = {}
  L6_2.label = "Tattoo Editor"
  L6_2.type = "button"
  L6_2.buttonLabel = "Tattoo"
  L6_2.callback = "editTattoo"
  L7_2 = {}
  L7_2.label = "getCoords"
  L7_2.type = "button"
  L7_2.buttonLabel = "CTP"
  L7_2.callback = "getCTP"
  L8_2 = {}
  L8_2.label = "getCoords + head"
  L8_2.type = "button"
  L8_2.buttonLabel = "CTPa"
  L8_2.callback = "getCTPa"
  L9_2 = {}
  L9_2.label = "Super Jump"
  L9_2.type = "button"
  L9_2.buttonLabel = "Toggle"
  L9_2.callback = "striano_admin:cb:superJump"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L2_2.children = L3_2
  L3_2 = {}
  L3_2.id = "vision_modes"
  L3_2.type = "group"
  L3_2.label = "Vision modes"
  L4_2 = {}
  L5_2 = {}
  L5_2.label = "Night vision"
  L5_2.type = "toggle"
  L5_2.key = "night_vision_t"
  L5_2.buttonLabel = "Toggle"
  L5_2.callback = "striano_admin:cb:nightVision"
  L5_2.default = false
  L6_2 = {}
  L6_2.label = "Thermal vision"
  L6_2.type = "toggle"
  L6_2.key = "thermal_vision_t"
  L6_2.buttonLabel = "Toggle"
  L6_2.callback = "striano_admin:cb:thermalVision"
  L6_2.default = false
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L3_2.children = L4_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2.groups = L1_2
  return L0_2
end
L16_1.build = L17_1
L14_1(L15_1, L16_1)
L14_1 = false
L15_1 = false
L16_1 = RegisterNUICallback
L17_1 = "openSettings"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = closemenu
  L2_2()
  L2_2 = ActivateFrontendMenu
  L3_2 = GetHashKey
  L4_2 = "FE_MENU_VERSION_LANDING_MENU"
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = -1
  L2_2(L3_2, L4_2, L5_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "FixVehicle"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "fixVeh"
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:nightVision"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L15_1
  if not L2_2 then
    if A0_2 then
      L2_2 = A0_2.value
      if L2_2 then
        L2_2 = true
        if L2_2 then
          goto lbl_13
        end
      end
    end
    L2_2 = false
    ::lbl_13::
    L3_2 = SetNightvision
    L4_2 = L2_2
    L3_2(L4_2)
    L14_1 = L2_2
  end
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:thermalVision"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L14_1
  if not L2_2 then
    if A0_2 then
      L2_2 = A0_2.value
      if L2_2 then
        L2_2 = true
        if L2_2 then
          goto lbl_13
        end
      end
    end
    L2_2 = false
    ::lbl_13::
    L3_2 = SetSeethrough
    L4_2 = L2_2
    L3_2(L4_2)
    L15_1 = L2_2
  end
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:clearArea"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L12_1
  if L2_2 then
    L2_2 = L12_1.ped
    if L2_2 then
      L2_2 = L12_1.ped
      L2_2 = L2_2()
      if L2_2 then
        goto lbl_13
      end
    end
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  ::lbl_13::
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = OpenInput
  L5_2 = "Insert range"
  L4_2 = L4_2(L5_2)
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = ClearAreaOfVehicles
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L8_2 = L3_2.z
    L9_2 = L4_2
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = ClearAreaOfPeds
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L8_2 = L3_2.z
    L9_2 = L4_2
    L10_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = ClearAreaOfObjects
    L6_2 = L3_2.x
    L7_2 = L3_2.y
    L8_2 = L3_2.z
    L9_2 = L4_2
    L10_2 = 0
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = TriggerEvent
    L6_2 = "esx:clearPedZona"
    L5_2(L6_2)
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.submex
    L7_2 = "Area cleared ("
    L8_2 = L4_2
    L9_2 = "m)"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterAdminCategory
L17_1 = "appearance"
L18_1 = {}
L18_1.order = 3
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = {}
  L0_2.id = "appearance_mgmt"
  L0_2.label = "SPAWNER"
  L0_2.sub = ""
  L0_2.enabled = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = "ped_model"
  L2_2.type = "group"
  L2_2.label = "Spawner"
  L3_2 = {}
  L4_2 = {}
  L4_2.label = "Spawn ped"
  L4_2.type = "button"
  L4_2.callback = "striano_admin:cb:spawnPedByName"
  L5_2 = {}
  L5_2.label = "Spawn object"
  L5_2.type = "button"
  L5_2.callback = "striano_admin:cb:spawnObjByName"
  L6_2 = {}
  L6_2.label = "Spawn vehicle"
  L6_2.type = "button"
  L6_2.callback = "striano_admin:cb:spawnVehByName"
  L7_2 = {}
  L7_2.label = "Delete vehicle from DB"
  L7_2.type = "button"
  L7_2.callback = "striano_admin:cb:delveh"
  L8_2 = {}
  L8_2.label = "Delete vehicle (Entity)"
  L8_2.type = "button"
  L8_2.callback = "dV"
  L9_2 = {}
  L9_2.label = "Vehicle Maxed"
  L9_2.type = "button"
  L9_2.buttonLabel = "Max"
  L9_2.callback = "vehicleMaxed"
  L10_2 = {}
  L10_2.label = "Vehicle Fix"
  L10_2.type = "button"
  L10_2.buttonLabel = "FixVehicle"
  L10_2.callback = "fixVeh"
  L11_2 = {}
  L11_2.label = "Clear area"
  L11_2.type = "button"
  L11_2.buttonLabel = "Clear"
  L11_2.callback = "striano_admin:cb:clearArea"
  L12_2 = {}
  L12_2.label = "Edit vehicle"
  L12_2.type = "button"
  L12_2.buttonLabel = "Edit"
  L12_2.callback = "editVeh"
  L13_2 = {}
  L13_2.label = "Enter nearest vehicle"
  L13_2.type = "button"
  L13_2.buttonLabel = "Enter"
  L13_2.callback = "enterNearest"
  L14_2 = {}
  L14_2.label = "Clear ped area"
  L14_2.type = "button"
  L14_2.buttonLabel = "Clear"
  L14_2.callback = "striano_admin:cb:clearPedArea"
  L15_2 = {}
  L15_2.label = "Menu area sounds"
  L15_2.type = "button"
  L15_2.buttonLabel = "Menu"
  L15_2.callback = "menuSound"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L3_2[11] = L14_2
  L3_2[12] = L15_2
  L2_2.children = L3_2
  L1_2[1] = L2_2
  L0_2.groups = L1_2
  return L0_2
end
L18_1.build = L19_1
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:spawnPedByName"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = OpenInput
  L3_2 = "Insert model"
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "creaPed"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:spawnVehByName"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = OpenInput
  L3_2 = "Insert model"
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = closemenu
  L3_2()
  L3_2 = TriggerEvent
  L4_2 = "striano_SpawnVehicle"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:delVeh"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = OpenInput
  L3_2 = "Insert plate"
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = closemenu
  L3_2()
  L3_2 = ExecuteCommand
  L4_2 = "delveh "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "dV"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closemenu
  L2_2()
  L2_2 = ExecuteCommand
  L3_2 = "dv"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:spawnObjByName"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = OpenInput
  L3_2 = "Insert model"
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = exports
  L3_2 = L3_2.striano_editor
  L4_2 = L3_2
  L3_2 = L3_2.SpawnPreview
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = closemenu
  L3_2()
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "striano_admin:cb:clearPedArea"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = OpenInput
  L3_2 = "Insert range"
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "esx:clearPedZona"
  L5_2 = tonumber
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1.5
  end
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "editSkin"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerEvent
  L3_2 = "striano_skin:edit"
  L2_2(L3_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "editTattoo"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Editor Tattoo"
  function L5_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "PersonalizzaTattoo"
    L0_3(L1_3)
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Your Tattoo List"
  function L5_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "mytattoo"
    L0_3(L1_3)
  end
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "applyPed"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = OpenInput
  L3_2 = "Insert Ped Model Name (exampe: a_c_pig)"
  L2_2 = L2_2(L3_2)
  if "" == L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L4_2.error = "Missing model"
    L3_2(L4_2)
    return
  end
  L3_2 = closemenu
  L3_2()
  L3_2 = TriggerEvent
  L4_2 = "no1-playerped:client:SetPlayerPed"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "resetPed"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerEvent
  L3_2 = "no1-playerped:client:ResetPlayerPed"
  L2_2(L3_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "vehicleMaxed"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetVehiclePedIsIn
  L4_2 = L2_2
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if 0 == L3_2 then
    return
  end
  L4_2 = closemenu
  L4_2()
  L4_2 = SetVehicleModKit
  L5_2 = L3_2
  L6_2 = 0
  L4_2(L5_2, L6_2)
  L4_2 = SetVehicleMod
  L5_2 = L3_2
  L6_2 = 11
  L7_2 = GetNumVehicleMods
  L8_2 = L3_2
  L9_2 = 11
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 - 1
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetVehicleMod
  L5_2 = L3_2
  L6_2 = 12
  L7_2 = GetNumVehicleMods
  L8_2 = L3_2
  L9_2 = 12
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 - 1
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetVehicleMod
  L5_2 = L3_2
  L6_2 = 13
  L7_2 = GetNumVehicleMods
  L8_2 = L3_2
  L9_2 = 13
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 - 1
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetVehicleMod
  L5_2 = L3_2
  L6_2 = 15
  L7_2 = GetNumVehicleMods
  L8_2 = L3_2
  L9_2 = 15
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 - 1
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetVehicleMod
  L5_2 = L3_2
  L6_2 = 16
  L7_2 = GetNumVehicleMods
  L8_2 = L3_2
  L9_2 = 16
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = L7_2 - 1
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = ToggleVehicleMod
  L5_2 = L3_2
  L6_2 = 18
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = exports
  L4_2 = L4_2.striano_combat
  L5_2 = L4_2
  L4_2 = L4_2.testo3d
  L6_2 = "Vehicle Maxed"
  L4_2(L5_2, L6_2)
end
L16_1(L17_1, L18_1)
L16_1 = CreateThread
function L17_1()
  local L0_2, L1_2
  while true do
    L0_2 = Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = LocalPlayer
    L0_2 = L0_2.state
    if L0_2 then
      L0_2 = LocalPlayer
      L0_2 = L0_2.state
      L0_2 = L0_2.isAdmin
    end
    if true == L0_2 then
      L0_2 = _items_cache
      if nil == L0_2 then
        L0_2 = _items_loading
        if not L0_2 then
          _items_loading = true
          L0_2 = TriggerServerEvent
          L1_2 = "striano_admin:sv:reqItemsList"
          L0_2(L1_2)
        end
      end
      return
    end
  end
end
L16_1(L17_1)
L16_1 = _items_cache
L17_1 = _items_loading
if not L17_1 then
  L17_1 = false
end
L18_1 = RegisterNetEvent
L19_1 = "striano_admin:cl:setItemsList"
function L20_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  L16_1 = L1_2
  L1_2 = false
  L17_1 = L1_2
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:getItemInput"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = OpenInput
  L3_2 = "Item name"
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    return
  end
  L3_2 = #L2_2
  if 0 == L3_2 or "" == L2_2 then
    return
  end
  L3_2 = OpenInput
  L4_2 = "Insert amount"
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if nil == L4_2 then
    return
  end
  if L2_2 and "" ~= L2_2 and L4_2 and L4_2 > 0 then
    L5_2 = TriggerServerEvent
    L6_2 = "inv3d:giveItem"
    L7_2 = GetPlayerServerId
    L8_2 = PlayerId
    L8_2, L9_2, L10_2 = L8_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = "player"
    L9_2 = L2_2
    L10_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:getItem"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2 or nil
  if A0_2 then
    L2_2 = A0_2.item
  end
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.model
  end
  L4_2 = ExecuteCommand
  L5_2 = "copia "
  L6_2 = L3_2
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
  if nil == L2_2 then
    return
  end
  L4_2 = #L2_2
  if 0 == L4_2 or "" == L2_2 then
    return
  end
  L4_2 = OpenInput
  L5_2 = "Insert amount"
  L4_2 = L4_2(L5_2)
  L5_2 = tonumber
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if nil == L5_2 then
    return
  end
  if L2_2 and "" ~= L2_2 and L5_2 and L5_2 > 0 then
    L6_2 = TriggerServerEvent
    L7_2 = "inv3d:giveItem"
    L8_2 = GetPlayerServerId
    L9_2 = PlayerId
    L9_2, L10_2, L11_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = "player"
    L10_2 = L2_2
    L11_2 = L5_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L6_2 = A1_2
  L7_2 = {}
  L7_2.ok = true
  L6_2(L7_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:noop"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterAdminCategory
L19_1 = "world"
L20_1 = {}
L20_1.order = 4
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L16_1
  if nil == L0_2 then
    L0_2 = L17_1
    if not L0_2 then
      L0_2 = true
      L17_1 = L0_2
      L0_2 = TriggerServerEvent
      L1_2 = "striano_admin:sv:reqItemsList"
      L0_2(L1_2)
    end
  end
  L0_2 = {}
  L1_2 = L16_1
  if nil == L1_2 then
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L2_2 = {}
    L2_2.label = "Loading items..."
    L2_2.type = "button"
    L2_2.buttonLabel = "Wait"
    L2_2.callback = "striano_admin:cb:noop"
    L0_2[L1_2] = L2_2
  else
    L1_2 = L16_1
    L1_2 = #L1_2
    if 0 == L1_2 then
      L1_2 = #L0_2
      L1_2 = L1_2 + 1
      L2_2 = {}
      L2_2.label = "No items found."
      L2_2.type = "button"
      L2_2.buttonLabel = "OK"
      L2_2.callback = "striano_admin:cb:noop"
      L0_2[L1_2] = L2_2
    else
      L1_2 = ipairs
      L2_2 = L16_1
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = type
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if "table" == L7_2 then
          L7_2 = L6_2.name
          if L7_2 then
            goto lbl_56
          end
        end
        L7_2 = L6_2
        ::lbl_56::
        L8_2 = type
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        if "table" == L8_2 then
          L8_2 = L6_2.label
          if L8_2 then
            goto lbl_65
          end
        end
        L8_2 = nil
        ::lbl_65::
        L9_2 = type
        L10_2 = L6_2
        L9_2 = L9_2(L10_2)
        if "table" == L9_2 then
          L9_2 = L6_2.model
          if L9_2 then
            goto lbl_74
          end
        end
        L9_2 = nil
        ::lbl_74::
        L10_2 = tostring
        L11_2 = L7_2 or L11_2
        if not L7_2 then
          L11_2 = ""
        end
        L10_2 = L10_2(L11_2)
        L7_2 = L10_2
        if L8_2 and "" ~= L8_2 then
          L10_2 = "%s"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = L7_2
          L10_2 = L10_2(L11_2, L12_2)
          if L10_2 then
            goto lbl_91
          end
        end
        L10_2 = L7_2
        ::lbl_91::
        L11_2 = #L0_2
        L11_2 = L11_2 + 1
        L12_2 = {}
        L12_2.label = L10_2
        L12_2.type = "button"
        L12_2.buttonLabel = "Get"
        L12_2.callback = "striano_admin:cb:getItem"
        L13_2 = {}
        L13_2.item = L7_2
        L13_2.model = L9_2
        L12_2.payload = L13_2
        L0_2[L11_2] = L12_2
      end
    end
  end
  L1_2 = {}
  L1_2.id = "world_mgmt"
  L1_2.label = "ITEMS"
  L1_2.sub = ""
  L1_2.enabled = true
  L2_2 = {}
  L3_2 = {}
  L3_2.id = "world_items"
  L3_2.type = "group"
  L3_2.label = "Item manager"
  L3_2.children = L0_2
  L2_2[1] = L3_2
  L1_2.groups = L2_2
  return L1_2
end
L20_1.build = L21_1
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:ui:triggerEvent"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = A0_2.event
    if L2_2 then
      L2_2 = TriggerEvent
      L3_2 = A0_2.event
      L4_2 = A0_2.value
      L5_2 = A0_2.meta
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterAdminCategory
L19_1 = "striano_scripts"
L20_1 = {}
L20_1.order = 5
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = {}
  L0_2.id = "striano_script"
  L0_2.label = "SCRIPTS"
  L0_2.sub = ""
  L0_2.enabled = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = "display_options"
  L2_2.type = "group"
  L2_2.label = "Take your time, test all!"
  L3_2 = {}
  L4_2 = {}
  L4_2.label = "striano combat"
  L4_2.type = "button"
  L4_2.callback = "nuicb_combat"
  L5_2 = {}
  L5_2.label = "striano ride horse"
  L5_2.type = "button"
  L5_2.callback = "nuicb_cmd"
  L6_2 = {}
  L6_2.cmd = "horse"
  L5_2.payload = L6_2
  L6_2 = {}
  L6_2.label = "striano ride humanoid (Ostrich)"
  L6_2.type = "button"
  L6_2.callback = "nuicb_cmd"
  L7_2 = {}
  L7_2.cmd = "testHumanoid"
  L6_2.payload = L7_2
  L7_2 = {}
  L7_2.label = "striano ride humanoid (T-rex)"
  L7_2.type = "button"
  L7_2.callback = "nuicb_cmd"
  L8_2 = {}
  L8_2.cmd = "testTrex"
  L7_2.payload = L8_2
  L8_2 = {}
  L8_2.label = "striano fly_human"
  L8_2.type = "button"
  L8_2.callback = "nuicb_cmd"
  L9_2 = {}
  L9_2.cmd = "flyhuman"
  L8_2.payload = L9_2
  L9_2 = {}
  L9_2.label = "striano fly_animal"
  L9_2.type = "button"
  L9_2.callback = "nuicd_flyanimal"
  L10_2 = {}
  L10_2.label = "striano boat"
  L10_2.type = "button"
  L10_2.callback = "spawnBoat"
  L11_2 = {}
  L11_2.label = "striano clayshot"
  L11_2.type = "button"
  L11_2.callback = "nuicb_cmd"
  L12_2 = {}
  L12_2.cmd = "clay"
  L11_2.payload = L12_2
  L12_2 = {}
  L12_2.label = "striano race creator"
  L12_2.type = "button"
  L12_2.callback = "nuicb_cmd"
  L13_2 = {}
  L13_2.cmd = "race"
  L12_2.payload = L13_2
  L13_2 = {}
  L13_2.label = "striano dark mode"
  L13_2.type = "button"
  L13_2.callback = "nuicb_cmd"
  L14_2 = {}
  L14_2.cmd = "localFog"
  L13_2.payload = L14_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L2_2.children = L3_2
  L1_2[1] = L2_2
  L0_2.groups = L1_2
  return L0_2
end
L20_1.build = L21_1
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "spawnBoat"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = exports
  L2_2 = L2_2.striano_boat
  L3_2 = L2_2
  L2_2 = L2_2.spawnBoat
  L2_2(L3_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "nuicd_flyanimal"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = IsPedHuman
    L1_3 = ped
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = ExecuteCommand
      L1_3 = "trasformazione"
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 3500
      L0_3(L1_3)
      L0_3 = IsPedHuman
      L1_3 = ped
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        L0_3 = ExecuteCommand
        L1_3 = "letterMission"
        L0_3(L1_3)
      end
    else
      L0_3 = TriggerEvent
      L1_3 = "trasformazioneAUmano"
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterAdminCategory
L19_1 = "credtis"
L20_1 = {}
L20_1.order = 6
function L21_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L0_2.id = "credits"
  L0_2.label = "CREDITS"
  L0_2.sub = ""
  L0_2.enabled = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = "display_options"
  L2_2.type = "group"
  L2_2.label = "strianodev.com"
  L3_2 = {}
  L4_2 = {}
  L4_2.label = "You like this menu?"
  L4_2.type = "infoButton"
  L4_2.buttonLabel = "Read more"
  L4_2.infoTitle = "Resource name: striano_admin"
  L4_2.infoHtml = "\t\t\t\t\t\t\t<p>This is a menu i use to manage my project, and if you want you can manage also yours! \n\t\t\t\t\t\t\t<br>\n\t\t\t\t\t\t\tSimple, minimal, powerful. Get your copy on <b>strianodev.com</b>.</p>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\thay...\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t<br>\n\t\t\t\t\t\t\t<br>\n\t\t\t\t\t\t\t<center>\n\t\t\t\t\t\t\t<b>\226\128\162 love u all \226\128\162</b><br>\n\t\t\t\t\t\t\t<video autoplay loop muted playsinline>\n\t\t\t\t\t\t\t  <source src=\"https://images-ext-1.discordapp.net/external/qAgaDGZo4SrGapIw85hMe3EW3eqQ_GECB85c6rM5XzM/https/media.tenor.com/o9JBugd0XdwAAAPo/seal-smile.mp4\" type=\"video/mp4\">\n\t\t\t\t\t\t\t</video>\n\t\t\t\t\t\t\t</center>\n\t\t\t\t\t\t\t"
  L5_2 = {}
  L5_2.label = "R u l e s"
  L5_2.type = "infoButton"
  L5_2.buttonLabel = "Read"
  L5_2.infoTitle = "SOD: Rules (22/02/26)"
  L5_2.infoHtml = "\t\t\t\t\t\t\t<center>\n\t\t\t\t\t\t\t<p>\n\t\t\t\t\t\t\t\tPlease follow the rules to not be banned from the project.\n\t\t\t\t\t\t\t\t<br>\n\t\t\t\t\t\t\t\tRules are <b>WIP</b>\n\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t<br>\n\t\t\t\t\t\t\t\t<br>\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t<b>\n\t\t\t\t\t\t\t\t\t\226\128\162 No cheats<br>\n\t\t\t\t\t\t\t\t\t\226\128\162 No porco dio<br>\n\t\t\t\t\t\t\t\t\t\226\128\162 No porca madonna<br>\n\t\t\t\t\t\t\t\t</b>\n\t\t\t\t\t\t\t</p>\n\t\t\t\t\t\t\t</center>\n\t\t\t\t\t\t\t"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L2_2.children = L3_2
  L1_2[1] = L2_2
  L0_2.groups = L1_2
  return L0_2
end
L20_1.build = L21_1
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "nuicb_cmd"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2 or nil
  if A0_2 then
    L2_2 = A0_2.cmd
  end
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if "string" == L3_2 and "" ~= L2_2 then
    L3_2 = closemenu
    L3_2()
    L3_2 = ExecuteCommand
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L3_2 = print
    L4_2 = "^1[STRIANO ADMIN]^0 nuicb_cmd missing cmd. data="
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "nuicb_combat"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "combatset"
  L2_2(L3_2)
  L2_2 = closemenu
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:noop"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_heal"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    return
  end
  L3_2 = ExecuteCommand
  L4_2 = "heal "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_setped"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = OpenInput
  L4_2 = "Inset ped model"
  L3_2 = L3_2(L4_2)
  if not L3_2 or "" == L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = true
    L4_2(L5_2)
    return
  end
  if 0 == L2_2 then
    return
  end
  L4_2 = TriggerServerEvent
  L5_2 = "myskinped:applyPed"
  L6_2 = L3_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_resetped"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    return
  end
  L3_2 = TriggerServerEvent
  L4_2 = "myskinped:resetPed"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_clearInv"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = OpenInput
  L4_2 = "Clear inventory? type 'yes'"
  L3_2 = L3_2(L4_2)
  if "yes" == L3_2 or "YES" == L3_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "inv3d:clearInventory"
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = closemenu
    L4_2()
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_clearWeaponSlot"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = OpenInput
  L4_2 = "Clear weapon slots? type 'yes'"
  L3_2 = L3_2(L4_2)
  if "yes" == L3_2 or "YES" == L3_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "inv3d:clearWeaponSlot"
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = closemenu
    L4_2()
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_manageSpells"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = ExecuteCommand
  L4_2 = "editspells "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = closemenu
  L3_2()
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_clearCombatSword"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = OpenInput
  L4_2 = "Clear combat weapon? type 'yes'"
  L3_2 = L3_2(L4_2)
  if "yes" == L3_2 or "YES" == L3_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "combat:setSword"
    L6_2 = L2_2
    L7_2 = 0
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = closemenu
    L4_2()
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_maxHP"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = OpenInput
  L4_2 = "Insert Max HP"
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerServerEvent
  L5_2 = "setMaxHP"
  L6_2 = L2_2
  L7_2 = tonumber
  L8_2 = L3_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = closemenu
  L4_2()
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "setMaxHP"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "setMaxHP"
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 > 0 then
    L1_2 = 200
    if A0_2 >= L1_2 then
      L1_2 = SetPedMaxHealth
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
      L1_2 = exports
      L1_2 = L1_2.striano_editor
      L2_2 = L1_2
      L1_2 = L1_2.updateMaxHealth
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
      L1_2 = exports
      L1_2 = L1_2.striano_combat
      L2_2 = L1_2
      L1_2 = L1_2.testo3d
      L3_2 = "Max HP set: "
      L4_2 = A0_2
      L3_2 = L3_2 .. L4_2
      L1_2(L2_2, L3_2)
      L1_2 = TriggerServerEvent
      L2_2 = "esx_ambulancejjj:heal"
      L3_2 = GetPlayerServerId
      L4_2 = PlayerId
      L4_2 = L4_2()
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_maxMana"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = OpenInput
  L4_2 = "Insert Max Mana"
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerServerEvent
  L5_2 = "setMaxMana"
  L6_2 = L2_2
  L7_2 = tonumber
  L8_2 = L3_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = closemenu
  L4_2()
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNetEvent
L19_1 = "setMaxMana"
L18_1(L19_1)
L18_1 = AddEventHandler
L19_1 = "setMaxMana"
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerEvent
  L2_2 = "striano_missions:updateMaxMana"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.testo3d
  L3_2 = "Max Mana set: "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_revive"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    return
  end
  L3_2 = ExecuteCommand
  L4_2 = "revive "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_clean"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    return
  end
  L3_2 = ExecuteCommand
  L4_2 = "resetferite "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = ExecuteCommand
  L4_2 = "resetsporco "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_goto"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 ~= L2_2 then
    L3_2 = ExecuteCommand
    L4_2 = "tpp2 "
    L5_2 = L2_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = closemenu
    L3_2()
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_bring"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 ~= L2_2 then
    L3_2 = ExecuteCommand
    L4_2 = "tpp3 "
    L5_2 = L2_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = closemenu
    L3_2()
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_return"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 ~= L2_2 then
    L3_2 = ExecuteCommand
    L4_2 = "getback "
    L5_2 = L2_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = closemenu
    L3_2()
  end
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_giveItem"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = OpenInput
  L4_2 = "Item name"
  L3_2 = L3_2(L4_2)
  if not L3_2 or "" == L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = true
    L4_2(L5_2)
    return
  end
  L4_2 = tonumber
  L5_2 = OpenInput
  L6_2 = "Insert amount"
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if not L4_2 or L4_2 <= 0 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = true
    L5_2(L6_2)
    return
  end
  L5_2 = TriggerEvent
  L6_2 = "inv3d:serverGiveItem"
  L7_2 = L2_2
  L8_2 = "player"
  L9_2 = L3_2
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_givekey"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = OpenInput
  L4_2 = "New key name"
  L3_2 = L3_2(L4_2)
  if not L3_2 or "" == L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = true
    L4_2(L5_2)
    return
  end
  L4_2 = TriggerServerEvent
  L5_2 = "striano_keys:sv:adminGiveKey"
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_givekeyTemp"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = OpenInput
  L4_2 = "New temp key name"
  L3_2 = L3_2(L4_2)
  if not L3_2 or "" == L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = true
    L4_2(L5_2)
    return
  end
  L4_2 = TriggerServerEvent
  L5_2 = "striano_keys:sv:adminGiveTempKey"
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:pl_delkey"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = OpenInput
  L4_2 = "Key name to destroy"
  L3_2 = L3_2(L4_2)
  if not L3_2 or "" == L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = true
    L4_2(L5_2)
    return
  end
  L4_2 = TriggerServerEvent
  L5_2 = "striano_keys:sv:adminDestroyKey"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:cb:assignVehByName"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.id
  end
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 0
  end
  if 0 == L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = OpenInput
  L4_2 = "Vehicle model (ex: sanchez)"
  L3_2 = L3_2(L4_2)
  if not L3_2 or "" == L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = true
    L4_2(L5_2)
    return
  end
  L4_2 = TriggerServerEvent
  L5_2 = "sod:giveVeh"
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = true
  L4_2(L5_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterNUICallback
L19_1 = "striano_admin:ui:forceClose"
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L0_1.open = false
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "close"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L18_1(L19_1, L20_1)
L18_1 = _keys_menu_cache
if not L18_1 then
  L18_1 = {}
end
L19_1 = RegisterNUICallback
L20_1 = "striano_admin:cb:openKeysMenu"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L3_2(L4_2)
    return
  end
  L3_2 = closemenu
  L3_2()
  L3_2 = TriggerServerEvent
  L4_2 = "striano_admin:sv:getPlayerKeys"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNetEvent
L20_1 = "striano_admin:cl:receivePlayerKeys"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L18_1
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = {}
  end
  L2_2[A0_2] = L3_2
  L2_2 = OpenKeysFastMenu
  L3_2 = A0_2
  L2_2(L3_2)
end
L19_1(L20_1, L21_1)
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L18_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = ExecuteCommand
    L3_2 = "e shrug5"
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.testo3d
    L4_2 = "No keys"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = Wait
  L3_2 = 75
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "Keys of ID %d"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = tostring
    L9_2 = L7_2.key_id
    if not L9_2 then
      L9_2 = ""
    end
    L8_2 = L8_2(L9_2)
    L9_2 = tostring
    L10_2 = L7_2.label
    if not L10_2 then
      L10_2 = ""
    end
    L9_2 = L9_2(L10_2)
    L10_2 = L8_2 or L10_2
    if "" == L9_2 or not L8_2 then
      L10_2 = L8_2
    end
    L11_2 = exports
    L11_2 = L11_2.striano_fastmenu
    L12_2 = L11_2
    L11_2 = L11_2.addMenuItem
    L13_2 = L10_2
    function L14_2()
      local L0_3, L1_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.clearMenu
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 75
      L0_3(L1_3)
      L0_3 = OpenSingleKeyMenu
      L1_3 = L8_2
      L0_3(L1_3)
    end
    L15_2 = false
    L11_2(L12_2, L13_2, L14_2, L15_2)
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
end
OpenKeysFastMenu = L19_1
L19_1 = RegisterCommand
L20_1 = "keys"
function L21_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerServerEvent
  L1_2 = "striano_admin:sv:getPlayerKeys"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
end
L19_1(L20_1, L21_1)
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "Key: %s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  function L4_2()
    local L0_3, L1_3
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "Copy key_id (print F8)"
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = print
    L1_3 = "^2[striano_admin]^7 COPY KEY_ID:"
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "Destroy key (ADMIN)"
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerServerEvent
    L1_3 = "striano_keys:sv:adminDestroyKey"
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
OpenSingleKeyMenu = L19_1
L19_1 = RegisterNUICallback
L20_1 = "striano_admin:cb:pl_keys_copy"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.key_id
  L3_2 = print
  L4_2 = "KEY_ID:"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L19_1(L20_1, L21_1)
L19_1 = RegisterNUICallback
L20_1 = "striano_admin:cb:pl_keys_destroy"
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tostring
  L3_2 = A0_2.key_id
  if not L3_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerServerEvent
  L4_2 = "striano_keys:sv:adminDestroyKey"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.ok = true
  L3_2(L4_2)
end
L19_1(L20_1, L21_1)
