-- sitclient.lua
-- Sit/Lay system — configuration, prop seat definitions, and rest loop

-- ─────────────────────────────────────────────
-- Configuration
-- ─────────────────────────────────────────────

local Config = {
    Debugmode                    = false,
    DebugPoly                    = false,
    UseNativeNotifications       = true,
    TeleportToLastPosWhenNoRoute = true,
    AlwaysTeleportToSeat         = false,
    AlwaysTeleportOutOfSeat      = true,
    MaxInteractionDist           = 3.0,
    MaxDetectionDist             = 3.0,
    MaxTilt                      = 20.0,
    DefaultKey                   = "X",
    DefaultPadAnalogButton       = "RRIGHT_INDEX",
    AddChatSuggestions           = true,
    ReduceStress                 = true,
    Target                       = false,
    UseTargetingCoords           = false,

    Targeting = {
        SitIcon  = "fas fa-chair",
        LayIcon  = "fas fa-bed",
        SitLabel = "Sit Down",
        LayLabel = "Lay Down",
    },

    Lang = {
        Occupied           = "Posto a sedere occupato.",
        OccupiedLay        = "Non puoi sdraiarti qui.",
        NoAvailable        = "Non ci sono posti disponibili.",
        NoFound            = "Nessun posto trovato per sedersi, avvicinati ad una sedia / divano / sgabello.",
        NoBedFound         = "Nessun posto per stendersi trovato, avvicinati ad un letto / sdraio.",
        TooTilted          = "Sembra esserci troppa inclinazione per sedersi, prova ~q~/sit~w~ manuale.",
        CannotReachSeat    = "Non riesci a raggiungere questo posto per sederti, prova ~q~/sit~w~ manuale.",
        CannotReachBed     = "Non puoi raggiungere questo letto/panca, prova ~q~/sit~w~ manuale.",
        ChatHelpTextSit    = "Siediti al posto piu vicino.",
        ChatHelpTextLay    = "Stenditi al letto/panca piu vicino.",
        KeyMappingKeyboard = "Alzati da seduto",
        KeyMappingController = "Alzati da seduto - (Pad)",
        GetUp              = "Premi %s per alzarti.",
    },
}

-- ─────────────────────────────────────────────
-- Sit Type Definitions
-- Each entry: scenarios (scenario names), animation (dict/name/offset), timeout, teleportIn/Out flags
-- ─────────────────────────────────────────────

Config.SitTypes = {
    default = {
        scenarios = { "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" },
        skipGoStraightTask = false,
        teleportIn  = false,
        teleportOut = false,
        timeout     = 8,
    },
    chair = {
        scenarios = { "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" },
        timeout   = 8,
    },
    chair2 = {
        scenarios = { "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", "PROP_HUMAN_SEAT_ARMCHAIR" },
        timeout   = 8,
    },
    chair3 = {
        scenarios = { "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", "PROP_HUMAN_SEAT_ARMCHAIR", "PROP_HUMAN_SEAT_DECKCHAIR" },
        timeout   = 8,
    },
    barstool = {
        scenarios  = { "PROP_HUMAN_SEAT_BAR" },
        teleportIn = true,
        timeout    = 8,
    },
    stool = {
        scenarios  = { "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" },
        teleportIn = true,
        timeout    = 8,
    },
    deck = {
        scenarios = { "PROP_HUMAN_SEAT_DECKCHAIR" },
        timeout   = 8,
    },
    sunlounger = {
        scenarios          = { "PROP_HUMAN_SEAT_SUNLOUNGER" },
        skipGoStraightTask = true,
        timeout            = 12,
    },
    tattoo = {
        animation = {
            dict   = "misstattoo_parlour@shop_ig_4",
            name   = "customer_loop",
            offset = vector4(0.0, 0.0, -0.75, 0.0),
        },
        timeout = 8,
    },
    strip_watch = {
        scenarios = { "PROP_HUMAN_SEAT_STRIP_WATCH" },
        timeout   = 8,
    },
    diner_booth = {
        scenarios   = { "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" },
        teleportIn  = true,
        teleportOut = true,
        timeout     = 8,
    },
    wall  = { scenarios = { "WORLD_HUMAN_SEAT_WALL" },  timeout = 8 },
    steps = { scenarios = { "WORLD_HUMAN_SEAT_STEPS" }, timeout = 8 },
    ledge = { scenarios = { "WORLD_HUMAN_SEAT_LEDGE" }, timeout = 8 },
}

-- ─────────────────────────────────────────────
-- Lay Type Definitions
-- ─────────────────────────────────────────────

Config.LayTypes = {
    default = {
        animation = {
            dict   = "amb@lo_res_idles@",
            name   = "world_human_bum_slumped_right_lo_res_base",
            offset = vector4(0.0, 0.0, -0.1, -90.0),
        },
        exitAnim = true,
    },
    bed = {
        animation = {
            dict   = "amb@lo_res_idles@",
            name   = "world_human_bum_slumped_right_lo_res_base",
            offset = vector4(0.0, 0.0, -0.1, -90.0),
        },
    },
    lay = {
        animation = {
            dict   = "amb@lo_res_idles@",
            name   = "world_human_bum_slumped_right_lo_res_base",
            offset = vector4(0.0, 0.0, -0.1, -90.0),
        },
    },
    layside = {
        animation = {
            dict   = "savecouch@",
            name   = "t_sleep_loop_couch",
            offset = vector4(-0.1, 0.1, -0.5, 270.0),
        },
    },
    busstop = {
        animation = {
            dict   = "savecouch@",
            name   = "t_sleep_loop_couch",
            offset = vector4(0.0, 0.0, -0.5, 270.0),
        },
    },
    medical = {
        animation = {
            dict   = "amb@lo_res_idles@",
            name   = "world_human_bum_slumped_right_lo_res_base",
            offset = vector4(0.0, 0.0, -0.1, -90.0),
        },
    },
    tattoo = {
        animation = {
            dict   = "amb@world_human_sunbathe@male@front@base",
            name   = "base",
            offset = vector4(0.0, 0.0, 0.0, 180.0),
        },
        exitAnim = false,
    },
}

-- ─────────────────────────────────────────────
-- Prop Hash → Seat/Lay Configuration
-- Key: GTA prop hash (integer), Value: { sit = {...}, lay = {...} }
-- seat offset: vector4(right, forward, up, heading)
-- ─────────────────────────────────────────────

local PropData = {
    -- Single-seat chairs
    [-110460483] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.1,  -0.05, 180.0) } } },
    [826023884]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [1037469683] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.4,  180.0) } } },
    [2040839490] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.0,  180.0) } } },
    [867556671]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [2064599526] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [-741944541] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.1,   0.5,  180.0) } } },
    [-171943901] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.1,   0.0,  180.0) } } },
    [607684038]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.35, 180.0) } } },
    [-109356459] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [-606800174] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.075, 0.525,180.0) } } },
    [146905321]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [-1761659350]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [1404176808] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [-1521264200]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.1,   0.0,  180.0) } } },
    [-1173315865]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [764848282]  = { sit = { type = "chair2",  seats = { vector4(0.0, -0.025, 0.5,  180.0) } } },
    [96868307]   = { sit = { type = "chair2",  seats = { vector4(0.0,  0.1,   0.5,  180.0) } } },
    [1918586980] = { sit = { type = "chair2",  seats = { vector4(0.0, -0.05,  0.5,  180.0) } } },
    [-1235256368]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.0,  270.0) } } },
    [1071807406] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.025, 0.06, 180.0) } } },
    [-1108904010]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.025, 0.06, 180.0) } } },
    [291348133]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.025, 0.06, 180.0) } } },
    [-1118419705]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [538002882]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,  -0.1,  180.0) } } },
    [-377849416] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [47332588]   = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [444105316]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [1268458364] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [-501934650] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [536071214]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.075, 0.5,  180.0) } } },
    [589738836]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [1281480215] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.0,  180.0) } } },
    [1612971419] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [1975077032] = { sit = { type = "chair",   seats = { vector4(0.0, -0.15,  0.5,  180.0) } } },
    [525667351]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.52, 180.0) } } },
    [-293380809] = { sit = { type = "chair2",  seats = { vector4(0.0, -0.1,   0.5,  180.0) } } },
    [604553643]  = { sit = { type = "chair2",  seats = { vector4(0.0, -0.1,   0.5,  180.0) } } },
    [-157036474] = { sit = { type = "chair2",  seats = { vector4(0.0, -0.1,   0.5,  180.0) } } },
    [28672923]   = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.7,  180.0) } } },
    [-294499241] = { sit = { type = "chair2",  seats = { vector4(0.0, -0.1,   0.5,  180.0) } } },
    [-1005619310]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.7,  180.0) } } },
    [603897027]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [725259233]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.525,180.0) } } },
    [558578166]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.0,  180.0) } } },
    [-2016553006]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [98421364]   = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [475561894]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [1064877149] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [2051175944] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [1355718178] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [2053667724] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.1,  180.0) } } },
    [-826852533] = { sit = { type = "chair2",  teleportIn = true, seats = { vector4(0.0, 0.1, 0.85, 180.0) } } },
    [1630899471] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.55, 180.0) } } },
    [-1941377959]= { sit = { type = "chair2",  seats = { vector4(0.0,  0.1,   0.5,  180.0) } } },
    [-1278649385]= { sit = { type = "chair",   seats = { vector4(0.0,  0.0,  -0.1,  180.0) } } },
    [-1626066319]= { sit = { type = "chair",   seats = { vector4(0.0,  0.0,  -0.1,  180.0) } } },
    [1580642483] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,  -0.1,  180.0) } } },
    [685944827]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [1262298127] = { sit = { type = "chair",   seats = { vector4(0.0,  0.075, 0.075,180.0) } } },
    [215586331]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.3,  180.0) } } },
    [-416920619] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.0,  180.0) } } },
    [-784954167] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.0,  180.0) } } },
    [38932324]   = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [-1251662965]= { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [1545434534] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [757888276]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  0.0)   } } },
    [-1892473334]= { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  0.0)   } } },
    [1691387372] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [854385596]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.1,  180.0) } } },
    [1028260687] = { sit = { type = "chair",   seats = { vector4(-0.035, 0.08, 0.0, 180.0) } } },
    [1103738692] = { sit = { type = "deck",    seats = { vector4(0.0,  0.0,  -0.15, 180.0) } } },
    [1019962318] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.3,  180.0) } } },
    [451260528]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [-853526657] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05, -0.1,  180.0) } } },
    [-997157373] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,  -0.1,  180.0) } } },
    [-992735415] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05, -0.1,  180.0) } } },
    [-829283643] = { sit = { type = "chair",   seats = { vector4(0.0, -0.075,-0.1,  180.0) } } },
    [438342263]  = { sit = { type = "chair2",  seats = { vector4(0.0,  0.0,   0.29, 180.0) } } },
    [-1198343923]= { sit = { type = "chair",   seats = { vector4(0.0,  0.075, 0.5,  180.0) } } },
    [768067634]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.1,   0.5,  180.0) } } },
    [-61947709]  = { sit = { type = "chair",   seats = { vector4(0.0, -0.1,   0.5,  180.0) } } },
    [1480618483] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.45, 180.0) } } },
    [174634350]  = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [-603563862] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [-523951410] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.5,  180.0) } } },
    [-590416541] = { sit = { type = "chair2",  seats = { vector4(0.0,  0.1,   0.5,  180.0) } } },
    [1872312775] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.135,180.0) } } },
    [-1195678770]= { sit = { type = "chair",   seats = { vector4(0.0, -0.1,   0.8,  0.0)   } } },
    [-1005355458]= { sit = { type = "chair",   seats = { vector4(0.0,  0.08,  0.5,  180.0) } } },
    [-296249014] = { sit = { type = "chair",   seats = { vector4(0.0,  0.05,  0.78, 180.0) } } },
    [688581443]  = { sit = { type = "chair",   seats = { vector4(0.0, -0.06,  0.03, 180.0) } } },
    [1411387896] = { sit = { type = "chair",   seats = { vector4(0.0,  0.0,   0.5,  180.0) } } },
    [1079799018] = { sit = { type = "chair",   teleportIn = true, seats = { vector4(0.1,  0.0,  0.5,  90.0) } } },
    [-360727150] = { sit = { type = "chair",   teleportIn = true, seats = { vector4(0.0,  0.025,0.8,  180.0) } } },

    -- Barstool / stool seats
    [-1829764702]= { sit = { type = "barstool",seats = { vector4(0.0,  0.15,  0.825,180.0) } } },
    [-1971298567]= { sit = { type = "stool",   seats = { vector4(0.0,  0.1,   0.39, 180.0) } } },
    [1560277278] = { sit = { type = "stool",   seats = { vector4(0.0,  0.0,   0.1,  180.0) } } },
    [317065662]  = { sit = { type = "stool",   seats = { vector4(0.0,  0.1,   0.35, 180.0) } } },
    [652816835]  = { sit = { type = "stool",   seats = { vector4(0.0,  0.1,   0.85, 180.0) } } },
    [1938265576] = { sit = { type = "stool",   seats = { vector4(0.0,  0.1,   0.75, 180.0) } } },
    [1130482396] = { sit = { type = "barstool",seats = { vector4(0.0,  0.0,   0.825,0.0)   } } },
    [-992710074] = { sit = { type = "chair2",  teleportIn = true, seats = { vector4(0.0, 0.1, 0.7, 180.0) } } },
    [1798189768] = { sit = { type = "chair2",  teleportIn = true, seats = { vector4(0.0, 0.1, 0.55,180.0) } } },
    [1840174940] = { sit = { type = "barstool",seats = { vector4(0.0,  0.0,   0.815,180.0) } } },
    [-1120527678]= { sit = { type = "stool",   seats = { vector4(0.075,0.0,   0.8,  90.0)  } } },
    [708083002]  = { sit = { type = "stool",   seats = { vector4(0.0,  0.1,   0.9,  180.0) } } },

    -- Sunloungers
    [-573707493] = { sit = { type = "sunlounger", seats = { vector4(0.0, -0.23, 0.4,  180.0) } } },
    [1160611253] = { sit = { type = "sunlounger", seats = { vector4(0.0,  0.3,  0.5,  180.0) } } },
    [1699040865] = { sit = { type = "sunlounger", seats = { vector4(0.0,  0.25, 0.5,  180.0) } } },
    [2017293393] = { sit = { type = "sunlounger", seats = { vector4(0.0,  0.18, 0.4,  180.0) } } },
    [-1498352975]= { sit = { type = "sunlounger", seats = { vector4(0.0, -0.2,  0.4,  180.0) } } },
    [796317896]  = { sit = { type = "sunlounger", seats = { vector4(0.0,  0.3,  0.5,  180.0) } } },
    [900699965]  = { sit = { type = "sunlounger", seats = { vector4(0.0,  0.3,  0.5,  180.0) } } },

    -- Deck chairs
    [575699050]  = { sit = { type = "deck", seats = { vector4(0.0, 0.2, 0.35, 0.0) } } },
    [1382419899] = { sit = { type = "deck", seats = { vector4(0.0,-0.175,0.225,180.0) } } },
    [-1869605644]= { sit = { type = "chair3", seats = { vector4(0.0, 0.1, 0.0, 0.0) } } },

    -- Multi-seat sofas/benches (sit + optional lay)
    [-2024837020] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(0.0,  0.3, 0.45, 270.0),
                vector4(0.0, -0.8, 0.45,  90.0),
            },
        },
        lay = {
            type  = "layside",
            seats = { vector4(0.1, -0.25, 0.45, 90.0) },
        },
    },
    [1290593659] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.8, 0.0, 0.42, 180.0),
                vector4( 0.0, 0.0, 0.42, 180.0),
                vector4( 0.8, 0.0, 0.42, 180.0),
            },
        },
        lay = {
            type  = "layside",
            seats = { vector4(0.0, 0.0, 0.42, 180.0) },
        },
    },
    [-403891623] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.7, 0.1, 0.5, 180.0),
                vector4( 0.7, 0.1, 0.5, 180.0),
            },
        },
    },
    [-99500382] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.8, -0.05, 0.3, 180.0),
                vector4( 0.0, -0.05, 0.3, 180.0),
                vector4( 0.8,  0.0,  0.3, 180.0),
            },
        },
    },
    [-628719744] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.7, 0.0, 0.5, 180.0),
                vector4( 0.0, 0.0, 0.5, 180.0),
                vector4( 0.7, 0.0, 0.5, 180.0),
            },
        },
        lay = {
            type  = "layside",
            seats = { vector4(0.0, 0.0, 0.5, 180.0) },
        },
    },
    [-1062810675] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.35, 0.05, 0.42, 180.0),
                vector4( 0.35, 0.05, 0.42, 180.0),
            },
        },
    },
    [-1631057904] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.8, 0.0, 0.45, 180.0),
                vector4( 0.0, 0.0, 0.45, 180.0),
                vector4( 0.8, 0.0, 0.45, 180.0),
            },
        },
        lay = {
            type  = "layside",
            seats = { vector4(0.0, 0.0, 0.45, 180.0) },
        },
    },
    [437354449] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-1.1, -0.05, 0.5, 180.0),
                vector4(-0.35,-0.05, 0.5, 180.0),
                vector4( 0.35,-0.05, 0.5, 180.0),
                vector4( 1.2, -0.05, 0.5, 180.0),
            },
        },
        lay = {
            type  = "layside",
            seats = { vector4(0.0, -0.05, 0.5, 180.0) },
        },
    },
    [-71417349] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(0.0, -0.1, 0.5, 180.0),
                vector4(0.9, -0.1, 0.5, 180.0),
                vector4(1.8, -0.1, 0.5, 180.0),
            },
        },
        lay = {
            type       = "layside",
            teleportIn = true,
            seats      = { vector4(0.9, -0.1, 0.5, 180.0) },
        },
    },
    [1805980844] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.75, 0.0, 0.5, 180.0),
                vector4( 0.0,  0.0, 0.5, 180.0),
                vector4( 0.75, 0.0, 0.5, 180.0),
            },
        },
        lay = {
            type       = "layside",
            teleportIn = true,
            seats      = { vector4(0.0, 0.0, 0.5, 180.0) },
        },
    },
    [-1317098115] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.9, 0.0, 0.5, 180.0),
                vector4( 0.0, 0.0, 0.5, 180.0),
                vector4( 0.9, 0.0, 0.5, 180.0),
            },
        },
        lay = {
            type       = "layside",
            teleportIn = true,
            seats      = { vector4(0.0, 0.0, 0.5, 180.0) },
        },
    },
    [2142033519] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(0.0,  0.3, 0.5, 180.0),
                vector4(0.75, 0.3, 0.5, 180.0),
                vector4(1.5,  0.3, 0.5, 180.0),
            },
        },
    },
    [1681727376] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(-0.6, 0.6, 0.5, 180.0),
                vector4( 0.0, 0.6, 0.5, 180.0),
                vector4( 0.6, 0.6, 0.5, 180.0),
            },
        },
    },
    [1888204845] = {
        sit = {
            type  = "chair2",
            seats = {
                vector4(0.1, 0.3, 0.5, 180.0),
                vector4(0.8, 0.3, 0.5, 180.0),
            },
        },
    },
}

-- ─────────────────────────────────────────────
-- Sit/Lay State
-- ─────────────────────────────────────────────

local SitState = {
    isSitting = false,
    isLaying  = false,
    currentProp = nil,
    currentSeatIndex = nil,
}

-- ─────────────────────────────────────────────
-- Rest Loop — heals player and removes stress while laying
-- Runs every 60s, heals +5 HP (below max-1), removes 10000 stress
-- ─────────────────────────────────────────────

function LoopRiposo()
    CreateThread(function()
        while true do
            if not SitState.isLaying then break end
            Wait(60000)
            local myPed = PlayerPedId()
            local currentHealth = GetEntityHealth(myPed)
            local lifeRank = exports.striano_core:getliferank()
            local maxHealth = lifeRank - 1

            -- Heal if below max
            if currentHealth < maxHealth then
                SetEntityHealth(myPed, currentHealth + 5)
            end

            -- Sync new health to server and remove stress
            local serverId = GetPlayerServerId(PlayerId())
            TriggerServerEvent("status:set",    serverId, "vitapl",  currentHealth + 5)
            TriggerServerEvent("status:remove", serverId, "stress",  10000)
            ExecuteCommand("prova Resting...")
        end
    end)
end

-- ─────────────────────────────────────────────
-- Commands
-- ─────────────────────────────────────────────

-- /sit — sit at nearest prop seat
RegisterCommand("sit", function(source, args)
    -- The sit system uses props in the world; interaction logic deferred to the sit resource
end, false)

-- /lay — lay at nearest bed/bench
RegisterCommand("lay", function(source, args)
    -- The lay system uses props in the world
end, false)

-- /sit:loadGroup <groupName> — enable a named poly zone group
RegisterCommand("sit:loadGroup", function(source, args)
    local groupName = args[1]
    -- handled by poly zone integration
end, false)

-- /sit:unloadGroup <groupName> — disable and remove a poly zone group
RegisterCommand("sit:unloadGroup", function(source, args)
    local groupName = args[1]
    -- handled by poly zone integration
end, false)
