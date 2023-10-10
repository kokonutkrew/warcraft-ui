
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["profileKeys"] = {
		["Samoanslayer - Emerald Dream"] = "Default",
		["Gearcraft - Emerald Dream"] = "Default",
		["Samoanrelic - Emerald Dream"] = "Default",
		["Threadcraft - Emerald Dream"] = "Default",
		["Samoanbeast - Emerald Dream"] = "Default",
		["Herbcraft - Emerald Dream"] = "Default",
		["Ikkl - Emerald Dream"] = "Default",
		["Farmcraft - Tichondrius"] = "Default",
		["Samoanranger - Emerald Dream"] = "Default",
		["Samoansage - Emerald Dream"] = "Default",
		["Samoanlegend - Emerald Dream"] = "Default",
		["Forgecraft - Emerald Dream"] = "Default",
		["Samoanmystic - Emerald Dream"] = "Default",
		["Dustcraft - Emerald Dream"] = "Default",
		["Samoanruin - Emerald Dream"] = "Default",
		["Xb - Emerald Dream"] = "Default",
	},
	["global"] = {
		["version"] = "v1.8",
		["scripts"] = {
			["Rematch"] = {
				[85519] = {
					["name"] = "Christoph VonFeasel",
					["code"] = "quit [self(#2).dead & !enemy(#2).played]\nchange(#2) [ round=2 ]\nuse(Explode:282) [ enemy(#3).hp.can_explode ]\nuse(Powerball:566) [ enemy.round=1 ]\nuse(Wind-Up:459) [ enemy(#2).active ]\nuse(Wind-Up:459) [ enemy.round<4 ]\nuse(Powerball:566)\nuse(Extra Plating:392) [ self.round=1 ]\nuse(Make it Rain:985)\nuse(Inflation:1002)\nchange(#1)",
				},
				[85625] = {
					["name"] = "Kromli and Gromli",
					["code"] = "ability(Savage Talon:1370) [enemy.aura(Shattered Defenses:542).exists]\nability(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nability(Flock:581)\nability(Hunting Party:921)\nability(Leap:364)\nability(#1)\nstandby\nchange(next)",
				},
			},
			["Base"] = {
			},
			["FirstEnemy"] = {
			},
			["AllInOne"] = {
			},
		},
	},
	["profiles"] = {
		["Default"] = {
			["position"] = {
				["y"] = -104.0000381469727,
				["x"] = -177.9996337890625,
				["point"] = "RIGHT",
				["height"] = 393.9999694824219,
				["scale"] = 1,
				["width"] = 700.0000610351562,
			},
			["pluginOrders"] = {
				"Rematch", -- [1]
				"Base", -- [2]
				"FirstEnemy", -- [3]
				"AllInOne", -- [4]
			},
		},
	},
}
