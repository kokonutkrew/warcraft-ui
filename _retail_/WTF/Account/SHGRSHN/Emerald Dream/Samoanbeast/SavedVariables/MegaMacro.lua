
MegaMacroCharacterData = {
	["Macros"] = {
		{
			["StaticTexture"] = 134400,
			["Id"] = 121,
			["Code"] = "#showtooltip\n/use [form:1] survival instincts\n/use [noform:1] bear form\n",
			["Scope"] = "ch",
			["Class"] = "Druid",
			["ScopedIndex"] = 1,
			["DisplayName"] = "Bear Form",
		}, -- [1]
		{
			["StaticTexture"] = 134400,
			["Id"] = 122,
			["Code"] = "#showtooltip\n/use [form:2] travel form\n/use cat form\n",
			["Scope"] = "ch",
			["Class"] = "Druid",
			["ScopedIndex"] = 2,
			["DisplayName"] = "Cat Form",
		}, -- [2]
		{
			["StaticTexture"] = 134400,
			["Id"] = 123,
			["Code"] = "#showtooltip [talent:2/1] Tiger Dash; [talent:2/2] Renewal; [talent:2/3] Wild Charge\n/cancelaura [nospec:2,talent:2/1]Cat Form\n/use [@mouseover,harm,form:1/2,talent:2/3][@mouseovertarget,harm,form:1/2,talent:2/3][harm,form:1/2,talent:2/3][@targettarget,ha\n",
			["Scope"] = "ch",
			["Class"] = "Druid",
			["ScopedIndex"] = 3,
			["DisplayName"] = "Talent 2",
		}, -- [3]
		{
			["StaticTexture"] = 134400,
			["Id"] = 124,
			["Code"] = "#showtooltip [nospec:1,talent:3/1] Typhoon; [spec:1,talent:3/1][spec:3/4,talent:3/2] Maim; [spec:1/2,talent:3/2][spec:4,talent:3/3] Incapacitating Roar; [nospec:4,talent:3/3] Ursol's Vortex\n/use [nospec:1,talent:3/1] Typhoon\n/use [spec:1,talent:3/1][spec:\n",
			["Scope"] = "ch",
			["Class"] = "Druid",
			["ScopedIndex"] = 4,
			["DisplayName"] = "Talent 3",
		}, -- [4]
		{
			["StaticTexture"] = 134400,
			["Id"] = 125,
			["Code"] = "#showtooltip [talent:4/1] Mighty Bash; [talent:4/2] Mass Entanglement; [talent:4/3] Heart of the Wild\n/use [@mouseover,harm,talent:4/1][@mouseovertarget,harm,talent:4/1][harm,talent:4/1][@targettarget,harm,talent:4/1][talent:4/1] Mighty Bash\n/use [@mouseo\n",
			["Scope"] = "ch",
			["Class"] = "Druid",
			["ScopedIndex"] = 5,
			["DisplayName"] = "Talent 4",
		}, -- [5]
		{
			["StaticTexture"] = 134400,
			["Id"] = 126,
			["Code"] = "",
			["Scope"] = "ch",
			["Class"] = "Druid",
			["ScopedIndex"] = 6,
			["DisplayName"] = "Talent 6",
		}, -- [6]
	},
	["Specializations"] = {
		["Feral"] = {
			["Macros"] = {
			},
		},
	},
	["Activated"] = true,
}
