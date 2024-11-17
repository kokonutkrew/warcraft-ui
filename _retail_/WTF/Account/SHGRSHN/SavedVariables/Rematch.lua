
RematchSaved = {
<<<<<<< Updated upstream
	["1"] = {
		{
			"BattlePet-0-000006F85525", -- [1]
			777, -- [2]
			634, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000007E80EFE", -- [1]
			1625, -- [2]
			1626, -- [3]
			1627, -- [4]
			1828, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000007AFD5B8", -- [1]
			437, -- [2]
			256, -- [3]
			538, -- [4]
			319, -- [5]
		}, -- [3]
	},
	[173372] = {
		{
			"BattlePet-0-000006D2EACE", -- [1]
			504, -- [2]
			506, -- [3]
			508, -- [4]
			753, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000007E80EFE", -- [1]
			1625, -- [2]
			1626, -- [3]
			1627, -- [4]
			1828, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000007AFD5B8", -- [1]
			437, -- [2]
			256, -- [3]
			538, -- [4]
			319, -- [5]
		}, -- [3]
		["tab"] = 2,
		["teamName"] = "Glitterdust",
	},
}
RematchSettings = {
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
	},
	["QueueSortOrder"] = 1,
	["XPos"] = 675,
	["loadedTeam"] = 173372,
	["PetCardYPos"] = 828.9999389648438,
	["SelectedTab"] = 2,
	["LevelingQueue"] = {
	},
	["Sort"] = {
		["Order"] = 2,
		["FavoritesFirst"] = true,
	},
	["AllowHiddenPetsDefaulted"] = true,
	["BackupCount"] = 0,
	["TeamGroups"] = {
		{
			"PVP", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
		{
			"SL World Quests", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [2]
	},
	["YPos"] = 237.9999389648438,
	["Filters"] = {
		["Other"] = {
		},
		["Expansion"] = {
		},
		["Script"] = {
		},
		["Moveset"] = {
		},
		["Tough"] = {
		},
		["Level"] = {
		},
		["Strong"] = {
		},
		["Sources"] = {
		},
		["Breed"] = {
		},
		["Rarity"] = {
		},
		["Similar"] = {
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Types"] = {
		},
	},
	["ExpandedOptHeaders"] = {
	},
	["JournalUsed"] = true,
	["PetCardXPos"] = 1446,
	["SpecialSlots"] = {
	},
	["ExpandedTargetHeaders"] = {
	},
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
		["BattlePet-0-000007AFD5B8"] = {
			2, -- [1]
			true, -- [2]
			319, -- [3]
			25, -- [4]
			1221, -- [5]
			322, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000006D2EACE"] = {
			1, -- [1]
			true, -- [2]
			753, -- [3]
			25, -- [4]
			1465, -- [5]
			276, -- [6]
			289, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000007E80EFE"] = {
			2, -- [1]
			true, -- [2]
			1828, -- [3]
			25, -- [4]
			1506, -- [5]
			297, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000006F85525"] = {
			1, -- [1]
			true, -- [2]
			338, -- [3]
			25, -- [4]
			1627, -- [5]
			273, -- [6]
			260, -- [7]
			4, -- [8]
		},
	},
	["QueueSanctuary"] = {
	},
	["CornerPos"] = "BOTTOMLEFT",
	["JournalPanel"] = 1,
	["FavoriteFilters"] = {
	},
	["UseTypeBar"] = true,
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
	},
=======
["1"] = {
{
"BattlePet-0-000006515DCE",
459,
566,
208,
1387,
},
{
"BattlePet-0-0000071B4ADE",
299,
611,
593,
1152,
},
{
"BattlePet-0-00000748CBAC",
115,
647,
282,
844,
},
},
["3"] = {
{
"BattlePet-0-00000D59F4DF",
2294,
2381,
937,
3036,
},
{
"BattlePet-0-000006F85525",
777,
634,
209,
338,
},
{
"BattlePet-0-00000DD61ACB",
406,
453,
814,
1155,
},
},
["2"] = {
{
"BattlePet-0-00000766C7A3",
1483,
649,
350,
1639,
},
{
"BattlePet-0-000006F85525",
777,
634,
209,
338,
},
{
"BattlePet-0-000006C2C39F",
429,
312,
521,
1416,
},
},
["New Team1"] = {
{
"BattlePet-0-00000DD61ACB",
406,
453,
814,
1155,
},
{
"BattlePet-0-000006F85525",
777,
634,
209,
338,
},
{
"BattlePet-0-00000DD64CCE",
110,
364,
538,
1211,
},
},
[175777] = {
{
"BattlePet-0-000006515DCE",
390,
640,
282,
1387,
},
{
"BattlePet-0-0000071B4ADE",
299,
611,
593,
1152,
},
{
"BattlePet-0-00000748CBAC",
115,
647,
282,
844,
},
["tab"] = 3,
["teamName"] = "Crystalsnap",
},
["Kill Flying Arcane Storm"] = {
{
"BattlePet-0-00000AACAFCC",
504,
488,
589,
2441,
},
{
"BattlePet-0-00000DCA7918",
484,
489,
308,
2929,
},
{
"BattlePet-0-00000DCA7BD2",
484,
489,
308,
2929,
},
["tab"] = 4,
},
["Explosive"] = {
{
"BattlePet-0-0000071B4ADE",
299,
611,
593,
1152,
},
{
"BattlePet-0-000006515DCE",
390,
640,
282,
1387,
},
{
"BattlePet-0-00000748CBAC",
115,
647,
282,
844,
},
},
}
RematchSettings = {
["QueueActiveSort"] = true,
["JournalUsed"] = true,
["DialogYPos"] = 535,
["HidePetToast"] = true,
["QueueSanctuary"] = {
["BattlePet-0-0000087EC25B"] = "QQQ81SB",
["BattlePet-0-00000D4FC239"] = "QQQ82UQ",
["BattlePet-0-000007B08158"] = "QQQ71A7",
["BattlePet-0-000007ACD38B"] = "QQQ6A1",
["BattlePet-0-0000086F6718"] = "QQQ81LO",
["BattlePet-0-000007413929"] = "QQQ81BK",
["BattlePet-0-00000ACE2354"] = "QQQ92BB",
["BattlePet-0-000006809D93"] = "QQQ91AL",
["BattlePet-0-000007322B04"] = "QQQ61BI",
["BattlePet-0-0000087EA8BF"] = "QQQA1IS",
["BattlePet-0-00000D5B6E42"] = "QQQ92V5",
["BattlePet-0-00000A2ACE9C"] = "QQQ31OC",
["BattlePet-0-00000766C7A3"] = "QQQ71J7",
["BattlePet-0-00000DD64CCE"] = "QQQ815R",
["BattlePet-0-000007FA2F8E"] = "QQQA1D8",
["BattlePet-0-00000AACB815"] = "QQQ32C8",
["BattlePet-0-00000DDB41B4"] = "QQQ31TF",
["BattlePet-0-000008862691"] = "QQQ81VQ",
["BattlePet-0-00000AC613D4"] = "QQQ52C5",
["BattlePet-0-000007ACD7B5"] = "QQQB13M",
["BattlePet-0-000007EB1267"] = "QQQA3U",
["BattlePet-0-000007F6BB00"] = "QQQ5198",
["BattlePet-0-00000DD65259"] = "QQQ82OG",
["BattlePet-0-000007421775"] = "QQQ61I0",
["BattlePet-0-00000731CBA2"] = "QQQ61I0",
["BattlePet-0-0000073C4618"] = "QQQB1G9",
},
["Sort"] = {
["Order"] = 2,
["FavoritesFirst"] = true,
["Reverse"] = true,
},
["JournalPanel"] = 1,
["BackupCount"] = 0,
["Minimized"] = true,
["PetCardXPos"] = 1098.370361328125,
["PreferredMode"] = 1,
["ActivePanel"] = 2,
["Sanctuary"] = {
["BattlePet-0-0000087EC25B"] = {
1,
true,
1931,
12,
685,
147,
139,
4,
},
["BattlePet-0-00000766C7A3"] = {
2,
true,
1639,
7,
516,
83,
68,
4,
},
["BattlePet-0-000007B08158"] = {
1,
true,
1351,
8,
563,
93,
83,
4,
},
["BattlePet-0-0000086F6718"] = {
1,
true,
1720,
7,
464,
76,
86,
4,
},
["BattlePet-0-00000AC613D4"] = {
1,
true,
2437,
7,
464,
73,
91,
4,
},
["BattlePet-0-000006809D93"] = {
1,
true,
1365,
7,
505,
73,
81,
4,
},
["BattlePet-0-00000DCA7BD2"] = {
1,
true,
2929,
23,
1080,
185,
210,
1,
},
["BattlePet-0-000006C2C39F"] = {
1,
true,
1416,
1,
158,
12,
10,
4,
},
["BattlePet-0-000007ACD7B5"] = {
1,
true,
1142,
12,
794,
123,
139,
4,
},
["BattlePet-0-0000087EA8BF"] = {
1,
true,
1628,
7,
482,
81,
76,
4,
},
["BattlePet-0-00000D5B6E42"] = {
1,
true,
3045,
7,
495,
67,
71,
3,
},
["BattlePet-0-00000D59F4DF"] = {
1,
true,
3036,
25,
1298,
362,
244,
4,
},
["BattlePet-0-000007FA2F8E"] = {
1,
true,
1448,
7,
482,
81,
76,
4,
},
["BattlePet-0-00000DCA7918"] = {
1,
nil,
2929,
23,
1115,
203,
244,
2,
},
["BattlePet-0-0000071B4ADE"] = {
3,
true,
1152,
25,
1644,
276,
260,
4,
},
["BattlePet-0-000007EB1267"] = {
1,
true,
126,
7,
453,
75,
71,
3,
},
["BattlePet-0-000007421775"] = {
1,
true,
1600,
4,
347,
49,
36,
4,
},
["BattlePet-0-00000731CBA2"] = {
1,
true,
1600,
19,
1273,
235,
173,
4,
},
["BattlePet-0-00000D4FC239"] = {
1,
true,
3034,
11,
583,
126,
117,
3,
},
["BattlePet-0-000007ACD38B"] = {
1,
true,
321,
10,
750,
104,
104,
4,
},
["BattlePet-0-000007413929"] = {
1,
true,
1396,
12,
763,
139,
131,
4,
},
["BattlePet-0-00000AACAFCC"] = {
1,
true,
2441,
1,
155,
11,
11,
4,
},
["BattlePet-0-00000A2ACE9C"] = {
1,
true,
1804,
7,
441,
82,
82,
4,
},
["BattlePet-0-000006515DCE"] = {
3,
true,
1387,
25,
1400,
341,
244,
4,
},
["BattlePet-0-00000DD64CCE"] = {
2,
true,
1211,
21,
1055,
257,
257,
4,
},
["BattlePet-0-00000AACB815"] = {
1,
true,
2440,
7,
498,
80,
73,
4,
},
["BattlePet-0-00000DDB41B4"] = {
1,
true,
1967,
14,
851,
159,
155,
4,
},
["BattlePet-0-000008862691"] = {
1,
true,
2042,
7,
453,
79,
86,
4,
},
["BattlePet-0-00000ACE2354"] = {
1,
true,
2411,
4,
320,
35,
45,
3,
},
["BattlePet-0-000007F6BB00"] = {
1,
true,
1320,
10,
620,
104,
130,
4,
},
["BattlePet-0-00000DD61ACB"] = {
2,
true,
1155,
25,
1725,
276,
244,
4,
},
["BattlePet-0-000007322B04"] = {
1,
true,
1394,
4,
373,
42,
39,
4,
},
["BattlePet-0-00000DD65259"] = {
1,
true,
2832,
18,
1121,
226,
173,
4,
},
["BattlePet-0-00000748CBAC"] = {
3,
true,
844,
25,
1400,
276,
309,
4,
},
["BattlePet-0-000006F85525"] = {
3,
true,
338,
25,
1627,
273,
260,
4,
},
["BattlePet-0-0000073C4618"] = {
1,
true,
1545,
12,
755,
131,
139,
4,
},
},
["YPos"] = 338.0000610351563,
["SelectedTab"] = 1,
["ScriptFilters"] = {
{
"Unnamed Pets",
"-- Collected pets that still have their original name.\n\nreturn owned and not customName",
},
{
"Partially Leveled",
"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0",
},
{
"Unique Abilities",
"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend",
},
{
"Pets Without Rares",
"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend",
},
{
"Hybrid Counters",
"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n",
},
},
["SpecialSlots"] = {
},
["XPos"] = 851.592529296875,
["LevelingQueue"] = {
"BattlePet-0-00000DD64CCE",
"BattlePet-0-00000731CBA2",
"BattlePet-0-00000DD65259",
"BattlePet-0-00000DDB41B4",
"BattlePet-0-0000087EC25B",
"BattlePet-0-000007413929",
"BattlePet-0-0000073C4618",
"BattlePet-0-000007ACD7B5",
"BattlePet-0-00000D4FC239",
"BattlePet-0-000007F6BB00",
"BattlePet-0-000007ACD38B",
"BattlePet-0-000007B08158",
"BattlePet-0-0000086F6718",
"BattlePet-0-000007EB1267",
"BattlePet-0-00000AC613D4",
"BattlePet-0-000008862691",
"BattlePet-0-000007FA2F8E",
"BattlePet-0-0000087EA8BF",
"BattlePet-0-00000AACB815",
"BattlePet-0-00000766C7A3",
"BattlePet-0-00000D5B6E42",
"BattlePet-0-00000A2ACE9C",
"BattlePet-0-000006809D93",
"BattlePet-0-000007421775",
"BattlePet-0-00000ACE2354",
"BattlePet-0-000007322B04",
},
["DialogXPos"] = 965.0000610351562,
["TeamGroups"] = {
{
"Ranked",
1322720,
},
{
"Money",
1686575,
},
{
"Shadowlands",
1686581,
},
{
"Test",
"Interface\\Icons\\PetJournalPortrait",
},
{
"Starters",
"Interface\\Icons\\PetJournalPortrait",
},
},
["Filters"] = {
["Other"] = {
},
["Expansion"] = {
},
["Script"] = {
},
["Moveset"] = {
},
["Tough"] = {
},
["Level"] = {
},
["Strong"] = {
},
["Sources"] = {
},
["Breed"] = {
},
["Rarity"] = {
},
["Similar"] = {
},
["Collected"] = {
},
["Favorite"] = {
},
["Types"] = {
},
},
["ExpandedOptHeaders"] = {
},
["ExpandedTargetHeaders"] = {
},
["PetCardYPos"] = 994.8148803710938,
["loadedTeam"] = "New Team1",
["FavoriteFilters"] = {
},
["ElvUIToastDefaulted"] = true,
["CornerPos"] = "BOTTOMLEFT",
["QueueSortOrder"] = 2,
["AllowHiddenPetsDefaulted"] = true,
["UseTypeBar"] = true,
["CustomScaleValue"] = 100,
["PetNotes"] = {
[1155] = "Top 20 Battle Pet",
[844] = "Top 20 Battle Pet",
[1238] = "Top 20 Battle Pet",
},
>>>>>>> Stashed changes
}
