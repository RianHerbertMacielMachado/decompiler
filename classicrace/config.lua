
StartRaceCommand = "startrace"
StopRaceCommand = "stoprace"
WhenYouFallLose = false -- If you want that if anyone exit from vehicle or fall will lose, set this to true.
Command3DHead = true -- Set it false if you dont have a /me command in your server
VehMond = false -- Do you want create race only for vehicle? If you stay this as false you can create race also with horse.

RacePos = {
	{ -- RACE ID 1
		sizeBlip = 7.0,
		startpos = vector3(1165.831,2354.833,56.116), -- REMEMBER TO ENABLE ALSO THE BLIP IF YOU NEED DOWNSIDE
		girlstart = vector3(1165.771,2350.941,56.637),
		girlheading = 357.0,
		girlmodel = "g_f_y_vagos_01",
		active=true,
		title="Circuito", 
		colour=59, 
		size=0.5, 
		id=309,
		pp = {
			{x=1166.903,y=2302.635,z=53.391},
			{x=1153.25,y=2261.459,z=47.337},
			{x=1138.177,y=2290.938,z=48.884},
			{x=1142.781,y=2366.706,z=52.872},
			{x=1139.933,y=2424.487,z=49.337},
			{x=1129.912,y=2456.309,z=51.51},
			{x=1085.646,y=2420.214,z=48.475},
			{x=1041.761,y=2407.219,z=52.07},
			{x=980.918,y=2397.416,z=50.269},
			{x=933.144,y=2358.712,z=45.513},
			{x=976.622,y=2320.333,z=46.503},
			{x=944.871,y=2282.037,z=44.344},
			{x=995.532,y=2256.519,z=46.192},
			{x=1108.236,y=2251.037,z=47.506},
			{x=1164.975,y=2216.018,z=50.883},
			{x=1142.277,y=2155.786,z=51.935},
			{x=1090.816,y=2170.455,z=52.189},
			{x=1042.921,y=2213.855,z=46.078},
			{x=973.583,y=2232.552,z=45.588},
			{x=898.76,y=2317.924,z=45.331},
			{x=893.422,y=2394.182,z=48.539},
			{x=957.427,y=2475.958,z=48.17},
			{x=1017.247,y=2441.751,z=42.918},
			{x=1113.696,y=2474.052,z=49.347},
			{x=1159.195,y=2468.275,z=52.457},
			{x=1165.995,y=2399.825,z=56.134},
			{x=1166.522,y=2372.429,z=56.092},
		},
	},
	
	-- IF YOU WANT CREATE A NEW RACE
	{ -- RACE ID 2
		sizeBlip = 20.0,
		startpos = vector3(1716.4,3257.339,40.119),
		girlstart = vector3(1716.4,3257.339,40.119),
		girlheading = 285.0,
		girlmodel = "g_f_y_vagos_01",
		active=true,
		title="Circuito", 
		colour=59, 
		size=0.5, 
		id=309,
		pp = {
			{x=1636.136,y=3237.041,z=39.031},
			{x=1481.377,y=3195.457,z=39.03},
			{x=1287.302,y=3142.727,z=39.027},	
			{x=1073.815,y=3073.716,z=39.453},
			{x=1095.391,y=3020.767,z=39.268},
			{x=1200.222,y=3046.527,z=39.152},
			{x=1543.032,y=3144.493,z=39.151},
			{x=1602.529,y=3201.511,z=39.152},
			{x=1699.079,y=3252.375,z=39.578}
			-- IF YOU NEED A LOOP SYSTEM AT MOMENT YOU CAN COPY AND PASTE THE SAME POSITION
			-- SOON I WILL CREATE A LOOP SYSTEM FOR EVERY TRACK
		},
	},
	
	{ -- RACE ID 3
		sizeBlip = 15.0,
		startpos = vector3(510.541,-640.368,23.751), -- REMEMBER TO ENABLE ALSO THE BLIP IF YOU NEED DOWNSIDE
		girlstart = vector3(510.541,-640.368,23.751),
		girlheading = 355.0,
		girlmodel = "a_f_y_indian_01",
		active=true,
		title="Circuito", 
		colour=59, 
		size=0.5, 
		id=309,
		pp = {
			{x=511.072,y=-665.806,z=23.42},
			{x=489.084,y=-674.762,z=24.361},
			{x=386.284,y=-674.116,z=27.891},
			{x=369.05,y=-652.489,z=27.949},
			{x=396.754,y=-597.398,z=27.416},
			{x=633.917,y=-270.688,z=39.969},
			{x=677.224,y=-165.859,z=46.944},
			{x=749.512,y=-21.83,z=60.002},
			{x=838.917,y=106.718,z=68.722},
			{x=921.796,y=186.946,z=74.444},
			{x=967.402,y=263.087,z=79.825},
			{x=1072.873,y=374.939,z=81.691},
			{x=1120.619,y=401.842,z=82.281},
			{x=1253.123,y=535.115,z=79.557},
			{x=1309.009,y=601.348,z=78.678},
			{x=1364.453,y=663.053,z=78.795},
			{x=1442.786,y=748.425,z=76.048},
			{x=1484.199,y=767.259,z=76.071},
			{x=1555.064,y=885.932,z=76.073},
			{x=1580.882,y=980.6,z=77.352},
			{x=1649.761,y=1189.298,z=83.423},
			{x=1710.833,y=1486.941,z=83.651},
			{x=1708.696,y=1557.418,z=83.233},
			{x=1746.862,y=1855.63,z=73.689},
			{x=1876.237,y=2446.255,z=53.196},
			{x=1924.781,y=2483.522,z=53.445},
			{x=1973.844,y=2519.228,z=53.207},
			{x=2080.343,y=2630.16,z=50.985},
			{x=2294.664,y=2784.95,z=41.113},
			{x=2428.344,y=2856.336,z=47.532},
			{x=2433.36,y=2879.073,z=47.813},
			{x=2377.547,y=2948.809,z=47.902},
			{x=2336.72,y=2911.721,z=45.585},
			{x=2236.537,y=2801.029,z=42.442},
			{x=2184.517,y=2748.873,z=45.184},
			{x=1869.113,y=2435.866,z=53.204},
			{x=1775.358,y=2113.295,z=63.647},
			{x=1700.991,y=1506.788,z=83.607},
			{x=1703.719,y=1468.343,z=83.731},
			{x=1695.948,y=1395.144,z=85.17},
			{x=1645.128,y=1169.734,z=82.966},
			{x=1618.853,y=1107.714,z=80.7},
			{x=1583.083,y=1027.212,z=78.229},
			{x=1385.724,y=685.977,z=77.98},
			{x=1193.982,y=496.447,z=80.262},
			{x=1117.988,y=416.982,z=82.143},
			{x=1092.619,y=374.854,z=81.728},
			{x=960.558,y=247.918,z=78.659},
			{x=839.15,y=112.936,z=69.219},
			{x=368.155,y=-641.097,z=27.836},
			{x=381.819,y=-676.605,z=27.943},
			{x=511.133,y=-666.653,z=23.44},
		},
	},
	
	{ -- RACE ID 4 (Created for Horse)
		sizeBlip = 15.0,
		startpos = vector3(-365.324,1259.96,326.523), -- REMEMBER TO ENABLE ALSO THE BLIP IF YOU NEED DOWNSIDE
		girlstart = vector3(-358.988,1259.574,329.447),
		girlheading = 98.0,
		girlmodel = "a_f_y_hippie_01",
		active=true,
		title="Circuito", 
		colour=59, 
		size=0.5, 
		id=309,
		pp = {
			{x=-352.276,y=1272.34,z=331.714},
			{x=-345.421,y=1288.178,z=334.166},
			{x=-344.593,y=1309.792,z=335.978},
			{x=-347.422,y=1355.916,z=338.946},
			{x=-329.771,y=1395.703,z=339.411},
			{x=-299.9,y=1430.948,z=338.064},
			{x=-286.314,y=1478.115,z=333.866},
			{x=-272.583,y=1536.086,z=335.274},
			{x=-267.823,y=1579.184,z=336.249},
			{x=-355.434,y=1572.501,z=346.258},
			{x=-415.632,y=1586.381,z=353.69},
			{x=-428.526,y=1569.128,z=355.56},			
			{x=-364.685,y=1568.732,z=347.086},
			{x=-271.304,y=1582.39,z=336.127},
			{x=-279.782,y=1527.881,z=334.954},
			{x=-306.452,y=1421.812,z=338.173},
			{x=-347.808,y=1350.224,z=338.187},
			{x=-373.028,y=1250.948,z=325.868},
		},
	},
	
	
	-- EXAMPLE OF AN EMPTY RACE
	--[[
	{
		startpos = vector3(1716.4,3257.339,40.119), -- THE RED CIRCLE TO START THE RACE
		girlstart = vector3(1716.4,3257.339,40.119), -- GIRL POSITION (Can be also the same of the start pos if you want)
		girlheading = 105.0, -- GIRL HEADING
		girlmodel = "g_f_y_vagos_01", -- MODEL OF THE GIRL AT START
		pp = { -- THE LIST OF ALL CHECKPOINTS
			{x=1636.136,y=3237.041,z=39.031},
		}
	},
	]]
}

NPCrace = {
	-- RACE 1 FANS
	{Fan = true, model = "cs_tracydisanto", x=1173.073,y=2354.054,z=56.967,h=85.0},
	{Fan2 = true, model = "csb_car3guy2", x=1172.903,y=2353.119,z=56.941,h=90.0},
	{Fan = true, model = "csb_fos_rep", x=1173.118,y=2356.534,z=57.057,h=93.0},
	{Fan2 = true, model = "csb_grove_str_dlr", x=1172.998,y=2351.691,z=56.953,h=86.0},
	{Fan = true, model = "csb_porndudes", x=1172.986,y=2350.506,z=56.955,h=88.0},
	{Fan2 = true, model = "csb_talmm", x=1174.264,y=2352.326,z=57.052,h=89.0},
	{Fan = true, model = "csb_car3guy2", x=1173.505,y=2355.198,z=57.011,h=88.0},
	{Fan2 = true, model = "a_f_m_fatwhite_01", x=1174.583,y=2354.368,z=57.022,h=90.0},
	-- YOU CAN ADD MORE FANS HERE: Fan and Fan2 have a different clap animation
}

-- MESSAGES
m = {}
m.SoonStart = "~b~LA GARA INIZIA TRA POCHI SECONDI!"
m.Tre = "~r~TRE!"
m.Two = "~o~DUEE!"
m.One = "~y~UNOOO!"
m.Gooo = "~g~VIAAA!"
m.OutOfRace = "Gara annullata, sei stato ~r~eliminato~w~."
m.WaitRace = "~INPUT_VEH_HEADLIGHT~ Mettiti in attesa per la gara."
m.NeedVeh = "Devi essere in un veicolo per partecipare/organizzare una gara."
m.Partecipant = "Sei stato inserito in lista per partecipare alla gara."
m.WaitHost = "Attendi che l'organizzatore dia il via, ~r~non allontanarti ~w~o sarai eliminato."
m.YouHost = "Ora sei l'Host di questa gara e puoi usare:~n~~b~/startrace ID~w~ & ~b~/stoprace ID"
m.RaceID = "Corsa ID: "
m.InsertIDRace = "Inserisci un ID gara."
m.NoRaceAv = "Nessuna gara in corso."
m.YouNotHost = "Non sei l'host di questa gara."
m.AlredyRace = "La corsa è già in corso."
m.WinnerIs = "Torna al punto di partenza, abbiamo un Vincitore: ~b~"
m.BusyRace = "Sembra esserci già una gara in corso, riprova piu tardi."
m.StopFromHost = "La gara è stata ~r~fermata ~w~dall'organizzatore."
m.RaceComplete = "GARA COMPLETATA!"

function notify(msg, timer) -- timer if you need use it
	SetNotificationTextEntry('STRING')
	AddTextComponentSubstringPlayerName(msg)
	DrawNotification(false, true)
end

function notify2(msg, timer) -- This is a Loop Notify, change it if you need
	BeginTextCommandDisplayHelp('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandDisplayHelp(0, 0, 0, -1)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    if onScreen then
        SetTextScale(0.40, 0.40)
        SetTextFont(0)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end
