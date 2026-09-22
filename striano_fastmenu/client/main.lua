local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L0_1.title = "FastMenu"
L1_1 = {}
L0_1.items = L1_1
L0_1.position = "center"
L0_1.autoClose = false
L0_1.visible = false
L0_1.hoverCooldown = 300
L1_1 = false
L2_1 = exports
L3_1 = "closeWithX"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = true == A0_2
  L1_1 = L1_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "setCloseWithX"
  L3_2 = L1_1
  L2_2.enabled = L3_2
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = {}
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = L0_1.title
  L0_2.title = L1_2
  L1_2 = L0_1.position
  L0_2.position = L1_2
  L1_2 = {}
  L0_2.items = L1_2
  L1_2 = ipairs
  L2_2 = L0_1.items
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2.items
    L9_2 = {}
    L10_2 = L6_2.id
    L9_2.id = L10_2
    L10_2 = L6_2.label
    L9_2.label = L10_2
    L10_2 = L6_2.color
    L9_2.color = L10_2
    L10_2 = L6_2.hoverInfo
    if not L10_2 then
      L10_2 = nil
    end
    L9_2.hoverInfo = L10_2
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = L0_1.items
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.visible
  if not L0_2 then
    while true do
      L0_2 = IsControlPressed
      L1_2 = 0
      L2_2 = 25
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L0_2 = IsDisabledControlPressed
        L1_2 = 0
        L2_2 = 25
        L0_2 = L0_2(L1_2, L2_2)
        if not L0_2 then
          break
        end
      end
      L0_2 = Wait
      L1_2 = 0
      L0_2(L1_2)
    end
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_1.visible = true
    L0_2 = SetNuiFocus
    L1_2 = true
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.type = "openMenu"
    L2_2 = L3_1
    L2_2 = L2_2()
    L1_2.data = L2_2
    L0_2(L1_2)
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      while true do
        L0_3 = L0_1.visible
        if not L0_3 then
          break
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 322
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 25
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsDisabledControlPressed
            L1_3 = 0
            L2_3 = 322
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsDisabledControlPressed
              L1_3 = 0
              L2_3 = 25
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                goto lbl_36
              end
            end
          end
        end
        L0_3 = closeMenu
        L0_3()
        ::lbl_36::
      end
    end
    L0_2(L1_2)
  else
    L0_1.visible = true
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.type = "updateMenu"
    L2_2 = L3_1
    L2_2 = L2_2()
    L1_2.data = L2_2
    L0_2(L1_2)
  end
end
openMenu = L5_1
L5_1 = exports
L6_1 = "open"
function L7_1()
  local L0_2, L1_2
  L0_2 = openMenu
  L0_2()
end
L5_1(L6_1, L7_1)
L5_1 = exports
L6_1 = "opened"
function L7_1()
  local L0_2, L1_2
  L0_2 = L0_1.visible
  return L0_2
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2, L2_2
  L0_1.visible = false
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "closeMenu"
  L0_2(L1_2)
end
closeMenu = L5_1
L5_1 = exports
L6_1 = "close"
function L7_1()
  local L0_2, L1_2
  L0_2 = closeMenu
  L0_2()
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if nil == A2_2 then
    A2_2 = L0_1.autoClose
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L0_1.items
  L5_2 = {}
  L6_2 = L0_1.items
  L6_2 = #L6_2
  L6_2 = L6_2 + 1
  L5_2.id = L6_2
  L5_2.label = A0_2
  L5_2.callback = A1_2
  L5_2.hoverCallback = nil
  L5_2.autoClose = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = L0_1.visible
  if L3_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.type = "updateMenu"
    L5_2 = L3_1
    L5_2 = L5_2()
    L4_2.data = L5_2
    L3_2(L4_2)
  end
end
addMenuItem = L5_1
L5_1 = exports
L6_1 = "addMenuItem"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = addMenuItemAdvanced
  L4_2 = {}
  L4_2.label = A0_2
  L4_2.onClick = A1_2
  L4_2.autoClose = A2_2
  L3_2(L4_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if nil == A3_2 then
    A3_2 = L0_1.autoClose
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L0_1.items
  L6_2 = {}
  L7_2 = L0_1.items
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L6_2.id = L7_2
  L6_2.label = A0_2
  L6_2.callback = A1_2
  L6_2.hoverCallback = A2_2
  L6_2.autoClose = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = L0_1.visible
  if L4_2 then
    L4_2 = SendNUIMessage
    L5_2 = {}
    L5_2.type = "updateMenu"
    L6_2 = L3_1
    L6_2 = L6_2()
    L5_2.data = L6_2
    L4_2(L5_2)
  end
end
addMenuItemHover = L5_1
L5_1 = exports
L6_1 = "addMenuItemHover"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = addMenuItemAdvanced
  L6_2 = {}
  L6_2.label = A0_2
  L6_2.onClick = A1_2
  L6_2.onHover = A2_2
  L6_2.autoClose = A3_2
  L6_2.hoverInfo = A4_2
  L5_2(L6_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return
  end
  L1_2 = tostring
  L2_2 = A0_2.label
  if not L2_2 then
    L2_2 = "Item"
  end
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.onClick
  L3_2 = A0_2.onHover
  L4_2 = A0_2.autoClose
  L5_2 = A0_2.hoverInfo
  L6_2 = A0_2.color
  if nil == L4_2 then
    L4_2 = L0_1.autoClose
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L0_1.items
  L9_2 = {}
  L10_2 = L0_1.items
  L10_2 = #L10_2
  L10_2 = L10_2 + 1
  L9_2.id = L10_2
  L9_2.label = L1_2
  L9_2.callback = L2_2
  L9_2.hoverCallback = L3_2
  L9_2.autoClose = L4_2
  L9_2.hoverInfo = L5_2
  L9_2.color = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = L0_1.visible
  if L7_2 then
    L7_2 = SendNUIMessage
    L8_2 = {}
    L8_2.type = "updateMenu"
    L9_2 = L3_1
    L9_2 = L9_2()
    L8_2.data = L9_2
    L7_2(L8_2)
  end
end
addMenuItemAdvanced = L5_1
L5_1 = exports
L6_1 = "addMenuItemAdvanced"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = addMenuItemAdvanced
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = L0_1.items
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A0_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = L0_1.items
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      break
    end
  end
  L1_2 = ipairs
  L2_2 = L0_1.items
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2.id = L5_2
  end
  L1_2 = L0_1.visible
  if L1_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "updateMenu"
    L3_2 = L3_1
    L3_2 = L3_2()
    L2_2.data = L3_2
    L1_2(L2_2)
  end
end
removeMenuItem = L5_1
L5_1 = exports
L6_1 = "removeMenuItem"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = removeMenuItem
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L0_1.items = L0_2
  L0_2 = {}
  L2_1 = L0_2
  L0_2 = L0_1.visible
  if L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.type = "updateMenu"
    L2_2 = L3_1
    L2_2 = L2_2()
    L1_2.data = L2_2
    L0_2(L1_2)
  end
end
clearMenu = L5_1
L5_1 = exports
L6_1 = "clearMenu"
function L7_1()
  local L0_2, L1_2
  L0_2 = clearMenu
  L0_2()
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.center = true
  L1_2["top-left"] = true
  L1_2["top-right"] = true
  L1_2["bottom-left"] = true
  L1_2["bottom-right"] = true
  L2_2 = L1_2[A0_2]
  if L2_2 then
    L0_1.position = A0_2
  end
  L2_2 = L0_1.visible
  if L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.type = "updateMenu"
    L4_2 = L3_1
    L4_2 = L4_2()
    L3_2.data = L4_2
    L2_2(L3_2)
  end
end
setMenuPosition = L5_1
L5_1 = exports
L6_1 = "setMenuPosition"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = setMenuPosition
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2
  L1_2 = true == A0_2
  L0_1.autoClose = L1_2
end
setAutoClose = L5_1
L5_1 = exports
L6_1 = "setAutoClose"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = setAutoClose
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 300
  end
  if A0_2 < 0 then
    A0_2 = 0
  end
  L0_1.hoverCooldown = A0_2
end
setHoverCooldown = L5_1
L5_1 = exports
L6_1 = "setHoverCooldown"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = setHoverCooldown
  L2_2 = A0_2
  L1_2(L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "menuItemClicked"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2 or nil
  if A0_2 then
    L2_2 = A0_2.itemId
  end
  L3_2 = L4_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A1_2
    L5_2 = "ok"
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2.callback
  L5_2 = L3_2.autoClose
  L6_2 = L0_1.items
  if L4_2 then
    L7_2 = L4_2
    L7_2()
  end
  if L5_2 then
    L7_2 = L0_1.items
    if L7_2 == L6_2 then
      L7_2 = closeMenu
      L7_2()
    end
  end
  L7_2 = A1_2
  L8_2 = "ok"
  L7_2(L8_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "menuItemHovered"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2 or nil
  if A0_2 then
    L2_2 = A0_2.itemId
  end
  L3_2 = L4_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.hoverCallback
    if L4_2 then
      L4_2 = GetGameTimer
      L4_2 = L4_2()
      L5_2 = L2_1
      L5_2 = L5_2[L2_2]
      if not L5_2 then
        L5_2 = 0
      end
      L6_2 = L4_2 - L5_2
      L7_2 = L0_1.hoverCooldown
      if L6_2 >= L7_2 then
        L6_2 = L2_1
        L6_2[L2_2] = L4_2
        L6_2 = L3_2.hoverCallback
        L6_2()
      end
    end
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "closeMenu"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = closeMenu
  L2_2()
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "cancelAnim"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "stopAnim"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L5_1(L6_1, L7_1)
