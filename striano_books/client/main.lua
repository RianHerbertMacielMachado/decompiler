local L0_1, L1_1, L2_1, L3_1
L0_1 = false
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 == A0_2 then
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.show = false
    L1_2(L2_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "pageflip"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlaySoundFrontend
  L3_2 = -1
  L4_2 = "Shard_Disappear"
  L5_2 = "GTAO_Boss_Goons_FM_Shard_Sounds"
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = exports
  L1_2 = L1_2.striano_admin
  L2_2 = L1_2
  L1_2 = L1_2.OpenInput
  L3_2 = A0_2
  L4_2 = ""
  L5_2 = {}
  L5_2.maxLen = 64
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
OpenInput = L1_1
L1_1 = RegisterNetEvent
L2_1 = "gmm-books:client:OpenBook"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L3_2 = IsPedFatallyInjured
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = IsPedFalling
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = IsPedClimbing
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = IsPedJumping
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L3_2 = Config
          L3_2 = L3_2.Books
          if L3_2 then
            L3_2 = Config
            L3_2 = L3_2.Books
            L3_2 = L3_2[A0_2]
            if L3_2 then
              goto lbl_34
            end
          end
          L3_2 = nil
          ::lbl_34::
          if L3_2 then
            L4_2 = L0_1
            if L4_2 then
              L4_2 = false
              L0_1 = L4_2
              L4_2 = Wait
              L5_2 = 100
              L4_2(L5_2)
            end
            L4_2 = exports
            L4_2 = L4_2.striano_combat
            L5_2 = L4_2
            L4_2 = L4_2.submex
            L6_2 = ""
            L4_2(L5_2, L6_2)
            L4_2 = type
            L5_2 = L3_2.pages
            L4_2 = L4_2(L5_2)
            L4_2 = "table" == L4_2
            L5_2 = L3_2.mode
            L5_2 = "text" == L5_2
            if L4_2 then
              L6_2 = L3_2.pages
              L6_2 = #L6_2
              if L6_2 <= 1 then
                L2_2 = true
              end
            end
            L6_2 = SetNuiFocus
            L7_2 = true
            L8_2 = true
            L6_2(L7_2, L8_2)
            if L5_2 then
              L6_2 = SendNUIMessage
              L7_2 = {}
              L7_2.show = true
              L7_2.book = A0_2
              L7_2.mode = "text"
              L8_2 = L3_2.title
              L7_2.title = L8_2
              L8_2 = L3_2.author
              L7_2.author = L8_2
              L8_2 = L3_2.text
              L7_2.text = L8_2
              L8_2 = L3_2.size
              L7_2.size = L8_2
              L8_2 = L3_2.style
              L7_2.style = L8_2
              L6_2(L7_2)
            elseif L4_2 then
              L6_2 = SendNUIMessage
              L7_2 = {}
              L7_2.show = true
              L7_2.book = A0_2
              L7_2.mode = "images"
              L8_2 = L3_2.pages
              L7_2.pages = L8_2
              L8_2 = L3_2.size
              L7_2.size = L8_2
              L6_2(L7_2)
            else
              L6_2 = print
              L7_2 = "Libro mal configurato: %s (manca pages o text)"
              L8_2 = L7_2
              L7_2 = L7_2.format
              L9_2 = tostring
              L10_2 = A0_2
              L9_2, L10_2 = L9_2(L10_2)
              L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
              L6_2(L7_2, L8_2, L9_2, L10_2)
              L6_2 = ExecuteCommand
              L7_2 = "e shrug5"
              L6_2(L7_2)
              return
            end
            L6_2 = ExecuteCommand
            L7_2 = "pointingstop"
            L6_2(L7_2)
            L6_2 = true
            L0_1 = L6_2
            while true do
              L6_2 = L0_1
              if not L6_2 then
                break
              end
              L6_2 = IsPedFatallyInjured
              L7_2 = L1_2
              L6_2 = L6_2(L7_2)
              if L6_2 then
                break
              end
              L6_2 = IsPedOnFoot
              L7_2 = L1_2
              L6_2 = L6_2(L7_2)
              if not L6_2 then
                break
              end
              L6_2 = Wait
              L7_2 = 0
              L6_2(L7_2)
              if not L2_2 then
                L6_2 = IsEntityPlayingAnim
                L7_2 = L1_2
                L8_2 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
                L9_2 = "idle_a"
                L10_2 = 3
                L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
                if not L6_2 then
                  L6_2 = ExecuteCommand
                  L7_2 = "e libro"
                  L6_2(L7_2)
                  L6_2 = Wait
                  L7_2 = 1000
                  L6_2(L7_2)
                end
              else
                L6_2 = IsEntityPlayingAnim
                L7_2 = L1_2
                L8_2 = "missheistdockssetup1clipboard@base"
                L9_2 = "base"
                L10_2 = 3
                L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
                if not L6_2 then
                  L6_2 = ExecuteCommand
                  L7_2 = "e nota"
                  L6_2(L7_2)
                  L6_2 = Wait
                  L7_2 = 1000
                  L6_2(L7_2)
                end
              end
            end
            L6_2 = ExecuteCommand
            L7_2 = "e posatasca"
            L6_2(L7_2)
          else
            if A0_2 then
              L4_2 = print
              L5_2 = "The book "
              L6_2 = A0_2
              L7_2 = " not exist."
              L5_2 = L5_2 .. L6_2 .. L7_2
              L4_2(L5_2)
            end
            L4_2 = ExecuteCommand
            L5_2 = "e shrug5"
            L4_2(L5_2)
          end
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "escape"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = false
  L0_1 = L2_2
  L2_2 = Wait
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = exports
  L2_2 = L2_2.striano_combat
  L3_2 = L2_2
  L2_2 = L2_2.submex
  L4_2 = ""
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
