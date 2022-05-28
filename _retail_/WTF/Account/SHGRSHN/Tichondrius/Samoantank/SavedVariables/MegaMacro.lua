
MegaMacroCharacterData = {
	["Macros"] = {
		{
			["StaticTexture"] = 134400,
			["Id"] = 121,
			["Code"] = "/script SendChatMessage(\"!ff_follow\", \"WHISPER\", nil, UnitName(\"target\"))\n",
			["Scope"] = "ch",
			["Class"] = "Paladin",
			["ScopedIndex"] = 1,
			["DisplayName"] = "Follow [FF]",
		}, -- [1]
		{
			["StaticTexture"] = 134400,
			["Id"] = 122,
			["Code"] = "/equipset [equipped:Two-Handed Maces] Prot;\n/equipset [equipped:Shield] Hand of Ragnaros;\n",
			["Scope"] = "ch",
			["Class"] = "Paladin",
			["ScopedIndex"] = 2,
			["DisplayName"] = "Hand of Ragnaros",
		}, -- [2]
		{
			["StaticTexture"] = 134400,
			["Id"] = 123,
			["Code"] = "#showtooltip Divine Shield\n/stopcasting\n/cast [@Player] Divine Shield\n/cancelaura Divine Shield\n",
			["Scope"] = "ch",
			["Class"] = "Paladin",
			["ScopedIndex"] = 3,
			["DisplayName"] = "xDivineShield",
		}, -- [3]
		{
			["StaticTexture"] = 134400,
			["Id"] = 124,
			["Code"] = "/castsequence [@mouseover,help,nodead][@player] Light of the Martyr\n",
			["Scope"] = "ch",
			["Class"] = "Paladin",
			["ScopedIndex"] = 4,
			["DisplayName"] = "xxxMarty",
		}, -- [4]
	},
	["Specializations"] = {
		["Retribution"] = {
			["Macros"] = {
			},
		},
	},
	["Activated"] = true,
}
