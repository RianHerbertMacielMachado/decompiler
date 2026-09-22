local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = 10.0
L1_1 = CreateThread
L2_1 = Wait
L3_1 = nil
L4_1 = {}
L5_1 = {}
L6_1 = false
L7_1 = nil
L8_1 = "ldoor"
L9_1 = false
L10_1 = "normal"
L11_1 = 1
L12_1 = {}
L13_1 = ""
L14_1 = ""
L14_1 = "locked"
L15_1 = L1_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L1_2 = 1500
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_core
  L1_2 = L0_2
  L0_2 = L0_2.TriggerServerCallback
  L2_2 = "guille_doorlock:cb:getDoors"
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L4_1 = A0_3
    L5_1 = A1_3
    L2_3 = pairs
    L3_3 = L4_1
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.status
      if nil == L8_3 then
        L8_3 = L5_1
        L8_3[L6_3] = "locked"
      end
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
L15_1(L16_1)
L15_1 = RegisterNetEvent
L16_1 = "guille_doorlock:client:setUpDoor"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  function L0_2()
    local L0_3, L1_3
    L0_3 = "locked"
    L14_1 = L0_3
    L0_3 = "normal"
    L10_1 = L0_3
    L0_3 = 1
    L11_1 = L0_3
    L0_3 = ""
    L12_1 = L0_3
    L0_3 = ""
    L13_1 = L0_3
  end
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.closeMenu
    L0_3(L1_3)
    L0_3 = SetTimeout
    L1_3 = 100
    function L2_3()
      local L0_4, L1_4
      L0_4 = ExecuteCommand
      L1_4 = L8_1
      L0_4(L1_4)
    end
    L0_3(L1_3, L2_3)
  end
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.clearMenu
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.addMenuItem
    L2_3 = "Slide"
    function L3_3()
      local L0_4, L1_4
      L0_4 = "slide"
      L10_1 = L0_4
      L0_4 = L1_2
      L0_4()
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.addMenuItem
    L2_3 = "Normal"
    function L3_3()
      local L0_4, L1_4
      L0_4 = "normal"
      L10_1 = L0_4
      L0_4 = L1_2
      L0_4()
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.addMenuItem
    L2_3 = "Double"
    function L3_3()
      local L0_4, L1_4
      L0_4 = "double"
      L10_1 = L0_4
      L0_4 = L1_2
      L0_4()
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.openMenu
    L0_3(L1_3)
  end
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.clearMenu
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.addMenuItem
    L2_3 = "Opened"
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = nil
      L14_1 = L0_4
      L0_4 = exports
      L0_4 = L0_4.striano_combat
      L1_4 = L0_4
      L0_4 = L0_4.submexError
      L2_4 = "Default: ~h~Opened"
      L0_4(L1_4, L2_4)
      L0_4 = L1_2
      L0_4()
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.addMenuItem
    L2_3 = "Closed"
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = "locked"
      L14_1 = L0_4
      L0_4 = exports
      L0_4 = L0_4.striano_combat
      L1_4 = L0_4
      L0_4 = L0_4.submexError
      L2_4 = "Default: ~h~Closed"
      L0_4(L1_4, L2_4)
      L0_4 = L1_2
      L0_4()
    end
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.openMenu
    L0_3(L1_3)
  end
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.clearMenu
  L4_2(L5_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "[Type] "
  L7_2 = tostring
  L8_2 = L10_1
  if not L8_2 then
    L8_2 = "normal"
  end
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.closeMenu
    L0_3(L1_3)
    L0_3 = SetTimeout
    L1_3 = 100
    function L2_3()
      local L0_4, L1_4
      L0_4 = L2_2
      L0_4()
    end
    L0_3(L1_3, L2_3)
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "[State] "
  L7_2 = tostring
  L8_2 = L14_1
  if not L8_2 then
    L8_2 = "opened"
  end
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.closeMenu
    L0_3(L1_3)
    L0_3 = SetTimeout
    L1_3 = 100
    function L2_3()
      local L0_4, L1_4
      L0_4 = L3_2
      L0_4()
    end
    L0_3(L1_3, L2_3)
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "Distance: "
  L7_2 = tostring
  L8_2 = L11_1
  if not L8_2 then
    L8_2 = 1
  end
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = exports
    L0_3 = L0_3.striano_core
    L1_3 = L0_3
    L0_3 = L0_3.OpenInput
    L2_3 = "Distance like 1 or 2"
    L3_3 = tostring
    L4_3 = L11_1
    if not L4_3 then
      L4_3 = ""
    end
    L3_3 = L3_3(L4_3)
    L4_3 = {}
    L4_3.maxLen = 8
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L1_3 = tonumber
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L0_3 = L1_3
    if not L0_3 then
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "Distance not valid."
      L1_3(L2_3, L3_3)
      return
    end
    L11_1 = L0_3
    L1_3 = L1_2
    L1_3()
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "Key: "
  L7_2 = tostring
  L8_2 = L13_1
  if not L8_2 then
    L8_2 = ""
  end
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = exports
    L0_3 = L0_3.striano_core
    L1_3 = L0_3
    L0_3 = L0_3.OpenInput
    L2_3 = "Key ID"
    L3_3 = tostring
    L4_3 = L13_1
    if not L4_3 then
      L4_3 = ""
    end
    L3_3 = L3_3(L4_3)
    L4_3 = {}
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if nil == L0_3 then
      return
    end
    L1_3 = tostring
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L13_1 = L1_3
    L1_3 = L1_2
    L1_3()
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "Pin: "
  L7_2 = tostring
  L8_2 = L12_1
  if not L8_2 then
    L8_2 = ""
  end
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = exports
    L0_3 = L0_3.striano_core
    L1_3 = L0_3
    L0_3 = L0_3.OpenInput
    L2_3 = "Pin"
    L3_3 = tostring
    L4_3 = L12_1
    if not L4_3 then
      L4_3 = ""
    end
    L3_3 = L3_3(L4_3)
    L4_3 = {}
    L4_3.maxLen = 16
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if nil == L0_3 then
      return
    end
    L1_3 = tostring
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L12_1 = L1_3
    L1_3 = L1_2
    L1_3()
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "[Create]"
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = addDoor
    L1_3 = L10_1
    L2_3 = L11_1
    L3_3 = L12_1
    L4_3 = L13_1
    L5_3 = L14_1
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.closeMenu
    L0_3(L1_3)
    L0_3 = L0_2
    L0_3()
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.openMenu
  L4_2(L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "guille_doorlock:client:deleteDoor"
function L17_1()
  local L0_2, L1_2
  L0_2 = L1_1
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3
    while true do
      L0_3 = 1
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = RayCastGamePlayCamera
      L4_3 = 5000.0
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      L6_3 = false
      L7_3 = DrawLine
      L8_3 = L2_3
      L9_3 = L4_3
      L10_3 = 255
      L11_3 = 0
      L12_3 = 0
      L13_3 = 255
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L7_3 = draw
      L8_3 = 38
      L9_3 = "Remove"
      L7_3(L8_3, L9_3)
      L7_3 = pairs
      L8_3 = L4_1
      L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
      for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
        L13_3 = L12_3._type
        if "double" ~= L13_3 then
          L13_3 = vector3
          L14_3 = L12_3.doorCoords
          L14_3 = L14_3.x
          L15_3 = L12_3.doorCoords
          L15_3 = L15_3.y
          L16_3 = L12_3.doorCoords
          L16_3 = L16_3.z
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L14_3 = DrawMarker
          L15_3 = 28
          L16_3 = L13_3
          L17_3 = 0.0
          L18_3 = 0.0
          L19_3 = 0.0
          L20_3 = 0.0
          L21_3 = 180.0
          L22_3 = 0.0
          L23_3 = 0.18
          L24_3 = 0.18
          L25_3 = 0.18
          L26_3 = 255
          L27_3 = 0
          L28_3 = 0
          L29_3 = 255
          L30_3 = false
          L31_3 = true
          L32_3 = 2
          L33_3 = nil
          L34_3 = nil
          L35_3 = false
          L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
        else
          L13_3 = vector3
          L14_3 = L12_3._textCoords
          L14_3 = L14_3.x
          L15_3 = L12_3._textCoords
          L15_3 = L15_3.y
          L16_3 = L12_3._textCoords
          L16_3 = L16_3.z
          L13_3 = L13_3(L14_3, L15_3, L16_3)
          L14_3 = DrawMarker
          L15_3 = 28
          L16_3 = L13_3
          L17_3 = 0.0
          L18_3 = 0.0
          L19_3 = 0.0
          L20_3 = 0.0
          L21_3 = 180.0
          L22_3 = 0.0
          L23_3 = 0.18
          L24_3 = 0.18
          L25_3 = 0.18
          L26_3 = 255
          L27_3 = 0
          L28_3 = 0
          L29_3 = 255
          L30_3 = false
          L31_3 = true
          L32_3 = 2
          L33_3 = nil
          L34_3 = nil
          L35_3 = false
          L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3)
        end
      end
      L7_3 = IsControlJustPressed
      L8_3 = 1
      L9_3 = 38
      L7_3 = L7_3(L8_3, L9_3)
      if L7_3 then
        L7_3 = IsPedRagdoll
        L8_3 = L1_3
        L7_3 = L7_3(L8_3)
        if not L7_3 then
          L7_3 = IsNuiFocusKeepingInput
          L7_3 = L7_3()
          if not L7_3 then
            L7_3 = IsNuiFocused
            L7_3 = L7_3()
            if not L7_3 then
              L7_3 = pairs
              L8_3 = L4_1
              L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
              for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
                L13_3 = L12_3._type
                if "double" ~= L13_3 then
                  L13_3 = vector3
                  L14_3 = L12_3.doorCoords
                  L14_3 = L14_3.x
                  L15_3 = L12_3.doorCoords
                  L15_3 = L15_3.y
                  L16_3 = L12_3.doorCoords
                  L16_3 = L16_3.z
                  L13_3 = L13_3(L14_3, L15_3, L16_3)
                  L14_3 = L4_3 - L13_3
                  L14_3 = #L14_3
                  L15_3 = L0_1
                  if L14_3 < L15_3 then
                    L15_3 = TriggerServerEvent
                    L16_3 = "guille_doorlock:server:syncRemove"
                    L17_3 = L11_3
                    L15_3(L16_3, L17_3)
                    L6_3 = true
                  end
                else
                  L13_3 = vector3
                  L14_3 = L12_3._textCoords
                  L14_3 = L14_3.x
                  L15_3 = L12_3._textCoords
                  L15_3 = L15_3.y
                  L16_3 = L12_3._textCoords
                  L16_3 = L16_3.z
                  L13_3 = L13_3(L14_3, L15_3, L16_3)
                  L14_3 = L4_3 - L13_3
                  L14_3 = #L14_3
                  L15_3 = L0_1
                  if L14_3 < L15_3 then
                    L15_3 = TriggerServerEvent
                    L16_3 = "guille_doorlock:server:syncRemove"
                    L17_3 = L11_3
                    L15_3(L16_3, L17_3)
                    L6_3 = true
                  end
                end
              end
              if L6_3 then
                L7_3 = print
                L8_3 = "Door Deleted"
                L7_3(L8_3)
                break
              else
                L7_3 = print
                L8_3 = "No door detected."
                L7_3(L8_3)
                break
              end
            end
          end
        end
      end
      L7_3 = IsControlJustPressed
      L8_3 = 1
      L9_3 = 73
      L7_3 = L7_3(L8_3, L9_3)
      if L7_3 then
        break
      end
      L7_3 = L2_1
      L8_3 = L0_3
      L7_3(L8_3)
    end
  end
  L0_2(L1_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "guille_doorlock:client:removeGlobDoor"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = L4_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = AddEventHandler
L16_1 = "onResourceStop"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = SetEntityDrawOutline
    L2_2 = L3_1
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L15_1(L16_1, L17_1)
function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  if not A1_2 then
    A1_2 = 1
  end
  if "double" ~= A0_2 then
    L5_2 = L1_1
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
      while true do
        L0_3 = 1
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = GetEntityCoords
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        L3_3 = RayCastGamePlayCamera
        L4_3 = 5000.0
        L3_3, L4_3, L5_3 = L3_3(L4_3)
        L6_3 = IsEntityAnObject
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = draw
          L7_3 = 38
          L8_3 = "Add"
          L6_3(L7_3, L8_3)
          L6_3 = DrawLine
          L7_3 = L2_3
          L8_3 = L4_3
          L9_3 = 0
          L10_3 = 255
          L11_3 = 34
          L12_3 = 255
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
          L6_3 = L3_1
          if L6_3 ~= L5_3 then
            L6_3 = SetEntityDrawOutline
            L7_3 = L3_1
            L8_3 = false
            L6_3(L7_3, L8_3)
            L3_1 = L5_3
          end
          L6_3 = IsControlJustPressed
          L7_3 = 1
          L8_3 = 38
          L6_3 = L6_3(L7_3, L8_3)
          if L6_3 then
            L6_3 = IsPedRagdoll
            L7_3 = L1_3
            L6_3 = L6_3(L7_3)
            if not L6_3 then
              L6_3 = IsNuiFocusKeepingInput
              L6_3 = L6_3()
              if not L6_3 then
                L6_3 = IsNuiFocused
                L6_3 = L6_3()
                if not L6_3 then
                  L6_3 = GetEntityCoords
                  L7_3 = L5_3
                  L6_3 = L6_3(L7_3)
                  L7_3 = GetEntityModel
                  L8_3 = L5_3
                  L7_3 = L7_3(L8_3)
                  L8_3 = GetEntityHeading
                  L9_3 = L5_3
                  L8_3 = L8_3(L9_3)
                  L9_3 = L4_3
                  L10_3 = A4_2
                  if nil == L10_3 then
                    L10_3 = TriggerServerEvent
                    L11_3 = "guille_doorlock:server:addDoor"
                    L12_3 = L6_3
                    L13_3 = L7_3
                    L14_3 = L8_3
                    L15_3 = A0_2
                    L16_3 = L9_3
                    L17_3 = A1_2
                    L18_3 = A2_2
                    L19_3 = A3_2
                    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                  else
                    L10_3 = TriggerServerEvent
                    L11_3 = "guille_doorlock:server:addDoor"
                    L12_3 = L6_3
                    L13_3 = L7_3
                    L14_3 = L8_3
                    L15_3 = A0_2
                    L16_3 = L9_3
                    L17_3 = A1_2
                    L18_3 = A2_2
                    L19_3 = A3_2
                    L20_3 = A4_2
                    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                  L10_3 = SetEntityDrawOutline
                  L11_3 = L5_3
                  L12_3 = false
                  L10_3(L11_3, L12_3)
                  break
                end
              end
            end
          end
          L6_3 = IsControlPressed
          L7_3 = 0
          L8_3 = 73
          L6_3 = L6_3(L7_3, L8_3)
          if not L6_3 then
            L6_3 = IsControlPressed
            L7_3 = 1
            L8_3 = 73
            L6_3 = L6_3(L7_3, L8_3)
            if not L6_3 then
              goto lbl_113
            end
          end
          L6_3 = SetEntityDrawOutline
          L7_3 = L5_3
          L8_3 = false
          L6_3(L7_3, L8_3)
          do break end
          ::lbl_113::
          L6_3 = SetEntityDrawOutline
          L7_3 = L5_3
          L8_3 = true
          L6_3(L7_3, L8_3)
        else
          L6_3 = L3_1
          if L6_3 ~= L5_3 then
            L6_3 = SetEntityDrawOutline
            L7_3 = L3_1
            L8_3 = false
            L6_3(L7_3, L8_3)
            L3_1 = L5_3
          end
        end
        L6_3 = L2_1
        L7_3 = L0_3
        L6_3(L7_3)
      end
    end
    L5_2(L6_2)
  else
    L5_2 = {}
    L6_2 = {}
    L7_2 = L1_1
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
      while true do
        L0_3 = 1
        L1_3 = PlayerPedId
        L1_3 = L1_3()
        L2_3 = GetEntityCoords
        L3_3 = L1_3
        L2_3 = L2_3(L3_3)
        L3_3 = RayCastGamePlayCamera
        L4_3 = 5000.0
        L3_3, L4_3, L5_3 = L3_3(L4_3)
        L6_3 = IsEntityAnObject
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        if L6_3 then
          L6_3 = pairs
          L7_3 = L6_2
          L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
          for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
            L12_3 = SetEntityDrawOutline
            L13_3 = L11_3
            L14_3 = true
            L12_3(L13_3, L14_3)
          end
          L6_3 = L5_2
          L6_3 = #L6_3
          if 2 ~= L6_3 then
            L6_3 = DrawLine
            L7_3 = L2_3
            L8_3 = L4_3
            L9_3 = 0
            L10_3 = 255
            L11_3 = 34
            L12_3 = 255
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            L6_3 = draw
            L7_3 = 38
            L8_3 = "Add"
            L6_3(L7_3, L8_3)
          else
            L6_3 = DrawLine
            L7_3 = L2_3
            L8_3 = L4_3
            L9_3 = 0
            L10_3 = 255
            L11_3 = 34
            L12_3 = 255
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
            L6_3 = draw
            L7_3 = 38
            L8_3 = "Confirm 3D position"
            L6_3(L7_3, L8_3)
          end
          L3_1 = L5_3
          L6_3 = IsControlJustPressed
          L7_3 = 1
          L8_3 = 38
          L6_3 = L6_3(L7_3, L8_3)
          if L6_3 then
            L6_3 = IsPedRagdoll
            L7_3 = L1_3
            L6_3 = L6_3(L7_3)
            if not L6_3 then
              L6_3 = IsNuiFocusKeepingInput
              L6_3 = L6_3()
              if not L6_3 then
                L6_3 = IsNuiFocused
                L6_3 = L6_3()
                if not L6_3 then
                  L6_3 = GetEntityCoords
                  L7_3 = L5_3
                  L6_3 = L6_3(L7_3)
                  L7_3 = GetEntityModel
                  L8_3 = L5_3
                  L7_3 = L7_3(L8_3)
                  L8_3 = GetEntityHeading
                  L9_3 = L5_3
                  L8_3 = L8_3(L9_3)
                  L9_3 = L4_3
                  L10_3 = L5_2
                  L10_3 = #L10_3
                  if 2 == L10_3 then
                    L10_3 = pairs
                    L11_3 = L6_2
                    L10_3, L11_3, L12_3, L13_3 = L10_3(L11_3)
                    for L14_3, L15_3 in L10_3, L11_3, L12_3, L13_3 do
                      L16_3 = SetEntityDrawOutline
                      L17_3 = L15_3
                      L18_3 = false
                      L16_3(L17_3, L18_3)
                    end
                    L10_3 = {}
                    L6_2 = L10_3
                    L10_3 = TriggerServerEvent
                    L11_3 = "guille_doorlock:server:addDoubleDoor"
                    L12_3 = L5_2
                    L13_3 = A0_2
                    L14_3 = L9_3
                    L15_3 = A1_2
                    L16_3 = A2_2
                    L17_3 = A3_2
                    L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
                    L10_3 = {}
                    L5_2 = L10_3
                    break
                  else
                    L10_3 = table
                    L10_3 = L10_3.insert
                    L11_3 = L5_2
                    L12_3 = {}
                    L12_3.coords = L6_3
                    L12_3.model = L7_3
                    L12_3.heading = L8_3
                    L10_3(L11_3, L12_3)
                    L10_3 = table
                    L10_3 = L10_3.insert
                    L11_3 = L6_2
                    L12_3 = L5_3
                    L10_3(L11_3, L12_3)
                  end
                  L10_3 = L1_1
                  function L11_3()
                    local L0_4, L1_4, L2_4, L3_4
                    L0_4 = L2_1
                    L1_4 = 500
                    L0_4(L1_4)
                    L0_4 = exports
                    L0_4 = L0_4.striano_core
                    L1_4 = L0_4
                    L0_4 = L0_4.TriggerServerCallback
                    L2_4 = "guille_doorlock:cb:getDoors"
                    function L3_4(A0_5, A1_5)
                      local L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5
                      L4_1 = A0_5
                      L5_1 = A1_5
                      L2_5 = pairs
                      L3_5 = L4_1
                      L2_5, L3_5, L4_5, L5_5 = L2_5(L3_5)
                      for L6_5, L7_5 in L2_5, L3_5, L4_5, L5_5 do
                        L8_5 = L7_5.status
                        if nil == L8_5 then
                          L8_5 = L5_1
                          L8_5[L6_5] = "locked"
                        end
                      end
                    end
                    L0_4(L1_4, L2_4, L3_4)
                  end
                  L10_3(L11_3)
                  L10_3 = exports
                  L10_3 = L10_3.striano_combat
                  L11_3 = L10_3
                  L10_3 = L10_3.notify
                  L12_3 = "Doors updated."
                  L10_3(L11_3, L12_3)
                end
              end
            end
          end
          L6_3 = IsControlPressed
          L7_3 = 0
          L8_3 = 73
          L6_3 = L6_3(L7_3, L8_3)
          if not L6_3 then
            L6_3 = IsControlPressed
            L7_3 = 1
            L8_3 = 73
            L6_3 = L6_3(L7_3, L8_3)
            if not L6_3 then
              goto lbl_169
            end
          end
          L6_3 = pairs
          L7_3 = L6_2
          L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
          for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
            L12_3 = SetEntityDrawOutline
            L13_3 = L11_3
            L14_3 = false
            L12_3(L13_3, L14_3)
          end
          L6_3 = {}
          L6_2 = L6_3
          L6_3 = {}
          L5_2 = L6_3
          break
        end
        ::lbl_169::
        L6_3 = L2_1
        L7_3 = L0_3
        L6_3(L7_3)
      end
    end
    L7_2(L8_2)
  end
end
addDoor = L15_1
L15_1 = RegisterNetEvent
L16_1 = "guille_doorlock:client:refreshDoors"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = L4_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.status
  if nil ~= L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L5_1
    L3_2 = "locked"
    L1_2(L2_2, L3_2)
  end
end
L15_1(L16_1, L17_1)
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = nil
  L1_2 = nil
  L2_2 = 5.0
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2()
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = false
  L5_2 = pairs
  L6_2 = L4_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = vector3
    L12_2 = L10_2.doorCoords
    L12_2 = L12_2.x
    L13_2 = L10_2.doorCoords
    L13_2 = L13_2.y
    L14_2 = L10_2.doorCoords
    L14_2 = L14_2.z
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = L11_2 - L3_2
    L12_2 = #L12_2
    if L2_2 >= L12_2 then
      L4_2 = true
      L2_2 = L12_2
      L1_2 = L10_2
      L0_2 = L9_2
    end
  end
  if not L4_2 and L0_2 then
    L0_2 = nil
  end
  if nil == L0_2 then
  end
  return L0_2
end
closestDoor = L15_1
L15_1 = {}
L16_1 = nil
L17_1 = nil
L17_1 = L1_1
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  while true do
    L0_2 = false
    L1_2 = 1
    L2_2 = pairs
    L3_2 = L4_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = GetHashKey
      L9_2 = L7_2._doorModel
      L8_2 = L8_2(L9_2)
      L9_2 = PlayerPedId
      L9_2 = L9_2()
      L10_2 = GetEntityCoords
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = L7_2._type
      if "normal" == L11_2 then
        L11_2 = vector3
        L12_2 = L7_2.doorCoords
        L12_2 = L12_2.x
        L13_2 = L7_2.doorCoords
        L13_2 = L13_2.y
        L14_2 = L7_2.doorCoords
        L14_2 = L14_2.z
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = L10_2 - L11_2
        L12_2 = #L12_2
        L13_2 = L0_1
        if L12_2 < L13_2 then
          L13_2 = GetClosestObjectOfType
          L14_2 = L7_2.doorCoords
          L14_2 = L14_2.x
          L15_2 = L7_2.doorCoords
          L15_2 = L15_2.y
          L16_2 = L7_2.doorCoords
          L16_2 = L16_2.z
          L17_2 = 1.0
          L18_2 = L7_2._doorModel
          L19_2 = false
          L20_2 = false
          L21_2 = false
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          door = L13_2
          L13_2 = L5_1
          L13_2 = L13_2[L6_2]
          if nil ~= L13_2 then
            L13_2 = FreezeEntityPosition
            L14_2 = door
            L15_2 = false
            L13_2(L14_2, L15_2)
          else
            L13_2 = FreezeEntityPosition
            L14_2 = door
            L15_2 = true
            L13_2(L14_2, L15_2)
          end
        end
        L13_2 = L7_2.dist
        L13_2 = L13_2 + 0.35
        if L12_2 < L13_2 then
          L13_2 = GetClosestObjectOfType
          L14_2 = L7_2.doorCoords
          L14_2 = L14_2.x
          L15_2 = L7_2.doorCoords
          L15_2 = L15_2.y
          L16_2 = L7_2.doorCoords
          L16_2 = L16_2.z
          L17_2 = 1.0
          L18_2 = L7_2._doorModel
          L19_2 = false
          L20_2 = false
          L21_2 = false
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          door = L13_2
          L13_2 = vector3
          L14_2 = L7_2._textCoords
          L14_2 = L14_2.x
          L15_2 = L7_2._textCoords
          L15_2 = L15_2.y
          L16_2 = L7_2._textCoords
          L16_2 = L16_2.z
          L13_2 = L13_2(L14_2, L15_2, L16_2)
          L7_1 = L13_2
          L0_2 = true
          L13_2 = L7_2.usePin
          if L13_2 then
            L13_2 = L7_2.pin
            L15_1 = L13_2
          else
            L13_2 = nil
            L15_1 = L13_2
          end
          L13_2 = L7_2.useitem
          if L13_2 then
            L13_2 = L7_2.item
            L16_1 = L13_2
          else
            L13_2 = nil
            L16_1 = L13_2
          end
          L13_2 = L5_1
          L13_2 = L13_2[L6_2]
          if nil ~= L13_2 then
            L13_2 = FreezeEntityPosition
            L14_2 = door
            L15_2 = false
            L13_2(L14_2, L15_2)
            L13_2 = L6_1
            if L13_2 then
              L13_2 = TriggerServerEvent
              L14_2 = "guille_doorlock:server:updateDoor"
              L15_2 = L6_2
              L16_2 = nil
              L13_2(L14_2, L15_2, L16_2)
              L13_2 = false
              L6_1 = L13_2
            end
          else
            L13_2 = FreezeEntityPosition
            L14_2 = door
            L15_2 = true
            L13_2(L14_2, L15_2)
            L13_2 = L6_1
            if L13_2 then
              L13_2 = TriggerServerEvent
              L14_2 = "guille_doorlock:server:updateDoor"
              L15_2 = L6_2
              L16_2 = "locked"
              L13_2(L14_2, L15_2, L16_2)
              L13_2 = false
              L6_1 = L13_2
            end
            L13_2 = L7_2._type
            if "normal" == L13_2 then
              L13_2 = SetEntityHeading
              L14_2 = door
              L15_2 = L7_2._heading
              L13_2(L14_2, L15_2)
            end
          end
          L1_2 = 100
        end
      else
        L11_2 = L7_2._type
        if "double" == L11_2 then
          L11_2 = vector3
          L12_2 = L7_2._doorsDouble
          L12_2 = L12_2[1]
          L12_2 = L12_2.coords
          L12_2 = L12_2.x
          L13_2 = L7_2._doorsDouble
          L13_2 = L13_2[1]
          L13_2 = L13_2.coords
          L13_2 = L13_2.y
          L14_2 = L7_2._doorsDouble
          L14_2 = L14_2[1]
          L14_2 = L14_2.coords
          L14_2 = L14_2.z
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L12_2 = vector3
          L13_2 = L7_2._doorsDouble
          L13_2 = L13_2[2]
          L13_2 = L13_2.coords
          L13_2 = L13_2.x
          L14_2 = L7_2._doorsDouble
          L14_2 = L14_2[2]
          L14_2 = L14_2.coords
          L14_2 = L14_2.y
          L15_2 = L7_2._doorsDouble
          L15_2 = L15_2[2]
          L15_2 = L15_2.coords
          L15_2 = L15_2.z
          L12_2 = L12_2(L13_2, L14_2, L15_2)
          L13_2 = vector3
          L14_2 = L7_2._textCoords
          L14_2 = L14_2.x
          L15_2 = L7_2._textCoords
          L15_2 = L15_2.y
          L16_2 = L7_2._textCoords
          L16_2 = L16_2.z
          L13_2 = L13_2(L14_2, L15_2, L16_2)
          L13_2 = L10_2 - L13_2
          L13_2 = #L13_2
          L14_2 = L0_1
          if L13_2 < L14_2 then
            L14_2 = vector3
            L15_2 = L7_2._textCoords
            L15_2 = L15_2.x
            L16_2 = L7_2._textCoords
            L16_2 = L16_2.y
            L17_2 = L7_2._textCoords
            L17_2 = L17_2.z
            L14_2 = L14_2(L15_2, L16_2, L17_2)
            L7_1 = L14_2
            L14_2 = GetClosestObjectOfType
            L15_2 = L11_2
            L16_2 = 1.0
            L17_2 = L7_2._doorsDouble
            L17_2 = L17_2[1]
            L17_2 = L17_2.model
            L18_2 = false
            L19_2 = false
            L20_2 = false
            L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
            door1 = L14_2
            L14_2 = GetClosestObjectOfType
            L15_2 = L12_2
            L16_2 = 1.0
            L17_2 = L7_2._doorsDouble
            L17_2 = L17_2[2]
            L17_2 = L17_2.model
            L18_2 = false
            L19_2 = false
            L20_2 = false
            L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
            door2 = L14_2
            L14_2 = L5_1
            L14_2 = L14_2[L6_2]
            if nil ~= L14_2 then
              L14_2 = FreezeEntityPosition
              L15_2 = door1
              L16_2 = false
              L14_2(L15_2, L16_2)
              L14_2 = FreezeEntityPosition
              L15_2 = door2
              L16_2 = false
              L14_2(L15_2, L16_2)
            else
              L14_2 = FreezeEntityPosition
              L15_2 = door1
              L16_2 = true
              L14_2(L15_2, L16_2)
              L14_2 = FreezeEntityPosition
              L15_2 = door2
              L16_2 = true
              L14_2(L15_2, L16_2)
              L14_2 = SetEntityHeading
              L15_2 = door1
              L16_2 = L7_2._doorsDouble
              L16_2 = L16_2[1]
              L16_2 = L16_2.heading
              L14_2(L15_2, L16_2)
              L14_2 = SetEntityHeading
              L15_2 = door2
              L16_2 = L7_2._doorsDouble
              L16_2 = L16_2[2]
              L16_2 = L16_2.heading
              L14_2(L15_2, L16_2)
            end
            L14_2 = L7_2.dist
            if L13_2 < L14_2 then
              L14_2 = L7_2.usePin
              if L14_2 then
                L14_2 = L7_2.pin
                L15_1 = L14_2
              else
                L14_2 = nil
                L15_1 = L14_2
              end
              L14_2 = L7_2.useitem
              if L14_2 then
                L14_2 = L7_2.item
                L16_1 = L14_2
              else
                L14_2 = nil
                L16_1 = L14_2
              end
              L14_2 = L5_1
              L14_2 = L14_2[L6_2]
              if nil ~= L14_2 then
                L0_2 = true
                L14_2 = FreezeEntityPosition
                L15_2 = door1
                L16_2 = false
                L14_2(L15_2, L16_2)
                L14_2 = FreezeEntityPosition
                L15_2 = door2
                L16_2 = false
                L14_2(L15_2, L16_2)
                L14_2 = L6_1
                if L14_2 then
                  L14_2 = TriggerServerEvent
                  L15_2 = "guille_doorlock:server:updateDoor"
                  L16_2 = L6_2
                  L17_2 = nil
                  L14_2(L15_2, L16_2, L17_2)
                  L14_2 = false
                  L6_1 = L14_2
                  L14_2 = nil
                  L15_1 = L14_2
                end
              else
                L0_2 = true
                L14_2 = FreezeEntityPosition
                L15_2 = door1
                L16_2 = true
                L14_2(L15_2, L16_2)
                L14_2 = FreezeEntityPosition
                L15_2 = door2
                L16_2 = true
                L14_2(L15_2, L16_2)
                L14_2 = L6_1
                if L14_2 then
                  L14_2 = TriggerServerEvent
                  L15_2 = "guille_doorlock:server:updateDoor"
                  L16_2 = L6_2
                  L17_2 = "locked"
                  L14_2(L15_2, L16_2, L17_2)
                  L14_2 = false
                  L6_1 = L14_2
                  L14_2 = nil
                  L15_1 = L14_2
                end
                L14_2 = SetEntityHeading
                L15_2 = door1
                L16_2 = L7_2._doorsDouble
                L16_2 = L16_2[1]
                L16_2 = L16_2.heading
                L14_2(L15_2, L16_2)
                L14_2 = SetEntityHeading
                L15_2 = door2
                L16_2 = L7_2._doorsDouble
                L16_2 = L16_2[2]
                L16_2 = L16_2.heading
                L14_2(L15_2, L16_2)
              end
              L1_2 = 100
            end
          end
        else
          L11_2 = vector3
          L12_2 = L7_2.doorCoords
          L12_2 = L12_2.x
          L13_2 = L7_2.doorCoords
          L13_2 = L13_2.y
          L14_2 = L7_2.doorCoords
          L14_2 = L14_2.z
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          L12_2 = L10_2 - L11_2
          L12_2 = #L12_2
          L13_2 = L0_1
          if L12_2 < L13_2 then
            L13_2 = GetClosestObjectOfType
            L14_2 = L7_2.doorCoords
            L14_2 = L14_2.x
            L15_2 = L7_2.doorCoords
            L15_2 = L15_2.y
            L16_2 = L7_2.doorCoords
            L16_2 = L16_2.z
            L17_2 = 1.0
            L18_2 = L7_2._doorModel
            L19_2 = false
            L20_2 = false
            L21_2 = false
            L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            door = L13_2
            L13_2 = IsDoorRegisteredWithSystem
            L14_2 = L7_2._doorModel
            L15_2 = "door"
            L16_2 = L6_2
            L14_2 = L14_2 .. L15_2 .. L16_2
            L13_2 = L13_2(L14_2)
            if not L13_2 then
              L13_2 = AddDoorToSystem
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = L7_2._doorModel
              L16_2 = L11_2
              L17_2 = false
              L18_2 = false
              L19_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
              L13_2 = print
              L14_2 = L6_2
              L15_2 = " - Slider Registered"
              L14_2 = L14_2 .. L15_2
              L13_2(L14_2)
            end
            L13_2 = L5_1
            L13_2 = L13_2[L6_2]
            if nil ~= L13_2 then
              L13_2 = DoorSystemSetDoorState
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 0
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = DoorSystemSetAutomaticDistance
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 30.0
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
            else
              L13_2 = DoorSystemSetAutomaticDistance
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 0.0
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = DoorSystemSetDoorState
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 4
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
            end
          end
          L13_2 = L7_2.dist
          if L12_2 < L13_2 then
            L13_2 = GetClosestObjectOfType
            L14_2 = L7_2.doorCoords
            L14_2 = L14_2.x
            L15_2 = L7_2.doorCoords
            L15_2 = L15_2.y
            L16_2 = L7_2.doorCoords
            L16_2 = L16_2.z
            L17_2 = 1.0
            L18_2 = L7_2._doorModel
            L19_2 = false
            L20_2 = false
            L21_2 = false
            L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            door = L13_2
            L13_2 = vector3
            L14_2 = L7_2._textCoords
            L14_2 = L14_2.x
            L15_2 = L7_2._textCoords
            L15_2 = L15_2.y
            L16_2 = L7_2._textCoords
            L16_2 = L16_2.z
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            L7_1 = L13_2
            L0_2 = true
            L13_2 = L7_2.usePin
            if L13_2 then
              L13_2 = L7_2.pin
              L15_1 = L13_2
            else
              L13_2 = nil
              L15_1 = L13_2
            end
            L13_2 = L7_2.useitem
            if L13_2 then
              L13_2 = L7_2.item
              L16_1 = L13_2
            else
              L13_2 = nil
              L16_1 = L13_2
            end
            L13_2 = L5_1
            L13_2 = L13_2[L6_2]
            if nil ~= L13_2 then
              L13_2 = DoorSystemSetDoorState
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 0
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = DoorSystemSetAutomaticDistance
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 30.0
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = L6_1
              if L13_2 then
                L13_2 = TriggerServerEvent
                L14_2 = "guille_doorlock:server:updateDoor"
                L15_2 = L6_2
                L16_2 = nil
                L13_2(L14_2, L15_2, L16_2)
                L13_2 = false
                L6_1 = L13_2
              end
            else
              L13_2 = DoorSystemSetDoorState
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 4
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = DoorSystemSetAutomaticDistance
              L14_2 = L7_2._doorModel
              L15_2 = "door"
              L16_2 = L6_2
              L14_2 = L14_2 .. L15_2 .. L16_2
              L15_2 = 0.0
              L16_2 = false
              L17_2 = false
              L13_2(L14_2, L15_2, L16_2, L17_2)
              L13_2 = L6_1
              if L13_2 then
                L13_2 = TriggerServerEvent
                L14_2 = "guille_doorlock:server:updateDoor"
                L15_2 = L6_2
                L16_2 = "locked"
                L13_2(L14_2, L15_2, L16_2)
                L13_2 = false
                L6_1 = L13_2
              end
            end
            L1_2 = 100
          end
        end
      end
    end
    if L0_2 then
      L2_2 = true
      L9_1 = L2_2
    else
      L2_2 = false
      L9_1 = L2_2
      L2_2 = Wait
      L3_2 = 500
      L2_2(L3_2)
    end
    L2_2 = L2_1
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L17_1(L18_1)
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = ExecuteCommand
  L1_2 = "e keyfob2"
  L0_2(L1_2)
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "LIMIT"
  L3_2 = "GTAO_APT_DOOR_DOWNSTAIRS_WOOD_SOUNDS"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
animatePlyDoor = L17_1
L17_1 = RegisterNetEvent
L18_1 = "guille_doorlock:client:updateDoorState"
function L19_1(A0_2, A1_2)
  local L2_2
  L2_2 = L5_1
  L2_2[A0_2] = A1_2
end
L17_1(L18_1, L19_1)
L17_1 = RegisterCommand
L18_1 = "lockdoor"
function L19_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L9_1
  if not L0_2 then
    return
  end
  L0_2 = L15_1
  if nil == L0_2 then
    L0_2 = true
    L6_1 = L0_2
    L0_2 = ExecuteCommand
    L1_2 = "e pointdown"
    L0_2(L1_2)
    return
  end
  L0_2 = L15_1
  if L0_2 then
    L0_2 = tonumber
    L1_2 = L15_1
    L0_2 = L0_2(L1_2)
    if 9999 ~= L0_2 then
      L0_2 = tonumber
      L1_2 = L15_1
      L0_2 = L0_2(L1_2)
      if 99999 ~= L0_2 then
        L0_2 = tonumber
        L1_2 = L15_1
        L0_2 = L0_2(L1_2)
        if 999999 ~= L0_2 then
          L0_2 = ExecuteCommand
          L1_2 = "e mani4"
          L0_2(L1_2)
          L0_2 = exports
          L0_2 = L0_2.striano_core
          L1_2 = L0_2
          L0_2 = L0_2.OpenInput
          L2_2 = "Insert Pin"
          L3_2 = ""
          L4_2 = {}
          L4_2.maxLen = 16
          L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
          if nil ~= L0_2 then
            L1_2 = tostring
            L2_2 = L0_2
            L1_2 = L1_2(L2_2)
            L2_2 = tostring
            L3_2 = L15_1
            L2_2 = L2_2(L3_2)
            if L1_2 == L2_2 then
              goto lbl_58
            end
          end
          L1_2 = ExecuteCommand
          L2_2 = "e shrug4"
          L1_2(L2_2)
          goto lbl_65
          ::lbl_58::
          L1_2 = true
          L6_1 = L1_2
          L1_2 = nil
          L15_1 = L1_2
          L1_2 = ExecuteCommand
          L2_2 = "e pointdown"
          L1_2(L2_2)
        end
      end
    end
  end
  ::lbl_65::
  L0_2 = L16_1
  if L0_2 then
    L0_2 = LocalPlayer
    L0_2 = L0_2.state
    L0_2 = L0_2.keysHeld
    if not L0_2 then
      L0_2 = {}
    end
    L1_2 = L16_1
    L1_2 = L0_2[L1_2]
    if L1_2 then
      L1_2 = ExecuteCommand
      L2_2 = "e pointdown"
      L1_2(L2_2)
      L1_2 = true
      L6_1 = L1_2
      L1_2 = nil
      L16_1 = L1_2
    else
      L1_2 = tonumber
      L2_2 = L16_1
      L1_2 = L1_2(L2_2)
      if 9999 ~= L1_2 then
        L1_2 = tonumber
        L2_2 = L16_1
        L1_2 = L1_2(L2_2)
        if 99999 ~= L1_2 then
          L1_2 = tonumber
          L2_2 = L16_1
          L1_2 = L1_2(L2_2)
          if 999999 ~= L1_2 then
            L1_2 = exports
            L1_2 = L1_2.striano_combat
            L2_2 = L1_2
            L1_2 = L1_2.submexError
            L3_2 = "You don't have the keys: "
            L4_2 = tostring
            L5_2 = L16_1
            L4_2 = L4_2(L5_2)
            L5_2 = "."
            L3_2 = L3_2 .. L4_2 .. L5_2
            L1_2(L2_2, L3_2)
            L1_2 = ExecuteCommand
            L2_2 = "e shrug4"
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
L17_1(L18_1, L19_1)
L17_1 = RegisterKeyMapping
L18_1 = "lockdoor"
L19_1 = "Apri Porta"
L20_1 = "keyboard"
L21_1 = "e"
L17_1(L18_1, L19_1, L20_1, L21_1)
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetGameplayCamRot
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = RotationToDirection
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L6_2 = L3_2.y
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L6_2 = L3_2.z
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.z = L5_2
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = -1
  L14_2 = PlayerPedId
  L14_2 = L14_2()
  L15_2 = 0
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
RayCastGamePlayCamera = L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
RotationToDirection = L17_1
