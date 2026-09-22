local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
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
  L2_2 = "casate:requestTerritoryStates"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "deliveryBox:requestSync"
  L1_2(L2_2)
end
L0_1(L1_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  if "" == A0_2 then
    return
  end
  L1_2 = ExecuteCommand
  L2_2 = "prova3 "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
Notify = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A0_2 then
    A0_2 = 3.0
  end
  L1_2 = PlayerId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = nil
  L4_2 = A0_2
  L5_2 = ipairs
  L6_2 = GetActivePlayers
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L10_2 ~= L1_2 then
      L11_2 = GetPlayerPed
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      if 0 ~= L11_2 then
        L12_2 = DoesEntityExist
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = GetEntityCoords
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          L12_2 = L12_2 - L2_2
          L12_2 = #L12_2
          if L4_2 >= L12_2 then
            L4_2 = L12_2
            L3_2 = L10_2
          end
        end
      end
    end
  end
  return L3_2
end
L1_1 = nil
L2_1 = false
L3_1 = RegisterNetEvent
L4_1 = "casate:notify"
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = Notify
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^%s*(.-)%s*$"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = ""
  end
  return L1_2
end
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = exports
  L3_2 = L3_2.striano_core
  L4_2 = L3_2
  L3_2 = L3_2.OpenInput
  L5_2 = A0_2
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L7_2 = {}
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = CasateConfig
    L8_2 = L8_2.MaxNameLength
  end
  L7_2.maxLen = L8_2
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L4_1
  L3_2 = A0_2
  L4_2 = " - scrivi CONFERMA"
  L3_2 = L3_2 .. L4_2
  L4_2 = ""
  L5_2 = 16
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = string
  L3_2 = L3_2.lower
  L4_2 = L3_1
  L5_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  if "conferma" ~= L2_2 then
    L3_2 = Notify
    L4_2 = "Operazione annullata."
    return L3_2(L4_2)
  end
  L3_2 = A1_2
  L3_2()
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\240\159\143\176 Crea una Casata"
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = print
    L1_3 = "^2[CASATE CLIENT] CLICK CREA CASATA^7"
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.closeMenu
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 150
    L0_3(L1_3)
    L0_3 = L4_1
    L1_3 = "Nome della Casata"
    L2_3 = ""
    L3_3 = CasateConfig
    L3_3 = L3_3.MaxNameLength
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = L3_1
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L0_3 = L1_3
    L1_3 = print
    L2_3 = "^2[CASATE CLIENT] INPUT RICEVUTO:^7"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    if "" == L0_3 then
      return
    end
    L1_3 = TriggerServerEvent
    L2_3 = "casate:create"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\156\133 Accetta invito"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerServerEvent
    L1_3 = "casate:acceptInvite"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "\226\157\140 Rifiuta invito"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerServerEvent
    L1_3 = "casate:declineInvite"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  if not L1_2 or not A0_2 then
    return
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\226\134\144 Torna ai membri"
  function L5_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "casate:openMembersMenu"
    L0_3(L1_3)
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CasateConfig
  L2_2 = L2_2.Ranks
  L3_2 = A0_2.rank
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L3_2 = L2_2.label
    if L3_2 then
      goto lbl_28
    end
  end
  L3_2 = A0_2.rank
  ::lbl_28::
  L4_2 = exports
  L4_2 = L4_2.striano_fastmenu
  L5_2 = L4_2
  L4_2 = L4_2.addMenuItem
  L6_2 = "%s | %s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = A0_2.name
  L9_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  function L7_2()
    local L0_3, L1_3
  end
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L1_2.myRank
  if "owner" == L4_2 then
    L4_2 = A0_2.identifier
    L5_2 = L1_2.myIdentifier
    if L4_2 ~= L5_2 then
      L4_2 = A0_2.rank
      if "member" == L4_2 then
        L4_2 = exports
        L4_2 = L4_2.striano_fastmenu
        L5_2 = L4_2
        L4_2 = L4_2.addMenuItem
        L6_2 = "\226\172\134\239\184\143 Promuovi a Ufficiale"
        function L7_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = TriggerServerEvent
          L1_3 = "casate:setMemberRank"
          L2_3 = A0_2.identifier
          L3_3 = "officer"
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.closeMenu
          L0_3(L1_3)
        end
        L8_2 = true
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L4_2 = A0_2.rank
        if "officer" == L4_2 then
          L4_2 = exports
          L4_2 = L4_2.striano_fastmenu
          L5_2 = L4_2
          L4_2 = L4_2.addMenuItem
          L6_2 = "\226\172\135\239\184\143 Retrocedi a Membro"
          function L7_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = TriggerServerEvent
            L1_3 = "casate:setMemberRank"
            L2_3 = A0_2.identifier
            L3_3 = "member"
            L0_3(L1_3, L2_3, L3_3)
            L0_3 = exports
            L0_3 = L0_3.striano_fastmenu
            L1_3 = L0_3
            L0_3 = L0_3.closeMenu
            L0_3(L1_3)
          end
          L8_2 = true
          L4_2(L5_2, L6_2, L7_2, L8_2)
        end
      end
      L4_2 = exports
      L4_2 = L4_2.striano_fastmenu
      L5_2 = L4_2
      L4_2 = L4_2.addMenuItem
      L6_2 = "\240\159\145\145 Trasferisci propriet\195\160"
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
          local L0_4, L1_4, L2_4
          L0_4 = L5_1
          L1_4 = "Trasferire la Casata a "
          L2_4 = A0_2.name
          L1_4 = L1_4 .. L2_4
          function L2_4()
            local L0_5, L1_5, L2_5
            L0_5 = TriggerServerEvent
            L1_5 = "casate:transferOwnership"
            L2_5 = A0_2.identifier
            L0_5(L1_5, L2_5)
          end
          L0_4(L1_4, L2_4)
        end
        L0_3(L1_3, L2_3)
      end
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  L4_2 = L1_2.myRank
  L4_2 = "owner" == L4_2
  L5_2 = A0_2.rank
  L5_2 = "owner" == L5_2
  L6_2 = A0_2.identifier
  L7_2 = L1_2.myIdentifier
  L6_2 = L6_2 == L7_2
  L7_2 = L1_2.myRank
  L7_2 = "officer" == L7_2
  if L4_2 and not L5_2 and not L6_2 then
    L8_2 = L1_2.myRank
    if "owner" == L8_2 or L7_2 then
      L8_2 = exports
      L8_2 = L8_2.striano_fastmenu
      L9_2 = L8_2
      L8_2 = L8_2.addMenuItem
      L10_2 = "\226\157\140 Espelli membro"
      function L11_2()
        local L0_3, L1_3, L2_3
        L0_3 = exports
        L0_3 = L0_3.striano_fastmenu
        L1_3 = L0_3
        L0_3 = L0_3.closeMenu
        L0_3(L1_3)
        L0_3 = SetTimeout
        L1_3 = 100
        function L2_3()
          local L0_4, L1_4, L2_4
          L0_4 = L5_1
          L1_4 = "Espellere "
          L2_4 = A0_2.name
          L1_4 = L1_4 .. L2_4
          function L2_4()
            local L0_5, L1_5, L2_5
            L0_5 = TriggerServerEvent
            L1_5 = "casate:kickMember"
            L2_5 = A0_2.identifier
            L0_5(L1_5, L2_5)
          end
          L0_4(L1_4, L2_4)
        end
        L0_3(L1_3, L2_3)
      end
      L12_2 = true
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
  L8_2 = exports
  L8_2 = L8_2.striano_fastmenu
  L9_2 = L8_2
  L8_2 = L8_2.openMenu
  L8_2(L9_2)
end
L9_1 = RegisterNetEvent
L10_1 = "casate:openMembersMenu"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = L1_1
  if not L0_2 then
    return
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "\226\134\144 Torna alla Casata"
  function L4_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "casate:openMainMenu"
    L0_3(L1_3)
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ipairs
  L2_2 = L0_2.members
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = CasateConfig
    L7_2 = L7_2.Ranks
    L8_2 = L6_2.rank
    L7_2 = L7_2[L8_2]
    if L7_2 then
      L8_2 = L7_2.label
      if L8_2 then
        goto lbl_34
      end
    end
    L8_2 = L6_2.rank
    ::lbl_34::
    L9_2 = L6_2.online
    if L9_2 then
      L9_2 = "\240\159\159\162"
      if L9_2 then
        goto lbl_41
      end
    end
    L9_2 = "\226\154\171"
    ::lbl_41::
    L10_2 = exports
    L10_2 = L10_2.striano_fastmenu
    L11_2 = L10_2
    L10_2 = L10_2.addMenuItem
    L12_2 = "%s %s | %s"
    L13_2 = L12_2
    L12_2 = L12_2.format
    L14_2 = L9_2
    L15_2 = L6_2.name
    L16_2 = L8_2
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    function L13_2()
      local L0_3, L1_3
      L0_3 = L8_1
      L1_3 = L6_2
      L0_3(L1_3)
    end
    L14_2 = false
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.openMenu
  L1_2(L2_2)
end
L9_1(L10_1, L11_1)
L9_1 = TerritoryStates
if not L9_1 then
  L9_1 = {}
end
L10_1 = RegisterNetEvent
L11_1 = "casate:territoryUpdated"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" ~= A0_2 then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L2_2 = L9_1
  L2_2[A0_2] = A1_2
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L1_2 = L1_2(L2_2, L3_2)
  A0_2 = L1_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2 / 60
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2 % 60
  if L1_2 > 0 then
    L3_2 = "%sm %ss"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L1_2
    L6_2 = L2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = "%ss"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L11_1 = RegisterNetEvent
L12_1 = "casate:openTerritoriesMenu"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = L1_1
  if not L0_2 then
    return
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.addMenuItem
  L3_2 = "\226\134\144 Torna alla Casata"
  function L4_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "casate:openMainMenu"
    L0_3(L1_3)
  end
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L0_2.territories
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = L6_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if 0 == L2_2 then
    L2_2 = exports
    L2_2 = L2_2.striano_fastmenu
    L3_2 = L2_2
    L2_2 = L2_2.addMenuItem
    L4_2 = "\240\159\147\141 Nessun territorio controllato"
    function L5_2()
      local L0_3, L1_3
    end
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2 = tostring
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = CasateConfig
      L8_2 = L8_2.Territories
      L8_2 = L8_2[L7_2]
      L9_2 = L9_1
      L9_2 = L9_2[L7_2]
      if not L9_2 then
        L9_2 = {}
      end
      if L8_2 then
        L10_2 = L8_2.name
        if L10_2 then
          goto lbl_56
        end
      end
      L10_2 = L7_2
      ::lbl_56::
      L11_2 = tonumber
      L12_2 = L9_2.progress
      L11_2 = L11_2(L12_2)
      if not L11_2 then
        L11_2 = 0
      end
      L12_2 = tonumber
      L13_2 = L9_2.rewardsAvailable
      L12_2 = L12_2(L13_2)
      if not L12_2 then
        L12_2 = 0
      end
      L13_2 = type
      L14_2 = L9_2.processing
      L13_2 = L13_2(L14_2)
      if "table" == L13_2 then
        L13_2 = L9_2.processing
        if L13_2 then
          goto lbl_78
        end
      end
      L13_2 = {}
      ::lbl_78::
      L14_2 = L13_2.active
      L14_2 = true == L14_2
      L15_2 = exports
      L15_2 = L15_2.striano_fastmenu
      L16_2 = L15_2
      L15_2 = L15_2.addMenuItem
      L17_2 = "\240\159\147\141 %s \226\128\148 %s%%"
      L18_2 = L17_2
      L17_2 = L17_2.format
      L19_2 = L10_2
      L20_2 = L11_2
      L17_2 = L17_2(L18_2, L19_2, L20_2)
      function L18_2()
        local L0_3, L1_3, L2_3
        L0_3 = TriggerEvent
        L1_3 = "casate:openSingleTerritoryMenu"
        L2_3 = L7_2
        L0_3(L1_3, L2_3)
      end
      L19_2 = false
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "casate:openSingleTerritoryMenu"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = CasateConfig
  L1_2 = L1_2.Territories
  L1_2 = L1_2[A0_2]
  L2_2 = L9_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
  end
  if not L1_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = L2_2.progress
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = 0
  end
  L4_2 = tonumber
  L5_2 = L2_2.rewardsAvailable
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = 0
  end
  L5_2 = type
  L6_2 = L2_2.processing
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = L2_2.processing
    if L5_2 then
      goto lbl_41
    end
  end
  L5_2 = {}
  ::lbl_41::
  L6_2 = L5_2.active
  L6_2 = true == L6_2
  L7_2 = exports
  L7_2 = L7_2.striano_fastmenu
  L8_2 = L7_2
  L7_2 = L7_2.clearMenu
  L7_2(L8_2)
  L7_2 = L1_1
  if nil ~= L7_2 then
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItem
    L9_2 = "\226\134\144 Torna ai Territori"
    function L10_2()
      local L0_3, L1_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.close
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 75
      L0_3(L1_3)
      L0_3 = TriggerEvent
      L1_3 = "casate:openTerritoriesMenu"
      L0_3(L1_3)
    end
    L11_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L7_2 = exports
  L7_2 = L7_2.striano_fastmenu
  L8_2 = L7_2
  L7_2 = L7_2.addMenuItem
  L9_2 = "\240\159\147\141 %s"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = L1_2.name
  if not L11_2 then
    L11_2 = A0_2
  end
  L9_2 = L9_2(L10_2, L11_2)
  function L10_2()
    local L0_3, L1_3
  end
  L11_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = exports
  L7_2 = L7_2.striano_fastmenu
  L8_2 = L7_2
  L7_2 = L7_2.addMenuItem
  L9_2 = "\226\154\153\239\184\143 Cultura: %s%%"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = L3_2
  L9_2 = L9_2(L10_2, L11_2)
  function L10_2()
    local L0_3, L1_3
  end
  L11_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = exports
  L7_2 = L7_2.striano_fastmenu
  L8_2 = L7_2
  L7_2 = L7_2.addMenuItem
  L9_2 = "\240\159\147\166 Casse disponibili: %s"
  L10_2 = L9_2
  L9_2 = L9_2.format
  L11_2 = L4_2
  L9_2 = L9_2(L10_2, L11_2)
  function L10_2()
    local L0_3, L1_3
  end
  L11_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L6_2 and L4_2 > 0 then
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItem
    L9_2 = "\240\159\147\166 Ritira Cassa Territorio"
    function L10_2()
      local L0_3, L1_3, L2_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.closeMenu
      L0_3(L1_3)
      L0_3 = TriggerServerEvent
      L1_3 = "casate:collectTerritoryReward"
      L2_3 = A0_2
      L0_3(L1_3, L2_3)
    end
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  if L6_2 then
    L7_2 = tonumber
    L8_2 = L5_2.readyAt
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = 0
    end
    L8_2 = math
    L8_2 = L8_2.max
    L9_2 = 0
    L10_2 = GetCloudTimeAsInt
    L10_2 = L10_2()
    L10_2 = L7_2 - L10_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = exports
    L9_2 = L9_2.striano_fastmenu
    L10_2 = L9_2
    L9_2 = L9_2.addMenuItem
    L11_2 = "\226\143\179 Lavorazione in corso: %s"
    L12_2 = L11_2
    L11_2 = L11_2.format
    L13_2 = L10_1
    L14_2 = L8_2
    L13_2, L14_2 = L13_2(L14_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    function L12_2()
      local L0_3, L1_3
    end
    L13_2 = false
    L9_2(L10_2, L11_2, L12_2, L13_2)
  else
    L7_2 = exports
    L7_2 = L7_2.striano_fastmenu
    L8_2 = L7_2
    L7_2 = L7_2.addMenuItem
    L9_2 = "\226\155\189 Deposita %s x %s"
    L10_2 = L9_2
    L9_2 = L9_2.format
    L11_2 = tonumber
    L12_2 = L1_2.fuelAmount
    L11_2 = L11_2(L12_2)
    if not L11_2 then
      L11_2 = 10
    end
    L12_2 = L1_2.fuelLabel
    if not L12_2 then
      L12_2 = L1_2.fuelItem
      if not L12_2 then
        L12_2 = "Carburante"
      end
    end
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    function L10_2()
      local L0_3, L1_3, L2_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.closeMenu
      L0_3(L1_3)
      L0_3 = TriggerServerEvent
      L1_3 = "casate:depositTerritoryFuel"
      L2_3 = A0_2
      L0_3(L1_3, L2_3)
    end
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L7_2 = exports
  L7_2 = L7_2.striano_fastmenu
  L8_2 = L7_2
  L7_2 = L7_2.openMenu
  L7_2(L8_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "casate:casataUpdated"
function L13_1(A0_2)
  local L1_2
  L1_1 = A0_2
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "casate:openStatsMenu"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L1_1
  if not L0_2 then
    return
  end
  L1_2 = L0_2.stats
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\226\134\144 Torna alla Casata"
  function L5_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "casate:openMainMenu"
    L0_3(L1_3)
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\240\159\147\166 Casse aperte: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.cratesOpened
  if not L6_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\240\159\146\165 Casse perse: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.cratesLost
  if not L6_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\226\156\133 Consegne completate: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.deliveriesCompleted
  if not L6_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\226\157\140 Consegne fallite: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.deliveriesFailed
  if not L6_2 then
    L6_2 = 0
  end
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "casate:openSettingsMenu"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L1_1
  if not L0_2 then
    return
  end
  L1_2 = L0_2.settings
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.clearMenu
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\226\134\144 Torna alla Casata"
  function L5_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "casate:openMainMenu"
    L0_3(L1_3)
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\226\154\148\239\184\143 Fuoco amico: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.friendlyFire
  if L6_2 then
    L6_2 = "Attivo"
    if L6_2 then
      goto lbl_33
    end
  end
  L6_2 = "Disattivo"
  ::lbl_33::
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\240\159\148\146 Casata privata: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.private
  if L6_2 then
    L6_2 = "S\195\172"
    if L6_2 then
      goto lbl_49
    end
  end
  L6_2 = "No"
  ::lbl_49::
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\240\159\142\168 Colore: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.color
  if "" ~= L6_2 then
    L6_2 = L1_2.color
    if L6_2 then
      goto lbl_65
    end
  end
  L6_2 = "Non impostato"
  ::lbl_65::
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.addMenuItem
  L4_2 = "\240\159\155\161\239\184\143 Stemma: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L1_2.emblem
  if "" ~= L6_2 then
    L6_2 = L1_2.emblem
    if L6_2 then
      goto lbl_81
    end
  end
  L6_2 = "Non impostato"
  ::lbl_81::
  L4_2 = L4_2(L5_2, L6_2)
  function L5_2()
    local L0_3, L1_3
  end
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = exports
  L2_2 = L2_2.striano_fastmenu
  L3_2 = L2_2
  L2_2 = L2_2.openMenu
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = "casate:openMainMenu"
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L1_1
  if not L0_2 then
    L1_2 = L7_1
    return L1_2()
  end
  L1_2 = exports
  L1_2 = L1_2.striano_fastmenu
  L2_2 = L1_2
  L1_2 = L1_2.clearMenu
  L1_2(L2_2)
  L1_2 = CasateConfig
  L1_2 = L1_2.Ranks
  L2_2 = L0_2.myRank
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2.label
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = L0_2.myRank
  ::lbl_21::
  L3_2 = L0_2.memberCount
  if not L3_2 then
    L3_2 = L6_1
    L4_2 = L0_2.members
    L3_2 = L3_2(L4_2)
  end
  L4_2 = L0_2.territoryCount
  if not L4_2 then
    L4_2 = L6_1
    L5_2 = L0_2.territories
    L4_2 = L4_2(L5_2)
  end
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  L7_2 = "\240\159\143\176 Casata %s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L0_2.name
  if not L9_2 then
    L9_2 = "Senza nome"
  end
  L7_2 = L7_2(L8_2, L9_2)
  function L8_2()
    local L0_3, L1_3
  end
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  L7_2 = "\226\173\144 Punti: %s / %s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L0_2.points
  if not L9_2 then
    L9_2 = 0
  end
  L10_2 = CasateConfig
  L10_2 = L10_2.MaxPoints
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  function L8_2()
    local L0_3, L1_3
  end
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  L7_2 = "\240\159\145\165 Membri: %s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  function L8_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = TriggerEvent
    L1_3 = "casate:openMembersMenu"
    L0_3(L1_3)
  end
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  L7_2 = "\240\159\147\141 Territori: %s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2)
  function L8_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = TriggerEvent
    L1_3 = "casate:openTerritoriesMenu"
    L0_3(L1_3)
  end
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  L7_2 = "\240\159\155\161\239\184\143 Il tuo grado: %s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L2_2
  L7_2 = L7_2(L8_2, L9_2)
  function L8_2()
    local L0_3, L1_3
  end
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L0_2.myRank
  if "owner" ~= L5_2 then
    L5_2 = L0_2.myRank
    if "officer" ~= L5_2 then
      goto lbl_104
    end
  end
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  L7_2 = "\226\158\149 Invita giocatore"
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L1_3 = 3.0
    L0_3 = L0_3(L1_3)
    L1_3 = print
    L2_3 = "RISULTATO GET CLOSEST:"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    if nil == L0_3 or -1 == L0_3 then
      L1_3 = Notify
      L2_3 = "No nearest player."
      L1_3(L2_3)
      return
    end
    L1_3 = GetPlayerServerId
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 or L1_3 <= 0 then
      L2_3 = Notify
      L3_3 = "Not valid player."
      L2_3(L3_3)
      return
    end
    L2_3 = TriggerServerEvent
    L3_3 = "casate:invitePlayer"
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  ::lbl_104::
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.addMenuItem
  L7_2 = "\240\159\147\166 Statistiche"
  function L8_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = Wait
    L1_3 = 75
    L0_3(L1_3)
    L0_3 = TriggerEvent
    L1_3 = "casate:openStatsMenu"
    L0_3(L1_3)
  end
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L0_2.myRank
  if "owner" == L5_2 then
    L5_2 = exports
    L5_2 = L5_2.striano_fastmenu
    L6_2 = L5_2
    L5_2 = L5_2.addMenuItem
    L7_2 = "\240\159\146\128 Sciogli Casata"
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.closeMenu
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 150
      L0_3(L1_3)
      L0_3 = L5_1
      L1_3 = "Sciogliere definitivamente "
      L2_3 = L0_2.name
      L1_3 = L1_3 .. L2_3
      function L2_3()
        local L0_4, L1_4
        L0_4 = TriggerServerEvent
        L1_4 = "casate:delete"
        L0_4(L1_4)
      end
      L0_3(L1_3, L2_3)
    end
    L9_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = exports
    L5_2 = L5_2.striano_fastmenu
    L6_2 = L5_2
    L5_2 = L5_2.addMenuItem
    L7_2 = "\240\159\154\170 Abbandona Casata"
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.closeMenu
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 150
      L0_3(L1_3)
      L0_3 = L5_1
      L1_3 = "Abbandonare "
      L2_3 = L0_2.name
      L1_3 = L1_3 .. L2_3
      function L2_3()
        local L0_4, L1_4
        L0_4 = TriggerServerEvent
        L1_4 = "casate:leave"
        L0_4(L1_4)
      end
      L0_3(L1_3, L2_3)
    end
    L9_2 = true
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = exports
  L5_2 = L5_2.striano_fastmenu
  L6_2 = L5_2
  L5_2 = L5_2.openMenu
  L5_2(L6_2)
end
L11_1(L12_1, L13_1)
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  if L0_2 then
    return
  end
  L0_2 = true
  L2_1 = L0_2
  L0_2 = TriggerServerEvent
  L1_2 = "casate:requestData"
  L0_2(L1_2)
  L0_2 = SetTimeout
  L1_2 = 3000
  function L2_2()
    local L0_3, L1_3
    L0_3 = false
    L2_1 = L0_3
  end
  L0_2(L1_2, L2_2)
end
L12_1 = RegisterNetEvent
L13_1 = "casate:receiveData"
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = false
  L2_1 = L1_2
  L1_1 = A0_2
  L1_2 = exports
  L1_2 = L1_2.striano_editor
  L2_2 = L1_2
  L1_2 = L1_2.stoposizionando
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_editor
    L2_2 = L1_2
    L1_2 = L1_2.editorattivo
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      if A0_2 then
        L1_2 = TriggerEvent
        L2_2 = "casate:openMainMenu"
        L1_2(L2_2)
      else
        L1_2 = L7_1
        L1_2()
      end
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "GetMyCasataId"
function L14_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = L1_1.id
    if L0_2 then
      goto lbl_8
    end
  end
  L0_2 = nil
  ::lbl_8::
  return L0_2
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "casate:refreshMenu"
function L14_1()
  local L0_2, L1_2
  L0_2 = nil
  L1_1 = L0_2
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "casate:receiveInvite"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Notify
  L4_2 = "%s ti ha invitato nella Casata %s. Hai %s secondi."
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A1_2
  L7_2 = A0_2
  L8_2 = A2_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterCommand
L13_1 = "casata"
function L14_1()
  local L0_2, L1_2
  L0_2 = L11_1
  L0_2()
end
L15_1 = false
L12_1(L13_1, L14_1, L15_1)
L12_1 = exports
L13_1 = "OpenCasataMenu"
L14_1 = L11_1
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "GetCurrentCasataData"
function L14_1()
  local L0_2, L1_2
  L0_2 = L1_1
  return L0_2
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "casate:receiveTerritoryStates"
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return
  end
  L9_1 = A0_2
end
L12_1(L13_1, L14_1)
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2
  while true do
    L0_2 = NetworkIsPlayerActive
    L1_2 = PlayerId
    L1_2 = L1_2()
    L0_2 = L0_2(L1_2)
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 500
    L0_2(L1_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "casate:syncPlayerState"
  L0_2(L1_2)
end
L12_1(L13_1)
L12_1 = RegisterCommand
L13_1 = "addcasatapoints"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = nil
  L3_2 = A1_2[1]
  if L3_2 then
    L3_2 = table
    L3_2 = L3_2.concat
    L4_2 = A1_2
    L5_2 = " "
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = TriggerServerEvent
  L4_2 = "casate:addCasataPoints"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L12_1(L13_1, L14_1)
L12_1 = {}
L13_1 = nil
L14_1 = false
L15_1 = false
L16_1 = 750
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = CasateConfig
  L1_2 = L1_2.Territories
  if L1_2 then
    L1_2 = CasateConfig
    L1_2 = L1_2.Territories
    L1_2 = L1_2[A0_2]
    if L1_2 then
      goto lbl_17
    end
  end
  L1_2 = nil
  ::lbl_17::
  return L1_2
end
L18_1 = false
L19_1 = 0
L20_1 = 10000
L21_1 = 100
L22_1 = 5.0
function L23_1(A0_2)
  local L1_2, L2_2
  L1_2 = L18_1
  if not L1_2 then
    return
  end
  L1_2 = false
  L18_1 = L1_2
  L1_2 = L19_1
  L1_2 = L1_2 + 1
  L19_1 = L1_2
  if A0_2 then
    L1_2 = Notify
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L18_1
  if L1_2 then
    L1_2 = Notify
    L2_2 = "Stai gi\195\160 reclamando un territorio."
    L1_2(L2_2)
    return
  end
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.coords
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = Notify
  L3_2 = "Territorio non valido."
  L2_2(L3_2)
  do return end
  ::lbl_20::
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = IsEntityDead
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = IsPedFatallyInjured
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        goto lbl_41
      end
    end
  end
  L3_2 = Notify
  L4_2 = "Non puoi reclamare il territorio in questo momento."
  L3_2(L4_2)
  do return end
  ::lbl_41::
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = L1_2.coords
  L5_2 = L5_2.x
  L6_2 = L1_2.coords
  L6_2 = L6_2.y
  L7_2 = L1_2.coords
  L7_2 = L7_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = GetEntityHealth
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = L19_1
  L6_2 = L6_2 + 1
  L19_1 = L6_2
  L7_2 = true
  L18_1 = L7_2
  L7_2 = Notify
  L8_2 = "Rimani nella zona per %s secondi per reclamare il territorio."
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = math
  L10_2 = L10_2.floor
  L11_2 = L20_1
  L11_2 = L11_2 / 1000
  L10_2, L11_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = L20_1
    L0_3 = L0_3 + L1_3
    while true do
      L1_3 = L18_1
      if not L1_3 then
        break
      end
      L1_3 = L19_1
      L2_3 = L6_2
      if L1_3 ~= L2_3 then
        break
      end
      L1_3 = Wait
      L2_3 = L21_1
      L1_3(L2_3)
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_2 = L1_3
      L1_3 = DoesEntityExist
      L2_3 = L2_2
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = IsEntityDead
        L2_3 = L2_2
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          L1_3 = IsPedFatallyInjured
          L2_3 = L2_2
          L1_3 = L1_3(L2_3)
          if not L1_3 then
            goto lbl_38
          end
        end
      end
      L1_3 = L23_1
      L2_3 = "Conquista annullata: sei gravemente ferito."
      L1_3(L2_3)
      do return end
      ::lbl_38::
      L1_3 = GetEntityHealth
      L2_3 = L2_2
      L1_3 = L1_3(L2_3)
      L2_3 = L5_2
      if L1_3 < L2_3 then
        L1_3 = L23_1
        L2_3 = "Conquista annullata: sei stato colpito."
        L1_3(L2_3)
        return
      end
      L1_3 = L13_1
      L2_3 = A0_2
      if L1_3 ~= L2_3 then
        L1_3 = L23_1
        L2_3 = "Conquista annullata: hai lasciato il territorio."
        L1_3(L2_3)
        return
      end
      L1_3 = GetEntityCoords
      L2_3 = L2_2
      L1_3 = L1_3(L2_3)
      L2_3 = L3_2
      L2_3 = L1_3 - L2_3
      L2_3 = #L2_3
      L3_3 = L22_1
      if L2_3 > L3_3 then
        L2_3 = L23_1
        L3_3 = "Conquista annullata: ti sei allontanato troppo."
        L2_3(L3_3)
        return
      end
      L2_3 = L4_2
      L2_3 = L1_3 - L2_3
      L2_3 = #L2_3
      L3_3 = tonumber
      L4_3 = L1_2.radius
      L3_3 = L3_3(L4_3)
      if not L3_3 then
        L3_3 = 30.0
      end
      if L2_3 > L3_3 then
        L2_3 = L23_1
        L3_3 = "Conquista annullata: hai lasciato il territorio."
        L2_3(L3_3)
        return
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      if L0_3 <= L2_3 then
        L2_3 = false
        L18_1 = L2_3
        L2_3 = Notify
        L3_3 = "Conquista completata. Verifica in corso..."
        L2_3(L3_3)
        L2_3 = TriggerServerEvent
        L3_3 = "casate:claimTerritory"
        L4_3 = A0_2
        L2_3(L3_3, L4_3)
        return
      end
    end
  end
  L7_2(L8_2)
end
function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L12_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L25_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.owner
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = nil
  ::lbl_10::
  return L2_2
end
function L27_1(A0_2)
  local L1_2, L2_2
  L1_2 = L25_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.status
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = "neutral"
  ::lbl_10::
  return L2_2
end
function L28_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.name
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = "Territorio"
  end
  L2_2 = L2_2(L3_2)
  ::lbl_14::
  return L2_2
end
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L25_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  if nil == A1_2 or "" == A1_2 then
    return L2_2
  end
  L3_2 = L2_2
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.gmatch
  L6_2 = "[^.]+"
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2 = type
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    if "table" ~= L9_2 then
      L9_2 = nil
      return L9_2
    end
    L3_2 = L3_2[L8_2]
  end
  return L3_2
end
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = pairs
  L2_2 = CasateConfig
  L2_2 = L2_2.Territories
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.coords
    L8_2 = tonumber
    L9_2 = L6_2.radius
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = 30.0
    end
    if L7_2 then
      L9_2 = A0_2 - L7_2
      L9_2 = #L9_2
      if L8_2 >= L9_2 then
        L10_2 = L5_2
        L11_2 = L9_2
        return L10_2, L11_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
function L31_1()
  local L0_2, L1_2
  L0_2 = L13_1
  return L0_2
end
function L32_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L13_1
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 == L2_2
  return L1_2
end
function L33_1()
  local L0_2, L1_2
  L0_2 = L14_1
  if L0_2 then
    return
  end
  L0_2 = true
  L14_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = L14_1
      if not L0_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      if 0 ~= L0_3 then
        L1_3 = DoesEntityExist
        L2_3 = L0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L1_3 = GetEntityCoords
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = L30_1
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          L3_3 = L13_1
          if L2_3 ~= L3_3 then
            L3_3 = L13_1
            L13_1 = L2_3
            if L3_3 then
              L4_3 = TriggerEvent
              L5_3 = "casate:leftTerritory"
              L6_3 = L3_3
              L4_3(L5_3, L6_3)
            end
            if L2_3 then
              L4_3 = TriggerEvent
              L5_3 = "casate:enteredTerritory"
              L6_3 = L2_3
              L7_3 = L17_1
              L8_3 = L2_3
              L7_3 = L7_3(L8_3)
              L8_3 = L25_1
              L9_3 = L2_3
              L8_3, L9_3 = L8_3(L9_3)
              L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = L16_1
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
function L34_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "casate:requestTerritories"
  L0_2(L1_2)
end
L35_1 = RegisterNetEvent
L36_1 = "casate:receiveTerritories"
function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "table" ~= L1_2 or not A0_2 then
    L1_2 = {}
  end
  L12_1 = L1_2
  L1_2 = true
  L15_1 = L1_2
  L1_2 = TriggerEvent
  L2_2 = "casate:territoriesLoaded"
  L3_2 = L12_1
  L1_2(L2_2, L3_2)
end
L35_1(L36_1, L37_1)
L35_1 = RegisterNetEvent
L36_1 = "casate:territoryUpdated"
function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if "" == A0_2 then
    return
  end
  if nil == A1_2 then
    L2_2 = L12_1
    L2_2[A0_2] = nil
  else
    L2_2 = L12_1
    L2_2[A0_2] = A1_2
  end
  L2_2 = TriggerEvent
  L3_2 = "casate:territoryStateChanged"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L35_1(L36_1, L37_1)
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if not A0_2 then
    A0_2 = L13_1
  end
  if not A0_2 then
    L1_2 = ExecuteCommand
    L2_2 = "e shrug"
    L1_2(L2_2)
    L1_2 = Notify
    L2_2 = "Non ti trovi dentro alcun territorio."
    return L1_2(L2_2)
  end
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = Notify
    L3_2 = "Configurazione del territorio non trovata."
    return L2_2(L3_2)
  end
  L2_2 = L25_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.owner
    if L3_2 then
      goto lbl_31
    end
  end
  L3_2 = nil
  ::lbl_31::
  if L2_2 then
    L4_2 = L2_2.ownerName
    if L4_2 then
      goto lbl_37
    end
  end
  L4_2 = nil
  ::lbl_37::
  if L2_2 then
    L5_2 = L2_2.status
    if L5_2 then
      goto lbl_43
    end
  end
  L5_2 = "neutral"
  ::lbl_43::
  if L2_2 then
    L6_2 = L2_2.stats
    if L6_2 then
      L6_2 = L2_2.stats
      L6_2 = L6_2.cratesOpened
      if L6_2 then
        goto lbl_53
      end
    end
  end
  L6_2 = 0
  ::lbl_53::
  if L2_2 then
    L7_2 = L2_2.stats
    if L7_2 then
      L7_2 = L2_2.stats
      L7_2 = L7_2.cratesLost
      if L7_2 then
        goto lbl_63
      end
    end
  end
  L7_2 = 0
  ::lbl_63::
  if L2_2 then
    L8_2 = L2_2.stats
    if L8_2 then
      L8_2 = L2_2.stats
      L8_2 = L8_2.deliveriesCompleted
      if L8_2 then
        goto lbl_73
      end
    end
  end
  L8_2 = 0
  ::lbl_73::
  if L2_2 then
    L9_2 = L2_2.stats
    if L9_2 then
      L9_2 = L2_2.stats
      L9_2 = L9_2.deliveriesFailed
      if L9_2 then
        goto lbl_83
      end
    end
  end
  L9_2 = 0
  ::lbl_83::
  L10_2 = L4_2 or L10_2
  L10_2 = L3_2 or L10_2
  if not L4_2 and not L3_2 then
    L10_2 = "Nessuna Casata"
  end
  L11_2 = {}
  L11_2.neutral = "Neutrale"
  L11_2.owned = "Occupato"
  L11_2.contested = "Conteso"
  L12_2 = L11_2[L5_2]
  if not L12_2 then
    L12_2 = L5_2
  end
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.clearMenu
  L13_2(L14_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\240\159\143\180 %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L1_2.name
  if not L17_2 then
    L17_2 = A0_2
  end
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\240\159\155\161\239\184\143 Proprietario: %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L10_2
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\240\159\147\140 Stato: %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L12_2
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\226\173\144 Costo conquista: %s punti"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L1_2.claimCost
  if not L17_2 then
    L17_2 = 0
  end
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\240\159\147\166 Casse aperte: %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L6_2
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\240\159\146\128 Casse perse: %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L7_2
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\226\156\133 Consegne completate: %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L8_2
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.addMenuItem
  L15_2 = "\226\157\140 Consegne fallite: %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = L9_2
  L15_2 = L15_2(L16_2, L17_2)
  function L16_2()
    local L0_3, L1_3
  end
  L17_2 = false
  L13_2(L14_2, L15_2, L16_2, L17_2)
  if L3_2 then
    L13_2 = exports
    L13_2 = L13_2.striano_fastmenu
    L14_2 = L13_2
    L13_2 = L13_2.addMenuItem
    L15_2 = "\240\159\147\141 Gestisci Produzioni"
    function L16_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerEvent
      L1_3 = "casate:openSingleTerritoryMenu"
      L2_3 = A0_2
      L0_3(L1_3, L2_3)
    end
    L17_2 = false
    L13_2(L14_2, L15_2, L16_2, L17_2)
  end
  if not L3_2 then
    L13_2 = exports
    L13_2 = L13_2.striano_fastmenu
    L14_2 = L13_2
    L13_2 = L13_2.addMenuItem
    L15_2 = "\240\159\143\180 Reclama territorio"
    function L16_2()
      local L0_3, L1_3
      L0_3 = exports
      L0_3 = L0_3.striano_fastmenu
      L1_3 = L0_3
      L0_3 = L0_3.closeMenu
      L0_3(L1_3)
      L0_3 = L24_1
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L17_2 = true
    L13_2(L14_2, L15_2, L16_2, L17_2)
  else
    L13_2 = exports
    L13_2 = L13_2.striano_core
    L14_2 = L13_2
    L13_2 = L13_2.GetCurrentCasataData
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L14_2 = L13_2.id
      if L14_2 then
        goto lbl_216
      end
    end
    L14_2 = nil
    ::lbl_216::
    if L14_2 and L3_2 == L14_2 then
      L15_2 = L13_2.myRank
      if "owner" == L15_2 then
        L15_2 = exports
        L15_2 = L15_2.striano_fastmenu
        L16_2 = L15_2
        L15_2 = L15_2.addMenuItem
        L17_2 = "\240\159\154\170 Abbandona territorio"
        function L18_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = exports
          L0_3 = L0_3.striano_fastmenu
          L1_3 = L0_3
          L0_3 = L0_3.closeMenu
          L0_3(L1_3)
          L0_3 = exports
          L0_3 = L0_3.striano_core
          L1_3 = L0_3
          L0_3 = L0_3.OpenInput
          L2_3 = "Scrivi CONFERMA per abbandonare il territorio"
          L3_3 = ""
          L4_3 = {}
          L4_3.maxLen = 16
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          L1_3 = string
          L1_3 = L1_3.lower
          L2_3 = tostring
          L3_3 = L0_3 or L3_3
          if not L0_3 then
            L3_3 = ""
          end
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          L1_3 = L1_3(L2_3, L3_3, L4_3)
          L0_3 = L1_3
          if "conferma" ~= L0_3 then
            L1_3 = Notify
            L2_3 = "Operazione annullata."
            return L1_3(L2_3)
          end
          L1_3 = TriggerServerEvent
          L2_3 = "casate:releaseTerritory"
          L3_3 = A0_2
          L1_3(L2_3, L3_3)
        end
        L19_2 = true
        L15_2(L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
  L13_2 = exports
  L13_2 = L13_2.striano_fastmenu
  L14_2 = L13_2
  L13_2 = L13_2.openMenu
  L13_2(L14_2)
end
L36_1 = RegisterNetEvent
L37_1 = "casate:enteredTerritory"
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L25_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.owner
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = nil
  ::lbl_16::
  if L3_2 then
    L4_2 = L12_1
    if L4_2 then
      L4_2 = L12_1
      L4_2 = L4_2[A0_2]
    end
    L5_2 = Notify
    L6_2 = "Sei entrato nel territorio %s, controllato dalla Casata %s."
    L7_2 = L6_2
    L6_2 = L6_2.format
    L8_2 = L1_2.name
    if not L8_2 then
      L8_2 = A0_2
    end
    if L4_2 then
      L9_2 = L4_2.ownerName
      if L9_2 then
        goto lbl_36
      end
    end
    L9_2 = L3_2
    ::lbl_36::
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = Notify
    L5_2 = "Sei entrato nel territorio neutrale %s."
    L6_2 = L5_2
    L5_2 = L5_2.format
    L7_2 = L1_2.name
    if not L7_2 then
      L7_2 = A0_2
    end
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterNetEvent
L37_1 = "casate:leftTerritory"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L17_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
end
L36_1(L37_1, L38_1)
L36_1 = RegisterCommand
L37_1 = "territorio"
function L38_1()
  local L0_2, L1_2
  L0_2 = L35_1
  L0_2()
end
L39_1 = false
L36_1(L37_1, L38_1, L39_1)
L36_1 = RegisterCommand
L37_1 = "territoriodebug"
function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L31_1
  L0_2 = L0_2()
  if not L0_2 then
    L1_2 = print
    L2_2 = "^3[TERRITORI] Non sei dentro nessun territorio.^7"
    L1_2(L2_2)
    return
  end
  L1_2 = L17_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L25_1
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = print
  L4_2 = "^2[TERRITORI] TERRITORIO CORRENTE^7"
  L3_2(L4_2)
  L3_2 = print
  L4_2 = "ID:"
  L5_2 = L0_2
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "Nome:"
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = L1_2.name
  end
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "Owner:"
  if L2_2 then
    L5_2 = L2_2.owner
    if L5_2 then
      goto lbl_36
    end
  end
  L5_2 = "Nessuno"
  ::lbl_36::
  L3_2(L4_2, L5_2)
  L3_2 = print
  L4_2 = "Status:"
  if L2_2 then
    L5_2 = L2_2.status
    if L5_2 then
      goto lbl_45
    end
  end
  L5_2 = "neutral"
  ::lbl_45::
  L3_2(L4_2, L5_2)
end
L39_1 = false
L36_1(L37_1, L38_1, L39_1)
L36_1 = exports
L37_1 = "StartTerritoryClaim"
L38_1 = L24_1
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "StopTerritoryClaim"
L38_1 = L23_1
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "IsTerritoryClaimRunning"
function L38_1()
  local L0_2, L1_2
  L0_2 = L18_1
  return L0_2
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "GetTerritoryConfigClient"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L17_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "GetTerritoryStateClient"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L25_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "GetTerritoryOwnerClient"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L26_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "GetTerritoryDataClient"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L29_1
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "GetCurrentTerritory"
function L38_1()
  local L0_2, L1_2
  L0_2 = L31_1
  return L0_2()
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "IsInsideTerritory"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L32_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "GetTerritoryFromCoords"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L30_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "OpenTerritoryMenu"
function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = L35_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "RequestTerritories"
function L38_1()
  local L0_2, L1_2
  L0_2 = L34_1
  L0_2()
end
L36_1(L37_1, L38_1)
L36_1 = exports
L37_1 = "AreTerritoriesLoaded"
function L38_1()
  local L0_2, L1_2
  L0_2 = L15_1
  return L0_2
end
L36_1(L37_1, L38_1)
function L36_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L31_1
  L0_2 = L0_2()
  if L0_2 then
    L1_2 = L1_1
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = false
  L2_2 = nil
  do return L1_2, L2_2 end
  ::lbl_11::
  L1_2 = L26_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.id
  if L1_2 ~= L2_2 then
    L2_2 = false
    L3_2 = L0_2
    return L2_2, L3_2
  end
  L2_2 = true
  L3_2 = L0_2
  return L2_2, L3_2
end
IsInsideOwnedTerritory = L36_1
L36_1 = exports
L37_1 = "IsInsideOwnedTerritory"
L38_1 = IsInsideOwnedTerritory
L36_1(L37_1, L38_1)
L36_1 = CreateThread
function L37_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = L34_1
  L0_2()
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = L33_1
  L0_2()
end
L36_1(L37_1)
L36_1 = RegisterCommand
L37_1 = "goterritory"
function L38_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = LocalPlayer
  L2_2 = L2_2.state
  L2_2 = L2_2.adminLevel
  if not L2_2 then
    L2_2 = 0
  end
  if L2_2 > 0 then
    L3_2 = tonumber
    L4_2 = A1_2[1]
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      return
    end
    L4_2 = CasateConfig
    L4_2 = L4_2.Territories
    L5_2 = "territorio_"
    L6_2 = L3_2
    L5_2 = L5_2 .. L6_2
    L4_2 = L4_2[L5_2]
    if not L4_2 then
      L5_2 = Notify
      L6_2 = "Territorio non trovato."
      L5_2(L6_2)
      return
    end
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = FreezeEntityPosition
    L7_2 = L5_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = DoScreenFadeOut
    L7_2 = 500
    L6_2(L7_2)
    L6_2 = Wait
    L7_2 = 650
    L6_2(L7_2)
    L6_2 = SetEntityCoords
    L7_2 = L5_2
    L8_2 = L4_2.coords
    L8_2 = L8_2.x
    L9_2 = L4_2.coords
    L9_2 = L9_2.y
    L10_2 = L4_2.coords
    L10_2 = L10_2.z
    L10_2 = L10_2 + 1.0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = Wait
    L7_2 = 1500
    L6_2(L7_2)
    L6_2 = DoScreenFadeIn
    L7_2 = 500
    L6_2(L7_2)
    L6_2 = FreezeEntityPosition
    L7_2 = L5_2
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L36_1(L37_1, L38_1)
function L36_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_12::
  L1_2 = A0_2
  while true do
    L2_2 = IsEntityAttached
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = GetEntityAttachedTo
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if 0 ~= L1_2 then
      L2_2 = DoesEntityExist
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        goto lbl_31
      end
    end
    L2_2 = 0
    do return L2_2 end
    ::lbl_31::
    L2_2 = IsEntityAPed
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = IsPedAPlayer
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        return L1_2
      end
    end
  end
  L2_2 = 0
  return L2_2
end
GetAttachedPlayer = L36_1
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetAttachedPlayer
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 0 == L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = NetworkGetPlayerIndexFromPed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if -1 == L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = GetPlayerServerId
  L4_2 = L2_2
  return L3_2(L4_2)
end
GetAttachedPlayerServerId = L36_1
L36_1 = {}
L37_1 = nil
L38_1 = false
L39_1 = {}
L40_1 = 24818
L41_1 = -0.136
L42_1 = -0.048
L43_1 = 0.042
L44_1 = 84.64
L45_1 = 4.64
L46_1 = -16.0
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L39_1[4] = L43_1
L39_1[5] = L44_1
L39_1[6] = L45_1
L39_1[7] = L46_1
function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "[DeliveryBox] %s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if not A0_2 or A0_2 <= 0 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 5000
  end
  L2_2 = L2_2 + L3_2
  repeat
    L3_2 = NetworkDoesEntityExistWithNetworkId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = NetToObj
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if 0 ~= L3_2 then
        L4_2 = DoesEntityExist
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          return L3_2
        end
      end
    end
    L3_2 = Wait
    L4_2 = 50
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
  until L2_2 <= L3_2
  L3_2 = 0
  return L3_2
end
function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0 ~= A0_2 then
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_10::
  L2_2 = NetworkHasControlOfEntity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 2000
  end
  L2_2 = L2_2 + L3_2
  repeat
    L3_2 = NetworkRequestControlOfEntity
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = NetworkHasControlOfEntity
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = true
      return L3_2
    end
    L3_2 = Wait
    L4_2 = 20
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
  until L2_2 <= L3_2
  L3_2 = false
  return L3_2
end
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = L36_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L41_1
  L4_2 = A1_2
  L5_2 = 5000
  L3_2 = L3_2(L4_2, L5_2)
  if 0 == L3_2 then
    L4_2 = L40_1
    L5_2 = "Non riesco a trovare l'entity della cassa."
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = L42_1
  L5_2 = L3_2
  L6_2 = 2500
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = L40_1
    L5_2 = "Non riesco a ottenere il controllo della cassa."
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = IsEntityAttached
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = DetachEntity
    L5_2 = L3_2
    L6_2 = true
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L5_2 = GetPedBoneIndex
  L6_2 = L4_2
  L7_2 = L39_1.bone
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = SetEntityCollision
  L7_2 = L3_2
  L8_2 = false
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = AttachEntityToEntity
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = GetPedBoneIndex
  L10_2 = L4_2
  L11_2 = L39_1
  L11_2 = L11_2[1]
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L39_1
  L10_2 = L10_2[2]
  L11_2 = L39_1
  L11_2 = L11_2[3]
  L12_2 = L39_1
  L12_2 = L12_2[4]
  L13_2 = L39_1
  L13_2 = L13_2[5]
  L14_2 = L39_1
  L14_2 = L14_2[6]
  L15_2 = L39_1
  L15_2 = L15_2[7]
  L16_2 = true
  L17_2 = true
  L18_2 = false
  L19_2 = true
  L20_2 = 1
  L21_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L2_2.entity = L3_2
  L2_2.state = "carried"
  L6_2 = GetPlayerServerId
  L7_2 = PlayerId
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L2_2.carrier = L6_2
  L37_1 = A0_2
  L6_2 = exports
  L6_2 = L6_2.striano_combat
  L7_2 = L6_2
  L6_2 = L6_2.fodera2
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 25
  L6_2(L7_2)
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = L37_1
      if nil == L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 21
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 1
      L2_3 = 21
      L0_3(L1_3, L2_3)
      L0_3 = DisableControlAction
      L1_3 = 2
      L2_3 = 21
      L0_3(L1_3, L2_3)
      L0_3 = GetEntitySpeed
      L1_3 = L4_2
      L0_3 = L0_3(L1_3)
      L1_3 = 0.2
      if L0_3 > L1_3 then
        L0_3 = DisableControlAction
        L1_3 = 0
        L2_3 = 22
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 1
        L2_3 = 22
        L0_3(L1_3, L2_3)
        L0_3 = DisableControlAction
        L1_3 = 2
        L2_3 = 22
        L0_3(L1_3, L2_3)
      end
      L0_3 = IsEntityPlayingAnim
      L1_3 = L4_2
      L2_3 = "move_m@hiking"
      L3_3 = "walk"
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = IsPedInAnyVehicle
        L1_3 = L4_2
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = IsEntityAttached
          L1_3 = L4_2
          L0_3 = L0_3(L1_3)
          if not L0_3 then
            L0_3 = faiAnim
            L1_3 = "move_m@hiking"
            L2_3 = "walk"
            L3_3 = -1
            L4_3 = 49
            L0_3(L1_3, L2_3, L3_3, L4_3)
        end
      end
      else
        L0_3 = IsPedInAnyVehicle
        L1_3 = L4_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          L0_3 = IsEntityPlayingAnim
          L1_3 = L4_2
          L2_3 = "move_m@hiking"
          L3_3 = "walk"
          L4_3 = 3
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          if L0_3 then
            L0_3 = ClearPedTasks
            L1_3 = L4_2
            L0_3(L1_3)
          end
        end
      end
      L0_3 = IsDisabledControlPressed
      L1_3 = 0
      L2_3 = 25
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsControlPressed
        L1_3 = 0
        L2_3 = 25
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsDisabledControlPressed
          L1_3 = 0
          L2_3 = 38
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            L0_3 = IsControlPressed
            L1_3 = 0
            L2_3 = 38
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = IsDisabledControlPressed
              L1_3 = 0
              L2_3 = 45
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                L0_3 = IsControlPressed
                L1_3 = 0
                L2_3 = 45
                L0_3 = L0_3(L1_3, L2_3)
                if not L0_3 then
                  L0_3 = IsDisabledControlPressed
                  L1_3 = 0
                  L2_3 = 73
                  L0_3 = L0_3(L1_3, L2_3)
                  if not L0_3 then
                    L0_3 = IsControlPressed
                    L1_3 = 0
                    L2_3 = 73
                    L0_3 = L0_3(L1_3, L2_3)
                    if not L0_3 then
                      L0_3 = IsPedRagdoll
                      L1_3 = L4_2
                      L0_3 = L0_3(L1_3)
                      if not L0_3 then
                        L0_3 = DoesEntityExist
                        L1_3 = L3_2
                        L0_3 = L0_3(L1_3)
                        if L0_3 then
                          L0_3 = IsPedFatallyInjured
                          L1_3 = L4_2
                          L0_3 = L0_3(L1_3)
                          if not L0_3 then
                            goto lbl_171
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      while true do
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = IsControlPressed
          L1_3 = 0
          L2_3 = 73
          L0_3 = L0_3(L1_3, L2_3)
          if not L0_3 then
            break
          end
        end
        L0_3 = Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      L0_3 = L37_1
      L1_3 = nil
      L37_1 = L1_3
      L1_3 = TriggerServerEvent
      L2_3 = "deliveryBox:drop"
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
      L1_3 = faiAnim
      L2_3 = "anim@mp_snowball"
      L3_3 = "pickup_snowball"
      L4_3 = 450
      L5_3 = 49
      L1_3(L2_3, L3_3, L4_3, L5_3)
      do return end
      ::lbl_171::
    end
  end
  L6_2(L7_2)
  L6_2 = true
  return L6_2
end
function L44_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L36_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = L3_2.entity
    if L4_2 then
      goto lbl_9
    end
  end
  L4_2 = 0
  ::lbl_9::
  if 0 ~= L4_2 then
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_21
    end
  end
  L5_2 = L41_1
  L6_2 = A1_2
  L7_2 = 2000
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  ::lbl_21::
  if 0 == L4_2 then
    return
  end
  L5_2 = L42_1
  L6_2 = L4_2
  L7_2 = 1000
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = IsEntityAttached
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = DetachEntity
      L6_2 = L4_2
      L7_2 = true
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
    end
    L5_2 = SetEntityCollision
    L6_2 = L4_2
    L7_2 = true
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = FreezeEntityPosition
    L6_2 = L4_2
    L7_2 = false
    L5_2(L6_2, L7_2)
    if A2_2 then
      L5_2 = SetEntityCoordsNoOffset
      L6_2 = L4_2
      L7_2 = A2_2.x
      L7_2 = L7_2 + 0.0
      L8_2 = A2_2.y
      L8_2 = L8_2 + 0.0
      L9_2 = A2_2.z
      L9_2 = L9_2 + 0.0
      L10_2 = false
      L11_2 = false
      L12_2 = false
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2 = PlaceObjectOnGroundProperly
      L6_2 = L4_2
      L5_2(L6_2)
    end
  end
  if L3_2 then
    L3_2.entity = L4_2
    L3_2.state = "dropped"
    L3_2.carrier = nil
    L5_2 = A2_2 or L5_2
    if not A2_2 then
      L5_2 = L3_2.coords
    end
    L3_2.coords = L5_2
  end
  L5_2 = L37_1
  if L5_2 == A0_2 then
    L5_2 = nil
    L37_1 = L5_2
  end
end
function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = A0_2 or L4_2
  if not A0_2 then
    L4_2 = 3.0
  end
  L5_2 = pairs
  L6_2 = L36_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.state
    if "dropped" == L11_2 then
      L11_2 = L10_2.carrier
      if not L11_2 then
        L11_2 = L10_2.entity
        if not L11_2 then
          L11_2 = 0
        end
        if 0 ~= L11_2 then
          L12_2 = DoesEntityExist
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          if L12_2 then
            goto lbl_39
          end
        end
        L12_2 = L41_1
        L13_2 = L10_2.netId
        L14_2 = 100
        L12_2 = L12_2(L13_2, L14_2)
        L11_2 = L12_2
        if 0 ~= L11_2 then
          L10_2.entity = L11_2
        end
        ::lbl_39::
        if 0 ~= L11_2 then
          L12_2 = DoesEntityExist
          L13_2 = L11_2
          L12_2 = L12_2(L13_2)
          if L12_2 then
            L12_2 = GetEntityCoords
            L13_2 = L11_2
            L12_2 = L12_2(L13_2)
            L12_2 = L2_2 - L12_2
            L12_2 = #L12_2
            if L4_2 > L12_2 then
              L4_2 = L12_2
              L3_2 = L9_2
            end
          end
        end
      end
    end
  end
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:syncBox"
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = A0_2.id
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2.id
  L1_2 = L36_1
  L1_2 = L1_2[L2_2]
  if not L1_2 then
    L1_2 = {}
  end
  L3_2 = A0_2.id
  L2_2 = L36_1
  L4_2 = {}
  L5_2 = A0_2.id
  L4_2.id = L5_2
  L5_2 = A0_2.netId
  L4_2.netId = L5_2
  L5_2 = A0_2.model
  L4_2.model = L5_2
  L5_2 = A0_2.state
  L4_2.state = L5_2
  L5_2 = A0_2.carrier
  L4_2.carrier = L5_2
  L5_2 = A0_2.coords
  L4_2.coords = L5_2
  L5_2 = L1_2.entity
  L4_2.entity = L5_2
  L2_2[L3_2] = L4_2
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:syncAll"
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "table" ~= L1_2 or not A0_2 then
    L1_2 = {}
  end
  L36_1 = L1_2
  L1_2 = pairs
  L2_2 = L36_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2.entity = 0
  end
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:attachToPlayer"
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = false
  L38_1 = L2_2
  L2_2 = L37_1
  if L2_2 then
    L2_2 = L37_1
    if L2_2 ~= A0_2 then
      L2_2 = L40_1
      L3_2 = "Stai gi\195\160 trasportando una cassa."
      L2_2(L3_2)
      return
    end
  end
  L2_2 = L43_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:detach"
function L48_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L44_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:pickupResult"
function L48_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = false
  L38_1 = L2_2
  if A1_2 then
    L2_2 = L40_1
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:removeBox"
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L36_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = L1_2.entity
    if L2_2 then
      L2_2 = L1_2.entity
      if 0 ~= L2_2 then
        L2_2 = DoesEntityExist
        L3_2 = L1_2.entity
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = IsEntityAttached
          L3_2 = L1_2.entity
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = DetachEntity
            L3_2 = L1_2.entity
            L4_2 = true
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
          end
        end
      end
    end
  end
  L2_2 = L36_1
  L2_2[A0_2] = nil
  L2_2 = L37_1
  if L2_2 == A0_2 then
    L2_2 = nil
    L37_1 = L2_2
  end
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:error"
function L48_1(A0_2)
  local L1_2, L2_2
  L1_2 = L40_1
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = "Errore sconosciuto."
  end
  L1_2(L2_2)
end
L46_1(L47_1, L48_1)
L46_1 = RegisterNetEvent
L47_1 = "deliveryBox:created"
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L40_1
  L2_2 = "Cassa creata: %s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L46_1(L47_1, L48_1)
L46_1 = exports
L47_1 = "PickupDeliveryBox"
function L48_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_10::
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.deliveryBoxId
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L37_1
  if not L2_2 then
    L2_2 = L38_1
    if not L2_2 then
      goto lbl_27
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_27::
  L2_2 = true
  L38_1 = L2_2
  L2_2 = NetworkGetNetworkIdFromEntity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerServerEvent
  L4_2 = "deliveryBox:requestPickup"
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetTimeout
  L4_2 = 3000
  function L5_2()
    local L0_3, L1_3
    L0_3 = false
    L38_1 = L0_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = true
  return L3_2
end
L46_1(L47_1, L48_1)
L46_1 = exports
L47_1 = "DropDeliveryBox"
function L48_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L37_1
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = L37_1
  L1_2 = nil
  L37_1 = L1_2
  L1_2 = TriggerServerEvent
  L2_2 = "deliveryBox:drop"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = true
  return L1_2
end
L46_1(L47_1, L48_1)
L46_1 = RegisterCommand
L47_1 = "startBox"
function L48_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2[1]
  if not L2_2 then
    L2_2 = "prop_box_wood02a_pu"
  end
  L3_2 = TriggerServerEvent
  L4_2 = "deliveryBox:start"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L49_1 = false
L46_1(L47_1, L48_1, L49_1)
L46_1 = AddEventHandler
L47_1 = "onClientResourceStart"
function L48_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = TriggerServerEvent
  L2_2 = "deliveryBox:requestSync"
  L1_2(L2_2)
end
L46_1(L47_1, L48_1)
L46_1 = exports
L47_1 = "IsActiveDeliveryBox"
function L48_1(A0_2)
  local L1_2, L2_2
  if A0_2 and 0 ~= A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_12::
  L1_2 = Entity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.deliveryBoxId
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.deliveryBoxState
  if "dropped" ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L46_1(L47_1, L48_1)
