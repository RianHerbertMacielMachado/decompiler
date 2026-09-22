--[[
local QBCore = exports["qb-core"]:GetCoreObject()

local BufferItemsQB = {
    "buffer_blodyr",
    "buffer_silvy",
    "buffer_golder",
    "buffer_puller",
    "buffer_aquar",
    "buffer_rosyz",
    "buffer_losyz",
    "buffer_anger",
    "buffer_petyr",
    "buffer_tyerz",
    "buffer_bluerz",
    "buffer_layrz",
    "buffer_flamer",
    "buffer_greener",
    "buffer_poisonz",
}

CreateThread(function()
    for _, itemName in ipairs(BufferItemsQB) do
        QBCore.Functions.CreateUseableItem(itemName, function(source, item)
            TriggerClientEvent("striano_combat:qb:use:" .. itemName, source)
        end)
    end
end)
]]