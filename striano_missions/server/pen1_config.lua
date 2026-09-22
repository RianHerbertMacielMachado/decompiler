PositionsPen = {
	[1] = { -- Tipo Missione 1 CashBox
		posPrendi = {
			{ pos = vector3(3791.999,7425.271,0.82) },
			{ pos = vector3(3173.259,7605.59,2.35) },
			{ pos = vector3(3522.966,7212.418,-0.555) },
		},
		posConsegna = {
			{ pos = vector3(3364.073,7874.918,4.26) },
			{ pos = vector3(3909.096,7214.272,-0.172) },
			{ pos = vector3(4242.458,6841.029,1.733) },
		},
	},
	[2] = { -- Tipo Missione 2 GARA CORSA
		ListaGare = {
			{
				head = 260.0,
				Laps = 2,
				startpos = vector3(2895.682,7473.712,15.799),
				tipoveicolo = "manchez", -- parkour, seashark, volo, skate, slide
				checks = {
					{ pos = vector3(2965.322,7461.958,14.474) },
					{ pos = vector3(3132.103,7422.537,15.499) },
					{ pos = vector3(3266.474,7402.884,10.084) },					
					{ pos = vector3(3264.915,7476.15,5.052) },
					{ pos = vector3(3336.969,7464.661,7.31) },
					{ pos = vector3(3482.999,7411.47,14.726) },
					{ pos = vector3(3551.298,7308.597,9.793) },
					{ pos = vector3(3621.468,7431.697,7.353) },
					{ pos = vector3(3388.07,7515.875,19.165) },					
					{ pos = vector3(3301.594,7470.524,6.149) },
					{ pos = vector3(3162.746,7458.381,15.66) },
					{ pos = vector3(2965.585,7536.068,16.948) },
					
				}
			},
			-- VOLO
			{
				head = 360.0,
				Laps = 2,
				startpos = vector3(3092.228,7308.841,16.859),
				tipoveicolo = "volo", -- parkour, seashark, volo, skate, slide
				checks = {
					{ pos = vector3(3041.167,7379.857,48.05) },
					{ pos = vector3(2892.559,7539.583,124.17) },
					{ pos = vector3(3097.183,7788.615,43.37) },					
					{ pos = vector3(3245.063,7910.585,33.27) },
					{ pos = vector3(3657.264,7516.385,78.72) },
					{ pos = vector3(3814.217,7271.167,27.21) },
					{ pos = vector3(3801.488,6888.689,119.12) },
					{ pos = vector3(3394.95,7051.867,53.47) },
					{ pos = vector3(3100.849,7306.536,40.34) },
					{ pos = vector3(3259.609,7477.066,12.06) },
					{ pos = vector3(3409.091,7608.367,22.16) },		
					{ pos = vector3(3597.062,7527.161,27.21) },
					{ pos = vector3(3600.481,7279.439,12.06) },
					{ pos = vector3(3466.541,7352.566,18.12) },
					{ pos = vector3(3349.448,7163.062,109.02) },				
				}
			},
		}
	},
	--[[
	-- DA COMPLETARE
	[3] = { -- Tipo Missione 3 Corsa
		{ pos = vector3(0.0,0.0,0.0) },
	},
	]]
}

CreateThread(function()
	while true do
		Wait(60000*5)
		GoPayDay()
	end
end)

function GoPayDay()
	timerPEN = timerPEN + 1
	if timerPEN == 3 then 
		StartPEN1()
	end
end

