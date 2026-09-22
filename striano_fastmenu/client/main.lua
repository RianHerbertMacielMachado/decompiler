-- ============================================================
--  striano_fastmenu - client/main.lua
--  Menu rápido radial via NUI — sistema de itens com callbacks
-- ============================================================

-- Estado interno do menu
local menuState = {
    title         = "FastMenu",
    items         = {},
    position      = "center",
    autoClose     = false,
    visible       = false,
    hoverCooldown = 300,   -- ms mínimos entre disparos de hover
}

local closeWithXEnabled = false
local hoverTimestamps   = {}   -- [itemId] = último timestamp de hover

-- ------------------------------------------------------------
-- Export: ativar/desativar fechar com botão X
-- ------------------------------------------------------------

exports("closeWithX", function(enabled)
    closeWithXEnabled = enabled == true
    SendNUIMessage({ type = "setCloseWithX", enabled = closeWithXEnabled })
end)

-- ------------------------------------------------------------
-- Helpers internos
-- ------------------------------------------------------------

--- Constrói a versão serializável do menu para envio à NUI.
local function buildMenuPayload()
    local payload = {
        title    = menuState.title,
        position = menuState.position,
        items    = {},
    }
    for _, item in ipairs(menuState.items) do
        table.insert(payload.items, {
            id        = item.id,
            label     = item.label,
            color     = item.color,
            hoverInfo = item.hoverInfo or nil,
        })
    end
    return payload
end

--- Busca um item pelo seu id; retorna nil se não encontrado.
local function findItemById(itemId)
    for _, item in ipairs(menuState.items) do
        if item.id == itemId then
            return item
        end
    end
    return nil
end

--- Envia uma atualização de menu para a NUI (apenas se o menu estiver aberto).
local function sendMenuUpdate()
    if menuState.visible then
        SendNUIMessage({ type = "updateMenu", data = buildMenuPayload() })
    end
end

-- ------------------------------------------------------------
-- Funções públicas de controlo do menu
-- ------------------------------------------------------------

--- Abre o menu (ou atualiza se já estiver aberto).
function openMenu()
    if not menuState.visible then
        -- Aguardar soltura de teclas de conflito antes de abrir
        while IsControlPressed(0, 25) or IsDisabledControlPressed(0, 25) do
            Wait(0)
        end
        Wait(0)

        menuState.visible = true
        SetNuiFocus(true, true)
        SendNUIMessage({ type = "openMenu", data = buildMenuPayload() })

        -- Thread de fechar com ESC / tecla de conflito
        CreateThread(function()
            Wait(25)
            while menuState.visible do
                Wait(0)
                local esc     = IsControlPressed(0, 322)         or IsDisabledControlPressed(0, 322)
                local conflict = IsControlPressed(0, 25)          or IsDisabledControlPressed(0, 25)
                if esc or conflict then
                    closeMenu()
                end
            end
        end)
    else
        -- Já aberto: apenas atualizar dados
        menuState.visible = true
        SendNUIMessage({ type = "updateMenu", data = buildMenuPayload() })
    end
end

exports("open", function()
    openMenu()
end)

exports("opened", function()
    return menuState.visible
end)

--- Fecha o menu.
function closeMenu()
    menuState.visible = false
    SetNuiFocus(false, false)
    SendNUIMessage({ type = "closeMenu" })
end

exports("close", function()
    closeMenu()
end)

-- ------------------------------------------------------------
-- Adicionar itens
-- ------------------------------------------------------------

--- Adiciona um item simples (label + callback + autoClose).
function addMenuItem(label, callback, autoClose)
    addMenuItemAdvanced({
        label     = label,
        onClick   = callback,
        autoClose = autoClose,
    })
end

exports("addMenuItem", function(label, callback, autoClose)
    addMenuItemAdvanced({ label = label, onClick = callback, autoClose = autoClose })
end)

--- Adiciona um item com suporte a hover callback.
function addMenuItemHover(label, onClick, onHover, autoClose, hoverInfo)
    addMenuItemAdvanced({
        label     = label,
        onClick   = onClick,
        onHover   = onHover,
        autoClose = autoClose,
        hoverInfo = hoverInfo,
    })
end

exports("addMenuItemHover", function(label, onClick, onHover, autoClose, hoverInfo)
    addMenuItemAdvanced({
        label     = label,
        onClick   = onClick,
        onHover   = onHover,
        autoClose = autoClose,
        hoverInfo = hoverInfo,
    })
end)

--- Adiciona um item com todas as opções (forma canônica).
function addMenuItemAdvanced(opts)
    if type(opts) ~= "table" then return end

    local label     = tostring(opts.label or "Item")
    local onClick   = opts.onClick
    local onHover   = opts.onHover
    local autoClose = opts.autoClose
    local hoverInfo = opts.hoverInfo
    local color     = opts.color

    if autoClose == nil then
        autoClose = menuState.autoClose
    end

    local newId = #menuState.items + 1
    table.insert(menuState.items, {
        id            = newId,
        label         = label,
        callback      = onClick,
        hoverCallback = onHover,
        autoClose     = autoClose,
        hoverInfo     = hoverInfo,
        color         = color,
    })

    sendMenuUpdate()
end

exports("addMenuItemAdvanced", function(opts)
    addMenuItemAdvanced(opts)
end)

-- ------------------------------------------------------------
-- Remover / limpar itens
-- ------------------------------------------------------------

--- Remove o item com o id fornecido e renumera os restantes.
function removeMenuItem(itemId)
    for i, item in ipairs(menuState.items) do
        if item.id == itemId then
            table.remove(menuState.items, i)
            break
        end
    end
    -- Renumerar IDs após remoção
    for i, item in ipairs(menuState.items) do
        item.id = i
    end
    sendMenuUpdate()
end

exports("removeMenuItem", function(itemId)
    removeMenuItem(itemId)
end)

--- Remove todos os itens do menu.
function clearMenu()
    menuState.items   = {}
    hoverTimestamps   = {}
    sendMenuUpdate()
end

exports("clearMenu", function()
    clearMenu()
end)

-- ------------------------------------------------------------
-- Configurações do menu
-- ------------------------------------------------------------

--- Define a posição do menu (center, top-left, top-right, bottom-left, bottom-right).
function setMenuPosition(position)
    local valid = { center = true, ["top-left"] = true, ["top-right"] = true, ["bottom-left"] = true, ["bottom-right"] = true }
    if valid[position] then
        menuState.position = position
    end
    sendMenuUpdate()
end

exports("setMenuPosition", function(position)
    setMenuPosition(position)
end)

--- Define se os itens fecham o menu automaticamente ao ser clicados.
function setAutoClose(value)
    menuState.autoClose = value == true
end

exports("setAutoClose", function(value)
    setAutoClose(value)
end)

--- Define o cooldown (ms) entre disparos de hover para o mesmo item.
function setHoverCooldown(ms)
    ms = tonumber(ms) or 300
    if ms < 0 then ms = 0 end
    menuState.hoverCooldown = ms
end

exports("setHoverCooldown", function(ms)
    setHoverCooldown(ms)
end)

-- ------------------------------------------------------------
-- Callbacks NUI
-- ------------------------------------------------------------

--- Item clicado pelo utilizador.
RegisterNUICallback("menuItemClicked", function(data, cb)
    local itemId = data and data.itemId or nil
    local item   = findItemById(itemId)

    if not item then
        cb("ok")
        return
    end

    local callback  = item.callback
    local autoClose = item.autoClose
    local snapshot  = menuState.items   -- referência antes de possível fecho

    if callback then callback() end

    -- Fechar apenas se autoClose estiver ativo E os itens não mudaram (callback não limpou tudo)
    if autoClose and menuState.items == snapshot then
        closeMenu()
    end

    cb("ok")
end)

--- Item focado (hover) pelo utilizador.
RegisterNUICallback("menuItemHovered", function(data, cb)
    local itemId = data and data.itemId or nil
    local item   = findItemById(itemId)

    if item and item.hoverCallback then
        local now      = GetGameTimer()
        local lastTime = hoverTimestamps[itemId] or 0

        if now - lastTime >= menuState.hoverCooldown then
            hoverTimestamps[itemId] = now
            item.hoverCallback()
        end
    end

    cb("ok")
end)

--- Pedido de fecho vindo da NUI (botão X ou tecla Escape dentro da UI).
RegisterNUICallback("closeMenu", function(data, cb)
    closeMenu()
    cb("ok")
end)

--- Cancelar animação (chamado internamente pela NUI em alguns fluxos).
RegisterNUICallback("cancelAnim", function(data, cb)
    ExecuteCommand("stopAnim")
    cb("ok")
end)
