
RematchSaved = {
}
RematchSettings = {
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
["XPos"] = 675,
["QueueSanctuary"] = {
},
["Sort"] = {
["Order"] = 1,
["FavoritesFirst"] = true,
},
["AllowHiddenPetsDefaulted"] = true,
["TeamGroups"] = {
{
"General",
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
["Types"] = {
},
["Favorite"] = {
},
["Collected"] = {
},
["Similar"] = {
},
["Sources"] = {
},
["Breed"] = {
},
["Rarity"] = {
},
["Strong"] = {
},
["Level"] = {
},
["Tough"] = {
},
["Moveset"] = {
},
},
["ExpandedOptHeaders"] = {
},
["CustomScaleValue"] = 100,
["FavoriteFilters"] = {
},
["NotesFont"] = "GameFontHighlight",
["ExpandedTargetHeaders"] = {
},
["PreferredMode"] = 1,
["ActivePanel"] = 1,
["Sanctuary"] = {
},
["JournalPanel"] = 1,
["CornerPos"] = "BOTTOMLEFT",
["QueueSortOrder"] = 1,
["LevelingQueue"] = {
},
["YPos"] = 237.9999389648438,
["SelectedTab"] = 1,
["PetNotes"] = {
},
}
