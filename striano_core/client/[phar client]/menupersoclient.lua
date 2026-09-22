local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
function L0_1()
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
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetGameplayCamRot
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = L1_1
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L2_2.x
  L6_2 = L3_2.x
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L6_2 = L3_2.y
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L2_2.z
  L6_2 = L3_2.z
  L6_2 = L6_2 * A0_2
  L5_2 = L5_2 + L6_2
  L4_2.z = L5_2
  L5_2 = GetShapeTestResult
  L6_2 = StartShapeTestRay
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = -1
  L14_2 = -1
  L15_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L6_2
  L11_2 = L7_2
  L12_2 = L9_2
  return L10_2, L11_2, L12_2
end
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = RegisterCommand
L7_1 = "clearmys"
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = nil
  L3_1 = L0_2
  L0_2 = nil
  L4_1 = L0_2
  L0_2 = nil
  L5_1 = L0_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submexError
  L2_2 = "Punti spawn resettati con successo."
  L0_2(L1_2, L2_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "mys"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L3_1 = L1_2
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "5_Second_Timer"
  L4_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexError
  L3_2 = "Punto di spawn selezionato, usa ~h~/go~h~ per tornare qui."
  L1_2(L2_2, L3_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "go"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = L3_1
  if L1_2 then
    L1_2 = vector3
    L2_2 = L3_1.x
    L3_2 = L3_1.y
    L4_2 = L3_1.z
    L4_2 = L4_2 - 1.0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = SetEntityCoords
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = ExecuteCommand
    L3_2 = "gg"
    L2_2(L3_2)
  else
    L1_2 = exports
    L1_2 = L1_2.striano_combat
    L2_2 = L1_2
    L1_2 = L1_2.submexError
    L3_2 = "Non hai ancora selezionato un punto di spawn con ~h~/mys~h~."
    L1_2(L2_2, L3_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "mys2"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = LocalPlayer
  L0_2 = L0_2.state
  L0_2 = L0_2.adminLevel
  if not L0_2 then
    L0_2 = 0
  end
  if 0 == L0_2 then
    return
  end
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L4_1 = L1_2
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "5_Second_Timer"
  L4_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = exports
  L1_2 = L1_2.striano_combat
  L2_2 = L1_2
  L1_2 = L1_2.submexError
  L3_2 = "Punto di spawn selezionato, usa ~h~/go2~h~ per tornare qui."
  L1_2(L2_2, L3_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "go2"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if L0_2 then
    L0_2 = vector3
    L1_2 = L4_1.x
    L2_2 = L4_1.y
    L3_2 = L4_1.z
    L3_2 = L3_2 - 1.0
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L1_2 = SetEntityCoords
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = ExecuteCommand
    L2_2 = "gg"
    L1_2(L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai ancora selezionato un punto di spawn (2) con ~h~/mys2~h~."
    L0_2(L1_2, L2_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "mys3"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetEntityCoords
  L1_2 = PlayerPedId
  L1_2, L2_2, L3_2, L4_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L5_1 = L0_2
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "5_Second_Timer"
  L3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  L4_2 = 0
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submexError
  L2_2 = "Punto di spawn selezionato, usa ~h~/go3~h~ per tornare qui."
  L0_2(L1_2, L2_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "go3"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L5_1
  if L0_2 then
    L0_2 = vector3
    L1_2 = L5_1.x
    L2_2 = L5_1.y
    L3_2 = L5_1.z
    L3_2 = L3_2 - 1.0
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L1_2 = SetEntityCoords
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = ExecuteCommand
    L2_2 = "gg"
    L1_2(L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai ancora selezionato un punto di spawn (3) con ~h~/mys3~h~."
    L0_2(L1_2, L2_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "gg"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = ExecuteCommand
  L1_2 = "revive"
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "heal"
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "rr"
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "resetsporco "
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "resetferite "
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = ExecuteCommand
  L1_2 = "armour "
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2 = L3_2()
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L6_1(L7_1, L8_1)
SkinPrimaSecondario = nil
L6_1 = RegisterCommand
L7_1 = "secno"
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = SkinPrimaSecondario
  if nil == L0_2 then
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submexError
    L2_2 = "Non hai indossato ancora un outfit secondario."
    L0_2(L1_2, L2_2)
  else
    L0_2 = TriggerServerCallback
    L1_2 = "sp_menuperso:getGiacca"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      if nil ~= A0_3 and A0_3 then
        L1_3 = SkinPrimaSecondario
        if nil ~= L1_3 then
          L1_3 = exports
          L1_3 = L1_3.striano_core
          L2_3 = L1_3
          L1_3 = L1_3.resetdpcloth
          L1_3(L2_3)
          L1_3 = Wait
          L2_3 = 0
          L1_3(L2_3)
          L1_3 = ExecuteCommand
          L2_3 = "e togligiub"
          L1_3(L2_3)
          L1_3 = Wait
          L2_3 = 1000
          L1_3(L2_3)
          L1_3 = TriggerEvent
          L2_3 = "skinchanger:getSkin"
          function L3_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4
            L1_4 = TriggerEvent
            L2_4 = "skinchanger:loadClothes"
            L3_4 = A0_4
            L4_4 = SkinPrimaSecondario
            L1_4(L2_4, L3_4, L4_4)
          end
          L1_3(L2_3, L3_3)
          SkinPrimaSecondario = nil
        else
          L1_3 = exports
          L1_3 = L1_3.striano_combat
          L2_3 = L1_3
          L1_3 = L1_3.submexError
          L3_3 = "Non hai ancora indossato un outfit secondario."
          L1_3(L2_3, L3_3)
        end
      else
        L1_3 = exports
        L1_3 = L1_3.striano_combat
        L2_3 = L1_3
        L1_3 = L1_3.submexError
        L3_3 = "Non hai ancora impostato un ~q~outfit secondario ~w~da un armadio."
        L1_3(L2_3, L3_3)
        L1_3 = ExecuteCommand
        L2_3 = "e think5"
        L1_3(L2_3)
      end
    end
    L0_2(L1_2, L2_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "sec"
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = SkinPrimaSecondario
  if nil == L0_2 then
    L0_2 = TriggerServerCallback
    L1_2 = "sp_menuperso:getGiacca"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if nil ~= A0_3 and A0_3 then
        L1_3 = TriggerServerCallback
        L2_3 = "esx_skin:getPlayerSkin"
        function L3_3(A0_4)
          local L1_4, L2_4, L3_4
          if nil ~= A0_4 then
            L1_4 = exports
            L1_4 = L1_4.striano_core
            L2_4 = L1_4
            L1_4 = L1_4.resetdpcloth
            L1_4(L2_4)
            L1_4 = TriggerEvent
            L2_4 = "skinchanger:loadSkin"
            L3_4 = A0_4
            L1_4(L2_4, L3_4)
            SkinPrimaSecondario = A0_4
          else
            L1_4 = exports
            L1_4 = L1_4.striano_combat
            L2_4 = L1_4
            L1_4 = L1_4.submexError
            L3_4 = "Errore nel caricamento skin causato da connessione o database. (Outfit Secondario)"
            L1_4(L2_4, L3_4)
          end
        end
        L1_3(L2_3, L3_3)
        L1_3 = Wait
        L2_3 = 0
        L1_3(L2_3)
        L1_3 = ExecuteCommand
        L2_3 = "e indossa2"
        L1_3(L2_3)
        L1_3 = Wait
        L2_3 = 1000
        L1_3(L2_3)
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        L2_3 = TriggerEvent
        L3_3 = "skinchanger:getSkin"
        function L4_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4
          L1_4 = TriggerEvent
          L2_4 = "skinchanger:loadClothes"
          L3_4 = A0_4
          L4_4 = L1_3
          L1_4(L2_4, L3_4, L4_4)
        end
        L2_3(L3_3, L4_3)
      else
        L1_3 = exports
        L1_3 = L1_3.striano_combat
        L2_3 = L1_3
        L1_3 = L1_3.submex
        L3_3 = "Non hai ancora impostato un outfit secondario da un armadio."
        L1_3(L2_3, L3_3)
        L1_3 = ExecuteCommand
        L2_3 = "e think5"
        L1_3(L2_3)
      end
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = "Stai gi\195\160 indossando outfit secondario."
    L0_2(L1_2, L2_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "qdeldecal"
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = sicurodecal
  if L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "deldecal"
    L0_2(L1_2)
  else
    sicurodecal = true
    L0_2 = exports
    L0_2 = L0_2.striano_combat
    L1_2 = L0_2
    L0_2 = L0_2.submex
    L2_2 = "DELETE DECALS PENDING. RE-DO TO APPLY"
    L0_2(L1_2, L2_2)
    L0_2 = Wait
    L1_2 = 7000
    L0_2(L1_2)
    sicurodecal = false
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "vita"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submexInfo
  L2_2 = "HEAL PLAYER: "
  L3_2 = GetEntityHealth
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L0_2(L1_2, L2_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "health"
function L8_1()
  local L0_2, L1_2
  L0_2 = ExecuteCommand
  L1_2 = "vita"
  L0_2(L1_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "menuperso:faisalire"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "menuperso:faisalire"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerVicino
  L0_2, L1_2 = L0_2()
  if -1 ~= L0_2 and L1_2 <= 3.0 then
    L2_2 = IsPedInAnyVehicle
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.submexError
      L4_2 = "Devi essere fuori dal veicolo."
      L2_2(L3_2, L4_2)
      return
    end
    L2_2 = IsEntityPlayingAnim
    L3_2 = GetPlayerPed
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = "anim@move_m@prisoner_cuffed_fp"
    L5_2 = "aim_low_loop"
    L6_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if not L2_2 then
      L2_2 = IsEntityPlayingAnim
      L3_2 = GetPlayerPed
      L4_2 = L0_2
      L3_2 = L3_2(L4_2)
      L4_2 = "combat@damage@rb_writhe"
      L5_2 = "rb_writhe_loop"
      L6_2 = 3
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if not L2_2 then
        L2_2 = IsPedRagdoll
        L3_2 = GetPlayerPed
        L4_2 = L0_2
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        if not L2_2 then
          L2_2 = IsEntityPlayingAnim
          L3_2 = GetPlayerPed
          L4_2 = L0_2
          L3_2 = L3_2(L4_2)
          L4_2 = "anim@arrest_crooks"
          L5_2 = "arrest_crooks_clip"
          L6_2 = 3
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
          if not L2_2 then
            L2_2 = IsEntityPlayingAnim
            L3_2 = GetPlayerPed
            L4_2 = L0_2
            L3_2 = L3_2(L4_2)
            L4_2 = "misstrevor2ig_5c"
            L5_2 = "plead_loop"
            L6_2 = 3
            L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
            if not L2_2 then
              L2_2 = IsEntityPlayingAnim
              L3_2 = GetPlayerPed
              L4_2 = L0_2
              L3_2 = L3_2(L4_2)
              L4_2 = "missminuteman_1ig_2"
              L5_2 = "handsup_base"
              L6_2 = 3
              L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
              if not L2_2 then
                goto lbl_87
              end
            end
          end
        end
      end
    end
    L2_2 = TriggerServerEvent
    L3_2 = "menuperso:putInVehicle"
    L4_2 = GetPlayerServerId
    L5_2 = L0_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = ExecuteCommand
    L3_2 = "e prendi2"
    L2_2(L3_2)
    goto lbl_98
    ::lbl_87::
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Persona non ammanettata, ferita, svenuta o spaventata."
    L2_2(L3_2, L4_2)
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Nessuno nelle vicinanze."
    L2_2(L3_2, L4_2)
  end
  ::lbl_98::
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "menuperso:putInVehicle"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "menuperso:putInVehicle"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = IsAnyVehicleNearPoint
  L3_2 = L1_2
  L4_2 = 5.0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = GetClosestVehicle
    L3_2 = L1_2
    L4_2 = 5.0
    L5_2 = 0
    L6_2 = 71
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = GetVehicleMaxNumberOfPassengers
      L4_2 = L2_2
      L3_2, L4_2 = L3_2(L4_2)
      L5_2 = L3_2 - 1
      L6_2 = 0
      L7_2 = -1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = IsVehicleSeatFree
        L10_2 = L2_2
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L4_2 = L8_2
          break
        end
      end
      if L4_2 then
        L5_2 = TaskWarpPedIntoVehicle
        L6_2 = L0_2
        L7_2 = L2_2
        L8_2 = L4_2
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "menuperso:OutVehicle"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "menuperso:OutVehicle"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsPedSittingInAnyVehicle
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = TaskLeaveVehicle
  L3_2 = L0_2
  L4_2 = L1_2
  L5_2 = 16
  L2_2(L3_2, L4_2, L5_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = "menuperso:faiscendere"
L6_1(L7_1)
L6_1 = AddEventHandler
L7_1 = "menuperso:faiscendere"
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerVicino
  L0_2, L1_2 = L0_2()
  if -1 ~= L0_2 and L1_2 <= 3.0 then
    L2_2 = IsPedInAnyVehicle
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = exports
      L2_2 = L2_2.striano_combat
      L3_2 = L2_2
      L2_2 = L2_2.submexError
      L4_2 = "Devi essere fuori dal veicolo."
      L2_2(L3_2, L4_2)
      return
    end
    L2_2 = GetVehiclePedIsIn
    L3_2 = GetPlayerPed
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = GetPedInVehicleSeat
    L4_2 = L2_2
    L5_2 = -1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = GetPlayerPed
    L5_2 = L0_2
    L4_2 = L4_2(L5_2)
    if L3_2 ~= L4_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "menuperso:OutVehicle"
      L5_2 = GetPlayerServerId
      L6_2 = L0_2
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = ExecuteCommand
      L4_2 = "e prendi2"
      L3_2(L4_2)
    end
  else
    L2_2 = exports
    L2_2 = L2_2.striano_combat
    L3_2 = L2_2
    L2_2 = L2_2.submexError
    L4_2 = "Nessuno nelle vicinanze."
    L2_2(L3_2, L4_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "sistema"
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuSistema
  L2_2()
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "mod"
function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuSistema
  L2_2()
end
L6_1(L7_1, L8_1)
function L6_1()
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
  L2_2 = "Character List"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "pg"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Fix Vocal Chat"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "fxm"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Clear Chat"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "clear"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Voice Icon"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "novoice"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Film"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "film"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Freecam"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "freecam"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Rockstar Editor"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "rockstareditor"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Get String Skin"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "getskin"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Set String Skin"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "setskin"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Get String Tattoo"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "gettattoo"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Set String Tattoo"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "settattoo"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
MenuSistema = L6_1
L6_1 = RegisterCommand
L7_1 = "vicinanze"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.gettutorial
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = MenuGestioneGiocatore
    L2_2()
  else
    L2_2 = ExecuteCommand
    L3_2 = "e no4"
    L2_2(L3_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "vicino"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.gettutorial
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = MenuGestioneGiocatore
    L2_2()
  else
    L2_2 = ExecuteCommand
    L3_2 = "e no4"
    L2_2(L3_2)
  end
end
L6_1(L7_1, L8_1)
L6_1 = RegisterCommand
L7_1 = "near"
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = exports
  L2_2 = L2_2.striano_core
  L3_2 = L2_2
  L2_2 = L2_2.gettutorial
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = MenuGestioneGiocatore
    L2_2()
  else
    L2_2 = ExecuteCommand
    L3_2 = "e no4"
    L2_2(L3_2)
  end
end
L6_1(L7_1, L8_1)
function L6_1()
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
  L2_2 = "Check Hurts"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "analizza"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Check Weapons"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "armi"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Cut Cuff Rope"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "slega"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Help Revive"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "aiuta"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Take on Shoulder"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "inbraccio"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Drag"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "trascina"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Check Inventory"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "fruga"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Take Hostage"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "th"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
MenuGestioneGiocatore = L6_1
L6_1 = nil
function L7_1()
  local L0_2, L1_2
  L0_2 = inSelezionaPL
  if L0_2 then
    return
  end
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = nil
    L6_1 = L0_3
    while true do
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = inSelezionaPL
      if L0_3 then
        L0_3 = IsControlJustPressed
        L1_3 = 0
        L2_3 = 177
        L0_3 = L0_3(L1_3, L2_3)
        if L0_3 then
          return
        end
        L0_3 = GetEntityCoords
        L1_3 = ped
        L0_3 = L0_3(L1_3)
        L1_3 = L2_1
        L2_3 = 30.0
        L3_3 = 4
        L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3)
        if nil ~= L3_3 then
          L4_3 = L2_3.x
          if 0 ~= L4_3 then
            L4_3 = L2_3.y
            if 0 ~= L4_3 then
              L4_3 = L2_3.z
              if 0 ~= L4_3 then
                L4_3 = IsPedAPlayer
                L5_3 = L3_3
                L4_3 = L4_3(L5_3)
                if L4_3 then
                  L4_3 = DrawLine
                  L5_3 = L0_3.x
                  L6_3 = L0_3.y
                  L7_3 = L0_3.z
                  L7_3 = L7_3 + 0.7
                  L8_3 = L2_3.x
                  L9_3 = L2_3.y
                  L10_3 = L2_3.z
                  L11_3 = 255
                  L12_3 = 0
                  L13_3 = 110
                  L14_3 = 255
                  L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                  L4_3 = DrawText3D
                  L5_3 = L0_3.x
                  L6_3 = L0_3.y
                  L7_3 = L0_3.z
                  L7_3 = L7_3 + 0.7
                  L8_3 = "~b~B ~w~Select"
                  L4_3(L5_3, L6_3, L7_3, L8_3)
                end
                L4_3 = IsControljustPressed
                L5_3 = 0
                L6_3 = 29
                L4_3 = L4_3(L5_3, L6_3)
                if L4_3 then
                  inSelezionaPL = false
                  L4_3 = NetworkGetEntityOwner
                  L5_3 = L3_3
                  L4_3 = L4_3(L5_3)
                  L5_3 = GetPlayerServerId
                  L6_3 = GetPlayerPed
                  L7_3 = GetPlayerFromServerId
                  L8_3 = L4_3
                  L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L7_3(L8_3)
                  L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                  L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                  L6_1 = L5_3
                  L5_3 = print
                  L6_3 = "Player Selected: "
                  L7_3 = L6_1
                  L6_3 = L6_3 .. L7_3
                  L5_3(L6_3)
                  L5_3 = MenuGestioneGiocatore
                  L5_3()
                  L5_3 = Wait
                  L6_3 = 1000
                  L5_3(L6_3)
                end
              end
            end
          end
        end
      else
        return
      end
    end
  end
  L0_2(L1_2)
end
SelezionaIlGiocatore = L7_1
L7_1 = RegisterCommand
L8_1 = "rockstareditor"
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuRockstarEditor
  L2_2()
end
L7_1(L8_1, L9_1)
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
  L2_2 = "Register"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "nad_rockstar:record"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Delete Clip"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "nad_rockstar:delclip"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Save Clip"
  function L3_2()
    local L0_3, L1_3
    L0_3 = TriggerEvent
    L1_3 = "nad_rockstar:saveclip"
    L0_3(L1_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "Open"
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.striano_combat
    L1_3 = L0_3
    L0_3 = L0_3.submexInfo
    L2_3 = "Advice: Open the Rockstar Editor from the main page of FiveM."
    L0_3(L1_3, L2_3)
  end
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
MenuRockstarEditor = L7_1
L7_1 = RegisterNetEvent
L8_1 = "nad_rockstar:record"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "nad_rockstar:record"
function L9_1()
  local L0_2, L1_2
  L0_2 = StartRecording
  L1_2 = 1
  L0_2(L1_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "nad_rockstar:saveclip"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "nad_rockstar:saveclip"
function L9_1()
  local L0_2, L1_2
  L0_2 = StartRecording
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = StopRecordingAndSaveClip
  L0_2()
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "nad_rockstar:delclip"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "nad_rockstar:delclip"
function L9_1()
  local L0_2, L1_2
  L0_2 = StopRecordingAndDiscardClip
  L0_2()
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "nad_rockstar:editor"
L7_1(L8_1)
L7_1 = AddEventHandler
L8_1 = "nad_rockstar:editor"
function L9_1()
  local L0_2, L1_2
  L0_2 = NetworkSessionLeaveSinglePlayer
  L0_2()
  L0_2 = ActivateRockstarEditor
  L0_2()
end
L7_1(L8_1, L9_1)
L7_1 = {}
L8_1 = {}
L9_1 = {}
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L4_2 = nil
  if 0 == L3_2 then
    L4_2 = "helmet_1"
  end
  if 1 == L3_2 then
    L4_2 = "mask_1"
  end
  if 8 == L3_2 then
    L4_2 = "tshirt_1"
  end
  if 11 == L3_2 then
    L4_2 = "torso_1"
  end
  if 3 == L3_2 then
    L4_2 = "arms"
  end
  if 10 == L3_2 then
    L4_2 = "decals_1"
  end
  if 4 == L3_2 then
    L4_2 = "pants_1"
  end
  if 6 == L3_2 then
    L4_2 = "shoes_1"
  end
  if 9 == L3_2 then
    L4_2 = "bproof_1"
  end
  if 7 == L3_2 then
    L4_2 = "chain_1"
  end
  if 5 == L3_2 then
    L4_2 = "bags_1"
  end
  if nil ~= L4_2 then
    L5_2 = TriggerEvent
    L6_2 = "skinchanger:change"
    L7_2 = L4_2
    L8_2 = A1_2
    L5_2(L6_2, L7_2, L8_2)
    if "chain_1" == L4_2 then
      L5_2 = TriggerEvent
      L6_2 = "skinchanger:change"
      L7_2 = "bracelets_1"
      L8_2 = A1_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L5_2 = nil
  if 0 == L3_2 then
    L5_2 = "helmet_2"
  end
  if 1 == L3_2 then
    L5_2 = "mask_2"
  end
  if 8 == L3_2 then
    L5_2 = "tshirt_2"
  end
  if 11 == L3_2 then
    L5_2 = "torso_2"
  end
  if 3 == L3_2 then
    L4_2 = "arms_2"
  end
  if 10 == L3_2 then
    L5_2 = "decals_2"
  end
  if 4 == L3_2 then
    L5_2 = "pants_2"
  end
  if 6 == L3_2 then
    L5_2 = "shoes_2"
  end
  if 9 == L3_2 then
    L5_2 = "bproof_2"
  end
  if 7 == L3_2 then
    L5_2 = "chain_2"
  end
  if 5 == L3_2 then
    L5_2 = "bags_2"
  end
  if nil ~= L5_2 then
    L6_2 = TriggerEvent
    L7_2 = "skinchanger:change"
    L8_2 = L5_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
    if "chain_2" == L4_2 then
      L6_2 = TriggerEvent
      L7_2 = "skinchanger:change"
      L8_2 = "bracelets_2"
      L9_2 = A2_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
ApplicaSkinChangerProp = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = IsPedComponentVariationValid
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L5_2 = SetPedComponentVariation
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = ApplicaSkinChangerProp
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
SetPedComponentVariationLegacy = L10_1
L10_1 = {}
L11_1 = {}
L11_1.shirt = 15
L11_1.pants = 61
L11_1.shoes = 34
L11_1.jewelry = -1
L11_1.glasses = 0
L11_1.watch = -1
L11_1.vest = 0
L11_1.mask = 0
L11_1.hat = 11
L11_1.bag = 0
L11_1.gloves = 0
L10_1.male = L11_1
L11_1 = {}
L11_1.shirt = 15
L11_1.pants = 15
L11_1.shoes = 35
L11_1.jewelry = -1
L11_1.glasses = 5
L11_1.watch = -1
L11_1.vest = 0
L11_1.mask = 0
L11_1.hat = 57
L11_1.bag = 0
L11_1.gloves = 0
L10_1.female = L11_1
L11_1 = true
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L11_1
  if L1_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = A0_2
    L3_2 = false
    L11_1 = L3_2
    L3_2 = L7_1
    L3_2 = L3_2[L2_2]
    if nil == L3_2 then
      if "shirt" == L2_2 then
        L3_2 = L7_1
        L4_2 = GetPedDrawableVariation
        L5_2 = L1_2
        L6_2 = 11
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L8_1
        L4_2 = GetPedTextureVariation
        L5_2 = L1_2
        L6_2 = 11
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L9_1
        L4_2 = GetPedDrawableVariation
        L5_2 = L1_2
        L6_2 = 3
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = GetPedDrawableVariation
        L4_2 = L1_2
        L5_2 = 8
        L3_2 = L3_2(L4_2, L5_2)
        L7_1.shirt2 = L3_2
        L3_2 = GetPedTextureVariation
        L4_2 = L1_2
        L5_2 = 8
        L3_2 = L3_2(L4_2, L5_2)
        L8_1.shirt2 = L3_2
        L3_2 = GetPedDrawableVariation
        L4_2 = L1_2
        L5_2 = 10
        L3_2 = L3_2(L4_2, L5_2)
        L7_1.decals_1 = L3_2
        L3_2 = GetPedTextureVariation
        L4_2 = L1_2
        L5_2 = 10
        L3_2 = L3_2(L4_2, L5_2)
        L8_1.decals_2 = L3_2
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 10
        L6_2 = 0
        L7_2 = 0
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedComponentVariationLegacy
          L4_2 = L1_2
          L5_2 = 11
          L6_2 = L10_1.male
          L6_2 = L6_2.shirt
          L7_2 = 0
          L8_2 = 2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          L3_2 = SetPedComponentVariationLegacy
          L4_2 = L1_2
          L5_2 = 8
          L6_2 = 15
          L7_2 = 0
          L8_2 = 2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          L3_2 = SetPedComponentVariationLegacy
          L4_2 = L1_2
          L5_2 = 3
          L6_2 = 15
          L7_2 = 0
          L8_2 = 2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 11
            L6_2 = L10_1.female
            L6_2 = L6_2.shirt
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 8
            L6_2 = 15
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 3
            L6_2 = 15
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      elseif "secondariosi" == L2_2 then
        L3_2 = ExecuteCommand
        L4_2 = "sec"
        L3_2(L4_2)
      elseif "secondariono" == L2_2 then
        L3_2 = ExecuteCommand
        L4_2 = "secno"
        L3_2(L4_2)
      elseif "capellifix" == L2_2 then
        L3_2 = ExecuteCommand
        L4_2 = "capellifix"
        L3_2(L4_2)
      elseif "casco" == L2_2 then
        L3_2 = ExecuteCommand
        L4_2 = "casco"
        L3_2(L4_2)
      elseif "pants" == L2_2 then
        L3_2 = L7_1
        L4_2 = GetPedDrawableVariation
        L5_2 = L1_2
        L6_2 = 4
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L8_1
        L4_2 = GetPedTextureVariation
        L5_2 = L1_2
        L6_2 = 4
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedComponentVariationLegacy
          L4_2 = L1_2
          L5_2 = 4
          L6_2 = L10_1.male
          L6_2 = L6_2.pants
          L7_2 = 0
          L8_2 = 2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 4
            L6_2 = L10_1.female
            L6_2 = L6_2.pants
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      elseif "shoes" == L2_2 then
        L3_2 = L7_1
        L4_2 = GetPedDrawableVariation
        L5_2 = L1_2
        L6_2 = 6
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L8_1
        L4_2 = GetPedTextureVariation
        L5_2 = L1_2
        L6_2 = 6
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedComponentVariationLegacy
          L4_2 = L1_2
          L5_2 = 6
          L6_2 = L10_1.male
          L6_2 = L6_2.shoes
          L7_2 = 0
          L8_2 = 2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 6
            L6_2 = L10_1.female
            L6_2 = L6_2.shoes
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      elseif "jewelry" == L2_2 then
        L3_2 = L7_1
        L4_2 = GetPedDrawableVariation
        L5_2 = L1_2
        L6_2 = 7
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L8_1
        L4_2 = GetPedTextureVariation
        L5_2 = L1_2
        L6_2 = 7
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedComponentVariationLegacy
          L4_2 = L1_2
          L5_2 = 7
          L6_2 = L10_1.male
          L6_2 = L6_2.jewelry
          L7_2 = 0
          L8_2 = 2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 7
            L6_2 = L10_1.female
            L6_2 = L6_2.jewelry
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      elseif "glasses" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = L7_1
        L4_2 = GetPedPropIndex
        L5_2 = L1_2
        L6_2 = 1
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L8_1
        L4_2 = GetPedPropTextureIndex
        L5_2 = L1_2
        L6_2 = 1
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedPropIndex
          L4_2 = L1_2
          L5_2 = 1
          L6_2 = L10_1.male
          L6_2 = L6_2.glasses
          L7_2 = 0
          L8_2 = false
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedPropIndex
            L4_2 = L1_2
            L5_2 = 1
            L6_2 = L10_1.female
            L6_2 = L6_2.glasses
            L7_2 = 0
            L8_2 = false
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      elseif "vest" == L2_2 then
        L3_2 = ExecuteCommand
        L4_2 = "braccia"
        L3_2(L4_2)
      elseif "mask" == L2_2 then
        L3_2 = exports
        L3_2 = L3_2.striano_core
        L4_2 = L3_2
        L3_2 = L3_2.resetLastCapelli
        L3_2(L4_2)
        L3_2 = L7_1
        L4_2 = GetPedDrawableVariation
        L5_2 = L1_2
        L6_2 = 1
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L8_1
        L4_2 = GetPedTextureVariation
        L5_2 = L1_2
        L6_2 = 1
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedComponentVariationLegacy
          L4_2 = L1_2
          L5_2 = 1
          L6_2 = L10_1.male
          L6_2 = L6_2.mask
          L7_2 = 0
          L8_2 = 2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 1
            L6_2 = L10_1.female
            L6_2 = L6_2.mask
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      elseif "ear" == L2_2 then
        L3_2 = L7_1
        L4_2 = GetPedPropIndex
        L5_2 = L1_2
        L6_2 = 2
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = L8_1
        L4_2 = GetPedPropTextureIndex
        L5_2 = L1_2
        L6_2 = 2
        L4_2 = L4_2(L5_2, L6_2)
        L3_2[L2_2] = L4_2
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = ClearPedProp
        L4_2 = L1_2
        L5_2 = 2
        L3_2(L4_2, L5_2)
      elseif "hat" == L2_2 then
        L3_2 = GetPedPropIndex
        L4_2 = L1_2
        L5_2 = 0
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 > -1 then
          L3_2 = exports
          L3_2 = L3_2.striano_core
          L4_2 = L3_2
          L3_2 = L3_2.resetLastCapelli
          L3_2(L4_2)
          L3_2 = L7_1
          L4_2 = GetPedPropIndex
          L5_2 = L1_2
          L6_2 = 0
          L4_2 = L4_2(L5_2, L6_2)
          L3_2[L2_2] = L4_2
          L3_2 = L8_1
          L4_2 = GetPedPropTextureIndex
          L5_2 = L1_2
          L6_2 = 0
          L4_2 = L4_2(L5_2, L6_2)
          L3_2[L2_2] = L4_2
          L3_2 = PlayAnim
          L4_2 = L2_2
          L3_2(L4_2)
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "male" == L3_2 then
            L3_2 = SetPedPropIndex
            L4_2 = L1_2
            L5_2 = 0
            L6_2 = L10_1.male
            L6_2 = L6_2.hat
            L7_2 = 0
            L8_2 = false
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          else
            L3_2 = GetPedGender
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            if "female" == L3_2 then
              L3_2 = SetPedPropIndex
              L4_2 = L1_2
              L5_2 = 0
              L6_2 = L10_1.female
              L6_2 = L6_2.hat
              L7_2 = 0
              L8_2 = false
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
            end
          end
          L3_2 = exports
          L3_2 = L3_2.striano_core
          L4_2 = L3_2
          L3_2 = L3_2.eliminatorcialuce
          L3_2(L4_2)
        else
          L3_2 = ExecuteCommand
          L4_2 = "e no2"
          L3_2(L4_2)
        end
      elseif "gloves" == L2_2 then
        L3_2 = GetPedDrawableVariation
        L4_2 = L1_2
        L5_2 = 3
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 > 15 then
          L3_2 = L7_1
          L4_2 = GetPedDrawableVariation
          L5_2 = L1_2
          L6_2 = 3
          L4_2 = L4_2(L5_2, L6_2)
          L3_2[L2_2] = L4_2
          L3_2 = L8_1
          L4_2 = GetPedTextureVariation
          L5_2 = L1_2
          L6_2 = 3
          L4_2 = L4_2(L5_2, L6_2)
          L3_2[L2_2] = L4_2
          L3_2 = PlayAnim
          L4_2 = L2_2
          L3_2(L4_2)
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "male" == L3_2 then
            L3_2 = SetPedComponentVariationLegacy
            L4_2 = L1_2
            L5_2 = 3
            L6_2 = L10_1.male
            L6_2 = L6_2.gloves
            L7_2 = 0
            L8_2 = 2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          else
            L3_2 = GetPedGender
            L4_2 = L1_2
            L3_2 = L3_2(L4_2)
            if "female" == L3_2 then
              L3_2 = SetPedComponentVariationLegacy
              L4_2 = L1_2
              L5_2 = 3
              L6_2 = L10_1.female
              L6_2 = L6_2.gloves
              L7_2 = 0
              L8_2 = 2
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
            end
          end
        end
      end
      L3_2 = L7_1.glasses
      if nil == L3_2 then
      else
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedPropIndex
          L4_2 = L1_2
          L5_2 = 1
          L6_2 = L10_1.male
          L6_2 = L6_2.glasses
          L7_2 = 0
          L8_2 = false
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedPropIndex
            L4_2 = L1_2
            L5_2 = 1
            L6_2 = L10_1.female
            L6_2 = L6_2.glasses
            L7_2 = 0
            L8_2 = false
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      end
    else
      if "shirt" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 11
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 3
        L6_2 = L9_1
        L6_2 = L6_2[L2_2]
        L7_2 = 0
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 8
        L6_2 = L7_1.shirt2
        L7_2 = L8_1.shirt2
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 10
        L6_2 = L7_1.decals_1
        L7_2 = L8_1.decals_2
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L7_1.shirt2 = nil
        L8_1.shirt2 = nil
        L7_1.decals_1 = nil
        L8_1.decals_2 = nil
        L3_2 = L9_1
        L3_2[L2_2] = nil
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      elseif "pants" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 4
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      elseif "shoes" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 6
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      elseif "jewelry" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 7
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      elseif "glasses" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedPropIndex
        L4_2 = L1_2
        L5_2 = 1
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      elseif "vest" == L2_2 then
        L3_2 = ExecuteCommand
        L4_2 = "braccia"
        L3_2(L4_2)
      elseif "mask" == L2_2 then
        L3_2 = exports
        L3_2 = L3_2.striano_core
        L4_2 = L3_2
        L3_2 = L3_2.resetLastCapelli
        L3_2(L4_2)
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 1
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      elseif "ear" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedPropIndex
        L4_2 = L1_2
        L5_2 = 2
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = false
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      elseif "hat" == L2_2 then
        L3_2 = L7_1
        L3_2 = L3_2[L2_2]
        if L3_2 then
          L3_2 = exports
          L3_2 = L3_2.striano_core
          L4_2 = L3_2
          L3_2 = L3_2.resetLastCapelli
          L3_2(L4_2)
          L3_2 = PlayAnim
          L4_2 = L2_2
          L3_2(L4_2)
          L3_2 = SetPedPropIndex
          L4_2 = L1_2
          L5_2 = 0
          L6_2 = L7_1
          L6_2 = L6_2[L2_2]
          L7_2 = L8_1
          L7_2 = L7_2[L2_2]
          L8_2 = false
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          L3_2 = L7_1
          L3_2[L2_2] = nil
          L3_2 = L8_1
          L3_2[L2_2] = nil
          L3_2 = exports
          L3_2 = L3_2.striano_core
          L4_2 = L3_2
          L3_2 = L3_2.eliminatorcialuce
          L3_2(L4_2)
        else
          L3_2 = ExecuteCommand
          L4_2 = "e shrug3"
          L3_2(L4_2)
        end
      elseif "gloves" == L2_2 then
        L3_2 = PlayAnim
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = SetPedComponentVariationLegacy
        L4_2 = L1_2
        L5_2 = 3
        L6_2 = L7_1
        L6_2 = L6_2[L2_2]
        L7_2 = L8_1
        L7_2 = L7_2[L2_2]
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = L7_1
        L3_2[L2_2] = nil
        L3_2 = L8_1
        L3_2[L2_2] = nil
      end
      L3_2 = L7_1.glasses
      if nil == L3_2 then
      else
        L3_2 = GetPedGender
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if "male" == L3_2 then
          L3_2 = SetPedPropIndex
          L4_2 = L1_2
          L5_2 = 1
          L6_2 = L10_1.male
          L6_2 = L6_2.glasses
          L7_2 = 0
          L8_2 = false
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L3_2 = GetPedGender
          L4_2 = L1_2
          L3_2 = L3_2(L4_2)
          if "female" == L3_2 then
            L3_2 = SetPedPropIndex
            L4_2 = L1_2
            L5_2 = 1
            L6_2 = L10_1.female
            L6_2 = L6_2.glasses
            L7_2 = 0
            L8_2 = false
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      end
    end
    L3_2 = Wait
    L4_2 = 550
    L3_2(L4_2)
    L3_2 = true
    L11_1 = L3_2
  end
end
GestisciIndumento = L12_1
L12_1 = {}
L13_1 = {}
L14_1 = exports
L15_1 = "toglicappello"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  L2_2 = GetPedPropIndex
  L3_2 = L1_2
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L12_1.hat = L2_2
  L2_2 = GetPedPropTextureIndex
  L3_2 = L1_2
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L13_1.hat = L2_2
  L2_2 = GetPedGender
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "male" == L2_2 then
    L2_2 = SetPedPropIndex
    L3_2 = L1_2
    L4_2 = 0
    L5_2 = L10_1.male
    L5_2 = L5_2.hat
    L6_2 = 0
    L7_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = GetPedGender
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "female" == L2_2 then
      L2_2 = SetPedPropIndex
      L3_2 = L1_2
      L4_2 = 0
      L5_2 = L10_1.female
      L5_2 = L5_2.hat
      L6_2 = 0
      L7_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "togliocchiali"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  L2_2 = GetPedPropIndex
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L12_1.glass = L2_2
  L2_2 = GetPedPropTextureIndex
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L13_1.glass = L2_2
  L2_2 = GetPedGender
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "male" == L2_2 then
    L2_2 = SetPedPropIndex
    L3_2 = L1_2
    L4_2 = 1
    L5_2 = L10_1.male
    L5_2 = L5_2.glasses
    L6_2 = 0
    L7_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = GetPedGender
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "female" == L2_2 then
      L2_2 = SetPedPropIndex
      L3_2 = L1_2
      L4_2 = 1
      L5_2 = L10_1.female
      L5_2 = L5_2.glasses
      L6_2 = 0
      L7_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "toglimaschera"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  L2_2 = GetPedDrawableVariation
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L12_1.mask = L2_2
  L2_2 = GetPedTextureVariation
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L13_1.mask = L2_2
  L2_2 = GetPedGender
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "male" == L2_2 then
    L2_2 = SetPedComponentVariationLegacy
    L3_2 = L1_2
    L4_2 = 1
    L5_2 = L10_1.male
    L5_2 = L5_2.mask
    L6_2 = 0
    L7_2 = 2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = GetPedGender
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "female" == L2_2 then
      L2_2 = SetPedComponentVariationLegacy
      L3_2 = L1_2
      L4_2 = 1
      L5_2 = L10_1.female
      L5_2 = L5_2.mask
      L6_2 = 0
      L7_2 = 2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "rimetticappello"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  L2_2 = SetPedPropIndex
  L3_2 = L1_2
  L4_2 = 0
  L5_2 = L12_1.hat
  L6_2 = L13_1.hat
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L12_1.hat = nil
  L13_1.hat = nil
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "rimettiocchiali"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  L2_2 = SetPedPropIndex
  L3_2 = L1_2
  L4_2 = 1
  L5_2 = L12_1.glass
  L6_2 = L13_1.glass
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L12_1.glass = nil
  L13_1.glass = nil
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "rimettimaschera"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2
  L2_2 = SetPedComponentVariationLegacy
  L3_2 = L1_2
  L4_2 = 1
  L5_2 = L12_1.mask
  L6_2 = L13_1.mask
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L12_1.mask = nil
  L13_1.mask = nil
end
L14_1(L15_1, L16_1)
L14_1 = exports
L15_1 = "resetdpcloth"
function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "hide"
  L0_2(L1_2)
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  opened = false
  L0_2 = {}
  L7_1 = L0_2
  L0_2 = {}
  L8_1 = L0_2
  L0_2 = {}
  L9_1 = L0_2
end
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  if "shirt" == A0_2 then
    L3_2 = "missmic4"
    L2_2 = "michael_tux_fidget"
    L4_2 = 51
  elseif "pants" == A0_2 then
    L3_2 = "re@construction"
    L2_2 = "out_of_breath"
    L4_2 = 51
  elseif "shoes" == A0_2 then
    L3_2 = "random@domestic"
    L2_2 = "pickup_low"
    L4_2 = 0
  elseif "jewelry" == A0_2 then
    L3_2 = "clothingtie"
    L2_2 = "try_tie_positive_a"
    L4_2 = 51
  elseif "glasses" == A0_2 then
    L3_2 = "clothingspecs"
    L2_2 = "take_off"
    L4_2 = 51
  elseif "watch" == A0_2 then
    L3_2 = "nmt_3_rcm-10"
    L2_2 = "cs_nigel_dual-10"
    L4_2 = 51
  elseif "vest" == A0_2 then
    L3_2 = "clothingtie"
    L2_2 = "try_tie_negative_a"
    L4_2 = 51
  elseif "mask" == A0_2 then
    L3_2 = "misscommon@van_put_on_masks"
    L2_2 = "put_on_mask_ps"
    L4_2 = 51
  elseif "ear" == A0_2 then
    L3_2 = "mp_cp_stolen_tut"
    L2_2 = "b_think"
    L4_2 = 51
  elseif "hat" == A0_2 then
    L3_2 = "mp_masks@standard_car@ds@"
    L2_2 = "put_on_mask"
    L4_2 = 51
  elseif "bag" == A0_2 then
    L3_2 = "anim@heists@ornate_bank@grab_cash"
    L2_2 = "intro"
    L4_2 = 51
  elseif "gloves" == A0_2 then
    L3_2 = "nmt_3_rcm-10"
    L2_2 = "cs_nigel_dual-10"
    L4_2 = 51
  end
  L5_2 = L3_2
  L6_2 = HasAnimDictLoaded
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = RequestAnimDict
    L7_2 = L5_2
    L6_2(L7_2)
    while true do
      L6_2 = HasAnimDictLoaded
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        break
      end
      L6_2 = Wait
      L7_2 = 10
      L6_2(L7_2)
    end
  end
  L6_2 = TaskPlayAnim
  L7_2 = L1_2
  L8_2 = L3_2
  L9_2 = L2_2
  L10_2 = 3.0
  L11_2 = 3.0
  L12_2 = 750
  L13_2 = L4_2
  L14_2 = 0
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = Wait
  L7_2 = 500
  L6_2(L7_2)
end
PlayAnim = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetHashKey
  L2_2 = "mp_m_freemode_01"
  L1_2 = L1_2(L2_2)
  L2_2 = GetHashKey
  L3_2 = "mp_f_freemode_01"
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 == L1_2 then
    L4_2 = "male"
    return L4_2
  elseif L3_2 == L2_2 then
    L4_2 = "female"
    return L4_2
  end
end
GetPedGender = L14_1
L14_1 = RegisterCommand
L15_1 = "vestiti"
function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuIndumenti
  L2_2()
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "cloth"
function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuIndumenti
  L2_2()
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "clothes"
function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuIndumenti
  L2_2()
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "i"
function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuIndumenti
  L2_2()
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "indumenti"
function L16_1(A0_2, A1_2)
  local L2_2
  L2_2 = MenuIndumenti
  L2_2()
end
L14_1(L15_1, L16_1)
L14_1 = RegisterKeyMapping
L15_1 = "indumenti"
L16_1 = "Clothes Menu"
L17_1 = "keyboard"
L18_1 = "i"
L14_1(L15_1, L16_1, L17_1, L18_1)
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SetFollowPedCamViewMode
  L1_2 = 4
  L0_2(L1_2)
  L0_2 = SetFollowPedCamViewMode
  L1_2 = 2
  L0_2(L1_2)
  L0_2 = SetCamViewModeForContext
  L1_2 = GetCamActiveViewModeContext
  L1_2 = L1_2()
  L2_2 = 2
  L0_2(L1_2, L2_2)
  L0_2 = DisableControlAction
  L1_2 = 0
  L2_2 = 0
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = DisableFirstPersonCamThisFrame
  L0_2()
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.clearMenu
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "MASK"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "mask"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "TORSO"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "torso"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "PANTS"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "pant"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "SHOES"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "scarpe"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "GLASSES"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "glasses"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "GLOVES"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "guanti"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "EAR"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "ear"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "ARMS"
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L0_3 = L0_3.striano_fastmenu
    L1_3 = L0_3
    L0_3 = L0_3.close
    L0_3(L1_3)
    L0_3 = ExecuteCommand
    L1_3 = "braccia"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "HELMET"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "casco"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "CHAIN"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "coll"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "CAP"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "hat"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "FIX HAIRS"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "capellifix"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "WEAR SECONDRY"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "secondariosi"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "REMOVE SECONDRY"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "secondariono"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.addMenuItem
  L2_2 = "PARACHUTE"
  function L3_2()
    local L0_3, L1_3
    L0_3 = ExecuteCommand
    L1_3 = "menupara"
    L0_3(L1_3)
  end
  L4_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = exports
  L0_2 = L0_2.striano_fastmenu
  L1_2 = L0_2
  L0_2 = L0_2.openMenu
  L0_2(L1_2)
end
MenuIndumenti = L14_1
L14_1 = RegisterCommand
L15_1 = "mask"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "mask"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "torso"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "shirt"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "pants"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "pants"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "pant"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "pants"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "scarpe"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "shoes"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "glass"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "glasses"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "glasses"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "glasses"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "guanti"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "gloves"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "ear"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "ear"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "coll"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "jewelry"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "hat"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = GestisciIndumento
  L3_2 = "hat"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
