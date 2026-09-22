-- ============================================================
--  striano_books - client/main.lua
--  Interface cliente para leitura de livros via NUI
-- ============================================================

local bookOpen = false   -- true enquanto um livro está sendo exibido

-- ------------------------------------------------------------
-- Evento: recurso parado → fechar UI
-- ------------------------------------------------------------

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    SetNuiFocus(false, false)
    SendNUIMessage({ show = false })
end)

-- ------------------------------------------------------------
-- Callback NUI: virar página (toca som de folhear)
-- ------------------------------------------------------------

RegisterNUICallback("pageflip", function(data, cb)
    PlaySoundFrontend(-1, "Shard_Disappear", "GTAO_Boss_Goons_FM_Shard_Sounds", 0)
    cb({})
end)

-- ------------------------------------------------------------
-- Helper: abrir caixa de input via striano_admin
-- ------------------------------------------------------------

function OpenInput(prompt)
    return exports.striano_admin:OpenInput(prompt, "", { maxLen = 64 })
end

-- ------------------------------------------------------------
-- Evento de rede: abrir livro pelo ID
-- ------------------------------------------------------------

RegisterNetEvent("gmm-books:client:OpenBook")
AddEventHandler("gmm-books:client:OpenBook", function(bookID)
    local ped = PlayerPedId()

    -- Verificar se o jogador pode abrir um livro agora
    if IsPedFatallyInjured(ped) then return end
    if IsPedFalling(ped)        then return end
    if IsPedClimbing(ped)       then return end
    if IsPedJumping(ped)        then return end

    -- Buscar dados do livro na configuração
    local bookData = Config.Books and Config.Books[bookID]

    if not bookData then
        if bookID then
            print("The book " .. bookID .. " not exist.")
        end
        ExecuteCommand("e shrug5")
        return
    end

    -- Fechar livro anterior se houver
    if bookOpen then
        bookOpen = false
        Wait(100)
    end

    -- Desativar mex do combate (para não interferir com a animação)
    exports.striano_combat:submex("")

    -- Determinar modo do livro
    local isTextMode   = bookData.mode == "text"
    local isImagesMode = type(bookData.pages) == "table"
    local singlePage   = isImagesMode and #bookData.pages <= 1

    SetNuiFocus(true, true)

    if isTextMode then
        -- Modo texto
        SendNUIMessage({
            show   = true,
            book   = bookID,
            mode   = "text",
            title  = bookData.title,
            author = bookData.author,
            text   = bookData.text,
            size   = bookData.size,
            style  = bookData.style,
        })
    elseif isImagesMode then
        -- Modo imagens/páginas
        SendNUIMessage({
            show  = true,
            book  = bookID,
            mode  = "images",
            pages = bookData.pages,
            size  = bookData.size,
        })
    else
        print(string.format("Libro mal configurato: %s (manca pages o text)", tostring(bookID)))
        ExecuteCommand("e shrug5")
        return
    end

    ExecuteCommand("pointingstop")
    bookOpen = true

    -- Loop de manutenção: manter animação de leitura enquanto o livro estiver aberto
    while bookOpen do
        if IsPedFatallyInjured(ped) then break end
        if not IsPedOnFoot(ped)     then break end

        Wait(0)

        if not singlePage then
            -- Livro físico: animação de segurar livro
            if not IsEntityPlayingAnim(ped, "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a", 3) then
                ExecuteCommand("e libro")
                Wait(1000)
            end
        else
            -- Nota/folha única: animação de segurar prancheta
            if not IsEntityPlayingAnim(ped, "missheistdockssetup1clipboard@base", "base", 3) then
                ExecuteCommand("e nota")
                Wait(1000)
            end
        end
    end

    -- Guardar livro ao fechar
    ExecuteCommand("e posatasca")
end)

-- ------------------------------------------------------------
-- Callback NUI: fechar livro (tecla Escape ou botão X)
-- ------------------------------------------------------------

RegisterNUICallback("escape", function(data, cb)
    SetNuiFocus(false, false)
    bookOpen = false
    Wait(100)
    exports.striano_combat:submex("")
    cb("ok")
end)
