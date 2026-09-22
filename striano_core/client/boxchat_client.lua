local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = false
L1_1 = false
L2_1 = RegisterCommand
L3_1 = "autowalk"
function L4_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "aw"
  L0_2(L1_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = "aw"
function L4_1()
  local L0_2, L1_2
  L0_2 = loopAutoWalk
  L0_2()
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if not L0_2 then
    L0_2 = true
    L1_1 = L0_2
    L0_2 = CreateThread
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
        L0_3 = L1_1
        if L0_3 then
          L0_3 = SetControlNormal
          L1_3 = 0
          L2_3 = 31
          L3_3 = -1.0
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = IsControlJustPressed
          L1_3 = 0
          L2_3 = 129
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlJustPressed
            L1_3 = 0
            L2_3 = 33
            L0_3 = L0_3(L1_3, L2_3)
          end
          if L0_3 then
            L0_3 = false
            L1_1 = L0_3
          end
        else
          return
        end
      end
    end
    L0_2(L1_2)
  else
    L0_2 = false
    L1_1 = L0_2
  end
end
loopAutoWalk = L2_1
L2_1 = RegisterKeyMapping
L3_1 = "removeLast"
L4_1 = "Elimina ultima nota"
L5_1 = "keyboard"
L6_1 = "BACK"
L2_1(L3_1, L4_1, L5_1, L6_1)
L2_1 = RegisterKeyMapping
L3_1 = "chatpad"
L4_1 = "Chat locale IC"
L5_1 = "keyboard"
L6_1 = "delete"
L2_1(L3_1, L4_1, L5_1, L6_1)
L2_1 = RegisterCommand
L3_1 = "chatpad"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = SetDisplay
  L2_2 = L0_1
  L2_2 = not L2_2
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = "n"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = A1_2
  L4_2 = " "
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = SendNote
  L4_2 = L2_2
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  L3_2 = A1_2 * A1_2
  L4_2 = ipairs
  L5_2 = GetActivePlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerPed
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = PlayerPedId
    L11_2 = L11_2()
    if L10_2 ~= L11_2 then
      L11_2 = DoesEntityExist
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = L11_2.x
        L13_2 = A0_2.x
        L12_2 = L12_2 - L13_2
        L13_2 = L11_2.y
        L14_2 = A0_2.y
        L13_2 = L13_2 - L14_2
        L14_2 = L11_2.z
        L15_2 = A0_2.z
        L14_2 = L14_2 - L15_2
        L15_2 = L12_2 * L12_2
        L16_2 = L13_2 * L13_2
        L15_2 = L15_2 + L16_2
        L16_2 = L14_2 * L14_2
        L15_2 = L15_2 + L16_2
        if L3_2 >= L15_2 then
          L16_2 = #L2_2
          L16_2 = L16_2 + 1
          L2_2[L16_2] = L10_2
        end
      end
    end
  end
  return L2_2
end
GetPlayersInAreaStriano = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = 7.5
  if A1_2 then
    L5_2 = A1_2
  end
  L6_2 = GetPlayersInAreaStriano
  L7_2 = GetEntityCoords
  L8_2 = PlayerPedId
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = GetPlayerServerId
    L12_2 = L6_2[L10_2]
    L11_2 = L11_2(L12_2)
    L6_2[L10_2] = L11_2
  end
  L7_2 = TriggerServerEvent
  L8_2 = "sod_boxchat:sendNote"
  L9_2 = L6_2
  L10_2 = A0_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
SendNote = L2_1
L2_1 = RegisterCommand
L3_1 = "removeLast"
function L4_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "removeNote"
  L0_2(L1_2)
end
L5_1 = false
L2_1(L3_1, L4_1, L5_1)
L2_1 = RegisterNetEvent
L3_1 = "addNote"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "addNote"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = vector4
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1.0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = vector4
  L6_2 = 255
  L7_2 = 243
  L8_2 = 230
  L9_2 = 0.7
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if A1_2 then
    L4_2 = A1_2
  end
  if A2_2 then
    L5_2 = A2_2
  end
  if A3_2 then
    L6_2 = PlaySoundFrontend
    L7_2 = -1
    L8_2 = "Pin_Centred"
    L9_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    L10_2 = 1
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.text = A0_2
  L7_2.action = "newNote"
  L7_2.color = L4_2
  L7_2.colorB = L5_2
  L6_2(L7_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "confirmSend"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "confirmSend"
function L4_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "clear"
  L0_2(L1_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "exit"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = SetDisplay
  L2_2 = false
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "main"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNote
  L2_2 = A0_2.text
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "error"
function L4_1(A0_2)
  local L1_2
end
L2_1(L3_1, L4_1)
L2_1 = RegisterCommand
L3_1 = "notepad"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = SetDisplay
  L2_2 = L0_1
  L2_2 = not L2_2
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.menuaperto
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L0_1 = A0_2
    L1_2 = SetNuiFocus
    L2_2 = A0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.type = "ui"
    L2_2.status = A0_2
    L1_2(L2_2)
  end
end
SetDisplay = L2_1
