local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = PlayerInfos
if not L0_1 then
  L0_1 = {}
end
PlayerInfos = L0_1
L0_1 = RegisterServerEvent
L1_1 = "updatePlayerInfo"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "updatePlayerInfo"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = source
  L6_2 = PlayerInfos
  L7_2 = PlayerInfos
  L7_2 = L7_2[L5_2]
  if not L7_2 then
    L7_2 = {}
  end
  L6_2[L5_2] = L7_2
  if nil ~= A0_2 then
    L6_2 = PlayerInfos
    L6_2 = L6_2[L5_2]
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = 0
    end
    L6_2.Sword = L7_2
  end
  if nil ~= A1_2 then
    L6_2 = PlayerInfos
    L6_2 = L6_2[L5_2]
    L7_2 = tonumber
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = 0
    end
    L6_2.Shield = L7_2
  end
  if nil ~= A2_2 then
    L6_2 = PlayerInfos
    L6_2 = L6_2[L5_2]
    L6_2.List = A2_2
  end
  if nil ~= A3_2 then
    L6_2 = PlayerInfos
    L6_2 = L6_2[L5_2]
    L7_2 = tonumber
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = 1
    end
    L6_2.Style = L7_2
  end
  if nil ~= A4_2 then
    L6_2 = PlayerInfos
    L6_2 = L6_2[L5_2]
    L7_2 = tonumber
    L8_2 = A4_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = 0
    end
    L6_2.Bow = L7_2
  end
  L6_2 = SaveCombatData
  L7_2 = L5_2
  L8_2 = PlayerInfos
  L8_2 = L8_2[L5_2]
  L8_2 = L8_2.Style
  L9_2 = PlayerInfos
  L9_2 = L9_2[L5_2]
  L9_2 = L9_2.Shield
  L10_2 = PlayerInfos
  L10_2 = L10_2[L5_2]
  L10_2 = L10_2.Sword
  L11_2 = PlayerInfos
  L11_2 = L11_2[L5_2]
  L11_2 = L11_2.List
  L12_2 = PlayerInfos
  L12_2 = L12_2[L5_2]
  L12_2 = L12_2.Bow
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerInfos
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L1_2.Style
  if not L2_2 then
    L2_2 = 1
  end
  L3_2 = L1_2.Shield
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = L1_2.Bow
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = L1_2.Sword
  if not L5_2 then
    L5_2 = 0
  end
  L6_2 = L1_2.List
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = SaveCombatData
  L8_2 = A0_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = L4_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
SaveFromCache = L0_1
L0_1 = RegisterServerEvent
L1_1 = "saveCombatInfo"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "saveCombatInfo"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SaveFromCache
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStop"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = GetPlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SaveFromCache
    L8_2 = tonumber
    L9_2 = L6_2
    L8_2, L9_2 = L8_2(L9_2)
    L7_2(L8_2, L9_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "AddMoveServer"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "AddMoveServer"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "AddMoveClient"
  L4_2 = A1_2
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "SetHPCombat"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "SetHPCombat"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "SetHPCombat"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "AssignNearPlayer"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "AssignNearPlayer"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "AssignNearPlayer"
  L4_2 = A1_2
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "ApplyBloodCombat"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "ApplyBloodCombat"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "ApplyBloodCombat"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "combat:setalpha"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "combat:setalpha"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "combat:setalpha"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "SyncRotationCombat"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "SyncRotationCombat"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "SyncRotationCombat"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "HitSound"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "HitSound"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L9_2 = TriggerClientEvent
  L10_2 = "HitSound"
  L11_2 = -1
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = A4_2
  L17_2 = A5_2
  L18_2 = A6_2
  L19_2 = A7_2
  L20_2 = A8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "getFinisher"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "getFinisher"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = TriggerClientEvent
  L6_2 = "getFinisher"
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
objectsByPlayer = L0_1
L0_1 = AddEventHandler
L1_1 = "weaponDamageEvent"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 and not (A0_2 <= 0) then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L2_2 = tonumber
  L3_2 = A1_2.victimNetId
  L2_2 = L2_2(L3_2)
  if not L2_2 or L2_2 <= 0 then
    return
  end
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = GetEntityType
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if 1 == L4_2 then
        goto lbl_39
      end
    end
  end
  do return end
  ::lbl_39::
  L4_2 = tonumber
  L5_2 = NetworkGetEntityOwner
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 or L4_2 <= 0 or L4_2 == A0_2 then
    return
  end
  L5_2 = GetPlayerPed
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 ~= L3_2 then
    return
  end
  L5_2 = samePatto
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L5_2 = CancelEvent
  L5_2()
  L5_2 = TriggerClientEvent
  L6_2 = "party:friendlyFireBlocked"
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "fivem_netstats"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "fivem_netstats"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "fivem_netstats"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
L1_1 = 350
L2_1 = 0
L3_1 = {}
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetGameTimer
  L0_2 = L0_2()
  L1_2 = L2_1
  L1_2 = L0_2 - L1_2
  L2_2 = L1_1
  if L1_2 > L2_2 then
    L1_2 = GetAllPeds
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = {}
    end
    L3_1 = L1_2
    L2_1 = L0_2
  end
  L1_2 = L3_1
  return L1_2
end
L5_1 = RegisterNetEvent
L6_1 = "ApplyDamageNearly"
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L5_2 = source
  L6_2 = tonumber
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  A3_2 = L6_2 or A3_2
  if not L6_2 then
    A3_2 = 0
  end
  L6_2 = tonumber
  L7_2 = A4_2
  L6_2 = L6_2(L7_2)
  A4_2 = L6_2 or A4_2
  if not L6_2 then
    A4_2 = 0
  end
  if A3_2 <= 0 or A4_2 <= 0 then
    return
  end
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = L0_1
  L8_2 = A3_2
  L9_2 = 1
  L10_2 = 100
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  A3_2 = L6_2
  L6_2 = L0_1
  L7_2 = A4_2
  L8_2 = 0.1
  L9_2 = 20.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A4_2 = L6_2
  L6_2 = GetPlayerRoutingBucket
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = DebugMode
  if L7_2 then
    L7_2 = print
    L8_2 = "[Debug-Combat][SERVER] src:"
    L9_2 = L5_2
    L10_2 = "damage:"
    L11_2 = A3_2
    L12_2 = "radius:"
    L13_2 = A4_2
    L14_2 = "coords:"
    L15_2 = A0_2
    L16_2 = A1_2
    L17_2 = A2_2
    L18_2 = "bucket:"
    L19_2 = L6_2
    L20_2 = "patto:"
    L21_2 = pattoOf
    L21_2 = L21_2[L5_2]
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  end
  L7_2 = ipairs
  L8_2 = GetPlayers
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2()
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L14_2 = GetPlayerRoutingBucket
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 == L6_2 then
        L14_2 = samePatto
        L15_2 = L5_2
        L16_2 = L13_2
        L14_2 = L14_2(L15_2, L16_2)
        if L14_2 then
          L14_2 = DebugMode
          if L14_2 then
            L14_2 = print
            L15_2 = "[Debug-Combat][SERVER] skip friendly fire:"
            L16_2 = L5_2
            L17_2 = "->"
            L18_2 = L13_2
            L19_2 = "patto:"
            L20_2 = pattoOf
            L20_2 = L20_2[L5_2]
            L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          end
        else
          L14_2 = DebugMode
          if L14_2 then
            L14_2 = print
            L15_2 = "[Debug-Combat][SERVER] send damage to pid:"
            L16_2 = L13_2
            L14_2(L15_2, L16_2)
          end
          L14_2 = TriggerClientEvent
          L15_2 = "ApplyDamageNearly:client"
          L16_2 = L13_2
          L17_2 = A0_2
          L18_2 = A1_2
          L19_2 = A2_2
          L20_2 = A3_2
          L21_2 = A4_2
          L22_2 = L5_2
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        end
      end
    end
  end
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2)
  if A0_2 < A1_2 then
    return A1_2
  end
  if A2_2 < A0_2 then
    return A2_2
  end
  return A0_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.x
  L3_2 = A1_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.y
  L4_2 = A1_2.y
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.z
  L5_2 = A1_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = math
  L5_2 = L5_2.sqrt
  L6_2 = L2_2 * L2_2
  L7_2 = L3_2 * L3_2
  L6_2 = L6_2 + L7_2
  L7_2 = L4_2 * L4_2
  L6_2 = L6_2 + L7_2
  return L5_2(L6_2)
end
L7_1 = RegisterNetEvent
L8_1 = "my_spells:healArea:server"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = vector3
  L3_2 = tonumber
  L4_2 = A0_2.x
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0.0
  end
  L4_2 = tonumber
  L5_2 = A0_2.y
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0.0
  end
  L5_2 = tonumber
  L6_2 = A0_2.z
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0.0
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L5_1
  L4_2 = tonumber
  L5_2 = A0_2.radius
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 8.0
  end
  L5_2 = 1.0
  L6_2 = 50.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L5_1
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = tonumber
  L7_2 = A0_2.amount
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 10
  end
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  L7_2 = 100
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L5_1
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = tonumber
  L8_2 = A0_2.ticks
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 5
  end
  L6_2 = L6_2(L7_2)
  L7_2 = 1
  L8_2 = 30
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_1
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = tonumber
  L9_2 = A0_2.interval
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = 500
  end
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = 5000
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = GetPlayers
  L7_2 = L7_2()
  L8_2 = ipairs
  L9_2 = L7_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = tonumber
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L15_2 = GetPlayerPed
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      if L15_2 and 0 ~= L15_2 then
        L16_2 = GetEntityCoords
        L17_2 = L15_2
        L16_2 = L16_2(L17_2)
        L17_2 = L6_1
        L18_2 = L2_2
        L19_2 = L16_2
        L17_2 = L17_2(L18_2, L19_2)
        if L3_2 >= L17_2 then
          L17_2 = TriggerClientEvent
          L18_2 = "my_spells:healArea:apply"
          L19_2 = L14_2
          L20_2 = L4_2
          L21_2 = L5_2
          L22_2 = L6_2
          L23_2 = A0_2.revive
          L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
        end
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "my_spells:freezeArea:server"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L5_1
  L3_2 = tonumber
  L4_2 = A0_2.radius
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 8.0
  end
  L4_2 = 1.0
  L5_2 = 50.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    return
  end
  L4_2 = vector3
  L5_2 = tonumber
  L6_2 = A0_2.x
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = tonumber
  L7_2 = A0_2.y
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0.0
  end
  L7_2 = tonumber
  L8_2 = A0_2.z
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0.0
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 3500
  L6_2 = GetPlayers
  L6_2 = L6_2()
  L7_2 = ipairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L14_2 = GetPlayerPed
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 and 0 ~= L14_2 then
        L15_2 = GetEntityCoords
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L16_2 = L15_2 - L4_2
        L16_2 = #L16_2
        if L2_2 >= L16_2 then
          L16_2 = TriggerClientEvent
          L17_2 = "my_spells:freezeArea:apply"
          L18_2 = L13_2
          L19_2 = L5_2
          L16_2(L17_2, L18_2, L19_2)
        end
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "my_spells:poisonArea:server"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L5_1
  L3_2 = tonumber
  L4_2 = A0_2.radius
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 8.0
  end
  L4_2 = 1.0
  L5_2 = 50.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    return
  end
  L4_2 = vector3
  L5_2 = tonumber
  L6_2 = A0_2.x
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = tonumber
  L7_2 = A0_2.y
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0.0
  end
  L7_2 = tonumber
  L8_2 = A0_2.z
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0.0
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 3500
  L6_2 = GetPlayers
  L6_2 = L6_2()
  L7_2 = ipairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L14_2 = GetPlayerPed
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 and 0 ~= L14_2 then
        L15_2 = GetEntityCoords
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L16_2 = L15_2 - L4_2
        L16_2 = #L16_2
        if L2_2 >= L16_2 then
          L16_2 = TriggerClientEvent
          L17_2 = "my_spells:poisonArea:apply"
          L18_2 = L13_2
          L19_2 = L5_2
          L16_2(L17_2, L18_2, L19_2)
        end
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "my_spells:ragdollArea:server"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L5_1
  L3_2 = tonumber
  L4_2 = A0_2.radius
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 8.0
  end
  L4_2 = 1.0
  L5_2 = 50.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    return
  end
  L4_2 = vector3
  L5_2 = tonumber
  L6_2 = A0_2.x
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = tonumber
  L7_2 = A0_2.y
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0.0
  end
  L7_2 = tonumber
  L8_2 = A0_2.z
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0.0
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 1500
  L6_2 = A0_2.dur
  if nil ~= L6_2 then
    L6_2 = A0_2.dur
    L7_2 = 1000
    if L6_2 >= L7_2 then
      L5_2 = A0_2.dur
    end
  end
  L6_2 = GetPlayers
  L6_2 = L6_2()
  L7_2 = ipairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L14_2 = GetPlayerPed
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 and 0 ~= L14_2 then
        L15_2 = GetEntityCoords
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L16_2 = L15_2 - L4_2
        L16_2 = #L16_2
        if L2_2 >= L16_2 then
          L16_2 = TriggerClientEvent
          L17_2 = "my_spells:ragdollArea:apply"
          L18_2 = L13_2
          L19_2 = L5_2
          L16_2(L17_2, L18_2, L19_2)
        end
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "my_spells:earthQArea:server"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L5_1
  L3_2 = tonumber
  L4_2 = A0_2.radius
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 8.0
  end
  L4_2 = 1.0
  L5_2 = 50.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    return
  end
  L4_2 = vector3
  L5_2 = tonumber
  L6_2 = A0_2.x
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = tonumber
  L7_2 = A0_2.y
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0.0
  end
  L7_2 = tonumber
  L8_2 = A0_2.z
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0.0
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = GetPlayers
  L5_2 = L5_2()
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = tonumber
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 and L12_2 ~= L1_2 then
      L13_2 = GetPlayerPed
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 and 0 ~= L13_2 then
        L14_2 = GetEntityCoords
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L15_2 = L14_2 - L4_2
        L15_2 = #L15_2
        if L2_2 >= L15_2 then
          L15_2 = TriggerClientEvent
          L16_2 = "my_spells:earthQArea:apply"
          L17_2 = L12_2
          L15_2(L16_2, L17_2)
          L15_2 = TriggerClientEvent
          L16_2 = "my_spells:ragdollArea:apply"
          L17_2 = L12_2
          L18_2 = 3500
          L15_2(L16_2, L17_2, L18_2)
        end
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "my_spells:wetArea:server"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" ~= L2_2 then
    return
  end
  L2_2 = L5_1
  L3_2 = tonumber
  L4_2 = A0_2.radius
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 8.0
  end
  L4_2 = 1.0
  L5_2 = 50.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = GetPlayerPed
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 or 0 == L3_2 then
    return
  end
  L4_2 = vector3
  L5_2 = tonumber
  L6_2 = A0_2.x
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = 0.0
  end
  L6_2 = tonumber
  L7_2 = A0_2.y
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = 0.0
  end
  L7_2 = tonumber
  L8_2 = A0_2.z
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0.0
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = GetPlayers
  L5_2 = L5_2()
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = tonumber
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L13_2 = GetPlayerPed
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      if L13_2 and 0 ~= L13_2 then
        L14_2 = GetEntityCoords
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L15_2 = L14_2 - L4_2
        L15_2 = #L15_2
        if L2_2 >= L15_2 then
          L15_2 = TriggerClientEvent
          L16_2 = "my_spells:wetArea:apply"
          L17_2 = L12_2
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "myInvis:start"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_2
  end
  L3_2 = TriggerClientEvent
  L4_2 = "invis:applyTimer"
  L5_2 = -1
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "__invis:end"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = source
  end
  L2_2 = TriggerClientEvent
  L3_2 = "invis:off"
  L4_2 = -1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "combat_obj:register"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "combat_obj:register"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = objectsByPlayer
  L3_2 = objectsByPlayer
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[L1_2] = L3_2
  L2_2 = objectsByPlayer
  L2_2 = L2_2[L1_2]
  L2_2[A0_2] = true
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "combat_obj:delete"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or A0_2 <= 0 then
    L2_2 = print
    L3_2 = "[combat_obj] delete: NetID non valido ricevuto da %s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2(L4_2, L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L2_2 = objectsByPlayer
  if L2_2 then
    L2_2 = objectsByPlayer
    L2_2 = L2_2[L1_2]
    if L2_2 then
      L2_2 = objectsByPlayer
      L2_2 = L2_2[L1_2]
      L2_2 = L2_2[A0_2]
      if nil ~= L2_2 then
        goto lbl_37
      end
    end
  end
  L2_2 = print
  L3_2 = "[combat_obj] delete non autorizzato: player %s, NetID %s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = L1_2
  L6_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  do return end
  ::lbl_37::
  L2_2 = false
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 and 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = DeleteEntity
      L5_2 = L3_2
      L4_2(L5_2)
      L4_2 = DoesEntityExist
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L2_2 = not L4_2
    end
  end
  if not L2_2 then
    L4_2 = GetPlayerRoutingBucket
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = ipairs
    L6_2 = GetPlayers
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = tonumber
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L10_2 = L11_2
      if L10_2 then
        L11_2 = GetPlayerRoutingBucket
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 == L4_2 then
          L11_2 = TriggerClientEvent
          L12_2 = "combat_obj:deleteOne"
          L13_2 = L10_2
          L14_2 = A0_2
          L11_2(L12_2, L13_2, L14_2)
        end
      end
    end
  end
  L4_2 = objectsByPlayer
  L4_2 = L4_2[L1_2]
  L4_2[A0_2] = nil
  L4_2 = next
  L5_2 = objectsByPlayer
  L5_2 = L5_2[L1_2]
  L4_2 = L4_2(L5_2)
  if nil == L4_2 then
    L4_2 = objectsByPlayer
    L4_2[L1_2] = nil
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "wolfsound:playPos"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = source
  if not A0_2 then
    L2_2 = {}
    A0_2 = L2_2
  end
  L2_2 = A0_2.pos
  if not L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  end
  L3_2 = tostring
  L4_2 = A0_2.url
  if not L4_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A0_2.volume
  if not L5_2 then
    L5_2 = 0.4
  end
  L4_2 = L4_2(L5_2)
  L5_2 = tonumber
  L6_2 = A0_2.radius
  if not L6_2 then
    L6_2 = 40.0
  end
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.loop
  L6_2 = true == L6_2
  if "" == L3_2 then
    return
  end
  L7_2 = ipairs
  L8_2 = GetPlayers
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2()
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L14_2 = GetPlayerPed
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    if L14_2 and 0 ~= L14_2 then
      L15_2 = GetEntityCoords
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      L16_2 = L15_2 - L2_2
      L16_2 = #L16_2
      if L5_2 >= L16_2 then
        L16_2 = TriggerClientEvent
        L17_2 = "wolfsound:clientPlayPos"
        L18_2 = L13_2
        L19_2 = {}
        L20_2 = A0_2.id
        if not L20_2 then
          L20_2 = "snd_"
          L21_2 = math
          L21_2 = L21_2.floor
          L22_2 = L2_2.x
          L21_2 = L21_2(L22_2)
          L22_2 = "_"
          L23_2 = math
          L23_2 = L23_2.floor
          L24_2 = L2_2.y
          L23_2 = L23_2(L24_2)
          L24_2 = "_"
          L25_2 = math
          L25_2 = L25_2.floor
          L26_2 = L2_2.z
          L25_2 = L25_2(L26_2)
          L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2
        end
        L19_2.id = L20_2
        L19_2.url = L3_2
        L20_2 = {}
        L21_2 = L2_2.x
        L20_2.x = L21_2
        L21_2 = L2_2.y
        L20_2.y = L21_2
        L21_2 = L2_2.z
        L20_2.z = L21_2
        L19_2.pos = L20_2
        L19_2.volume = L4_2
        L19_2.radius = L5_2
        L19_2.loop = L6_2
        L20_2 = os
        L20_2 = L20_2.time
        L20_2 = L20_2()
        L19_2.startedAt = L20_2
        L16_2(L17_2, L18_2, L19_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "strianoSoundPos"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = source
  if not A0_2 then
    L2_2 = {}
    A0_2 = L2_2
  end
  L2_2 = A0_2.pos
  if not L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  end
  L3_2 = tostring
  L4_2 = A0_2.url
  if not L4_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A0_2.volume
  if not L5_2 then
    L5_2 = 0.4
  end
  L4_2 = L4_2(L5_2)
  L5_2 = tonumber
  L6_2 = A0_2.radius
  if not L6_2 then
    L6_2 = 40.0
  end
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.loop
  L6_2 = true == L6_2
  if "" == L3_2 then
    return
  end
  L7_2 = ipairs
  L8_2 = GetPlayers
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2()
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L14_2 = GetPlayerPed
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    if L14_2 and 0 ~= L14_2 then
      L15_2 = GetEntityCoords
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      L16_2 = L15_2 - L2_2
      L16_2 = #L16_2
      if L5_2 >= L16_2 then
        L16_2 = TriggerClientEvent
        L17_2 = "strianoSoundPos"
        L18_2 = L13_2
        L19_2 = {}
        L20_2 = A0_2.id
        if not L20_2 then
          L20_2 = "snd_"
          L21_2 = math
          L21_2 = L21_2.floor
          L22_2 = L2_2.x
          L21_2 = L21_2(L22_2)
          L22_2 = "_"
          L23_2 = math
          L23_2 = L23_2.floor
          L24_2 = L2_2.y
          L23_2 = L23_2(L24_2)
          L24_2 = "_"
          L25_2 = math
          L25_2 = L25_2.floor
          L26_2 = L2_2.z
          L25_2 = L25_2(L26_2)
          L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2
        end
        L19_2.id = L20_2
        L19_2.url = L3_2
        L20_2 = {}
        L21_2 = L2_2.x
        L20_2.x = L21_2
        L21_2 = L2_2.y
        L20_2.y = L21_2
        L21_2 = L2_2.z
        L20_2.z = L21_2
        L19_2.pos = L20_2
        L19_2.volume = L4_2
        L19_2.radius = L5_2
        L19_2.loop = L6_2
        L20_2 = os
        L20_2 = L20_2.time
        L20_2 = L20_2()
        L19_2.startedAt = L20_2
        L16_2(L17_2, L18_2, L19_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "strianoSound"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = source
  if not A0_2 then
    L2_2 = {}
    A0_2 = L2_2
  end
  L2_2 = A0_2.pos
  if not L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = GetPlayerPed
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  end
  L3_2 = tostring
  L4_2 = A0_2.url
  if not L4_2 then
    L4_2 = ""
  end
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = A0_2.volume
  if not L5_2 then
    L5_2 = 0.4
  end
  L4_2 = L4_2(L5_2)
  L5_2 = tonumber
  L6_2 = A0_2.radius
  if not L6_2 then
    L6_2 = 40.0
  end
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.loop
  L6_2 = true == L6_2
  if "" == L3_2 then
    return
  end
  L7_2 = ipairs
  L8_2 = GetPlayers
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L8_2()
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
    L13_2 = tonumber
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L14_2 = GetPlayerPed
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    if L14_2 and 0 ~= L14_2 then
      L15_2 = GetEntityCoords
      L16_2 = L14_2
      L15_2 = L15_2(L16_2)
      L16_2 = L15_2 - L2_2
      L16_2 = #L16_2
      if L5_2 >= L16_2 then
        L16_2 = TriggerClientEvent
        L17_2 = "strianoSound"
        L18_2 = L13_2
        L19_2 = {}
        L20_2 = A0_2.id
        if not L20_2 then
          L20_2 = "snd_"
          L21_2 = math
          L21_2 = L21_2.floor
          L22_2 = L2_2.x
          L21_2 = L21_2(L22_2)
          L22_2 = "_"
          L23_2 = math
          L23_2 = L23_2.floor
          L24_2 = L2_2.y
          L23_2 = L23_2(L24_2)
          L24_2 = "_"
          L25_2 = math
          L25_2 = L25_2.floor
          L26_2 = L2_2.z
          L25_2 = L25_2(L26_2)
          L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2
        end
        L19_2.id = L20_2
        L19_2.url = L3_2
        L20_2 = A0_2.ent
        L19_2.ent = L20_2
        L19_2.volume = L4_2
        L19_2.radius = L5_2
        L19_2.loop = L6_2
        L20_2 = os
        L20_2 = L20_2.time
        L20_2 = L20_2()
        L19_2.startedAt = L20_2
        L16_2(L17_2, L18_2, L19_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = {}
Portali = L7_1
L7_1 = RegisterNetEvent
L8_1 = "creaPortale"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "creaPortale"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = Portali
  L5_2 = {}
  L5_2.pos1 = A0_2
  L5_2.pos2 = A1_2
  L5_2.owner = A2_2
  L5_2.tempo = 5
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "getPortali"
  L5_2 = -1
  L6_2 = Portali
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = TriggerClientEvent
  L4_2 = "finePortale"
  L5_2 = A2_2
  L6_2 = Portali
  L6_2 = #L6_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = LoopPortali
  L3_2()
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "delPortale"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "delPortale"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = Portali
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = TriggerClientEvent
  L2_2 = "delPortale"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "getPortali"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "getPortali"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "getPortali"
  L2_2 = -1
  L3_2 = Portali
  L0_2(L1_2, L2_2, L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "SyncRotationWitcher"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "SyncRotationWitcher"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = TriggerClientEvent
  L4_2 = "SyncRotationWitcher"
  L5_2 = -1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "vaiRagdollWitcher"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "vaiRagdollWitcher"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "vaiRagdollWitcher"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "animWitcher"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "animWitcher"
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L7_2 = TriggerClientEvent
  L8_2 = "animWitcher"
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L14_2 = A5_2
  L15_2 = A6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "striano:ChangerUpdate"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "striano:ChangerUpdate"
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = TriggerClientEvent
  L5_2 = "striano:ChangerUpdate"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "ptfx:stopFx"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "ptfx:stopFx"
  L3_2 = -1
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "ptfx:trailOnPedBone"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerRoutingBucket
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = GetPlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetPlayerRoutingBucket
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "ptfx:trailOnPedBone"
      L11_2 = L8_2
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "PlayEffectTrail"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerRoutingBucket
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = GetPlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetPlayerRoutingBucket
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "PlayEffectTrail"
      L11_2 = L8_2
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "PlayEffectEnt"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerRoutingBucket
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = GetPlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetPlayerRoutingBucket
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "PlayEffectEnt"
      L11_2 = L8_2
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "PlayEffectLoopEnt"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerRoutingBucket
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = GetPlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetPlayerRoutingBucket
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "PlayEffectLoopEnt"
      L11_2 = L8_2
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "PlayEffectLoopEntPL"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerRoutingBucket
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = GetPlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetPlayerRoutingBucket
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "PlayEffectLoopEntPL"
      L11_2 = L8_2
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "PlayEffectServer"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerRoutingBucket
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = GetPlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetPlayerRoutingBucket
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == L2_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "PlayEffectServer"
      L11_2 = L8_2
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "explosion:sync"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "explosion:sync"
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L7_2 = source
  if not A0_2 then
    L8_2 = {}
    A0_2 = L8_2
  end
  L8_2 = A0_2.x
  if not L8_2 then
    L8_2 = 0.0
  end
  L9_2 = A0_2.y
  if not L9_2 then
    L9_2 = 0.0
  end
  L10_2 = A0_2.z
  if not L10_2 then
    L10_2 = 0.0
  end
  if not A1_2 then
    A1_2 = 6
  end
  if not A2_2 then
    A2_2 = 0.2
  end
  A3_2 = false ~= A3_2
  if not A4_2 then
    A4_2 = false
  end
  if not A5_2 then
    A5_2 = 0.0
  end
  if not A6_2 then
    A6_2 = 150.0
  end
  L11_2 = vector3
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = ipairs
  L13_2 = GetPlayers
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L13_2()
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
    L18_2 = GetPlayerPed
    L19_2 = L17_2
    L18_2 = L18_2(L19_2)
    if L18_2 and 0 ~= L18_2 then
      L19_2 = GetEntityCoords
      L20_2 = L18_2
      L19_2 = L19_2(L20_2)
      L20_2 = L19_2 - L11_2
      L20_2 = #L20_2
      if A6_2 >= L20_2 then
        L20_2 = TriggerClientEvent
        L21_2 = "explosion:do"
        L22_2 = L17_2
        L23_2 = {}
        L23_2.x = L8_2
        L23_2.y = L9_2
        L23_2.z = L10_2
        L24_2 = A1_2
        L25_2 = A2_2
        L26_2 = A3_2
        L27_2 = A4_2
        L28_2 = A5_2
        L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      end
    end
  end
end
L7_1(L8_1, L9_1)
L7_1 = GetCurrentResourceName
L7_1 = L7_1()
RESOURCE_NAME = L7_1
ADM_PATH = "admins.json"
L7_1 = json
if not L7_1 then
  L7_1 = require
  L8_1 = "json"
  L7_1 = L7_1(L8_1)
end
json = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = LoadResourceFile
  L2_2 = RESOURCE_NAME
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 or "" == L1_2 then
    L2_2 = {}
    return L2_2
  end
  L2_2 = pcall
  L3_2 = json
  L3_2 = L3_2.decode
  L4_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = type
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if "table" == L4_2 then
      goto lbl_36
    end
  end
  L4_2 = print
  L5_2 = "[STORE] %s corrotto, ricreo. Err: %s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A0_2
  L8_2 = tostring
  L9_2 = L3_2
  L8_2, L9_2 = L8_2(L9_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = {}
  do return L4_2 end
  ::lbl_36::
  return L3_2
end
readJson = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = {}
  end
  L2_2 = L2_2(L3_2)
  L3_2 = SaveResourceFile
  L4_2 = RESOURCE_NAME
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = #L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
writeJson = L7_1
L7_1 = readJson
L8_1 = ADM_PATH
L7_1 = L7_1(L8_1)
ADMINS = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 or "" == A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = string
  L1_2 = L1_2.lower
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%s+"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^1100001%x+$"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.find
    L3_2 = "^steam:"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = "steam:"
      L2_2 = A0_2
      L1_2 = L1_2 .. L2_2
      A0_2 = L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^[0-9a-f]+$"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.find
    L3_2 = ":"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = "license:"
      L2_2 = A0_2
      L1_2 = L1_2 .. L2_2
      A0_2 = L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.find
  L3_2 = "^license:"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.find
    L3_2 = "^steam:"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = nil
      return L1_2
    end
  end
  return A0_2
end
normId = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = GetPlayerIdentifiers
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = string
    L9_2 = L9_2.lower
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L1_2[L8_2] = L9_2
  end
  return L1_2
end
getIds = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if 0 == A0_2 then
    L1_2 = true
    L2_2 = "console"
    return L1_2, L2_2
  end
  L1_2 = ipairs
  L2_2 = getIds
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = ADMINS
    L7_2 = L7_2[L6_2]
    if L7_2 then
      L7_2 = true
      L8_2 = L6_2
      return L7_2, L8_2
    end
  end
  L1_2 = false
  L2_2 = nil
  return L1_2, L2_2
end
isAdmin = L7_1
L7_1 = AddEventHandler
L8_1 = "playerJoining"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = isAdmin
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Player
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.state
    L4_2 = L3_2
    L3_2 = L3_2.set
    L5_2 = "isAdmin"
    L6_2 = L1_2
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterServerEvent
L8_1 = "Krueger:sync"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "Krueger:sync"
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = TriggerClientEvent
  L5_2 = "Krueger:sync"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "combat:setSword"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "combat:setSword"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = "combat:setSword"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "combatAdmin:getPlayerCombatList"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = GetPlayerName
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L2_2 = identOf
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = CombatStorage
  L3_2 = L3_2.Get
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "combatAdmin:receivePlayerCombatList"
    L6_2 = L1_2
    L7_2 = A0_2
    L8_2 = {}
    L9_2 = nil
    L10_2 = nil
    L11_2 = nil
    L12_2 = nil
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    return
  end
  L4_2 = TriggerClientEvent
  L5_2 = "combatAdmin:receivePlayerCombatList"
  L6_2 = L1_2
  L7_2 = A0_2
  L8_2 = L3_2.list
  if not L8_2 then
    L8_2 = {}
  end
  L9_2 = L3_2.style
  L10_2 = L3_2.shield
  L11_2 = L3_2.sword
  L12_2 = L3_2.bow
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "combatAdmin:removePlayerStyle"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = source
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if A0_2 then
    L3_2 = GetPlayerName
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L3_2 = identOf
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = CombatStorage
  L4_2 = L4_2.Get
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = type
  L6_2 = L4_2.list
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = L4_2.list
    if L5_2 then
      goto lbl_37
    end
  end
  L5_2 = {}
  ::lbl_37::
  L6_2 = pairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = false
    L13_2 = type
    L14_2 = L11_2
    L13_2 = L13_2(L14_2)
    if "table" == L13_2 then
      L13_2 = tostring
      L14_2 = L11_2.id
      if not L14_2 then
        L14_2 = L11_2.style
        if not L14_2 then
          L14_2 = L10_2
        end
      end
      L13_2 = L13_2(L14_2)
      L14_2 = tostring
      L15_2 = A1_2
      L14_2 = L14_2(L15_2)
      L12_2 = L13_2 == L14_2
    else
      L13_2 = tostring
      L14_2 = L11_2
      L13_2 = L13_2(L14_2)
      L14_2 = tostring
      L15_2 = A1_2
      L14_2 = L14_2(L15_2)
      L12_2 = L13_2 == L14_2
    end
    if L12_2 then
      L5_2[L10_2] = nil
    end
  end
  L6_2 = PlayerInfos
  L7_2 = PlayerInfos
  L7_2 = L7_2[A0_2]
  if not L7_2 then
    L7_2 = {}
  end
  L6_2[A0_2] = L7_2
  L6_2 = PlayerInfos
  L6_2 = L6_2[A0_2]
  L6_2.List = L5_2
  L6_2 = PlayerInfos
  L6_2 = L6_2[A0_2]
  L7_2 = PlayerInfos
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Style
  if not L7_2 then
    L7_2 = L4_2.style
    if not L7_2 then
      L7_2 = 1
    end
  end
  L6_2.Style = L7_2
  L6_2 = PlayerInfos
  L6_2 = L6_2[A0_2]
  L7_2 = PlayerInfos
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Shield
  if not L7_2 then
    L7_2 = L4_2.shield
    if not L7_2 then
      L7_2 = 0
    end
  end
  L6_2.Shield = L7_2
  L6_2 = PlayerInfos
  L6_2 = L6_2[A0_2]
  L7_2 = PlayerInfos
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Sword
  if not L7_2 then
    L7_2 = L4_2.sword
    if not L7_2 then
      L7_2 = 0
    end
  end
  L6_2.Sword = L7_2
  L6_2 = PlayerInfos
  L6_2 = L6_2[A0_2]
  L7_2 = PlayerInfos
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Bow
  if not L7_2 then
    L7_2 = L4_2.bow
    if not L7_2 then
      L7_2 = 0
    end
  end
  L6_2.Bow = L7_2
  L6_2 = tostring
  L7_2 = PlayerInfos
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Style
  L6_2 = L6_2(L7_2)
  L7_2 = tostring
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  if L6_2 == L7_2 then
    L6_2 = PlayerInfos
    L6_2 = L6_2[A0_2]
    L6_2.Style = 1
  end
  L6_2 = SaveCombatData
  L7_2 = A0_2
  L8_2 = PlayerInfos
  L8_2 = L8_2[A0_2]
  L8_2 = L8_2.Style
  L9_2 = PlayerInfos
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.Shield
  L10_2 = PlayerInfos
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2.Sword
  L11_2 = L5_2
  L12_2 = PlayerInfos
  L12_2 = L12_2[A0_2]
  L12_2 = L12_2.Bow
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = TriggerClientEvent
  L7_2 = "getBackCombatListOnly"
  L8_2 = A0_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = TriggerClientEvent
  L7_2 = "getBackCombatList"
  L8_2 = A0_2
  L9_2 = L5_2
  L10_2 = PlayerInfos
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2.Style
  L11_2 = PlayerInfos
  L11_2 = L11_2[A0_2]
  L11_2 = L11_2.Shield
  L12_2 = PlayerInfos
  L12_2 = L12_2[A0_2]
  L12_2 = L12_2.Sword
  L13_2 = PlayerInfos
  L13_2 = L13_2[A0_2]
  L13_2 = L13_2.Bow
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L7_1(L8_1, L9_1)
L7_1 = {}
L8_1 = RegisterNetEvent
L9_1 = "striano_combat:trailStart"
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = source
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L5_2 = L7_1
  L5_2 = L5_2[L3_2]
  if not L5_2 then
    L5_2 = 0
  end
  L6_2 = L4_2 - L5_2
  if L6_2 < 60 then
    return
  end
  L6_2 = L7_1
  L6_2[L3_2] = L4_2
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = tonumber
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = 0
  end
  L6_2 = L6_2(L7_2)
  A0_2 = L6_2
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 100
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = 5000
  L11_2 = tonumber
  L12_2 = A2_2
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = 800
  end
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A2_2 = L6_2
  L6_2 = tostring
  L7_2 = A1_2 or L7_2
  if not A1_2 then
    L7_2 = ""
  end
  L6_2 = L6_2(L7_2)
  A1_2 = L6_2
  if A0_2 <= 0 then
    return
  end
  if "" ~= A1_2 then
    L6_2 = #A1_2
    if not (L6_2 > 80) then
      goto lbl_59
    end
  end
  do return end
  ::lbl_59::
  L7_2 = A1_2
  L6_2 = A1_2.find
  L8_2 = "[^%w_%-]"
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    return
  end
  L6_2 = TriggerClientEvent
  L7_2 = "striano_combat:trailRemoteStart"
  L8_2 = -1
  L9_2 = L3_2
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  if not A0_2 or A0_2 <= 0 then
    return
  end
  if not A2_2 then
    A2_2 = 8
  end
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 and 0 ~= L3_2 then
    L4_2 = DoesEntityExist
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = DeleteEntity
      L5_2 = L3_2
      L4_2(L5_2)
      L4_2 = DoesEntityExist
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        return
      end
    end
  end
  if A2_2 > 0 then
    L4_2 = SetTimeout
    L5_2 = 200
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L8_1
      L1_3 = A0_2
      L2_3 = A1_2
      L3_3 = A2_2
      L3_3 = L3_3 - 1
      L0_3(L1_3, L2_3, L3_3)
    end
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = ipairs
  L5_2 = GetPlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tonumber
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L9_2 = L10_2
    if L9_2 then
      L10_2 = GetPlayerRoutingBucket
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 == A1_2 then
        L10_2 = TriggerClientEvent
        L11_2 = "combat_obj:deleteOne"
        L12_2 = L9_2
        L13_2 = A0_2
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end
L9_1 = AddEventHandler
L10_1 = "playerDropped"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = GetPlayerRoutingBucket
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = SaveFromCache
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = PlayerInfos
  L3_2[L1_2] = nil
  L3_2 = L7_1
  L3_2[L1_2] = nil
  L3_2 = pattoOf
  L3_2 = L3_2[L1_2]
  if L3_2 then
    L4_2 = Patti
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L4_2 = Patti
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.listaPlayer
      if L4_2 then
        L4_2 = _removeValue
        L5_2 = Patti
        L5_2 = L5_2[L3_2]
        L5_2 = L5_2.listaPlayer
        L6_2 = L1_2
        L4_2(L5_2, L6_2)
      end
      L4_2 = Patti
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.listaNomi
      if L4_2 then
        L4_2 = Patti
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.listaNomi
        L4_2[L1_2] = nil
      end
    end
  end
  L4_2 = pattoOf
  L4_2[L1_2] = nil
  L4_2 = objectsByPlayer
  L4_2 = L4_2[L1_2]
  if L4_2 then
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2 in L5_2, L6_2, L7_2, L8_2 do
      L10_2 = L8_1
      L11_2 = L9_2
      L12_2 = L2_2
      L13_2 = 8
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L5_2 = objectsByPlayer
  L5_2[L1_2] = nil
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "striano_ragdoll:requestMany"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = TriggerClientEvent
    L8_2 = "striano_ragdoll:apply"
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L9_1(L10_1, L11_1)
