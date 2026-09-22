EnemyRewardsList = {
    [1] = { -- ID for reward_ID
		{ label="Plastic", name = "plastic", amount = 1 }, 
		{ label="Coal Dirty", name = "coaldirty", amount = 1 }, 
	},
    [2] = { -- ID for reward_ID
		{ label="Iron", name = "iron", amount = 1 }, 
		{ label="Coal", name = "coal", amount = 1 }, 
	},
} -- THIS WILL GIVE YOU ITEMS ON YOUR PG! Function in -> [server_config]/server_editable.lua -> enemyReward:pedDied

EnemyAreas = {
    ["Black_Forest"] = {
        center = vector3(3777.414,7618.689,12.506),
        radius = 50.0,
        maxPeds = 9,
        models = { "Skeleton_Kiml" }, weapMell_ID=3, weapFire=nil, -- `WEAPON_SMG`
        aggroRange = 7.5, -- WHEN NPC SEE YOU!
		aggroFov   = 80.0, -- Field of View of peds in this area!
		respawnDelayMs = 0, -- After how much time this area will be Reset with no players inside? 30s! Set 0 to spawn infinite peds until maxPeds is reached.
		walk="MOVE_M@DRUNK@VERYDRUNK", -- WALK STYLE OF PED
		silent=true, -- Quite npc no sound?
		reward_ID=1,
		bucket=0, -- Insert an id bucket if you want. VIRTUAL WORLD IF YOU HAVE!
		onlyMelee=true, -- To get reward!
		healthBase=400,
    },
	
	["Four_Tree"] = {
        center = vector3(4416.726,7794.33,1.638),
        radius = 50.0,
        maxPeds = 5,
        models = { "cs_orleans" }, weapMell_ID=48, weapFire=nil,
        aggroRange = 7.5, -- WHEN NPC SEE YOU!
		aggroFov   = 80.0, -- Field of View of peds in this area!
		respawnDelayMs = 0, -- 30000, -- 30s 
		walk="move_characters@franklin@fire", -- WALK STYLE OF PED - nil = default
		silent=true, -- Quite npc no sound?
		reward_ID=2,
		bucket=0, 
		onlyMelee=true, -- To get reward!
    },	
	
	["Zombie_Area"] = { -- The idea of this area it's to create a low health enemy but danger if they are together!
        center = vector3(977.504,7505.53,6.194),
        radius = 50.0,
        maxPeds = 20,
        models = { "a_m_o_acult_01", "a_m_o_acult_02", "a_m_o_beach_01" }, weapMell_ID=1, weapFire=nil, -- weapon machete is 1
        aggroRange = 7.5, -- WHEN NPC SEE YOU!
		aggroFov   = 25.0, -- Field of View of peds in this area!
		respawnDelayMs = 60000, -- 30000, -- 30s 
		walk="move_m@quick", -- WALK STYLE OF PED - nil = default
		silent=true, -- Quite npc no sound?
		reward_ID=2, -- you can make more cool reward list on top of script and insert here the new ID!
		bucket=0, 
		onlyMelee=true, -- To get reward!
		healthBase=265,
    },	
	
	["Skeleton_Area"] = { -- The idea of this area it's to create a low health enemy but danger if they are together!
        center = vector3(4254.515,6762.325,0.709),
        radius = 35.0,
        maxPeds = 5,
        models = { "Skeleton_Kiml" }, weapMell_ID=7, weapFire=nil, -- weapon machete is 1
        aggroRange = 7.5, -- WHEN NPC SEE YOU!
		aggroFov   = 80.0, -- Field of View of peds in this area!
		respawnDelayMs = 60000, -- 30000, -- 30s 
		walk="move_m@depressed@a", -- WALK STYLE OF PED - nil = default
		silent=true, -- Quite npc no sound?
		reward_ID=0, -- you can make more cool reward list on top of script and insert here the new ID!
		bucket=0, 
		onlyMelee=true, -- To get reward!
		healthBase=255,
    },	
	
	["Boar_Enemy"] = { -- The idea of this area it's to create a low health enemy but danger if they are together!
        center = vector3(4252.296,6934.189,7.276),
        radius = 35.0,
        maxPeds = 5,
        models = { "a_c_boar" }, weapMell_ID=7, weapFire=nil, -- weapon machete is 1
        aggroRange = 7.5, -- WHEN NPC SEE YOU!
		aggroFov   = 80.0, -- Field of View of peds in this area!
		respawnDelayMs = 60000, -- 30000, -- 30s 
		silent=true, -- Quite npc no sound?
		reward_ID=0, -- you can make more cool reward list on top of script and insert here the new ID!
		bucket=0, 
		healthBase=155,
		mySpeed=2.5,
		Zombie=true, -- Will make the ped with full blood!
    },
	
	-- NEW ZOMBIE!	
	["Zombie_Enemy"] = { -- The idea of this area it's to create a low health enemy but danger if they are together!
        center = vector3(4342.875,5796.924,7.607),
        radius = 35.0,
        maxPeds = 5,
        models = { "u_m_y_zombie_01" }, weapMell_ID=62, weapFire=nil, -- weapon machete is 1
        aggroRange = 7.5, -- WHEN NPC SEE YOU!
		aggroFov   = 80.0, -- Field of View of peds in this area!
		respawnDelayMs = 60000, -- 30000, -- 30s 
		silent=true, -- Quite npc no sound?
		reward_ID=0, -- you can make more cool reward list on top of script and insert here the new ID!
		bucket=0, 
		healthBase=155,
		mySpeed=2.5,
		Zombie=true, -- Will make the ped with full blood!
    },
	
}

function onBucketChange(ped, bucket)
	-- Do you need update some other your resource? you have the pedNet and the bucket!
end
