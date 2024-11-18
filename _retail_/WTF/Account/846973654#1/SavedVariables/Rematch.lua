
Rematch5Settings = {
["UseMinimapButton"] = false,
["InteractOnTarget"] = 0,
["ExpandedTargets"] = {
},
["CompactPetList"] = false,
["BreedSource"] = false,
["BreedFormat"] = 1,
["MousewheelSpeed"] = "Normal",
["DefaultPreferences"] = {
},
["HideNotesButtonInBattle"] = false,
["AutoWinRecord"] = false,
["ResetSortWithFilters"] = false,
["GroupOrder"] = {
"group:favorites",
"group:none",
},
["HideNonBattlePets"] = false,
["MinimapButtonPosition"] = -162,
["DontSortByRelevance"] = false,
["ScriptFilters"] = {
{
"Unnamed Pets",
"-- Collected pets that still have their original name.\n\nreturn petInfo.isOwned and not petInfo.customName",
},
{
"Partially Leveled",
"-- Pets that have earned some xp in battle.\n\nreturn petInfo.xp and petInfo.xp>0",
},
{
"Pets Without Rares",
"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif petInfo.canBattle and petInfo.isOwned and not rares[speciesID] then\n  return true\nend",
},
{
"Polished Pet Charms",
"-- Pets with Polished Pet Charms in their source.\n\nreturn (petInfo.sourceText or \"\"):match(\"item:163036\") and true",
},
},
["SpecialSlots"] = {
},
["AllowHiddenPets"] = false,
["LockWindow"] = false,
["CompactTargetList"] = false,
["PetCardForLinks"] = false,
["ResetFilters"] = false,
["ConvertedTeams"] = {
},
["Filters"] = {
["Other"] = {
},
["Stats"] = {
},
["Strong"] = {
},
["Marker"] = {
},
["Sources"] = {
},
["Sort"] = {
},
["Level"] = {
},
["Tough"] = {
},
["Types"] = {
},
["Expansion"] = {
},
["Rarity"] = {
},
["Similar"] = {
},
["Search"] = {
},
["Breed"] = {
},
["Script"] = {
},
["Collected"] = {
},
["Favorite"] = {
},
["Moveset"] = {
},
},
["SortByNickname"] = false,
["NotesFont"] = "GameFontHighlight",
["CompactQueueList"] = false,
["WasShownOnLogout"] = false,
["InteractOnMouseover"] = 0,
["QueueSortOrder"] = 1,
["QueueRandomWhenEmpty"] = false,
["LockNotesPosition"] = false,
["ExpandedGroups"] = {
},
["QueueActiveSort"] = false,
["FavoriteFilters"] = {
},
["InteractOnSoftInteract"] = 0,
["LevelingQueue"] = {
},
["CompactTeamList"] = false,
["TypeBarTab"] = 1,
["ExpandedOptionsHeaders"] = {
},
}
Rematch5SavedTeams = {
}
Rematch5SavedGroups = {
["group:favorites"] = {
["sortMode"] = 1,
["name"] = "Favorite Teams",
["isExpanded"] = true,
["meta"] = true,
["icon"] = "Interface\\Icons\\ACHIEVEMENT_GUILDPERK_MRPOPULARITY_RANK2",
["groupID"] = "group:favorites",
["teams"] = {
},
},
["group:none"] = {
["sortMode"] = 1,
["name"] = "Ungrouped Teams",
["isExpanded"] = true,
["meta"] = true,
["icon"] = "Interface\\Icons\\INV_Pet_BattlePetTraining",
["groupID"] = "group:none",
["teams"] = {
},
},
}
Rematch5SavedTargets = {
}
Rematch4Saved = nil
Rematch4Settings = nil
RematchSaved = nil
RematchSettings = nil
