
FarmingBarDB = {
	["profileKeys"] = {
		["Fiesh - Pagle"] = "Default",
		["Fishhook - Skull Rock"] = "Default",
		["Kkundercity - Skull Rock"] = "Default",
		["Kksummon - Skull Rock"] = "Default",
		["Farmcraft - Skull Rock"] = "Default",
		["Fiesh - Skull Rock"] = "Default",
		["Øø - Skull Rock"] = "Default",
		["Fishook - Skull Rock"] = "Default",
	},
	["global"] = {
		["settings"] = {
			["autoLoot"] = true,
		},
		["version"] = 7,
	},
	["profiles"] = {
		["Default"] = {
			["bars"] = {
				{
					["point"] = {
						"TOPLEFT", -- [1]
						nil, -- [2]
						"TOPLEFT", -- [3]
						45.91371917724609, -- [4]
						-94.02466583251953, -- [5]
					},
					["skin"] = "FarmingBar_Minimal",
					["fontstrings"] = {
						["Count"] = {
							["outline"] = "THICKOUTLINE",
							["anchor"] = "CENTER",
							["face"] = "2002 Bold",
							["size"] = 45,
						},
					},
					["numButtons"] = 5,
					["buttonSize"] = 64,
					["alpha"] = 0.39,
					["buttons"] = {
						{
							["onUse"] = {
								["macrotext"] = "",
								["type"] = "ITEM",
								["itemID"] = 6532,
							},
							["trackers"] = {
								{
									["type"] = "ITEM",
									["objective"] = 1,
									["includeAllFactions"] = false,
									["id"] = 6532,
									["includeBank"] = false,
									["name"] = "Bright Baubles",
									["includeGuildBank"] = {
									},
									["includeAlts"] = false,
									["altIDs"] = {
									},
								}, -- [1]
							},
							["objective"] = 0,
							["mute"] = false,
							["icon"] = {
								["id"] = 134139,
								["type"] = "AUTO",
							},
							["condition"] = {
								["func"] = "function(trackers, GetTrackerCount)\n    -- This is the structure of the tracker table:\n    --trackers = {\n    --    [1] = {\n    --        type = \"ITEM\", -- \"CURRENCY\"\n    --        id = 0000,\n    --        objective = 1,\n    --        includeAllFactions = false,\n    --        includeAlts = false,\n    --        includeBank = false,\n    --        includeGuildBank = {\n    --             [\"GuildKey\"] = true\n    --        },\n    --        altIDs = {\n    --            {\n    --                type = \"ITEM\", -- \"CURRENCY\"\n    --                name = \"\",\n    --                id = 0000,\n    --                multiplier = 1,\n    --            }\n    --        },\n    --    },\n    --}\n    \n    -- NOTE: make sure the first argument of GetTrackerCount is nil\n    -- This function is not necessary, but available if your custom function is simple and doesn't change the way each tracker is calculated.\n    --local count =  GetTrackerCount(_, trackers[1])\n    \n    return GetTrackerCount(_, trackers[1])\nend",
								["type"] = "ALL",
							},
							["title"] = "Bright Baubles",
						}, -- [1]
						{
							["onUse"] = {
								["macrotext"] = "",
								["type"] = "ITEM",
								["itemID"] = 6362,
							},
							["trackers"] = {
								{
									["type"] = "ITEM",
									["objective"] = 1,
									["includeAllFactions"] = false,
									["id"] = 6362,
									["includeBank"] = false,
									["name"] = "Raw Rockscale Cod",
									["includeGuildBank"] = {
									},
									["altIDs"] = {
									},
									["includeAlts"] = false,
								}, -- [1]
							},
							["objective"] = 0,
							["mute"] = false,
							["title"] = "Raw Rockscale Cod",
							["condition"] = {
								["func"] = "function(trackers, GetTrackerCount)\n    -- This is the structure of the tracker table:\n    --trackers = {\n    --    [1] = {\n    --        type = \"ITEM\", -- \"CURRENCY\"\n    --        id = 0000,\n    --        objective = 1,\n    --        includeAllFactions = false,\n    --        includeAlts = false,\n    --        includeBank = false,\n    --        includeGuildBank = {\n    --             [\"GuildKey\"] = true\n    --        },\n    --        altIDs = {\n    --            {\n    --                type = \"ITEM\", -- \"CURRENCY\"\n    --                name = \"\",\n    --                id = 0000,\n    --                multiplier = 1,\n    --            }\n    --        },\n    --    },\n    --}\n    \n    -- NOTE: make sure the first argument of GetTrackerCount is nil\n    -- This function is not necessary, but available if your custom function is simple and doesn't change the way each tracker is calculated.\n    --local count =  GetTrackerCount(_, trackers[1])\n    \n    return GetTrackerCount(_, trackers[1])\nend",
								["type"] = "ALL",
							},
							["icon"] = {
								["id"] = 133890,
								["type"] = "AUTO",
							},
						}, -- [2]
						{
							["onUse"] = {
								["macrotext"] = "",
								["type"] = "ITEM",
								["itemID"] = 4603,
							},
							["trackers"] = {
								{
									["type"] = "ITEM",
									["objective"] = 1,
									["includeAllFactions"] = false,
									["id"] = 4603,
									["includeBank"] = false,
									["name"] = "Raw Spotted Yellowtail",
									["includeGuildBank"] = {
									},
									["altIDs"] = {
									},
									["includeAlts"] = false,
								}, -- [1]
							},
							["objective"] = 0,
							["mute"] = false,
							["title"] = "Raw Spotted Yellowtail",
							["condition"] = {
								["func"] = "function(trackers, GetTrackerCount)\n    -- This is the structure of the tracker table:\n    --trackers = {\n    --    [1] = {\n    --        type = \"ITEM\", -- \"CURRENCY\"\n    --        id = 0000,\n    --        objective = 1,\n    --        includeAllFactions = false,\n    --        includeAlts = false,\n    --        includeBank = false,\n    --        includeGuildBank = {\n    --             [\"GuildKey\"] = true\n    --        },\n    --        altIDs = {\n    --            {\n    --                type = \"ITEM\", -- \"CURRENCY\"\n    --                name = \"\",\n    --                id = 0000,\n    --                multiplier = 1,\n    --            }\n    --        },\n    --    },\n    --}\n    \n    -- NOTE: make sure the first argument of GetTrackerCount is nil\n    -- This function is not necessary, but available if your custom function is simple and doesn't change the way each tracker is calculated.\n    --local count =  GetTrackerCount(_, trackers[1])\n    \n    return GetTrackerCount(_, trackers[1])\nend",
								["type"] = "ALL",
							},
							["icon"] = {
								["id"] = 133887,
								["type"] = "AUTO",
							},
						}, -- [3]
						{
							["onUse"] = {
								["macrotext"] = "",
								["type"] = "ITEM",
								["itemID"] = 6359,
							},
							["trackers"] = {
								{
									["type"] = "ITEM",
									["objective"] = 1,
									["includeAllFactions"] = false,
									["id"] = 6359,
									["includeBank"] = false,
									["name"] = "Firefin Snapper",
									["includeGuildBank"] = {
									},
									["altIDs"] = {
									},
									["includeAlts"] = false,
								}, -- [1]
							},
							["objective"] = 0,
							["mute"] = false,
							["title"] = "Firefin Snapper",
							["condition"] = {
								["func"] = "function(trackers, GetTrackerCount)\n    -- This is the structure of the tracker table:\n    --trackers = {\n    --    [1] = {\n    --        type = \"ITEM\", -- \"CURRENCY\"\n    --        id = 0000,\n    --        objective = 1,\n    --        includeAllFactions = false,\n    --        includeAlts = false,\n    --        includeBank = false,\n    --        includeGuildBank = {\n    --             [\"GuildKey\"] = true\n    --        },\n    --        altIDs = {\n    --            {\n    --                type = \"ITEM\", -- \"CURRENCY\"\n    --                name = \"\",\n    --                id = 0000,\n    --                multiplier = 1,\n    --            }\n    --        },\n    --    },\n    --}\n    \n    -- NOTE: make sure the first argument of GetTrackerCount is nil\n    -- This function is not necessary, but available if your custom function is simple and doesn't change the way each tracker is calculated.\n    --local count =  GetTrackerCount(_, trackers[1])\n    \n    return GetTrackerCount(_, trackers[1])\nend",
								["type"] = "ALL",
							},
							["icon"] = {
								["id"] = 134299,
								["type"] = "AUTO",
							},
						}, -- [4]
						{
							["onUse"] = {
								["macrotext"] = "",
								["type"] = "ITEM",
								["itemID"] = 6358,
							},
							["trackers"] = {
								{
									["type"] = "ITEM",
									["objective"] = 1,
									["includeAllFactions"] = false,
									["id"] = 6358,
									["includeBank"] = false,
									["name"] = "Oily Blackmouth",
									["includeGuildBank"] = {
									},
									["altIDs"] = {
									},
									["includeAlts"] = false,
								}, -- [1]
							},
							["objective"] = 0,
							["mute"] = false,
							["title"] = "Oily Blackmouth",
							["condition"] = {
								["func"] = "function(trackers, GetTrackerCount)\n    -- This is the structure of the tracker table:\n    --trackers = {\n    --    [1] = {\n    --        type = \"ITEM\", -- \"CURRENCY\"\n    --        id = 0000,\n    --        objective = 1,\n    --        includeAllFactions = false,\n    --        includeAlts = false,\n    --        includeBank = false,\n    --        includeGuildBank = {\n    --             [\"GuildKey\"] = true\n    --        },\n    --        altIDs = {\n    --            {\n    --                type = \"ITEM\", -- \"CURRENCY\"\n    --                name = \"\",\n    --                id = 0000,\n    --                multiplier = 1,\n    --            }\n    --        },\n    --    },\n    --}\n    \n    -- NOTE: make sure the first argument of GetTrackerCount is nil\n    -- This function is not necessary, but available if your custom function is simple and doesn't change the way each tracker is calculated.\n    --local count =  GetTrackerCount(_, trackers[1])\n    \n    return GetTrackerCount(_, trackers[1])\nend",
								["type"] = "ALL",
							},
							["icon"] = {
								["id"] = 134302,
								["type"] = "AUTO",
							},
						}, -- [5]
					},
				}, -- [1]
			},
			["style"] = {
				["font"] = {
					["size"] = 18,
				},
			},
		},
	},
}
FarmingBarDevDB = nil
