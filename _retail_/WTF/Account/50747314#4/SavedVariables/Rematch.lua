
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
["QueueRandomWhenEmpty"] = false,
["ExpandedOptionsHeaders"] = {
},
["LockWindow"] = false,
["CompactTargetList"] = false,
["PetCardForLinks"] = false,
["ResetFilters"] = false,
["TypeBarTab"] = 1,
["InteractOnMouseover"] = 0,
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
["StickyNewPets"] = false,
["CompactQueueList"] = false,
["CompactTeamList"] = false,
["SpecialSlots"] = {
},
["QueueAutoLearn"] = false,
["AllowHiddenPets"] = false,
["LockNotesPosition"] = false,
["ExpandedGroups"] = {
},
["QueueActiveSort"] = false,
["NotesFont"] = "GameFontHighlight",
["FavoriteFilters"] = {
},
["WasShownOnLogout"] = false,
["LevelingQueue"] = {
},
["InteractOnSoftInteract"] = 0,
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
