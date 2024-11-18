
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
["ShowSpeciesID"] = false,
["UseDefaultJournal"] = false,
["AllowHiddenPets"] = false,
["LockWindow"] = false,
["PetCardForLinks"] = false,
["Anchor"] = "BOTTOMRIGHT",
["CompactQueueList"] = false,
["KeepNotesOnScreen"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["QueueActiveSort"] = false,
["InteractOnTarget"] = 0,
["ConvertedTeams"] = {
},
["ReverseToolbar"] = false,
["UseTypeBar"] = false,
["ExpandedOptionsHeaders"] = {
},
["PetCardShowExpansionStat"] = false,
["LevelingQueue"] = {
},
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["BreedFormat"] = 1,
["PetCardCanPin"] = false,
["UseMinimapButton"] = false,
["MousewheelSpeed"] = "Normal",
["FavoriteFilters"] = {
},
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["NotesFont"] = "GameFontHighlight",
["LockPosition"] = false,
["LastOpenJournal"] = true,
["JournalLayout"] = "3-teams",
["HideRarityBorders"] = false,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["CompactTeamList"] = false,
["PetCardAlwaysShowHPBar"] = false,
["SpecialSlots"] = {
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
["CardBehavior"] = "Normal",
["BoringLoreFont"] = false,
["ShowNewGroupTab"] = false,
["HideNotesButtonInBattle"] = false,
["NeverTeamTabs"] = false,
["InteractOnSoftInteract"] = 0,
["CompactTargetList"] = false,
["ExpandedGroups"] = {
},
["AlwaysUsePetSatchel"] = false,
["HideMarkerBadges"] = false,
["AlwaysTeamTabs"] = false,
["ResetFilters"] = false,
["TypeBarTab"] = 1,
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
["SafariHatShine"] = false,
["QueueRandomWhenEmpty"] = false,
["WasShownOnLogout"] = false,
["HideLevelingBadges"] = false,
["PetNotes"] = {
},
["MaximizedLayout"] = "3-teams",
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["HidePreferenceBadges"] = false,
["TooltipBehavior"] = "Normal",
["NoBackupReminder"] = false,
["PetCardCompactCollected"] = false,
["ShowAbilityNumbers"] = false,
["PetCardBackground"] = "Expansion",
["HideMenuHelp"] = false,
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
