-- ============================================================
--  striano_admin - client/adminmenu_config.lua
--  Configuração e callbacks do menu de administração (NUI)
-- ============================================================

-- ------------------------------------------------------------
-- Estado global do menu
-- ------------------------------------------------------------

if not CQAdminCategories then CQAdminCategories = {} end

local menuState = {
    open     = false,
    resource = GetCurrentResourceName(),
}

-- Caches de dados assíncronos
_players_cache   = nil
_players_loading = false
_items_cache     = nil
_items_loading   = _items_loading or false
_keys_menu_cache = _keys_menu_cache or {}

-- Estado do jogador expandido na lista de players
ExpandedPlayer = ExpandedPlayer or 0

-- Estado de visão noturna / térmica
local nightVisionActive  = false
local thermalVisionActive = false

-- Pending de input
local _inputPending = nil

-- ------------------------------------------------------------
-- Helpers de estado
-- ------------------------------------------------------------

--- Retorna true se o jogador local é admin (via state).
local function isLocalAdmin()
    local st = LocalPlayer and LocalPlayer.state
    return st and st.isAdmin == true
end

-- ------------------------------------------------------------
-- Registro de categorias
-- ------------------------------------------------------------

--- Registra uma categoria de menu por chave.
function RegisterAdminCategory(key, def)
    if type(key) ~= "string" then return end
    if type(def) ~= "table"  then return end
    CQAdminCategories[key] = def
end

--- Constrói e retorna a lista ordenada de categorias para envio à NUI.
local function buildCategoryList()
    local list = {}
    for key, cat in pairs(CQAdminCategories) do
        if type(cat) == "table" and type(cat.build) == "function" then
            local ok, built = pcall(cat.build)
            if ok and type(built) == "table" then
                built.__key = key
                built.order = tonumber(cat.order) or tonumber(built.order) or 9999
                table.insert(list, built)
            else
                print(string.format("^1[STRIANO ADMIN]^0 build() failed for '%s'", key))
            end
        end
    end
    table.sort(list, function(a, b)
        return (a.order or 9999) < (b.order or 9999)
    end)
    return list
end

--- Envia as categorias para a NUI.
local function sendCategories()
    SendNUIMessage({ action = "setCategories", data = buildCategoryList() })
end

-- ------------------------------------------------------------
-- Abrir / Fechar menu
-- ------------------------------------------------------------

--- Abre o menu de administração.
function CQAdmin_Open()
    if menuState.open then return end

    -- Fechar menu de missões se estiver aberto
    local missionOpen = exports.striano_missions:isOpenQuest()
    if missionOpen then
        ExecuteCommand("striano_quest:close")
    end

    menuState.open = true
    SetNuiFocus(true, true)
    SetNuiFocusKeepInput(false)
    TriggerServerEvent("striano_admin:sv:reqPlayersList")
    sendCategories()
    SendNUIMessage({ action = "open" })
end

--- Fecha o menu de administração.
function CQAdmin_Close()
    if not menuState.open then return end
    menuState.open = false
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    SendNUIMessage({ action = "close" })
end

--- Atualiza as categorias sem fechar o menu.
function CQAdmin_Refresh()
    if not menuState.open then return end
    sendCategories()
end

-- Alias para fechar via evento
function closemenu()
    TriggerEvent("striano_admin:cl:close")
end

RegisterNetEvent("striano_admin:cl:open",  CQAdmin_Open)
RegisterNetEvent("striano_admin:cl:close", CQAdmin_Close)

-- ------------------------------------------------------------
-- Comando /admin — toggle do menu
-- ------------------------------------------------------------

RegisterCommand("admin", function()
    local tutorial = exports.phar:gettutorial()
    if not tutorial then
        -- Dentro do tutorial: abrir menu nativo GTA
        closemenu()
        ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_LANDING_MENU"), 0, -1)
        return
    end

    local ped = PlayerPedId()
    -- Verificar se o jogador está em animação de leitura (não abrir neste caso)
    if IsEntityPlayingAnim(ped, "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a", 3) then
        return
    end

    -- Verificar bloqueios
    if exports.striano_inventory:isopen()     then return end
    if exports.phar:soffoco()                 then return end
    if exports.striano_core:inCall() ~= 0    then return end
    if GetPauseMenuState() ~= 0               then return end
    if IsNuiFocused()                         then return end
    if exports.striano_menu:menuaperto()      then return end
    if exports.striano_editor:inghost() ~= nil then return end
    if exports.striano_ridehorse:inShopAnimals() then return end
    if not IsEntityVisible(ped)               then return end

    -- Toggle
    if menuState.open then
        CQAdmin_Close()
    else
        CQAdmin_Open()
    end
end)

RegisterKeyMapping("admin", "(Admin) Open Menu", "keyboard", "ESCAPE")

-- ------------------------------------------------------------
-- Recurso parado — limpar UI
-- ------------------------------------------------------------

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= menuState.resource then return end
    if menuState.open then
        menuState.open = false
        SetNuiFocus(false, false)
        SetNuiFocusKeepInput(false)
        SendNUIMessage({ action = "close" })
    end
end)

-- ------------------------------------------------------------
-- Helper: ajustar foco NUI com base no estado do menu
-- ------------------------------------------------------------

local function applyNuiFocus(focused)
    SetNuiFocus(focused, focused)
    SetNuiFocusKeepInput(false)
end

local function restoreFocusAfterInput()
    if menuState.open then
        applyNuiFocus(true)
    else
        applyNuiFocus(false)
    end
end

-- ------------------------------------------------------------
-- Sistema de Input overlay (OpenInput)
-- ------------------------------------------------------------

--- Abre o overlay de input NUI e aguarda o resultado (bloqueante via coroutine).
--- Retorna a string digitada, ou "" em caso de cancelamento/timeout.
function OpenInput(prompt, defaultValue, opts)
    if _inputPending then
        print("^1[striano_admin]^7 OpenInput blocked: _inputPending exist.")
        return ""
    end

    if not opts then opts = {} end
    if not prompt       then prompt       = "Insert value" end
    if not defaultValue then defaultValue = "" end

    _inputPending = { done = false, value = "" }
    applyNuiFocus(true)

    SendNUIMessage({
        action      = "input:open",
        label       = tostring(prompt),
        value       = tostring(defaultValue),
        placeholder = tostring(opts.placeholder or ""),
        maxLen      = tonumber(opts.maxLen)  or 64,
        pattern     = tostring(opts.pattern  or ".*"),
        isNumber    = opts.isNumber == true,
    })

    local deadline = GetGameTimer() + 30000
    while true do
        if not _inputPending then break end
        if _inputPending.done then break end
        Wait(0)
        if GetGameTimer() > deadline then
            _inputPending.done  = true
            _inputPending.value = ""
            break
        end
    end

    local result = (_inputPending and _inputPending.value) or ""
    _inputPending = nil

    SendNUIMessage({ action = "input:close" })
    restoreFocusAfterInput()

    return result
end

-- Fallback: keyboard nativa do GTA quando striano_admin não está disponível
local function OpenInputSafe(prompt, defaultValue, opts)
    if not opts then opts = {} end

    -- Tentar via export do striano_admin
    local state = GetResourceState("striano_admin")
    if state == "started" then
        local ok, result = pcall(function()
            return exports.striano_admin:OpenInput(prompt, defaultValue, opts)
        end)
        if ok and result ~= nil then
            return result
        end
    end

    -- Fallback: teclado nativo GTA
    AddTextEntry("STRIANO_INPUT_SAFE", prompt or "Input")
    DisplayOnscreenKeyboard(1, "STRIANO_INPUT_SAFE", "", defaultValue or "", "", "", "", opts.maxLength or 40)
    while UpdateOnscreenKeyboard() == 0 do
        Wait(0)
    end
    if UpdateOnscreenKeyboard() == 1 then
        return GetOnscreenKeyboardResult()
    end
    return nil
end

-- Versão global acessível externamente
OpenInput = OpenInputSafe

-- ------------------------------------------------------------
-- Callbacks NUI: input
-- ------------------------------------------------------------

RegisterNUICallback("striano-input:submit", function(data, cb)
    if _inputPending then
        local val = data and data.value
        _inputPending.value = tostring(val or "")
        _inputPending.done  = true
    end
    restoreFocusAfterInput()
    cb({ ok = true })
end)

RegisterNUICallback("striano-input:cancel", function(data, cb)
    if _inputPending then
        _inputPending.value = ""
        _inputPending.done  = true
    end
    restoreFocusAfterInput()
    cb({ ok = true })
end)

exports("OpenInput", function(prompt, defaultValue, opts)
    return exports.striano_admin:OpenInput(prompt, defaultValue, opts)
end)

-- ------------------------------------------------------------
-- Cache de itens
-- ------------------------------------------------------------

local function preloadItems()
    if not isLocalAdmin() then return end
    if _items_cache == nil and not _items_loading then
        _items_loading = true
        TriggerServerEvent("striano_admin:sv:reqItemsList")
    end
end

-- Thread: aguardar tornar-se admin e então pré-carregar itens
CreateThread(function()
    while true do
        Wait(600)
        if isLocalAdmin() then
            preloadItems()
            return
        end
    end
end)

-- Thread periódica de pré-carregamento
CreateThread(function()
    while true do
        Wait(500)
        if isLocalAdmin() then
            preloadItems()
            return
        end
    end
end)

RegisterNetEvent("striano_admin:cl:setItemsList")
AddEventHandler("striano_admin:cl:setItemsList", function(items)
    _items_cache   = items or {}
    _items_loading = false
    if menuState.open then CQAdmin_Refresh() end
end)

-- ------------------------------------------------------------
-- Cache de jogadores
-- ------------------------------------------------------------

local function preloadPlayers()
    if _players_cache == nil and not _players_loading then
        _players_loading = true
        TriggerServerEvent("striano_admin:sv:reqPlayersList")
    end
end

RegisterNetEvent("striano_admin:cl:setPlayersList")
AddEventHandler("striano_admin:cl:setPlayersList", function(players)
    _players_cache   = players or {}
    _players_loading = false
end)

RegisterNUICallback("striano_admin:cb:refreshPlayers", function(data, cb)
    _players_loading = true
    TriggerServerEvent("striano_admin:sv:reqPlayersList")
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Helper: resolve ID do payload (0 = jogador local)
-- ------------------------------------------------------------

local function resolveTargetId(data)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then
        id = GetPlayerServerId(PlayerId())
    end
    return id
end

-- ------------------------------------------------------------
-- Expand de jogador na lista
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:togglePlayerExpand", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then
        cb({ ok = false })
        return
    end

    if ExpandedPlayer == id then
        ExpandedPlayer = 0
    else
        ExpandedPlayer = id
    end

    if menuState.open then CQAdmin_Refresh() end
    cb({ ok = true, expanded = ExpandedPlayer })
end)

-- ------------------------------------------------------------
-- Categoria: PLAYERS
-- ------------------------------------------------------------

RegisterAdminCategory("player", {
    order = 1,
    build = function()
        preloadPlayers()

        local rows = {}

        -- Helper local para criar linha de jogador
        local function addPlayerRow(srcId, name, isSelf)
            local sub   = string.format("%s %d", name, srcId)
            local label = string.format("%s [ID: %d]%s", name, srcId, isSelf and " (You)" or "")

            local idx = #rows + 1
            rows[idx] = {
                label        = label,
                sub          = sub,
                type         = "button",
                buttonLabel  = (ExpandedPlayer == srcId) and "Close" or "Open",
                callback     = "striano_admin:cb:togglePlayerExpand",
                payload      = { id = srcId },
                rowClass     = "player-header-row",
                rowClickOnly = true,
            }

            if ExpandedPlayer ~= srcId then return end

            -- Ações para o jogador expandido
            local function addAction(label, callback)
                table.insert(rows, {
                    label        = label,
                    sub          = sub,
                    type         = "button",
                    callback     = callback,
                    payload      = { id = srcId },
                    rowClass     = "player-action-row",
                    rowClickOnly = true,
                })
            end

            addAction("Set Ped",                 "striano_admin:cb:pl_setped")
            addAction("Reset Ped",               "striano_admin:cb:pl_resetped")
            addAction("Heal",                    "striano_admin:cb:pl_heal")
            addAction("Revive",                  "striano_admin:cb:pl_revive")
            addAction("Set Max HP",              "striano_admin:cb:pl_maxHP")
            addAction("Set Max Mana",            "striano_admin:cb:pl_maxMana")
            addAction("Clean",                   "striano_admin:cb:pl_clean")
            addAction("Go to",                   "striano_admin:cb:pl_goto")
            addAction("Bring",                   "striano_admin:cb:pl_bring")
            addAction("Return",                  "striano_admin:cb:pl_return")
            addAction("Give item",               "striano_admin:cb:pl_giveItem")
            addAction("Give key",                "striano_admin:cb:pl_givekey")
            addAction("Give temp key",           "striano_admin:cb:pl_givekeyTemp")
            addAction("Destroy key",             "striano_admin:cb:pl_delkey")
            addAction("Assign vehicle",          "striano_admin:cb:assignVehByName")
            addAction("Clear Inventory",         "striano_admin:cb:pl_clearInv")
            addAction("Clear Slot Fire Weapons", "striano_admin:cb:pl_clearWeaponSlot")
            addAction("Manage Spells",           "striano_admin:cb:pl_manageSpells")
            addAction("Clear Combat Sword",      "striano_admin:cb:pl_clearCombatSword")
            addAction("Open Keys Menu",          "striano_admin:cb:openKeysMenu")
        end

        -- Jogador local primeiro
        local myId   = GetPlayerServerId(PlayerId())
        local myName = GetPlayerName(PlayerId()) or "Me"
        addPlayerRow(myId, myName, true)

        -- Outros jogadores
        if _players_cache ~= nil then
            for _, p in ipairs(_players_cache) do
                local id   = tonumber(p.id)
                local name = tostring(p.name or string.format("ID %d", id or 0))
                if id and id ~= myId then
                    addPlayerRow(id, name, false)
                end
            end
        end

        return {
            id      = "player_mgmt",
            label   = "PLAYERS",
            sub     = "",
            enabled = true,
            groups  = {
                {
                    id       = "player_actions",
                    type     = "group",
                    label    = "Player actions",
                    children = {
                        { label = "Heal",              type = "button", buttonLabel = "Heal",   callback = "striano_admin:cb:healSelf"   },
                        { label = "Use bandage",       type = "button", buttonLabel = "Bandage", callback = "striano_admin:cb:healRP"    },
                        { label = "Revive",            type = "button", buttonLabel = "Revive",  callback = "striano_admin:cb:revive"    },
                        { label = "Clean Blood/Dirty", type = "button", buttonLabel = "Clean",   callback = "striano_admin:cb:cleanPlayer" },
                        { label = "Give item",         type = "button", buttonLabel = "Give",    callback = "striano_admin:cb:getItemInput" },
                        { label = "Clear inventory",   type = "button", buttonLabel = "Clear",   callback = "clearInv"                   },
                        { label = "Change Ped Model",  type = "button", buttonLabel = "Change",  callback = "applyPed"                   },
                        { label = "Reset Ped Model",   type = "button", buttonLabel = "Reset",   callback = "resetPed"                   },
                    },
                },
                {
                    id       = "player_list",
                    type     = "group",
                    label    = "Players online",
                    children = rows,
                },
            },
        }
    end,
})

-- ------------------------------------------------------------
-- Categoria: MANAGERS (pausemenu)
-- ------------------------------------------------------------

RegisterAdminCategory("pausemenu", {
    order = 0,
    build = function()
        return {
            id      = "misc_settings",
            label   = "MANAGERS",
            sub     = "",
            enabled = true,
            groups  = {
                {
                    id       = "display_options",
                    type     = "group",
                    label    = "Game Manager",
                    children = {
                        { label = "Game Settings",    type = "button", buttonLabel = "GTA 5 Settings", callback = "openSettings"       },
                        { label = "Old Admin Menu",   type = "button", buttonLabel = "Open",          callback = "nuicb_cmd",  payload = { cmd = "l" }                     },
                        { label = "Open 3D Map",      type = "button", buttonLabel = "Open",          callback = "nuicb_cmd",  payload = { cmd = "aprimappa" }              },
                        { label = "Vehicles Manager", type = "button", buttonLabel = "Manage",        callback = "nuicb_cmd",  payload = { cmd = "mv" }                     },
                        { label = "Rapids Manager",   type = "button", buttonLabel = "Manage",        callback = "nuicb_cmd",  payload = { cmd = "rapid" }                  },
                        { label = "Quest Menu (WIP)", type = "button", buttonLabel = "Manage",        callback = "nuicb_cmd",  payload = { cmd = "striano_quest:respond" }  },
                        { label = "Manage Clothes",   type = "button", buttonLabel = "Manage",        callback = "nuicb_cmd",  payload = { cmd = "vestiti" }                },
                        { label = "Manage Outfits",   type = "button", buttonLabel = "Manage",        callback = "editVestiti"                                             },
                        { label = "Spell Book",       type = "button", buttonLabel = "Spells",        callback = "nuicb_cmd",  payload = { cmd = "spellBook" }              },
                        { label = "Boats Manager",    type = "button", buttonLabel = "Boats",         callback = "nuicb_cmd",  payload = { cmd = "myBoats" }                },
                        { label = "Toggle HUD",       type = "button", buttonLabel = "Toggle",        callback = "hideHUD"                                                 },
                        { label = "Keys list",        type = "button",                                callback = "nuicb_cmd",  payload = { cmd = "keys" }                   },
                        { label = "Get vehicle key",  type = "button",                                callback = "getVehKey"                                               },
                        { label = "Spawnables",       type = "button", buttonLabel = "Manage",        callback = "nuicb_cmd",  payload = { cmd = "spawnables" }             },
                    },
                },
            },
        }
    end,
})

-- ------------------------------------------------------------
-- Categoria: TOOLS (misc)
-- ------------------------------------------------------------

RegisterAdminCategory("misc", {
    order = 2,
    build = function()
        return {
            id      = "misc_settings",
            label   = "TOOLS",
            sub     = "",
            enabled = true,
            groups  = {
                {
                    id       = "display_options",
                    type     = "group",
                    label    = "Misc",
                    children = {
                        { label = "No-clip",        type = "button", buttonLabel = "NC",     callback = "striano_admin:cb:noclip"    },
                        { label = "Edit Character", type = "button", buttonLabel = "Edit",   callback = "editSkin"                  },
                        { label = "Tattoo Editor",  type = "button", buttonLabel = "Tattoo", callback = "editTattoo"                },
                        { label = "getCoords",      type = "button", buttonLabel = "CTP",    callback = "getCTP"                    },
                        { label = "getCoords + head", type = "button", buttonLabel = "CTPa", callback = "getCTPa"                  },
                        { label = "Super Jump",     type = "button", buttonLabel = "Toggle", callback = "striano_admin:cb:superJump" },
                    },
                },
                {
                    id       = "vision_modes",
                    type     = "group",
                    label    = "Vision modes",
                    children = {
                        { label = "Night vision",   type = "toggle", key = "night_vision_t",  buttonLabel = "Toggle", callback = "striano_admin:cb:nightVision",  default = false },
                        { label = "Thermal vision", type = "toggle", key = "thermal_vision_t", buttonLabel = "Toggle", callback = "striano_admin:cb:thermalVision", default = false },
                    },
                },
            },
        }
    end,
})

-- ------------------------------------------------------------
-- Categoria: SPAWNER (appearance)
-- ------------------------------------------------------------

RegisterAdminCategory("appearance", {
    order = 3,
    build = function()
        return {
            id      = "appearance_mgmt",
            label   = "SPAWNER",
            sub     = "",
            enabled = true,
            groups  = {
                {
                    id       = "ped_model",
                    type     = "group",
                    label    = "Spawner",
                    children = {
                        { label = "Spawn ped",                 type = "button", callback = "striano_admin:cb:spawnPedByName"  },
                        { label = "Spawn object",              type = "button", callback = "striano_admin:cb:spawnObjByName"  },
                        { label = "Spawn vehicle",             type = "button", callback = "striano_admin:cb:spawnVehByName"  },
                        { label = "Delete vehicle from DB",    type = "button", callback = "striano_admin:cb:delveh"         },
                        { label = "Delete vehicle (Entity)",   type = "button", callback = "dV"                              },
                        { label = "Vehicle Maxed",             type = "button", buttonLabel = "Max",      callback = "vehicleMaxed"              },
                        { label = "Vehicle Fix",               type = "button", buttonLabel = "FixVehicle", callback = "fixVeh"                  },
                        { label = "Clear area",                type = "button", buttonLabel = "Clear",    callback = "striano_admin:cb:clearArea" },
                        { label = "Edit vehicle",              type = "button", buttonLabel = "Edit",     callback = "editVeh"                    },
                        { label = "Enter nearest vehicle",     type = "button", buttonLabel = "Enter",    callback = "enterNearest"               },
                        { label = "Clear ped area",            type = "button", buttonLabel = "Clear",    callback = "striano_admin:cb:clearPedArea" },
                        { label = "Menu area sounds",          type = "button", buttonLabel = "Menu",     callback = "menuSound"                  },
                    },
                },
            },
        }
    end,
})

-- ------------------------------------------------------------
-- Categoria: ITEMS (world)
-- ------------------------------------------------------------

RegisterAdminCategory("world", {
    order = 4,
    build = function()
        -- Pré-carregar se necessário
        if _items_cache == nil and not _items_loading then
            _items_loading = true
            TriggerServerEvent("striano_admin:sv:reqItemsList")
        end

        local itemRows = {}

        if _items_cache == nil then
            table.insert(itemRows, { label = "Loading items...", type = "button", buttonLabel = "Wait", callback = "striano_admin:cb:noop" })
        elseif #_items_cache == 0 then
            table.insert(itemRows, { label = "No items found.", type = "button", buttonLabel = "OK", callback = "striano_admin:cb:noop" })
        else
            for _, entry in ipairs(_items_cache) do
                local name  = (type(entry) == "table" and entry.name)  or entry or ""
                local label = (type(entry) == "table" and entry.label) or nil
                local model = (type(entry) == "table" and entry.model) or nil

                local displayLabel = tostring(name or "")
                if label and label ~= "" then
                    displayLabel = string.format("%s", displayLabel)
                end

                table.insert(itemRows, {
                    label       = displayLabel,
                    type        = "button",
                    buttonLabel = "Get",
                    callback    = "striano_admin:cb:getItem",
                    payload     = { item = name, model = model },
                })
            end
        end

        return {
            id      = "world_mgmt",
            label   = "ITEMS",
            sub     = "",
            enabled = true,
            groups  = {
                {
                    id       = "world_items",
                    type     = "group",
                    label    = "Item manager",
                    children = itemRows,
                },
            },
        }
    end,
})

-- ------------------------------------------------------------
-- Categoria: SCRIPTS (striano_scripts)
-- ------------------------------------------------------------

RegisterAdminCategory("striano_scripts", {
    order = 5,
    build = function()
        return {
            id      = "striano_script",
            label   = "SCRIPTS",
            sub     = "",
            enabled = true,
            groups  = {
                {
                    id       = "display_options",
                    type     = "group",
                    label    = "Take your time, test all!",
                    children = {
                        { label = "striano combat",                type = "button", callback = "nuicb_combat"                                          },
                        { label = "striano ride horse",            type = "button", callback = "nuicb_cmd",       payload = { cmd = "horse" }           },
                        { label = "striano ride humanoid (Ostrich)", type = "button", callback = "nuicb_cmd",     payload = { cmd = "testHumanoid" }    },
                        { label = "striano ride humanoid (T-rex)", type = "button", callback = "nuicb_cmd",       payload = { cmd = "testTrex" }        },
                        { label = "striano fly_spell",             type = "button", callback = "nuicb_cmd",       payload = { cmd = "fly" }             },
                        { label = "striano fly_human",             type = "button", callback = "nuicb_cmd",       payload = { cmd = "flyhuman" }        },
                        { label = "striano fly_animal",            type = "button", callback = "nuicd_flyanimal"                                        },
                        { label = "striano boat",                  type = "button", callback = "spawnBoat"                                             },
                        { label = "striano clayshot",              type = "button", callback = "nuicb_cmd",       payload = { cmd = "clay" }            },
                        { label = "striano race creator",          type = "button", callback = "nuicb_cmd",       payload = { cmd = "race" }            },
                        { label = "striano dark mode",             type = "button", callback = "nuicb_cmd",       payload = { cmd = "localFog" }        },
                    },
                },
            },
        }
    end,
})

-- ------------------------------------------------------------
-- Categoria: CREDITS
-- ------------------------------------------------------------

RegisterAdminCategory("credtis", {
    order = 6,
    build = function()
        return {
            id      = "credits",
            label   = "CREDITS",
            sub     = "",
            enabled = true,
            groups  = {
                {
                    id       = "display_options",
                    type     = "group",
                    label    = "strianodev.com",
                    children = {
                        {
                            label        = "You like this menu?",
                            type         = "infoButton",
                            buttonLabel  = "Read more",
                            infoTitle    = "Resource name: striano_admin",
                            infoHtml     = [[<p>This is a menu i use to manage my project, and if you want you can manage also yours! <br>Simple, minimal, powerful. Get your copy on <b>strianodev.com</b>.</p><br><center><b>• love u all •</b></center>]],
                        },
                        {
                            label        = "R u l e s",
                            type         = "infoButton",
                            buttonLabel  = "Read",
                            infoTitle    = "SOD: Rules",
                            infoHtml     = [[<center><p>Please follow the rules to not be banned from the project.<br>Rules are <b>WIP</b><br><br><b>• No cheats<br>• No porco dio<br>• No porca madonna<br></b></p></center>]],
                        },
                    },
                },
            },
        }
    end,
})

-- ------------------------------------------------------------
-- Callbacks NUI: ações gerais do menu
-- ------------------------------------------------------------

--- Fechar forçado via NUI
RegisterNUICallback("striano_admin:ui:forceClose", function(data, cb)
    menuState.open = false
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    SendNUIMessage({ action = "close" })
    cb({ ok = true })
end)

--- Trigger de evento via NUI
RegisterNUICallback("striano_admin:ui:triggerEvent", function(data, cb)
    if data and data.event then
        TriggerEvent(data.event, data.value, data.meta)
    end
    cb({ ok = true })
end)

--- Executar comando via payload
RegisterNUICallback("nuicb_cmd", function(data, cb)
    local cmd = data and data.cmd
    if type(cmd) == "string" and cmd ~= "" then
        closemenu()
        ExecuteCommand(cmd)
    else
        print("^1[STRIANO ADMIN]^0 nuicb_cmd missing cmd. data=" .. json.encode(data))
    end
    cb("ok")
end)

--- Combat settings
RegisterNUICallback("nuicb_combat", function(data, cb)
    ExecuteCommand("combatset")
    closemenu()
    cb({ ok = true })
end)

--- No-op (botão desabilitado / aguardar)
RegisterNUICallback("striano_admin:cb:noop", function(data, cb)
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Callbacks NUI: visão / ambiente
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:nightVision", function(data, cb)
    if not thermalVisionActive then
        local val = data and data.value == true
        SetNightvision(val)
        nightVisionActive = val
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:thermalVision", function(data, cb)
    if not nightVisionActive then
        local val = data and data.value == true
        SetSeethrough(val)
        thermalVisionActive = val
    end
    cb({ ok = true })
end)

RegisterNUICallback("hideHUD", function(data, cb)
    if not thermalVisionActive then   -- reutilizamos a flag apenas para toggle
        ExecuteCommand("hudoff")
        ExecuteCommand("hudoff2")
    else
        ExecuteCommand("hudon")
        ExecuteCommand("hudon2")
    end
    thermalVisionActive = not thermalVisionActive
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:noclip", function(data, cb)
    ExecuteCommand("np")
    TriggerEvent("striano_admin:cl:close")
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:superJump", function(data, cb)
    exports.striano_combat:togglesuperjump()
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Callbacks NUI: configurações de jogo
-- ------------------------------------------------------------

RegisterNUICallback("openSettings", function(data, cb)
    closemenu()
    ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_LANDING_MENU"), 0, -1)
    cb({ ok = true })
end)

RegisterNUICallback("FixVehicle", function(data, cb)
    ExecuteCommand("fixVeh")
    cb({ ok = true })
end)

RegisterNUICallback("editVestiti", function(data, cb)
    closemenu()
    TriggerEvent("editVestiti")
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Callbacks NUI: aparência do jogador
-- ------------------------------------------------------------

RegisterNUICallback("applyPed", function(data, cb)
    local model = OpenInput("Insert Ped Model Name (example: a_c_pig)")
    if model == "" then
        cb({ ok = false, error = "Missing model" })
        return
    end
    closemenu()
    TriggerEvent("no1-playerped:client:SetPlayerPed", model)
    cb({ ok = true })
end)

RegisterNUICallback("resetPed", function(data, cb)
    TriggerEvent("no1-playerped:client:ResetPlayerPed")
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("editSkin", function(data, cb)
    TriggerEvent("striano_skin:edit")
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("editTattoo", function(data, cb)
    exports.striano_fastmenu:clearMenu()
    exports.striano_fastmenu:addMenuItem("Editor Tattoo",    function() TriggerEvent("PersonalizzaTattoo") end, true)
    exports.striano_fastmenu:addMenuItem("Your Tattoo List", function() ExecuteCommand("mytattoo")         end, true)
    exports.striano_fastmenu:openMenu()
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:cleanPlayer", function(data, cb)
    closemenu()
    local ped = PlayerPedId()
    ClearPedBloodDamage(ped)
    ClearPedWetness(ped)
    ClearPedEnvDirt(ped)
    ResetPedVisibleDamage(ped)
    TriggerEvent("xnTattoos:resetferite")
    TriggerEvent("xnTattoos:resetsporco")
    ExecuteCommand("shakeoff")
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:revive", function(data, cb)
    TriggerEvent("esx_ambulancejjj:revive")
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:healRP", function(data, cb)
    local id = resolveTargetId(data)
    TriggerServerEvent("esx_ambulancejjj:heal", id)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:healSelf", function(data, cb)
    local id = resolveTargetId(data)
    TriggerServerEvent("esx_ambulancejjj:healAdmin", id)
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Callbacks NUI: veículos
-- ------------------------------------------------------------

RegisterNUICallback("vehicleMaxed", function(data, cb)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    if veh == 0 then return end

    closemenu()
    SetVehicleModKit(veh, 0)
    for _, modType in ipairs({ 11, 12, 13, 15, 16 }) do
        SetVehicleMod(veh, modType, GetNumVehicleMods(veh, modType) - 1, false)
    end
    ToggleVehicleMod(veh, 18, true)
    exports.striano_combat:testo3d("Vehicle Maxed")
    cb({ ok = true })
end)

RegisterNUICallback("editVeh", function(data, cb)
    TriggerEvent("Mx :: OpenCustomCar", true)
    cb({ ok = true })
end)

RegisterNUICallback("getVehKey", function(data, cb)
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    if veh == 0 then
        exports.striano_combat:testo3d("Not in veh.")
        cb({ ok = true })
        return
    end
    local plate = GetVehicleNumberPlateText(veh)
    print("GIVE KEY PLATE RAW:", plate)
    TriggerServerEvent("striano_keys:sv:adminGiveKey", GetPlayerServerId(PlayerId()), plate)
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("enterNearest", function(data, cb)
    closemenu()
    SaliVeicoloVicino()
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Função: entrar no veículo mais próximo
-- ------------------------------------------------------------

function SaliVeicoloVicino()
    local player = PlayerPedId()
    if IsPedInAnyVehicle(player) then return end

    local pos  = GetEntityCoords(player)
    local range = 5.0

    local veh = GetClosestVehicle(pos.x, pos.y, pos.z, range, 0, 70)
    if not veh or veh == 0 then
        veh = GetClosestVehicle(pos.x, pos.y, pos.z, range, 0, 12294)
    end
    if not veh or veh == 0 then
        veh = VehicleInFront()
    end
    if not veh or veh == 0 then
        -- Raycast para veículo à frente
        local forward = GetOffsetFromEntityInWorldCoords(player, 0.0, range, 0.0)
        local ray     = CastRayPointToPoint(pos.x, pos.y, pos.z, forward.x, forward.y, forward.z, 30, player, 0)
        local _, _, _, _, hit = GetRaycastResult(ray)
        veh = hit
    end

    if veh and veh ~= 0 and DoesEntityExist(veh) and IsEntityOnScreen(veh) then
        NetworkRequestControlOfEntity(veh)
        Wait(100)
        SetVehicleDoorsLocked(veh, 1)
        if exports.phar:getsubmisID() == 0 then
            TaskWarpPedIntoVehicle(player, veh, -1)
        end
    end
end

-- ------------------------------------------------------------
-- Callbacks NUI: debug / coordenadas
-- ------------------------------------------------------------

RegisterNUICallback("getCTP", function(data, cb)
    ExecuteCommand("ctp")
    exports.striano_combat:testo3d("Coords get.")
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("getCTPa", function(data, cb)
    ExecuteCommand("ctpa")
    exports.striano_combat:testo3d("Coords/head get.")
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("menuSound", function(data, cb)
    closemenu()
    ExecuteCommand("am")
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Callback NUI: limpar área (veículos + peds + objetos)
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:clearArea", function(data, cb)
    local pos   = GetEntityCoords(PlayerPedId())
    local range = tonumber(OpenInput("Insert range"))
    if type(range) == "number" then
        ClearAreaOfVehicles(pos.x, pos.y, pos.z, range, false, false, false, false, false)
        ClearAreaOfPeds(pos.x, pos.y, pos.z, range, false)
        ClearAreaOfObjects(pos.x, pos.y, pos.z, range, 0)
        TriggerEvent("esx:clearPedZona")
        exports.striano_combat:submex("Area cleared (" .. range .. "m)")
    end
    cb({ ok = true })
end)

--- Evento: limpar peds em zona (local + GTA nativo)
RegisterNetEvent("esx:clearPedZona")
AddEventHandler("esx:clearPedZona", function(rangeArg)
    local range = 1.0
    if rangeArg ~= nil then
        local n = tonumber(rangeArg)
        if n then
            range = n + 0.0
            print("Delped range: " .. range)
        end
    end
    if type(range) ~= "number" or range < 1.0 then
        range = 1.0
        print("Delped reset 1.0: " .. range)
    end

    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(playerPed)

    for _, ped in ipairs(GetGamePool("CPed")) do
        if DoesEntityExist(ped) and not IsPedAPlayer(ped) and ped ~= playerPed then
            local dist = #(GetEntityCoords(ped) - playerPos)
            if dist < range then
                local tries = 0
                while not NetworkHasControlOfEntity(ped) and tries < 100 do
                    tries = tries + 1
                    NetworkRequestControlOfEntity(ped)
                    Wait(0)
                end
                NetworkRequestControlOfEntity(ped)
                SetEntityAsMissionEntity(ped, true)
                DeletePed(ped)
            end
        end
    end

    local coords = GetEntityCoords(PlayerPedId())
    ClearAreaOfPeds(coords, range, 1)
end)

RegisterNUICallback("striano_admin:cb:clearPedArea", function(data, cb)
    local range = tonumber(OpenInput("Insert range")) or 1.5
    TriggerServerEvent("esx:clearPedZona", range)
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Callbacks NUI: spawn de entidades
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:spawnPedByName", function(data, cb)
    local model = OpenInput("Insert model")
    if model == nil then cb({ ok = true }) return end
    TriggerServerEvent("creaPed", model)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:spawnVehByName", function(data, cb)
    local model = OpenInput("Insert model")
    if model == nil then cb({ ok = true }) return end
    closemenu()
    TriggerEvent("striano_SpawnVehicle", model)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:delveh", function(data, cb)
    local plate = OpenInput("Insert plate")
    if plate == nil then cb({ ok = true }) return end
    closemenu()
    ExecuteCommand("delveh " .. plate)
    cb({ ok = true })
end)

RegisterNUICallback("dV", function(data, cb)
    closemenu()
    ExecuteCommand("dv")
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:spawnObjByName", function(data, cb)
    local model = OpenInput("Insert model")
    if model == nil then cb({ ok = true }) return end
    exports.striano_editor:SpawnPreview(model)
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("spawnBoat", function(data, cb)
    exports.striano_boat:spawnBoat()
    closemenu()
    cb("ok")
end)

RegisterNUICallback("nuicd_flyanimal", function(data, cb)
    CreateThread(function()
        local ped = PlayerPedId()
        if IsPedHuman(ped) then
            ExecuteCommand("trasformazione")
            Wait(3500)
            if not IsPedHuman(PlayerPedId()) then
                ExecuteCommand("letterMission")
            end
        else
            TriggerEvent("trasformazioneAUmano")
        end
    end)
    cb("ok")
end)

-- ------------------------------------------------------------
-- Callbacks NUI: ações em jogador específico
-- ------------------------------------------------------------

RegisterNUICallback("goToSelected", function(data, cb)
    local id = resolveTargetId(data)
    ExecuteCommand("tpp2 " .. id)
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("putBackPlayer", function(data, cb)
    local id = resolveTargetId(data)
    ExecuteCommand("getback " .. id)
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("getPlayer", function(data, cb)
    local id = resolveTargetId(data)
    ExecuteCommand("tpp3 " .. id)
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_heal", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = true }) return end
    ExecuteCommand("heal " .. id)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_revive", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = true }) return end
    ExecuteCommand("revive " .. id)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_clean", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = true }) return end
    ExecuteCommand("resetferite " .. id)
    ExecuteCommand("resetsporco " .. id)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_goto", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id ~= 0 then
        ExecuteCommand("tpp2 " .. id)
        closemenu()
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_bring", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id ~= 0 then
        ExecuteCommand("tpp3 " .. id)
        closemenu()
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_return", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id ~= 0 then
        ExecuteCommand("getback " .. id)
        closemenu()
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_setped", function(data, cb)
    local id    = tonumber(data and data.id or 0) or 0
    local model = OpenInput("Insert ped model")
    if not model or model == "" then cb({ ok = true }) return end
    if id == 0 then cb({ ok = true }) return end
    TriggerServerEvent("myskinped:applyPed", model, id)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_resetped", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = true }) return end
    TriggerServerEvent("myskinped:resetPed", id)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_clearInv", function(data, cb)
    local id     = tonumber(data and data.id or 0) or 0
    local answer = OpenInput("Clear inventory? type 'yes'")
    if answer == "yes" or answer == "YES" then
        TriggerServerEvent("inv3d:clearInventory", id)
        closemenu()
    end
    cb({ ok = true })
end)

RegisterNUICallback("clearInv", function(data, cb)
    local answer = OpenInput("Clear inventory? type 'yes'")
    if answer == "yes" or answer == "YES" then
        TriggerServerEvent("inv3d:clearInventory")
        closemenu()
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_clearWeaponSlot", function(data, cb)
    local id     = tonumber(data and data.id or 0) or 0
    local answer = OpenInput("Clear weapon slots? type 'yes'")
    if answer == "yes" or answer == "YES" then
        TriggerServerEvent("inv3d:clearWeaponSlot", id)
        closemenu()
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_manageSpells", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    ExecuteCommand("editspells " .. id)
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_clearCombatSword", function(data, cb)
    local id     = tonumber(data and data.id or 0) or 0
    local answer = OpenInput("Clear combat weapon? type 'yes'")
    if answer == "yes" or answer == "YES" then
        TriggerServerEvent("combat:setSword", id, 0)
        closemenu()
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_maxHP", function(data, cb)
    local id  = tonumber(data and data.id or 0) or 0
    local val = tonumber(OpenInput("Insert Max HP"))
    TriggerServerEvent("setMaxHP", id, val)
    closemenu()
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_maxMana", function(data, cb)
    local id  = tonumber(data and data.id or 0) or 0
    local val = tonumber(OpenInput("Insert Max Mana"))
    TriggerServerEvent("setMaxMana", id, val)
    closemenu()
    cb({ ok = true })
end)

-- Receber e aplicar Max HP localmente
RegisterNetEvent("setMaxHP")
AddEventHandler("setMaxHP", function(newMax)
    if newMax > 0 and newMax >= 200 then
        SetPedMaxHealth(PlayerPedId(), newMax)
        exports.striano_missions:updateMaxHealth(newMax)
        exports.striano_combat:testo3d("Max HP set: " .. newMax)
        TriggerServerEvent("esx_ambulancejjj:heal", GetPlayerServerId(PlayerId()))
    end
end)

-- Receber e aplicar Max Mana localmente
RegisterNetEvent("setMaxMana")
AddEventHandler("setMaxMana", function(newMax)
    TriggerEvent("striano_missions:updateMaxMana", newMax)
    exports.striano_combat:testo3d("Max Mana set: " .. newMax)
end)

-- ------------------------------------------------------------
-- Callbacks NUI: dar itens
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:getItemInput", function(data, cb)
    local itemName = OpenInput("Item name")
    if itemName == nil or #itemName == 0 or itemName == "" then cb({ ok = true }) return end

    local amount = tonumber(OpenInput("Insert amount"))
    if amount == nil then cb({ ok = true }) return end

    if itemName ~= "" and amount > 0 then
        TriggerServerEvent("inv3d:giveItem", GetPlayerServerId(PlayerId()), "player", itemName, amount)
    end
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:getItem", function(data, cb)
    local itemName = data and data.item or nil
    local model    = data and data.model or nil

    ExecuteCommand("copia " .. (model or ""))

    if itemName == nil or #itemName == 0 then cb({ ok = true }) return end

    local amount = tonumber(OpenInput("Insert amount"))
    if amount == nil then cb({ ok = true }) return end

    if itemName ~= "" and amount > 0 then
        TriggerServerEvent("inv3d:giveItem", GetPlayerServerId(PlayerId()), "player", itemName, amount)
    end
    cb({ ok = true })
end)

--- Receber resultado de item selecionado (via evento net)
RegisterNetEvent("striano_admin:cb:giveItemSelected")
AddEventHandler("striano_admin:cb:giveItemSelected", function(payload)
    local targetId = payload.payload and payload.payload.id
    local itemName = payload.payload and payload.payload.item

    if not itemName or itemName == "" then
        exports.striano_combat:submex("Item not selected")
        return
    end

    local amount = tonumber(OpenInput("Insert amount"))
    if amount == nil then return end

    TriggerEvent("inv3d:serverGiveItem", targetId, "player", itemName, amount)
end)

-- ------------------------------------------------------------
-- Callbacks NUI: dar itens a jogador específico
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:pl_giveItem", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = false }) return end

    local itemName = OpenInput("Item name")
    if not itemName or itemName == "" then cb({ ok = true }) return end

    local amount = tonumber(OpenInput("Insert amount"))
    if not amount or amount <= 0 then cb({ ok = true }) return end

    TriggerEvent("inv3d:serverGiveItem", id, "player", itemName, amount)
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Callbacks NUI: chaves de veículos
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:pl_givekey", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = false }) return end

    local keyName = OpenInput("New key name")
    if not keyName or keyName == "" then cb({ ok = true }) return end

    TriggerServerEvent("striano_keys:sv:adminGiveKey", id, keyName)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_givekeyTemp", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = false }) return end

    local keyName = OpenInput("New temp key name")
    if not keyName or keyName == "" then cb({ ok = true }) return end

    TriggerServerEvent("striano_keys:sv:adminGiveTempKey", id, keyName)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_delkey", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = false }) return end

    local keyName = OpenInput("Key name to destroy")
    if not keyName or keyName == "" then cb({ ok = true }) return end

    TriggerServerEvent("striano_keys:sv:adminDestroyKey", keyName)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:assignVehByName", function(data, cb)
    local id = tonumber(data and data.id or 0) or 0
    if id == 0 then cb({ ok = false }) return end

    local model = OpenInput("Vehicle model (ex: sanchez)")
    if not model or model == "" then cb({ ok = true }) return end

    TriggerServerEvent("sod:giveVeh", id, model)
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Menu de chaves rápido (via striano_fastmenu)
-- ------------------------------------------------------------

RegisterNUICallback("striano_admin:cb:openKeysMenu", function(data, cb)
    local id = tonumber(data and data.id)
    if not id then cb({ ok = false }) return end

    closemenu()
    TriggerServerEvent("striano_admin:sv:getPlayerKeys", id)
    cb({ ok = true })
end)

RegisterNetEvent("striano_admin:cl:receivePlayerKeys")
AddEventHandler("striano_admin:cl:receivePlayerKeys", function(targetId, keys)
    _keys_menu_cache[targetId] = keys or {}
    OpenKeysFastMenu(targetId)
end)

--- Abre o fastmenu com a lista de chaves de um jogador.
function OpenKeysFastMenu(targetId)
    local keys = _keys_menu_cache[targetId]
    if not keys then keys = {} end

    if #keys == 0 then
        exports.striano_combat:testo3d("No keys")
        return
    end

    exports.striano_fastmenu:clearMenu()
    Wait(75)

    -- Cabeçalho
    exports.striano_fastmenu:addMenuItem(
        string.format("Keys of ID %d", targetId),
        function() end,
        false
    )

    -- Uma linha por chave
    for _, k in ipairs(keys) do
        local keyId    = tostring(k.key_id or "")
        local keyLabel = tostring(k.label  or "")
        local display  = (keyLabel ~= "") and keyId or keyId

        exports.striano_fastmenu:addMenuItem(display, function()
            OpenSingleKeyMenu(keyId)
        end, false)
    end

    exports.striano_fastmenu:openMenu()
end

--- Abre o fastmenu de ações para uma chave específica.
function OpenSingleKeyMenu(keyId)
    exports.striano_fastmenu:clearMenu()
    exports.striano_fastmenu:close()
    Wait(255)

    exports.striano_fastmenu:addMenuItem("Key: " .. keyId, function() end, false)

    exports.striano_fastmenu:addMenuItem("Copy key_id (print F8)", function()
        print("^2[striano_admin]^7 COPY KEY_ID:", keyId)
    end, true)

    exports.striano_fastmenu:addMenuItem("Destroy key (ADMIN)", function()
        TriggerServerEvent("striano_keys:sv:adminDestroyKey", keyId)
    end, true)

    exports.striano_fastmenu:openMenu()
end

--- Comando /keys — ver as próprias chaves
RegisterCommand("keys", function()
    TriggerServerEvent("striano_admin:sv:getPlayerKeys", GetPlayerServerId(PlayerId()))
end)

-- Callbacks de chaves via NUI direto
RegisterNUICallback("striano_admin:cb:pl_keys_copy", function(data, cb)
    print("KEY_ID:", data.key_id)
    cb({ ok = true })
end)

RegisterNUICallback("striano_admin:cb:pl_keys_destroy", function(data, cb)
    local keyId = tostring(data.key_id or "")
    TriggerServerEvent("striano_keys:sv:adminDestroyKey", keyId)
    cb({ ok = true })
end)

-- ------------------------------------------------------------
-- Helper de direção de câmera (CQ.Util.getCamDir)
-- ------------------------------------------------------------

if not (CQ and CQ.Util and CQ.Util.getCamDir) then
    if not CQ         then CQ         = {} end
    if not CQ.Util    then CQ.Util    = {} end

    CQ.Util.getCamDir = function()
        local rot   = GetGameplayCamRot(2)
        local radZ  = math.rad(rot.z)
        local radX  = math.rad(rot.x)
        local cosX  = math.cos(radX)
        return vector3(
            -math.sin(radZ) * cosX,
             math.cos(radZ) * cosX,
             math.sin(radX)
        )
    end
end
