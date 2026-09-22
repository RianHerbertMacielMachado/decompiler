
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Here i get the name of the player when he win
function getIdentity(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier -- ESX.GetIdentifier(xPlayer.source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateofbirth, height FROM `users` WHERE identifier = @identifier', { ['@identifier'] = identifier })
	if result[1] ~= nil then
		local identity = result[1]
		local data = {
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']		
		}
		return data
	else
		print('getidentity nil')
		return nil
	end	
end