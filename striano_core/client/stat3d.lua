-- ============================================================
--  striano_core - client/stat3d.lua
--  Utilitários de exibição 3D e comando /hide (invisibilidade admin)
-- ============================================================

-- Configurações internas
local DECIMAL_PLACES = 4   -- casas decimais para exibição (reservado)
local hideActive     = false

-- ------------------------------------------------------------
-- Helpers matemáticos
-- ------------------------------------------------------------

--- Arredondar um número para o inteiro mais próximo.
local function roundInt(n)
    if n >= 0 then
        return math.floor(n + 0.5)
    else
        return math.ceil(n - 0.5)
    end
end

--- Formatar um número com 2 casas decimais e retornar como número.
local function round2(n)
    return tonumber(string.format("%.2f", n))
end

-- ------------------------------------------------------------
-- Comando /hide — tornar-se invisível (apenas admins)
-- ------------------------------------------------------------

RegisterCommand("hide", function()
    local adminLevel = LocalPlayer.state and LocalPlayer.state.adminLevel or 0
    if adminLevel == 0 then return end

    local ped = PlayerPedId()

    if not hideActive then
        -- Ocultar
        hideActive = true
        SetEntityVisible(ped, false, false)
        NetworkSetEntityInvisibleToNetwork(ped, false)
    else
        -- Mostrar novamente
        hideActive = false
        SetEntityAlpha(ped, 255)
        SetEntityVisible(ped, true, false)
        NetworkSetEntityInvisibleToNetwork(ped, true)
    end
end)
