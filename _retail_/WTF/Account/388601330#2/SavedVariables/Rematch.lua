
RematchSaved = {
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
=======
	["XPos"] = 781.6666870117188,
	["HidePetToast"] = true,
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
	["JournalPanel"] = 1,
	["SelectedTab"] = 1,
=======
	["SelectedTab"] = 1,
	["LevelingQueue"] = {
	},
	["SpecialSlots"] = {
	},
>>>>>>> Stashed changes
	["ExpandedTargetHeaders"] = {
	},
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
	},
<<<<<<< Updated upstream
	["SpecialSlots"] = {
	},
	["CornerPos"] = "BOTTOMLEFT",
	["QueueSanctuary"] = {
	},
	["LevelingQueue"] = {
	},
	["YPos"] = 237.9999389648438,
=======
	["QueueSanctuary"] = {
	},
	["CornerPos"] = "BOTTOMLEFT",
	["JournalPanel"] = 1,
	["ElvUIToastDefaulted"] = true,
	["YPos"] = 297.9999694824219,
>>>>>>> Stashed changes
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
	},
}
