-- DJSET SYSTEM 1.0 by Striano Scripts.
-- Support Discord: https://discord.gg/VgTGW5St9E

-- QBCore = exports['qb-core']:GetCoreObject()

LISTACANZONI = { -- NO COPY SONGS!
	{ link="https://www.youtube.com/watch?v=m8QDXLMa_kM", label="360 No Scope - The Soundlings" },
	{ link="https://www.youtube.com/watch?v=lAmudPTKelU", label="To Be Free - Nck IT" },
	{ link="https://www.youtube.com/watch?v=D1B3p7PtdZA", label="Hustle - Peyruis" },
	{ link="https://www.youtube.com/watch?v=CxDh2g9OACA", label="Polymetric Juggling - DivKid" },
	{ link="https://www.youtube.com/watch?v=Gs5QkWoRkT8", label="Berlin at Night - Dan Henig" },
	{ link="https://www.youtube.com/watch?v=euATVzl5EZ4", label="Blast From The Past - Jeremy Black" },
	{ link="https://www.youtube.com/watch?v=IjUyIpuFbhA", label="Beside Me - Patrick Patrikios" },
	{ link="https://www.youtube.com/watch?v=Iab-mqpVNgc", label="Calvin Harris - Josh Pan" },
	{ link="https://www.youtube.com/watch?v=LgjRy9uSTYA", label="Commander Impulse - DivKid" },
	{ link="https://www.youtube.com/watch?v=ApqRDTe_IG4", label="Construyendo en el Espacio - Luna Cantina" },
	{ link="https://www.youtube.com/watch?v=aACOnezDSdQ", label="Cover - Patrick Patrikios" },
	{ link="https://www.youtube.com/watch?v=dpCHjhRkZ6U", label="Danger Snow - Dan Henig" },
	{ link="https://www.youtube.com/watch?v=7x_-JS4vdRo", label="Dark Side - Patrick Patrikios" },
	{ link="https://www.youtube.com/watch?v=HX0YXsfuU_M", label="Demon - JVNA" },
	{ link="https://www.youtube.com/watch?v=dKqk4AIcKCU", label="Duh Fuse - French Fuse" },
	{ link="https://www.youtube.com/watch?v=kXNSP4btqNY", label="Duraznito - Quincas Moreira" },
	{ link="https://www.youtube.com/watch?v=qdjl3yEtZYk", label="Escapism - Yung Logos" },
	{ link="https://www.youtube.com/watch?v=0fw3TWrQwTU", label="Fin de la Noche - Luna Cantina" },
	{ link="https://www.youtube.com/watch?v=t4pHoqzLJ-I", label="Find Me Here - Patrick Patrikios" },
	{ link="https://www.youtube.com/watch?v=dM771fEc0ZY", label="Flutes - Stayloose" },
}

Locations = {
	--[[
	{ job = "barcasino", coords = vec3(978.3947, 22.9433, 72.4360), radius = 30.0, toggler = false },
	{ job = "goldenpub", coords = vec3(1210.5953, -496.3746, 67.0345), radius = 30.0, toggler = false },
	{ job = "vanilla", coords = vec3(120.9782, -1281.4167, 28.6861), radius = 30.0, toggler = false },
	{ job = "paninaro", coords = vec3(13.9789, -1597.1844, 28.8883), radius = 30.0, toggler = false },
	{ job = "malibu", coords = vec3(139.8165, -650.8647, 28.0433), radius = 30.0, toggler = false },
	{ job = "beanmachine", coords = vec3(-632.3122, 233.5211, 81.2612), radius = 30.0, toggler = false },
	{ job = "bahamas", coords = vec3(-1378.7042, -628.6620, 30.2617), radius = 30.0, toggler = false },
	]]
	{ job = "", coords = vec3(0.0,0.0,0.0), radius = 60.0, toggler = false },
}

-- ANIMAZIONE TABLET? AL MOMENTO E' ATTIVA!
AnimationTablet = true

function CheckJob(job)
	if job == "" then return true end
	-- INSERT HERE THAT ADMINS CAN MANAGE ALL!
	-- if QBCore.Functions.GetPlayerData().job.name == job then return true else return false end
	return true -- This means that everyone can do it!
end

RegisterCommand('djset', function()
	TriggerEvent("DjEvent")
end)
-- exports.striano_djset:opendjset()

-- WORK IN PROGRESS DA INSERIRE NEL MENU CON IL SELECTOR
RegisterCommand('djvolume', function(source, args)
	if args[1] == nil then 
		-- MESSAGGIO ERRORE?
	else
		local val = tonumber(args[1])
		if val < 0.0 then val = 0.0 end
		if val > 1.0 then val = 1.0 end
		CAMBIAVOLUME(val)
	end
end)

exports('opendjset', function() DjFunc() end)

function OpenGestisciCanzoneMenu(song)
    exports['striano_fastmenu']:clearMenu()

    exports['striano_fastmenu']:addMenuItem("START SONG", function()
        avviaMusica()
    end, true)

    exports['striano_fastmenu']:addMenuItem("STOP SONG", function()
        fermaMusica()
    end, true)

    exports['striano_fastmenu']:addMenuItem("PAUSE SONG", function()
        pausaMusica()
    end, true)

    exports['striano_fastmenu']:addMenuItem("CONTINUE SONG", function()
        resumeMusica()
    end, true)

    exports['striano_fastmenu']:openMenu()
end
