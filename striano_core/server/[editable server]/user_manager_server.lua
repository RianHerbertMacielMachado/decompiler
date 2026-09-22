RegisterCommand("userslist",function(source)
	if source==0 then return end
	if not exports["striano_core"]:IsAdmin(source) then TriggerClientEvent("anim:cmd", source, "prova No permission.") return end

	local raw=LoadResourceFile(GetCurrentResourceName(),"users.json")
	if not raw then
		print("[USERS MENU] users.json NOT FOUND!")
		return
	end

	local users=json.decode(raw)
	if type(users)~="table" then
		print("[USERS MENU] users.json NOT VALID!")
		return
	end

	local list={}

	for identifier,user in pairs(users) do
		list[#list+1]={
			identifier=identifier,
			name=user.firstname or "Unknown",
			data=user
		}
	end

	table.sort(list,function(a,b)
		return a.name:lower()<b.name:lower()
	end)

	TriggerClientEvent("striano:openUsersMenu",source,list)
end)

local function GetOnlinePlayerByIdentifier(identifier)
	for _,playerId in ipairs(GetPlayers()) do
		playerId=tonumber(playerId)

		for _,playerIdentifier in ipairs(GetPlayerIdentifiers(playerId)) do
			if playerIdentifier==identifier then
				return playerId
			end
		end
	end

	return nil
end

local function DeleteUser(identifier,kickIfOnline)
	if not identifier or identifier=="" then
		return false,"INVALID IDENTIFIER"
	end

	if not UserData.Exists(identifier) then
		return false,"USER NOT FOUND"
	end

	if not UserData.IsStorageValid() then
		return false,"USERS.JSON CORRUPTED"
	end

	local target=GetOnlinePlayerByIdentifier(identifier)

	if not UserData.Delete(identifier) then
		return false,"ERROR WHILE DELETING USER"
	end

	print(("^2USER DELETED:^7 ^5%s^7"):format(identifier))

	if target and kickIfOnline then
		if not exports["striano_core"]:IsAdmin(target) then
			DropPlayer(target,"Your character has been wiped.")
		else
			TriggerClientEvent("anim:cmd", target, "prova Character Wiped!")
		end
	end

	return true
end

RegisterNetEvent("striano:deleteUserFromAdmin",function(identifier)
	local source=source
	if not exports["striano_core"]:IsAdmin(source) then
		TriggerClientEvent("anim:cmd",source,"prova No permission.")
		return
	end
	if type(identifier)~="string" or not identifier:find("^license:") then return end
	local success,errorMessage=DeleteUser(identifier,true)
	if success then
		TriggerClientEvent("anim:cmd",source,"prova User deleted successfully.")
	else
		TriggerClientEvent("anim:cmd",source,"prova "..tostring(errorMessage))
	end
end)