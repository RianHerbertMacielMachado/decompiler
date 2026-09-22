-- ============================================================
--  striano_core - client/[phar client]/exportsclient.lua
--  Exports do módulo phar (basket, lanterna, mensagens, etc.)
-- ============================================================

--- Resetar o sistema de basquete
exports("resetbasket", function()
    ResettaTuttoBasket()
end)

--- Marcar uma cesta no mapa
exports("canestro", function(p1, p2, p3, p4, p5, p6)
    CanestroMappa(p1, p2, p3, p4, p5, p6)
end)

--- Recolocar a lanterna de trabalho na mão
exports("rimettitorcialuce", function()
    if TorciaLavoro then
        SetEntityAsMissionEntity(TorciaLavoro)
        DeleteEntity(TorciaLavoro)
        TorciaLavoro = AddPropToPlayer(
            "xm_base_cia_lamp_floor_01a",
            31086,
            -0.19, 0.0, 0.0,
            -76.5, -3.5, 8.0
        )
    end
end)

--- Eliminar a lanterna de trabalho
exports("eliminatorcialuce", function()
    if TorciaLavoro then
        SetEntityAsMissionEntity(TorciaLavoro)
        DeleteEntity(TorciaLavoro)
    end
end)

--- Mostrar mensagem legada (legacy)
exports("msglegacy", function(text)
    timerMex = 0
    Wait(200)
    timerMsgLegacyPhar()
    timerMex = 20
    loopMessaggioLegacy()
    msglegacyUltimo = text
end)

--- Mostrar mensagem legada com timer personalizado
exports("msglegacy2", function(text, timer)
    timerMex = 0
    Wait(200)
    timerMex = timer
    timerMsgLegacyPhar()
end)

--- Mostrar mensagem na praça
exports("msglegacypiazza", function(text)
    mostraMsgPiazza()
    msglegacyPiazza = text
end)

--- Parar mensagem da praça
exports("stopmsgpiazza", function()
    msglegacyPiazza = ""
end)

--- Verificar se o jogador está perto de algum NPC pobre
exports("vicinoNPC", function()
    local playerPos = GetEntityCoords(PlayerPedId())
    local found     = false
    for _, npc in pairs(NPC_Povero) do
        local dist = #(playerPos - vector3(npc.x, npc.y, npc.z))
        if dist < 10.0 then
            found = true
        end
    end
    return found
end)

--- Mostrar subtítulo via striano_combat
exports("subtitle", function(text)
    exports.striano_combat:submex(text)
end)

--- Actualizar graduação de voz
exports("updateVoce", function(level)
    GraduazioneVoce = level
end)

--- Verificar se está em freecam de edição
exports("ineditfreecam", function()
    return camFRC
end)

--- Verificar se outfit secundário está ativo
exports("secondarioattivo", function()
    return SkinPrimaSecondario
end)

--- Editar maquilhagem (apenas sem outfit secundário ativo)
exports("editmakeup", function(data)
    if exports.striano_core:secondarioattivo() == nil then
        editMakeup()
    else
        exports.striano_combat:submex("Delete first secondary outfit with ~q~~h~/secno~h~~w~.")
    end
end)
