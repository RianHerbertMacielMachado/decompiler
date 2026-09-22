local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = true
L2_1 = false
L3_1 = RegisterNetEvent
L4_1 = "feed:update"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "feed:update"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L0_1 = A0_2
  L1_2 = #A0_2
  if L1_2 > 0 then
    L1_2 = L1_1
    if not L1_2 then
      L1_2 = true
      L1_1 = L1_2
    end
  end
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "updateFeed"
  L3_2 = L0_1
  L2_2.feed = L3_2
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "toggleDisplay"
  L3_2 = L1_1
  L2_2.display = L3_2
  L1_2(L2_2)
  L1_2 = L2_1
  if not L1_2 then
    L1_2 = true
    L2_1 = L1_2
    L1_2 = PlaySoundFrontend
    L2_2 = -1
    L3_2 = "SELECT"
    L4_2 = "HUD_FRONTEND_CLOTHESSHOP_SOUNDSET"
    L5_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = CreateThread
    function L2_2()
      local L0_3, L1_3
      L0_3 = Wait
      L1_3 = 500
      L0_3(L1_3)
      L0_3 = false
      L2_1 = L0_3
    end
    L1_2(L2_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 0
  while true do
    L1_2 = NetworkIsSessionStarted
    L1_2 = L1_2()
    if L1_2 then
      break
    end
    L1_2 = 10000
    if not (L0_2 < L1_2) then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
    L0_2 = L0_2 + 100
  end
  L1_2 = TriggerServerEvent
  L2_2 = "feed:request"
  L1_2(L2_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.type = "toggleDisplay"
  L3_2 = L1_1
  L2_2.display = L3_2
  L1_2(L2_2)
end
L3_1(L4_1)
L3_1 = RegisterCommand
L4_1 = "feed"
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  L0_2 = not L0_2
  L1_1 = L0_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.type = "toggleDisplay"
  L2_2 = L1_1
  L1_2.display = L2_2
  L0_2(L1_2)
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L0_1
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = SendNUIMessage
      L1_2 = {}
      L1_2.type = "updateFeed"
      L2_2 = L0_1
      L1_2.feed = L2_2
      L0_2(L1_2)
    end
  end
end
L6_1 = false
L3_1(L4_1, L5_1, L6_1)
