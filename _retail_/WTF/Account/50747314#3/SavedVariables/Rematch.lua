
Rematch5Settings = {
["NotesFont"] = "GameFontHighlight",
["InteractOnTarget"] = 0,
["ExpandedTargets"] = {
},
["CompactPetList"] = false,
["BreedSource"] = false,
["BackupCount"] = 0,
["BreedFormat"] = 1,
["MousewheelSpeed"] = "Normal",
["DefaultPreferences"] = {
},
["InteractOnMouseover"] = 0,
["AutoWinRecord"] = false,
["ResetSortWithFilters"] = false,
["GroupOrder"] = {
"group:favorites",
"group:none",
},
["HideNonBattlePets"] = false,
["MinimapButtonPosition"] = -162,
["DontSortByRelevance"] = false,
["ShowNewGroupTab"] = true,
["QueueSortOrder"] = 1,
["QueueRandomWhenEmpty"] = false,
["WasShownOnLogout"] = false,
["SpecialSlots"] = {
},
["InteractOnSoftInteract"] = 0,
["CompactTargetList"] = false,
["TypeBarTab"] = 1,
["ResetFilters"] = false,
["QueueActiveSort"] = false,
["ShowNewGroupTabFix"] = true,
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
["CompactQueueList"] = false,
["CompactTeamList"] = false,
["AllowHiddenPets"] = false,
["LevelingQueue"] = {
},
["UseMinimapButton"] = false,
["LockNotesPosition"] = false,
["ConvertedTeams"] = {
},
["LockWindow"] = false,
["FavoriteFilters"] = {
},
["HideNotesButtonInBattle"] = false,
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
["ExpandedGroups"] = {
},
["ExpandedOptionsHeaders"] = {
},
["PetNotes"] = {
},
}
Rematch5SavedTeams = {
}
Rematch5SavedGroups = {
["group:favorites"] = {
["showTab"] = true,
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
["showTab"] = true,
["sortMode"] = 1,
["name"] = "Ungrouped Teams",
["isExpanded"] = true,
["meta"] = true,
["icon"] = "Interface\\Icons\\PetJournalPortrait",
["groupID"] = "group:none",
["teams"] = {
},
},
}
Rematch5SavedTargets = {
}
Rematch4Saved = {
}
Rematch4Settings = {
["ScriptFilters"] = {
},
["SpecialSlots"] = {
},
["PetNotes"] = {
},
["Sanctuary"] = {
},
["LevelingQueue"] = {
},
["Sort"] = {
["Order"] = 1,
["FavoritesFirst"] = true,
},
["QueueSanctuary"] = {
},
["FavoriteFilters"] = {
},
["TeamGroups"] = {
{
"General",
"Interface\\Icons\\PetJournalPortrait",
},
},
["SelectedTab"] = 1,
["Filters"] = {
},
}
RematchSaved = nil
RematchSettings = nil
