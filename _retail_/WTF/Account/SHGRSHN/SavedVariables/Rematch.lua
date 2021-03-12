
RematchSaved = {
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
	["PetCardYPos"] = 828.9999389648438,
	["JournalUsed"] = true,
	["SelectedTab"] = 2,
	["LevelingQueue"] = {
	},
	["Sort"] = {
		["Order"] = 2,
		["FavoritesFirst"] = true,
	},
	["JournalPanel"] = 1,
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
		["Similar"] = {
		},
		["Breed"] = {
		},
		["Rarity"] = {
		},
		["Sources"] = {
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
	["loadedTeam"] = 173372,
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
	["FavoriteFilters"] = {
	},
	["AllowHiddenPetsDefaulted"] = true,
	["UseTypeBar"] = true,
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
	},
}
