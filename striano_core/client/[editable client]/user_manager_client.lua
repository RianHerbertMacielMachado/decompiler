local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L1_1 = nil
L2_1 = nil
L3_1 = nil
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A1_2 then
    A1_2 = ""
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if "skin" ~= L6_2 then
      L8_2 = A1_2
      L9_2 = tostring
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      L8_2 = L8_2 .. L9_2
      L9_2 = type
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if "table" == L9_2 then
        L9_2 = next
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if nil == L9_2 then
          L9_2 = exports
          L9_2 = L9_2.striano_fastmenu
          L10_2 = L9_2
          L9_2 = L9_2.addMenuItem
          L11_2 = L8_2
          L12_2 = " = []"
          L11_2 = L11_2 .. L12_2
          function L12_2()
            local L0_3, L1_3
          end
          L13_2 = false
          L9_2(L10_2, L11_2, L12_2, L13_2)
        else
          L9_2 = L4_1
          L10_2 = L7_2
          L11_2 = L8_2
          L12_2 = "."
          L11_2 = L11_2 .. L12_2
          L9_2(L10_2, L11_2)
        end
      else
        L9_2 = exports
        L9_2 = L9_2.striano_fastmenu
        L10_2 = L9_2
        L9_2 = L9_2.addMenuItem
        L11_2 = L8_2
        L12_2 = " = "
        L13_2 = tostring
        L14_2 = L7_2
        L13_2 = L13_2(L14_2)
        L11_2 = L11_2 .. L12_2 .. L13_2
        function L12_2()
          local L0_3, L1_3
        end
        L13_2 = false
        L9_2(L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
end
icanDeleteUser = false
L5_1 = RegisterCommand
L6_1 = "icanDeleteUser"
function L7_1()
  local L0_2, L1_2
  L0_2 = icanDeleteUser
  L0_2 = not L0_2
  icanDeleteUser = L0_2
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "Are you sure you want to delete "
  L4_2 = A0_2.name
  L5_2 = "?"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2()
    local L0_3, L1_3
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItemAdvanced
  L3_2 = {}
  L3_2.label = "[ YES, DELETE USER ]"
  L3_2.color = "#ff3b3b"
  L3_2.autoClose = false
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = icanDeleteUser
    if L0_3 then
      L0_3 = TriggerServerEvent
      L1_3 = "striano:deleteUserFromAdmin"
      L2_3 = A0_2.identifier
      L0_3(L1_3, L2_3)
    else
      L0_3 = print
      L1_3 = "You can't delete user."
      L0_3(L1_3)
    end
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
  end
  L3_2.onClick = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ NO, GO BACK ]"
  function L4_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1 = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "\226\134\144 Back"
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L0_3()
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "[ USER: "
  L4_2 = A0_2.name
  L5_2 = " ]"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2()
    local L0_3, L1_3
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L4_1
  L2_2 = A0_2.data
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItemAdvanced
  L3_2 = {}
  L4_2 = "[ DELETE USER ] "
  L5_2 = A0_2.name
  L4_2 = L4_2 .. L5_2
  L3_2.label = L4_2
  L3_2.color = "#ff3b3b"
  L3_2.autoClose = false
  function L4_2()
    local L0_3, L1_3
    L0_3 = L3_1
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L3_2.onClick = L4_2
  L1_2(L2_2, L3_2)
end
L2_1 = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "[ PLAYERS LIST ]"
  function L3_2()
    local L0_3, L1_3
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = ipairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItem
    L9_2 = "\226\128\162 "
    L10_2 = L6_2.name
    L9_2 = L9_2 .. L10_2
    function L10_2()
      local L0_3, L1_3
      L0_3 = L2_1
      L1_3 = L6_2
      L0_3(L1_3)
    end
    L11_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
L1_1 = L5_1
L5_1 = RegisterNetEvent
L6_1 = "striano:openUsersMenu"
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  L0_1 = L1_2
  L1_2 = L1_1
  L1_2()
end
L5_1(L6_1, L7_1)
