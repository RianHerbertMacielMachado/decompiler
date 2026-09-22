posSecolari = {
	vector3(-3273.052,6426.229,3.892),
	vector3(-3273.871,7027.165,4.348),
	vector3(-3451.282,7633.189,15.478),
}

mapCenter = posSecolari[2]

Config = {}

-- Player Points System Configuration
Config.PointsDisplay = {
    enabled = true,
    position = {
        top = 100,
        right = 20
    },
    showPoints = true,
    showIcon = true
}

-- Points calculation settings
Config.Points = {
    startingPoints = 0,
    maxPoints = 999999,
    pointsPerAction = 10
}

-- Visual settings
Config.Visual = {
    backgroundColor = '#1a1a1a',
    borderColor = '#404040',
    textColor = '#e0e0e0',
    accentColor = '#606060'
}
