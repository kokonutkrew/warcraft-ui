
OmniCCDB = {
	["profileKeys"] = {
		["Tigerlilly - Grobbulus"] = "Default",
		["Abenia - Grobbulus"] = "Default",
		["Marshmellow - Grobbulus"] = "Default",
		["Jnx - Grobbulus"] = "Default",
		["Dd - Grobbulus"] = "Default",
	},
	["global"] = {
		["addonVersion"] = "9.0.4",
		["dbVersion"] = 5,
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 1,
					["theme"] = "Plater Nameplates Theme",
				}, -- [1]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
