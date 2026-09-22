PriceMarketFish = { -- SET A PRICE (random) FOR ANY KIND OF MODEL!
	{ m="striano_fishing_1", price=math.random(1,5) },
	{ m="striano_fishing_2", price=math.random(1,5) },
	{ m="striano_fishing_3", price=math.random(1,5) },
	{ m="striano_fishing_4", price=math.random(1,5) },
	{ m="striano_fishing_5", price=math.random(1,5) },
	{ m="striano_fishing_6", price=math.random(1,5) },
	{ m="striano_fishing_7", price=math.random(1,5) },
	{ m="striano_fishing_8", price=math.random(1,5) },
	{ m="striano_fishing_9", price=math.random(1,5) },
	{ m="striano_fishing_10", price=math.random(1,5) },
	{ m="striano_fishing_11", price=math.random(1,5) },
	{ m="striano_fishing_12", price=math.random(1,5) },
	{ m="striano_fishing_13", price=math.random(1,5) },
	{ m="striano_fishing_14", price=math.random(1,5) },
	{ m="striano_fishing_15", price=math.random(1,5) },
	{ m="striano_fishing_16", price=math.random(1,5) },
	{ m="striano_fishing_17", price=math.random(1,5) },
	{ m="striano_fishing_18", price=math.random(1,5) },
	
	-- SPECIAL FISH (GOLD FISHES)
	{ m="striano_fishing_gold_1", price=math.random(5,15) },
	{ m="striano_fishing_gold_2", price=math.random(5,15) },
	{ m="striano_fishing_gold_3", price=math.random(5,15) },
	{ m="striano_fishing_gold_4", price=math.random(5,15) },
	{ m="striano_fishing_gold_5", price=math.random(5,15) },
	{ m="striano_fishing_gold_6", price=math.random(5,15) },
	{ m="striano_fishing_gold_7", price=math.random(5,15) },
	{ m="striano_fishing_gold_8", price=math.random(5,15) },
	{ m="striano_fishing_gold_9", price=math.random(5,15) },
	{ m="striano_fishing_gold_10", price=math.random(5,15) },
	{ m="striano_fishing_gold_11", price=math.random(5,15) },
	{ m="striano_fishing_gold_12", price=math.random(5,15) },
	{ m="striano_fishing_gold_13", price=math.random(5,15) },
	{ m="striano_fishing_gold_14", price=math.random(5,15) },
	{ m="striano_fishing_gold_15", price=math.random(5,15) },
	{ m="striano_fishing_gold_16", price=math.random(5,15) },
	{ m="striano_fishing_gold_17", price=math.random(5,15) },
	{ m="striano_fishing_gold_18", price=math.random(5,15) },
	
	-- FRUIT PRICE
	{ m="striano_banana_basket_floor", price=math.random(15,25), label="Banane" }, -- BANANAS
}

RegisterCommand("delPesci",function(source, args) -- Elimina tutti gli oggetti raccoglibili nel raggio di 3 metri!
	-- if not exports["striano_core"]:IsAdmin(source) then return end
	TriggerClientEvent('delPesci', -1)
end)

-- SERVER SIDE
local ServerCallbacks = {}

-- RegisterServerCallback: name, function(source, args, cb)
function RegisterServerCallback(name, cb)
    ServerCallbacks[name] = cb
end

RegisterNetEvent('myResource:callbackRequest', function(name, id, args)
    local src = source
    local callback = ServerCallbacks[name]

    if callback then
        -- Execute callback with args and reply function
        callback(src, args, function(result)
            TriggerClientEvent('myResource:callbackResponse', src, id, result)
        end)
    else
        print("[WARN] No callback registered for:", name)
        TriggerClientEvent('myResource:callbackResponse', src, id, nil)
    end
end)

RegisterCommand("clearfish",function(source, args)
	TriggerClientEvent('FindAttachedClampByEntity_Fish', -1, args[1], args[2])
end)