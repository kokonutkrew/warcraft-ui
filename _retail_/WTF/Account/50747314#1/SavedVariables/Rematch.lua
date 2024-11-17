
RematchSaved = {
<<<<<<< Updated upstream
=======
	["1"] = {
		{
			"BattlePet-0-000006515DCE", -- [1]
			459, -- [2]
			566, -- [3]
			208, -- [4]
			1387, -- [5]
		}, -- [1]
		{
			"BattlePet-0-0000071B4ADE", -- [1]
			299, -- [2]
			611, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000748CBAC", -- [1]
			115, -- [2]
			647, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [3]
	},
	["2"] = {
		{
			"BattlePet-0-00000766C7A3", -- [1]
			1483, -- [2]
			649, -- [3]
			350, -- [4]
			1639, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000006F85525", -- [1]
			777, -- [2]
			634, -- [3]
			209, -- [4]
			338, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000006C2C39F", -- [1]
			429, -- [2]
			312, -- [3]
			521, -- [4]
			1416, -- [5]
		}, -- [3]
	},
	["Explosive"] = {
		{
			"BattlePet-0-0000071B4ADE", -- [1]
			299, -- [2]
			611, -- [3]
			593, -- [4]
			1152, -- [5]
		}, -- [1]
		{
			"BattlePet-0-000006515DCE", -- [1]
			390, -- [2]
			640, -- [3]
			282, -- [4]
			1387, -- [5]
		}, -- [2]
		{
			"BattlePet-0-00000748CBAC", -- [1]
			115, -- [2]
			647, -- [3]
			282, -- [4]
			844, -- [5]
		}, -- [3]
	},
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
	["XPos"] = 675,
	["FavoriteFilters"] = {
	},
	["Sort"] = {
		["Order"] = 1,
		["FavoritesFirst"] = true,
	},
	["AllowHiddenPetsDefaulted"] = true,
	["TeamGroups"] = {
		{
			"General", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
	},
=======
	["XPos"] = 851.592529296875,
	["ExpandedOptHeaders"] = {
	},
	["SpecialSlots"] = {
	},
	["SelectedTab"] = 1,
	["HidePetToast"] = true,
	["QueueSanctuary"] = {
	},
	["Sort"] = {
		["Order"] = 2,
		["FavoritesFirst"] = true,
	},
	["AllowHiddenPetsDefaulted"] = true,
	["BackupCount"] = 0,
	["TeamGroups"] = {
		{
			"Ranked", -- [1]
			1322720, -- [2]
		}, -- [1]
		{
			"Money", -- [1]
			1686575, -- [2]
		}, -- [2]
		{
			"Shadowlands", -- [1]
			1686581, -- [2]
		}, -- [3]
		{
			"Test", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [4]
		{
			"Starters", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [5]
	},
	["YPos"] = 338.0000610351563,
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
			[4] = true,
>>>>>>> Stashed changes
		},
		["Level"] = {
		},
		["Strong"] = {
		},
<<<<<<< Updated upstream
		["Similar"] = {
=======
		["Sources"] = {
>>>>>>> Stashed changes
		},
		["Breed"] = {
		},
		["Rarity"] = {
		},
<<<<<<< Updated upstream
		["Sources"] = {
=======
		["Similar"] = {
>>>>>>> Stashed changes
		},
		["Collected"] = {
		},
		["Favorite"] = {
		},
		["Types"] = {
		},
	},
<<<<<<< Updated upstream
	["ExpandedOptHeaders"] = {
	},
	["JournalPanel"] = 1,
	["SelectedTab"] = 1,
	["ExpandedTargetHeaders"] = {
	},
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
	},
	["SpecialSlots"] = {
	},
	["CornerPos"] = "BOTTOMLEFT",
	["QueueSanctuary"] = {
	},
	["LevelingQueue"] = {
	},
	["YPos"] = 237.9999389648438,
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
=======
	["Minimized"] = true,
	["JournalUsed"] = true,
	["LevelingQueue"] = {
	},
	["JournalPanel"] = 1,
	["ExpandedTargetHeaders"] = {
	},
	["PreferredMode"] = 1,
	["ActivePanel"] = 2,
	["Sanctuary"] = {
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
		["BattlePet-0-00000766C7A3"] = {
			1, -- [1]
			true, -- [2]
			1639, -- [3]
			1, -- [4]
			159, -- [5]
			12, -- [6]
			10, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000006C2C39F"] = {
			1, -- [1]
			true, -- [2]
			1416, -- [3]
			1, -- [4]
			158, -- [5]
			12, -- [6]
			10, -- [7]
			4, -- [8]
		},
		["BattlePet-0-0000071B4ADE"] = {
			4, -- [1]
			true, -- [2]
			1152, -- [3]
			25, -- [4]
			1644, -- [5]
			276, -- [6]
			260, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000006515DCE"] = {
			4, -- [1]
			true, -- [2]
			1387, -- [3]
			25, -- [4]
			1400, -- [5]
			341, -- [6]
			244, -- [7]
			4, -- [8]
		},
		["BattlePet-0-00000748CBAC"] = {
			4, -- [1]
			true, -- [2]
			844, -- [3]
			25, -- [4]
			1400, -- [5]
			276, -- [6]
			309, -- [7]
			4, -- [8]
		},
	},
	["ElvUIToastDefaulted"] = true,
	["CornerPos"] = "BOTTOMLEFT",
	["FavoriteFilters"] = {
	},
	["loadedTeam"] = "Explosive",
	["UseTypeBar"] = true,
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
		[1155] = "Top 20 Battle Pet",
		[844] = "Top 20 Battle Pet",
		[1238] = "Top 20 Battle Pet",
>>>>>>> Stashed changes
	},
}
