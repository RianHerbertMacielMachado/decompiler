-- cause ambientali/suicidio (hash di GTA)
ENV_CAUSES = {
    [GetHashKey("WEAPON_FALL")]                 = true,
    [GetHashKey("WEAPON_DROWNING")]             = true,
    [GetHashKey("WEAPON_DROWNING_IN_VEHICLE")]  = true,
    [GetHashKey("WEAPON_EXPLOSION")]            = true,
    [GetHashKey("WEAPON_FIRE")]                 = true,
    [GetHashKey("WEAPON_RUN_OVER_BY_CAR")]      = true,
    [GetHashKey("WEAPON_RAMMED_BY_CAR")]        = true,
    -- Aggiungi qui altre cause che vuoi trattare come “self/ambiente”
}

Firearms = {
    -- Pistole
    `WEAPON_PISTOL`,
    `WEAPON_PISTOL_MK2`,
    `WEAPON_COMBATPISTOL`,
    `WEAPON_APPISTOL`,
    `WEAPON_SNSPISTOL`,
    `WEAPON_SNSPISTOL_MK2`,
    `WEAPON_HEAVYPISTOL`,
    `WEAPON_VINTAGEPISTOL`,
    `WEAPON_MARKSMANPISTOL`,
    `WEAPON_PISTOL50`,
    `WEAPON_CERAMICPISTOL`,
    `WEAPON_NAVYREVOLVER`,
    `WEAPON_DOUBLEACTION`,
    `WEAPON_REVOLVER`,
    `WEAPON_REVOLVER_MK2`,

    -- SMG / Mitra
    `WEAPON_MICROSMG`,
    `WEAPON_SMG`,
    `WEAPON_SMG_MK2`,
    `WEAPON_ASSAULTSMG`,
    `WEAPON_COMBATPDW`,
    `WEAPON_MACHINEPISTOL`,
    `WEAPON_MINISMG`,

    -- Fucili d’assalto
    `WEAPON_ASSAULTRIFLE`,
    `WEAPON_ASSAULTRIFLE_MK2`,
    `WEAPON_CARBINERIFLE`,
    `WEAPON_CARBINERIFLE_MK2`,
    `WEAPON_ADVANCEDRIFLE`,
    `WEAPON_SPECIALCARBINE`,
    `WEAPON_SPECIALCARBINE_MK2`,
    `WEAPON_BULLPUPRIFLE`,
    `WEAPON_BULLPUPRIFLE_MK2`,
    `WEAPON_COMPACTRIFLE`,
    `WEAPON_MILITARYRIFLE`,
    `WEAPON_TACTICALRIFLE`,

    -- Fucili a pompa
    `WEAPON_PUMPSHOTGUN`,
    `WEAPON_PUMPSHOTGUN_MK2`,
    `WEAPON_SAWNOFFSHOTGUN`,
    `WEAPON_BULLPUPSHOTGUN`,
    `WEAPON_ASSAULTSHOTGUN`,
    `WEAPON_MUSKET`,
    `WEAPON_HEAVYSHOTGUN`,
    `WEAPON_DBSHOTGUN`,
    `WEAPON_AUTOSHOTGUN`,

    -- Mitragliatrici
    `WEAPON_MG`,
    `WEAPON_COMBATMG`,
    `WEAPON_COMBATMG_MK2`,
    `WEAPON_GUSENBERG`,

    -- Cecchini
    `WEAPON_SNIPERRIFLE`,
    `WEAPON_HEAVYSNIPER`,
    `WEAPON_HEAVYSNIPER_MK2`,
    `WEAPON_MARKSMANRIFLE`,
    `WEAPON_MARKSMANRIFLE_MK2`,

    -- Altro (non esplosivo)
    `WEAPON_RAILGUN`
}

-- Mappa hash arma → nome leggibile
WeaponNames = {
    -- Pistole
    [GetHashKey("WEAPON_PISTOL")]        = "Pistol",
    [GetHashKey("WEAPON_PISTOL_MK2")]    = "Pistol Mk II",
    [GetHashKey("WEAPON_COMBATPISTOL")]  = "Pistol Combat",
    [GetHashKey("WEAPON_APPISTOL")]      = "Pistol AP",
    [GetHashKey("WEAPON_SNSPISTOL")]     = "Pistol SNS",
    [GetHashKey("WEAPON_SNSPISTOL_MK2")] = "Pistol SNS Mk II",
    [GetHashKey("WEAPON_HEAVYPISTOL")]   = "Pistol Heavy",
    [GetHashKey("WEAPON_VINTAGEPISTOL")] = "Pistol Vintage",
    [GetHashKey("WEAPON_MARKSMANPISTOL")]= "Pistol Snip",
    [GetHashKey("WEAPON_PISTOL50")]      = "Pistol .50",
    [GetHashKey("WEAPON_CERAMICPISTOL")] = "Pistol Ceramic",
    [GetHashKey("WEAPON_NAVYREVOLVER")]  = "Navy Revolver",
    [GetHashKey("WEAPON_DOUBLEACTION")]  = "Revolver Double Action",
    [GetHashKey("WEAPON_REVOLVER")]      = "Revolver Heavy",
    [GetHashKey("WEAPON_REVOLVER_MK2")]  = "Revolver Mk II",

    -- SMG / Mitra
    [GetHashKey("WEAPON_MICROSMG")]      = "Micro SMG",
    [GetHashKey("WEAPON_SMG")]           = "SMG",
    [GetHashKey("WEAPON_SMG_MK2")]       = "SMG Mk II",
    [GetHashKey("WEAPON_ASSAULTSMG")]    = "SMG Assault",
    [GetHashKey("WEAPON_COMBATPDW")]     = "PDW",
    [GetHashKey("WEAPON_MACHINEPISTOL")] = "Pistol Tec",
    [GetHashKey("WEAPON_MINISMG")]       = "Mini SMG",

    -- Fucili d’Assalto
    [GetHashKey("WEAPON_ASSAULTRIFLE")]       = "Assault Rifle",
	[GetHashKey("WEAPON_ASSAULTRIFLE_MK2")]   = "Assault Rifle Mk II",
	[GetHashKey("WEAPON_CARBINERIFLE")]       = "Carbine Rifle",
	[GetHashKey("WEAPON_CARBINERIFLE_MK2")]   = "Carbine Rifle Mk II",
	[GetHashKey("WEAPON_ADVANCEDRIFLE")]      = "Advanced Rifle",
	[GetHashKey("WEAPON_SPECIALCARBINE")]     = "Special Carbine",
	[GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = "Special Carbine Mk II",
	[GetHashKey("WEAPON_BULLPUPRIFLE")]       = "Bullpup Rifle",
	[GetHashKey("WEAPON_BULLPUPRIFLE_MK2")]   = "Bullpup Rifle Mk II",
	[GetHashKey("WEAPON_COMPACTRIFLE")]       = "Compact Rifle",
	[GetHashKey("WEAPON_MILITARYRIFLE")]      = "Military Rifle",
	[GetHashKey("WEAPON_TACTICALRIFLE")]      = "Service Carbine",

	-- Shotguns
	[GetHashKey("WEAPON_PUMPSHOTGUN")]        = "Pump Shotgun",
	[GetHashKey("WEAPON_PUMPSHOTGUN_MK2")]    = "Pump Shotgun Mk II",
	[GetHashKey("WEAPON_SAWNOFFSHOTGUN")]     = "Sawed-Off Shotgun",
	[GetHashKey("WEAPON_BULLPUPSHOTGUN")]     = "Bullpup Shotgun",
	[GetHashKey("WEAPON_ASSAULTSHOTGUN")]     = "Assault Shotgun",
	[GetHashKey("WEAPON_MUSKET")]             = "Musket",
	[GetHashKey("WEAPON_HEAVYSHOTGUN")]       = "Heavy Shotgun",
	[GetHashKey("WEAPON_DBSHOTGUN")]          = "Double Barrel Shotgun",
	[GetHashKey("WEAPON_AUTOSHOTGUN")]        = "Automatic Shotgun",

	-- Machine Guns
	[GetHashKey("WEAPON_MG")]                 = "Machine Gun",
	[GetHashKey("WEAPON_COMBATMG")]           = "Combat MG",
	[GetHashKey("WEAPON_COMBATMG_MK2")]       = "Combat MG Mk II",
	[GetHashKey("WEAPON_GUSENBERG")]          = "Gusenberg Sweeper",

	-- Snipers
	[GetHashKey("WEAPON_SNIPERRIFLE")]        = "Sniper Rifle",
	[GetHashKey("WEAPON_HEAVYSNIPER")]        = "Heavy Sniper",
	[GetHashKey("WEAPON_HEAVYSNIPER_MK2")]    = "Heavy Sniper Mk II",
	[GetHashKey("WEAPON_MARKSMANRIFLE")]      = "Marksman Rifle",
	[GetHashKey("WEAPON_MARKSMANRIFLE_MK2")]  = "Marksman Rifle Mk II",

    -- Altro (non esplosivo)
    [GetHashKey("WEAPON_RAILGUN")]       = "Railgun"
}

-- Funzione helper per ricavare il nome leggibile
function GetWeaponName(hash)
    if not hash then return "Sconosciuta" end
    local name = WeaponNames[hash]
    if name then
        return name
    else
        return ("Sconosciuta [%s]"):format(hash)
    end
end