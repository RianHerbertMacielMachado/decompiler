-- ============================================================
--  striano_admin - server/main.lua
--  Lógica de servidor do sistema de administração
-- ============================================================

-- ------------------------------------------------------------
-- Tabelas de estado
-- ------------------------------------------------------------

if not AdminLevel then AdminLevel = {} end   -- [srcId] = nível de admin em cache

-- Admins hardcoded por identifier (configuração base no fxmanifest)
ADMIN_BY_IDENTIFIER = {
    ["license:9febe2dc3b17fc6228bfbbb2a04fc3bb10b23636"] = 1,
}

-- Permissões de grupos por funcionalidade
GROUPS = GROUPS or {}
GROUPS.player       = 2
GROUPS.world        = 2
GROUPS.vehicles     = 2
GROUPS.weapons      = 2
GROUPS.time_weather = 2
GROUPS.misc         = 2
GROUPS.appearance   = 2
GROUPS.debug        = 1

-- Ficheiro JSON onde os admins persistidos são guardados
local ADMINS_FILE = "admins.json"
local savedAdmins = {}   -- tabela carregada do JSON

-- Tabelas anti-spam para abertura do menu
local menuOpenTimestamps = {}   -- [srcId] = último timestamp de abertura
local menuOpenWindowEnd  = {}   -- [srcId] = timestamp até onde a janela está válida

local MENU_OPEN_COOLDOWN_MS = GetConvarInt("cqadmin_open_menu_window_ms", 1000)
local MENU_WINDOW_MS        = GetConvarInt("cqadmin_cap_open_window_ms", 300000)

-- ------------------------------------------------------------
-- Persistência do JSON de admins
-- ------------------------------------------------------------

local function loadAdmins()
    local raw = LoadResourceFile(GetCurrentResourceName(), ADMINS_FILE)
    if raw and raw ~= "" then
        local ok, decoded = pcall(json.decode, raw)
        if ok and type(decoded) == "table" then
            savedAdmins = decoded
        else
            savedAdmins = {}
            print("^1[striano_admin]^0 admins.json corrupted or empty.")
        end
    else
        savedAdmins = {}
    end
end

local function saveAdmins()
    SaveResourceFile(GetCurrentResourceName(), ADMINS_FILE, json.encode(savedAdmins, { indent = true }), -1)
end

-- ------------------------------------------------------------
-- Helpers de identifiers
-- ------------------------------------------------------------

--- Retorna a lista de identifiers do jogador ou {} em caso de falha.
local function getPlayerIdentifiers(src)
    local ids = GetPlayerIdentifiers(src)
    return (type(ids) == "table") and ids or {}
end

--- Retorna o identifier principal (prioridade: license > steam > discord > primeiro).
local function getPrimaryIdentifier(src)
    local ids = getPlayerIdentifiers(src)
    for _, id in ipairs(ids) do
        if id:find("license:", 1, true) == 1 then return id end
    end
    for _, id in ipairs(ids) do
        if id:find("steam:", 1, true) == 1 then return id end
    end
    for _, id in ipairs(ids) do
        if id:find("discord:", 1, true) == 1 then return id end
    end
    return ids[1]
end

--- Retorna o primeiro identifier do jogador que começa com um prefixo específico.
local function getIdentifierByPrefix(src, prefix)
    for _, id in ipairs(getPlayerIdentifiers(src)) do
        if id:find(prefix, 1, true) == 1 then return id end
    end
    return nil
end

-- ------------------------------------------------------------
-- Nível de admin
-- ------------------------------------------------------------

--- Lê o nível de admin bruto nos dicionários (sem cache).
local function resolveAdminLevel(src)
    local level = 0
    for _, id in ipairs(getPlayerIdentifiers(src)) do
        local lv = savedAdmins[id] or ADMIN_BY_IDENTIFIER[id]
        if lv ~= nil then
            lv = tonumber(lv) or 0
            if lv > 0 and (level == 0 or level > lv) then
                level = lv
            end
        end
    end
    return level
end

--- Atualiza o cache e o state do jogador e retorna o nível.
local function refreshAdminLevel(src)
    src = tonumber(src) or 0
    if src <= 0 then return 0 end

    local lv = resolveAdminLevel(src)
    AdminLevel[src] = lv

    local p = Player(src)
    if p and p.state then
        p.state.adminLevel = lv
        p.state.isAdmin    = lv > 0
    end
    return lv
end

--- Retorna o nível de admin do jogador (com cache).
function GetAdminLevel(src)
    src = tonumber(src) or 0
    if src <= 0 then return 0 end
    local cached = AdminLevel[src]
    if not cached then
        cached = refreshAdminLevel(src)
        if not cached then cached = 0 end
    end
    return cached
end

--- Verifica se o jogador tem ao menos o nível mínimo pedido.
function IsAdmin(src, minLevel)
    src      = tonumber(src)      or 0
    minLevel = tonumber(minLevel) or 1
    if src <= 0 then return false end
    local lv = GetAdminLevel(src)
    return lv > 0 and minLevel >= lv
end

exports("GetAdminLevel", GetAdminLevel)
exports("adminlv",       GetAdminLevel)
exports("IsAdmin",       IsAdmin)
exports("imadmin",       IsAdmin)
exports("admin",         IsAdmin)

-- ------------------------------------------------------------
-- Helper: nome legível do nível
-- ------------------------------------------------------------

local function adminLevelName(lv)
    lv = tonumber(lv) or 0
    if lv == 1 then return "SuperAdmin" end
    if lv == 2 then return "Admin"      end
    if lv == 3 then return "Mod"        end
    return "None"
end

-- ------------------------------------------------------------
-- Helper: enviar mensagem de animação / chat ao cliente
-- ------------------------------------------------------------

local function sendAnimCmd(src, cmd)
    TriggerClientEvent("anim:cmd", src, cmd)
end

-- ------------------------------------------------------------
-- Eventos de ciclo de vida do jogador
-- ------------------------------------------------------------

AddEventHandler("playerJoining", function()
    refreshAdminLevel(source)
end)

AddEventHandler("playerDropped", function()
    AdminLevel[source] = nil
end)

AddEventHandler("onResourceStart", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    loadAdmins()
    for _, srcStr in ipairs(GetPlayers()) do
        refreshAdminLevel(tonumber(srcStr))
    end
end)

-- ------------------------------------------------------------
-- Comandos de gestão de admins
-- ------------------------------------------------------------

--- /adminlist — lista todos os admins (requer lv 1)
RegisterCommand("adminlist", function(src, args)
    if not IsAdmin(src, 1) then
        sendAnimCmd(src, "No permission.")
        return
    end

    local lines = { "^3==== ADMIN LIST ====" }

    -- Admins da configuração base
    table.insert(lines, "^5[CONFIG BASE]^7")
    local hasBase = false
    for id, lv in pairs(ADMIN_BY_IDENTIFIER or {}) do
        hasBase = true
        table.insert(lines, string.format("- %s | lv %s (%s)", id, tostring(lv), adminLevelName(lv)))
    end
    if not hasBase then table.insert(lines, "- No admins in list.") end

    -- Admins persistidos no JSON
    table.insert(lines, "^2[ADMINS SAVED]^7")
    local hasSaved = false
    for id, lv in pairs(savedAdmins or {}) do
        hasSaved = true
        table.insert(lines, string.format("- %s | lv %s (%s)", id, tostring(lv), adminLevelName(lv)))
    end
    if not hasSaved then table.insert(lines, "- No saved admins.") end

    -- Enviar ao cliente linha a linha
    for _, line in ipairs(lines) do
        TriggerClientEvent("chat:addMessage", src, {
            color     = { 255, 180, 80 },
            multiline = true,
            args      = { "ADMIN", line },
        })
    end

    print("[striano_admin] /adminlist requested by", GetPlayerName(src) or "Unknown", src)
end, false)

--- /setadmin [id] [lv] — adiciona ou atualiza nível de admin
RegisterCommand("setadmin", function(src, args)
    if not IsAdmin(src, 1) then
        sendAnimCmd(src, "No permission.")
        return
    end

    local targetId = tonumber(args[1] or 0)
    local newLevel = tonumber(args[2] or 0)

    if targetId <= 0 or not GetPlayerName(targetId) then
        sendAnimCmd(src, "/setadmin [id] [lv]")
        return
    end
    if newLevel <= 0 or newLevel > 3 then
        sendAnimCmd(src, "Lv not valid. 1 (Super admin), 2 (Admin), 3 (Mod).")
        return
    end

    local identifier = getPrimaryIdentifier(targetId)
    if not identifier then
        sendAnimCmd(src, "Identifier not found.")
        return
    end

    savedAdmins[identifier] = newLevel
    saveAdmins()

    local finalLevel = refreshAdminLevel(targetId)

    sendAnimCmd(src, string.format(
        "Admin added %s[ID %d] LV: %d. Identifier: %s",
        GetPlayerName(targetId) or "Unknow", targetId, finalLevel, identifier
    ))
    sendAnimCmd(targetId, string.format("You are admin lv %d now.", finalLevel))

    print(string.format(
        "[striano_admin] %s[%d] new Admin added %s[%d] (LV: %d) (%s)",
        GetPlayerName(src) or "Unknown", src,
        GetPlayerName(targetId) or "Unknown", targetId,
        finalLevel, identifier
    ))
end, false)

--- /removeadmin [id] — remove o admin de um jogador
RegisterCommand("removeadmin", function(src, args)
    if not IsAdmin(src, 1) then
        sendAnimCmd(src, "No permission.")
        return
    end

    local targetId = tonumber(args[1] or 0)
    if targetId <= 0 or not GetPlayerName(targetId) then
        sendAnimCmd(src, "/removeadmin [id]")
        return
    end

    local identifier = getPrimaryIdentifier(targetId)
    if not identifier then
        sendAnimCmd(src, "Identifier not found.")
        return
    end

    -- Verificar se é admin em alguma das listas
    if not savedAdmins[identifier] and not ADMIN_BY_IDENTIFIER[identifier] then
        sendAnimCmd(src, "This player is not an admin.")
        return
    end

    savedAdmins[identifier] = nil
    saveAdmins()

    local finalLevel = refreshAdminLevel(targetId)

    sendAnimCmd(src, string.format(
        "Admin removed %s [ID %d]. LV: %d",
        GetPlayerName(targetId) or "Unknow", targetId, finalLevel
    ))
    sendAnimCmd(targetId, "Admin rule removed.")

    print(string.format(
        "[striano_admin] %s[%d] remove %s[%d] (%s) from admin",
        GetPlayerName(src) or "Unknown", src,
        GetPlayerName(targetId) or "Unknown", targetId,
        identifier
    ))
end, false)

-- ------------------------------------------------------------
-- Eventos de rede: menu de admin
-- ------------------------------------------------------------

--- Pedido de abertura do menu de admin (com anti-spam)
RegisterNetEvent("striano_admin:sv:openMenuRequest")
AddEventHandler("striano_admin:sv:openMenuRequest", function(altSrc)
    local src = source
    if not src or src <= 0 then
        src = tonumber(altSrc) or 0
    end
    if not src or src <= 0 then return end

    local now      = GetGameTimer()
    local lastOpen = menuOpenTimestamps[src] or 0

    if now - lastOpen < MENU_OPEN_COOLDOWN_MS then return end

    menuOpenTimestamps[src] = now

    if GetAdminLevel(src) <= 0 then return end

    menuOpenWindowEnd[src] = now + MENU_WINDOW_MS
    local token = string.format("open-%d-%d", src, now)
    TriggerClientEvent("striano_admin:cl:open", src, token)
end)

--- Pedido de capacidades disponíveis para este admin
RegisterNetEvent("striano_admin:sv:requestCapabilities")
AddEventHandler("striano_admin:sv:requestCapabilities", function()
    local src   = source
    local level = GetAdminLevel(src)

    local caps = {
        player       = false,
        world        = false,
        debug        = false,
        vehicles     = false,
        weapons      = false,
        time_weather = false,
        misc         = false,
        appearance   = false,
    }

    if level == 1 then
        -- SuperAdmin: tudo
        for k in pairs(caps) do caps[k] = true end
    elseif level == 2 then
        -- Admin: tudo menos debug
        caps.player       = true
        caps.world        = true
        caps.vehicles     = true
        caps.weapons      = true
        caps.time_weather = true
        caps.misc         = true
        caps.appearance   = true
    elseif level == 3 then
        -- Mod: apenas player e misc
        caps.player = true
        caps.misc   = true
    end

    TriggerClientEvent("striano_admin:cl:setCapabilities", src, caps)
end)

--- Pedido de lista de itens do inventário
RegisterNetEvent("striano_admin:sv:reqItemsList")
AddEventHandler("striano_admin:sv:reqItemsList", function()
    local src   = source
    local items = {}

    local inv = exports.striano_inventory
    if inv and inv.GetAllItems then
        items = exports.striano_inventory:GetAllItems() or {}
    end

    TriggerClientEvent("striano_admin:cl:setItemsList", src, items)
end)

--- Pedido de lista de jogadores online (ordenada por nome)
RegisterNetEvent("striano_admin:sv:reqPlayersList")
AddEventHandler("striano_admin:sv:reqPlayersList", function()
    local src     = source
    local players = {}

    for _, srcStr in ipairs(GetPlayers()) do
        local id   = tonumber(srcStr)
        local name = GetPlayerName(srcStr)
        if not name then name = string.format("ID %s", srcStr) end
        table.insert(players, { id = id, name = name })
    end

    table.sort(players, function(a, b)
        return tostring(a.name):lower() < tostring(b.name):lower()
    end)

    TriggerClientEvent("striano_admin:cl:setPlayersList", src, players)
end)

--- Versão alternativa do pedido de itens (typo "sriano" mantido por compatibilidade)
RegisterNetEvent("sriano_admin:sv:reqItemsList")
AddEventHandler("sriano_admin:sv:reqItemsList", function()
    local src   = source
    local items = exports.striano_inventory:GetAllItems() or {}
    TriggerClientEvent("sriano_admin:cl:setItemsList", src, items)
end)

--- Dar item a si mesmo via admin
RegisterNetEvent("sriano_admin:sv:giveItem")
AddEventHandler("sriano_admin:sv:giveItem", function(itemName, quantity)
    local src = source
    quantity  = math.max(1, tonumber(quantity) or 1)
    TriggerEvent("inv3d:serverGiveItem", src, "player", itemName, quantity)
end)

-- ------------------------------------------------------------
-- Chaves de veículos
-- ------------------------------------------------------------

--- Retorna as chaves detidas por um jogador a partir do source
function GetPlayerKeysFromSource(src)
    local ids   = GetPlayerIdentifiers(src)
    local ident = ids[1]
    for _, id in ipairs(ids) do
        if id:find("license:", 1, true) == 1 then
            ident = id
            break
        end
    end
    local keys = exports.striano_core:KeysListHeld(ident)
    return keys or {}
end

--- Pedido de chaves de um jogador (via evento antigo)
RegisterNetEvent("striano_admin:getPlayerKeys")
AddEventHandler("striano_admin:getPlayerKeys", function(targetSrc)
    local src   = source
    local ids   = GetPlayerIdentifiers(targetSrc)
    local ident = ids[1]
    for _, id in ipairs(ids) do
        if id:find("license:", 1, true) == 1 then
            ident = id
            break
        end
    end
    local keys = exports.striano_core:KeysListHeld(ident) or {}
    TriggerClientEvent("striano_admin:receivePlayerKeys", src, targetSrc, keys)
end)

--- Pedido de chaves de um jogador (via evento novo)
RegisterNetEvent("striano_admin:sv:getPlayerKeys")
AddEventHandler("striano_admin:sv:getPlayerKeys", function(targetSrc)
    local src = source
    if not IsAdmin(src) then return end

    targetSrc = tonumber(targetSrc)
    if not targetSrc or not GetPlayerName(targetSrc) then
        TriggerClientEvent("striano_admin:cl:receivePlayerKeys", src, targetSrc or -1, {})
        return
    end

    local ident = exports.phar:identOf(targetSrc)
    local keys  = exports.striano_core:KeysListHeld(ident) or {}
    TriggerClientEvent("striano_admin:cl:receivePlayerKeys", src, targetSrc, keys)
end)

--- Destruir uma chave específica (admin)
RegisterNetEvent("striano_admin:sv:adminDestroyKey")
AddEventHandler("striano_admin:sv:adminDestroyKey", function(keyId)
    local src = source
    if not IsAdmin(src) then return end
    if type(keyId) ~= "string" then return end

    local ok, errMsg

    if keyId:sub(1, 4) == "TMP_" then
        -- Chave temporária
        ok, errMsg = exports.striano_core:TempKeyDestroy(keyId)
        local msg  = ok and "Temp key destroyed" or ("Failed: " .. tostring(errMsg))
        TriggerClientEvent("striano_keys:cl:notify", src, msg)
    else
        -- Chave permanente
        ok, errMsg = exports.striano_core:KeysDestroyAny(keyId)
        local msg  = ok and "Key destroyed" or ("Failed: " .. tostring(errMsg))
        TriggerClientEvent("striano_keys:cl:notify", src, msg)
    end
end)

-- ------------------------------------------------------------
-- Relay de HP / Mana máximos
-- ------------------------------------------------------------

RegisterNetEvent("setMaxHP")
AddEventHandler("setMaxHP", function(targetSrc, value)
    TriggerClientEvent("setMaxHP", targetSrc, value)
end)

RegisterNetEvent("setMaxMana")
AddEventHandler("setMaxMana", function(targetSrc, value)
    TriggerClientEvent("setMaxMana", targetSrc, value)
end)
