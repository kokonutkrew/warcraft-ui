
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
["QueueSortOrder"] = 1,
["AllowHiddenPets"] = false,
["ExpandedOptionsHeaders"] = {
},
["InteractOnSoftInteract"] = 0,
["CompactTargetList"] = false,
["TypeBarTab"] = 1,
["ResetFilters"] = false,
["LockWindow"] = false,
["LevelingQueue"] = {
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
["ExpandedGroups"] = {
},
["CompactQueueList"] = false,
["WasShownOnLogout"] = false,
["CompactTeamList"] = false,
["QueueAutoLearn"] = false,
["QueueActiveSort"] = false,
["LockNotesPosition"] = false,
["PetCardForLinks"] = false,
["FavoriteFilters"] = {
},
["NotesFont"] = "GameFontHighlight",
["QueueRandomWhenEmpty"] = false,
["SpecialSlots"] = {
},
["StickyNewPets"] = false,
["InteractOnMouseover"] = 0,
["ConvertedTeams"] = {
},
}
Rematch5SavedTeams = {
}
Rematch5SavedGroups = {
["group:favorites"] = {
["sortMode"] = 1,
["name"] = "Favorite Teams",
["teams"] = {
},
["meta"] = true,
["groupID"] = "group:favorites",
["icon"] = "Interface\\Icons\\ACHIEVEMENT_GUILDPERK_MRPOPULARITY_RANK2",
["isExpanded"] = true,
},
["group:none"] = {
["sortMode"] = 1,
["name"] = "Ungrouped Teams",
["teams"] = {
},
["meta"] = true,
["groupID"] = "group:none",
["icon"] = "Interface\\Icons\\INV_Pet_BattlePetTraining",
["isExpanded"] = true,
},
}
Rematch5SavedTargets = {
}
Rematch4Saved = nil
Rematch4Settings = nil
RematchSaved = nil
RematchSettings = nil