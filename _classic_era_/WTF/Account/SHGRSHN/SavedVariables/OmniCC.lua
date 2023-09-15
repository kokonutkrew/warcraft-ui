
OmniCCDB = {
	["profileKeys"] = {
		["Samoanlegend - Grobbulus"] = "Default",
		["Samoanslayer - Grobbulus"] = "Default",
		["Samoanbeast - Grobbulus"] = "Default",
		["Ss - Grobbulus"] = "Default",
		["Samoanranger - Whitemane"] = "Default",
		["Samoansavage - Grobbulus"] = "Default",
		["Dd - Grobbulus"] = "Default",
		["Samoanraja - Grobbulus"] = "Default",
		["Samoanranger - Defias Pillager"] = "Default",
		["Samoanbank - Whitemane"] = "Default",
		["Samoanmystic - Grobbulus"] = "Default",
		["Goldenshots - Defias Pillager"] = "Default",
		["Bannhammer - Skull Rock"] = "Default",
		["Kk - Grobbulus"] = "Default",
		["Samoanslayed - Whitemane"] = "Default",
		["Samoanranger - Grobbulus"] = "Default",
		["Samoansage - Grobbulus"] = "Default",
		["Cupcakeheals - Skull Rock"] = "Default",
		["Øø - Skull Rock"] = "Default",
		["Samoanrelic - Grobbulus"] = "Default",
		["Samoanbeast - Skull Rock"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.1.1",
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
						["soon"] = {
						},
						["seconds"] = {
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
