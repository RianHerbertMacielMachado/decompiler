-- ============================================================
--  striano_core - client/[phar client]/copiacoordsclient.lua
--  Copiar coordenadas para a área de transferência via NUI
-- ============================================================

--- Arredondar um número para N casas decimais
function roundBL(n, decimals)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    return math.floor(n * factor + 0.5) / factor
end

--- Helper: enviar texto para a área de transferência via NUI
local function copyToClipboard(text)
    SendNUIMessage({ type = "clipboard", data = text })
end

--- /copia [texto] — copiar texto livre para a área de transferência
RegisterCommand("copia", function(src, args)
    if args ~= nil then
        copyToClipboard(table.concat(args, " "))
    end
end)

--- /ctp — copiar coordenadas X,Y,Z do jogador (Z-1)
RegisterCommand("ctp", function()
    local coords = GetEntityCoords(PlayerPedId())
    local text   = string.format("%s,%s,%s",
        roundBL(coords.x, 3),
        roundBL(coords.y, 3),
        roundBL(coords.z - 1.0, 3)
    )
    copyToClipboard(text)
end)

--- /ctpa — copiar coordenadas X,Y,Z,Heading do jogador (Z-1)
RegisterCommand("ctpa", function()
    local coords   = GetEntityCoords(PlayerPedId())
    local heading  = GetEntityHeading(PlayerPedId())
    local text     = string.format("%s,%s,%s,%s",
        roundBL(coords.x,       3),
        roundBL(coords.y,       3),
        roundBL(coords.z - 1.0, 3),
        roundBL(heading,        3)
    )
    copyToClipboard(text)
end)

--- /ctpr — copiar posição + rotação completa (X,Y,Z,RX,RY,RZ)
RegisterCommand("ctpr", function()
    local coords   = GetEntityCoords(PlayerPedId())
    local rotation = GetEntityRotation(PlayerPedId())
    local text     = string.format("%s,%s,%s,%s,%s,%s",
        roundBL(coords.x,       3),
        roundBL(coords.y,       3),
        roundBL(coords.z - 1.0, 3),
        roundBL(rotation.x,     3),
        roundBL(rotation.y,     3),
        roundBL(rotation.z,     3)
    )
    copyToClipboard(text)
end)
