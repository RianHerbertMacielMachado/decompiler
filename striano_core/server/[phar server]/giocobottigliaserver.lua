-- ============================================================
--  striano_core - server/[phar server]/giocobottigliaserver.lua
--  Relay servidor: rotação do jogo "Truth or Dare" (gioco bottiglia)
-- ============================================================

RegisterNetEvent("um-truthordare:server:rotate")
AddEventHandler("um-truthordare:server:rotate", function(p1, p2, p3, p4, p5)
    TriggerClientEvent("um-truthordare:client:rotate", -1, p1, p2, p3, p4, p5)
end)
