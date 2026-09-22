local config = {}
config.syncToWayPoint = true
config.mapWaypoint = {
    type = 'checkpoint',
    label = 'WAYPOINT',
    color = '#f500fc',
    size = 1.0,
    drawDistance = 1000.0,
}

config.defaults = {
    drawDistance = 900.0,
    fadeDistance = 1000.0,
    size = 2.0,
    minHeight = 0.5,
    maxHeight = 50.0,
    groundZOffset = -2.0,
    color = '#f5a623',
    label = 'CHECKPOINT',
    displayDistance = true,
}

config.dui = {
    width = 600,
    height = 800,
}

config.rendering = {
    updateInterval = 1,
    distanceUpdateInterval = 100,
    perspectiveDivisor = 20.0,
    checkpointBaseMultiplier = 4.0,
    checkpointMinScale = 0.1,
    checkpointAspectRatio = 2.0,
    smallMinScale = 1.0,
    smallAspectRatio = 2.0,
}

SleeplessWaypointsConfig = config
return config
