
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
["PetCardNoMouseoverFlip"] = false,
["FavoriteFilters"] = {
},
["Anchor"] = "BOTTOMRIGHT",
["CompactQueueList"] = false,
["KeepNotesOnScreen"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["ExpandedOptionsHeaders"] = {
},
["ReverseToolbar"] = false,
["UseTypeBar"] = false,
["QueueActiveSort"] = false,
["InteractOnTarget"] = 0,
["ConvertedTeams"] = {
},
["PetCardShowExpansionStat"] = false,
["CompactTargetList"] = false,
["LevelingQueue"] = {
},
["UseMinimapButton"] = false,
["HideTruncatedTooltips"] = false,
["LockWindow"] = false,
["AlwaysTeamTabs"] = false,
["NeverTeamTabs"] = false,
["CompactTeamList"] = false,
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["BreedFormat"] = 1,
["PetCardCanPin"] = false,
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["LockPosition"] = false,
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["ShowNewGroupTab"] = false,
["MaximizedLayout"] = "3-teams",
["LastOpenJournal"] = true,
["HideLevelingBadges"] = false,
["JournalLayout"] = "3-teams",
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["SafariHatShine"] = false,
["PetCardAlwaysShowHPBar"] = false,
["NotesFont"] = "GameFontHighlight",
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
["TypeBarTab"] = 1,
["PetNotes"] = {
},
["InteractOnSoftInteract"] = 0,
["HideRarityBorders"] = false,
["SpecialSlots"] = {
},
["ExpandedGroups"] = {
},
["AlwaysUsePetSatchel"] = false,
["HideMarkerBadges"] = false,
["ResetFilters"] = false,
["HideTooltips"] = false,
["QueueRandomWhenEmpty"] = false,
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
["ShowAbilityID"] = false,
["HideLevelBubbles"] = false,
["WasShownOnLogout"] = false,
["HidePreferenceBadges"] = false,
["HideNotesButtonInBattle"] = false,
["TooltipBehavior"] = "Normal",
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["PetCardCompactCollected"] = false,
["AbilityBackground"] = "Icon",
["NoBackupReminder"] = false,
["ToolbarDismiss"] = false,
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
