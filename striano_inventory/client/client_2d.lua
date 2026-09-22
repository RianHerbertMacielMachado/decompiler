local L0_1, L1_1, L2_1, L3_1
L0_1 = GetCurrentResourceName
L0_1 = L0_1()
L1_1 = {}
L1_1.open = false
L1_1.otherInv = nil
L1_1.title = "Inventory"
L2_1 = {}
L1_1.loading = L2_1
L2_1 = {}
L1_1.data = L2_1
L1_1.busyUntil = 0
Inv2D = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = "string" == L1_2
  return L1_2
end
isRuntimeInv = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = A0_2.uid
    if L1_2 then
      L1_2 = A0_2.item
      if L1_2 then
        goto lbl_14
      end
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_14::
  L1_2 = tostring
  L2_2 = A0_2.item
  L1_2 = L1_2(L2_2)
  L2_2 = Config
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Items
    if L2_2 then
      L2_2 = Config
      L2_2 = L2_2.Items
      L2_2 = L2_2[L1_2]
      if L2_2 then
        goto lbl_31
      end
    end
  end
  L2_2 = {}
  ::lbl_31::
  L3_2 = {}
  L4_2 = tostring
  L5_2 = A0_2.uid
  L4_2 = L4_2(L5_2)
  L3_2.uid = L4_2
  L3_2.item = L1_2
  L4_2 = tostring
  L5_2 = L2_2.label
  if not L5_2 then
    L5_2 = L2_2.name
    if not L5_2 then
      L5_2 = L1_2
    end
  end
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = 1
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = tonumber
  L8_2 = A0_2.count
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 1
  end
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.count = L4_2
  L4_2 = L2_2.stackable
  L4_2 = true == L4_2
  L3_2.stackable = L4_2
  L4_2 = tonumber
  L5_2 = L2_2.maxStack
  if not L5_2 then
    L5_2 = L2_2.maxstack
  end
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 1
  end
  L3_2.maxStack = L4_2
  L4_2 = L2_2.image
  if not L4_2 then
    L4_2 = L2_2.icon
    if not L4_2 then
      L4_2 = nil
    end
  end
  L3_2.image = L4_2
  L4_2 = L2_2.weapon
  L4_2 = true == L4_2
  L3_2.weapon = L4_2
  L4_2 = A0_2.meta
  if not L4_2 then
    L4_2 = A0_2.metadata
  end
  L3_2.meta = L4_2
  return L3_2
end
cleanItem = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A1_2 or L5_2
  if not A1_2 then
    L5_2 = {}
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = cleanItem
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L11_2 = #L3_2
      L11_2 = L11_2 + 1
      L3_2[L11_2] = L10_2
    end
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L3_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = string
    L2_3 = L2_3.lower
    L3_3 = A0_3.label
    L2_3 = L2_3(L3_3)
    L3_3 = string
    L3_3 = L3_3.lower
    L4_3 = A1_3.label
    L3_3 = L3_3(L4_3)
    if L2_3 == L3_3 then
      L4_3 = A0_3.uid
      L5_3 = A1_3.uid
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L4_2(L5_2, L6_2)
  L4_2 = 12
  L5_2 = 6
  if "player" == A0_2 then
    L4_2 = 8
    L5_2 = 2
  else
    L6_2 = Inv2D
    L6_2 = L6_2.otherInv
    if A0_2 == L6_2 then
      L6_2 = Inv2D
      L6_2 = L6_2.columns
      L4_2 = L6_2 or L4_2
      if not L6_2 then
        L4_2 = 12
      end
      L6_2 = Inv2D
      L6_2 = L6_2.rows
      L5_2 = L6_2 or L5_2
      if not L6_2 then
        L5_2 = 6
      end
    end
  end
  L6_2 = {}
  L6_2.name = A0_2
  if "player" == A0_2 then
    L7_2 = "Inventory"
    if L7_2 then
      goto lbl_58
    end
  end
  L7_2 = Inv2D
  L7_2 = L7_2.title
  ::lbl_58::
  L6_2.title = L7_2
  L6_2.items = L3_2
  L7_2 = tonumber
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0
  end
  L6_2.rev = L7_2
  L7_2 = isRuntimeInv
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L6_2.runtime = L7_2
  L6_2.columns = L4_2
  L6_2.rows = L5_2
  return L6_2
end
buildInventory = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = Inv2D
  L0_2 = L0_2.loading
  L0_2 = L0_2.player
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = Inv2D
  L0_2 = L0_2.otherInv
  if L0_2 then
    L0_2 = Inv2D
    L0_2 = L0_2.loading
    L1_2 = Inv2D
    L1_2 = L1_2.otherInv
    L0_2 = L0_2[L1_2]
    if not L0_2 then
      L0_2 = false
      return L0_2
    end
  end
  L0_2 = true
  return L0_2
end
loaded = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Inv2D
  L0_2 = L0_2.open
  if L0_2 then
    L0_2 = loaded
    L0_2 = L0_2()
    if L0_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L0_2 = Inv2D
  L0_2 = L0_2.data
  L0_2 = L0_2.player
  L1_2 = Inv2D
  L1_2 = L1_2.otherInv
  if L1_2 then
    L1_2 = Inv2D
    L1_2 = L1_2.data
    L2_2 = Inv2D
    L2_2 = L2_2.otherInv
    L1_2 = L1_2[L2_2]
    if L1_2 then
      goto lbl_25
    end
  end
  L1_2 = nil
  ::lbl_25::
  if L1_2 then
    L2_2 = Inv2D
    L2_2 = L2_2.columns
    L1_2.columns = L2_2
    L2_2 = Inv2D
    L2_2 = L2_2.rows
    L1_2.rows = L2_2
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "inv2d:open"
  L3_2.player = L0_2
  L3_2.other = L1_2
  L2_2(L3_2)
end
sendState = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Inv2D
  L2_2 = L2_2.data
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = tonumber
    L4_2 = L2_2.rev
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = 0
  ::lbl_12::
  if A1_2 or not L2_2 then
    L4_2 = TriggerServerEvent
    L5_2 = "inv3d:load"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = TriggerServerEvent
    L5_2 = "inv3d:sync"
    L6_2 = A0_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
requestInv = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Inv2D
  L1_2 = L1_2.open
  if not L1_2 then
    return
  end
  L1_2 = requestInv
  L2_2 = "player"
  L3_2 = true == A0_2
  L1_2(L2_2, L3_2)
  L1_2 = Inv2D
  L1_2 = L1_2.otherInv
  if L1_2 then
    L1_2 = requestInv
    L2_2 = Inv2D
    L2_2 = L2_2.otherInv
    L3_2 = true == A0_2
    L1_2(L2_2, L3_2)
  end
end
refreshVisible = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = "player"
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if L2_2 then
    L2_2 = closeInventory2D
    L2_2()
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
  L2_2 = type
  L3_2 = canOpenInv
  L2_2 = L2_2(L3_2)
  if "function" == L2_2 then
    L2_2 = canOpenInv
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = type
  L3_2 = invOpen
  L2_2 = L2_2(L3_2)
  if "nil" ~= L2_2 then
    L2_2 = invOpen
    if L2_2 then
      L2_2 = type
      L3_2 = closeInventory
      L2_2 = L2_2(L3_2)
      if "function" == L2_2 then
        L2_2 = closeInventory
        L3_2 = true
        L2_2(L3_2)
        L2_2 = Wait
        L3_2 = 0
        L2_2(L3_2)
      else
        L2_2 = false
        return L2_2
      end
    end
  end
  L2_2 = Inv2D
  L2_2.open = true
  L2_2 = Inv2D
  L3_2 = A0_2 or L3_2
  if "player" == A0_2 or not A0_2 then
    L3_2 = nil
  end
  L2_2.otherInv = L3_2
  L2_2 = Inv2D
  L3_2 = tostring
  L4_2 = A1_2.title
  if not L4_2 then
    L4_2 = A0_2
  end
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L2_2 = Inv2D
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A1_2.columns
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 12
  end
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.columns = L3_2
  L2_2 = Inv2D
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A1_2.rows
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 6
  end
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.rows = L3_2
  L2_2 = Inv2D
  L3_2 = {}
  L3_2.player = false
  L2_2.loading = L3_2
  L2_2 = Inv2D
  L2_2 = L2_2.otherInv
  if L2_2 then
    L2_2 = Inv2D
    L2_2 = L2_2.loading
    L3_2 = Inv2D
    L3_2 = L3_2.otherInv
    L2_2[L3_2] = false
    L2_2 = TriggerServerEvent
    L3_2 = "inv3d:server:setLastShared"
    L4_2 = Inv2D
    L4_2 = L4_2.otherInv
    L2_2(L3_2, L4_2)
  end
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocusKeepInput
  L3_2 = false
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "inv2d:loading"
  L4_2 = Inv2D
  L4_2 = L4_2.otherInv
  L4_2 = nil ~= L4_2
  L3_2.hasOther = L4_2
  L4_2 = Inv2D
  L4_2 = L4_2.title
  L3_2.otherTitle = L4_2
  L2_2(L3_2)
  L2_2 = ExecuteCommand
  L3_2 = "e lavora2"
  L2_2(L3_2)
  L2_2 = requestInv
  L3_2 = "player"
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = Inv2D
  L2_2 = L2_2.otherInv
  if L2_2 then
    L2_2 = requestInv
    L3_2 = Inv2D
    L3_2 = L3_2.otherInv
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = true
  return L2_2
end
openInventory2D = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = tostring
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if not L2_2 or "" == A0_2 or "" == A1_2 then
    L2_2 = false
    L3_2 = "bad_data"
    return L2_2, L3_2
  end
  L2_2 = Inv2D
  L2_2 = L2_2.data
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = type
    L4_2 = L2_2.items
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_37
    end
  end
  L3_2 = false
  L4_2 = "inventory_not_loaded"
  do return L3_2, L4_2 end
  ::lbl_37::
  L3_2 = nil
  L4_2 = ipairs
  L5_2 = L2_2.items
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 then
      L10_2 = tostring
      L11_2 = L9_2.uid
      L10_2 = L10_2(L11_2)
      if L10_2 == A1_2 then
        L3_2 = L9_2
        break
      end
    end
  end
  if not L3_2 then
    L4_2 = false
    L5_2 = "item_not_found"
    return L4_2, L5_2
  end
  L4_2 = tostring
  L5_2 = L3_2.item
  if not L5_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  L5_2 = Config
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Items
    if L5_2 then
      L5_2 = Config
      L5_2 = L5_2.Items
      L5_2 = L5_2[L4_2]
    end
  end
  if not L5_2 then
    L6_2 = false
    L7_2 = "config_not_found"
    return L6_2, L7_2
  end
  L6_2 = nil
  L7_2 = L5_2.UseThis
  if true == L7_2 then
    L7_2 = type
    L8_2 = L5_2.onUse
    L7_2 = L7_2(L8_2)
    if "function" == L7_2 then
      L6_2 = L5_2.onUse
  end
  else
    L7_2 = type
    L8_2 = L5_2.onUse
    L7_2 = L7_2(L8_2)
    if "function" == L7_2 then
      L6_2 = L5_2.onUse
    end
  end
  if not L6_2 then
    L7_2 = type
    L8_2 = testo3d
    L7_2 = L7_2(L8_2)
    if "function" == L7_2 then
      L7_2 = ExecuteCommand
      L8_2 = "prova3 Not usable."
      L7_2(L8_2)
    else
      L7_2 = GetResourceState
      L8_2 = "striano_combat"
      L7_2 = L7_2(L8_2)
      if "started" == L7_2 then
        L7_2 = ExecuteCommand
        L8_2 = "prova3 Not usable."
        L7_2(L8_2)
      end
    end
    L7_2 = false
    L8_2 = "not_usable"
    return L7_2, L8_2
  end
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 1
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = tonumber
  L11_2 = L3_2.count
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = 1
  end
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = {}
  L8_2.entity = 0
  L8_2.item = L4_2
  L8_2.realItem = L4_2
  L8_2.uid = A1_2
  L8_2.count = L7_2
  L8_2.inv = A0_2
  L8_2.from2d = true
  if "melee_weapon" == L4_2 or "buffer" == L4_2 then
    L9_2 = TriggerServerEvent
    L10_2 = "inv3d:removeItem"
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = L7_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  else
    L9_2 = L5_2.notRemove
    if true ~= L9_2 then
      L9_2 = TriggerServerEvent
      L10_2 = "inv3d:removeItem"
      L11_2 = A0_2
      L12_2 = A1_2
      L13_2 = 1
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L9_2 = closeInventory2D
  L9_2()
  L9_2 = pcall
  L10_2 = L6_2
  L11_2 = L8_2
  L9_2, L10_2 = L9_2(L10_2, L11_2)
  if not L9_2 then
    L11_2 = print
    L12_2 = "^1[INV2D USE ERROR]^7 item=%s uid=%s error=%s"
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = L4_2
    L15_2 = A1_2
    L16_2 = tostring
    L17_2 = L10_2
    L16_2, L17_2 = L16_2(L17_2)
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2 = false
    L12_2 = "on_use_error"
    return L11_2, L12_2
  end
  L11_2 = true
  return L11_2
end
useInventoryItem2D = L1_1
L1_1 = RegisterNetEvent
L2_1 = "inv3d:loadResult"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = tostring
  L5_2 = A0_2 or L5_2
  if not A0_2 then
    L5_2 = ""
  end
  L4_2 = L4_2(L5_2)
  A0_2 = L4_2
  L4_2 = Inv2D
  L4_2 = L4_2.open
  if not L4_2 then
    return
  end
  if "player" ~= A0_2 then
    L4_2 = Inv2D
    L4_2 = L4_2.otherInv
    if A0_2 ~= L4_2 then
      return
    end
  end
  L4_2 = Inv2D
  L4_2 = L4_2.data
  L5_2 = buildInventory
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2[A0_2] = L5_2
  L4_2 = Inv2D
  L4_2 = L4_2.loading
  L4_2[A0_2] = true
  L4_2 = sendState
  L4_2()
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "inv3d:syncNoChange"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = Inv2D
  L2_2 = L2_2.data
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = tonumber
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = L2_2.rev
      if not L3_2 then
        L3_2 = 0
      end
    end
    L2_2.rev = L3_2
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if not L2_2 then
    return
  end
  if "player" ~= A0_2 then
    L2_2 = Inv2D
    L2_2 = L2_2.otherInv
    if A0_2 ~= L2_2 then
      return
    end
  end
  L2_2 = requestInv
  L3_2 = A0_2
  L4_2 = true == A1_2
  L2_2(L3_2, L4_2)
end
syncOne = L1_1
L1_1 = RegisterNetEvent
L2_1 = "inv3d:invChanged"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = syncOne
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "inv3d:reload"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = syncOne
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "inv3d:forceSyncNow"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = syncOne
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "inv3d:removeResult"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = syncOne
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "inv3d:addResult"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = syncOne
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "inv3d:mergeResult"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = syncOne
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "inv3d:splitResult"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = syncOne
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = tostring
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tostring
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 1
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 1
  end
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A2_2 = L3_2
  L3_2 = Inv2D
  L3_2 = L3_2.data
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = type
    L5_2 = L3_2.items
    L4_2 = L4_2(L5_2)
    if "table" == L4_2 then
      goto lbl_40
    end
  end
  L4_2 = false
  L5_2 = "inventory_not_loaded"
  do return L4_2, L5_2 end
  ::lbl_40::
  L4_2 = nil
  L5_2 = ipairs
  L6_2 = L3_2.items
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 then
      L11_2 = tostring
      L12_2 = L10_2.uid
      L11_2 = L11_2(L12_2)
      if L11_2 == A1_2 then
        L4_2 = L10_2
        break
      end
    end
  end
  if not L4_2 then
    L5_2 = false
    L6_2 = "item_not_found"
    return L5_2, L6_2
  end
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A2_2
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 1
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = tonumber
  L11_2 = L4_2.count
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = 1
  end
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A2_2 = L5_2
  L5_2 = Config
  if L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Items
    if L5_2 then
      L5_2 = Config
      L5_2 = L5_2.Items
      L6_2 = L4_2.item
      L5_2 = L5_2[L6_2]
    end
  end
  if not L5_2 then
    L6_2 = false
    L7_2 = "config_not_found"
    return L6_2, L7_2
  end
  L6_2 = L5_2.model
  if not L6_2 then
    L6_2 = L5_2.prop
    if not L6_2 then
      L6_2 = L5_2.weapon
    end
  end
  if not L6_2 then
    L7_2 = print
    L8_2 = "^1[INV2D DROP]^7 model missing for item: %s"
    L9_2 = L8_2
    L8_2 = L8_2.format
    L10_2 = tostring
    L11_2 = L4_2.item
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = false
    L8_2 = "model_not_found"
    return L7_2, L8_2
  end
  L7_2 = type
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if "string" == L7_2 then
    L8_2 = L6_2
    L7_2 = L6_2.upper
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2
    L7_2 = L7_2.sub
    L9_2 = 1
    L10_2 = 7
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if "WEAPON_" == L7_2 then
      L7_2 = type
      L8_2 = ResolveItemModel
      L7_2 = L7_2(L8_2)
      if "function" == L7_2 then
        L7_2 = ResolveItemModel
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L6_2 = L7_2
        end
      end
    end
  end
  L7_2 = GetHashKey
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = GetHashKey
  L9_2 = "w_me_dagger"
  L8_2 = L8_2(L9_2)
  if L7_2 == L8_2 then
    L7_2 = GetResourceState
    L8_2 = "striano_combat"
    L7_2 = L7_2(L8_2)
    if "started" == L7_2 then
      L7_2 = exports
      L7_2 = L7_2.striano_combat
      L8_2 = L7_2
      L7_2 = L7_2.getModelloArmaDaID
      L9_2 = A2_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L6_2 = L7_2
      end
    end
  end
  L7_2 = closeInventory2D
  L7_2()
  L7_2 = TriggerServerEvent
  L8_2 = "inv3d:removeItem"
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = Wait
  L8_2 = 25
  L7_2(L8_2)
  L7_2 = TriggerEvent
  L8_2 = "StartEditorFromPool"
  L9_2 = nil
  L10_2 = L6_2
  L11_2 = A1_2
  L12_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = true
  return L7_2
end
dropInventoryItem2D = L1_1
L1_1 = RegisterNUICallback
L2_1 = "inv2d:close"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closeInventory2D
  L2_2()
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "inv2d:refresh"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = refreshVisible
  L3_2 = true
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "inv2d:use"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = tostring
  if A0_2 then
    L3_2 = A0_2.invName
    if L3_2 then
      goto lbl_8
    end
  end
  L3_2 = ""
  ::lbl_8::
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  if A0_2 then
    L4_2 = A0_2.uid
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = ""
  ::lbl_16::
  L3_2 = L3_2(L4_2)
  L4_2 = isRuntimeInv
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L5_2.error = "runtime_read_only"
    L4_2(L5_2)
    return
  end
  L4_2 = useInventoryItem2D
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = A1_2
  L7_2 = {}
  L8_2 = true == L4_2
  L7_2.ok = L8_2
  L7_2.error = L5_2
  L6_2(L7_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "inv2d:drop"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = {}
    L3_2.ok = false
    L3_2.error = "closed"
    L2_2(L3_2)
    return
  end
  L2_2 = tostring
  if A0_2 then
    L3_2 = A0_2.invName
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = ""
  ::lbl_19::
  L2_2 = L2_2(L3_2)
  if "player" ~= L2_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L4_2.error = "player_only"
    L3_2(L4_2)
    return
  end
  L3_2 = tostring
  if A0_2 then
    L4_2 = A0_2.uid
    if L4_2 then
      goto lbl_36
    end
  end
  L4_2 = ""
  ::lbl_36::
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A0_2 or L6_2
  if A0_2 then
    L6_2 = A0_2.amount
  end
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 1
  end
  L4_2 = L4_2(L5_2)
  if "" == L2_2 or "" == L3_2 or L4_2 < 1 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "bad_data"
    L5_2(L6_2)
    return
  end
  if "player" ~= L2_2 then
    L5_2 = Inv2D
    L5_2 = L5_2.otherInv
    if L2_2 ~= L5_2 then
      L5_2 = A1_2
      L6_2 = {}
      L6_2.ok = false
      L6_2.error = "invalid_inventory"
      L5_2(L6_2)
      return
    end
  end
  L5_2 = isRuntimeInv
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "runtime_read_only"
    L5_2(L6_2)
    return
  end
  L5_2 = dropInventoryItem2D
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A1_2
  L8_2 = {}
  L9_2 = true == L5_2
  L8_2.ok = L9_2
  L8_2.error = L6_2
  L7_2(L8_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "inv2d:split"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = {}
    L3_2.ok = false
    L3_2.error = "closed"
    L2_2(L3_2)
    return
  end
  L2_2 = tostring
  if A0_2 then
    L3_2 = A0_2.invName
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = ""
  ::lbl_19::
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  if A0_2 then
    L4_2 = A0_2.uid
    if L4_2 then
      goto lbl_27
    end
  end
  L4_2 = ""
  ::lbl_27::
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = tonumber
  L6_2 = A0_2 or L6_2
  if A0_2 then
    L6_2 = A0_2.amount
  end
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0
  end
  L4_2 = L4_2(L5_2)
  if "" == L2_2 or "" == L3_2 or L4_2 < 1 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "bad_data"
    L5_2(L6_2)
    return
  end
  if "player" ~= L2_2 then
    L5_2 = Inv2D
    L5_2 = L5_2.otherInv
    if L2_2 ~= L5_2 then
      L5_2 = A1_2
      L6_2 = {}
      L6_2.ok = false
      L6_2.error = "invalid_inventory"
      L5_2(L6_2)
      return
    end
  end
  L5_2 = isRuntimeInv
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "runtime_read_only"
    L5_2(L6_2)
    return
  end
  L5_2 = TriggerServerEvent
  L6_2 = "inv3d:split"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "ignored"
  L10_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = SetTimeout
  L6_2 = 250
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = syncOne
    L1_3 = L2_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "inv2d:move"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if L2_2 then
    L2_2 = Inv2D
    L2_2 = L2_2.otherInv
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = false
  L3_2.error = "no_target"
  L2_2(L3_2)
  do return end
  ::lbl_16::
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = Inv2D
  L3_2 = L3_2.busyUntil
  if L2_2 < L3_2 then
    L3_2 = A1_2
    L4_2 = {}
    L4_2.ok = false
    L4_2.error = "busy"
    L3_2(L4_2)
    return
  end
  L3_2 = tostring
  if A0_2 then
    L4_2 = A0_2.fromInv
    if L4_2 then
      goto lbl_36
    end
  end
  L4_2 = ""
  ::lbl_36::
  L3_2 = L3_2(L4_2)
  L4_2 = tostring
  if A0_2 then
    L5_2 = A0_2.toInv
    if L5_2 then
      goto lbl_44
    end
  end
  L5_2 = ""
  ::lbl_44::
  L4_2 = L4_2(L5_2)
  L5_2 = tostring
  if A0_2 then
    L6_2 = A0_2.uid
    if L6_2 then
      goto lbl_52
    end
  end
  L6_2 = ""
  ::lbl_52::
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = tonumber
  L8_2 = A0_2 or L8_2
  if A0_2 then
    L8_2 = A0_2.amount
  end
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 1
  end
  L6_2 = L6_2(L7_2)
  if "" == L3_2 or "" == L4_2 or "" == L5_2 or L6_2 < 1 then
    L7_2 = A1_2
    L8_2 = {}
    L8_2.ok = false
    L8_2.error = "bad_data"
    L7_2(L8_2)
    return
  end
  L7_2 = "player" == L3_2
  L8_2 = Inv2D
  L8_2 = L8_2.otherInv
  L8_2 = L3_2 == L8_2 and "player" == L4_2
  if not L7_2 and not L8_2 then
    L9_2 = A1_2
    L10_2 = {}
    L10_2.ok = false
    L10_2.error = "invalid_route"
    L9_2(L10_2)
    return
  end
  if L7_2 then
    L9_2 = isRuntimeInv
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = A1_2
      L10_2 = {}
      L10_2.ok = false
      L10_2.error = "runtime_read_only"
      L9_2(L10_2)
      return
    end
  end
  L9_2 = Inv2D
  L10_2 = L2_2 + 200
  L9_2.busyUntil = L10_2
  if L8_2 then
    L9_2 = isRuntimeInv
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = TriggerServerEvent
      L10_2 = "inv3d:takeFromInvToPlayer"
      L11_2 = L3_2
      L12_2 = L5_2
      L13_2 = L6_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    else
      L9_2 = TriggerServerEvent
      L10_2 = "inv3d:sendToPlayer"
      L11_2 = L3_2
      L12_2 = L5_2
      L13_2 = L6_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  else
    L9_2 = TriggerServerEvent
    L10_2 = "inv3d:sendToLastShared"
    L11_2 = L3_2
    L12_2 = L5_2
    L13_2 = L6_2
    L14_2 = L4_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L9_2 = SendNUIMessage
  L10_2 = {}
  L10_2.action = "inv2d:busy"
  L10_2.value = true
  L9_2(L10_2)
  L9_2 = SetTimeout
  L10_2 = 350
  function L11_2()
    local L0_3, L1_3
    L0_3 = Inv2D
    L0_3 = L0_3.open
    if not L0_3 then
      return
    end
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.action = "inv2d:busy"
    L1_3.value = false
    L0_3(L1_3)
    L0_3 = refreshVisible
    L1_3 = true
    L0_3(L1_3)
  end
  L9_2(L10_2, L11_2)
  L9_2 = A1_2
  L10_2 = {}
  L10_2.ok = true
  L9_2(L10_2)
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = Inv2D
    L0_2 = L0_2.open
    if L0_2 then
      L0_2 = DisableControlAction
      L1_2 = 0
      L2_2 = 1
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DisableControlAction
      L1_2 = 0
      L2_2 = 2
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DisableControlAction
      L1_2 = 0
      L2_2 = 24
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DisableControlAction
      L1_2 = 0
      L2_2 = 25
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DisableControlAction
      L1_2 = 0
      L2_2 = 37
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DisableControlAction
      L1_2 = 0
      L2_2 = 200
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = IsDisabledControlJustPressed
      L1_2 = 0
      L2_2 = 200
      L0_2 = L0_2(L1_2, L2_2)
      if L0_2 then
        L0_2 = closeInventory2D
        L0_2()
      end
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
    else
      L0_2 = Wait
      L1_2 = 500
      L0_2(L1_2)
    end
  end
end
L1_1(L2_1)
L1_1 = RegisterNUICallback
L2_1 = "inv2d:merge"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = {}
    L3_2.ok = false
    L3_2.error = "closed"
    L2_2(L3_2)
    return
  end
  L2_2 = tostring
  if A0_2 then
    L3_2 = A0_2.invName
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = ""
  ::lbl_19::
  L2_2 = L2_2(L3_2)
  L3_2 = tostring
  if A0_2 then
    L4_2 = A0_2.fromUid
    if L4_2 then
      goto lbl_27
    end
  end
  L4_2 = ""
  ::lbl_27::
  L3_2 = L3_2(L4_2)
  L4_2 = tostring
  if A0_2 then
    L5_2 = A0_2.toUid
    if L5_2 then
      goto lbl_35
    end
  end
  L5_2 = ""
  ::lbl_35::
  L4_2 = L4_2(L5_2)
  if "" == L2_2 or "" == L3_2 or "" == L4_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "bad_data"
    L5_2(L6_2)
    return
  end
  if L3_2 == L4_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "same_uid"
    L5_2(L6_2)
    return
  end
  if "player" ~= L2_2 then
    L5_2 = Inv2D
    L5_2 = L5_2.otherInv
    if L2_2 ~= L5_2 then
      L5_2 = A1_2
      L6_2 = {}
      L6_2.ok = false
      L6_2.error = "invalid_inventory"
      L5_2(L6_2)
      return
    end
  end
  L5_2 = isRuntimeInv
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.ok = false
    L6_2.error = "runtime_read_only"
    L5_2(L6_2)
    return
  end
  L5_2 = TriggerServerEvent
  L6_2 = "inv3d:merge"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = SetTimeout
  L6_2 = 250
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = syncOne
    L1_3 = L2_2
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "inv2d:saveLayout"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = Inv2D
  L2_2 = L2_2.open
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = {}
    L3_2.ok = false
    L3_2.error = "closed"
    L2_2(L3_2)
    return
  end
  L2_2 = tostring
  if A0_2 then
    L3_2 = A0_2.invName
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = ""
  ::lbl_19::
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2 or L3_2
  if A0_2 then
    L3_2 = A0_2.positions
  end
  if "" ~= L2_2 then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if "table" == L4_2 then
      goto lbl_37
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.ok = false
  L5_2.error = "bad_data"
  L4_2(L5_2)
  do return end
  ::lbl_37::
  if "player" ~= L2_2 then
    L4_2 = Inv2D
    L4_2 = L4_2.otherInv
    if L2_2 ~= L4_2 then
      L4_2 = A1_2
      L5_2 = {}
      L5_2.ok = false
      L5_2.error = "invalid_inventory"
      L4_2(L5_2)
      return
    end
  end
  L4_2 = isRuntimeInv
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A1_2
    L5_2 = {}
    L5_2.ok = false
    L5_2.error = "runtime_read_only"
    L4_2(L5_2)
    return
  end
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = type
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if "table" == L11_2 then
      L11_2 = tostring
      L12_2 = L9_2
      L11_2 = L11_2(L12_2)
      L12_2 = {}
      L13_2 = math
      L13_2 = L13_2.max
      L14_2 = 0
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = tonumber
      L17_2 = L10_2.x
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = 0
      end
      L15_2, L16_2, L17_2 = L15_2(L16_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L12_2.x = L13_2
      L13_2 = math
      L13_2 = L13_2.max
      L14_2 = 0
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = tonumber
      L17_2 = L10_2.y
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = 0
      end
      L15_2, L16_2, L17_2 = L15_2(L16_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L12_2.y = L13_2
      L13_2 = math
      L13_2 = L13_2.max
      L14_2 = 1
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = tonumber
      L17_2 = L10_2.w
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = 1
      end
      L15_2, L16_2, L17_2 = L15_2(L16_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L12_2.w = L13_2
      L13_2 = math
      L13_2 = L13_2.max
      L14_2 = 1
      L15_2 = math
      L15_2 = L15_2.floor
      L16_2 = tonumber
      L17_2 = L10_2.h
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = 1
      end
      L15_2, L16_2, L17_2 = L15_2(L16_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L12_2.h = L13_2
      L4_2[L11_2] = L12_2
    end
  end
  L5_2 = TriggerServerEvent
  L6_2 = "inv3d:saveLayout"
  L7_2 = L2_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A1_2
  L6_2 = {}
  L6_2.ok = true
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "playMoveSound"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "CLICK_BACK"
  L5_2 = "WEB_NAVIGATION_SOUNDS_PHONE"
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2
  L3_2 = {}
  L3_2.ok = true
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = SetNuiFocusKeepInput
  L2_2 = false
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
