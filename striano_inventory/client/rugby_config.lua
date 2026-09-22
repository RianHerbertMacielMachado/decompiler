local L0_1, L1_1, L2_1
CommandActive = true
Outlineball = true
cmdSpawnball = "spawnballRugby"
cmdDelball = "delballRugby"
cmdInvite = "inviteRugby"
cmdLeave = "leaveRugby"
aimkey = 25
shootkey = 24
takelkey = 23
takekey = 74
function L0_1()
  local L0_2, L1_2
end
OnBallSpawnBefore = L0_1
function L0_1()
  local L0_2, L1_2
end
OnBallSpawnAfter = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = GetResourceState
  L1_2 = "striano_combat"
  L0_2 = L0_2(L1_2)
  if "started" ~= L0_2 then
    L0_2 = true
    return L0_2
  end
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.incombatanim
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.inroll
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = true
      return L0_2
  end
  else
    L0_2 = false
    return L0_2
  end
end
canFromCombat = L0_1
L0_1 = RegisterCommand
L1_1 = cmdInvite
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = PalloneAttivo
  if L2_2 then
    L2_2 = IsEntityAttachedToEntity
    L3_2 = PalloneAttivo
    L4_2 = PlayerPedId
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if L2_2 then
      L2_2 = ImOwner
      L3_2 = PalloneAttivo
      if L2_2 == L3_2 then
        L2_2 = PlayerVicino
        L2_2, L3_2 = L2_2()
        if -1 ~= L2_2 then
          L4_2 = IsPedAPlayer
          L5_2 = GetPlayerPed
          L6_2 = L2_2
          L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
          L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
          if L4_2 and L3_2 < 2.0 then
            L4_2 = TriggerServerEvent
            L5_2 = "InviteToPlayRugby"
            L6_2 = GetPlayerServerId
            L7_2 = L2_2
            L6_2 = L6_2(L7_2)
            L7_2 = ObjToNet
            L8_2 = PalloneAttivo
            L7_2, L8_2 = L7_2(L8_2)
            L4_2(L5_2, L6_2, L7_2, L8_2)
            L4_2 = print
            L5_2 = "Player ID "
            L6_2 = GetPlayerServerId
            L7_2 = L2_2
            L6_2 = L6_2(L7_2)
            L7_2 = " found and try to invite."
            L5_2 = L5_2 .. L6_2 .. L7_2
            L4_2(L5_2)
        end
        else
          L4_2 = print
          L5_2 = "No player nearby to invite play rugby."
          L4_2(L5_2)
        end
      else
        L2_2 = print
        L3_2 = "You are not the owner of this ball to invite players to play with."
        L2_2(L3_2)
      end
    else
      L2_2 = print
      L3_2 = "You need to have your OWN ball in hand to invite someone to play with you."
      L2_2(L3_2)
    end
  else
    L2_2 = print
    L3_2 = "You don't have a ball active to play."
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = cmdLeave
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PalloneAttivo
  if L2_2 then
    L2_2 = ImOwner
    L3_2 = PalloneAttivo
    if L2_2 == L3_2 then
      L2_2 = print
      L3_2 = "You are the OWNER of a ball, if you want stop the match for all players play with you use: /"
      L4_2 = cmdDelball
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
    else
      L2_2 = IsEntityAttachedToEntity
      L3_2 = PalloneAttivo
      L4_2 = PlayerPedId
      L4_2, L5_2 = L4_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 then
        L2_2 = DetachEntity
        L3_2 = PalloneAttivo
        L2_2(L3_2)
        L2_2 = ClearPedTasksImmediately
        L3_2 = PlayerPedId
        L3_2, L4_2, L5_2 = L3_2()
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = TriggerServerEvent
        L3_2 = "sendBallOwner"
        L4_2 = ObjToNet
        L5_2 = PalloneAttivo
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
      L2_2 = SetEntityDrawOutline
      L3_2 = PalloneAttivo
      L4_2 = false
      L2_2(L3_2, L4_2)
      PalloneAttivo = nil
      L2_2 = print
      L3_2 = "You leave the match you was playing."
      L2_2(L3_2)
    end
  else
    L2_2 = print
    L3_2 = "You don't have a ball active to play."
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "SpawnBallRugby"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "SpawnBallRugby"
function L2_1()
  local L0_2, L1_2
  L0_2 = SpawnBall
  L0_2()
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if A0_2 >= 3 then
    L1_2 = DrawMarker
    L2_2 = 28
    L3_2 = x
    L4_2 = y
    L5_2 = z
    L5_2 = L5_2 + 0.5
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0.09
    L13_2 = 0.09
    L14_2 = 0.09
    L15_2 = 255
    L16_2 = 255
    L17_2 = 255
    L18_2 = 255
    L19_2 = false
    L20_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  else
    L1_2 = DrawMarker
    L2_2 = 28
    L3_2 = x
    L4_2 = y
    L5_2 = z
    L5_2 = L5_2 + 0.5
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0.09
    L13_2 = 0.09
    L14_2 = 0.09
    L15_2 = 255
    L16_2 = 0
    L17_2 = 0
    L18_2 = 255
    L19_2 = false
    L20_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  end
end
DrawMarkerCustom = L0_1
