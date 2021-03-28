
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Samoansage - Emerald Dream"] = {
			["spec1_profileKey"] = "Samoansage - Emerald Dream",
			["spec2_profileKey"] = "Samoansage - Emerald Dream",
			["downclick"] = false,
			["fastooc"] = false,
			["specswap"] = false,
			["spec3_profileKey"] = "Samoansage - Emerald Dream",
		},
		["Threadcraft - Emerald Dream"] = {
			["spec1_profileKey"] = "Threadcraft - Emerald Dream",
			["specswap"] = false,
			["downclick"] = false,
			["fastooc"] = false,
			["spec3_profileKey"] = "Threadcraft - Emerald Dream",
			["spec2_profileKey"] = "Threadcraft - Emerald Dream",
		},
		["Samoantitan - Stormrage"] = {
			["spec1_profileKey"] = "Samoantitan - Stormrage",
			["specswap"] = false,
			["downclick"] = false,
			["fastooc"] = false,
			["spec2_profileKey"] = "Samoantitan - Stormrage",
			["spec3_profileKey"] = "Samoantitan - Stormrage",
		},
	},
	["profileKeys"] = {
		["Samoanslayer - Emerald Dream"] = "Samoanslayer - Emerald Dream",
		["Samoansage - Emerald Dream"] = "Samoansage - Emerald Dream",
		["Threadcraft - Emerald Dream"] = "Threadcraft - Emerald Dream",
		["Samoanranger - Emerald Dream"] = "Samoanranger - Emerald Dream",
		["Mf - Emerald Dream"] = "Mf - Emerald Dream",
		["Samoansavage - Emerald Dream"] = "Samoansavage - Emerald Dream",
		["Samoantitan - Stormrage"] = "Samoantitan - Stormrage",
	},
	["profiles"] = {
		["Samoanslayer - Emerald Dream"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Samoansage - Emerald Dream"] = {
			["bindings"] = {
				{
					["type"] = "menu",
					["key"] = "SHIFT-BUTTON3",
					["sets"] = {
						["default"] = true,
					},
				}, -- [1]
				{
					["type"] = "spell",
					["key"] = "BUTTON2",
					["spell"] = "Primordial Wave",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 3578231,
					["spellSubName"] = "Necrolord",
				}, -- [2]
				{
					["type"] = "target",
					["key"] = "BUTTON3",
					["sets"] = {
						["default"] = true,
					},
				}, -- [3]
				{
					["type"] = "spell",
					["key"] = "ALT-BUTTON1",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 236288,
					["spell"] = "Purify Spirit",
				}, -- [4]
				{
					["type"] = "spell",
					["key"] = "ALT-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 136075,
					["spell"] = "Purge",
				}, -- [5]
				{
					["macrotext"] = "#showtooltip\n/use [@mouseover, help, nodead] riptide\n/use [@mouseover, harm, nodead] frostshock\n/target mouseover\n",
					["type"] = "macro",
					["key"] = "BUTTON1",
					["sets"] = {
						["default"] = true,
					},
				}, -- [6]
			},
		},
		["Threadcraft - Emerald Dream"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Samoanranger - Emerald Dream"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Mf - Emerald Dream"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Samoansavage - Emerald Dream"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Samoantitan - Stormrage"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
	},
}
