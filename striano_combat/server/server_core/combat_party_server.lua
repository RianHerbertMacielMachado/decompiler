local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = Patti
if not L0_1 then
  L0_1 = {}
end
Patti = L0_1
L0_1 = pattoOf
if not L0_1 then
  L0_1 = {}
end
pattoOf = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    if L6_2 == A1_2 then
      return L5_2
    end
  end
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L2_2 = L0_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L2_2 = L0_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = A0_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
_removeValue = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A0_2 or not A1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pattoOf
  L2_2 = L2_2[A0_2]
  L2_2 = nil ~= L2_2
  return L2_2
end
samePatto = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = Patti
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = Patti
  L2_2 = L2_2[A0_2]
  L3_2 = Patti
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.listaNomi
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.listaNomi = L3_2
  L2_2 = GetPlayerName
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 and "" ~= L2_2 then
    L3_2 = Patti
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.listaNomi
    L3_2[A1_2] = L2_2
  else
    L3_2 = Patti
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.listaNomi
    L4_2 = tostring
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2[A1_2] = L4_2
  end
end
_setMemberName = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 and A1_2 then
    L2_2 = Patti
    L2_2 = L2_2[A1_2]
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = Patti
  L2_2 = L2_2[A1_2]
  L3_2 = Patti
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.listaPlayer
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.listaPlayer = L3_2
  L2_2 = Patti
  L2_2 = L2_2[A1_2]
  L3_2 = Patti
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.listaNomi
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.listaNomi = L3_2
  L2_2 = _removeValue
  L3_2 = Patti
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.listaPlayer
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = Patti
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.listaNomi
  L2_2[A0_2] = nil
  L2_2 = pattoOf
  L2_2 = L2_2[A0_2]
  if L2_2 == A1_2 then
    L2_2 = pattoOf
    L2_2[A0_2] = nil
  end
end
_removePlayerFromPatto = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 and A1_2 then
    L2_2 = Patti
    L2_2 = L2_2[A1_2]
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = Patti
  L2_2 = L2_2[A1_2]
  L3_2 = Patti
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.listaPlayer
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.listaPlayer = L3_2
  L2_2 = Patti
  L2_2 = L2_2[A1_2]
  L3_2 = Patti
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.listaNomi
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.listaNomi = L3_2
  L2_2 = L1_1
  L3_2 = Patti
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.listaPlayer
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = _setMemberName
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = pattoOf
  L2_2[A0_2] = A1_2
end
_addPlayerToPatto = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerClientEvent
  L1_2 = "updatePatti"
  L2_2 = -1
  L3_2 = Patti
  L0_2(L1_2, L2_2, L3_2)
end
_syncPattoToAll = L2_1
L2_1 = RegisterServerEvent
L3_1 = "creaPatto"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "creaPatto"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" ~= L3_2 then
    return
  end
  L3_2 = false
  L4_2 = 0
  L5_2 = 1
  L6_2 = Patti
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = Patti
    L9_2 = L9_2[L8_2]
    if L9_2 then
      L9_2 = Patti
      L9_2 = L9_2[L8_2]
      L9_2 = L9_2.owner
      L10_2 = A0_2.owner
      if L9_2 == L10_2 then
        L9_2 = A0_2.listaPlayer
        if not L9_2 then
          L9_2 = Patti
          L9_2 = L9_2[L8_2]
          L9_2 = L9_2.listaPlayer
          if not L9_2 then
            L9_2 = {}
          end
        end
        A0_2.listaPlayer = L9_2
        L9_2 = A0_2.listaNomi
        if not L9_2 then
          L9_2 = Patti
          L9_2 = L9_2[L8_2]
          L9_2 = L9_2.listaNomi
          if not L9_2 then
            L9_2 = {}
          end
        end
        A0_2.listaNomi = L9_2
        L9_2 = Patti
        L9_2[L8_2] = A0_2
        L4_2 = L8_2
        L3_2 = true
        break
      end
    end
  end
  if not L3_2 then
    L5_2 = Patti
    L5_2 = #L5_2
    L4_2 = L5_2 + 1
    L5_2 = A0_2.listaPlayer
    if not L5_2 then
      L5_2 = {}
    end
    A0_2.listaPlayer = L5_2
    L5_2 = A0_2.listaNomi
    if not L5_2 then
      L5_2 = {}
    end
    A0_2.listaNomi = L5_2
    L5_2 = Patti
    L5_2[L4_2] = A0_2
  end
  L5_2 = Patti
  L5_2 = L5_2[L4_2]
  if L5_2 then
    L5_2 = Patti
    L5_2 = L5_2[L4_2]
    L6_2 = Patti
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.listaPlayer
    if not L6_2 then
      L6_2 = {}
    end
    L5_2.listaPlayer = L6_2
    L5_2 = Patti
    L5_2 = L5_2[L4_2]
    L6_2 = Patti
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.listaNomi
    if not L6_2 then
      L6_2 = {}
    end
    L5_2.listaNomi = L6_2
    L5_2 = Patti
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.owner
    if L5_2 then
      L5_2 = L1_1
      L6_2 = Patti
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.listaPlayer
      L7_2 = Patti
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.owner
      L5_2(L6_2, L7_2)
      L5_2 = _setMemberName
      L6_2 = L4_2
      L7_2 = Patti
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.owner
      L5_2(L6_2, L7_2)
      L5_2 = pattoOf
      L6_2 = Patti
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.owner
      L5_2[L6_2] = L4_2
    end
    L5_2 = ipairs
    L6_2 = Patti
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.listaPlayer
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = pattoOf
      L11_2[L10_2] = L4_2
      L11_2 = _setMemberName
      L12_2 = L4_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L5_2 = tonumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = L2_2
  end
  if L5_2 and L4_2 > 0 then
    L6_2 = TriggerClientEvent
    L7_2 = "myPatto"
    L8_2 = L5_2
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = _syncPattoToAll
  L6_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "delPatto"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "delPatto"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = Patti
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = Patti
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.owner
  if L2_2 ~= L1_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = "exitPatto"
  L4_2 = -1
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Patti
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.listaPlayer
  if L2_2 then
    L2_2 = ipairs
    L3_2 = Patti
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.listaPlayer
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = pattoOf
      L8_2 = L8_2[L7_2]
      if L8_2 == A0_2 then
        L8_2 = pattoOf
        L8_2[L7_2] = nil
      end
    end
  end
  L2_2 = Patti
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.owner
  if L2_2 then
    L2_2 = pattoOf
    L3_2 = Patti
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.owner
    L2_2 = L2_2[L3_2]
    if L2_2 == A0_2 then
      L2_2 = pattoOf
      L3_2 = Patti
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.owner
      L2_2[L3_2] = nil
    end
  end
  L2_2 = Patti
  L2_2 = L2_2[A0_2]
  L2_2.nome = ""
  L2_2 = Patti
  L2_2 = L2_2[A0_2]
  L3_2 = {}
  L2_2.listaPlayer = L3_2
  L2_2 = Patti
  L2_2 = L2_2[A0_2]
  L3_2 = {}
  L2_2.listaNomi = L3_2
  L2_2 = _syncPattoToAll
  L2_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "joinPatto"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "joinPatto"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = Patti
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = pattoOf
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = Patti
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = _removePlayerFromPatto
      L4_2 = L1_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = _addPlayerToPatto
  L4_2 = L1_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = TriggerClientEvent
  L4_2 = "myPatto"
  L5_2 = L1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = _syncPattoToAll
  L3_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerEvent
L3_1 = "leavePatto"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "leavePatto"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  if A0_2 then
    L2_2 = Patti
    L2_2 = L2_2[A0_2]
    if L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = _removePlayerFromPatto
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = _syncPattoToAll
  L2_2()
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "playerDropped"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = pattoOf
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L2_2 = Patti
    L2_2 = L2_2[L1_2]
    if L2_2 then
      L2_2 = _removePlayerFromPatto
      L3_2 = L0_2
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = _syncPattoToAll
      L2_2()
  end
  else
    L2_2 = pattoOf
    L2_2[L0_2] = nil
  end
end
L2_1(L3_1, L4_1)
