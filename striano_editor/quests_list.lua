local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_core
  L2_2 = L1_2
  L1_2 = L1_2.OpenInput
  L3_2 = A0_2
  L4_2 = ""
  L5_2 = {}
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
OpenInput = L0_1
function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = 0.45
  if nil ~= A4_2 then
    L5_2 = A4_2
  end
  L6_2 = World3dToScreen2d
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L9_2 = SetTextScale
    L10_2 = L5_2
    L11_2 = L5_2
    L9_2(L10_2, L11_2)
    L9_2 = SetTextFont
    L10_2 = 4
    L9_2(L10_2)
    L9_2 = SetTextProportional
    L10_2 = 1
    L9_2(L10_2)
    L9_2 = SetTextColour
    L10_2 = 255
    L11_2 = 255
    L12_2 = 255
    L13_2 = 200
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = SetTextEntry
    L10_2 = "STRING"
    L9_2(L10_2)
    L9_2 = SetTextOutline
    L9_2()
    L9_2 = AddTextComponentString
    L10_2 = A3_2
    L9_2(L10_2)
    L9_2 = DrawText
    L10_2 = L7_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
DrawQuest = L0_1
totalReward = 0
L0_1 = {}
dummies = L0_1
L0_1 = "core"
L1_1 = "ent_amb_fire_ring"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.fxHandle
  if L1_2 then
    L1_2 = A0_2.fxHandle
    if 0 ~= L1_2 then
      L1_2 = StopParticleFxLooped
      L2_2 = A0_2.fxHandle
      L3_2 = false
      L1_2(L2_2, L3_2)
      A0_2.fxHandle = nil
    end
  end
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2.fires
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L2_1
    L8_2 = L6_2
    L7_2(L8_2)
  end
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L3_1
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.extinguishedCount = 0
  A0_2.completed = false
  L1_2 = ipairs
  L2_2 = A0_2.fires
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2.extinguished = false
    L6_2.fxHandle = nil
  end
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = LoadParticleAsset
  L2_2 = L0_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2.fires
  if not L2_2 then
    L2_2 = {}
  end
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.extinguished
    if not L7_2 then
      L7_2 = UseParticleFxAssetNextCall
      L8_2 = L0_1
      L7_2(L8_2)
      L7_2 = StartParticleFxLoopedAtCoord
      L8_2 = L1_1
      L9_2 = L6_2.coords
      L9_2 = L9_2.x
      L10_2 = L6_2.coords
      L10_2 = L10_2.y
      L11_2 = L6_2.coords
      L11_2 = L11_2.z
      L12_2 = 0.0
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = L6_2.scale
      if not L15_2 then
        L15_2 = 1.0
      end
      L16_2 = false
      L17_2 = false
      L18_2 = false
      L19_2 = false
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L6_2.fxHandle = L7_2
    end
  end
  L1_2 = RemoveNamedPtfxAsset
  L2_2 = L0_1
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.extinguished
  if L2_2 then
    return
  end
  A1_2.extinguished = true
  L2_2 = A0_2.extinguishedCount
  if not L2_2 then
    L2_2 = 0
  end
  L2_2 = L2_2 + 1
  A0_2.extinguishedCount = L2_2
  L2_2 = L2_1
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "SELECT"
  L5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Wait
  L3_2 = 1500
  L2_2(L3_2)
end
L7_1 = exports
L8_1 = "isQuestActive"
function L9_1()
  local L0_2, L1_2
  L0_2 = activeQuest
  L0_2 = L0_2.idQuest
  if nil ~= L0_2 then
    L0_2 = activeQuest
    L0_2 = L0_2.idQuest
    return L0_2
  else
    L0_2 = 0
    return L0_2
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "striano_quest:itemResult"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = activeQuest
  L3_2 = L3_2.idQuest
  if not L3_2 then
    return
  end
  L3_2 = tonumber
  L4_2 = activeQuest
  L4_2 = L4_2.idQuest
  L3_2 = L3_2(L4_2)
  if 2 ~= L3_2 then
    return
  end
  L3_2 = QuestList
  L3_2 = L3_2[2]
  L4_2 = A0_2
  L5_2 = "white"
  L6_2 = ipairs
  L7_2 = L3_2.randomPool
  if not L7_2 then
    L7_2 = {}
  end
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.item
    if L12_2 == A0_2 then
      L4_2 = L11_2.label
      L12_2 = L11_2.color
      L5_2 = L12_2 or L5_2
      if not L12_2 then
        L5_2 = "white"
      end
      break
    end
  end
  L6_2 = activeQuest
  L7_2 = "You need to collect the requested supplies.<br><br>"
  L8_2 = "<font color='%s'>%s: %d/%d</font>"
  L7_2 = L7_2 .. L8_2
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L5_2
  L10_2 = L4_2
  L11_2 = A1_2
  L12_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.MissionDesc = L7_2
  L6_2 = tonumber
  L7_2 = activeQuest
  L7_2 = L7_2.idQuest
  L6_2 = L6_2(L7_2)
  L7_2 = tonumber
  L8_2 = idDelleQuest
  L9_2 = CurDispId
  L8_2 = L8_2[L9_2]
  L7_2 = L7_2(L8_2)
  L8_2 = QuestMenuOpen
  if L8_2 and L7_2 == L6_2 then
    L8_2 = SendNUIMessage
    L9_2 = {}
    L9_2.action = "GetCallUpdate"
    L10_2 = "<br>"
    L11_2 = activeQuest
    L11_2 = L11_2.MissionDesc
    L10_2 = L10_2 .. L11_2
    L9_2.message = L10_2
    L10_2 = basePocet
    L11_2 = CurDispId
    L12_2 = "/"
    L13_2 = dispatches
    L13_2 = #L13_2
    L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
    L9_2.pocet = L10_2
    L10_2 = CurDispId
    L9_2.CurDispId = L10_2
    L10_2 = "<b><font color='red'>"
    L11_2 = activeQuest
    L11_2 = L11_2.title
    L12_2 = "</font></b>"
    L10_2 = L10_2 .. L11_2 .. L12_2
    L9_2.title = L10_2
    L8_2(L9_2)
  end
  if A2_2 <= A1_2 then
    L8_2 = questComplete
    L9_2 = activeQuest
    L9_2 = L9_2.idQuest
    L8_2(L9_2)
    L8_2 = {}
    activeQuest = L8_2
  end
end
L7_1(L8_1, L9_1)
L7_1 = {}
L8_1 = {}
L8_1.active = false
L8_1.isMainQuest = false
L8_1.name = "Evil Dummys"
L8_1.desc = "Knock down all standup Evil Dummys to break the curse.<br>(This is an optional side-quest for extra reward, not mandatory to complete the intro)<br>This quest can be accepted only on intro-tutorial."
L8_1.descAccepted = "Find and knockout with combat system all dummies of the area. Hold press mouse right and mouse left + W/A/D to fight. <br>(This is an optional side-quest for extra reward, not mandatory to complete the intro)"
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "Quest accepted, do something form other script if needed."
  L0_2(L1_2)
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.getDummyInArea
  L2_2 = 300.0
  L0_2 = L0_2(L1_2, L2_2)
  dummies = L0_2
end
L8_1.onQuestAccepted = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = print
  L1_2 = "You got reward completing quest."
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "inv3d:giveItem"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = "player"
  L4_2 = "moneta"
  L5_2 = totalReward
  L5_2 = L5_2 * 10
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
L8_1.rewardFunc = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3
    L0_3 = print
    L1_3 = "Checking the complete of quest started..."
    L0_3(L1_3)
    L0_3 = vector3
    L1_3 = 3834.497
    L2_3 = 6533.59
    L3_3 = 0.271
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = GetEntityCoords
    L2_3 = PlayerPedId
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3 = L2_3()
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
    L1_3 = L1_3 - L0_3
    L1_3 = #L1_3
    L2_3 = 500.0
    if L1_3 > L2_3 then
      L1_3 = CreateThread
      function L2_3()
        local L0_4, L1_4, L2_4
        L0_4 = Wait
        L1_4 = 1500
        L0_4(L1_4)
        L0_4 = ExecuteCommand
        L1_4 = "e shrug4"
        L0_4(L1_4)
        L0_4 = exports
        L0_4 = L0_4.striano_core
        L1_4 = L0_4
        L0_4 = L0_4.gettutorial
        L0_4 = L0_4(L1_4)
        if L0_4 then
          L0_4 = exports
          L0_4 = L0_4.striano_combat
          L1_4 = L0_4
          L0_4 = L0_4.testo3d
          L2_4 = "~c~~h~Quest expired."
          L0_4(L1_4, L2_4)
        else
          L0_4 = exports
          L0_4 = L0_4.striano_combat
          L1_4 = L0_4
          L0_4 = L0_4.testo3d
          L2_4 = "~c~~h~Too far for Quest."
          L0_4(L1_4, L2_4)
        end
      end
      L1_3(L2_3)
      L1_3 = RemoveQuestById
      L2_3 = activeQuest
      L2_3 = L2_3.idQuest
      L1_3(L2_3)
      return
    end
    L1_3 = dummies
    L1_3 = #L1_3
    if 0 == L1_3 then
      L1_3 = CreateThread
      function L2_3()
        local L0_4, L1_4, L2_4
        L0_4 = Wait
        L1_4 = 1500
        L0_4(L1_4)
        L0_4 = ExecuteCommand
        L1_4 = "e shrug3"
        L0_4(L1_4)
        L0_4 = exports
        L0_4 = L0_4.striano_core
        L1_4 = L0_4
        L0_4 = L0_4.gettutorial
        L0_4 = L0_4(L1_4)
        if not L0_4 then
          L0_4 = GivemeBackQuest
          L0_4()
        else
          L0_4 = print
          L1_4 = "Quest deleted cause can be started only on tutorial."
          L0_4(L1_4)
        end
        L0_4 = exports
        L0_4 = L0_4.striano_combat
        L1_4 = L0_4
        L0_4 = L0_4.testo3d
        L2_4 = "~y~~h~Quest declined.~n~No Dummies found."
        L0_4(L1_4, L2_4)
        L0_4 = print
        L1_4 = "No dummies found to start the mission."
        L0_4(L1_4)
        L0_4 = resetCurrentQuest
        L0_4()
      end
      L1_3(L2_3)
      return
    else
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      L1_3 = L1_3 + 1000
      L2_3 = UpdateQuestLog
      L2_3()
      L2_3 = dummies
      L2_3 = #L2_3
      if L2_3 > 0 then
        L2_3 = dummies
        L2_3 = #L2_3
        totalReward = L2_3
      end
      while true do
        L2_3 = activeQuest
        L2_3 = L2_3.title
        if nil == L2_3 then
          break
        end
        L2_3 = exports
        L2_3 = L2_3.striano_core
        L3_3 = L2_3
        L2_3 = L2_3.gettutorial
        L2_3 = L2_3(L3_3)
        if L2_3 then
          break
        end
        L2_3 = Wait
        L3_3 = 0
        L2_3(L3_3)
        L2_3 = GetGameTimer
        L2_3 = L2_3()
        if L1_3 <= L2_3 then
          L1_3 = L2_3 + 1000
          L3_3 = UpdateQuestLog
          L3_3()
        end
        L3_3 = ipairs
        L4_3 = dummies
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          L9_3 = L8_3.obj
          if nil ~= L9_3 then
            L9_3 = DoesEntityExist
            L10_3 = L8_3.obj
            L9_3 = L9_3(L10_3)
            if not L9_3 then
              L9_3 = table
              L9_3 = L9_3.remove
              L10_3 = dummies
              L11_3 = L7_3
              L9_3(L10_3, L11_3)
              L9_3 = dummies
              L9_3 = #L9_3
              if L9_3 <= 0 then
                varQuestComplete = 100
              end
              break
            else
              L9_3 = GetEntityRotation
              L10_3 = L8_3.obj
              L9_3 = L9_3(L10_3)
              L10_3 = L9_3.x
              if 0.0 == L10_3 then
                L10_3 = L9_3.y
                if 0.0 == L10_3 then
                  L10_3 = GetEntityCoords
                  L11_3 = L8_3.obj
                  L10_3 = L10_3(L11_3)
                  L11_3 = vector3
                  L12_3 = L10_3.x
                  L13_3 = L10_3.y
                  L14_3 = L10_3.z
                  L14_3 = L14_3 + 2.2
                  L11_3 = L11_3(L12_3, L13_3, L14_3)
                  L12_3 = DrawMarker
                  L13_3 = 28
                  L14_3 = L11_3
                  L15_3 = 0.0
                  L16_3 = 0.0
                  L17_3 = 0.0
                  L18_3 = 0.0
                  L19_3 = 0.0
                  L20_3 = 0.0
                  L21_3 = 0.035
                  L22_3 = 0.035
                  L23_3 = 0.035
                  L24_3 = 255
                  L25_3 = 255
                  L26_3 = 255
                  L27_3 = 250
                  L28_3 = true
                  L29_3 = true
                  L30_3 = 2
                  L31_3 = nil
                  L32_3 = nil
                  L33_3 = false
                  L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
                end
              end
            end
          end
        end
        L3_3 = varQuestComplete
        if L3_3 >= 100 then
          varQuestComplete = 0
          L3_3 = GetEntityCoords
          L4_3 = PlayerPedId
          L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3 = L4_3()
          L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
          L3_3 = L3_3 - L0_3
          L3_3 = #L3_3
          L4_3 = 500.0
          if L3_3 < L4_3 then
            L3_3 = print
            L4_3 = "Quest Complete!"
            L3_3(L4_3)
            L3_3 = ExecuteCommand
            L4_3 = "prova2 QUEST COMPLETED!"
            L3_3(L4_3)
            L3_3 = questComplete
            L4_3 = activeQuest
            L4_3 = L4_3.idQuest
            L3_3(L4_3)
          else
          end
          L3_3 = {}
          activeQuest = L3_3
          return
        end
      end
      L2_3 = exports
      L2_3 = L2_3.striano_core
      L3_3 = L2_3
      L2_3 = L2_3.gettutorial
      L2_3 = L2_3(L3_3)
      if not L2_3 then
        L2_3 = GivemeBackQuest
        L2_3()
      else
        L2_3 = print
        L3_3 = "Quest deleted cause can be started only on tutorial."
        L2_3(L3_3)
      end
      L2_3 = CreateThread
      function L3_3()
        local L0_4, L1_4, L2_4
        L0_4 = Wait
        L1_4 = 1500
        L0_4(L1_4)
        L0_4 = activeQuest
        L0_4 = L0_4.title
        if nil ~= L0_4 then
          L0_4 = exports
          L0_4 = L0_4.striano_combat
          L1_4 = L0_4
          L0_4 = L0_4.testo3d
          L2_4 = "~y~~h~Quest declined.~n~Not available."
          L0_4(L1_4, L2_4)
          L0_4 = ExecuteCommand
          L1_4 = "e shrug4"
          L0_4(L1_4)
        end
      end
      L2_3(L3_3)
      L2_3 = resetCurrentQuest
      L2_3()
      L2_3 = print
      L3_3 = "Checking of quest stopped."
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
L8_1.tickFunc = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = print
  L1_2 = "Quest declined, i do or clear something."
  L0_2(L1_2)
end
L8_1.declineFunc = L9_1
L7_1[1] = L8_1
L8_1 = {}
L8_1.active = false
L8_1.isMainQuest = false
L8_1.randomItem = nil
L8_1.randomAmount = nil
L9_1 = {}
L10_1 = {}
L10_1.item = "water"
L10_1.label = "Water"
L10_1.amount = 10
L10_1.color = "cyan"
L11_1 = {}
L11_1.item = "bush"
L11_1.label = "Bush"
L11_1.amount = 15
L11_1.color = "lime"
L12_1 = {}
L12_1.item = "iron"
L12_1.label = "Iron"
L12_1.amount = 8
L12_1.color = "orange"
L13_1 = {}
L13_1.item = "ash"
L13_1.label = "Ash"
L13_1.amount = 12
L13_1.color = "gray"
L14_1 = {}
L14_1.item = "wood"
L14_1.label = "Wood"
L14_1.amount = 20
L14_1.color = "yellow"
L15_1 = {}
L15_1.item = "coal"
L15_1.label = "Coal"
L15_1.amount = 10
L15_1.color = "white"
L9_1[1] = L10_1
L9_1[2] = L11_1
L9_1[3] = L12_1
L9_1[4] = L13_1
L9_1[5] = L14_1
L9_1[6] = L15_1
L8_1.randomPool = L9_1
L8_1.name = "Supply Survivor"
L8_1.desc = "Bring useful supplies in your inventory."
L8_1.descAccepted = "Accept the quest to discover the requested item."
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = QuestList
  L0_2 = L0_2[2]
  L1_2 = L0_2.randomPool
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = L0_2.randomPool
  L4_2 = #L4_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.item
  L0_2.randomItem = L2_2
  L2_2 = L1_2.amount
  L0_2.randomAmount = L2_2
  L2_2 = "You need to have <font color='%s'>%sx %s</font> in your inventory."
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = L1_2.color
  L5_2 = L1_2.amount
  L6_2 = L1_2.label
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L0_2.descAccepted = L2_2
  L2_2 = print
  L3_2 = "Random supply quest accepted:"
  L4_2 = L1_2.item
  L5_2 = L1_2.amount
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 250
    L0_3(L1_3)
    L0_3 = openDispatch
    L0_3()
  end
  L2_2(L3_2)
end
L8_1.onQuestAccepted = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = TriggerServerEvent
  L1_2 = "inv3d:giveItem"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = "player"
  L4_2 = "moneta"
  L5_2 = 50
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
L8_1.rewardFunc = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = QuestList
    L0_3 = L0_3[2]
    L1_3 = GetGameTimer
    L1_3 = L1_3()
    L1_3 = L1_3 + 1000
    while true do
      L2_3 = activeQuest
      L2_3 = L2_3.title
      if nil == L2_3 then
        break
      end
      L2_3 = activeQuest
      L2_3 = L2_3.idQuest
      if 2 ~= L2_3 then
        break
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
      L2_3 = GetGameTimer
      L2_3 = L2_3()
      if L1_3 <= L2_3 then
        L1_3 = L2_3 + 1000
        L3_3 = L0_3.randomItem
        if L3_3 then
          L3_3 = L0_3.randomAmount
          if L3_3 then
            L3_3 = TriggerServerEvent
            L4_3 = "striano_quest:checkItem"
            L5_3 = L0_3.randomItem
            L6_3 = L0_3.randomAmount
            L3_3(L4_3, L5_3, L6_3)
          end
        end
      end
    end
    L2_3 = print
    L3_3 = "Supply quest stopped."
    L2_3(L3_3)
  end
  L0_2(L1_2)
end
L8_1.tickFunc = L9_1
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = QuestList
  L0_2 = L0_2[2]
  L0_2.randomItem = nil
  L0_2.randomAmount = nil
  L1_2 = print
  L2_2 = "Supply quest declined."
  L1_2(L2_2)
end
L8_1.declineFunc = L9_1
L7_1[2] = L8_1
L8_1 = {}
L8_1.active = false
L8_1.isMainQuest = false
L8_1.percorso = nil
L8_1.name = "Extinguish the Fires"
L8_1.desc = "Several fires are burning in the area. Extinguish all of them."
L8_1.descAccepted = "Reach every marked location and extinguish the fires with buckets of water."
L8_1.extinguishedCount = 0
L8_1.completed = false
L8_1.threadToken = 0
L8_1.interactionDistance = 2.5
L8_1.renderDistance = 10.0
L9_1 = {}
L10_1 = {}
L11_1 = vector3
L12_1 = 3597.24
L13_1 = 7510.659
L14_1 = 14.199
L11_1 = L11_1(L12_1, L13_1, L14_1)
L10_1.coords = L11_1
L10_1.scale = 0.5
L10_1.extinguished = false
L10_1.fxHandle = nil
L11_1 = {}
L12_1 = vector3
L13_1 = 3602.96
L14_1 = 7518.603
L15_1 = 13.497
L12_1 = L12_1(L13_1, L14_1, L15_1)
L11_1.coords = L12_1
L11_1.scale = 0.5
L11_1.extinguished = false
L11_1.fxHandle = nil
L12_1 = {}
L13_1 = vector3
L14_1 = 3611.149
L15_1 = 7513.174
L16_1 = 13.411
L13_1 = L13_1(L14_1, L15_1, L16_1)
L12_1.coords = L13_1
L12_1.scale = 0.5
L12_1.extinguished = false
L12_1.fxHandle = nil
L9_1[1] = L10_1
L9_1[2] = L11_1
L9_1[3] = L12_1
L8_1.fires = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = QuestList
  L0_2 = L0_2[3]
  L1_2 = L0_2.threadToken
  if not L1_2 then
    L1_2 = 0
  end
  L1_2 = L1_2 + 1
  L0_2.threadToken = L1_2
  L1_2 = L4_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = L5_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = "Extinguish all the fires. Remaining fires: "
  L2_2 = "<font color='orange'>%s</font>."
  L1_2 = L1_2 .. L2_2
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = L0_2.fires
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.descAccepted = L1_2
  L1_2 = exports
  L1_2 = L1_2.striano_inventory
  L2_2 = L1_2
  L1_2 = L1_2.create
  L3_2 = {}
  L4_2 = vector3
  L5_2 = 3597.24
  L6_2 = 7510.659
  L7_2 = 14.199
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.coords = L4_2
  L3_2.type = "checkpoint"
  L3_2.color = "#FF0000"
  L3_2.label = "\t"
  L3_2.size = 1.0
  L3_2.displayDistance = true
  L3_2.deleteWhenNear = true
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.percorso = L1_2
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 250
    L0_3(L1_3)
    L0_3 = openDispatch
    L0_3()
  end
  L2_2(L3_2)
end
L8_1.onQuestAccepted = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = TriggerServerEvent
  L1_2 = "inv3d:giveItem"
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = "player"
  L4_2 = "moneta"
  L5_2 = 50
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
L8_1.rewardFunc = L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = QuestList
  L0_2 = L0_2[3]
  L1_2 = L0_2.threadToken
  if not L1_2 then
    L1_2 = 0
  end
  L1_2 = L1_2 + 1
  L0_2.threadToken = L1_2
  L1_2 = L0_2.threadToken
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3
    while true do
      L0_3 = activeQuest
      L0_3 = L0_3.title
      if nil == L0_3 then
        break
      end
      L0_3 = activeQuest
      L0_3 = L0_3.idQuest
      if 3 ~= L0_3 then
        break
      end
      L0_3 = L1_2
      L1_3 = L0_2.threadToken
      if L0_3 ~= L1_3 then
        break
      end
      L0_3 = PlayerPedId
      L0_3 = L0_3()
      L1_3 = GetEntityCoords
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = ipairs
      L3_3 = L0_2.fires
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        L8_3 = L7_3.extinguished
        if not L8_3 then
          L8_3 = L7_3.coords
          L8_3 = L1_3 - L8_3
          L8_3 = #L8_3
          L9_3 = L0_2.renderDistance
          if L8_3 <= L9_3 then
            L9_3 = vector3
            L10_3 = L7_3.coords
            L10_3 = L10_3.x
            L11_3 = L7_3.coords
            L11_3 = L11_3.y
            L12_3 = L7_3.coords
            L12_3 = L12_3.z
            L12_3 = L12_3 + 1.5
            L9_3 = L9_3(L10_3, L11_3, L12_3)
            L10_3 = L0_2.interactionDistance
            if L8_3 <= L10_3 then
              L10_3 = DrawMarker
              L11_3 = 28
              L12_3 = L9_3
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = 0.0
              L17_3 = 0.0
              L18_3 = 0.0
              L19_3 = 0.2
              L20_3 = 0.2
              L21_3 = 0.2
              L22_3 = 0
              L23_3 = 255
              L24_3 = 0
              L25_3 = 150
              L26_3 = true
              L27_3 = true
              L28_3 = 2
              L29_3 = nil
              L30_3 = nil
              L31_3 = false
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
              L10_3 = exports
              L10_3 = L10_3.striano_inventory
              L11_3 = L10_3
              L10_3 = L10_3.secchio
              L10_3 = L10_3(L11_3)
              if nil ~= L10_3 then
                L10_3 = GetEntityModel
                L11_3 = exports
                L11_3 = L11_3.striano_inventory
                L12_3 = L11_3
                L11_3 = L11_3.secchio
                L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3 = L11_3(L12_3)
                L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
                L11_3 = GetHashKey
                L12_3 = "striano_bwatert"
                L11_3 = L11_3(L12_3)
                if L10_3 ~= L11_3 then
                  L10_3 = DrawQuest
                  L11_3 = L9_3.x
                  L12_3 = L9_3.y
                  L13_3 = L9_3.z
                  L14_3 = "You need a bucket of water"
                  L10_3(L11_3, L12_3, L13_3, L14_3)
                end
              end
            else
              L10_3 = DrawMarker
              L11_3 = 28
              L12_3 = L9_3
              L13_3 = 0.0
              L14_3 = 0.0
              L15_3 = 0.0
              L16_3 = 0.0
              L17_3 = 0.0
              L18_3 = 0.0
              L19_3 = 0.2
              L20_3 = 0.2
              L21_3 = 0.2
              L22_3 = 255
              L23_3 = 0
              L24_3 = 0
              L25_3 = 150
              L26_3 = true
              L27_3 = true
              L28_3 = 2
              L29_3 = nil
              L30_3 = nil
              L31_3 = false
              L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
            end
            L10_3 = L0_2.interactionDistance
            if not (L8_3 <= L10_3) then
              goto lbl_203
            end
            L10_3 = exports
            L10_3 = L10_3.striano_inventory
            L11_3 = L10_3
            L10_3 = L10_3.secchio
            L10_3 = L10_3(L11_3)
            if nil == L10_3 then
              goto lbl_203
            end
            L10_3 = IsEntityPlayingAnim
            L11_3 = L0_3
            L12_3 = "missfbi3_waterboard"
            L13_3 = "waterboard_loop_player"
            L14_3 = 3
            L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
            if not L10_3 then
              goto lbl_203
            end
            while true do
              L10_3 = IsEntityPlayingAnim
              L11_3 = L0_3
              L12_3 = "missfbi3_waterboard"
              L13_3 = "waterboard_loop_player"
              L14_3 = 3
              L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
              if not L10_3 then
                break
              end
              L10_3 = Wait
              L11_3 = 25
              L10_3(L11_3)
            end
            L10_3 = L6_1
            L11_3 = L0_2
            L12_3 = L7_3
            L10_3(L11_3, L12_3)
            L10_3 = L0_2.fires
            L10_3 = #L10_3
            L11_3 = L0_2.extinguishedCount
            L10_3 = L10_3 - L11_3
            L11_3 = "Extinguish all the fires with bucket of water. Remaining fires: "
            L12_3 = "<font color='orange'>%s</font>."
            L11_3 = L11_3 .. L12_3
            L12_3 = L11_3
            L11_3 = L11_3.format
            L13_3 = L10_3
            L11_3 = L11_3(L12_3, L13_3)
            L0_2.descAccepted = L11_3
            if L10_3 <= 0 then
              L11_3 = L0_2.completed
              if not L11_3 then
                L0_2.completed = true
                L11_3 = L3_1
                L12_3 = L0_2
                L11_3(L12_3)
                L11_3 = questComplete
                L12_3 = activeQuest
                L12_3 = L12_3.idQuest
                L11_3(L12_3)
                break
              end
            end
          else
            L9_3 = vector3
            L10_3 = L7_3.coords
            L10_3 = L10_3.x
            L11_3 = L7_3.coords
            L11_3 = L11_3.y
            L12_3 = L7_3.coords
            L12_3 = L12_3.z
            L9_3 = L9_3(L10_3, L11_3, L12_3)
            L10_3 = DrawMarker
            L11_3 = 1
            L12_3 = L9_3
            L13_3 = 0.0
            L14_3 = 0.0
            L15_3 = 0.0
            L16_3 = 0.0
            L17_3 = 0.0
            L18_3 = 0.0
            L19_3 = 0.5
            L20_3 = 0.5
            L21_3 = 100.0
            L22_3 = 255
            L23_3 = 255
            L24_3 = 255
            L25_3 = 250
            L26_3 = true
            L27_3 = true
            L28_3 = 2
            L29_3 = nil
            L30_3 = nil
            L31_3 = false
            L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3)
          end
        end
        ::lbl_203::
      end
      L2_3 = Wait
      L3_3 = 0
      L2_3(L3_3)
    end
    L0_3 = L3_1
    L1_3 = L0_2
    L0_3(L1_3)
    L0_3 = exports
    L0_3 = L0_3.striano_inventory
    L1_3 = L0_3
    L0_3 = L0_3.remove
    L2_3 = L0_2.percorso
    L0_3(L1_3, L2_3)
    L0_3 = print
    L1_3 = "[Fire Quest] Thread terminato."
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L8_1.tickFunc = L9_1
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = QuestList
  L0_2 = L0_2[3]
  L1_2 = L0_2.threadToken
  if not L1_2 then
    L1_2 = 0
  end
  L1_2 = L1_2 + 1
  L0_2.threadToken = L1_2
  L1_2 = L3_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = L4_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = print
  L2_2 = "[Fire Quest] Missione rifiutata o annullata."
  L1_2(L2_2)
end
L8_1.declineFunc = L9_1
L7_1[3] = L8_1
QuestList = L7_1
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.skinchanger
  L1_2 = L0_2
  L0_2 = L0_2.ineditskin
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = activeQuest
    L0_2 = L0_2.idQuest
    if 1 == L0_2 then
      L0_2 = SetQuestTracker
      L1_2 = "QUEST [NOT MONDADORY] \226\128\162 DUMMIES TO KNOCKOUT: "
      L2_2 = dummies
      L2_2 = #L2_2
      L1_2 = L1_2 .. L2_2
      L0_2(L1_2)
    end
  else
    questTrackerText = ""
  end
end
UpdateQuestLog = L7_1
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = activeQuest
  L0_2 = L0_2.title
  if nil ~= L0_2 then
    CurDispId = 0
    L0_2 = activeQuest
    L1_2 = {}
    activeQuest = L1_2
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Escape"
    L1_2(L2_2)
    QuestMenuOpen = false
  end
end
GivemeBackQuest = L7_1
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = exports
  L0_2 = L0_2.striano_combat
  L1_2 = L0_2
  L0_2 = L0_2.submex
  L2_2 = ""
  L0_2(L1_2, L2_2)
  L0_2 = {}
  activeQuest = L0_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "Escape"
  L0_2(L1_2)
  QuestMenuOpen = false
end
resetCurrentQuest = L7_1
questTrackerText = nil
function L7_1(A0_2)
  local L1_2
  questTrackerText = A0_2
end
SetQuestTracker = L7_1
function L7_1()
  local L0_2, L1_2
  questTrackerText = nil
end
ClearQuestTracker = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = activeQuest
      L0_3 = L0_3.title
      if nil == L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = questTrackerText
      if nil ~= L0_3 then
        L0_3 = exports
        L0_3 = L0_3.striano_combat
        L1_3 = L0_3
        L0_3 = L0_3.submex2
        L2_3 = questTrackerText
        L0_3(L1_3, L2_3)
      end
    end
  end
  L0_2(L1_2)
end
loopQuestTracker = L7_1
