
Rematch5Settings = {
["ShowLoadedTeamPreferences"] = false,
["ExpandedTargets"] = {
},
["CustomScale"] = false,
["CompactPetList"] = false,
["BreedSource"] = "BattlePetBreedID",
["LastOpenLayout"] = "3-teams",
["CurrentLayout"] = "3-teams",
["ColorPetNames"] = true,
["HideNotesBadges"] = false,
["DefaultPreferences"] = {
},
["AutoWinRecord"] = false,
["ResetSortWithFilters"] = false,
["GroupOrder"] = {
"group:favorites",
"group:none",
},
["HideNonBattlePets"] = false,
["DontSortByRelevance"] = false,
["UseDefaultJournal"] = false,
["AllowHiddenPets"] = false,
["FavoriteFilters"] = {
},
["Anchor"] = "BOTTOMRIGHT",
["LoadHealthiest"] = false,
["CompactQueueList"] = false,
["KeepNotesOnScreen"] = false,
["CollapseOnEsc"] = false,
["QueueActiveSort"] = false,
["InteractOnTarget"] = 0,
["BackupCount"] = 0,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["MousewheelSpeed"] = "Normal",
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["PetNotes"] = {
},
["HideLevelBubbles"] = false,
["LastOpenJournal"] = true,
["ShowAbilityNumbers"] = false,
["UseMinimapButton"] = false,
["MaximizedLayout"] = "3-teams",
["MinimapButtonPosition"] = -162,
["NotesFont"] = "GameFontHighlight",
["HideLevelingBadges"] = false,
["BreedFormat"] = 1,
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
["HideNotesButtonInBattle"] = false,
["QueueRandomWhenEmpty"] = false,
["LockWindow"] = false,
["ExpandedGroups"] = {
},
["TypeBarTab"] = 1,
["ResetFilters"] = false,
["WasShownOnLogout"] = false,
["InteractOnSoftInteract"] = 0,
["CompactTargetList"] = false,
["HideMarkerBadges"] = false,
["AlwaysTeamTabs"] = false,
["HideRarityBorders"] = false,
["JournalLayout"] = "3-teams",
["NeverTeamTabs"] = false,
["SortByNickname"] = false,
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
["ShowNewGroupTab"] = false,
["CompactTeamList"] = false,
["SpecialSlots"] = {
},
["AlwaysUsePetSatchel"] = false,
["LockPosition"] = false,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["HidePreferenceBadges"] = false,
["LevelingQueue"] = {
},
["NoBackupReminder"] = false,
["ConvertedTeams"] = {
},
["UseTypeBar"] = false,
["ReverseToolbar"] = false,
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
