local L0_1, L1_1, L2_1
L0_1 = Patti
if not L0_1 then
  L0_1 = {}
end
Patti = L0_1
L0_1 = IlMioPatto
if not L0_1 then
  L0_1 = 0
end
IlMioPatto = L0_1
L0_1 = PattoDentro
if not L0_1 then
  L0_1 = 0
end
PattoDentro = L0_1
L0_1 = PattiCreati
if not L0_1 then
  L0_1 = {}
end
PattiCreati = L0_1
L0_1 = {}
PartyAllyMembers = L0_1
PartyIconThreadActive = false
PARTY_ICON_ENABLED = true
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  PartyAllyMembers = L0_2
  L0_2 = GetPlayerServerId
  L1_2 = PlayerId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = tonumber
  L2_2 = PattoDentro
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
  end
  if L1_2 <= 0 then
    L2_2 = tonumber
    L3_2 = IlMioPatto
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2 or L1_2
    if not L2_2 then
      L1_2 = 0
    end
  end
  if L1_2 <= 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = Patti
  if L2_2 then
    L2_2 = Patti
    L2_2 = L2_2[L1_2]
  end
  if L2_2 then
    L3_2 = L2_2.listaPlayer
    if L3_2 then
      goto lbl_38
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_38::
  L3_2 = false
  L4_2 = pairs
  L5_2 = L2_2.listaPlayer
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = tonumber
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L9_2 = L10_2
    if L9_2 and L9_2 ~= L0_2 then
      L10_2 = PartyAllyMembers
      L10_2[L9_2] = true
      L3_2 = true
    end
  end
  if L3_2 then
    L4_2 = StartPartyIconThread
    L4_2()
  end
  return L3_2
end
RefreshPartyAllyCache = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = PartyAllyMembers
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2 in L0_2, L1_2, L2_2, L3_2 do
    L5_2 = true
    return L5_2
  end
  L0_2 = false
  return L0_2
end
HasPartyAllies = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = PartyIconThreadActive
  if L0_2 then
    return
  end
  L0_2 = PARTY_ICON_ENABLED
  if not L0_2 then
    return
  end
  L0_2 = HasPartyAllies
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  PartyIconThreadActive = true
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    while true do
      L0_3 = PartyIconThreadActive
      if not L0_3 then
        break
      end
      L0_3 = 300
      L1_3 = PARTY_ICON_ENABLED
      if L1_3 then
        L1_3 = HasPartyAllies
        L1_3 = L1_3()
        if L1_3 then
          goto lbl_14
        end
      end
      PartyIconThreadActive = false
      do break end
      ::lbl_14::
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetEntityCoords
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = pairs
      L4_3 = PartyAllyMembers
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3 in L3_3, L4_3, L5_3, L6_3 do
        L8_3 = GetPlayerFromServerId
        L9_3 = L7_3
        L8_3 = L8_3(L9_3)
        if -1 ~= L8_3 then
          L9_3 = GetPlayerPed
          L10_3 = L8_3
          L9_3 = L9_3(L10_3)
          if 0 ~= L9_3 then
            L10_3 = DoesEntityExist
            L11_3 = L9_3
            L10_3 = L10_3(L11_3)
            if L10_3 then
              L10_3 = IsEntityDead
              L11_3 = L9_3
              L10_3 = L10_3(L11_3)
              if not L10_3 then
                L10_3 = IsEntityVisible
                L11_3 = L9_3
                L10_3 = L10_3(L11_3)
                if L10_3 then
                  L10_3 = GetEntityCoords
                  L11_3 = L9_3
                  L10_3 = L10_3(L11_3)
                  L11_3 = L2_3 - L10_3
                  L11_3 = #L11_3
                  L12_3 = PARTY_ICON_DIST
                  if L11_3 <= L12_3 then
                    L0_3 = 0
                    L12_3 = DrawPartyAllyIcon
                    L13_3 = L9_3
                    L12_3(L13_3)
                  end
                end
              end
            end
          end
        end
      end
      L3_3 = Wait
      L4_3 = L0_3
      L3_3(L4_3)
    end
    PartyIconThreadActive = false
  end
  L0_2(L1_2)
end
StartPartyIconThread = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = 1
  L2_2 = Patti
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = Patti
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = Patti
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.nome
      if L5_2 then
        L5_2 = Patti
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.nome
        if "" ~= L5_2 then
          L5_2 = table
          L5_2 = L5_2.insert
          L6_2 = L0_2
          L7_2 = {}
          L7_2.realIndex = L4_2
          L8_2 = Patti
          L8_2 = L8_2[L4_2]
          L7_2.data = L8_2
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
  return L0_2
end
getVisiblePatti = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if not A0_2 or "" == A0_2 then
    return
  end
  L2_2 = SetPedRelationshipGroupHash
  L3_2 = L1_2
  L4_2 = GetHashKey
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityCanBeDamagedByRelationshipGroup
  L3_2 = L1_2
  L4_2 = false
  L5_2 = GetHashKey
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
applyPattoRelationship = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Patti
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = notifytt
    L3_2 = "Party not found."
    L2_2(L3_2)
    L2_2 = ApriMenuPatto
    L2_2()
    return
  end
  L2_2 = openConfirmMenu
  L3_2 = "Join "
  L4_2 = L1_2.nome
  L5_2 = "?"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = applyPattoRelationship
    L1_3 = L1_2.nome
    L0_3(L1_3)
    L0_3 = TriggerServerEvent
    L1_3 = "joinPatto"
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    PattoDentro = L0_3
    L0_3 = RefreshPartyAllyCache
    L0_3()
    L0_3 = notifytt
    L1_3 = txt_Covenant
    L1_3 = L1_3[4]
    L2_3 = " "
    L3_3 = L1_2.nome
    L4_3 = "."
    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3
    L0_3(L1_3)
    L0_3 = ApriMenuPatto
    L0_3()
  end
  function L5_2()
    local L0_3, L1_3
    L0_3 = ApriMenuPatto
    L0_3()
  end
  L2_2(L3_2, L4_2, L5_2)
end
joinPatto = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Patti
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = notifytt
    L3_2 = "Party not found."
    L2_2(L3_2)
    L2_2 = ApriMenuPatto
    L2_2()
    return
  end
  L2_2 = L1_2.pin
  if L2_2 then
    L2_2 = tostring
    L3_2 = L1_2.pin
    L2_2 = L2_2(L3_2)
    if "" ~= L2_2 then
      L2_2 = "Password"
      L3_2 = OpenInput
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = tostring
      L5_2 = L3_2 or L5_2
      if not L3_2 then
        L5_2 = ""
      end
      L4_2 = L4_2(L5_2)
      L5_2 = tostring
      L6_2 = L1_2.pin
      L5_2 = L5_2(L6_2)
      if L4_2 ~= L5_2 then
        L4_2 = notifytt
        L5_2 = txt_Covenant
        L5_2 = L5_2[5]
        L4_2(L5_2)
        L4_2 = Wait
        L5_2 = 150
        L4_2(L5_2)
        L4_2 = ListaPatti
        L4_2()
        return
      end
    end
  end
  L2_2 = joinPatto
  L3_2 = A0_2
  L2_2(L3_2)
end
askJoinPatto = L0_1
L0_1 = RegisterNetEvent
L1_1 = "updatePatti"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "updatePatti"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2 or nil
  if not A0_2 then
    L1_2 = {}
  end
  Patti = L1_2
  L1_2 = 1
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = Patti
  L3_2 = #L3_2
  L4_2 = PattiCreati
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = PattiCreati
    L5_2 = L5_2[L4_2]
    L6_2 = Patti
    L6_2 = L6_2[L4_2]
    if L6_2 then
      L7_2 = L6_2.nome
      if L7_2 then
        L7_2 = L6_2.nome
        if "" ~= L7_2 then
          if L5_2 then
            L7_2 = L5_2.nome
            L8_2 = L6_2.nome
            if L7_2 == L8_2 then
              goto lbl_50
            end
          end
          if L5_2 then
            L7_2 = L5_2.nome
            if L7_2 then
              L7_2 = L5_2.nome
              if "" ~= L7_2 then
                L7_2 = RemoveRelationshipGroup
                L8_2 = GetHashKey
                L9_2 = L5_2.nome
                L8_2, L9_2 = L8_2(L9_2)
                L7_2(L8_2, L9_2)
              end
            end
          end
          L7_2 = AddRelationshipGroup
          L8_2 = L6_2.nome
          L7_2(L8_2)
          ::lbl_50::
          L7_2 = PattiCreati
          L7_2[L4_2] = L6_2
      end
    end
    else
      if L5_2 then
        L7_2 = L5_2.nome
        if L7_2 then
          L7_2 = L5_2.nome
          if "" ~= L7_2 then
            L7_2 = RemoveRelationshipGroup
            L8_2 = GetHashKey
            L9_2 = L5_2.nome
            L8_2, L9_2 = L8_2(L9_2)
            L7_2(L8_2, L9_2)
          end
        end
      end
      L7_2 = PattiCreati
      L7_2[L4_2] = nil
    end
  end
  L1_2 = IlMioPatto
  if L1_2 > 0 then
    L1_2 = Patti
    L2_2 = IlMioPatto
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = Patti
      L2_2 = IlMioPatto
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.nome
      if L1_2 then
        L1_2 = Patti
        L2_2 = IlMioPatto
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.nome
        if "" ~= L1_2 then
          L1_2 = IlMioPatto
          PattoDentro = L1_2
          L1_2 = PlayerPedId
          L1_2 = L1_2()
          L2_2 = SetPedRelationshipGroupHash
          L3_2 = L1_2
          L4_2 = GetHashKey
          L5_2 = Patti
          L6_2 = IlMioPatto
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.nome
          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          L2_2 = SetEntityCanBeDamagedByRelationshipGroup
          L3_2 = L1_2
          L4_2 = false
          L5_2 = GetHashKey
          L6_2 = Patti
          L7_2 = IlMioPatto
          L6_2 = L6_2[L7_2]
          L6_2 = L6_2.nome
          L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        end
      end
    end
  end
  L1_2 = RefreshPartyAllyCache
  L1_2()
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "myPatto"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "myPatto"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    A0_2 = 0
  end
  IlMioPatto = A0_2
  PattoDentro = A0_2
  L1_2 = RefreshPartyAllyCache
  L1_2()
end
L0_1(L1_1, L2_1)
