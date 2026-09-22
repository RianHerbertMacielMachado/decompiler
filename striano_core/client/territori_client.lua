local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = {}
L1_1 = nil
L2_1 = false
L3_1 = false
L4_1 = 750
function L5_1(A0_2)
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
L6_1 = false
L7_1 = 0
L8_1 = 10000
L9_1 = 100
L10_1 = 5.0
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = L6_1
  if not L1_2 then
    return
  end
  L1_2 = false
  L6_1 = L1_2
  L1_2 = L7_1
  L1_2 = L1_2 + 1
  L7_1 = L1_2
  if A0_2 then
    L1_2 = Notify
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L6_1
  if L1_2 then
    L1_2 = Notify
    L2_2 = "Stai gi\195\160 reclamando un territorio."
    L1_2(L2_2)
    return
  end
  L1_2 = L5_1
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
  L6_2 = L7_1
  L6_2 = L6_2 + 1
  L7_1 = L6_2
  L7_2 = true
  L6_1 = L7_2
  L7_2 = Notify
  L8_2 = "Rimani nella zona per %s secondi per reclamare il territorio."
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = math
  L10_2 = L10_2.floor
  L11_2 = L8_1
  L11_2 = L11_2 / 1000
  L10_2, L11_2 = L10_2(L11_2)
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = L8_1
    L0_3 = L0_3 + L1_3
    while true do
      L1_3 = L6_1
      if not L1_3 then
        break
      end
      L1_3 = L7_1
      L2_3 = L6_2
      if L1_3 ~= L2_3 then
        break
      end
      L1_3 = Wait
      L2_3 = L9_1
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
      L1_3 = L11_1
      L2_3 = "Conquista annullata: sei gravemente ferito."
      L1_3(L2_3)
      do return end
      ::lbl_38::
      L1_3 = GetEntityHealth
      L2_3 = L2_2
      L1_3 = L1_3(L2_3)
      L2_3 = L5_2
      if L1_3 < L2_3 then
        L1_3 = L11_1
        L2_3 = "Conquista annullata: sei stato colpito."
        L1_3(L2_3)
        return
      end
      L1_3 = L1_1
      L2_3 = A0_2
      if L1_3 ~= L2_3 then
        L1_3 = L11_1
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
      L3_3 = L10_1
      if L2_3 > L3_3 then
        L2_3 = L11_1
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
        L2_3 = L11_1
        L3_3 = "Conquista annullata: hai lasciato il territorio."
        L2_3(L3_3)
        return
      end
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      if L0_3 <= L2_3 then
        L2_3 = false
        L6_1 = L2_3
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
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = L13_1
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
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = L13_1
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
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L5_1
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
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L13_1
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
function L18_1(A0_2)
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
function L19_1()
  local L0_2, L1_2
  L0_2 = L1_1
  return L0_2
end
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = ""
  end
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 == L2_2
  return L1_2
end
function L21_1()
  local L0_2, L1_2
  L0_2 = L2_1
  if L0_2 then
    return
  end
  L0_2 = true
  L2_1 = L0_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    while true do
      L0_3 = L2_1
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
          L2_3 = L18_1
          L3_3 = L1_3
          L2_3 = L2_3(L3_3)
          L3_3 = L1_1
          if L2_3 ~= L3_3 then
            L3_3 = L1_1
            L1_1 = L2_3
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
              L7_3 = L5_1
              L8_3 = L2_3
              L7_3 = L7_3(L8_3)
              L8_3 = L13_1
              L9_3 = L2_3
              L8_3, L9_3 = L8_3(L9_3)
              L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = L4_1
      L1_3(L2_3)
    end
  end
  L0_2(L1_2)
end
function L22_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "casate:requestTerritories"
  L0_2(L1_2)
end
L23_1 = RegisterNetEvent
L24_1 = "casate:receiveTerritories"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 or L1_2
  if "table" ~= L1_2 or not A0_2 then
    L1_2 = {}
  end
  L0_1 = L1_2
  L1_2 = true
  L3_1 = L1_2
  L1_2 = TriggerEvent
  L2_2 = "casate:territoriesLoaded"
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "casate:territoryUpdated"
function L25_1(A0_2, A1_2)
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
    L2_2 = L0_1
    L2_2[A0_2] = nil
  else
    L2_2 = L0_1
    L2_2[A0_2] = A1_2
  end
  L2_2 = TriggerEvent
  L3_2 = "casate:territoryStateChanged"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if not A0_2 then
    A0_2 = L1_1
  end
  if not A0_2 then
    L1_2 = ExecuteCommand
    L2_2 = "e shrug"
    L1_2(L2_2)
    L1_2 = Notify
    L2_2 = "Non ti trovi dentro alcun territorio."
    return L1_2(L2_2)
  end
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = Notify
    L3_2 = "Configurazione del territorio non trovata."
    return L2_2(L3_2)
  end
  L2_2 = L13_1
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
      L0_3 = L12_1
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
L24_1 = RegisterNetEvent
L25_1 = "casate:enteredTerritory"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L13_1
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
    L4_2 = L0_1
    if L4_2 then
      L4_2 = L0_1
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
L24_1(L25_1, L26_1)
L24_1 = RegisterNetEvent
L25_1 = "casate:leftTerritory"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
end
L24_1(L25_1, L26_1)
L24_1 = RegisterCommand
L25_1 = "territorio"
function L26_1()
  local L0_2, L1_2
  L0_2 = L23_1
  L0_2()
end
L27_1 = false
L24_1(L25_1, L26_1, L27_1)
L24_1 = RegisterCommand
L25_1 = "territoriodebug"
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L19_1
  L0_2 = L0_2()
  if not L0_2 then
    L1_2 = print
    L2_2 = "^3[TERRITORI] Non sei dentro nessun territorio.^7"
    L1_2(L2_2)
    return
  end
  L1_2 = L5_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L13_1
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
L27_1 = false
L24_1(L25_1, L26_1, L27_1)
L24_1 = exports
L25_1 = "StartTerritoryClaim"
L26_1 = L12_1
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "StopTerritoryClaim"
L26_1 = L11_1
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "IsTerritoryClaimRunning"
function L26_1()
  local L0_2, L1_2
  L0_2 = L6_1
  return L0_2
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "GetTerritoryConfigClient"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L5_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "GetTerritoryStateClient"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L13_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "GetTerritoryOwnerClient"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L14_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "GetTerritoryDataClient"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L17_1
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "GetCurrentTerritory"
function L26_1()
  local L0_2, L1_2
  L0_2 = L19_1
  return L0_2()
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "IsInsideTerritory"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L20_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "GetTerritoryFromCoords"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L18_1
  L2_2 = A0_2
  return L1_2(L2_2)
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "OpenTerritoryMenu"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L23_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "RequestTerritories"
function L26_1()
  local L0_2, L1_2
  L0_2 = L22_1
  L0_2()
end
L24_1(L25_1, L26_1)
L24_1 = exports
L25_1 = "AreTerritoriesLoaded"
function L26_1()
  local L0_2, L1_2
  L0_2 = L3_1
  return L0_2
end
L24_1(L25_1, L26_1)
function L24_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L19_1
  L0_2 = L0_2()
  if L0_2 then
    L1_2 = CurrentCasataData
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = false
  L2_2 = nil
  do return L1_2, L2_2 end
  ::lbl_11::
  L1_2 = L14_1
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CurrentCasataData
  L2_2 = L2_2.id
  if L1_2 ~= L2_2 then
    L2_2 = false
    L3_2 = L0_2
    return L2_2, L3_2
  end
  L2_2 = true
  L3_2 = L0_2
  return L2_2, L3_2
end
IsInsideOwnedTerritory = L24_1
L24_1 = exports
L25_1 = "IsInsideOwnedTerritory"
L26_1 = IsInsideOwnedTerritory
L24_1(L25_1, L26_1)
L24_1 = CreateThread
function L25_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = L22_1
  L0_2()
  L0_2 = Wait
  L1_2 = 3000
  L0_2(L1_2)
  L0_2 = L21_1
  L0_2()
end
L24_1(L25_1)
