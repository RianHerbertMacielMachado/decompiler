local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1
L0_1 = {}
Player = L0_1
L0_1 = Player
L0_1.SkinModel = nil
L0_1 = Player
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = 11
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetPedDrawableVariation
    L7_2 = L1_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = GetPedTextureVariation
    L8_2 = L1_2
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if nil ~= L6_2 then
      if L7_2 > 0 then
        L8_2 = {}
        L9_2 = L6_2
        L10_2 = L7_2
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L0_2[L5_2] = L8_2
      else
        L8_2 = {}
        L9_2 = L6_2
        L10_2 = 0
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L0_2[L5_2] = L8_2
      end
    end
  end
  return L0_2
end
L0_1.GetModel = L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  while true do
    L1_2 = IsInPowerSavingMode
    L1_2 = L1_2()
    if not L1_2 then
      break
    end
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.draw
    L3_2 = -1
    L4_2 = "Loading focus..."
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  while true do
    L1_2 = IsPauseMenuActive
    L1_2 = L1_2()
    if not L1_2 then
      break
    end
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.draw
    L3_2 = -1
    L4_2 = "Waiting pause menu..."
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  while true do
    L1_2 = NetworkIsSessionStarted
    L1_2 = L1_2()
    if L1_2 then
      break
    end
    L1_2 = exports
    L1_2 = L1_2.striano_core
    L2_2 = L1_2
    L1_2 = L1_2.draw
    L3_2 = -1
    L4_2 = "Loading session..."
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  while true do
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    if nil ~= L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 0
    L1_2(L2_2)
  end
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2 = GetHashKey
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = RequestModelStriano
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = 0
  L4_2 = 350
  while true do
    L5_2 = HasModelLoaded
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    if not (not L5_2 and L3_2 < L4_2) then
      break
    end
    L3_2 = L3_2 + 1
    L5_2 = RequestModelStriano
    L6_2 = L2_2
    L5_2(L6_2)
    L5_2 = exports
    L5_2 = L5_2.striano_core
    L6_2 = L5_2
    L5_2 = L5_2.draw
    L7_2 = -1
    L8_2 = "Caricamento skin (modello: "
    L9_2 = A0_2
    L10_2 = ") [tentativi: "
    L11_2 = L3_2
    L12_2 = "]..."
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = Wait
    L6_2 = 0
    L5_2(L6_2)
  end
  if L4_2 > L3_2 then
    while true do
      L5_2 = HasCollisionForModelLoaded
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        break
      end
      L5_2 = exports
      L5_2 = L5_2.striano_core
      L6_2 = L5_2
      L5_2 = L5_2.draw
      L7_2 = -1
      L8_2 = "Loading model collisions..."
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
    while true do
      L5_2 = HasCollisionLoadedAroundEntity
      L6_2 = PlayerPedId
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      if L5_2 then
        break
      end
      L5_2 = exports
      L5_2 = L5_2.striano_core
      L6_2 = L5_2
      L5_2 = L5_2.draw
      L7_2 = -1
      L8_2 = "Loading collisions..."
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = RequestCollisionAtCoord
      L6_2 = L1_2.x
      L7_2 = L1_2.y
      L8_2 = L1_2.z
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = SetFocusPosAndVel
      L6_2 = L1_2.x
      L7_2 = L1_2.y
      L8_2 = L1_2.z
      L9_2 = 0.0
      L10_2 = 0.0
      L11_2 = 0.0
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
    L5_2 = FreezeEntityPosition
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = GetEntityModel
    L6_2 = PlayerPedId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L5_2 == L2_2 then
    else
      L5_2 = SetPlayerModel
      L6_2 = PlayerId
      L6_2 = L6_2()
      L7_2 = L2_2
      L5_2(L6_2, L7_2)
      L5_2 = SetPedDropsWeaponsWhenDead
      L6_2 = PlayerPedId
      L6_2 = L6_2()
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = exports
      L5_2 = L5_2.striano_core
      L6_2 = L5_2
      L5_2 = L5_2.gettutorial
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = TriggerServerEvent
        L6_2 = "vSync:requestSync"
        L5_2(L6_2)
      end
      L5_2 = ReleasePedPreloadVariationData
      L6_2 = PlayerPedId
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L5_2 = SetPedPreloadVariationData
      L6_2 = PlayerPedId
      L6_2 = L6_2()
      L7_2 = 0
      L8_2 = 0
      L9_2 = 0
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = IsPedComponentVariationValid
      L6_2 = PlayerPedId
      L6_2 = L6_2()
      L7_2 = 0
      L8_2 = 0
      L9_2 = 0
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if L5_2 then
        L5_2 = SetPedComponentVariation
        L6_2 = PlayerPedId
        L6_2 = L6_2()
        L7_2 = 0
        L8_2 = 0
        L9_2 = 0
        L10_2 = 0
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      end
      L5_2 = SetPedDefaultComponentVariation
      L6_2 = PlayerPedId
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L5_2 = SetModelAsNoLongerNeeded
      L6_2 = L2_2
      L5_2(L6_2)
      L5_2 = ClearFocus
      L5_2()
      L5_2 = FreezeEntityPosition
      L6_2 = PlayerPedId
      L6_2 = L6_2()
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = RenderScriptCams
      L6_2 = false
      L7_2 = false
      L8_2 = 0
      L9_2 = true
      L10_2 = false
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L5_2 = IsPedHuman
      L6_2 = PlayerPedId
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      if L5_2 then
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.fodera2
        L5_2(L6_2)
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.delallarmi
        L5_2(L6_2)
        L5_2 = exports
        L5_2 = L5_2.striano_inventory
        L6_2 = L5_2
        L5_2 = L5_2.aggiornaHolders
        L5_2(L6_2)
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.fodera
        L5_2(L6_2)
      else
        L5_2 = exports
        L5_2 = L5_2.striano_combat
        L6_2 = L5_2
        L5_2 = L5_2.checkarmi
        L5_2(L6_2)
      end
    end
    L5_2 = FreezeEntityPosition
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = GetGameTimer
    L5_2 = L5_2()
    L5_2 = L5_2 + 3000
    while true do
      L6_2 = HasCollisionLoadedAroundEntity
      L7_2 = PlayerPedId
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      if L6_2 then
        break
      end
      L6_2 = GetGameTimer
      L6_2 = L6_2()
      if not (L5_2 > L6_2) then
        break
      end
      L6_2 = RequestCollisionAtCoord
      L7_2 = L1_2.x
      L8_2 = L1_2.y
      L9_2 = L1_2.z
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = RequestAdditionalCollisionAtCoord
      L7_2 = L1_2.x
      L8_2 = L1_2.y
      L9_2 = L1_2.z
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = Wait
      L7_2 = 0
      L6_2(L7_2)
    end
    L6_2 = FreezeEntityPosition
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = IsPedHuman
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L6_2 then
      L6_2 = TriggerEvent
      L7_2 = "legacy:loadskin"
      L6_2(L7_2)
      L6_2 = LoadComponents
      L6_2()
      L6_2 = CheckClothError
      L6_2()
      L6_2 = exports
      L6_2 = L6_2.striano_combat
      L7_2 = L6_2
      L6_2 = L6_2.eliminaArmi
      L6_2(L7_2)
      L6_2 = ExecuteCommand
      L7_2 = "foderaarmi"
      L6_2(L7_2)
    else
      L6_2 = exports
      L6_2 = L6_2.striano_combat
      L7_2 = L6_2
      L6_2 = L6_2.checkarmi
      L6_2(L7_2)
      L6_2 = exports
      L6_2 = L6_2.striano_combat
      L7_2 = L6_2
      L6_2 = L6_2.eliminaArmi
      L6_2(L7_2)
      L6_2 = ExecuteCommand
      L7_2 = "startvolo"
      L6_2(L7_2)
    end
    L6_2 = CreateThread
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      if "mp_m_freemode_01" == L0_3 then
        L0_3 = TriggerServerEvent
        L1_3 = "esx_Pharmacy:setVarDB"
        L2_3 = "sex"
        L3_3 = "M"
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = CreateThread
        function L1_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = TriggerEvent
          L1_4 = "skinchanger:change"
          L2_4 = "sex"
          L3_4 = 1
          L0_4(L1_4, L2_4, L3_4)
          L0_4 = Wait
          L1_4 = 100
          L0_4(L1_4)
          L0_4 = TriggerEvent
          L1_4 = "skinchanger:change"
          L2_4 = "sex"
          L3_4 = 0
          L0_4(L1_4, L2_4, L3_4)
        end
        L0_3(L1_3)
        L0_3 = exports
        L0_3 = L0_3.striano_core
        L1_3 = L0_3
        L0_3 = L0_3.updateSex
        L2_3 = "M"
        L0_3(L1_3, L2_3)
      else
        L0_3 = A0_2
        if "mp_f_freemode_01" == L0_3 then
          L0_3 = TriggerServerEvent
          L1_3 = "esx_Pharmacy:setVarDB"
          L2_3 = "sex"
          L3_3 = "F"
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = CreateThread
          function L1_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = TriggerEvent
            L1_4 = "skinchanger:change"
            L2_4 = "sex"
            L3_4 = 0
            L0_4(L1_4, L2_4, L3_4)
            L0_4 = Wait
            L1_4 = 100
            L0_4(L1_4)
            L0_4 = TriggerEvent
            L1_4 = "skinchanger:change"
            L2_4 = "sex"
            L3_4 = 1
            L0_4(L1_4, L2_4, L3_4)
          end
          L0_3(L1_3)
          L0_3 = exports
          L0_3 = L0_3.striano_core
          L1_3 = L0_3
          L0_3 = L0_3.updateSex
          L2_3 = "F"
          L0_3(L1_3, L2_3)
        end
      end
      L0_3 = SetEntityVisible
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = TriggerEvent
      L1_3 = "CaricamiCamminata"
      L0_3(L1_3)
      L0_3 = Wait
      L1_3 = 25
      L0_3(L1_3)
      L0_3 = TriggerEvent
      L1_3 = "legacy:loadskin"
      L0_3(L1_3)
    end
    L6_2(L7_2)
    L6_2 = GetEntityCoords
    L7_2 = PlayerPedId
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = vector
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L6_2 - L7_2
    L6_2 = #L6_2
    if L6_2 < 50.0 then
      L6_2 = FreezeEntityPosition
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = SetEntityCoordsNoOffset
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = L1_2.x
      L9_2 = L1_2.y
      L10_2 = L1_2.z
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L14_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2 = Wait
      L7_2 = 500
      L6_2(L7_2)
      L6_2 = FreezeEntityPosition
      L7_2 = PlayerPedId
      L7_2 = L7_2()
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  else
    L5_2 = TriggerServerEvent
    L6_2 = "tornaUmano"
    L7_2 = nil
    L8_2 = GetPlayerServerId
    L9_2 = PlayerId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2()
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = print
    L6_2 = "ERRORE NEL CARICAMENTO DELLA SKIN (Provo a tornare umano)! ("
    L7_2 = A0_2
    L8_2 = ")"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
  end
end
L1_1 = {}
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityModel
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if 1885233650 ~= L1_2 then
    L1_2 = GetEntityModel
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if -1667301416 ~= L1_2 then
      L1_2 = TriggerServerCallback
      L2_2 = "myskinped:GETSKIN"
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3
        if nil ~= A0_3 and "no" ~= A0_3 and "none" ~= A0_3 then
          L1_3 = #A0_3
          if L1_3 > 0 then
            L1_3 = json
            L1_3 = L1_3.decode
            L2_3 = A0_3
            L1_3 = L1_3(L2_3)
            L1_1 = L1_3
            L1_3 = L1_1
            if nil ~= L1_3 then
              L1_3 = L1_1
              L1_3 = #L1_3
              if L1_3 > 0 then
                L1_3 = table
                L1_3 = L1_3.foreach
                L2_3 = L1_1
                function L3_3(A0_4, A1_4)
                  local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
                  L2_4 = SetPedPreloadVariationData
                  L3_4 = L0_2
                  L4_4 = tonumber
                  L5_4 = A1_4
                  L4_4 = L4_4(L5_4)
                  L5_4 = A0_4[1]
                  L6_4 = A0_4[2]
                  L2_4(L3_4, L4_4, L5_4, L6_4)
                  L2_4 = IsPedComponentVariationValid
                  L3_4 = L0_2
                  L4_4 = tonumber
                  L5_4 = A1_4
                  L4_4 = L4_4(L5_4)
                  L5_4 = A0_4[1]
                  L6_4 = A0_4[2]
                  L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4)
                  if L2_4 then
                    L2_4 = SetPedComponentVariation
                    L3_4 = L0_2
                    L4_4 = tonumber
                    L5_4 = A1_4
                    L4_4 = L4_4(L5_4)
                    L5_4 = A0_4[1]
                    L6_4 = A0_4[2]
                    L7_4 = 0
                    L2_4(L3_4, L4_4, L5_4, L6_4, L7_4)
                  end
                end
                L1_3(L2_3, L3_3)
              end
            end
        end
        else
          L1_3 = SetPedDefaultComponentVariation
          L2_3 = L0_2
          L1_3(L2_3)
        end
      end
      L1_2(L2_2, L3_2)
    end
  end
end
LoadComponents = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = tutorialFatto
  if L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "myskinped:resetPlayerSkin"
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2 = L3_2()
    L2_2, L3_2 = L2_2(L3_2)
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = TriggerServerCallback
  L1_2 = "esx_Pharmacy:getVarDB"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = tostring
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if "M" == L1_3 then
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:loadDefaultModel"
      L4_3 = true
      L2_3(L3_3, L4_3)
      L2_3 = Wait
      L3_3 = 1000
      L2_3(L3_3)
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:setuomo"
      L4_3 = "mp_m_freemode_01"
      L2_3(L3_3, L4_3)
    else
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:loadDefaultModel"
      L4_3 = false
      L2_3(L3_3, L4_3)
      L2_3 = Wait
      L3_3 = 1000
      L2_3(L3_3)
      L2_3 = TriggerEvent
      L3_3 = "skinchanger:setuomo"
      L4_3 = "mp_f_freemode_01"
      L2_3(L3_3, L4_3)
    end
  end
  L3_2 = "sex"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = SetEntityVisible
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = exports
  L0_2 = L0_2.striano_inventory
  L1_2 = L0_2
  L0_2 = L0_2.aggiornaHolders
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.fodera
  L0_2(L1_2)
  L0_2 = FreezeEntityPosition
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2(L1_2, L2_2)
end
ResetPlayerPed = L2_1
L2_1 = RegisterNetEvent
L3_1 = "no1-playerped:client:SetPlayerPed"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "no1-playerped:client:SetPlayerPed"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "no1-playerped:client:ResetPlayerPed"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "no1-playerped:client:ResetPlayerPed"
function L4_1()
  local L0_2, L1_2
  L0_2 = ResetPlayerPed
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "no1-playerped:client:ModificaSkin"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "no1-playerped:client:ModificaSkin"
function L4_1()
  local L0_2, L1_2
  L0_2 = Modifica
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "no1-playerped:client:ModificaSkinVestiti"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "no1-playerped:client:ModificaSkinVestiti"
function L4_1()
  local L0_2, L1_2
  L0_2 = ModificaVestiti
  L0_2()
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = Modifica
  L1_2 = true
  L0_2(L1_2)
end
ModificaVestiti = L2_1
L2_1 = RegisterCommand
L3_1 = "checkclotherror"
function L4_1()
  local L0_2, L1_2
  L0_2 = CheckClothError
  L0_2()
end
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedHuman
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = GetEntityModel
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if 1885233650 ~= L1_2 then
      L1_2 = GetEntityModel
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if -1667301416 ~= L1_2 then
        goto lbl_50
      end
    end
    L1_2 = GetPedDrawableVariation
    L2_2 = L0_2
    L3_2 = 3
    L1_2 = L1_2(L2_2, L3_2)
    if 15 == L1_2 then
      L1_2 = GetPedDrawableVariation
      L2_2 = L0_2
      L3_2 = 11
      L1_2 = L1_2(L2_2, L3_2)
      if 0 == L1_2 then
        L1_2 = GetPedDrawableVariation
        L2_2 = L0_2
        L3_2 = 5
        L1_2 = L1_2(L2_2, L3_2)
        if 0 == L1_2 then
          L1_2 = GetPedDrawableVariation
          L2_2 = L0_2
          L3_2 = 4
          L1_2 = L1_2(L2_2, L3_2)
          if 26 == L1_2 then
            L1_2 = GetPedDrawableVariation
            L2_2 = L0_2
            L3_2 = 6
            L1_2 = L1_2(L2_2, L3_2)
            if 0 == L1_2 then
              L1_2 = VestitoGonnaIniziale
              L1_2()
            end
          end
        end
      end
    end
  end
  ::lbl_50::
end
CheckClothError = L2_1
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerCallback
  L1_2 = "no1-playerped:server:GetPlayerPed"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if nil ~= A0_3 and "none" ~= A0_3 then
      L1_3 = TriggerEvent
      L2_3 = "no1-playerped:client:SetPlayerPed"
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = CreateThread
      function L2_3()
        local L0_4, L1_4
        L0_4 = IsPedHuman
        L1_4 = PlayerPedId
        L1_4 = L1_4()
        L0_4 = L0_4(L1_4)
        if L0_4 then
          L0_4 = TriggerEvent
          L1_4 = "legacy:loadskin"
          L0_4(L1_4)
          L0_4 = LoadComponents
          L0_4()
          L0_4 = CheckClothError
          L0_4()
        end
      end
      L1_3(L2_3)
    end
  end
  L0_2(L1_2, L2_2)
end
ApplicamiPED = L2_1
L2_1 = RegisterCommand
L3_1 = "loadskin"
function L4_1()
  local L0_2, L1_2
  L0_2 = ApplicamiPED
  L0_2()
end
L2_1(L3_1, L4_1)
L2_1 = {}
L3_1 = {}
L3_1.id = 0
L3_1.name = "Head (0)"
L4_1 = {}
L4_1.id = 1
L4_1.name = "Mask (1)"
L5_1 = {}
L5_1.id = 2
L5_1.name = "Hair (2)"
L6_1 = {}
L6_1.id = 3
L6_1.name = "Torso (3)"
L7_1 = {}
L7_1.id = 4
L7_1.name = "Legs (4)"
L8_1 = {}
L8_1.id = 5
L8_1.name = "Bag (5)"
L9_1 = {}
L9_1.id = 6
L9_1.name = "Shoes (6)"
L10_1 = {}
L10_1.id = 7
L10_1.name = "Accessories [1] (7)"
L11_1 = {}
L11_1.id = 8
L11_1.name = "Accessories [2] (8)"
L12_1 = {}
L12_1.id = 9
L12_1.name = "Accessories [3] (9)"
L13_1 = {}
L13_1.id = 10
L13_1.name = "Decal (10)"
L14_1 = {}
L14_1.id = 11
L14_1.name = "Jacket (11)"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L2_1[10] = L12_1
L2_1[11] = L13_1
L2_1[12] = L14_1
L3_1 = {}
L4_1 = {}
L4_1.id = 1
L4_1.name = "Mask [V] (1)"
L5_1 = {}
L5_1.id = 2
L5_1.name = "Hair [V] (2)"
L6_1 = {}
L6_1.id = 3
L6_1.name = "Torso [V] (3)"
L7_1 = {}
L7_1.id = 4
L7_1.name = "Legs [V] (4)"
L8_1 = {}
L8_1.id = 5
L8_1.name = "Bag [V] (5)"
L9_1 = {}
L9_1.id = 6
L9_1.name = "Shoes [V] (6)"
L10_1 = {}
L10_1.id = 7
L10_1.name = "Accessories [1-V] (7)"
L11_1 = {}
L11_1.id = 8
L11_1.name = "Accessories [2-V] (8)"
L12_1 = {}
L12_1.id = 9
L12_1.name = "Accessories [3-V] (9)"
L13_1 = {}
L13_1.id = 10
L13_1.name = "Decal [V] (10)"
L14_1 = {}
L14_1.id = 11
L14_1.name = "Jacket [V] (11)"
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L3_1[5] = L8_1
L3_1[6] = L9_1
L3_1[7] = L10_1
L3_1[8] = L11_1
L3_1[9] = L12_1
L3_1[10] = L13_1
L3_1[11] = L14_1
L4_1 = 0
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetEntityModel
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if 1885233650 ~= L1_2 then
    L1_2 = GetEntityModel
    L2_2 = PlayerPedId
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if -1667301416 ~= L1_2 then
      goto lbl_19
    end
  end
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexError
  L3_2 = "Operazione bloccata per il tuo modello di ped."
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_19::
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.gettutorial
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L4_2.header = "EDIT PEDS"
  L4_2.subheader = "Press <span>SHIFT</span> for select item menu mode."
  L4_2.icon = "fa-solid fa-user"
  L5_2 = {}
  L5_2.header = "SAVE EDIT"
  L5_2.icon = "fa-solid fa-video-camera"
  L5_2.event = "salvaModifiche"
  L6_2 = {}
  L6_2.header = "RESET EDIT"
  L6_2.icon = "fa-solid fa-trash"
  L6_2.event = "ripristinaModifiche"
  L7_2 = {}
  L7_2.header = "CLOSE MENU"
  L7_2.icon = "fa-solid fa-times"
  L7_2.event = "chiudiMenuBtn"
  L8_2 = {}
  L8_2.search = true
  L8_2.disabled = false
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L2_2 = L3_2
  L3_2 = table
  L3_2 = L3_2.iforeach
  L4_2 = L3_1
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = GetNumberOfPedDrawableVariations
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = A0_3.id
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 > 0 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L2_2
      L3_3 = {}
      L4_3 = "MODELLO "
      L5_3 = A0_3.name
      L6_3 = L5_3
      L5_3 = L5_3.upper
      L5_3 = L5_3(L6_3)
      L4_3 = L4_3 .. L5_3
      L3_3.header = L4_3
      L3_3.subheader = ""
      L3_3.range_slider = true
      L3_3.style = "color:yellow;"
      L3_3.searchable = true
      L4_3 = A0_3.id
      L3_3.currency = L4_3
      L3_3.multiplier = -1100
      L4_3 = {}
      L4_3.step = 1
      L4_3.min = 0
      L5_3 = GetNumberOfPedDrawableVariations
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.max = L5_3
      L5_3 = _ENV
      L6_3 = "GetPedDrawableVariationCollectionLocalIndex"
      L5_3 = L5_3[L6_3]
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.value = L5_3
      L3_3.range = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L2_2
      L3_3 = {}
      L4_3 = "TEXTURE "
      L5_3 = A0_3.name
      L6_3 = L5_3
      L5_3 = L5_3.upper
      L5_3 = L5_3(L6_3)
      L4_3 = L4_3 .. L5_3
      L3_3.header = L4_3
      L3_3.subheader = ""
      L3_3.range_slider = true
      L3_3.style = "color:yellow;"
      L3_3.searchable = true
      L4_3 = A0_3.id
      L3_3.currency = L4_3
      L3_3.multiplier = -1101
      L4_3 = {}
      L4_3.step = 1
      L4_3.min = 0
      L5_3 = GetNumberOfPedDrawableVariations
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.max = L5_3
      L5_3 = _ENV
      L6_3 = "GetPedDrawableVariationCollectionLocalIndex"
      L5_3 = L5_3[L6_3]
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.value = L5_3
      L3_3.range = L4_3
      L1_3(L2_3, L3_3)
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.iforeach
  L4_2 = L2_1
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = GetNumberOfPedDrawableVariations
    L2_3 = PlayerPedId
    L2_3 = L2_3()
    L3_3 = A0_3.id
    L1_3 = L1_3(L2_3, L3_3)
    if L1_3 > 0 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L2_2
      L3_3 = {}
      L4_3 = "MODEL "
      L5_3 = A0_3.name
      L6_3 = L5_3
      L5_3 = L5_3.upper
      L5_3 = L5_3(L6_3)
      L4_3 = L4_3 .. L5_3
      L3_3.header = L4_3
      L3_3.subheader = ""
      L3_3.range_slider = true
      L3_3.style = "color:green;"
      L3_3.searchable = true
      L4_3 = A0_3.id
      L3_3.currency = L4_3
      L3_3.multiplier = -1100
      L4_3 = {}
      L4_3.step = 1
      L4_3.min = 0
      L5_3 = GetNumberOfPedDrawableVariations
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.max = L5_3
      L5_3 = _ENV
      L6_3 = "GetPedDrawableVariationCollectionLocalIndex"
      L5_3 = L5_3[L6_3]
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.value = L5_3
      L3_3.range = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = L2_2
      L3_3 = {}
      L4_3 = "TEXTURE "
      L5_3 = A0_3.name
      L6_3 = L5_3
      L5_3 = L5_3.upper
      L5_3 = L5_3(L6_3)
      L4_3 = L4_3 .. L5_3
      L3_3.header = L4_3
      L3_3.subheader = ""
      L3_3.range_slider = true
      L3_3.style = "color:green;"
      L3_3.searchable = true
      L4_3 = A0_3.id
      L3_3.currency = L4_3
      L3_3.multiplier = -1101
      L4_3 = {}
      L4_3.step = 1
      L4_3.min = 0
      L5_3 = GetNumberOfPedDrawableVariations
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.max = L5_3
      L5_3 = _ENV
      L6_3 = "GetPedDrawableVariationCollectionLocalIndex"
      L5_3 = L5_3[L6_3]
      L6_3 = PlayerPedId
      L6_3 = L6_3()
      L7_3 = A0_3.id
      L5_3 = L5_3(L6_3, L7_3)
      L4_3.value = L5_3
      L3_3.range = L4_3
      L1_3(L2_3, L3_3)
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = exports
  L3_2 = L3_2.skinchanger
  L4_2 = L3_2
  L3_2 = L3_2.createMenu
  L5_2 = L2_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
end
Modifica = L5_1
L5_1 = AddEventHandler
L6_1 = "chiudiMenuBtn"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexInfo
  L3_2 = ""
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.closeMenu
  L1_2(L2_2)
  L1_2 = ReleasePedPreloadVariationData
  L2_2 = PlayerPedId
  L2_2, L3_2 = L2_2()
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "salvaModifiche"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "myskinped:updatePlayerSkin"
  L3_2 = Player
  L3_2 = L3_2.GetModel
  L3_2 = L3_2()
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexInfo
  L3_2 = "Char saved."
  L1_2(L2_2, L3_2)
  L1_2 = exports
  L1_2 = L1_2.skinchanger
  L2_2 = L1_2
  L1_2 = L1_2.closeMenu
  L1_2(L2_2)
  L1_2 = ReleasePedPreloadVariationData
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2)
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "ripristinaModifiche"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SetPedDefaultComponentVariation
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2 = L2_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = TriggerServerEvent
  L2_2 = "myskinped:resetPlayerSkin"
  L3_2 = GetPlayerServerId
  L4_2 = PlayerId
  L4_2 = L4_2()
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexInfo
  L3_2 = "Edits resetted."
  L1_2(L2_2, L3_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "CambiaComponente"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = tonumber
  L3_2 = A0_2.currency
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A0_2.index
  L3_2 = L3_2(L4_2)
  L4_2 = SetPedPreloadVariationData
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = IsPedComponentVariationValid
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L4_2 = SetPedComponentVariation
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = 0
    L9_2 = 0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNUICallback
L6_1 = "CambiaComponenteTexture"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = tonumber
  L3_2 = A0_2.currency
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = A0_2.index
  L3_2 = L3_2(L4_2)
  L4_2 = GetPedDrawableVariation
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = SetPedPreloadVariationData
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = L2_2
  L8_2 = L4_2
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = IsPedComponentVariationValid
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L5_2 = SetPedComponentVariation
    L6_2 = PlayerPedId
    L6_2 = L6_2()
    L7_2 = L2_2
    L8_2 = L4_2
    L9_2 = L3_2
    L10_2 = 0
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L5_2 = A1_2
  L6_2 = "ok"
  L5_2(L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = table
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2
    L9_2 = L7_2
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L5_1.foreach = L6_1
L5_1 = table
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = A1_2
    L9_2 = L7_2
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L5_1.iforeach = L6_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerCallback
  L1_2 = "esx_skin:getPlayerSkin"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if nil ~= A0_3 then
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submex
      L3_3 = "Skin copied in clipboard, you can set in future with /setskin. Same works with /gettattoo."
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "copia "
      L3_3 = json
      L3_3 = L3_3.encode
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "You can't get your skin now, please try again later."
      L1_3(L2_3, L3_3)
    end
  end
  L0_2(L1_2, L2_2)
end
GetSkinFunction = L5_1
L5_1 = RegisterCommand
L6_1 = "myskin"
function L7_1()
  local L0_2, L1_2
  L0_2 = GetSkinFunction
  L0_2()
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = "getskin"
function L7_1()
  local L0_2, L1_2
  L0_2 = GetSkinFunction
  L0_2()
end
L5_1(L6_1, L7_1)
L5_1 = RegisterCommand
L6_1 = "gettattoo"
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerCallback
  L1_2 = "SmallTattoos:GetPlayerTattoos"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if nil ~= A0_3 then
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submex
      L3_3 = "Tattoo copied in clipboard. Apply them in future with /settattoo."
      L1_3(L2_3, L3_3)
      L1_3 = ExecuteCommand
      L2_3 = "copia "
      L3_3 = json
      L3_3 = L3_3.encode
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    else
      L1_3 = exports
      L1_3 = L1_3.striano_combat
      L2_3 = L1_3
      L1_3 = L1_3.submexError
      L3_3 = "Tattoo list not available."
      L1_3(L2_3, L3_3)
    end
  end
  L0_2(L1_2, L2_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "abilitaskin"
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = AbilitatoSetSkin
  L0_2 = not L0_2
  AbilitatoSetSkin = L0_2
  L0_2 = AbilitatoSetSkin
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = "Sei abilitato ad usare /setskin & /settattoo."
    L0_2(L1_2, L2_2)
    L0_2 = ExecuteCommand
    L1_2 = "me ~g~*"
    L0_2(L1_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = "Set Skin & Tattoo disabilitati."
    L0_2(L1_2, L2_2)
    L0_2 = ExecuteCommand
    L1_2 = "me ~r~*"
    L0_2(L1_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = {}
L6_1 = "hair_color_2"
L7_1 = "nose_2"
L8_1 = "blemishes_2"
L9_1 = "bracelets_1"
L10_1 = "decals_2"
L11_1 = "nose_4"
L12_1 = "lip_thickness"
L13_1 = "mask"
L14_1 = "drawable"
L15_1 = "palette"
L16_1 = "undershirt"
L17_1 = "bag"
L18_1 = "chest"
L19_1 = "tops"
L20_1 = "accessory"
L21_1 = "feet"
L22_1 = "legs"
L23_1 = "decals"
L24_1 = "torso"
L25_1 = "jaw_2"
L26_1 = "mask_2"
L27_1 = "chin_3"
L28_1 = "ears_2"
L29_1 = "bodyb_3"
L30_1 = "nose_1"
L31_1 = "beard_3"
L32_1 = "nose_5"
L33_1 = "sun_2"
L34_1 = "lipstick_3"
L35_1 = "makeup_3"
L36_1 = "beard_4"
L37_1 = "hair_color_1"
L38_1 = "torso_1"
L39_1 = "tshirt_1"
L40_1 = "cheeks_3"
L41_1 = "shoes_1"
L42_1 = "eyebrows_4"
L43_1 = "chest_1"
L44_1 = "bags_2"
L45_1 = "bproof_2"
L46_1 = "lipstick_2"
L47_1 = "complexion_2"
L48_1 = "tshirt_2"
L49_1 = "nose_6"
L50_1 = "dad"
L5_1[1] = L6_1
L5_1[2] = L7_1
L5_1[3] = L8_1
L5_1[4] = L9_1
L5_1[5] = L10_1
L5_1[6] = L11_1
L5_1[7] = L12_1
L5_1[8] = L13_1
L5_1[9] = L14_1
L5_1[10] = L15_1
L5_1[11] = L16_1
L5_1[12] = L17_1
L5_1[13] = L18_1
L5_1[14] = L19_1
L5_1[15] = L20_1
L5_1[16] = L21_1
L5_1[17] = L22_1
L5_1[18] = L23_1
L5_1[19] = L24_1
L5_1[20] = L25_1
L5_1[21] = L26_1
L5_1[22] = L27_1
L5_1[23] = L28_1
L5_1[24] = L29_1
L5_1[25] = L30_1
L5_1[26] = L31_1
L5_1[27] = L32_1
L5_1[28] = L33_1
L5_1[29] = L34_1
L5_1[30] = L35_1
L5_1[31] = L36_1
L5_1[32] = L37_1
L5_1[33] = L38_1
L5_1[34] = L39_1
L5_1[35] = L40_1
L5_1[36] = L41_1
L5_1[37] = L42_1
L5_1[38] = L43_1
L5_1[39] = L44_1
L5_1[40] = L45_1
L5_1[41] = L46_1
L5_1[42] = L47_1
L5_1[43] = L48_1
L5_1[44] = L49_1
L5_1[45] = L50_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 or "" == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_24
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_24::
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = L5_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L2_2[L9_2]
    if nil ~= L10_2 then
      L3_2 = L3_2 + 1
    end
  end
  L4_2 = L3_2 > 5
  L5_2 = L2_2
  return L4_2, L5_2
end
CheckValidSkin = L6_1
L6_1 = RegisterCommand
L7_1 = "setskin"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = OpenInput
  L1_2 = "Insert valid string skin."
  L0_2 = L0_2(L1_2)
  L1_2 = pcall
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L3_2 = print
    L4_2 = "^1JSON ERROR:^7"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = L5_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L2_2[L9_2]
    if nil ~= L10_2 then
      L3_2 = L3_2 + 1
    end
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "settattoo"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = OpenInput
  L1_2 = "Insert valid string tattoo."
  L0_2 = L0_2(L1_2)
  if nil ~= L0_2 then
    if nil ~= L0_2 and "" ~= L0_2 then
      L1_2 = json
      L1_2 = L1_2.decode
      L2_2 = tostring
      L3_2 = L0_2
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L0_2 = L1_2
      L1_2 = ClearPedDecorations
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      L1_2 = type
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if "table" == L1_2 then
        L1_2 = pairs
        L2_2 = L0_2
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          L7_2 = L6_2.collection
          if nil ~= L7_2 then
            L7_2 = L6_2.nameHash
            if nil ~= L7_2 then
              L7_2 = SetPedDecoration
              L8_2 = PlayerPedId
              L8_2 = L8_2()
              L9_2 = L6_2.collection
              L10_2 = L6_2.nameHash
              L7_2(L8_2, L9_2, L10_2)
            end
          end
        end
        currentTattoos = L0_2
      else
        L1_2 = print
        L2_2 = "tattoo not a table"
        L1_2(L2_2)
      end
    else
      L1_2 = ClearPedDecorations
      L2_2 = PlayerPedId
      L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    L1_2 = TriggerServerEvent
    L2_2 = "SmallTattoos:UpdateTattoo"
    L3_2 = L0_2
    L4_2 = GetPlayerServerId
    L5_2 = PlayerId
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submex
    L3_2 = "String not valid."
    L1_2(L2_2, L3_2)
  end
end
L6_1(L7_1, L8_1)
