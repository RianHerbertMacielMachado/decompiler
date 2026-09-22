-- THIS IS THE ANIMATIONS WITH WEAPONS, WHEN YOU CREATE A NEW WEAPON YOU NEED INSERT ONE OF THIS IDs TO MAKE THEM A COMBAT STYLE ASSIGNED! Variable "st"!
-- THIS AT MOMENT CAN BE CREATED ONLY FROM HERE, BUT NO WEAPON MOVESET CAN BE CREATED FROM THE PLAYERS THEMSELF!
-- Here the dmg variable not exist cause the damage it's choosable in weapon list table! -> SwordList = {
-- HAND TO HAND COMBAT (OPTIONAL, remember to insert the animations downloading by your portal!)
myWStyle = 1 -- ID taked from FightWStyle table

FightWStyle = { -- ANIMATION COMBAT WITH WEAPON
	[1] = { -- (Default) BAT Style Combat
		Name = "Classic Sword", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 4, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 177 }, CombatD = { 175 }, CombatW = { 174 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 178,181 }, CombatD = { 182 }, CombatW = { 251 } },
	},
	[2] = { -- GHOST / KATANA Style Combat
		Name = "Katana", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 4, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end, 
		WithoutShift = { CombatA = { 5 }, CombatD = { 2 }, CombatW = { 7,8 } },
		WithShift = { CombatA = { 3 }, CombatD = { 4 }, CombatW = { 1,9 } },
	},
	[3] = { -- KATANA x2 Style Combat
		Name = "Katana Double", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 1, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 11 }, CombatD = { 10 }, CombatW = { 15,16 } },
		WithShift = { CombatA = { 13 }, CombatD = { 14 }, CombatW = { 12,17 } },
	} ,	
	[4] = { -- MARTELLONE Style Combat
		Name = "Heavy Hammer", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 8, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 136 }, CombatD = { 132,137 }, CombatW = { 131 } },
		WithShift = { CombatA = { 135 }, CombatD = { 133 }, CombatW = { 134 } },
	},	
	[5] = { -- Mantis Blade (From Dogma Studio, you want enable you need to buy from the official store) Style Combat
		Name = "Mantis Blade", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 6, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end, 
		WithoutShift = { CombatA = { 114,116,117 }, CombatD = { 115 }, CombatW = { 121 } },
		WithShift = { CombatA = { 126 }, CombatD = { 127 }, CombatW = { 125 } },
	},
	[6] = { -- SPADA SWORD! Style Combat
		Name = "Sword", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 10, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 154 }, CombatD = { 155 }, CombatW = { 107 } },
		WithShift = { CombatA = { 44 }, CombatD = { 36 }, CombatW = { 42 } },
	},
	[7] = { -- Absolver Sword Style Combat
		Name = "Absolver", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 4, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 26 }, CombatD = { 19 }, CombatW = { 20,22,31 } },
		WithShift = { CombatA = { 25 }, CombatD = { 23 }, CombatW = { 18, 34 } },
	},
	[8] = { -- VAL KNIFE -- valknife Style Combat
		Name = "Val Knife", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 11, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 86 }, CombatD = { 76 }, CombatW = { 59 } },
		WithShift = { CombatA = { 57 }, CombatD = { 58 }, CombatW = { 61 } },
	}, 	
	[9] = { -- GREAT SWORD Style Combat
		Name = "Great Sword", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 10, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 63 }, CombatD = { 66 }, CombatW = { 64 } }, -- 63, 66, 64,    67, 65, 68
		WithShift = { CombatA = { 67 }, CombatD = { 65 }, CombatW = { 68 } },
	},	
	[10] = { -- GREAT SWORD SPECIAL Style Combat
		Name = "Giant Sword", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 10, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 70 }, CombatD = { 69 }, CombatW = { 71 } }, -- 70, 69, 71     74, 73, 72
		WithShift = { CombatA = { 74 }, CombatD = { 73 }, CombatW = { 72 } },
	},
	[11] = { -- DOUBLE SWORDS Style Combat
		Name = "Double Blades", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 6, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 79,82 }, CombatD = { 78,81,83 }, CombatW = { 75,77 } }, -- 79, 78, 75    76. 80, 87
		WithShift = { CombatA = { 76 }, CombatD = { 80,85,86 }, CombatW = { 87,101 } },
	},
	[12] = { -- DOUBLE SWORDS Style Combat
		Name = "Double Swords", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 6, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 90,92 }, CombatD = { 89,91 }, CombatW = { 95,96 } },
		WithShift = { CombatA = { 99 }, CombatD = { 100 }, CombatW = { 101 } },
	},
	[13] = { -- BOSTAFF / SPEAR MELEE WEAPON ( my favorite <3 ) Style Combat
		Name = "Spear / Bostaff", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 6, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 106,109 }, CombatD = { 104,105 }, CombatW = { 107,108} }, -- 106, 105, 107    112, 103, 102
		WithShift = { CombatA = { 112 }, CombatD = { 103 }, CombatW = { 102,113 } },
	},	
	[14] = { -- REV(erse) KNIFE Style Combat
		Name = "Rev Knife", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 6, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 114 }, CombatD = { 115 }, CombatW = { 119,121,124 } },
		WithShift = { CombatA = { 126,122 }, CombatD = { 130 }, CombatW = { 125,127 } },
	},
	[15] = { -- GRIM REAPER Fly Style Combat
		Name = "Magical", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 6, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 140 }, CombatD = { 139 }, CombatW = { 138,147 } },
		WithShift = { CombatA = { 144 }, CombatD = { 143,146 }, CombatW = { 145,148 } },
	},
	
	-- KNUCKLE STYLE FOR HAND TO HAND COMBAT!
	[16] = { 
		Name = "Wingchu", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 12, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 245 }, CombatD = { 244 }, CombatW = { 243,242 } },
		WithShift = { CombatA = { 237 }, CombatD = { 241 }, CombatW = { 240,238 } },
	},
	[17] = { 
		Name = "Gruzman", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 11, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 233 }, CombatD = { 234 }, CombatW = { 236 } },
		WithShift = { CombatA = { 232 }, CombatD = { 231 }, CombatW = { 235 } },
	},
	[18] = { 
		Name = "Drunkman", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 12, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 228 }, CombatD = { 229 }, CombatW = { 230,222 } },
		WithShift = { CombatA = { 225 }, CombatD = { 226,221 }, CombatW = { 227,223 } },
	},
	[19] = { 
		Name = "Berseker", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 3, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 216 }, CombatD = { 218,217 }, CombatW = { 215,214,213 } },
		WithShift = { CombatA = { 209,206 }, CombatD = { 210 }, CombatW = { 212,211 } },
	},
	
	-- NEW FOR SMALL KNIFE 
	[20] = {
		Name = "Knife", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 6, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 256 }, CombatD = { 56 }, CombatW = { 251 } },
		WithShift = { CombatA = { 70 }, CombatD = { 252 }, CombatW = { 33 } },
	},
	[21] = {
		Name = "Dual Blade", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 13, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 253 }, CombatD = { 260 }, CombatW = { 263,262 } },
		WithShift = { CombatA = { 247 }, CombatD = { 261 }, CombatW = { 248 } },
	},
	[22] = {
		Name = "Dual Blade Special", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 13, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 257 }, CombatD = { 256 }, CombatW = { 266 } },
		WithShift = { CombatA = { 250 }, CombatD = { 252 }, CombatW = { 268,265,264 } },
	},
	
	-- NEW SAMURAI
	[23] = {
		Name = "Noda Basic", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 16, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 269 }, CombatD = { 270 }, CombatW = { 271 } },
		WithShift = { CombatA = { 275 }, CombatD = { 272, 287 }, CombatW = { 273, 292 } },
	},
	[24] = {
		Name = "Noda Special", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 16, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 278 }, CombatD = { 277 }, CombatW = { 276 } },
		WithShift = { CombatA = { 289 }, CombatD = { 283 }, CombatW = { 288, 293 } },
	},
	-- NEW SPEAR & SWORD COMBAT! 12/04/2026
	[25] = {
		Name = "New Spear", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 14, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 297 }, CombatD = { 300,294 }, CombatW = { 301 } },
		WithShift = { CombatA = { 298 }, CombatD = { 299,295 }, CombatW = { 296 } },
	},
	[26] = {
		Name = "Heavy Sword", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 15, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 307 }, CombatD = { 305,308 }, CombatW = { 302 } },
		WithShift = { CombatA = { 306 }, CombatD = { 303 }, CombatW = { 304 } },
	},
	-- ZOMBIE ATTACK
	[27] = {
		Name = "Zombie Mode", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 17, 
		hitSound = function() genSwordWosh() end,
		WithoutShift = { CombatA = { 316,314 }, CombatD = { 317,313 }, CombatW = { 311 } },
		WithShift = { CombatA = { 315,312 }, CombatD = { 319,318 }, CombatW = { 309,310 } },
	},
	
	[28] = { -- BIG AXE
		Name = "Big Axe", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 4, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 63 }, CombatD = { 62 }, CombatW = { 64 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 70 }, CombatD = { 175 }, CombatW = { 71 } },
	},
	[29] = { 
		Name = "Big Axe", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 4, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 320 }, CombatD = { 321 }, CombatW = { 322 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 323 }, CombatD = { 324 }, CombatW = { 325 } },
	},
	
	-- NEEEEW HAND TO HAND FIGHT! YAKUZA 25/06/2026
	[30] = { 
		Name = "Yakuza (A)", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 19, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 350 }, CombatD = { 349 }, CombatW = { 348 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 345 }, CombatD = { 346,340 }, CombatW = { 342 } },
	},
	[31] = { 
		Name = "Yakuza (B)", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 18, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 367 }, CombatD = { 368 }, CombatW = { 366 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 365 }, CombatD = { 363,360 }, CombatW = { 362,361 } },
	},
	[32] = { 
		Name = "Yakuza (C)", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 19, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 377,374 }, CombatD = { 372,371 }, CombatW = { 370 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 373,369 }, CombatD = { 376 }, CombatW = { 375 } },
	},
	[33] = {
		Name = "Yakuza (D)", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 18, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 359,354 }, CombatD = { 358,353 }, CombatW = { 355 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 351 }, CombatD = { 356 }, CombatW = { 357 } },
	},
	-- YAKUZA v2 COME BACK! this was on first version but was not so good, now it's much better!
	[34] = { -- TO USE WITH KNUCKLE IS BETTER CAUSE IT'S NOT WITH MELEE WEAPON!
		Name = "Yakuza (v2)", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 18, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 378,379,380 }, CombatD = { 381 }, CombatW = { 382 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 386 }, CombatD = { 385 }, CombatW = { 384,383 } },
	},
	-- CLASSIC FIGHT FOR MODERN PROJECT!
	[35] = { -- TO USE WITH KNUCKLE IS BETTER CAUSE IT'S NOT WITH MELEE WEAPON!
		Name = "Classic Street (A)", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 21, 
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 387,396,397 }, CombatD = { 393,394,395 }, CombatW = { 399,400,403,407 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 388,389 }, CombatD = { 392 }, CombatW = { 402,405,406 } },
	},
	[36] = { -- TO USE WITH KNUCKLE IS BETTER CAUSE IT'S NOT WITH MELEE WEAPON!
		Name = "Classic Street (B)", Block = { a="kp_wm_gs_parry_02", b="kp_wm_gs_parry_02_clip" }, Idle = 19, -- Same as A but with some aerial Kick! Like advanced mode!
		hitSound = function() genSwordWosh() end, -- SuonoGlobal(-1,'LOOSE_MATCH', p.x,p.y,p.z, 'HUD_MINI_GAME_SOUNDSET', 1, 30.0, 0) end,
		WithoutShift = { CombatA = { 387,396,397 }, CombatD = { 393,394,395 }, CombatW = { 399,400,403,407 } }, -- 294, 3, 323, 299, 300, 301
		WithShift = { CombatA = { 404,390,389 }, CombatD = { 401 }, CombatW = { 398,391 } },
	},
}

-- function FirstHits(t)
    -- local r = {}
    -- t = t or {}
    -- if t.CombatA and t.CombatA[1] then r[#r+1] = t.CombatA[1] end
    -- if t.CombatD and t.CombatD[1] then r[#r+1] = t.CombatD[1] end
    -- if t.CombatW and t.CombatW[1] then r[#r+1] = t.CombatW[1] end
    -- return r
-- end
function FirstHits(t)
    local r = {}
    t = t or {}
    if t.CombatA then
        for _, v in ipairs(t.CombatA) do
            r[#r+1] = v
        end
    end
    if t.CombatD then
        for _, v in ipairs(t.CombatD) do
            r[#r+1] = v
        end
    end
    if t.CombatW then
        for _, v in ipairs(t.CombatW) do
            r[#r+1] = v
        end
    end
    return r
end

EasyCombatStyle = {}

for id, style in pairs(FightWStyle or {}) do
    EasyCombatStyle[id] = {
        Name = style.Name,
        Block = style.Block,
        Idle = style.Idle,
        hitSound = style.hitSound,
        NormalHit = FirstHits(style.WithoutShift),
        HeavyHit = FirstHits(style.WithShift)
    }
end

local HitHistory = {}
local HIT_HISTORY_SIZE = 2

function GetRandomHit(style, heavy)
    local tbl = heavy and style.WithShift or style.WithoutShift
    if not tbl then return nil end

    local all = {}

    if tbl.CombatA then
        for _, v in ipairs(tbl.CombatA) do all[#all+1] = v end
    end

    if tbl.CombatD then
        for _, v in ipairs(tbl.CombatD) do all[#all+1] = v end
    end

    if tbl.CombatW then
        for _, v in ipairs(tbl.CombatW) do all[#all+1] = v end
    end

    if #all == 0 then return nil end

    -- History specifica per questo style
    if not HitHistory[style] then
        HitHistory[style] = {
            normal = {},
            heavy = {}
        }
    end

    local history = heavy and HitHistory[style].heavy or HitHistory[style].normal
    local available = {}

    -- Escludi le ultime mosse utilizzate
    for _, hit in ipairs(all) do
        local used = false

        for _, oldHit in ipairs(history) do
            if hit == oldHit then
                used = true
                break
            end
        end

        if not used then
            available[#available+1] = hit
        end
    end

    -- Se sono state escluse tutte, reset
    if #available == 0 then
        for i = #history, 1, -1 do
            history[i] = nil
        end

        for _, hit in ipairs(all) do
            available[#available+1] = hit
        end
    end

    local hit = available[math.random(#available)]

    -- Aggiungi alla history
    history[#history+1] = hit

    -- Mantieni solo le ultime X
    while #history > HIT_HISTORY_SIZE do
        table.remove(history, 1)
    end

    return hit
end

-- BUFFER LIST EFFECT
-- Every effect have a basic Buff form, but you can add as many effect you need on any bone in buffx = {}
-- Additive args: b=bone, t=timer (default 9000), off=offset rot=rotation_offset
BufferList = { -- c=color, s=sieze, dmg=damage multiplayer, name=name of this buf!
	{ ac=false, c=1, s=2.2, dmg=15, o=1.0, timerBuff=20000, t=2100, name="Blodyr", buffx={{"scr_powerplay","sp_powerplay_beast_appear_trails", 1.3, 57005, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 1.0},{"scr_powerplay","sp_powerplay_beast_appear_trails", 1.3, 18905, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 1.0}} }, -- this buffx will add an fx on right hand while in Buf timer!
	{ ac=false, c=2, dmg=5, timerBuff=25000, name="Silvy", sound="sounds/striano_combat/magic/spells/spell_15" },
	{ ac=false, c=3, dmg=10, timerBuff=45000, name="Golder", anim={"mp_character_creation@lineup@female_b", "loop", 750, 49}, buffx={{"scr_powerplay","sp_powerplay_beast_appear_trails", 1.1, 57005, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 0.9},{"scr_powerplay","sp_powerplay_beast_appear_trails", 1.1, 18905, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 0.9}} },
	{ ac=false, c=4, dmg=10, timerBuff=40000, name="Puller" },
	{ ac=false, c=5, dmg=10, timerBuff=90000, name="Aquar" },
	{ ac=false, c=6, dmg=7, timerBuff=90000, name="Rosyz" },
	{ ac=false, c=7, dmg=6, timerBuff=40000, name="Losyz" },
	{ ac=false, c=8, s=2.2, timerBuff=180000, dmg=5, name="Anger", buffx={{"scr_powerplay","sp_powerplay_beast_appear_trails", 1.1, 57005, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 0.9},{"scr_powerplay","sp_powerplay_beast_appear_trails", 1.1, 18905, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 0.9}} },
	{ ac=false, c=9, dmg=10, timerBuff=25000, name="Petyr" },
	{ ac=false, c=10, s=1.5, timerBuff=30000, dmg=13, name="Tyerz" },
	{ ac=false, c=11, dmg=11, timerBuff=40000, name="Bluerz" },
	{ ac=false, c=12, dmg=11, timerBuff=35000, name="Layrz" },
	{ ac=false, c=13, s=2.3, timerBuff=30000, dmg=16, name="Flamer", buffx={{"core","ent_amb_torch_fire", 0.5, 57005, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 0.9},{"core","ent_amb_torch_fire", 0.5, 18905, 0.0,0.0,0.0, 0.0,0.0,0.0, 3000, 0.9}} },
	{ ac=false, c=14, s=1.8, timerBuff=25000, dmg=15, name="Greener" },
	{ ac=false, c=15, dmg=3, timerBuff=90000, name="Poisonz" },
}
exports('applyBuffer', function(id) 
	if BufferList[id] ~= nil then
		local ped = PlayerPedId()
		local pedNet = SafeEntToNet(ped)
		if pedNet then 
			applyBuffer(id)
		end
	else
		print("Buffer not exist, ID:", id)
	end
end)
exports('BufferList', function(id) 
	if BufferList[id] ~= nil then
		return BufferList[id]
	end
end)
exports('getBufferNameFromID', function(id)
	if BufferList[id] ~= nil then
		return BufferList[id]
	else
		return "Invalid Buffer Name"
	end
end)