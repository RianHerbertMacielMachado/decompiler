-- LIGHTS SYSTEM 1.0 by Striano Scripts.
-- https://discord.gg/VgTGW5St9E

commandEnabled = true
commandName = "baglight"
ampiezzaLuce = 40.0 -- This is the range light of Bag Light, increase for a more range of light!
lucentezzaLuce = 0.9 -- This is the power of light, change and test the best for you. For me with survival project 0.9 its perfect. If player need more light they need the flashlight weapon!? maybe.

RegisterCommand("lights", function(source, args, rawCommand) -- Change the command if you need, or just use some admin check to know who can do this command?
	if args == nil or args[1] == nil then return end
	funcLightsToggle(tonumber(args[1]))
end)

function canPlayerLight() -- If the player can turn on the light with key "G"
	if not IsControlPressed(0, 25) and not IsControlPressed(0, 24) and not IsControlPressed(0, 21) and not inEDITORsyt and GetEntitySpeed(PlayerPedId()) < 1.5 and not IsNuiFocusKeepingInput() and not IsNuiFocused() then
		return true 
	else
		return false
	end
end

function canPlayerLight2() -- you can delete all this downside and just use this if you dont need a double control: function canPlayerLight2() return true end end
	if not IsEntityPlayingAnim(PlayerPedId(), "missheistdockssetup1clipboard@base", "base", 3) and not IsEntityAttached(PlayerPedId()) and not IsPedInAnyVehicle(PlayerPedId(), false) and IsEntityVisible(PlayerPedId()) and GetEntityAlpha(PlayerPedId()) > 200 then 
		return true
	else 
		return false
	end
end

watSoffuse = 7.5
watFisse = 15.0
watToggle = 15.0

-- Lights toggle static, turn on/of with command /lights ID (auto toggle)
brillantezzaToggle = 0.9
distanceToggleLights = 20.0 -- Dont make lights too near!
LightsToggle = {
	[1] = { -- ID -- In this case will be the command: /lights 1
		toggle = false,
		a = vector3(-1076.119, 4921.597, 217.18), -- pos
		b = vector3(0.0,0.0,-180.0), -- rot
		ampiezza = 10.0,
		lucentezza = 10.0,
	},
	[2] = { -- ID -- In this case will be the command: /lights 2
		toggle = false,
		a = vector3(-1087.946, 4928.667, 216.521),
		b = vector3(0.0,0.0,-180.0),
		ampiezza = 10.0,
		lucentezza = 10.0,
	},
	[3] = { -- ID -- In this case will be the command: /lights 1
		toggle = false,
		a = vector3(0.0,0.0,0.0),
		b = vector3(0.0,0.0,-180.0),
		ampiezza = 10.0,
		lucentezza = 10.0,
	},
}

luciSurv = { -- THIS ARE SURVIVAL LIGHTS (They flash like broken, useful for Horror Scenario)
	{ a=vector3(3826.934,6668.165,16.088), b=vector3(0.0,0.0,-90.0)}, -- sul mostro
}

brillantezzaFisse = 0.7
luciFisse = { -- THIS LIGHTS ARE STATIC (NOT TOGGLE)
	{ a=vector3(3826.169,6534.076,10.94), b=vector3(0.0,0.0,-90.0)}, 
	{ a=vector3(3824.206,6644.967,8.704), b=vector3(0.0,0.0,-90.0)},
	{ a=vector3(3839.594,6422.492,8.359), b=vector3(0.0,0.0,-90.0)},
	{ a=vector3(3844.735,6431.439,15.139), b=vector3(0.0,0.0,-90.0)}, -- sul tronco
	{ a=vector3(3827.458,6668.893,21.588), b=vector3(0.0,0.0,-90.0)}, -- sul faro
	{ a=vector3(3826.32,6665.705,12.678), b=vector3(0.0,0.0,-90.0)}, -- sul faro
	{ a=vector3(3815.539,6662.673,15.997), b=vector3(0.0,0.0,-90.0)}, -- sul mostro
	{ a=vector3(3815.539,6662.673,10.997), b=vector3(0.0,0.0,-90.0)}, -- sul mostro
	{ a=vector3(-589.31005859375,2062.9729003906,132.45124816895), b=vector3(0.0,0.0,-90.0)}, -- miniera sod
}

brillantezzaSoffuse = 0.05
luciSoffuse = { -- THIS LIGHTS ARE SOFFUSED
	{ a=vector3(3830.356,6600.553,3.177), b=vector3(0.0,0.0,-90.0)},
	{ a=vector3(3844.735,6431.439,3.139), b=vector3(0.0,0.0,-90.0)},
}

-- EDIT FOR 1SHOT PROJECT
muteAll = false -- true per rendere tutto senza suoni ambientali.

Smoke = { -- Puoi attivarli anche singolarmente, oppure usare l'esempio sotto di /testFumo
	[1] = { fx = nil, stander = nil, toggle = false, pos = vector3(-1076.119, 4921.597, 217.18), offrot = vector3(0.0,90.0,90.0), scale=0.8, opacity=1.0, f="weap_extinguisher",c="core" }, -- /smoke 1
	[2] = { fx = nil, stander = nil, toggle = false, pos = vector3(-1077.384, 4923.895, 218.666), offrot = vector3(0.0,90.0,90.0), scale=0.8, opacity=1.5, f="weap_extinguisher", c="core" }, -- /smoke 2
	[3] = { fx = nil, stander = nil, toggle = false, pos = vector3(-1078.821,4920.793,212.85), offrot = vector3(0.0,0.0,-180.0), scale=1.5, opacity=1.0, f="veh_respray_smoke", c="core", col={ 0.0, 8.9, 0.0 } }, -- /smoke 3
	[4] = { fx = nil, stander = nil, toggle = false, pos = vector3(-1079.224,4920.532,212.917), offrot = vector3(0.0,0.0,-180.0), scale=1.5, opacity=2.0, f="exp_grd_bzgas_smoke", c="core" }, -- /smoke 4
}

RegisterCommand("testFumo",function(source)
	print("Test Smoke")
	-- Example how to activate more ID
	ExecuteCommand("smoke 1")
	ExecuteCommand("smoke 2")
	Wait(5000)
	ExecuteCommand("smoke 3")
	ExecuteCommand("smoke 4")
end)