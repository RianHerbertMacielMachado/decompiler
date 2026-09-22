local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = 0.0
L5_1 = 0.0
L6_1 = 0.0
L7_1 = nil
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = GetOffsetFromEntityInWorldCoords
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 0.0
  L4_2 = 4.0
  L5_2 = 0.0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = CastRayPointToPoint
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L6_2 = L1_2.x
  L7_2 = L1_2.y
  L8_2 = L1_2.z
  L9_2 = 10
  L10_2 = PlayerPedId
  L10_2 = L10_2()
  L11_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = GetRaycastResult
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  return L7_2
end
VehicleInFrontRimorchio = L8_1
L8_1 = RegisterCommand
L9_1 = "rimorchio"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = IsPedSittingInAnyVehicle
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L0_2 then
    L0_2 = GetVehiclePedIsIn
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L0_2 = L0_2(L1_2, L2_2)
    L0_1 = L0_2
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Scendi dal veicolo e ripeti il comando vicino il veicolo da trainare."
    L1_2(L2_2, L3_2)
    L1_2 = GetVehicleTrailerVehicle
    L2_2 = L0_1
    L1_2, L2_2 = L1_2(L2_2)
    if L1_2 then
      L3_2 = L0_1
      if L3_2 ~= L2_2 then
        L0_1 = L2_2
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.submexError
        L5_2 = "Rimorchio snodato ~q~collegato ~w~con successo."
        L3_2(L4_2, L5_2)
      end
    end
  else
    L0_2 = L0_1
    if nil == L0_2 then
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submexError
      L2_2 = "Devi essere in un veicolo per selezionare un rimorchio."
      L0_2(L1_2, L2_2)
      L0_2 = ExecuteCommand
      L1_2 = "e shrug"
      L0_2(L1_2)
    else
      L0_2 = GetVehicleInDirectionStriano
      L0_2 = L0_2()
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = GetEntityCoords
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = GetClosestVehicle
      L4_2 = L2_2.x
      L5_2 = L2_2.y
      L6_2 = L2_2.z
      L7_2 = 5.0
      L8_2 = 0
      L9_2 = 70
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L0_2 = L3_2
      if nil == L0_2 or 0 == L0_2 then
        L3_2 = GetClosestVehicle
        L4_2 = L2_2.x
        L5_2 = L2_2.y
        L6_2 = L2_2.z
        L7_2 = 9.5
        L8_2 = 0
        L9_2 = 12294
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        L0_2 = L3_2
      end
      if nil == L0_2 or 0 == L0_2 then
        L3_2 = VehicleInFrontRimorchio
        L3_2 = L3_2()
        L0_2 = L3_2
      end
      if nil == L0_2 or 0 == L0_2 then
        L3_2 = GetEntityCoords
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = GetOffsetFromEntityInWorldCoords
        L5_2 = L1_2
        L6_2 = 0.0
        L7_2 = 5.0
        L8_2 = 0.0
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        L5_2 = CastRayPointToPoint
        L6_2 = L3_2.x
        L7_2 = L3_2.y
        L8_2 = L3_2.z
        L9_2 = L4_2.x
        L10_2 = L4_2.y
        L11_2 = L4_2.z
        L12_2 = 30
        L13_2 = L1_2
        L14_2 = 0
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L6_2 = GetRaycastResult
        L7_2 = L5_2
        L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
        L0_2 = L10_2
      end
      if nil ~= L0_2 and 0 ~= L0_2 then
        L3_2 = NetworkRequestControlOfEntity
        L4_2 = L0_2
        L3_2(L4_2)
        L7_1 = L0_2
        L3_2 = DoesEntityExist
        L4_2 = L0_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = L0_1
          if L0_2 ~= L3_2 then
            L3_2 = Wait
            L4_2 = 100
            L3_2(L4_2)
            L3_2 = RimorchioVeicolo
            L4_2 = L1_2
            L5_2 = L0_2
            L3_2(L4_2, L5_2)
        end
        else
          L3_2 = exports
          L3_2 = L3_2.striano_combat
          L4_2 = L3_2
          L3_2 = L3_2.submexError
          L5_2 = "Non sembra esserci un veicolo nelle vicinanze da trainare."
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L11_1 = false
L8_1(L9_1, L10_1, L11_1)
L8_1 = RegisterCommand
L9_1 = "rimorchiov"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2, L5_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
  L1_2 = L0_1
  if nil == L1_2 then
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Non hai ancora selezionato un ~q~/rimorchio ~w~in un veicolo."
    L1_2(L2_2, L3_2)
    L1_2 = ExecuteCommand
    L2_2 = "e shrug"
    L1_2(L2_2)
  else
    L1_2 = GetVehicleTrailerVehicle
    L2_2 = L0_1
    L1_2, L2_2 = L1_2(L2_2)
    if L1_2 then
      L3_2 = L0_1
      if L3_2 ~= L2_2 then
        L0_1 = L2_2
        L3_2 = exports
        L3_2 = L3_2.striano_combat
        L4_2 = L3_2
        L3_2 = L3_2.submexError
        L5_2 = "Rimorchio ~q~collegato ~w~con successo."
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "Nessun ~r~rimorchio ~w~rilevato."
      L3_2(L4_2, L5_2)
    end
  end
end
L11_1 = false
L8_1(L9_1, L10_1, L11_1)
L8_1 = RegisterCommand
L9_1 = "syncrimo"
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if nil == L0_2 then
    L0_2 = L7_1
    if nil == L0_2 then
      L0_2 = exports
      L0_2 = L0_2.striano_combat
      L1_2 = L0_2
      L0_2 = L0_2.submexError
      L2_2 = "Non hai un operazione rimorchio in modifica."
      L0_2(L1_2, L2_2)
      return
    end
  end
  L0_2 = UpdateRimorchio
  L0_2()
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L7_1 = A1_2
  L3_2 = GetEntityCoords
  L4_2 = L0_1
  L3_2 = L3_2(L4_2)
  L4_2 = 0.0
  L1_1 = L4_2
  L4_2 = -1.0
  L2_1 = L4_2
  L4_2 = L2_2.z
  L5_2 = L3_2.z
  L4_2 = L4_2 - L5_2
  L3_1 = L4_2
  L4_2 = 0.0
  L4_1 = L4_2
  L4_2 = 0.0
  L5_1 = L4_2
  L4_2 = 0.0
  L6_1 = L4_2
  vy = -1.0
  L4_2 = L3_2.z
  L4_2 = L4_2 - 2.0
  vz = L4_2
  L4_2 = AttachEntityToEntity
  L5_2 = A1_2
  L6_2 = L0_1
  L7_2 = -1
  L8_2 = 0.0
  L9_2 = vy
  L10_2 = vz
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = false
  L19_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = SetEntityAsMissionEntity
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 100
  L4_2(L5_2)
  L4_2 = UpdateRimorchio
  L4_2()
end
RimorchioVeicolo = L8_1
L8_1 = RegisterCommand
L9_1 = "stacca"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetClosestVehicle
  L3_2 = L1_2
  L4_2 = 7.5
  L5_2 = 0
  L6_2 = 70
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = IsEntityAttached
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DetachEntity
    L4_2 = L2_2
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = GetEntityCoords
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetEntityHeading
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = SetEntityCoords
    L6_2 = L2_2
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = SetEntityHeading
    L6_2 = L2_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = exports
    L5_2 = L5_2.striano_combat
    L6_2 = L5_2
    L5_2 = L5_2.submexError
    L7_2 = "Veicolo ~o~staccato ~w~con successo dal rimorchio."
    L5_2(L6_2, L7_2)
    L5_2 = nil
    L7_1 = L5_2
  end
end
L11_1 = false
L8_1(L9_1, L10_1, L11_1)
L8_1 = RegisterCommand
L9_1 = "staccav"
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L7_1
  if nil ~= L1_2 then
    L1_2 = IsEntityAttached
    L2_2 = L7_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = GetEntityCoords
      L2_2 = Selezionato
      L1_2 = L1_2(L2_2)
      L2_2 = GetEntityHeading
      L3_2 = Selezionato
      L2_2 = L2_2(L3_2)
      L3_2 = SetEntityCoords
      L4_2 = Selezionato
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
      L3_2 = SetEntityHeading
      L4_2 = Selezionato
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = DetachEntity
      L4_2 = L7_1
      L5_2 = true
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = exports
      L3_2 = L3_2.striano_combat
      L4_2 = L3_2
      L3_2 = L3_2.submexError
      L5_2 = "Veicolo vicino ~q~staccato ~w~dal rimorchio."
      L3_2(L4_2, L5_2)
      L3_2 = nil
      L7_1 = L3_2
    end
  end
end
L11_1 = false
L8_1(L9_1, L10_1, L11_1)
function L8_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L0_3 = AttachEntityToEntity
    L1_3 = L7_1
    L2_3 = L0_1
    L3_3 = -1
    L4_3 = L1_1
    L5_3 = L2_1
    L6_3 = L3_1
    L7_3 = L4_1
    L8_3 = L5_1
    L9_3 = L6_1
    L10_3 = false
    L11_3 = false
    L12_3 = false
    L13_3 = false
    L14_3 = false
    L15_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    while true do
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = L7_1
      L3_3 = L0_1
      if nil ~= L3_3 then
        L4_3 = L7_1
        if nil ~= L4_3 then
          L4_3 = IsEntityPlayingAnim
          L5_3 = L0_3
          L6_3 = "cellphone@"
          L7_3 = "cellphone_text_read_base"
          L8_3 = 3
          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
          if not L4_3 then
            L4_3 = IsEntityPlayingAnim
            L5_3 = L0_3
            L6_3 = "cellphone@str"
            L7_3 = "cellphone_call_listen_a"
            L8_3 = 3
            L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
            if not L4_3 then
              L4_3 = GetEntityCoords
              L5_3 = L3_3
              L4_3 = L4_3(L5_3)
              L5_3 = exports
              L5_3 = L5_3.striano_core
              L6_3 = L5_3
              L5_3 = L5_3.draw
              L7_3 = 300
              L8_3 = "Sposta"
              L9_3 = 21
              L10_3 = "Altezza"
              L11_3 = 22
              L12_3 = "Rotazione"
              L13_3 = 73
              L14_3 = "Stacca"
              L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
              L5_3 = IsControlJustReleased
              L6_3 = 0
              L7_3 = 73
              L5_3 = L5_3(L6_3, L7_3)
              if L5_3 then
                L5_3 = ExecuteCommand
                L6_3 = "staccav"
                L5_3(L6_3)
              end
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 21
              L5_3 = L5_3(L6_3, L7_3)
              if L5_3 then
                L5_3 = IsControlPressed
                L6_3 = 0
                L7_3 = 172
                L5_3 = L5_3(L6_3, L7_3)
                if L5_3 then
                  L5_3 = L3_1
                  L5_3 = L5_3 + 0.02
                  L3_1 = L5_3
                  L5_3 = DetachEntity
                  L6_3 = L2_3
                  L7_3 = true
                  L8_3 = true
                  L5_3(L6_3, L7_3, L8_3)
                  L5_3 = AttachEntityToEntity
                  L6_3 = L2_3
                  L7_3 = L3_3
                  L8_3 = -1
                  L9_3 = L1_1
                  L10_3 = L2_1
                  L11_3 = L3_1
                  L12_3 = L4_1
                  L13_3 = L5_1
                  L14_3 = L6_1
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = false
                  L19_3 = false
                  L20_3 = true
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                end
                L5_3 = IsControlPressed
                L6_3 = 0
                L7_3 = 173
                L5_3 = L5_3(L6_3, L7_3)
                if L5_3 then
                  L5_3 = L3_1
                  L5_3 = L5_3 - 0.02
                  L3_1 = L5_3
                  L5_3 = DetachEntity
                  L6_3 = L2_3
                  L7_3 = true
                  L8_3 = true
                  L5_3(L6_3, L7_3, L8_3)
                  L5_3 = AttachEntityToEntity
                  L6_3 = L2_3
                  L7_3 = L3_3
                  L8_3 = -1
                  L9_3 = L1_1
                  L10_3 = L2_1
                  L11_3 = L3_1
                  L12_3 = L4_1
                  L13_3 = L5_1
                  L14_3 = L6_1
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = false
                  L19_3 = false
                  L20_3 = true
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                end
                L5_3 = IsControlPressed
                L6_3 = 0
                L7_3 = 174
                L5_3 = L5_3(L6_3, L7_3)
                if L5_3 then
                  L5_3 = L6_1
                  L5_3 = L5_3 + 1.5
                  L6_1 = L5_3
                  L5_3 = DetachEntity
                  L6_3 = L2_3
                  L7_3 = true
                  L8_3 = true
                  L5_3(L6_3, L7_3, L8_3)
                  L5_3 = AttachEntityToEntity
                  L6_3 = L2_3
                  L7_3 = L3_3
                  L8_3 = -1
                  L9_3 = L1_1
                  L10_3 = L2_1
                  L11_3 = L3_1
                  L12_3 = L4_1
                  L13_3 = L5_1
                  L14_3 = L6_1
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = false
                  L19_3 = false
                  L20_3 = true
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                end
                L5_3 = IsControlPressed
                L6_3 = 0
                L7_3 = 175
                L5_3 = L5_3(L6_3, L7_3)
                if L5_3 then
                  L5_3 = L6_1
                  L5_3 = L5_3 - 1.5
                  L6_1 = L5_3
                  L5_3 = DetachEntity
                  L6_3 = L2_3
                  L7_3 = true
                  L8_3 = true
                  L5_3(L6_3, L7_3, L8_3)
                  L5_3 = AttachEntityToEntity
                  L6_3 = L2_3
                  L7_3 = L3_3
                  L8_3 = -1
                  L9_3 = L1_1
                  L10_3 = L2_1
                  L11_3 = L3_1
                  L12_3 = L4_1
                  L13_3 = L5_1
                  L14_3 = L6_1
                  L15_3 = false
                  L16_3 = false
                  L17_3 = false
                  L18_3 = false
                  L19_3 = false
                  L20_3 = true
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                end
              else
                L5_3 = IsControlPressed
                L6_3 = 0
                L7_3 = 22
                L5_3 = L5_3(L6_3, L7_3)
                if L5_3 then
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 172
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L5_1
                    L5_3 = L5_3 + 1.5
                    L5_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 173
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L5_1
                    L5_3 = L5_3 - 1.5
                    L5_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 174
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L4_1
                    L5_3 = L5_3 + 1.5
                    L4_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 175
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L4_1
                    L5_3 = L5_3 - 1.5
                    L4_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                end
              end
              L5_3 = IsControlPressed
              L6_3 = 0
              L7_3 = 21
              L5_3 = L5_3(L6_3, L7_3)
              if not L5_3 then
                L5_3 = IsControlPressed
                L6_3 = 0
                L7_3 = 22
                L5_3 = L5_3(L6_3, L7_3)
                if not L5_3 then
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 174
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L1_1
                    L5_3 = L5_3 - 0.05
                    L1_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 175
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L1_1
                    L5_3 = L5_3 + 0.05
                    L1_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 172
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L2_1
                    L5_3 = L5_3 + 0.05
                    L2_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                  L5_3 = IsControlPressed
                  L6_3 = 0
                  L7_3 = 173
                  L5_3 = L5_3(L6_3, L7_3)
                  if L5_3 then
                    L5_3 = L2_1
                    L5_3 = L5_3 - 0.05
                    L2_1 = L5_3
                    L5_3 = DetachEntity
                    L6_3 = L2_3
                    L7_3 = true
                    L8_3 = true
                    L5_3(L6_3, L7_3, L8_3)
                    L5_3 = AttachEntityToEntity
                    L6_3 = L2_3
                    L7_3 = L3_3
                    L8_3 = -1
                    L9_3 = L1_1
                    L10_3 = L2_1
                    L11_3 = L3_1
                    L12_3 = L4_1
                    L13_3 = L5_1
                    L14_3 = L6_1
                    L15_3 = false
                    L16_3 = false
                    L17_3 = false
                    L18_3 = false
                    L19_3 = false
                    L20_3 = true
                    L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3)
                  end
                end
              end
            end
          end
      end
      else
        return
      end
      L4_3 = Wait
      L5_3 = 1
      L4_3(L5_3)
    end
  end
  L0_2(L1_2)
end
UpdateRimorchio = L8_1
