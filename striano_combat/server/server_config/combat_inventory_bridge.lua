-- Striano Combat inventory bridge fix for ox_inventory.
-- This file moves item removal to the server because ox_inventory:RemoveItem is not a client exports.

local function isValidItemName(itemName)
    return type(itemName) == 'string' and itemName ~= '' and #itemName <= 100
end

RegisterNetEvent('striano_combat:server:RemoveItemUniversal', function(itemName, amount, metadata, slot)
    local src = source

    amount = tonumber(amount) or 1
    if amount <= 0 or amount > 100 then
        print(('[striano_combat] blocked invalid RemoveItem amount from %s: %s'):format(src, tostring(amount)))
        return
    end

    if not isValidItemName(itemName) then
        print(('[striano_combat] blocked invalid RemoveItem itemName from %s: %s'):format(src, tostring(itemName)))
        return
    end

    if GetResourceState('ox_inventory') == 'started' then
        local success, response = exports.ox_inventory:RemoveItem(src, itemName, amount, metadata, slot)

        if not success then
            print(('[striano_combat] ox_inventory RemoveItem failed for %s x%s from %s: %s'):format(
                itemName,
                amount,
                src,
                tostring(response)
            ))
        end

        return
    end

    -- Optional fallback for servers using qb-inventory instead of ox_inventory.
    if GetResourceState('qb-inventory') == 'started' then
        exports['qb-inventory']:RemoveItem(src, itemName, amount, slot, 'striano_combat:RemoveItemUniversal')
        return
    end
end)
