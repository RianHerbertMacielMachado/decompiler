function getNumberPhone(identifier)
	if not identifier then return nil end
	return UserData.GetValue(identifier,"phone_number")
end

function getIdentifierByPhoneNumber(phone_number)
	if not phone_number then return nil end

	local users=UserData.GetAll()

	for identifier,user in pairs(users) do
		if tostring(user.phone_number or "")==tostring(phone_number) then
			return identifier
		end
	end

	return nil
end

RegisterServerCallback('IdentByNum',function(source,cb,num)
	local identifier=getIdentifierByPhoneNumber(num)

	if identifier then
		local IDGET=GetPlayerFromIdentifier(identifier)

		if IDGET and IDGET.source then
			print("IdentByNum: "..identifier.." ("..IDGET.source..")")
			cb(IDGET.source)
			return
		end
	end

	cb(0)
end)

function GenerateUniquePhoneNumberSIM()
	local users=UserData.GetAll()

	while true do
		local numBase0=math.random(555,555)
		local numBase1=math.random(0,9999)
		local rand=string.format("%03d%04d",numBase0,numBase1)
		local exists=false

		for _,user in pairs(users) do
			if type(user.sim)=="table" and user.sim[rand] then
				exists=true
				break
			end
		end

		if not exists then
			return rand
		end
	end
end

function rNum(source)
	local identifier=exports['striano_core']:identOf(source)
	if not identifier then return nil end

	return UserData.GetValue(identifier,"phone_number")
end

RegisterServerEvent('applySim')
AddEventHandler('applySim',function(PL,numero)
	local source=PL
	local identifier=exports['striano_core']:identOf(source)
	if not identifier then return end

	local user=UserData.Get(identifier)
	if not user then return end

	if type(user.sim)~="table" then
		user.sim={}
	end

	numero=tostring(numero)

	user.sim[numero]=true

	SetVarDB(identifier,"sim",user.sim)

	TriggerClientEvent('esx:showNotification',source,"You get a sim "..numero)

	Wait(1000)

	TriggerClientEvent('loadMySym',source)
end)

RegisterServerEvent('strianoSim:NewAndApply')
AddEventHandler('strianoSim:NewAndApply',function(PL)
	local source=PL
	local identifier=exports['striano_core']:identOf(source)
	if not identifier then return end

	local user=UserData.Get(identifier)
	if not user then return end

	if type(user.sim)~="table" then
		user.sim={}
	end

	local phoneNumber=GenerateUniquePhoneNumberSIM()

	user.sim[phoneNumber]=true
	user.phone_number=phoneNumber

	SetVarDB(identifier,"sim",user.sim)
	SetVarDB(identifier,"phone_number",phoneNumber)

	Wait(1000)

	TriggerClientEvent('loadMySym',source)
	TriggerClientEvent('updateNumComunicatore',source,phoneNumber)
end)

RegisterServerCallback('esx_cartesim:CheckSim',function(source,cb)
	local cartesim=rNum(source)

	if not cartesim or cartesim==0 or cartesim=="No" then
		cb(false)
	else
		cb(true)
	end
end)

RegisterServerEvent('esx_cartesim:sim_delete')
AddEventHandler('esx_cartesim:sim_delete',function(PL,sim)
	local source=PL
	local identifier=exports['striano_core']:identOf(source)
	if not identifier then return end

	local user=UserData.Get(identifier)
	if not user or type(user.sim)~="table" then return end

	sim=tostring(sim)

	if not user.sim[sim] then return end

	user.sim[sim]=nil
	SetVarDB(identifier,"sim",user.sim)

	-- Se elimino la SIM attualmente applicata, la disattivo
	if tostring(user.phone_number or "")==sim then
		user.phone_number=nil
		SetVarDB(identifier,"phone_number",nil)
	end
end)

RegisterServerEvent('esx_cartesim:sim_use')
AddEventHandler('esx_cartesim:sim_use',function(sim,player)
	local _source=source
	local identifier=exports['striano_core']:identOf(_source)
	if not identifier then return end

	local user=UserData.Get(identifier)
	if not user then return end

	if type(user.sim)~="table" then
		user.sim={}
	end

	sim=tostring(sim)

	if sim=="No" then
		user.phone_number=nil
		SetVarDB(identifier,"phone_number",nil)
		return
	end

	if not user.sim[sim] then
		TriggerClientEvent(
			'esx:showNotification',
			_source,
			"Sim da applicare non trovata: "..sim
		)
		return
	end

	user.phone_number=sim
	SetVarDB(identifier,"phone_number",sim)
end)

RegisterServerCallback('esx_cartesim:GetList',function(source,cb)
	local identifier=exports['striano_core']:identOf(source)

	if not identifier then
		print("[SIM] Identifier non trovato per:",source)
		cb({})
		return
	end

	local user=UserData.Get(identifier)

	if not user or type(user.sim)~="table" then
		cb({})
		return
	end

	local cartesim={}

	for numero in pairs(user.sim) do
		cartesim[#cartesim+1]={
			number=numero
		}
	end

	cb(cartesim)
end)