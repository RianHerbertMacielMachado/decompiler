-- ============================================================
--  striano_core - client/guarda_arma.lua
--  Animação de guardar arma (fidget idle)
-- ============================================================

local ANIM_DICT = "weapons@first_person@aim_idle@p_m_zero@pistol@shared@fidgets@c"
local ANIM_NAME = "fidget_med_loop"

--- Executar a animação de guardar a arma se o jogador estiver armado e em pé
local function doGuardaArma()
    local ped = PlayerPedId()

    -- Só executar se armado (flags de arma = 4)
    if not IsPedArmed(ped, 4) then return end

    -- Não executar se já está a fazer a animação ou em cobertura
    if IsEntityPlayingAnim(ped, ANIM_DICT, ANIM_NAME, 3) then return end
    if IsPedInCover(ped) or IsPedInHighCover(ped)         then return end

    -- Carregar o dicionário de animação
    if not HasAnimDictLoaded(ANIM_DICT) then
        RequestAnimDict(ANIM_DICT)
        while not HasAnimDictLoaded(ANIM_DICT) do
            Wait(0)
        end
    end

    -- Iniciar a animação
    TaskPlayAnim(ped, ANIM_DICT, ANIM_NAME, 2.0, 2.0, 5000, 48, 0, false, false, false)
    Wait(125)

    -- Thread de monitorização: parar animação ao disparar ou interagir
    CreateThread(function()
        while true do
            if not IsEntityPlayingAnim(ped, ANIM_DICT, ANIM_NAME, 3) then break end

            if IsPedShooting(ped)             then ClearPedTasks(ped) break end
            if IsControlPressed(24)           then ClearPedTasks(ped) break end
            if IsControlPressed(0, 25)        then ClearPedTasks(ped) break end

            Wait(0)
        end
    end)
end

--- Comando /guardaarma
RegisterCommand("guardaarma", function()
    doGuardaArma()
end, false)
