local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1
function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  if A2_2 then
    L5_2 = vector3
    L6_2 = A2_2.x
    L7_2 = A2_2.y
    L8_2 = A2_2.z
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    A2_2 = L5_2
  else
    L5_2 = PlayerPedId
    L5_2 = L5_2()
    L6_2 = GetEntityCoords
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    A2_2 = L6_2
  end
  L5_2 = pairs
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetEntityCoords
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L11_2 = A2_2 - L11_2
    L11_2 = #L11_2
    if A3_2 >= L11_2 then
      L12_2 = #L4_2
      L12_2 = L12_2 + 1
      L13_2 = L9_2 or L13_2
      if not A1_2 or not L9_2 then
        L13_2 = L10_2
      end
      L4_2[L12_2] = L13_2
    end
  end
  return L4_2
end
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = {}
  L4_2 = PlayerId
  L4_2 = L4_2()
  L5_2 = ipairs
  L6_2 = GetActivePlayers
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetPlayerPed
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = DoesEntityExist
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 and (A0_2 and L10_2 ~= L4_2 or not A0_2) then
      if A1_2 then
        L3_2[L10_2] = L11_2
      else
        L12_2 = #L3_2
        L12_2 = L12_2 + 1
        L13_2 = L11_2 or L13_2
        if not A2_2 or not L11_2 then
          L13_2 = L10_2
        end
        L3_2[L12_2] = L13_2
      end
    end
  end
  return L3_2
end
GetPlayers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L3_2 = GetPlayers
  L4_2 = true
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = true
  L5_2 = A0_2
  L6_2 = A1_2
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
GetPlayersInArea = L1_1
L1_1 = nil
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetEntityDrawOutlineColor
  L2_2 = 255
  L3_2 = 0
  L4_2 = 110
  L5_2 = 150
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetEntityDrawOutlineShader
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = SetEntityDrawOutline
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_1 = A0_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetEntityDrawOutlineColor
  L2_2 = 255
  L3_2 = 0
  L4_2 = 0
  L5_2 = 150
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SetEntityDrawOutlineShader
  L2_2 = 1
  L1_2(L2_2)
  L1_2 = SetEntityDrawOutline
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_1 = A0_2
end
L4_1 = {}
L5_1 = {}
L5_1.id = 1
L5_1.nome = "J\226\154\156"
L5_1.colore = "~p~"
L6_1 = {}
L7_1 = "jolly"
L8_1 = "joker"
L9_1 = "francesi"
L10_1 = "french"
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L5_1.tag = L6_1
L5_1.mm = "vw_prop_casino_cards_single"
L6_1 = {}
L6_1.id = 2
L6_1.nome = "J\226\152\152"
L6_1.colore = "~g~"
L7_1 = {}
L8_1 = "jolly"
L9_1 = "joker"
L10_1 = "francesi"
L11_1 = "french"
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L7_1[4] = L11_1
L6_1.tag = L7_1
L6_1.mm = "vw_prop_casino_cards_single"
L7_1 = {}
L7_1.id = 3
L7_1.nome = "A\226\153\165"
L7_1.colore = "~r~"
L8_1 = {}
L9_1 = "asso"
L10_1 = "ace"
L11_1 = "rossa"
L12_1 = "red"
L13_1 = "cuori"
L14_1 = "hearts"
L15_1 = "francesi"
L16_1 = "french"
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L8_1[6] = L14_1
L8_1[7] = L15_1
L8_1[8] = L16_1
L7_1.tag = L8_1
L7_1.mm = "vw_prop_cas_card_hrt_ace"
L8_1 = {}
L8_1.id = 4
L8_1.nome = "2\226\153\165"
L8_1.colore = "~r~"
L9_1 = {}
L10_1 = "pari"
L11_1 = "even"
L12_1 = "rossa"
L13_1 = "red"
L14_1 = "numero"
L15_1 = "number"
L16_1 = "cuori"
L17_1 = "hearts"
L18_1 = "francesi"
L19_1 = "french"
L9_1[1] = L10_1
L9_1[2] = L11_1
L9_1[3] = L12_1
L9_1[4] = L13_1
L9_1[5] = L14_1
L9_1[6] = L15_1
L9_1[7] = L16_1
L9_1[8] = L17_1
L9_1[9] = L18_1
L9_1[10] = L19_1
L8_1.tag = L9_1
L8_1.mm = "vw_prop_cas_card_hrt_02"
L9_1 = {}
L9_1.id = 5
L9_1.nome = "3\226\153\165"
L9_1.colore = "~r~"
L10_1 = {}
L11_1 = "dispari"
L12_1 = "odd"
L13_1 = "rossa"
L14_1 = "red"
L15_1 = "numero"
L16_1 = "number"
L17_1 = "cuori"
L18_1 = "hearts"
L19_1 = "francesi"
L20_1 = "french"
L10_1[1] = L11_1
L10_1[2] = L12_1
L10_1[3] = L13_1
L10_1[4] = L14_1
L10_1[5] = L15_1
L10_1[6] = L16_1
L10_1[7] = L17_1
L10_1[8] = L18_1
L10_1[9] = L19_1
L10_1[10] = L20_1
L9_1.tag = L10_1
L9_1.mm = "vw_prop_cas_card_hrt_03"
L10_1 = {}
L10_1.id = 6
L10_1.nome = "4\226\153\165"
L10_1.colore = "~r~"
L11_1 = {}
L12_1 = "pari"
L13_1 = "even"
L14_1 = "rossa"
L15_1 = "red"
L16_1 = "numero"
L17_1 = "number"
L18_1 = "cuori"
L19_1 = "hearts"
L20_1 = "francesi"
L21_1 = "french"
L11_1[1] = L12_1
L11_1[2] = L13_1
L11_1[3] = L14_1
L11_1[4] = L15_1
L11_1[5] = L16_1
L11_1[6] = L17_1
L11_1[7] = L18_1
L11_1[8] = L19_1
L11_1[9] = L20_1
L11_1[10] = L21_1
L10_1.tag = L11_1
L10_1.mm = "vw_prop_cas_card_hrt_04"
L11_1 = {}
L11_1.id = 7
L11_1.nome = "5\226\153\165"
L11_1.colore = "~r~"
L12_1 = {}
L13_1 = "dispari"
L14_1 = "odd"
L15_1 = "rossa"
L16_1 = "red"
L17_1 = "numero"
L18_1 = "number"
L19_1 = "cuori"
L20_1 = "hearts"
L21_1 = "francesi"
L22_1 = "french"
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L12_1[4] = L16_1
L12_1[5] = L17_1
L12_1[6] = L18_1
L12_1[7] = L19_1
L12_1[8] = L20_1
L12_1[9] = L21_1
L12_1[10] = L22_1
L11_1.tag = L12_1
L11_1.mm = "vw_prop_cas_card_hrt_05"
L12_1 = {}
L12_1.id = 8
L12_1.nome = "6\226\153\165"
L12_1.colore = "~r~"
L13_1 = {}
L14_1 = "pari"
L15_1 = "even"
L16_1 = "rossa"
L17_1 = "red"
L18_1 = "numero"
L19_1 = "number"
L20_1 = "cuori"
L21_1 = "hearts"
L22_1 = "francesi"
L23_1 = "french"
L13_1[1] = L14_1
L13_1[2] = L15_1
L13_1[3] = L16_1
L13_1[4] = L17_1
L13_1[5] = L18_1
L13_1[6] = L19_1
L13_1[7] = L20_1
L13_1[8] = L21_1
L13_1[9] = L22_1
L13_1[10] = L23_1
L12_1.tag = L13_1
L12_1.mm = "vw_prop_cas_card_hrt_06"
L13_1 = {}
L13_1.id = 9
L13_1.nome = "7\226\153\165"
L13_1.colore = "~r~"
L14_1 = {}
L15_1 = "dispari"
L16_1 = "odd"
L17_1 = "rossa"
L18_1 = "red"
L19_1 = "numero"
L20_1 = "number"
L21_1 = "cuori"
L22_1 = "hearts"
L23_1 = "francesi"
L24_1 = "french"
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L14_1[5] = L19_1
L14_1[6] = L20_1
L14_1[7] = L21_1
L14_1[8] = L22_1
L14_1[9] = L23_1
L14_1[10] = L24_1
L13_1.tag = L14_1
L13_1.mm = "vw_prop_cas_card_hrt_07"
L14_1 = {}
L14_1.id = 10
L14_1.nome = "8\226\153\165"
L14_1.colore = "~r~"
L15_1 = {}
L16_1 = "pari"
L17_1 = "even"
L18_1 = "rossa"
L19_1 = "red"
L20_1 = "numero"
L21_1 = "number"
L22_1 = "cuori"
L23_1 = "hearts"
L24_1 = "francesi"
L25_1 = "french"
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L15_1[6] = L21_1
L15_1[7] = L22_1
L15_1[8] = L23_1
L15_1[9] = L24_1
L15_1[10] = L25_1
L14_1.tag = L15_1
L14_1.mm = "vw_prop_cas_card_hrt_08"
L15_1 = {}
L15_1.id = 11
L15_1.nome = "9\226\153\165"
L15_1.colore = "~r~"
L16_1 = {}
L17_1 = "dispari"
L18_1 = "odd"
L19_1 = "rossa"
L20_1 = "red"
L21_1 = "numero"
L22_1 = "number"
L23_1 = "cuori"
L24_1 = "hearts"
L25_1 = "francesi"
L26_1 = "french"
L16_1[1] = L17_1
L16_1[2] = L18_1
L16_1[3] = L19_1
L16_1[4] = L20_1
L16_1[5] = L21_1
L16_1[6] = L22_1
L16_1[7] = L23_1
L16_1[8] = L24_1
L16_1[9] = L25_1
L16_1[10] = L26_1
L15_1.tag = L16_1
L15_1.mm = "vw_prop_cas_card_hrt_09"
L16_1 = {}
L16_1.id = 12
L16_1.nome = "10\226\153\165"
L16_1.colore = "~r~"
L17_1 = {}
L18_1 = "pari"
L19_1 = "even"
L20_1 = "rossa"
L21_1 = "red"
L22_1 = "numero"
L23_1 = "number"
L24_1 = "cuori"
L25_1 = "hearts"
L26_1 = "francesi"
L27_1 = "french"
L17_1[1] = L18_1
L17_1[2] = L19_1
L17_1[3] = L20_1
L17_1[4] = L21_1
L17_1[5] = L22_1
L17_1[6] = L23_1
L17_1[7] = L24_1
L17_1[8] = L25_1
L17_1[9] = L26_1
L17_1[10] = L27_1
L16_1.tag = L17_1
L16_1.mm = "vw_prop_cas_card_hrt_10"
L17_1 = {}
L17_1.id = 13
L17_1.nome = "J\226\153\165"
L17_1.colore = "~r~"
L18_1 = {}
L19_1 = "fante"
L20_1 = "jack"
L21_1 = "rossa"
L22_1 = "red"
L23_1 = "figura"
L24_1 = "face"
L25_1 = "cuori"
L26_1 = "hearts"
L27_1 = "francesi"
L28_1 = "french"
L18_1[1] = L19_1
L18_1[2] = L20_1
L18_1[3] = L21_1
L18_1[4] = L22_1
L18_1[5] = L23_1
L18_1[6] = L24_1
L18_1[7] = L25_1
L18_1[8] = L26_1
L18_1[9] = L27_1
L18_1[10] = L28_1
L17_1.tag = L18_1
L17_1.mm = "vw_prop_cas_card_hrt_jack"
L18_1 = {}
L18_1.id = 14
L18_1.nome = "Q\226\153\165"
L18_1.colore = "~r~"
L19_1 = {}
L20_1 = "regina"
L21_1 = "queen"
L22_1 = "rossa"
L23_1 = "red"
L24_1 = "figura"
L25_1 = "face"
L26_1 = "cuori"
L27_1 = "hearts"
L28_1 = "francesi"
L29_1 = "french"
L19_1[1] = L20_1
L19_1[2] = L21_1
L19_1[3] = L22_1
L19_1[4] = L23_1
L19_1[5] = L24_1
L19_1[6] = L25_1
L19_1[7] = L26_1
L19_1[8] = L27_1
L19_1[9] = L28_1
L19_1[10] = L29_1
L18_1.tag = L19_1
L18_1.mm = "vw_prop_cas_card_hrt_queen"
L19_1 = {}
L19_1.id = 15
L19_1.nome = "K\226\153\165"
L19_1.colore = "~r~"
L20_1 = {}
L21_1 = "re"
L22_1 = "king"
L23_1 = "rossa"
L24_1 = "red"
L25_1 = "figura"
L26_1 = "face"
L27_1 = "cuori"
L28_1 = "hearts"
L29_1 = "francesi"
L30_1 = "french"
L20_1[1] = L21_1
L20_1[2] = L22_1
L20_1[3] = L23_1
L20_1[4] = L24_1
L20_1[5] = L25_1
L20_1[6] = L26_1
L20_1[7] = L27_1
L20_1[8] = L28_1
L20_1[9] = L29_1
L20_1[10] = L30_1
L19_1.tag = L20_1
L19_1.mm = "vw_prop_cas_card_hrt_king"
L20_1 = {}
L20_1.id = 16
L20_1.nome = "A\226\153\166"
L20_1.colore = "~r~"
L21_1 = {}
L22_1 = "asso"
L23_1 = "ace"
L24_1 = "rossa"
L25_1 = "red"
L26_1 = "quadri"
L27_1 = "diamonds"
L28_1 = "francesi"
L29_1 = "french"
L21_1[1] = L22_1
L21_1[2] = L23_1
L21_1[3] = L24_1
L21_1[4] = L25_1
L21_1[5] = L26_1
L21_1[6] = L27_1
L21_1[7] = L28_1
L21_1[8] = L29_1
L20_1.tag = L21_1
L20_1.mm = "vw_prop_cas_card_dia_ace"
L21_1 = {}
L21_1.id = 17
L21_1.nome = "2\226\153\166"
L21_1.colore = "~r~"
L22_1 = {}
L23_1 = "pari"
L24_1 = "even"
L25_1 = "rossa"
L26_1 = "red"
L27_1 = "numero"
L28_1 = "number"
L29_1 = "quadri"
L30_1 = "diamonds"
L31_1 = "francesi"
L32_1 = "french"
L22_1[1] = L23_1
L22_1[2] = L24_1
L22_1[3] = L25_1
L22_1[4] = L26_1
L22_1[5] = L27_1
L22_1[6] = L28_1
L22_1[7] = L29_1
L22_1[8] = L30_1
L22_1[9] = L31_1
L22_1[10] = L32_1
L21_1.tag = L22_1
L21_1.mm = "vw_prop_cas_card_dia_02"
L22_1 = {}
L22_1.id = 18
L22_1.nome = "3\226\153\166"
L22_1.colore = "~r~"
L23_1 = {}
L24_1 = "dispari"
L25_1 = "odd"
L26_1 = "rossa"
L27_1 = "red"
L28_1 = "numero"
L29_1 = "number"
L30_1 = "quadri"
L31_1 = "diamonds"
L32_1 = "francesi"
L33_1 = "french"
L23_1[1] = L24_1
L23_1[2] = L25_1
L23_1[3] = L26_1
L23_1[4] = L27_1
L23_1[5] = L28_1
L23_1[6] = L29_1
L23_1[7] = L30_1
L23_1[8] = L31_1
L23_1[9] = L32_1
L23_1[10] = L33_1
L22_1.tag = L23_1
L22_1.mm = "vw_prop_cas_card_dia_03"
L23_1 = {}
L23_1.id = 19
L23_1.nome = "4\226\153\166"
L23_1.colore = "~r~"
L24_1 = {}
L25_1 = "pari"
L26_1 = "even"
L27_1 = "rossa"
L28_1 = "red"
L29_1 = "numero"
L30_1 = "number"
L31_1 = "quadri"
L32_1 = "diamonds"
L33_1 = "francesi"
L34_1 = "french"
L24_1[1] = L25_1
L24_1[2] = L26_1
L24_1[3] = L27_1
L24_1[4] = L28_1
L24_1[5] = L29_1
L24_1[6] = L30_1
L24_1[7] = L31_1
L24_1[8] = L32_1
L24_1[9] = L33_1
L24_1[10] = L34_1
L23_1.tag = L24_1
L23_1.mm = "vw_prop_cas_card_dia_04"
L24_1 = {}
L24_1.id = 20
L24_1.nome = "5\226\153\166"
L24_1.colore = "~r~"
L25_1 = {}
L26_1 = "dispari"
L27_1 = "odd"
L28_1 = "rossa"
L29_1 = "red"
L30_1 = "numero"
L31_1 = "number"
L32_1 = "quadri"
L33_1 = "diamonds"
L34_1 = "francesi"
L35_1 = "french"
L25_1[1] = L26_1
L25_1[2] = L27_1
L25_1[3] = L28_1
L25_1[4] = L29_1
L25_1[5] = L30_1
L25_1[6] = L31_1
L25_1[7] = L32_1
L25_1[8] = L33_1
L25_1[9] = L34_1
L25_1[10] = L35_1
L24_1.tag = L25_1
L24_1.mm = "vw_prop_cas_card_dia_05"
L25_1 = {}
L25_1.id = 21
L25_1.nome = "6\226\153\166"
L25_1.colore = "~r~"
L26_1 = {}
L27_1 = "pari"
L28_1 = "even"
L29_1 = "rossa"
L30_1 = "red"
L31_1 = "numero"
L32_1 = "number"
L33_1 = "quadri"
L34_1 = "diamonds"
L35_1 = "francesi"
L36_1 = "french"
L26_1[1] = L27_1
L26_1[2] = L28_1
L26_1[3] = L29_1
L26_1[4] = L30_1
L26_1[5] = L31_1
L26_1[6] = L32_1
L26_1[7] = L33_1
L26_1[8] = L34_1
L26_1[9] = L35_1
L26_1[10] = L36_1
L25_1.tag = L26_1
L25_1.mm = "vw_prop_cas_card_dia_06"
L26_1 = {}
L26_1.id = 22
L26_1.nome = "7\226\153\166"
L26_1.colore = "~r~"
L27_1 = {}
L28_1 = "dispari"
L29_1 = "odd"
L30_1 = "rossa"
L31_1 = "red"
L32_1 = "numero"
L33_1 = "number"
L34_1 = "quadri"
L35_1 = "diamonds"
L36_1 = "francesi"
L37_1 = "french"
L27_1[1] = L28_1
L27_1[2] = L29_1
L27_1[3] = L30_1
L27_1[4] = L31_1
L27_1[5] = L32_1
L27_1[6] = L33_1
L27_1[7] = L34_1
L27_1[8] = L35_1
L27_1[9] = L36_1
L27_1[10] = L37_1
L26_1.tag = L27_1
L26_1.mm = "vw_prop_cas_card_dia_07"
L27_1 = {}
L27_1.id = 23
L27_1.nome = "8\226\153\166"
L27_1.colore = "~r~"
L28_1 = {}
L29_1 = "pari"
L30_1 = "even"
L31_1 = "rossa"
L32_1 = "red"
L33_1 = "numero"
L34_1 = "number"
L35_1 = "quadri"
L36_1 = "diamonds"
L37_1 = "francesi"
L38_1 = "french"
L28_1[1] = L29_1
L28_1[2] = L30_1
L28_1[3] = L31_1
L28_1[4] = L32_1
L28_1[5] = L33_1
L28_1[6] = L34_1
L28_1[7] = L35_1
L28_1[8] = L36_1
L28_1[9] = L37_1
L28_1[10] = L38_1
L27_1.tag = L28_1
L27_1.mm = "vw_prop_cas_card_dia_08"
L28_1 = {}
L28_1.id = 24
L28_1.nome = "9\226\153\166"
L28_1.colore = "~r~"
L29_1 = {}
L30_1 = "dispari"
L31_1 = "odd"
L32_1 = "rossa"
L33_1 = "red"
L34_1 = "numero"
L35_1 = "number"
L36_1 = "quadri"
L37_1 = "diamonds"
L38_1 = "francesi"
L39_1 = "french"
L29_1[1] = L30_1
L29_1[2] = L31_1
L29_1[3] = L32_1
L29_1[4] = L33_1
L29_1[5] = L34_1
L29_1[6] = L35_1
L29_1[7] = L36_1
L29_1[8] = L37_1
L29_1[9] = L38_1
L29_1[10] = L39_1
L28_1.tag = L29_1
L28_1.mm = "vw_prop_cas_card_dia_09"
L29_1 = {}
L29_1.id = 25
L29_1.nome = "10\226\153\166"
L29_1.colore = "~r~"
L30_1 = {}
L31_1 = "pari"
L32_1 = "even"
L33_1 = "rossa"
L34_1 = "red"
L35_1 = "numero"
L36_1 = "number"
L37_1 = "quadri"
L38_1 = "diamonds"
L39_1 = "francesi"
L40_1 = "french"
L30_1[1] = L31_1
L30_1[2] = L32_1
L30_1[3] = L33_1
L30_1[4] = L34_1
L30_1[5] = L35_1
L30_1[6] = L36_1
L30_1[7] = L37_1
L30_1[8] = L38_1
L30_1[9] = L39_1
L30_1[10] = L40_1
L29_1.tag = L30_1
L29_1.mm = "vw_prop_cas_card_dia_10"
L30_1 = {}
L30_1.id = 26
L30_1.nome = "J\226\153\166"
L30_1.colore = "~r~"
L31_1 = {}
L32_1 = "fante"
L33_1 = "jack"
L34_1 = "rossa"
L35_1 = "red"
L36_1 = "figura"
L37_1 = "face"
L38_1 = "quadri"
L39_1 = "diamonds"
L40_1 = "francesi"
L41_1 = "french"
L31_1[1] = L32_1
L31_1[2] = L33_1
L31_1[3] = L34_1
L31_1[4] = L35_1
L31_1[5] = L36_1
L31_1[6] = L37_1
L31_1[7] = L38_1
L31_1[8] = L39_1
L31_1[9] = L40_1
L31_1[10] = L41_1
L30_1.tag = L31_1
L30_1.mm = "vw_prop_cas_card_dia_jack"
L31_1 = {}
L31_1.id = 27
L31_1.nome = "Q\226\153\166"
L31_1.colore = "~r~"
L32_1 = {}
L33_1 = "regina"
L34_1 = "queen"
L35_1 = "rossa"
L36_1 = "red"
L37_1 = "figura"
L38_1 = "face"
L39_1 = "quadri"
L40_1 = "diamonds"
L41_1 = "francesi"
L42_1 = "french"
L32_1[1] = L33_1
L32_1[2] = L34_1
L32_1[3] = L35_1
L32_1[4] = L36_1
L32_1[5] = L37_1
L32_1[6] = L38_1
L32_1[7] = L39_1
L32_1[8] = L40_1
L32_1[9] = L41_1
L32_1[10] = L42_1
L31_1.tag = L32_1
L31_1.mm = "vw_prop_cas_card_dia_queen"
L32_1 = {}
L32_1.id = 28
L32_1.nome = "K\226\153\166"
L32_1.colore = "~r~"
L33_1 = {}
L34_1 = "re"
L35_1 = "king"
L36_1 = "rossa"
L37_1 = "red"
L38_1 = "figura"
L39_1 = "face"
L40_1 = "quadri"
L41_1 = "diamonds"
L42_1 = "francesi"
L43_1 = "french"
L33_1[1] = L34_1
L33_1[2] = L35_1
L33_1[3] = L36_1
L33_1[4] = L37_1
L33_1[5] = L38_1
L33_1[6] = L39_1
L33_1[7] = L40_1
L33_1[8] = L41_1
L33_1[9] = L42_1
L33_1[10] = L43_1
L32_1.tag = L33_1
L32_1.mm = "vw_prop_cas_card_dia_king"
L33_1 = {}
L33_1.id = 29
L33_1.nome = "A\226\153\160"
L33_1.colore = "~c~"
L34_1 = {}
L35_1 = "asso"
L36_1 = "ace"
L37_1 = "nera"
L38_1 = "black"
L39_1 = "picche"
L40_1 = "spades"
L41_1 = "francesi"
L42_1 = "french"
L34_1[1] = L35_1
L34_1[2] = L36_1
L34_1[3] = L37_1
L34_1[4] = L38_1
L34_1[5] = L39_1
L34_1[6] = L40_1
L34_1[7] = L41_1
L34_1[8] = L42_1
L33_1.tag = L34_1
L33_1.mm = "vw_prop_cas_card_spd_ace"
L34_1 = {}
L34_1.id = 30
L34_1.nome = "2\226\153\160"
L34_1.colore = "~c~"
L35_1 = {}
L36_1 = "pari"
L37_1 = "even"
L38_1 = "nera"
L39_1 = "black"
L40_1 = "numero"
L41_1 = "number"
L42_1 = "picche"
L43_1 = "spades"
L44_1 = "francesi"
L45_1 = "french"
L35_1[1] = L36_1
L35_1[2] = L37_1
L35_1[3] = L38_1
L35_1[4] = L39_1
L35_1[5] = L40_1
L35_1[6] = L41_1
L35_1[7] = L42_1
L35_1[8] = L43_1
L35_1[9] = L44_1
L35_1[10] = L45_1
L34_1.tag = L35_1
L34_1.mm = "vw_prop_cas_card_spd_02"
L35_1 = {}
L35_1.id = 31
L35_1.nome = "3\226\153\160"
L35_1.colore = "~c~"
L36_1 = {}
L37_1 = "dispari"
L38_1 = "odd"
L39_1 = "nera"
L40_1 = "black"
L41_1 = "numero"
L42_1 = "number"
L43_1 = "picche"
L44_1 = "spades"
L45_1 = "francesi"
L46_1 = "french"
L36_1[1] = L37_1
L36_1[2] = L38_1
L36_1[3] = L39_1
L36_1[4] = L40_1
L36_1[5] = L41_1
L36_1[6] = L42_1
L36_1[7] = L43_1
L36_1[8] = L44_1
L36_1[9] = L45_1
L36_1[10] = L46_1
L35_1.tag = L36_1
L35_1.mm = "vw_prop_cas_card_spd_03"
L36_1 = {}
L36_1.id = 32
L36_1.nome = "4\226\153\160"
L36_1.colore = "~c~"
L37_1 = {}
L38_1 = "pari"
L39_1 = "even"
L40_1 = "nera"
L41_1 = "black"
L42_1 = "numero"
L43_1 = "number"
L44_1 = "picche"
L45_1 = "spades"
L46_1 = "francesi"
L47_1 = "french"
L37_1[1] = L38_1
L37_1[2] = L39_1
L37_1[3] = L40_1
L37_1[4] = L41_1
L37_1[5] = L42_1
L37_1[6] = L43_1
L37_1[7] = L44_1
L37_1[8] = L45_1
L37_1[9] = L46_1
L37_1[10] = L47_1
L36_1.tag = L37_1
L36_1.mm = "vw_prop_cas_card_spd_04"
L37_1 = {}
L37_1.id = 33
L37_1.nome = "5\226\153\160"
L37_1.colore = "~c~"
L38_1 = {}
L39_1 = "dispari"
L40_1 = "odd"
L41_1 = "nera"
L42_1 = "black"
L43_1 = "numero"
L44_1 = "number"
L45_1 = "picche"
L46_1 = "spades"
L47_1 = "francesi"
L48_1 = "french"
L38_1[1] = L39_1
L38_1[2] = L40_1
L38_1[3] = L41_1
L38_1[4] = L42_1
L38_1[5] = L43_1
L38_1[6] = L44_1
L38_1[7] = L45_1
L38_1[8] = L46_1
L38_1[9] = L47_1
L38_1[10] = L48_1
L37_1.tag = L38_1
L37_1.mm = "vw_prop_cas_card_spd_05"
L38_1 = {}
L38_1.id = 34
L38_1.nome = "6\226\153\160"
L38_1.colore = "~c~"
L39_1 = {}
L40_1 = "pari"
L41_1 = "even"
L42_1 = "nera"
L43_1 = "black"
L44_1 = "numero"
L45_1 = "number"
L46_1 = "picche"
L47_1 = "spades"
L48_1 = "francesi"
L49_1 = "french"
L39_1[1] = L40_1
L39_1[2] = L41_1
L39_1[3] = L42_1
L39_1[4] = L43_1
L39_1[5] = L44_1
L39_1[6] = L45_1
L39_1[7] = L46_1
L39_1[8] = L47_1
L39_1[9] = L48_1
L39_1[10] = L49_1
L38_1.tag = L39_1
L38_1.mm = "vw_prop_cas_card_spd_06"
L39_1 = {}
L39_1.id = 35
L39_1.nome = "7\226\153\160"
L39_1.colore = "~c~"
L40_1 = {}
L41_1 = "dispari"
L42_1 = "odd"
L43_1 = "nera"
L44_1 = "black"
L45_1 = "numero"
L46_1 = "number"
L47_1 = "picche"
L48_1 = "spades"
L49_1 = "francesi"
L50_1 = "french"
L40_1[1] = L41_1
L40_1[2] = L42_1
L40_1[3] = L43_1
L40_1[4] = L44_1
L40_1[5] = L45_1
L40_1[6] = L46_1
L40_1[7] = L47_1
L40_1[8] = L48_1
L40_1[9] = L49_1
L40_1[10] = L50_1
L39_1.tag = L40_1
L39_1.mm = "vw_prop_cas_card_spd_07"
L40_1 = {}
L40_1.id = 36
L40_1.nome = "8\226\153\160"
L40_1.colore = "~c~"
L41_1 = {}
L42_1 = "pari"
L43_1 = "even"
L44_1 = "nera"
L45_1 = "black"
L46_1 = "numero"
L47_1 = "number"
L48_1 = "picche"
L49_1 = "spades"
L50_1 = "francesi"
L51_1 = "french"
L41_1[1] = L42_1
L41_1[2] = L43_1
L41_1[3] = L44_1
L41_1[4] = L45_1
L41_1[5] = L46_1
L41_1[6] = L47_1
L41_1[7] = L48_1
L41_1[8] = L49_1
L41_1[9] = L50_1
L41_1[10] = L51_1
L40_1.tag = L41_1
L40_1.mm = "vw_prop_cas_card_spd_08"
L41_1 = {}
L41_1.id = 37
L41_1.nome = "9\226\153\160"
L41_1.colore = "~c~"
L42_1 = {}
L43_1 = "dispari"
L44_1 = "odd"
L45_1 = "nera"
L46_1 = "black"
L47_1 = "numero"
L48_1 = "number"
L49_1 = "picche"
L50_1 = "spades"
L51_1 = "francesi"
L52_1 = "french"
L42_1[1] = L43_1
L42_1[2] = L44_1
L42_1[3] = L45_1
L42_1[4] = L46_1
L42_1[5] = L47_1
L42_1[6] = L48_1
L42_1[7] = L49_1
L42_1[8] = L50_1
L42_1[9] = L51_1
L42_1[10] = L52_1
L41_1.tag = L42_1
L41_1.mm = "vw_prop_cas_card_spd_09"
L42_1 = {}
L42_1.id = 38
L42_1.nome = "10\226\153\160"
L42_1.colore = "~c~"
L43_1 = {}
L44_1 = "pari"
L45_1 = "even"
L46_1 = "nera"
L47_1 = "black"
L48_1 = "numero"
L49_1 = "number"
L50_1 = "picche"
L51_1 = "spades"
L52_1 = "francesi"
L53_1 = "french"
L43_1[1] = L44_1
L43_1[2] = L45_1
L43_1[3] = L46_1
L43_1[4] = L47_1
L43_1[5] = L48_1
L43_1[6] = L49_1
L43_1[7] = L50_1
L43_1[8] = L51_1
L43_1[9] = L52_1
L43_1[10] = L53_1
L42_1.tag = L43_1
L42_1.mm = "vw_prop_cas_card_spd_10"
L43_1 = {}
L43_1.id = 39
L43_1.nome = "J\226\153\160"
L43_1.colore = "~c~"
L44_1 = {}
L45_1 = "fante"
L46_1 = "jack"
L47_1 = "nera"
L48_1 = "black"
L49_1 = "figura"
L50_1 = "face"
L51_1 = "picche"
L52_1 = "spades"
L53_1 = "francesi"
L54_1 = "french"
L44_1[1] = L45_1
L44_1[2] = L46_1
L44_1[3] = L47_1
L44_1[4] = L48_1
L44_1[5] = L49_1
L44_1[6] = L50_1
L44_1[7] = L51_1
L44_1[8] = L52_1
L44_1[9] = L53_1
L44_1[10] = L54_1
L43_1.tag = L44_1
L43_1.mm = "vw_prop_cas_card_spd_jack"
L44_1 = {}
L44_1.id = 40
L44_1.nome = "Q\226\153\160"
L44_1.colore = "~c~"
L45_1 = {}
L46_1 = "regina"
L47_1 = "queen"
L48_1 = "nera"
L49_1 = "black"
L50_1 = "figura"
L51_1 = "face"
L52_1 = "picche"
L53_1 = "spades"
L54_1 = "francesi"
L55_1 = "french"
L45_1[1] = L46_1
L45_1[2] = L47_1
L45_1[3] = L48_1
L45_1[4] = L49_1
L45_1[5] = L50_1
L45_1[6] = L51_1
L45_1[7] = L52_1
L45_1[8] = L53_1
L45_1[9] = L54_1
L45_1[10] = L55_1
L44_1.tag = L45_1
L44_1.mm = "vw_prop_cas_card_spd_queen"
L45_1 = {}
L45_1.id = 41
L45_1.nome = "K\226\153\160"
L45_1.colore = "~c~"
L46_1 = {}
L47_1 = "re"
L48_1 = "king"
L49_1 = "nera"
L50_1 = "black"
L51_1 = "figura"
L52_1 = "face"
L53_1 = "picche"
L54_1 = "spades"
L55_1 = "francesi"
L56_1 = "french"
L46_1[1] = L47_1
L46_1[2] = L48_1
L46_1[3] = L49_1
L46_1[4] = L50_1
L46_1[5] = L51_1
L46_1[6] = L52_1
L46_1[7] = L53_1
L46_1[8] = L54_1
L46_1[9] = L55_1
L46_1[10] = L56_1
L45_1.tag = L46_1
L45_1.mm = "vw_prop_cas_card_spd_king"
L46_1 = {}
L46_1.id = 42
L46_1.nome = "A\226\153\163"
L46_1.colore = "~w~"
L47_1 = {}
L48_1 = "asso"
L49_1 = "ace"
L50_1 = "nera"
L51_1 = "black"
L52_1 = "fiori"
L53_1 = "clubs"
L54_1 = "francesi"
L55_1 = "french"
L47_1[1] = L48_1
L47_1[2] = L49_1
L47_1[3] = L50_1
L47_1[4] = L51_1
L47_1[5] = L52_1
L47_1[6] = L53_1
L47_1[7] = L54_1
L47_1[8] = L55_1
L46_1.tag = L47_1
L46_1.mm = "vw_prop_cas_card_club_ace"
L47_1 = {}
L47_1.id = 43
L47_1.nome = "2\226\153\163"
L47_1.colore = "~w~"
L48_1 = {}
L49_1 = "pari"
L50_1 = "even"
L51_1 = "nera"
L52_1 = "black"
L53_1 = "numero"
L54_1 = "number"
L55_1 = "fiori"
L56_1 = "clubs"
L57_1 = "francesi"
L58_1 = "french"
L48_1[1] = L49_1
L48_1[2] = L50_1
L48_1[3] = L51_1
L48_1[4] = L52_1
L48_1[5] = L53_1
L48_1[6] = L54_1
L48_1[7] = L55_1
L48_1[8] = L56_1
L48_1[9] = L57_1
L48_1[10] = L58_1
L47_1.tag = L48_1
L47_1.mm = "vw_prop_cas_card_club_02"
L48_1 = {}
L48_1.id = 44
L48_1.nome = "3\226\153\163"
L48_1.colore = "~w~"
L49_1 = {}
L50_1 = "dispari"
L51_1 = "odd"
L52_1 = "nera"
L53_1 = "black"
L54_1 = "numero"
L55_1 = "number"
L56_1 = "fiori"
L57_1 = "clubs"
L58_1 = "francesi"
L59_1 = "french"
L49_1[1] = L50_1
L49_1[2] = L51_1
L49_1[3] = L52_1
L49_1[4] = L53_1
L49_1[5] = L54_1
L49_1[6] = L55_1
L49_1[7] = L56_1
L49_1[8] = L57_1
L49_1[9] = L58_1
L49_1[10] = L59_1
L48_1.tag = L49_1
L48_1.mm = "vw_prop_cas_card_club_03"
L49_1 = {}
L49_1.id = 45
L49_1.nome = "4\226\153\163"
L49_1.colore = "~w~"
L50_1 = {}
L51_1 = "pari"
L52_1 = "even"
L53_1 = "nera"
L54_1 = "black"
L55_1 = "numero"
L56_1 = "number"
L57_1 = "fiori"
L58_1 = "clubs"
L59_1 = "francesi"
L60_1 = "french"
L50_1[1] = L51_1
L50_1[2] = L52_1
L50_1[3] = L53_1
L50_1[4] = L54_1
L50_1[5] = L55_1
L50_1[6] = L56_1
L50_1[7] = L57_1
L50_1[8] = L58_1
L50_1[9] = L59_1
L50_1[10] = L60_1
L49_1.tag = L50_1
L49_1.mm = "vw_prop_cas_card_club_04"
L50_1 = {}
L50_1.id = 46
L50_1.nome = "5\226\153\163"
L50_1.colore = "~w~"
L51_1 = {}
L52_1 = "dispari"
L53_1 = "odd"
L54_1 = "nera"
L55_1 = "black"
L56_1 = "numero"
L57_1 = "number"
L58_1 = "fiori"
L59_1 = "clubs"
L60_1 = "francesi"
L61_1 = "french"
L51_1[1] = L52_1
L51_1[2] = L53_1
L51_1[3] = L54_1
L51_1[4] = L55_1
L51_1[5] = L56_1
L51_1[6] = L57_1
L51_1[7] = L58_1
L51_1[8] = L59_1
L51_1[9] = L60_1
L51_1[10] = L61_1
L50_1.tag = L51_1
L50_1.mm = "vw_prop_cas_card_club_05"
L51_1 = {}
L51_1.id = 47
L51_1.nome = "6\226\153\163"
L51_1.colore = "~w~"
L52_1 = {}
L53_1 = "pari"
L54_1 = "even"
L55_1 = "nera"
L56_1 = "black"
L57_1 = "numero"
L58_1 = "number"
L59_1 = "fiori"
L60_1 = "clubs"
L61_1 = "francesi"
L62_1 = "french"
L52_1[1] = L53_1
L52_1[2] = L54_1
L52_1[3] = L55_1
L52_1[4] = L56_1
L52_1[5] = L57_1
L52_1[6] = L58_1
L52_1[7] = L59_1
L52_1[8] = L60_1
L52_1[9] = L61_1
L52_1[10] = L62_1
L51_1.tag = L52_1
L51_1.mm = "vw_prop_cas_card_club_06"
L52_1 = {}
L52_1.id = 48
L52_1.nome = "7\226\153\163"
L52_1.colore = "~w~"
L53_1 = {}
L54_1 = "dispari"
L55_1 = "odd"
L56_1 = "nera"
L57_1 = "black"
L58_1 = "numero"
L59_1 = "number"
L60_1 = "fiori"
L61_1 = "clubs"
L62_1 = "francesi"
L63_1 = "french"
L53_1[1] = L54_1
L53_1[2] = L55_1
L53_1[3] = L56_1
L53_1[4] = L57_1
L53_1[5] = L58_1
L53_1[6] = L59_1
L53_1[7] = L60_1
L53_1[8] = L61_1
L53_1[9] = L62_1
L53_1[10] = L63_1
L52_1.tag = L53_1
L52_1.mm = "vw_prop_cas_card_club_07"
L53_1 = {}
L53_1.id = 49
L53_1.nome = "8\226\153\163"
L53_1.colore = "~w~"
L54_1 = {}
L55_1 = "pari"
L56_1 = "even"
L57_1 = "nera"
L58_1 = "black"
L59_1 = "numero"
L60_1 = "number"
L61_1 = "fiori"
L62_1 = "clubs"
L63_1 = "francesi"
L64_1 = "french"
L54_1[1] = L55_1
L54_1[2] = L56_1
L54_1[3] = L57_1
L54_1[4] = L58_1
L54_1[5] = L59_1
L54_1[6] = L60_1
L54_1[7] = L61_1
L54_1[8] = L62_1
L54_1[9] = L63_1
L54_1[10] = L64_1
L53_1.tag = L54_1
L53_1.mm = "vw_prop_cas_card_club_08"
L54_1 = {}
L54_1.id = 50
L54_1.nome = "9\226\153\163"
L54_1.colore = "~w~"
L55_1 = {}
L56_1 = "dispari"
L57_1 = "odd"
L58_1 = "nera"
L59_1 = "black"
L60_1 = "numero"
L61_1 = "number"
L62_1 = "fiori"
L63_1 = "clubs"
L64_1 = "francesi"
L65_1 = "french"
L55_1[1] = L56_1
L55_1[2] = L57_1
L55_1[3] = L58_1
L55_1[4] = L59_1
L55_1[5] = L60_1
L55_1[6] = L61_1
L55_1[7] = L62_1
L55_1[8] = L63_1
L55_1[9] = L64_1
L55_1[10] = L65_1
L54_1.tag = L55_1
L54_1.mm = "vw_prop_cas_card_club_09"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L4_1[5] = L9_1
L4_1[6] = L10_1
L4_1[7] = L11_1
L4_1[8] = L12_1
L4_1[9] = L13_1
L4_1[10] = L14_1
L4_1[11] = L15_1
L4_1[12] = L16_1
L4_1[13] = L17_1
L4_1[14] = L18_1
L4_1[15] = L19_1
L4_1[16] = L20_1
L4_1[17] = L21_1
L4_1[18] = L22_1
L4_1[19] = L23_1
L4_1[20] = L24_1
L4_1[21] = L25_1
L4_1[22] = L26_1
L4_1[23] = L27_1
L4_1[24] = L28_1
L4_1[25] = L29_1
L4_1[26] = L30_1
L4_1[27] = L31_1
L4_1[28] = L32_1
L4_1[29] = L33_1
L4_1[30] = L34_1
L4_1[31] = L35_1
L4_1[32] = L36_1
L4_1[33] = L37_1
L4_1[34] = L38_1
L4_1[35] = L39_1
L4_1[36] = L40_1
L4_1[37] = L41_1
L4_1[38] = L42_1
L4_1[39] = L43_1
L4_1[40] = L44_1
L4_1[41] = L45_1
L4_1[42] = L46_1
L4_1[43] = L47_1
L4_1[44] = L48_1
L4_1[45] = L49_1
L4_1[46] = L50_1
L4_1[47] = L51_1
L4_1[48] = L52_1
L4_1[49] = L53_1
L4_1[50] = L54_1
L5_1 = {}
L5_1.id = 51
L5_1.nome = "10\226\153\163"
L5_1.colore = "~w~"
L6_1 = {}
L7_1 = "pari"
L8_1 = "even"
L9_1 = "nera"
L10_1 = "black"
L11_1 = "numero"
L12_1 = "number"
L13_1 = "fiori"
L14_1 = "clubs"
L15_1 = "francesi"
L16_1 = "french"
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L6_1[5] = L11_1
L6_1[6] = L12_1
L6_1[7] = L13_1
L6_1[8] = L14_1
L6_1[9] = L15_1
L6_1[10] = L16_1
L5_1.tag = L6_1
L5_1.mm = "vw_prop_cas_card_club_10"
L6_1 = {}
L6_1.id = 52
L6_1.nome = "J\226\153\163"
L6_1.colore = "~w~"
L7_1 = {}
L8_1 = "fante"
L9_1 = "jack"
L10_1 = "nera"
L11_1 = "black"
L12_1 = "figura"
L13_1 = "face"
L14_1 = "fiori"
L15_1 = "clubs"
L16_1 = "francesi"
L17_1 = "french"
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L7_1[4] = L11_1
L7_1[5] = L12_1
L7_1[6] = L13_1
L7_1[7] = L14_1
L7_1[8] = L15_1
L7_1[9] = L16_1
L7_1[10] = L17_1
L6_1.tag = L7_1
L6_1.mm = "vw_prop_cas_card_club_jack"
L7_1 = {}
L7_1.id = 53
L7_1.nome = "Q\226\153\163"
L7_1.colore = "~w~"
L8_1 = {}
L9_1 = "regina"
L10_1 = "queen"
L11_1 = "nera"
L12_1 = "black"
L13_1 = "figura"
L14_1 = "face"
L15_1 = "fiori"
L16_1 = "clubs"
L17_1 = "francesi"
L18_1 = "french"
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L8_1[6] = L14_1
L8_1[7] = L15_1
L8_1[8] = L16_1
L8_1[9] = L17_1
L8_1[10] = L18_1
L7_1.tag = L8_1
L7_1.mm = "vw_prop_cas_card_club_queen"
L8_1 = {}
L8_1.id = 54
L8_1.nome = "K\226\153\163"
L8_1.colore = "~w~"
L9_1 = {}
L10_1 = "re"
L11_1 = "king"
L12_1 = "nera"
L13_1 = "black"
L14_1 = "figura"
L15_1 = "face"
L16_1 = "fiori"
L17_1 = "clubs"
L18_1 = "francesi"
L19_1 = "french"
L9_1[1] = L10_1
L9_1[2] = L11_1
L9_1[3] = L12_1
L9_1[4] = L13_1
L9_1[5] = L14_1
L9_1[6] = L15_1
L9_1[7] = L16_1
L9_1[8] = L17_1
L9_1[9] = L18_1
L9_1[10] = L19_1
L8_1.tag = L9_1
L8_1.mm = "vw_prop_cas_card_club_king"
L4_1[51] = L5_1
L4_1[52] = L6_1
L4_1[53] = L7_1
L4_1[54] = L8_1
L5_1 = 1
L6_1 = {}
L7_1 = false
L8_1 = 1
L9_1 = false
L10_1 = false
L11_1 = false
L12_1 = nil
L13_1 = nil
L14_1 = 0
L15_1 = 0.0
L16_1 = 0.0
L17_1 = 0.0
L18_1 = {}
L19_1 = 0
L20_1 = nil
L21_1 = 0
L22_1 = false
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ipairs
  L2_2 = GetActivePlayers
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2()
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = GetPlayerPed
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L0_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L0_2
end
Giocatori = L23_1
function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = GetPlayersInArea
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = 3.0
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = GetPlayerServerId
    L6_2 = L0_2[L4_2]
    L5_2 = L5_2(L6_2)
    L0_2[L4_2] = L5_2
  end
  L1_2 = TriggerServerEvent
  L2_2 = "striano_cards:resetCards"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
ResettaCarteVicino = L23_1
L23_1 = RegisterNetEvent
L24_1 = "striano_cards:resetCards"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "striano_cards:resetCards"
function L25_1()
  local L0_2, L1_2
  L0_2 = {}
  L18_1 = L0_2
end
L23_1(L24_1, L25_1)
L23_1 = RegisterCommand
L24_1 = "clearareacard"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = "Reset of all nearest cards area (3m)."
  L3_2 = SendNote
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = 1
  L4_2 = L4_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L4_1
    L7_2 = L7_2[L6_2]
    L8_2 = GetClosestObjectOfType
    L9_2 = GetEntityCoords
    L10_2 = PlayerPedId
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = 3.0
    L11_2 = GetHashKey
    L12_2 = L7_2.mm
    L11_2 = L11_2(L12_2)
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L8_2 > 0 then
      L9_2 = SetEntityAsMissionEntity
      L10_2 = L8_2
      L11_2 = true
      L9_2(L10_2, L11_2)
      L9_2 = DeleteEntity
      L10_2 = L8_2
      L9_2(L10_2)
    end
    L9_2 = ResettaCarteVicino
    L9_2()
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterCommand
L24_1 = "resetcard"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = "Reset of all yours cards decks."
  L3_2 = SendNote
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = 1
  L5_1 = L3_2
  L3_2 = 1
  L4_2 = 5
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_1
    L8_2 = {}
    L7_2[L6_2] = L8_2
  end
  L3_2 = ExecuteCommand
  L4_2 = "e puliscimani"
  L3_2(L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = 1
L24_1 = {}
L25_1 = "BROWSE"
L26_1 = "DISCARD"
L27_1 = "SHUFFLE"
L28_1 = "CLEAR"
L29_1 = "PLACE"
L24_1[1] = L25_1
L24_1[2] = L26_1
L24_1[3] = L27_1
L24_1[4] = L28_1
L24_1[5] = L29_1
L25_1 = "BROWSE"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = -1
  L2_2 = 4
  L3_2 = A0_2
  L4_2 = GetShapeTestResult
  L5_2 = StartShapeTestRay
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L8_2 = L8_2 + 1.0
  L9_2 = L3_2.x
  L10_2 = L3_2.y
  L11_2 = L3_2.z
  L11_2 = L11_2 - 2.0
  L12_2 = L1_2
  L13_2 = L12_1
  L14_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L5_2 and L6_2 then
    L9_2 = L12_1
    if L9_2 then
      L13_1 = L6_2
    end
  end
end
L27_1 = RegisterCommand
L28_1 = "clearcardlog"
function L29_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "clearLogPoker"
  L2_2(L3_2)
end
L27_1(L28_1, L29_1)
L27_1 = exports
L28_1 = "modalitaCarte"
function L29_1()
  local L0_2, L1_2
  L0_2 = L7_1
  return L0_2
end
L27_1(L28_1, L29_1)
L27_1 = RegisterCommand
L28_1 = "card"
function L29_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "carte"
  L2_2(L3_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterCommand
L28_1 = "cards"
function L29_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ExecuteCommand
  L3_2 = "carte"
  L2_2(L3_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterCommand
L28_1 = "carte"
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L12_1
  if L2_2 then
    L2_2 = DoesEntityExist
    L3_2 = L12_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = SetEntityAsMissionEntity
      L3_2 = L12_1
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = DeleteEntity
      L3_2 = L12_1
      L2_2(L3_2)
      L2_2 = nil
      L12_1 = L2_2
    end
  end
  L2_2 = L7_1
  if not L2_2 then
    L2_2 = L11_1
    if not L2_2 then
      L2_2 = true
      L7_1 = L2_2
      L2_2 = AnimCarte
      L2_2()
      L2_2 = Wait
      L3_2 = 25
      L2_2(L3_2)
      L2_2 = LoopInfoCarte
      L2_2()
    end
  else
    L2_2 = false
    L7_1 = L2_2
  end
end
L27_1(L28_1, L29_1)
function L27_1()
  local L0_2, L1_2, L2_2
  L1_2 = L5_1
  L0_2 = L6_1
  L0_2 = L0_2[L1_2]
  if nil == L0_2 then
    L1_2 = L5_1
    L0_2 = L6_1
    L2_2 = {}
    L0_2[L1_2] = L2_2
  end
  L1_2 = L5_1
  L0_2 = L6_1
  L0_2 = L0_2[L1_2]
  L0_2 = #L0_2
  if 0 == L0_2 then
    L0_2 = ExecuteCommand
    L1_2 = "e mazzocarte3"
    L0_2(L1_2)
  else
    L1_2 = L5_1
    L0_2 = L6_1
    L0_2 = L0_2[L1_2]
    L0_2 = #L0_2
    if L0_2 > 0 then
      L1_2 = L5_1
      L0_2 = L6_1
      L0_2 = L0_2[L1_2]
      L0_2 = #L0_2
      if L0_2 <= 10 then
        L0_2 = ExecuteCommand
        L1_2 = "e mazzocarte2"
        L0_2(L1_2)
    end
    else
      L0_2 = ExecuteCommand
      L1_2 = "e mazzocarte"
      L0_2(L1_2)
    end
  end
end
AnimCarte = L27_1
function L27_1()
  local L0_2, L1_2
  L0_2 = CreateThread
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    while true do
      L0_3 = L7_1
      if not L0_3 then
        break
      end
      L0_3 = IsEntityPlayingAnim
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = "missheistdockssetup1clipboard@base"
      L3_3 = "base"
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = AnimCarte
        L0_3()
      end
      L0_3 = IsControlPressed
      L1_3 = 0
      L2_3 = 73
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlPressed
        L1_3 = 0
        L2_3 = 73
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_34
        end
      end
      L0_3 = false
      L7_1 = L0_3
      L0_3 = false
      L10_1 = L0_3
      L0_3 = false
      L11_1 = L0_3
      do return end
      ::lbl_34::
      L0_3 = GetEntityBonePosition_2
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = GetPedBoneIndex
      L3_3 = PlayerPedId
      L3_3 = L3_3()
      L4_3 = 0
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L2_3(L3_3, L4_3)
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L1_3 = L10_1
      if L1_3 then
        L1_3 = L8_1
        L3_3 = L5_1
        L2_3 = L6_1
        L2_3 = L2_3[L3_3]
        L2_3 = #L2_3
        if L1_3 > L2_3 then
          L1_3 = 1
          L8_1 = L1_3
        end
        L1_3 = InfoCard
        L2_3 = 174
        L3_3 = ""
        L4_3 = 175
        L6_3 = L5_1
        L5_3 = L6_1
        L5_3 = L5_3[L6_3]
        L6_3 = L8_1
        L5_3 = L5_3[L6_3]
        L5_3 = L5_3.colore
        L6_3 = ""
        L8_3 = L5_1
        L7_3 = L6_1
        L7_3 = L7_3[L8_3]
        L8_3 = L8_1
        L7_3 = L7_3[L8_3]
        L7_3 = L7_3.nome
        L8_3 = " ~w~["
        L9_3 = L8_1
        L10_3 = "]"
        L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3
        L6_3 = 303
        L7_3 = "Discard"
        L8_3 = 73
        L9_3 = "Back"
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3 = IsControlJustPressed
        L2_3 = 0
        L3_3 = 175
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = L8_1
          L1_3 = L1_3 + 1
          L8_1 = L1_3
          L1_3 = L8_1
          L3_3 = L5_1
          L2_3 = L6_1
          L2_3 = L2_3[L3_3]
          L2_3 = #L2_3
          if L1_3 > L2_3 then
            L1_3 = 1
            L8_1 = L1_3
          end
        end
        L1_3 = IsControlJustPressed
        L2_3 = 0
        L3_3 = 174
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = L8_1
          L1_3 = L1_3 - 1
          L8_1 = L1_3
          L1_3 = L8_1
          if L1_3 < 1 then
            L2_3 = L5_1
            L1_3 = L6_1
            L1_3 = L1_3[L2_3]
            L1_3 = #L1_3
            L8_1 = L1_3
          end
        end
        L1_3 = IsControlJustPressed
        L2_3 = 0
        L3_3 = 73
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          L1_3 = IsDisabledControlJustPressed
          L2_3 = 0
          L3_3 = 73
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            goto lbl_132
          end
        end
        L1_3 = false
        L10_1 = L1_3
        ::lbl_132::
        L1_3 = IsControlJustPressed
        L2_3 = 0
        L3_3 = 303
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = "Discard card "
          L3_3 = L5_1
          L2_3 = L6_1
          L2_3 = L2_3[L3_3]
          L3_3 = L8_1
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.nome
          L1_3 = L1_3 .. L2_3
          L2_3 = SendNote
          L3_3 = L1_3
          L2_3(L3_3)
          L2_3 = testo3d
          L4_3 = L5_1
          L3_3 = L6_1
          L3_3 = L3_3[L4_3]
          L4_3 = L8_1
          L3_3 = L3_3[L4_3]
          L3_3 = L3_3.nome
          L4_3 = " discarded."
          L3_3 = L3_3 .. L4_3
          L2_3(L3_3)
          L2_3 = table
          L2_3 = L2_3.remove
          L4_3 = L5_1
          L3_3 = L6_1
          L3_3 = L3_3[L4_3]
          L4_3 = L8_1
          L2_3(L3_3, L4_3)
          L2_3 = 1
          L8_1 = L2_3
          L2_3 = false
          L10_1 = L2_3
        end
      else
        L1_3 = L9_1
        if L1_3 then
          L1_3 = L8_1
          L3_3 = L5_1
          L2_3 = L6_1
          L2_3 = L2_3[L3_3]
          L2_3 = #L2_3
          if L1_3 > L2_3 then
            L1_3 = 1
            L8_1 = L1_3
          end
          L2_3 = L5_1
          L1_3 = L6_1
          L1_3 = L1_3[L2_3]
          L1_3 = #L1_3
          if L1_3 > 0 then
            L1_3 = InfoCard
            L2_3 = 174
            L3_3 = ""
            L4_3 = 175
            L6_3 = L5_1
            L5_3 = L6_1
            L5_3 = L5_3[L6_3]
            L6_3 = L8_1
            L5_3 = L5_3[L6_3]
            L5_3 = L5_3.colore
            L6_3 = ""
            L8_3 = L5_1
            L7_3 = L6_1
            L7_3 = L7_3[L8_3]
            L8_3 = L8_1
            L7_3 = L7_3[L8_3]
            L7_3 = L7_3.nome
            L8_3 = " ~w~["
            L9_3 = L8_1
            L10_3 = "/"
            L12_3 = L5_1
            L11_3 = L6_1
            L11_3 = L11_3[L12_3]
            L11_3 = #L11_3
            L12_3 = "]"
            L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3
            L6_3 = 38
            L7_3 = "Posiziona sul tavolo"
            L8_3 = 303
            L9_3 = "Tavolo"
            L10_3 = 73
            L11_3 = "Indietro"
            L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
            L1_3 = IsControlJustPressed
            L2_3 = 0
            L3_3 = 303
            L1_3 = L1_3(L2_3, L3_3)
            if L1_3 then
              L1_3 = SelezionaCarta
              L1_3()
            end
            L1_3 = IsControlJustPressed
            L2_3 = 0
            L3_3 = 175
            L1_3 = L1_3(L2_3, L3_3)
            if L1_3 then
              L1_3 = L8_1
              L1_3 = L1_3 + 1
              L8_1 = L1_3
              L1_3 = L8_1
              L3_3 = L5_1
              L2_3 = L6_1
              L2_3 = L2_3[L3_3]
              L2_3 = #L2_3
              if L1_3 > L2_3 then
                L1_3 = 1
                L8_1 = L1_3
              end
            end
            L1_3 = IsControlJustPressed
            L2_3 = 0
            L3_3 = 174
            L1_3 = L1_3(L2_3, L3_3)
            if L1_3 then
              L1_3 = L8_1
              L1_3 = L1_3 - 1
              L8_1 = L1_3
              L1_3 = L8_1
              if L1_3 < 1 then
                L2_3 = L5_1
                L1_3 = L6_1
                L1_3 = L1_3[L2_3]
                L1_3 = #L1_3
                L8_1 = L1_3
              end
            end
            L1_3 = IsControlJustPressed
            L2_3 = 0
            L3_3 = 38
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              goto lbl_309
            end
            L1_3 = testo3d
            L2_3 = ""
            L1_3(L2_3)
            L1_3 = GetEntityCoords
            L2_3 = PlayerPedId
            L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L2_3()
            L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            L1_3 = L1_3.z
            L1_3 = L1_3 + 0.3
            L14_1 = L1_3
            while true do
              L1_3 = IsDisabledControlPressed
              L2_3 = 0
              L3_3 = 38
              L1_3 = L1_3(L2_3, L3_3)
              if not L1_3 then
                break
              end
              L1_3 = Wait
              L2_3 = 0
              L1_3(L2_3)
            end
            L1_3 = "Placing a card face up"
            L2_3 = SendNote
            L3_3 = L1_3
            L2_3(L3_3)
            L2_3 = PosizionaCarta
            L4_3 = L5_1
            L3_3 = L6_1
            L3_3 = L3_3[L4_3]
            L4_3 = L8_1
            L3_3 = L3_3[L4_3]
            L4_3 = L8_1
            L2_3(L3_3, L4_3)
          else
            L1_3 = false
            L9_1 = L1_3
          end
          ::lbl_309::
          L1_3 = IsDisabledControlJustPressed
          L2_3 = 0
          L3_3 = 73
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = false
            L9_1 = L1_3
          end
        else
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 172
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = L5_1
            L1_3 = L1_3 + 1
            L5_1 = L1_3
            L1_3 = L5_1
            if L1_3 > 5 then
              L1_3 = 1
              L5_1 = L1_3
            end
            L2_3 = L5_1
            L1_3 = L6_1
            L1_3 = L1_3[L2_3]
            if nil == L1_3 then
              L2_3 = L5_1
              L1_3 = L6_1
              L3_3 = {}
              L1_3[L2_3] = L3_3
            end
            L1_3 = AnimCarte
            L1_3()
          end
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 173
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = L5_1
            L1_3 = L1_3 - 1
            L5_1 = L1_3
            L1_3 = L5_1
            if L1_3 < 1 then
              L1_3 = 5
              L5_1 = L1_3
            end
            L2_3 = L5_1
            L1_3 = L6_1
            L1_3 = L1_3[L2_3]
            if nil == L1_3 then
              L2_3 = L5_1
              L1_3 = L6_1
              L3_3 = {}
              L1_3[L2_3] = L3_3
            end
            L1_3 = AnimCarte
            L1_3()
          end
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 175
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = L23_1
            L1_3 = L1_3 + 1
            L23_1 = L1_3
            L1_3 = L23_1
            L2_3 = L24_1
            L2_3 = #L2_3
            if L1_3 > L2_3 then
              L1_3 = 1
              L23_1 = L1_3
            end
            L2_3 = L23_1
            L1_3 = L24_1
            L1_3 = L1_3[L2_3]
            L25_1 = L1_3
          end
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 174
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = L23_1
            L1_3 = L1_3 - 1
            L23_1 = L1_3
            L1_3 = L23_1
            if L1_3 < 1 then
              L1_3 = L24_1
              L1_3 = #L1_3
              L23_1 = L1_3
            end
            L2_3 = L23_1
            L1_3 = L24_1
            L1_3 = L1_3[L2_3]
            L25_1 = L1_3
          end
          L1_3 = InfoCard
          L2_3 = 74
          L3_3 = ""
          L4_3 = 174
          L5_3 = ""
          L6_3 = 175
          L7_3 = "~h~"
          L8_3 = L25_1
          L9_3 = "~h~"
          L7_3 = L7_3 .. L8_3 .. L9_3
          L8_3 = 45
          L9_3 = "Add cards (~h~x"
          L11_3 = L5_1
          L10_3 = L6_1
          L10_3 = L10_3[L11_3]
          L10_3 = #L10_3
          L11_3 = "~h~)"
          L9_3 = L9_3 .. L10_3 .. L11_3
          L10_3 = 303
          L11_3 = "Table"
          L12_3 = 172
          L13_3 = "Change Deck ~h~["
          L14_3 = L5_1
          L15_3 = "/5]~h~"
          L13_3 = L13_3 .. L14_3 .. L15_3
          L14_3 = 173
          L15_3 = ""
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 303
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = SelezionaCarta
            L1_3()
          end
          L1_3 = IsControlJustPressed
          L2_3 = 0
          L3_3 = 74
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = string
            L1_3 = L1_3.find
            L2_3 = L25_1
            L3_3 = "BROWSE"
            L1_3 = L1_3(L2_3, L3_3)
            if L1_3 then
              L2_3 = L5_1
              L1_3 = L6_1
              L1_3 = L1_3[L2_3]
              L1_3 = #L1_3
              if L1_3 > 0 then
                L1_3 = L9_1
                if not L1_3 then
                  L1_3 = true
                  L9_1 = L1_3
                  L1_3 = L9_1
                  if L1_3 then
                    L1_3 = L5_1
                    if 5 == L1_3 then
                      L1_3 = "Browse cards mode (Hand Deck [5], "
                      L3_3 = L5_1
                      L2_3 = L6_1
                      L2_3 = L2_3[L3_3]
                      L2_3 = #L2_3
                      L3_3 = " cards)"
                      L1_3 = L1_3 .. L2_3 .. L3_3
                      L2_3 = SendNote
                      L3_3 = L1_3
                      L2_3(L3_3)
                    else
                      L1_3 = "Browse cards mode (Deck: "
                      L2_3 = L5_1
                      L3_3 = ", "
                      L5_3 = L5_1
                      L4_3 = L6_1
                      L4_3 = L4_3[L5_3]
                      L4_3 = #L4_3
                      L5_3 = " cards)"
                      L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3
                      L2_3 = SendNote
                      L3_3 = L1_3
                      L2_3(L3_3)
                    end
                  end
                  L1_3 = testo3d
                  L2_3 = ""
                  L1_3(L2_3)
                end
              else
                L1_3 = testo3d
                L2_3 = "THE DECK HAS NO CARDS."
                L1_3(L2_3)
              end
            else
              L1_3 = string
              L1_3 = L1_3.find
              L2_3 = L25_1
              L3_3 = "SHUFFLE"
              L1_3 = L1_3(L2_3, L3_3)
              if L1_3 then
                L2_3 = L5_1
                L1_3 = L6_1
                L1_3 = L1_3[L2_3]
                L1_3 = #L1_3
                if 0 == L1_3 then
                  L1_3 = testo3d
                  L2_3 = "THE DECK HAS NO CARDS."
                  L1_3(L2_3)
                else
                  L1_3 = L11_1
                  if not L1_3 then
                    L1_3 = true
                    L11_1 = L1_3
                    L1_3 = "Shuffle cards (Deck: "
                    L2_3 = L5_1
                    L3_3 = ", "
                    L5_3 = L5_1
                    L4_3 = L6_1
                    L4_3 = L4_3[L5_3]
                    L4_3 = #L4_3
                    L5_3 = " cards)"
                    L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3 .. L5_3
                    L2_3 = SendNote
                    L3_3 = L1_3
                    L2_3(L3_3)
                    L2_3 = CreateThread
                    function L3_3()
                      local L0_4, L1_4
                      L0_4 = MischiaMazzoAttuale
                      L0_4()
                    end
                    L2_3(L3_3)
                  end
                end
              else
                L1_3 = string
                L1_3 = L1_3.find
                L2_3 = L25_1
                L3_3 = "PLACE"
                L1_3 = L1_3(L2_3, L3_3)
                if L1_3 then
                  L2_3 = L5_1
                  L1_3 = L6_1
                  L1_3 = L1_3[L2_3]
                  L1_3 = #L1_3
                  if 0 == L1_3 then
                    L1_3 = testo3d
                    L2_3 = "THE DECK HAS NO CARDS."
                    L1_3(L2_3)
                  else
                    L1_3 = math
                    L1_3 = L1_3.random
                    L2_3 = 1
                    L4_3 = L5_1
                    L3_3 = L6_1
                    L3_3 = L3_3[L4_3]
                    L3_3 = #L3_3
                    L1_3 = L1_3(L2_3, L3_3)
                    L2_3 = "Take a random card [Deck: "
                    L3_3 = L5_1
                    L4_3 = "] "
                    L6_3 = L5_1
                    L5_3 = L6_1
                    L5_3 = L5_3[L6_3]
                    L5_3 = #L5_3
                    L6_3 = " cards"
                    L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3 .. L6_3
                    L3_3 = SendNote
                    L4_3 = L2_3
                    L3_3(L4_3)
                    L3_3 = PosizionaCarta
                    L5_3 = L5_1
                    L4_3 = L6_1
                    L4_3 = L4_3[L5_3]
                    L4_3 = L4_3[L1_3]
                    L5_3 = L1_3
                    L6_3 = true
                    L3_3(L4_3, L5_3, L6_3)
                  end
                else
                  L1_3 = string
                  L1_3 = L1_3.find
                  L2_3 = L25_1
                  L3_3 = "DISCARD"
                  L1_3 = L1_3(L2_3, L3_3)
                  if L1_3 then
                    L2_3 = L5_1
                    L1_3 = L6_1
                    L1_3 = L1_3[L2_3]
                    L1_3 = #L1_3
                    if 0 == L1_3 then
                      L1_3 = testo3d
                      L2_3 = "THE DECK HAS NO CARDS."
                      L1_3(L2_3)
                    else
                      L1_3 = L10_1
                      L1_3 = not L1_3
                      L10_1 = L1_3
                      L1_3 = L10_1
                      if not L1_3 then
                        L1_3 = 1
                        L23_1 = L1_3
                        L1_3 = 1
                        L8_1 = L1_3
                        L1_3 = "BROWSE"
                        L25_1 = L1_3
                        L1_3 = "Discard mode closed"
                        L2_3 = SendNote
                        L3_3 = L1_3
                        L2_3(L3_3)
                      else
                        L1_3 = "Discard mode in management"
                        L2_3 = SendNote
                        L3_3 = L1_3
                        L2_3(L3_3)
                      end
                    end
                  else
                    L1_3 = string
                    L1_3 = L1_3.find
                    L2_3 = L25_1
                    L3_3 = "CLEAR"
                    L1_3 = L1_3(L2_3, L3_3)
                    if L1_3 then
                      L1_3 = IsControlPressed
                      L2_3 = 0
                      L3_3 = 21
                      L1_3 = L1_3(L2_3, L3_3)
                      if L1_3 then
                        L2_3 = L5_1
                        L1_3 = L6_1
                        L3_3 = {}
                        L1_3[L2_3] = L3_3
                        L1_3 = testo3d
                        L2_3 = "DECK ID: "
                        L3_3 = L5_1
                        L4_3 = " cleared."
                        L2_3 = L2_3 .. L3_3 .. L4_3
                        L1_3(L2_3)
                        L1_3 = "Cleared deck ID: "
                        L2_3 = L5_1
                        L1_3 = L1_3 .. L2_3
                        L2_3 = SendNote
                        L3_3 = L1_3
                        L2_3(L3_3)
                        L3_3 = L5_1
                        L2_3 = L6_1
                        L4_3 = {}
                        L2_3[L3_3] = L4_3
                      else
                        L1_3 = testo3d
                        L2_3 = "PRESS ALSO SHIFT TO CONFIRM."
                        L1_3(L2_3)
                      end
                    end
                  end
                end
              end
            end
          end
          L1_3 = IsDisabledControlJustPressed
          L2_3 = 0
          L3_3 = 45
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = L5_1
            if 5 == L1_3 then
              L1_3 = testo3d
              L2_3 = "Can't add cards on ~h~hand deck"
              L1_3(L2_3)
            else
              L1_3 = OpenInput
              L2_3 = "Insert search tag"
              L1_3 = L1_3(L2_3)
              if nil ~= L1_3 and "" ~= L1_3 then
                L2_3 = #L1_3
                if L2_3 > 1 then
                  L2_3 = InserisciDaTag
                  L3_3 = L1_3
                  L2_3(L3_3)
                end
              end
            end
          end
        end
      end
      L1_3 = Wait
      L2_3 = 0
      L1_3(L2_3)
    end
    timer3D = 0
    L0_3 = false
    L9_1 = L0_3
    L0_3 = 1
    L8_1 = L0_3
    L0_3 = false
    L10_1 = L0_3
    L0_3 = 1
    L23_1 = L0_3
    L0_3 = "BROWSE"
    L25_1 = L0_3
    L0_3 = ExecuteCommand
    L1_3 = "e cc"
    L0_3(L1_3)
  end
  L0_2(L1_2)
end
LoopInfoCarte = L27_1
function L27_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L5_2 = GetEntityForwardVector
  L6_2 = PlayerPedId
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L6_2()
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L6_2 = table
  L6_2 = L6_2.unpack
  L7_2 = L5_2 * 0.5
  L7_2 = L4_2 + L7_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L9_2 = nil
  L10_2 = nil
  L11_2 = true
  L12_2 = RequestModelStriano
  L13_2 = A0_2.mm
  L12_2(L13_2)
  if nil == A3_2 then
    L12_2 = CreateObject
    L13_2 = GetHashKey
    L14_2 = A0_2.mm
    L13_2 = L13_2(L14_2)
    L14_2 = vector3
    L15_2 = L6_2
    L16_2 = L7_2
    L17_2 = L8_2 - 1.1
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L15_2 = true
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L12_1 = L12_2
  else
    L12_2 = DoesEntityExist
    L13_2 = A3_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = GetEntityCoords
      L13_2 = A3_2
      L12_2 = L12_2(L13_2)
      L9_2 = L12_2
      L12_2 = GetEntityRotation
      L13_2 = A3_2
      L12_2 = L12_2(L13_2)
      L10_2 = L12_2
      L12_1 = A3_2
      L12_2 = Wait
      L13_2 = 7
      L12_2(L13_2)
    end
  end
  L12_2 = DoesEntityExist
  L13_2 = L12_1
  L12_2 = L12_2(L13_2)
  if L12_2 then
    L12_2 = GetEntityRotation
    L13_2 = L12_1
    L12_2 = L12_2(L13_2)
    if nil ~= A2_2 then
      if A2_2 then
        L13_2 = SetEntityRotation
        L14_2 = L12_1
        L15_2 = 180.0
        L16_2 = L12_2.y
        L17_2 = L21_1
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L11_2 = false
      else
        L13_2 = SetEntityRotation
        L14_2 = L12_1
        L15_2 = 0.0
        L16_2 = L12_2.y
        L17_2 = L21_1
        L13_2(L14_2, L15_2, L16_2, L17_2)
      end
    else
      L13_2 = SetEntityRotation
      L14_2 = L12_1
      L15_2 = 0.0
      L16_2 = L12_2.y
      L17_2 = L21_1
      L13_2(L14_2, L15_2, L16_2, L17_2)
    end
    while true do
      L13_2 = L12_1
      if not L13_2 then
        break
      end
      L13_2 = IsDisabledControlPressed
      L14_2 = 0
      L15_2 = 73
      L13_2 = L13_2(L14_2, L15_2)
      if L13_2 then
        break
      end
      L13_2 = DisableAllControlActions
      L14_2 = 0
      L13_2(L14_2)
      L13_2 = DisableAllControlActions
      L14_2 = 1
      L13_2(L14_2)
      L13_2 = DisableAllControlActions
      L14_2 = 2
      L13_2(L14_2)
      L13_2 = CameraZoom
      if not L13_2 then
        L13_2 = IsDisabledControlPressed
        L14_2 = 0
        L15_2 = 21
        L13_2 = L13_2(L14_2, L15_2)
        if L13_2 then
          L13_2 = EnableControlAction
          L14_2 = 0
          L15_2 = 1
          L13_2(L14_2, L15_2)
          L13_2 = EnableControlAction
          L14_2 = 0
          L15_2 = 2
          L13_2(L14_2, L15_2)
        end
      end
      function L13_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        L0_3 = L22_1
        L0_3 = not L0_3
        L22_1 = L0_3
        L0_3 = L22_1
        if not L0_3 then
          L0_3 = exports
          L0_3 = L0_3.striano_core
          L1_3 = L0_3
          L0_3 = L0_3.EndOrbitCam
          L0_3(L1_3)
          L0_3 = FreezeEntityPosition
          L1_3 = PlayerPedId
          L1_3 = L1_3()
          L2_3 = false
          L0_3(L1_3, L2_3)
        else
          L0_3 = GetEntityCoords
          L1_3 = L12_1
          L0_3 = L0_3(L1_3)
          L1_3 = L0_3.x
          L15_1 = L1_3
          L1_3 = L0_3.y
          L16_1 = L1_3
          L1_3 = exports
          L1_3 = L1_3.striano_core
          L2_3 = L1_3
          L1_3 = L1_3.StartOrbitCam
          L3_3 = vector3
          L4_3 = 0.0
          L5_3 = 0.0
          L6_3 = 0.05
          L3_3 = L3_3(L4_3, L5_3, L6_3)
          L4_3 = L12_1
          L5_3 = 25
          L1_3(L2_3, L3_3, L4_3, L5_3)
          L1_3 = FreezeEntityPosition
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L3_3 = true
          L1_3(L2_3, L3_3)
        end
      end
      L14_2 = L22_1
      if L14_2 then
        if L11_2 then
          L14_2 = InfoCard
          L15_2 = 38
          L16_2 = "Place ~h~"
          L17_2 = A0_2.nome
          L18_2 = "~h~"
          L16_2 = L16_2 .. L17_2 .. L18_2
          L17_2 = 45
          L18_2 = "Flip"
          L19_2 = 21
          L20_2 = "Turn 45"
          L21_2 = 22
          L22_2 = "Cam Zoom"
          L23_2 = 73
          L24_2 = "Cancel"
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        else
          L14_2 = InfoCard
          L15_2 = 38
          L16_2 = "Place ~h~Covered Card~h~"
          L17_2 = 45
          L18_2 = "Flip"
          L19_2 = 21
          L20_2 = "Turn 45"
          L21_2 = 22
          L22_2 = "Cam Zoom"
          L23_2 = 73
          L24_2 = "Cancel"
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        end
      elseif L11_2 then
        L14_2 = InfoCard
        L15_2 = 38
        L16_2 = "Enter ~h~"
        L17_2 = A0_2.nome
        L18_2 = "~h~"
        L16_2 = L16_2 .. L17_2 .. L18_2
        L17_2 = 45
        L18_2 = "Flip"
        L19_2 = 21
        L20_2 = "Turn Cam"
        L21_2 = 22
        L22_2 = "Cam Zoom"
        L23_2 = 73
        L24_2 = "Cancel"
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      else
        L14_2 = InfoCard
        L15_2 = 38
        L16_2 = "Enter ~h~Covered Card~h~"
        L17_2 = 45
        L18_2 = "Flip"
        L19_2 = 21
        L20_2 = "Turn Cam"
        L21_2 = 22
        L22_2 = "Cam Zoom"
        L23_2 = 73
        L24_2 = "Cancel"
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      end
      L14_2 = 0.001
      L15_2 = IsDisabledControlPressed
      L16_2 = 0
      L17_2 = 36
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L14_2 = L14_2 * 2
      end
      L15_2 = L22_1
      if L15_2 then
        L15_2 = L13_1
        if nil ~= L15_2 then
          L15_2 = SetEntityCoords
          L16_2 = L12_1
          L17_2 = L15_1
          L18_2 = L16_1
          L19_2 = L13_1.z
          L20_2 = L17_1
          L19_2 = L19_2 + L20_2
          L15_2(L16_2, L17_2, L18_2, L19_2)
          L15_2 = vector3
          L16_2 = L15_1
          L17_2 = L16_1
          L18_2 = L13_1.z
          L19_2 = L17_1
          L18_2 = L18_2 + L19_2
          L15_2 = L15_2(L16_2, L17_2, L18_2)
          L20_1 = L15_2
        end
        L15_2 = L26_1
        L16_2 = GetEntityCoords
        L17_2 = L12_1
        L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L16_2(L17_2)
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L15_2 = GetEntityCoords
        L16_2 = L12_1
        L15_2 = L15_2(L16_2)
        L16_2 = L15_2.x
        L15_1 = L16_2
        L16_2 = L15_2.y
        L16_1 = L16_2
        L16_2 = IsDisabledControlPressed
        L17_2 = 0
        L18_2 = 21
        L16_2 = L16_2(L17_2, L18_2)
        if L16_2 then
          L16_2 = IsDisabledControlPressed
          L17_2 = 0
          L18_2 = 32
          L16_2 = L16_2(L17_2, L18_2)
          if L16_2 then
            L16_2 = L17_1
            L16_2 = L16_2 + L14_2
            L17_1 = L16_2
            L16_2 = L17_1
            L17_2 = 0.07
            if L16_2 > L17_2 then
              L16_2 = 0.7
              L17_1 = L16_2
            end
          end
          L16_2 = IsDisabledControlPressed
          L17_2 = 0
          L18_2 = 33
          L16_2 = L16_2(L17_2, L18_2)
          if L16_2 then
            L16_2 = L17_1
            L16_2 = L16_2 - L14_2
            L17_1 = L16_2
            L16_2 = L17_1
            L17_2 = -0.7
            if L16_2 < L17_2 then
              L16_2 = -0.7
              L17_1 = L16_2
            end
          end
        else
          L16_2 = IsDisabledControlPressed
          L17_2 = 0
          L18_2 = 32
          L16_2 = L16_2(L17_2, L18_2)
          if L16_2 then
            L16_2 = L15_2.y
            L16_2 = L16_2 + L14_2
            L16_1 = L16_2
          end
          L16_2 = IsDisabledControlPressed
          L17_2 = 0
          L18_2 = 33
          L16_2 = L16_2(L17_2, L18_2)
          if L16_2 then
            L16_2 = L15_2.y
            L16_2 = L16_2 - L14_2
            L16_1 = L16_2
          end
        end
        L16_2 = IsDisabledControlPressed
        L17_2 = 0
        L18_2 = 34
        L16_2 = L16_2(L17_2, L18_2)
        if L16_2 then
          L16_2 = L15_2.x
          L16_2 = L16_2 + L14_2
          L15_1 = L16_2
        end
        L16_2 = IsDisabledControlPressed
        L17_2 = 0
        L18_2 = 35
        L16_2 = L16_2(L17_2, L18_2)
        if L16_2 then
          L16_2 = L15_2.x
          L16_2 = L16_2 - L14_2
          L15_1 = L16_2
        end
        L16_2 = L14_1
        L17_2 = GetEntityCoords
        L18_2 = L12_1
        L17_2 = L17_2(L18_2)
        L17_2 = L17_2.z
        L16_2 = L16_2 - L17_2
        L17_2 = 1.5
        if L16_2 > L17_2 then
          if nil == A3_2 then
            L16_2 = SetEntityAsMissionEntity
            L17_2 = L12_1
            L18_2 = true
            L16_2(L17_2, L18_2)
            L16_2 = DeleteEntity
            L17_2 = L12_1
            L16_2(L17_2)
          end
          L16_2 = nil
          L12_1 = L16_2
          L16_2 = L22_1
          if L16_2 then
            L16_2 = exports
            L16_2 = L16_2.striano_core
            L17_2 = L16_2
            L16_2 = L16_2.EndOrbitCam
            L16_2(L17_2)
          end
          L16_2 = 0
          L14_1 = L16_2
          L16_2 = testo3d
          L17_2 = "CARD TOO FAR FROM THE GAME."
          L16_2(L17_2)
          L16_2 = false
          L22_1 = L16_2
          L16_2 = FreezeEntityPosition
          L17_2 = PlayerPedId
          L17_2 = L17_2()
          L18_2 = false
          L16_2(L17_2, L18_2)
          return
        end
      else
        L15_2 = IsDisabledControlPressed
        L16_2 = 0
        L17_2 = 21
        L15_2 = L15_2(L16_2, L17_2)
        if not L15_2 then
          L15_2 = screenToWorld
          L16_2 = 0
          L15_2 = L15_2(L16_2)
          L16_2 = SetEntityCoords
          L17_2 = L12_1
          L18_2 = L15_2.x
          L19_2 = L15_2.y
          L20_2 = L15_2.z
          L21_2 = L17_1
          L20_2 = L20_2 + L21_2
          L16_2(L17_2, L18_2, L19_2, L20_2)
        end
      end
      L15_2 = IsDisabledControlJustPressed
      L16_2 = 0
      L17_2 = 22
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = L13_2
        L15_2()
      end
      L15_2 = IsDisabledControlPressed
      L16_2 = 0
      L17_2 = 172
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = L17_1
        L15_2 = L15_2 + L14_2
        L17_1 = L15_2
        L15_2 = L17_1
        L16_2 = 0.7
        if L15_2 > L16_2 then
          L15_2 = 0.7
          L17_1 = L15_2
        end
      end
      L15_2 = IsDisabledControlPressed
      L16_2 = 0
      L17_2 = 173
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = L17_1
        L15_2 = L15_2 - L14_2
        L17_1 = L15_2
        L15_2 = L17_1
        L16_2 = -0.7
        if L15_2 < L16_2 then
          L15_2 = -0.7
          L17_1 = L15_2
        end
      end
      L15_2 = IsDisabledControlJustPressed
      L16_2 = 0
      L17_2 = 174
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = IsDisabledControlPressed
        L16_2 = 0
        L17_2 = 21
        L15_2 = L15_2(L16_2, L17_2)
        if L15_2 then
          L15_2 = L21_1
          L15_2 = L15_2 + 90.0
          L21_1 = L15_2
        else
          L15_2 = L21_1
          L15_2 = L15_2 + 10.0
          L21_1 = L15_2
        end
        L15_2 = L21_1
        L16_2 = 360
        if L15_2 > L16_2 then
          L15_2 = 0
          L21_1 = L15_2
        end
        L15_2 = GetEntityRotation
        L16_2 = L12_1
        L15_2 = L15_2(L16_2)
        if L11_2 then
          L16_2 = SetEntityRotation
          L17_2 = L12_1
          L18_2 = 0.0
          L19_2 = L15_2.y
          L20_2 = L21_1
          L16_2(L17_2, L18_2, L19_2, L20_2)
        else
          L16_2 = SetEntityRotation
          L17_2 = L12_1
          L18_2 = 180.0
          L19_2 = L15_2.y
          L20_2 = L21_1
          L16_2(L17_2, L18_2, L19_2, L20_2)
        end
      end
      L15_2 = IsDisabledControlJustPressed
      L16_2 = 0
      L17_2 = 175
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = IsDisabledControlPressed
        L16_2 = 0
        L17_2 = 21
        L15_2 = L15_2(L16_2, L17_2)
        if L15_2 then
          L15_2 = L21_1
          L15_2 = L15_2 - 90.0
          L21_1 = L15_2
        else
          L15_2 = L21_1
          L15_2 = L15_2 - 10.0
          L21_1 = L15_2
        end
        L15_2 = L21_1
        if L15_2 < 0 then
          L15_2 = 360
          L21_1 = L15_2
        end
        L15_2 = GetEntityRotation
        L16_2 = L12_1
        L15_2 = L15_2(L16_2)
        if L11_2 then
          L16_2 = SetEntityRotation
          L17_2 = L12_1
          L18_2 = 0.0
          L19_2 = L15_2.y
          L20_2 = L21_1
          L16_2(L17_2, L18_2, L19_2, L20_2)
        else
          L16_2 = SetEntityRotation
          L17_2 = L12_1
          L18_2 = 180.0
          L19_2 = L15_2.y
          L20_2 = L21_1
          L16_2(L17_2, L18_2, L19_2, L20_2)
        end
      end
      L15_2 = IsDisabledControlJustPressed
      L16_2 = 0
      L17_2 = 45
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = GetEntityRotation
        L16_2 = L12_1
        L15_2 = L15_2(L16_2)
        L11_2 = not L11_2
        if L11_2 then
          L16_2 = SetEntityRotation
          L17_2 = L12_1
          L18_2 = 0.0
          L19_2 = L15_2.y
          L20_2 = L21_1
          L16_2(L17_2, L18_2, L19_2, L20_2)
          L16_2 = "Turn over and reveal the card being edited"
          L17_2 = SendNote
          L18_2 = L16_2
          L17_2(L18_2)
        else
          L16_2 = SetEntityRotation
          L17_2 = L12_1
          L18_2 = 180.0
          L19_2 = L15_2.y
          L20_2 = L21_1
          L16_2(L17_2, L18_2, L19_2, L20_2)
          L16_2 = "Flips and covers the paper being edited"
          L17_2 = SendNote
          L18_2 = L16_2
          L17_2(L18_2)
        end
      end
      L15_2 = true
      L16_2 = 1
      L17_2 = L18_1
      L17_2 = #L17_2
      L18_2 = 1
      for L19_2 = L16_2, L17_2, L18_2 do
        L20_2 = L18_1
        L20_2 = L20_2[L19_2]
        L20_2 = L20_2.obj
        L21_2 = L12_1
        if L20_2 ~= L21_2 then
          L20_2 = GetEntityCoords
          L21_2 = L18_1
          L21_2 = L21_2[L19_2]
          L21_2 = L21_2.obj
          L20_2 = L20_2(L21_2)
          L21_2 = GetEntityCoords
          L22_2 = L12_1
          L21_2 = L21_2(L22_2)
          L20_2 = L20_2 - L21_2
          L20_2 = #L20_2
          L21_2 = 0.06
          if L20_2 < L21_2 then
            L15_2 = false
            L20_2 = L1_1
            if nil == L20_2 then
              L20_2 = L3_1
              L21_2 = L12_1
              L20_2(L21_2)
            end
          end
        end
      end
      if L15_2 then
        L16_2 = L1_1
        if L16_2 then
          L16_2 = SetEntityDrawOutline
          L17_2 = L1_1
          L18_2 = false
          L16_2(L17_2, L18_2)
          L16_2 = nil
          L1_1 = L16_2
        end
        L16_2 = IsDisabledControlJustPressed
        L17_2 = 0
        L18_2 = 38
        L16_2 = L16_2(L17_2, L18_2)
        if L16_2 then
          L16_2 = L22_1
          if L16_2 then
            if nil == A3_2 then
              L16_2 = table
              L16_2 = L16_2.remove
              L18_2 = L5_1
              L17_2 = L6_1
              L17_2 = L17_2[L18_2]
              L18_2 = A1_2
              L16_2(L17_2, L18_2)
              L16_2 = RequestModelStriano
              L17_2 = A0_2.mm
              L16_2(L17_2)
              L16_2 = CreateObject
              L17_2 = GetHashKey
              L18_2 = A0_2.mm
              L17_2 = L17_2(L18_2)
              L18_2 = L20_1
              L19_2 = true
              L20_2 = false
              L21_2 = false
              L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
              L17_2 = SetEntityVisible
              L18_2 = L16_2
              L19_2 = false
              L17_2(L18_2, L19_2)
              L17_2 = Wait
              L18_2 = 25
              L17_2(L18_2)
              L17_2 = SetEntityCoords
              L18_2 = L16_2
              L19_2 = L20_1
              L17_2(L18_2, L19_2)
              L17_2 = SetEntityRotation
              L18_2 = L16_2
              L19_2 = GetEntityRotation
              L20_2 = L12_1
              L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L19_2(L20_2)
              L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
              L17_2 = SetEntityVisible
              L18_2 = L16_2
              L19_2 = true
              L17_2(L18_2, L19_2)
              L17_2 = table
              L17_2 = L17_2.insert
              L18_2 = L18_1
              L19_2 = {}
              L19_2.obj = L16_2
              L19_2.carta = A0_2
              L19_2.scoperta = L11_2
              L20_2 = L20_1
              L19_2.pos = L20_2
              L20_2 = GetEntityRotation
              L21_2 = L12_1
              L20_2 = L20_2(L21_2)
              L19_2.rot = L20_2
              L17_2(L18_2, L19_2)
              while true do
                L17_2 = ObjToNet
                L18_2 = L16_2
                L17_2 = L17_2(L18_2)
                if 0 ~= L17_2 then
                  L17_2 = ObjToNet
                  L18_2 = L16_2
                  L17_2 = L17_2(L18_2)
                  if nil ~= L17_2 then
                    break
                  end
                end
                L17_2 = Wait
                L18_2 = 0
                L17_2(L18_2)
              end
              L17_2 = TriggerServerEvent
              L18_2 = "UpdateCardID"
              L19_2 = ObjToNet
              L20_2 = L16_2
              L19_2 = L19_2(L20_2)
              L20_2 = GetPlayerServerId
              L21_2 = PlayerId
              L21_2, L22_2, L23_2, L24_2 = L21_2()
              L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
              L21_2 = L20_1
              L22_2 = GetEntityRotation
              L23_2 = L12_1
              L22_2 = L22_2(L23_2)
              L23_2 = L18_1
              L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
              L17_2 = SetEntityAsMissionEntity
              L18_2 = L12_1
              L19_2 = true
              L17_2(L18_2, L19_2)
              L17_2 = DeleteEntity
              L18_2 = L12_1
              L17_2(L18_2)
              if L11_2 then
                L17_2 = "Dropped "
                L18_2 = A0_2.nome
                L17_2 = L17_2 .. L18_2
                L18_2 = SendNote
                L19_2 = L17_2
                L18_2(L19_2)
              else
                L17_2 = "Dropped covered card"
                L18_2 = SendNote
                L19_2 = L17_2
                L18_2(L19_2)
              end
            else
              L16_2 = L18_1
              L16_2 = L16_2[A1_2]
              L16_2.scoperta = L11_2
              L16_2 = L18_1
              L16_2 = L16_2[A1_2]
              L17_2 = L20_1
              L16_2.pos = L17_2
              L16_2 = L18_1
              L16_2 = L16_2[A1_2]
              L17_2 = GetEntityRotation
              L18_2 = L12_1
              L17_2 = L17_2(L18_2)
              L16_2.rot = L17_2
              if L11_2 then
                L16_2 = "Repositioning "
                L17_2 = L18_1
                L17_2 = L17_2[A1_2]
                L17_2 = L17_2.carta
                L17_2 = L17_2.nome
                L16_2 = L16_2 .. L17_2
                L17_2 = SendNote
                L18_2 = L16_2
                L17_2(L18_2)
              else
                L16_2 = "Repositioning a covered card, ID: "
                L17_2 = A1_2
                L16_2 = L16_2 .. L17_2
                L17_2 = SendNote
                L18_2 = L16_2
                L17_2(L18_2)
              end
            end
            L16_2 = nil
            L12_1 = L16_2
            L16_2 = L22_1
            if L16_2 then
              L16_2 = exports
              L16_2 = L16_2.striano_core
              L17_2 = L16_2
              L16_2 = L16_2.EndOrbitCam
              L16_2(L17_2)
              L16_2 = false
              L22_1 = L16_2
              L16_2 = FreezeEntityPosition
              L17_2 = PlayerPedId
              L17_2 = L17_2()
              L18_2 = false
              L16_2(L17_2, L18_2)
            end
            L16_2 = 0
            L14_1 = L16_2
          else
            L16_2 = L13_2
            L16_2()
          end
        end
      end
      L16_2 = Wait
      L17_2 = 0
      L16_2(L17_2)
    end
    L13_2 = L12_1
    if nil ~= L13_2 then
      if nil ~= A3_2 then
        L13_2 = "Reposition Card Canceled"
        L14_2 = SendNote
        L15_2 = L13_2
        L14_2(L15_2)
      else
        L13_2 = "Cancel Leave Card"
        L14_2 = SendNote
        L15_2 = L13_2
        L14_2(L15_2)
      end
      if nil ~= L9_2 then
        L13_2 = SetEntityCoords
        L14_2 = A3_2
        L15_2 = L9_2
        L13_2(L14_2, L15_2)
        L13_2 = SetEntityRotation
        L14_2 = A3_2
        L15_2 = L10_2
        L13_2(L14_2, L15_2)
        L13_2 = A3_2
        L14_2 = GetEntityCoords
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L15_2 = GetEntityRotation
        L16_2 = L13_2
        L15_2 = L15_2(L16_2)
        L16_2 = TriggerServerEvent
        L17_2 = "UpdateCardID"
        L18_2 = ObjToNet
        L19_2 = L13_2
        L18_2 = L18_2(L19_2)
        L19_2 = GetPlayerServerId
        L20_2 = PlayerId
        L20_2, L21_2, L22_2, L23_2, L24_2 = L20_2()
        L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
        L20_2 = L14_2
        L21_2 = L15_2
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      end
      if nil == A3_2 then
        L13_2 = SetEntityAsMissionEntity
        L14_2 = L12_1
        L15_2 = true
        L13_2(L14_2, L15_2)
        L13_2 = DeleteEntity
        L14_2 = L12_1
        L13_2(L14_2)
      end
      L13_2 = nil
      L12_1 = L13_2
      L13_2 = exports
      L13_2 = L13_2.striano_core
      L14_2 = L13_2
      L13_2 = L13_2.EndOrbitCam
      L13_2(L14_2)
      L13_2 = 0
      L14_1 = L13_2
      L13_2 = false
      L22_1 = L13_2
      L13_2 = FreezeEntityPosition
      L14_2 = PlayerPedId
      L14_2 = L14_2()
      L15_2 = false
      L13_2(L14_2, L15_2)
    end
  end
end
PosizionaCarta = L27_1
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = "Mode: Select card from table"
  L1_2 = SendNote
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L2_2 = GetEntityForwardVector
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = L2_2 * 0.5
  L4_2 = L1_2 + L4_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = RequestModelStriano
  L7_2 = "vw_prop_chip_100dollar_x1"
  L6_2(L7_2)
  L6_2 = CreateObject
  L7_2 = GetHashKey
  L8_2 = "vw_prop_chip_100dollar_x1"
  L7_2 = L7_2(L8_2)
  L8_2 = vector3
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L5_2 - 1.1
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = true
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L12_1 = L6_2
  while true do
    L6_2 = IsDisabledControlPressed
    L7_2 = 0
    L8_2 = 73
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      break
    end
    L6_2 = L12_1
    if nil == L6_2 then
      break
    end
    L6_2 = DisableAllControlActions
    L7_2 = 0
    L6_2(L7_2)
    L6_2 = DisableAllControlActions
    L7_2 = 1
    L6_2(L7_2)
    L6_2 = DisableAllControlActions
    L7_2 = 2
    L6_2(L7_2)
    L6_2 = IsDisabledControlPressed
    L7_2 = 0
    L8_2 = 21
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = EnableControlAction
      L7_2 = 0
      L8_2 = 1
      L6_2(L7_2, L8_2)
      L6_2 = EnableControlAction
      L7_2 = 0
      L8_2 = 2
      L6_2(L7_2, L8_2)
    else
      L6_2 = screenToWorld
      L7_2 = 0
      L6_2 = L6_2(L7_2)
      L7_2 = SetEntityCoords
      L8_2 = L12_1
      L9_2 = L6_2.x
      L10_2 = L6_2.y
      L11_2 = L6_2.z
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
    L6_2 = false
    L7_2 = 1
    L8_2 = L18_1
    L8_2 = #L8_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = GetEntityCoords
      L12_2 = L18_1
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.obj
      L11_2 = L11_2(L12_2)
      L12_2 = GetEntityCoords
      L13_2 = L12_1
      L12_2 = L12_2(L13_2)
      L11_2 = L11_2 - L12_2
      L11_2 = #L11_2
      L12_2 = 0.03
      if L11_2 < L12_2 then
        L11_2 = GetEntityCoords
        L12_2 = PlayerPedId
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2()
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L12_2 = GetEntityCoords
        L13_2 = L12_1
        L12_2 = L12_2(L13_2)
        L11_2 = L11_2 - L12_2
        L11_2 = #L11_2
        if L11_2 < 3.0 then
          L11_2 = L1_1
          if nil == L11_2 then
            L11_2 = L2_1
            L12_2 = L18_1
            L12_2 = L12_2[L10_2]
            L12_2 = L12_2.obj
            L11_2(L12_2)
            L19_1 = L10_2
          end
          L6_2 = true
        end
      end
    end
    if not L6_2 then
      L7_2 = L1_1
      if L7_2 then
        L7_2 = SetEntityDrawOutline
        L8_2 = L1_1
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = nil
        L1_1 = L7_2
        L7_2 = 0
        L19_1 = L7_2
      end
    end
    L7_2 = L19_1
    if L7_2 > 0 then
      L7_2 = DoesEntityExist
      L9_2 = L19_1
      L8_2 = L18_1
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.obj
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L19_1
        L7_2 = L18_1
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.scoperta
        if L7_2 then
          L7_2 = InfoCard
          L8_2 = 38
          L9_2 = "Take ~h~"
          L11_2 = L19_1
          L10_2 = L18_1
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.carta
          L10_2 = L10_2.nome
          L9_2 = L9_2 .. L10_2
          L10_2 = 45
          L11_2 = "Cover card"
          L12_2 = 303
          L13_2 = "Look ID"
          L14_2 = 74
          L15_2 = "Move"
          L16_2 = 21
          L17_2 = "Turn Cam"
          L18_2 = 73
          L19_2 = "Close Sel."
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L7_2 = GetEntityCoords
          L9_2 = L19_1
          L8_2 = L18_1
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.obj
          L7_2 = L7_2(L8_2)
          L8_2 = IsDisabledControlPressed
          L9_2 = 0
          L10_2 = 303
          L8_2 = L8_2(L9_2, L10_2)
          if not L8_2 then
            L8_2 = DrawText3D
            L9_2 = L7_2.x
            L10_2 = L7_2.y
            L11_2 = L7_2.z
            L11_2 = L11_2 + 0.05
            L13_2 = L19_1
            L12_2 = L18_1
            L12_2 = L12_2[L13_2]
            L12_2 = L12_2.carta
            L12_2 = L12_2.nome
            L8_2(L9_2, L10_2, L11_2, L12_2)
          else
            L8_2 = DrawText3D
            L9_2 = L7_2.x
            L10_2 = L7_2.y
            L11_2 = L7_2.z
            L11_2 = L11_2 + 0.05
            L12_2 = "ID: "
            L13_2 = L19_1
            L12_2 = L12_2 .. L13_2
            L8_2(L9_2, L10_2, L11_2, L12_2)
          end
        else
          L7_2 = InfoCard
          L8_2 = 38
          L9_2 = "Take ~h~Cover Card~h~"
          L10_2 = 45
          L11_2 = "Discover the card"
          L12_2 = 74
          L13_2 = "Move"
          L14_2 = 303
          L15_2 = "Look alone"
          L16_2 = 21
          L17_2 = "Turn Cam"
          L18_2 = 73
          L19_2 = "Close Sel."
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L7_2 = IsDisabledControlJustPressed
          L8_2 = 0
          L9_2 = 303
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 then
            L7_2 = testo3d
            L9_2 = L19_1
            L8_2 = L18_1
            L8_2 = L8_2[L9_2]
            L8_2 = L8_2.carta
            L8_2 = L8_2.nome
            L10_2 = L19_1
            L9_2 = L18_1
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.obj
            L7_2(L8_2, L9_2)
            L7_2 = "Look card only yourself ["
            L8_2 = L19_1
            L9_2 = "]"
            L7_2 = L7_2 .. L8_2 .. L9_2
            L8_2 = SendNote
            L9_2 = L7_2
            L8_2(L9_2)
          end
        end
        L7_2 = IsDisabledControlJustPressed
        L8_2 = 0
        L9_2 = 74
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L7_2 = SetEntityAsMissionEntity
          L8_2 = L12_1
          L9_2 = true
          L7_2(L8_2, L9_2)
          L7_2 = DeleteEntity
          L8_2 = L12_1
          L7_2(L8_2)
          L7_2 = nil
          L12_1 = L7_2
          L7_2 = PosizionaCarta
          L9_2 = L19_1
          L8_2 = L18_1
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.carta
          L9_2 = L19_1
          L11_2 = L19_1
          L10_2 = L18_1
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.scoperta
          L10_2 = not L10_2
          L12_2 = L19_1
          L11_2 = L18_1
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.obj
          L7_2(L8_2, L9_2, L10_2, L11_2)
          L7_2 = 1
          L23_1 = L7_2
          L7_2 = "BROWSE"
          L25_1 = L7_2
          L8_2 = L19_1
          L7_2 = L18_1
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.scoperta
          if L7_2 then
            L7_2 = "Repositioned "
            L9_2 = L19_1
            L8_2 = L18_1
            L8_2 = L8_2[L9_2]
            L8_2 = L8_2.carta
            L8_2 = L8_2.nome
            L7_2 = L7_2 .. L8_2
            L8_2 = SendNote
            L9_2 = L7_2
            L8_2(L9_2)
          else
            L7_2 = "Repositioned covered card ["
            L8_2 = L19_1
            L9_2 = "]"
            L7_2 = L7_2 .. L8_2 .. L9_2
            L8_2 = SendNote
            L9_2 = L7_2
            L8_2(L9_2)
          end
          L8_2 = L19_1
          L7_2 = L18_1
          L7_2 = L7_2[L8_2]
          L7_2 = L7_2.obj
          L8_2 = GetEntityCoords
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          L9_2 = GetEntityRotation
          L10_2 = L7_2
          L9_2 = L9_2(L10_2)
          L10_2 = TriggerServerEvent
          L11_2 = "UpdateCardID"
          L12_2 = ObjToNet
          L13_2 = L7_2
          L12_2 = L12_2(L13_2)
          L13_2 = GetPlayerServerId
          L14_2 = PlayerId
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2()
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L14_2 = L8_2
          L15_2 = L9_2
          L16_2 = L18_1
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        end
        L7_2 = IsDisabledControlJustPressed
        L8_2 = 0
        L9_2 = 38
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L7_2 = GetEntityCoords
          L8_2 = PlayerPedId
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2()
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
          L8_2 = GetEntityCoords
          L10_2 = L19_1
          L9_2 = L18_1
          L9_2 = L9_2[L10_2]
          L9_2 = L9_2.obj
          L8_2 = L8_2(L9_2)
          L7_2 = L7_2 - L8_2
          L7_2 = #L7_2
          if L7_2 < 3.0 then
            L7_2 = 5
            L5_1 = L7_2
            L8_2 = L5_1
            L7_2 = L6_1
            L7_2 = L7_2[L8_2]
            if nil == L7_2 then
              L8_2 = L5_1
              L7_2 = L6_1
              L9_2 = {}
              L7_2[L8_2] = L9_2
            end
            L7_2 = table
            L7_2 = L7_2.insert
            L9_2 = L5_1
            L8_2 = L6_1
            L8_2 = L8_2[L9_2]
            L10_2 = L19_1
            L9_2 = L18_1
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.carta
            L7_2(L8_2, L9_2)
            L7_2 = SetEntityAsMissionEntity
            L9_2 = L19_1
            L8_2 = L18_1
            L8_2 = L8_2[L9_2]
            L8_2 = L8_2.obj
            L7_2(L8_2)
            L8_2 = L19_1
            L7_2 = L18_1
            L7_2 = L7_2[L8_2]
            L7_2 = L7_2.scoperta
            if L7_2 then
              L7_2 = "Taken "
              L9_2 = L19_1
              L8_2 = L18_1
              L8_2 = L8_2[L9_2]
              L8_2 = L8_2.carta
              L8_2 = L8_2.nome
              L9_2 = "(Hand: "
              L11_2 = L5_1
              L10_2 = L6_1
              L10_2 = L10_2[L11_2]
              L10_2 = #L10_2
              L11_2 = ")"
              L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
              L8_2 = SendNote
              L9_2 = L7_2
              L8_2(L9_2)
            else
              L7_2 = "Taken covered [ID: "
              L8_2 = L19_1
              L9_2 = "] (Hand: "
              L11_2 = L5_1
              L10_2 = L6_1
              L10_2 = L10_2[L11_2]
              L10_2 = #L10_2
              L11_2 = ")"
              L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
              L8_2 = SendNote
              L9_2 = L7_2
              L8_2(L9_2)
            end
            L8_2 = L19_1
            L7_2 = L18_1
            L7_2 = L7_2[L8_2]
            L7_2 = L7_2.obj
            L8_2 = table
            L8_2 = L8_2.remove
            L9_2 = L18_1
            L10_2 = L19_1
            L8_2(L9_2, L10_2)
            L8_2 = TriggerServerEvent
            L9_2 = "DelCartaID"
            L10_2 = ObjToNet
            L11_2 = L7_2
            L10_2 = L10_2(L11_2)
            L11_2 = L18_1
            L8_2(L9_2, L10_2, L11_2)
          else
            L7_2 = testo3d
            L8_2 = "TOO FAR FROM THE PAPER."
            L7_2(L8_2)
          end
        end
        L7_2 = IsDisabledControlJustPressed
        L8_2 = 0
        L9_2 = 45
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L7_2 = GetEntityRotation
          L9_2 = L19_1
          L8_2 = L18_1
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.obj
          L7_2 = L7_2(L8_2)
          L9_2 = L19_1
          L8_2 = L18_1
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.scoperta
          if not L8_2 then
            L9_2 = L19_1
            L8_2 = L18_1
            L8_2 = L8_2[L9_2]
            L8_2.scoperta = true
            L8_2 = SetEntityRotation
            L10_2 = L19_1
            L9_2 = L18_1
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.obj
            L10_2 = 0.0
            L11_2 = L7_2.y
            L12_2 = L7_2.z
            L8_2(L9_2, L10_2, L11_2, L12_2)
            L8_2 = "He turns over a card ("
            L10_2 = L19_1
            L9_2 = L18_1
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.carta
            L9_2 = L9_2.nome
            L10_2 = ")"
            L8_2 = L8_2 .. L9_2 .. L10_2
            L9_2 = SendNote
            L10_2 = L8_2
            L9_2(L10_2)
          else
            L9_2 = L19_1
            L8_2 = L18_1
            L8_2 = L8_2[L9_2]
            L8_2.scoperta = false
            L8_2 = SetEntityRotation
            L10_2 = L19_1
            L9_2 = L18_1
            L9_2 = L9_2[L10_2]
            L9_2 = L9_2.obj
            L10_2 = 180.0
            L11_2 = L7_2.y
            L12_2 = L7_2.z
            L8_2(L9_2, L10_2, L11_2, L12_2)
            L8_2 = "Covers a card"
            L9_2 = SendNote
            L10_2 = L8_2
            L9_2(L10_2)
          end
          L9_2 = L19_1
          L8_2 = L18_1
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.obj
          L9_2 = GetEntityCoords
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          L10_2 = GetEntityRotation
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          L11_2 = TriggerServerEvent
          L12_2 = "UpdateCardID"
          L13_2 = ObjToNet
          L14_2 = L8_2
          L13_2 = L13_2(L14_2)
          L14_2 = GetPlayerServerId
          L15_2 = PlayerId
          L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2()
          L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
          L15_2 = L9_2
          L16_2 = L10_2
          L17_2 = L18_1
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        end
    end
    else
      L7_2 = L19_1
      if L7_2 > 0 then
        L7_2 = 0
        L19_1 = L7_2
      end
      L7_2 = InfoCard
      L8_2 = 38
      L9_2 = "Select a card with the mouse..."
      L10_2 = 21
      L11_2 = "Turn Cam"
      L12_2 = 73
      L13_2 = "Close Sel."
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L6_2 = L1_1
  if L6_2 then
    L6_2 = SetEntityDrawOutline
    L7_2 = L1_1
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = nil
    L1_1 = L6_2
  end
  L6_2 = SetEntityAsMissionEntity
  L7_2 = L12_1
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = DeleteEntity
  L7_2 = L12_1
  L6_2(L7_2)
  L6_2 = nil
  L12_1 = L6_2
  L6_2 = 1
  L23_1 = L6_2
  L6_2 = "BROWSE"
  L25_1 = L6_2
  L6_2 = 0
  L19_1 = L6_2
end
SelezionaCarta = L27_1
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1
  L0_2 = L6_1
  L0_2 = L0_2[L1_2]
  L2_2 = L5_1
  L1_2 = L6_1
  L3_2 = {}
  L1_2[L2_2] = L3_2
  while true do
    L1_2 = #L0_2
    if not (L1_2 > 0) then
      break
    end
    L1_2 = math
    L1_2 = L1_2.random
    L2_2 = 1
    L3_2 = #L0_2
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L0_2[L1_2]
    if nil ~= L2_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L4_2 = L5_1
      L3_2 = L6_1
      L3_2 = L3_2[L4_2]
      L4_2 = L0_2[L1_2]
      L2_2(L3_2, L4_2)
      L2_2 = table
      L2_2 = L2_2.remove
      L3_2 = L0_2
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    L2_2 = Wait
    L3_2 = 25
    L2_2(L3_2)
  end
  L1_2 = IsEntityPlayingAnim
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = "missheistdockssetup1clipboard@base"
  L4_2 = "base"
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 then
    L1_2 = testo3d
    L2_2 = "DECK CORRECTLY SHUFFLED."
    L1_2(L2_2)
    L1_2 = 1
    L23_1 = L1_2
    L1_2 = 1
    L8_1 = L1_2
    L1_2 = "BROWSE"
    L25_1 = L1_2
  end
  L1_2 = false
  L11_1 = L1_2
end
MischiaMazzoAttuale = L27_1
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L5_1
  L1_2 = L6_1
  L1_2 = L1_2[L2_2]
  if nil == L1_2 then
    L2_2 = L5_1
    L1_2 = L6_1
    L3_2 = {}
    L1_2[L2_2] = L3_2
  end
  L2_2 = L5_1
  L1_2 = L6_1
  L1_2 = L1_2[L2_2]
  L1_2 = #L1_2
  if L1_2 <= 100 then
    L1_2 = 0
    L2_2 = 1
    L3_2 = L4_1
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L4_1
      L6_2 = L6_2[L5_2]
      L7_2 = 1
      L8_2 = L6_2.tag
      L8_2 = #L8_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = L6_2.tag
        L11_2 = L11_2[L10_2]
        L12_2 = tostring
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if L12_2 == A0_2 then
          L12_2 = CeGia
          L13_2 = L6_2.id
          L12_2 = L12_2(L13_2)
          if not L12_2 then
            L12_2 = table
            L12_2 = L12_2.insert
            L14_2 = L5_1
            L13_2 = L6_1
            L13_2 = L13_2[L14_2]
            L14_2 = L4_1
            L14_2 = L14_2[L5_2]
            L12_2(L13_2, L14_2)
            L1_2 = L1_2 + 1
          end
        end
      end
    end
    if L1_2 > 0 then
      L2_2 = testo3d
      L3_2 = "INSERT "
      L4_2 = L1_2
      L5_2 = " CARDS IN DECK ID: "
      L6_2 = L5_1
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
      L2_2(L3_2)
      L2_2 = "Inserted +"
      L3_2 = L1_2
      L4_2 = " cards with tag '"
      L5_2 = A0_2
      L6_2 = "' in the deck "
      L7_2 = L5_1
      L8_2 = " ("
      L10_2 = L5_1
      L9_2 = L6_1
      L9_2 = L9_2[L10_2]
      L9_2 = #L9_2
      L10_2 = " cards)"
      L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
      L3_2 = SendNote
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = ExecuteCommand
      L4_2 = "e cc"
      L3_2(L4_2)
    else
      L2_2 = testo3d
      L3_2 = "TAG NOT DETECTED OR DUPLICATES."
      L2_2(L3_2)
    end
  else
    L1_2 = testo3d
    L2_2 = "YOU CANNOT PUT ANY OTHER CARDS INTO THIS DECK."
    L1_2(L2_2)
  end
end
InserisciDaTag = L27_1
L27_1 = RegisterCommand
L28_1 = "addcard"
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2[1]
  if nil == L2_2 then
    L2_2 = testo3d
    L3_2 = "YOU DIDN'T ENTER WHAT TO ENTER."
    L2_2(L3_2)
    L2_2 = ExecuteCommand
    L3_2 = "e shrug5"
    L2_2(L3_2)
  else
    L2_2 = InserisciDaTag
    L3_2 = tostring
    L4_2 = A1_2[1]
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
end
L27_1(L28_1, L29_1)
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  L1_2 = L6_1
  L1_2 = L1_2[L2_2]
  if nil == L1_2 then
    L2_2 = L5_1
    L1_2 = L6_1
    L3_2 = {}
    L1_2[L2_2] = L3_2
    L1_2 = false
    return L1_2
  end
  L1_2 = 1
  L3_2 = L5_1
  L2_2 = L6_1
  L2_2 = L2_2[L3_2]
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = L5_1
    L5_2 = L6_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.id
    if L5_2 == A0_2 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
CeGia = L27_1
L27_1 = AddEventHandler
L28_1 = "onResourceStop"
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L12_1
    if L1_2 then
      L1_2 = SetEntityAsMissionEntity
      L2_2 = L12_1
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = DeleteEntity
      L2_2 = L12_1
      L1_2(L2_2)
      L1_2 = exports
      L1_2 = L1_2.striano_core
      L2_2 = L1_2
      L1_2 = L1_2.EndOrbitCam
      L1_2(L2_2)
      L1_2 = FreezeEntityPosition
      L2_2 = PlayerPedId
      L2_2 = L2_2()
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = 1
    L2_2 = L18_1
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = SetEntityAsMissionEntity
      L6_2 = L18_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.obj
      L5_2(L6_2)
      L5_2 = DeleteEntity
      L6_2 = L18_1
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.obj
      L5_2(L6_2)
    end
  end
end
L27_1(L28_1, L29_1)
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 1
  L1_2 = L18_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = GetClosestObjectOfType
    L5_2 = L18_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.pos
    L6_2 = 0.1
    L7_2 = GetHashKey
    L8_2 = L18_1
    L8_2 = L8_2[L3_2]
    L8_2 = L8_2.carta
    L8_2 = L8_2.mm
    L7_2 = L7_2(L8_2)
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L4_2 > 0 then
      L5_2 = L18_1
      L5_2 = L5_2[L3_2]
      L5_2.obj = L4_2
    end
  end
end
AggiornaObjNetCarte = L27_1
L27_1 = RegisterNetEvent
L28_1 = "UpdateCardID"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "UpdateCardID"
function L29_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if nil ~= A1_2 then
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    if L5_2 ~= A1_2 then
      L5_2 = A0_2
      L6_2 = 0
      while true do
        L7_2 = NetworkDoesEntityExistWithNetworkId
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        if not (not L7_2 and L6_2 < 100) then
          break
        end
        L6_2 = L6_2 + 1
        L7_2 = Wait
        L8_2 = 10
        L7_2(L8_2)
      end
      L7_2 = NetToObj
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = NetworkRequestControlOfEntity
      L9_2 = L7_2
      L8_2(L9_2)
      L6_2 = 0
      while true do
        L8_2 = NetworkHasControlOfEntity
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if not (not L8_2 and L6_2 < 100) then
          break
        end
        L8_2 = DoesEntityExist
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          break
        end
        L8_2 = Wait
        L9_2 = 1
        L8_2(L9_2)
        L8_2 = NetworkRequestControlOfEntity
        L9_2 = L7_2
        L8_2(L9_2)
        L6_2 = L6_2 + 1
      end
      L8_2 = DoesEntityExist
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = NetworkHasControlOfEntity
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = SetEntityAsMissionEntity
          L9_2 = L7_2
          L10_2 = true
          L8_2(L9_2, L10_2)
          L8_2 = Wait
          L9_2 = 1
          L8_2(L9_2)
        end
      end
      L8_2 = NetToObj
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L9_2 = 0
      while true do
        L10_2 = DoesEntityExist
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if not (not L10_2 and L9_2 < 100) then
          break
        end
        L10_2 = NetToObj
        L11_2 = A0_2
        L10_2 = L10_2(L11_2)
        L8_2 = L10_2
        L9_2 = L9_2 + 1
        L10_2 = Wait
        L11_2 = 0
        L10_2(L11_2)
      end
      L10_2 = DoesEntityExist
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = SetEntityCoords
        L11_2 = L8_2
        L12_2 = A2_2
        L10_2(L11_2, L12_2)
        L10_2 = SetEntityRotation
        L11_2 = L8_2
        L12_2 = A3_2
        L10_2(L11_2, L12_2)
      end
      if nil ~= A4_2 then
        L18_1 = A4_2
        L10_2 = Wait
        L11_2 = 25
        L10_2(L11_2)
        L10_2 = AggiornaObjNetCarte
        L10_2()
      else
      end
    end
  end
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "DelCartaID"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "DelCartaID"
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L3_2 = 0
  while true do
    L4_2 = NetworkDoesEntityExistWithNetworkId
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if not (not L4_2 and L3_2 < 100) then
      break
    end
    L3_2 = L3_2 + 1
    L4_2 = Wait
    L5_2 = 10
    L4_2(L5_2)
  end
  L4_2 = NetToObj
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = NetworkRequestControlOfEntity
  L6_2 = L4_2
  L5_2(L6_2)
  L3_2 = 0
  while true do
    L5_2 = NetworkHasControlOfEntity
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not (not L5_2 and L3_2 < 100) then
      break
    end
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 1
    L5_2(L6_2)
    L5_2 = NetworkRequestControlOfEntity
    L6_2 = L4_2
    L5_2(L6_2)
    L3_2 = L3_2 + 1
  end
  L5_2 = DoesEntityExist
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = NetworkHasControlOfEntity
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = SetEntityAsMissionEntity
      L6_2 = L4_2
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = Wait
      L6_2 = 1
      L5_2(L6_2)
    end
  end
  L5_2 = NetToObj
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  while true do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if not (not L7_2 and L6_2 < 100) then
      break
    end
    L7_2 = NetToObj
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
    L6_2 = L6_2 + 1
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
  end
  L7_2 = DoesEntityExist
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = DeleteEntity
    L8_2 = L5_2
    L7_2(L8_2)
  end
  if nil ~= A1_2 then
    L18_1 = A1_2
    L7_2 = Wait
    L8_2 = 25
    L7_2(L8_2)
    L7_2 = AggiornaObjNetCarte
    L7_2()
  end
end
L27_1(L28_1, L29_1)
function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 7.5
  if A1_2 then
    L2_2 = A1_2
  end
  L3_2 = GetPlayersInArea
  L4_2 = GetEntityCoords
  L5_2 = PlayerPedId
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = GetPlayerServerId
    L9_2 = L3_2[L7_2]
    L8_2 = L8_2(L9_2)
    L3_2[L7_2] = L8_2
  end
  L4_2 = TriggerServerEvent
  L5_2 = "striano_cards:sendNote"
  L6_2 = L3_2
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
end
SendNote = L27_1
L27_1 = RegisterNetEvent
L28_1 = "addNoteCard"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "addNoteCard"
function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PlaySoundFrontend
  L2_2 = -1
  L3_2 = "Pin_Centred"
  L4_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.text = A0_2
  L2_2.action = "newNote"
  L1_2(L2_2)
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "confirmSendCard"
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "confirmSendCard"
function L29_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "clear"
  L0_2(L1_2)
end
L27_1(L28_1, L29_1)
