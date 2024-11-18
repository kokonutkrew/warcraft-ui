
Rematch5Settings = {
["ShowLoadedTeamPreferences"] = false,
["ExpandedTargets"] = {
},
["CustomScale"] = false,
["CompactPetList"] = false,
["BreedSource"] = false,
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
["ExpandedOptionsHeaders"] = {
},
["HideLevelBubbles"] = false,
["LastOpenJournal"] = true,
["UseTypeBar"] = false,
["ConvertedTeams"] = {
},
["MaximizedLayout"] = "3-teams",
["MinimapButtonPosition"] = -162,
["CompactTargetList"] = false,
["HideLevelingBadges"] = false,
["LevelingQueue"] = {
},
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
["HidePreferenceBadges"] = false,
["QueueRandomWhenEmpty"] = false,
["HideNotesButtonInBattle"] = false,
["NeverTeamTabs"] = false,
["LockWindow"] = false,
["LockPosition"] = false,
["CompactTeamList"] = false,
["InteractOnSoftInteract"] = 0,
["AlwaysUsePetSatchel"] = false,
["HideMarkerBadges"] = false,
["AlwaysTeamTabs"] = false,
["SpecialSlots"] = {
},
["ShowNewGroupTab"] = false,
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
["JournalLayout"] = "3-teams",
["HideRarityBorders"] = false,
["WasShownOnLogout"] = false,
["ResetFilters"] = false,
["TypeBarTab"] = 1,
["ExpandedGroups"] = {
},
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["BreedFormat"] = 1,
["NotesFont"] = "GameFontHighlight",
["NoBackupReminder"] = false,
["UseMinimapButton"] = false,
["ShowAbilityNumbers"] = false,
["ReverseToolbar"] = false,
["PetNotes"] = {
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
