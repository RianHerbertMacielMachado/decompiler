local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = 0
L1_1 = 0
L2_1 = 0
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 - A0_2
  L1_2 = #L1_2
  return L1_2
end
GetDistanceBetween2 = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetEntityCoords
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = vector3
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2 - L4_2
  L3_2 = #L3_2
  return L3_2
end
GetDistanceBetween = L3_1
L3_1 = AddEventHandler
L4_1 = "playerDropped"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  if L1_2 > 0 then
    L1_2 = TriggerServerEvent
    L2_2 = "corsa:delhostcross"
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
    L1_2 = TriggerServerEvent
    L2_2 = "corsa:stopcross"
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = exports
L4_1 = "vicinoNPC"
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = pairs
  L1_2 = NPCrace
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = false
    L7_2 = GetDistanceBetween2
    L8_2 = vector3
    L9_2 = L5_2.x
    L10_2 = L5_2.y
    L11_2 = L5_2.z
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if L7_2 < 10.0 then
      L6_2 = true
    end
  end
  L0_2 = trovato
  return L0_2
end
L3_1(L4_1, L5_1)
L3_1 = Citizen
L3_1 = L3_1.CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = NPCrace
  if nil ~= L0_2 then
    L0_2 = NPCrace
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = pairs
      L1_2 = NPCrace
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = L5_2.model
        L7_2 = LoadModel
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = CreatePed
        L8_2 = 1
        L9_2 = L6_2
        L10_2 = L5_2.x
        L11_2 = L5_2.y
        L12_2 = L5_2.z
        L13_2 = 0.0
        L14_2 = false
        L15_2 = false
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L5_2.PedID = L7_2
        L8_2 = SetPedFleeAttributes
        L9_2 = L7_2
        L10_2 = 0
        L11_2 = 0
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = SetPedDropsWeaponsWhenDead
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = SetPedDiesWhenInjured
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityInvincible
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetBlockingOfNonTemporaryEvents
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetPedCanRagdollFromPlayerImpact
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = Citizen
        L8_2 = L8_2.Wait
        L9_2 = 25
        L8_2(L9_2)
        L8_2 = SetEntityHeading
        L9_2 = L7_2
        L10_2 = L5_2.h
        L8_2(L9_2, L10_2)
        L8_2 = SetModelAsNoLongerNeeded
        L9_2 = L6_2
        L8_2(L9_2)
        L8_2 = L5_2.Fan
        if L8_2 then
          L8_2 = RequestAnimDict
          L9_2 = "anim@arena@celeb@flat@solo@no_props@"
          L8_2(L9_2)
          while true do
            L8_2 = HasAnimDictLoaded
            L9_2 = "anim@arena@celeb@flat@solo@no_props@"
            L8_2 = L8_2(L9_2)
            if L8_2 then
              break
            end
            L8_2 = Wait
            L9_2 = 0
            L8_2(L9_2)
          end
          L8_2 = TaskPlayAnim
          L9_2 = L7_2
          L10_2 = "anim@arena@celeb@flat@solo@no_props@"
          L11_2 = "angry_clap_a_player_a"
          L12_2 = 8.0
          L13_2 = 1
          L14_2 = -1
          L15_2 = 49
          L16_2 = 0
          L17_2 = false
          L18_2 = false
          L19_2 = false
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L8_2 = RemoveAnimDict
          L9_2 = "anim@arena@celeb@flat@solo@no_props@"
          L8_2(L9_2)
          L8_2 = RemoveAnimSet
          L9_2 = "angry_clap_a_player_a"
          L8_2(L9_2)
        end
        L8_2 = L5_2.Fan2
        if L8_2 then
          L8_2 = RequestAnimDict
          L9_2 = "amb@world_human_cheering@male_a"
          L8_2(L9_2)
          while true do
            L8_2 = HasAnimDictLoaded
            L9_2 = "amb@world_human_cheering@male_a"
            L8_2 = L8_2(L9_2)
            if L8_2 then
              break
            end
            L8_2 = Wait
            L9_2 = 0
            L8_2(L9_2)
          end
          L8_2 = TaskPlayAnim
          L9_2 = L7_2
          L10_2 = "amb@world_human_cheering@male_a"
          L11_2 = "base"
          L12_2 = 8.0
          L13_2 = 1
          L14_2 = -1
          L15_2 = 49
          L16_2 = 0
          L17_2 = false
          L18_2 = false
          L19_2 = false
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L8_2 = RemoveAnimDict
          L9_2 = "amb@world_human_cheering@male_a"
          L8_2(L9_2)
          L8_2 = RemoveAnimSet
          L9_2 = "base"
          L8_2(L9_2)
        end
      end
    end
  end
  L0_2 = RacePos
  if nil ~= L0_2 then
    L0_2 = RacePos
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = pairs
      L1_2 = RacePos
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = L5_2.active
        if L6_2 then
          L6_2 = AddBlipForCoord
          L7_2 = L5_2.startpos
          L7_2 = L7_2.x
          L8_2 = L5_2.startpos
          L8_2 = L8_2.y
          L9_2 = L5_2.startpos
          L9_2 = L9_2.z
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          L7_2 = SetBlipSprite
          L8_2 = L6_2
          L9_2 = L5_2.id
          L7_2(L8_2, L9_2)
          L7_2 = SetBlipDisplay
          L8_2 = L6_2
          L9_2 = 4
          L7_2(L8_2, L9_2)
          L7_2 = SetBlipScale
          L8_2 = L6_2
          L9_2 = L5_2.size
          L7_2(L8_2, L9_2)
          L7_2 = SetBlipColour
          L8_2 = L6_2
          L9_2 = L5_2.colour
          L7_2(L8_2, L9_2)
          L7_2 = SetBlipAsShortRange
          L8_2 = L6_2
          L9_2 = true
          L7_2(L8_2, L9_2)
          L7_2 = BeginTextCommandSetBlipName
          L8_2 = "STRING"
          L7_2(L8_2)
          L7_2 = AddTextComponentString
          L8_2 = L5_2.title
          L7_2(L8_2)
          L7_2 = EndTextCommandSetBlipName
          L8_2 = L6_2
          L7_2(L8_2)
        end
        L6_2 = L5_2.girlmodel
        L7_2 = LoadModel
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = CreatePed
        L8_2 = 1
        L9_2 = L6_2
        L10_2 = L5_2.girlstart
        L10_2 = L10_2.x
        L11_2 = L5_2.girlstart
        L11_2 = L11_2.y
        L12_2 = L5_2.girlstart
        L12_2 = L12_2.z
        L13_2 = L5_2.girlheading
        L14_2 = false
        L15_2 = false
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L5_2.PedID = L7_2
        L8_2 = SetPedFleeAttributes
        L9_2 = L7_2
        L10_2 = 0
        L11_2 = 0
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = SetPedDropsWeaponsWhenDead
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = SetPedDiesWhenInjured
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = SetEntityInvincible
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = FreezeEntityPosition
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetBlockingOfNonTemporaryEvents
        L9_2 = L7_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = SetPedCanRagdollFromPlayerImpact
        L9_2 = L7_2
        L10_2 = false
        L8_2(L9_2, L10_2)
        L8_2 = Citizen
        L8_2 = L8_2.Wait
        L9_2 = 25
        L8_2(L9_2)
        L8_2 = SetEntityHeading
        L9_2 = L7_2
        L10_2 = L5_2.girlheading
        L8_2(L9_2, L10_2)
        L8_2 = SetModelAsNoLongerNeeded
        L9_2 = L6_2
        L8_2(L9_2)
        L8_2 = RequestAnimDict
        L9_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
        L8_2(L9_2)
        while true do
          L8_2 = HasAnimDictLoaded
          L9_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
          L8_2 = L8_2(L9_2)
          if L8_2 then
            break
          end
          L8_2 = Wait
          L9_2 = 0
          L8_2(L9_2)
        end
        L8_2 = TaskPlayAnim
        L9_2 = L7_2
        L10_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
        L11_2 = "idle_a"
        L12_2 = 8.0
        L13_2 = 1
        L14_2 = -1
        L15_2 = 49
        L16_2 = 0
        L17_2 = false
        L18_2 = false
        L19_2 = false
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L8_2 = RemoveAnimDict
        L9_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
        L8_2(L9_2)
        L8_2 = RemoveAnimSet
        L9_2 = "idle_a"
        L8_2(L9_2)
      end
    end
  end
end
L3_1(L4_1)
function L3_1(A0_2)
  local L1_2, L2_2
  while true do
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 1
    L1_2(L2_2)
    L1_2 = RequestAnimDict
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
loadDict = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" == L1_2 then
    L1_2 = GetHashKey
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  else
    L1_2 = tonumber
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2 or A0_2
    if not L1_2 then
      A0_2 = 0
    end
  end
  return A0_2
end
toModel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = toModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = IsModelInCdimage
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  return A0_2
end
LoadModel = L3_1
L3_1 = AddEventHandler
L4_1 = "onResourceStop"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = NPCfut
    if nil ~= L1_2 then
      L1_2 = NPCfut
      L1_2 = #L1_2
      if L1_2 > 0 then
        L1_2 = pairs
        L2_2 = NPCfut
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          L7_2 = DeleteEntity
          L8_2 = L6_2.PedID
          L7_2(L8_2)
        end
      end
    end
  end
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  while true do
    L1_2 = HasModelLoaded
    L2_2 = GetHashKey
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      break
    end
    L1_2 = RequestModel
    L2_2 = GetHashKey
    L3_2 = A0_2
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
    L1_2 = Wait
    L2_2 = 10
    L1_2(L2_2)
  end
end
LoadPropDict = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = GetEntityCoords
  L11_2 = A0_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L12_2 = HasModelLoaded
  L13_2 = A1_2
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L12_2 = LoadPropDict
    L13_2 = A1_2
    L12_2(L13_2)
  end
  L12_2 = CreateObject
  L13_2 = GetHashKey
  L14_2 = A1_2
  L13_2 = L13_2(L14_2)
  L14_2 = L9_2
  L15_2 = L10_2
  L16_2 = L11_2 + 0.2
  L17_2 = true
  L18_2 = true
  L19_2 = true
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L13_2 = AttachEntityToEntity
  L14_2 = L12_2
  L15_2 = A0_2
  L16_2 = GetPedBoneIndex
  L17_2 = A0_2
  L18_2 = A2_2
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = A3_2
  L18_2 = A4_2
  L19_2 = A5_2
  L20_2 = A6_2
  L21_2 = A7_2
  L22_2 = A8_2
  L23_2 = true
  L24_2 = true
  L25_2 = false
  L26_2 = true
  L27_2 = 1
  L28_2 = true
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L13_2 = SetEntityCollision
  L14_2 = L12_2
  L15_2 = false
  L16_2 = true
  L13_2(L14_2, L15_2, L16_2)
  return L12_2
end
AddPropToPlayer = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = ESX
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "corsa:cross"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if nil == A0_3 then
      L1_3 = A0_2
      L0_1 = L1_3
      L1_3 = print
      L2_3 = "inRace: "
      L3_3 = A0_2
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = ESX
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "corsa:checkhostcross"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4
        if nil ~= A0_4 then
          L1_4 = notify
          L2_4 = m
          L2_4 = L2_4.Partecipant
          L1_4(L2_4)
          L1_4 = notify
          L2_4 = m
          L2_4 = L2_4.WaitHost
          L1_4(L2_4)
          L1_4 = Command3DHead
          if L1_4 then
            L1_4 = ExecuteCommand
            L2_4 = "me ID: ~b~"
            L3_4 = A0_2
            L2_4 = L2_4 .. L3_4
            L1_4(L2_4)
          end
        else
          L1_4 = Command3DHead
          if L1_4 then
            L1_4 = ExecuteCommand
            L2_4 = "me Host ID: ~b~"
            L3_4 = A0_2
            L2_4 = L2_4 .. L3_4
            L1_4(L2_4)
          end
          L1_4 = TriggerServerEvent
          L2_4 = "corsa:hostcross"
          L3_4 = A0_2
          L1_4(L2_4, L3_4)
          L1_4 = A0_2
          L2_1 = L1_4
        end
      end
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
    else
      L1_3 = notify
      L2_3 = m
      L2_3 = L2_3.BusyRace
      L1_3(L2_3)
    end
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
CheckRace = L3_1
L3_1 = Citizen
L3_1 = L3_1.CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 10
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = pairs
    L2_2 = RacePos
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = false
      L8_2 = L0_1
      if 0 == L8_2 then
        L8_2 = GetDistanceBetween2
        L9_2 = L6_2.startpos
        L8_2 = L8_2(L9_2)
        if L8_2 < 35.0 then
          L7_2 = true
          L8_2 = MarkerStartRace
          L9_2 = L6_2.startpos
          L10_2 = L6_2.sizeBlip
          L8_2(L9_2, L10_2)
          L8_2 = GetDistanceBetween2
          L9_2 = L6_2.startpos
          L8_2 = L8_2(L9_2)
          L9_2 = L6_2.sizeBlip
          if L8_2 < L9_2 then
            L8_2 = IsPedSittingInAnyVehicle
            L9_2 = L0_2
            L8_2 = L8_2(L9_2)
            if L8_2 then
              L8_2 = notify2
              L9_2 = m
              L9_2 = L9_2.WaitRace
              L8_2(L9_2)
            else
              L8_2 = VehMond
              if L8_2 then
                L8_2 = notify2
                L9_2 = m
                L9_2 = L9_2.NeedVeh
                L8_2(L9_2)
              else
                L8_2 = notify2
                L9_2 = m
                L9_2 = L9_2.WaitRace
                L8_2(L9_2)
              end
            end
            L8_2 = IsControlPressed
            L9_2 = 0
            L10_2 = 74
            L8_2 = L8_2(L9_2, L10_2)
            if L8_2 then
              L8_2 = IsPedSittingInAnyVehicle
              L9_2 = L0_2
              L8_2 = L8_2(L9_2)
              if L8_2 then
                L8_2 = CheckRace
                L9_2 = L5_2
                L8_2(L9_2)
              else
                L8_2 = VehMond
                if not L8_2 then
                  L8_2 = CheckRace
                  L9_2 = L5_2
                  L8_2(L9_2)
                end
              end
              L8_2 = Citizen
              L8_2 = L8_2.Wait
              L9_2 = 3000
              L8_2(L9_2)
            end
          end
        end
      else
        if L7_2 then
          L8_2 = L0_1
          if not (L8_2 > 0) then
            goto lbl_88
          end
        end
        L8_2 = Citizen
        L8_2 = L8_2.Wait
        L9_2 = 2000
        L8_2(L9_2)
      end
      ::lbl_88::
    end
  end
end
L3_1(L4_1)
L3_1 = RegisterNetEvent
L4_1 = "corsa:startcross"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "corsa:startcross"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = RacePos
  if nil ~= L1_2 then
    L1_2 = RacePos
    L1_2 = #L1_2
    if L1_2 > 0 then
      L1_2 = pairs
      L2_2 = RacePos
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        if L5_2 == A0_2 then
          L7_2 = ClearPedTasksImmediately
          L8_2 = L6_2.PedID
          L7_2(L8_2)
          L7_2 = RequestAnimDict
          L8_2 = "random@street_race"
          L7_2(L8_2)
          while true do
            L7_2 = HasAnimDictLoaded
            L8_2 = "random@street_race"
            L7_2 = L7_2(L8_2)
            if L7_2 then
              break
            end
            L7_2 = Wait
            L8_2 = 0
            L7_2(L8_2)
          end
          L7_2 = TaskPlayAnim
          L8_2 = L6_2.PedID
          L9_2 = "random@street_race"
          L10_2 = "grid_girl_race_start"
          L11_2 = 8.0
          L12_2 = 1
          L13_2 = -1
          L14_2 = 1
          L15_2 = 0
          L16_2 = false
          L17_2 = false
          L18_2 = false
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
          L7_2 = RemoveAnimDict
          L8_2 = "random@street_race"
          L7_2(L8_2)
          L7_2 = RemoveAnimSet
          L8_2 = "grid_girl_race_start"
          L7_2(L8_2)
        end
      end
    end
  end
  L1_2 = L0_1
  if L1_2 == A0_2 then
    L1_2 = GetDistanceBetween2
    L2_2 = RacePos
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.startpos
    L1_2 = L1_2(L2_2)
    if L1_2 < 100.0 then
      L1_2 = GetVehiclePedIsIn
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = false
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = FreezeEntityPosition
      L3_2 = L1_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = MsgRaceStartSoon
      L2_2()
      L2_2 = DeleteWaypoint
      L2_2()
      L2_2 = Wait
      L3_2 = 6500
      L2_2(L3_2)
      L2_2 = soundtre
      L2_2()
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
      L2_2 = soundtwo
      L2_2()
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
      L2_2 = soundone
      L2_2()
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
      L2_2 = soundgo
      L2_2()
      L2_2 = FreezeEntityPosition
      L3_2 = L1_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = FreezeEntityPosition
      L3_2 = PlayerPedId
      L3_2 = L3_2()
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = 1
      L1_1 = L2_2
    end
  end
  L1_2 = Wait
  L2_2 = 5000
  L1_2(L2_2)
  L1_2 = RacePos
  if nil ~= L1_2 then
    L1_2 = RacePos
    L1_2 = #L1_2
    if L1_2 > 0 then
      L1_2 = pairs
      L2_2 = RacePos
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        if L5_2 == A0_2 then
          L7_2 = ClearPedTasksImmediately
          L8_2 = L6_2.PedID
          L7_2(L8_2)
          L7_2 = Wait
          L8_2 = 1000
          L7_2(L8_2)
          L7_2 = RequestAnimDict
          L8_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
          L7_2(L8_2)
          while true do
            L7_2 = HasAnimDictLoaded
            L8_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
            L7_2 = L7_2(L8_2)
            if L7_2 then
              break
            end
            L7_2 = Wait
            L8_2 = 0
            L7_2(L8_2)
          end
          L7_2 = TaskPlayAnim
          L8_2 = L6_2.PedID
          L9_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
          L10_2 = "idle_a"
          L11_2 = 8.0
          L12_2 = 1
          L13_2 = -1
          L14_2 = 49
          L15_2 = 0
          L16_2 = false
          L17_2 = false
          L18_2 = false
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
          L7_2 = RemoveAnimDict
          L8_2 = "amb@world_human_hang_out_street@female_arms_crossed@idle_a"
          L7_2(L8_2)
          L7_2 = RemoveAnimSet
          L8_2 = "idle_a"
          L7_2(L8_2)
        end
      end
    end
  end
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "corsa:crossvincitore"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "corsa:crossvincitore"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = RacePos
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.startpos
  L3_2 = GetDistanceBetween2
  L4_2 = vector3
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = 250.0
  L3_2 = L3_2 < L4_2
  if not L3_2 then
    L4_2 = L0_1
    if L4_2 ~= A1_2 then
      goto lbl_31
    end
  end
  L4_2 = notify
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = L0_1
  if L4_2 == A1_2 then
    L4_2 = 0
    L1_1 = L4_2
    L4_2 = 0
    L0_1 = L4_2
  end
  ::lbl_31::
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "corsa:stopcross"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "corsa:stopcross"
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if L1_2 == A0_2 then
    L1_2 = 0
    L1_1 = L1_2
    L1_2 = 0
    L2_1 = L1_2
    L1_2 = 0
    L0_1 = L1_2
    L1_2 = notify
    L2_2 = m
    L2_2 = L2_2.StopFromHost
    L1_2(L2_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = Citizen
L3_1 = L3_1.CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 10
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = L0_1
    if L1_2 > 0 then
      L1_2 = L1_1
      if L1_2 > 0 then
        L1_2 = RacePos
        L2_2 = L0_1
        L1_2 = L1_2[L2_2]
        L2_2 = L1_2.pp
        L3_2 = L1_1
        L2_2 = L2_2[L3_2]
        L3_2 = L1_2.pp
        L4_2 = L1_1
        L4_2 = L4_2 + 1
        L3_2 = L3_2[L4_2]
        if nil ~= L2_2 then
          L4_2 = GetDistanceBetween2
          L5_2 = vector3
          L6_2 = L2_2.x
          L7_2 = L2_2.y
          L8_2 = L2_2.z
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
          L5_2 = 300.0
          if L4_2 < L5_2 then
            L4_2 = MarkerRaceRed
            L5_2 = vector3
            L6_2 = L2_2.x
            L7_2 = L2_2.y
            L8_2 = L2_2.z
            L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
            L4_2(L5_2, L6_2, L7_2, L8_2)
            L4_2 = L1_1
            L5_2 = L1_2.pp
            L5_2 = #L5_2
            L5_2 = L5_2 - 1
            if L4_2 < L5_2 and nil ~= L3_2 then
              L4_2 = MarkerRaceWhite
              L5_2 = vector3
              L6_2 = L3_2.x
              L7_2 = L3_2.y
              L8_2 = L3_2.z
              L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
              L4_2(L5_2, L6_2, L7_2, L8_2)
              L4_2 = IsWaypointActive
              L4_2 = L4_2()
              if not L4_2 then
                L4_2 = SetNewWaypoint
                L5_2 = vector3
                L6_2 = L3_2.x
                L7_2 = L3_2.y
                L8_2 = L3_2.z
                L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
                L4_2(L5_2, L6_2, L7_2, L8_2)
              end
            end
            L4_2 = GetDistanceBetween2
            L5_2 = vector3
            L6_2 = L2_2.x
            L7_2 = L2_2.y
            L8_2 = L2_2.z
            L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
            L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
            L5_2 = L1_2.sizeBlip
            if L4_2 < L5_2 then
              L4_2 = L1_1
              L4_2 = L4_2 + 1
              L1_1 = L4_2
              L4_2 = DeleteWaypoint
              L4_2()
              L4_2 = SoundTakeMarker
              L4_2()
              L4_2 = L1_1
              L5_2 = L1_2.pp
              L5_2 = #L5_2
              L5_2 = L5_2 + 1
              if L4_2 == L5_2 then
                L4_2 = MsgRaceComplete
                L4_2()
                L4_2 = TriggerServerEvent
                L5_2 = "corsa:crossvincitore"
                L6_2 = L0_1
                L4_2(L5_2, L6_2)
                L4_2 = TriggerServerEvent
                L5_2 = "corsa:delhostcross"
                L6_2 = L0_1
                L4_2(L5_2, L6_2)
                L4_2 = Citizen
                L4_2 = L4_2.Wait
                L5_2 = 5000
                L4_2(L5_2)
              end
            end
          end
          L4_2 = WhenYouFallLose
          if L4_2 then
            L4_2 = IsPedSittingInAnyVehicle
            L5_2 = L0_2
            L4_2 = L4_2(L5_2)
            if not L4_2 then
              L4_2 = 0
              L1_1 = L4_2
              L4_2 = 0
              L0_1 = L4_2
              L4_2 = notify
              L5_2 = m
              L5_2 = L5_2.OutOfRace
              L4_2(L5_2)
            end
          end
        else
          L4_2 = 0
          L1_1 = L4_2
          L4_2 = 0
          L0_1 = L4_2
          L4_2 = notify
          L5_2 = m
          L5_2 = L5_2.OutOfRace
          L4_2(L5_2)
        end
    end
    else
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
  end
end
L3_1(L4_1)
