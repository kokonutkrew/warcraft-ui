
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
["HideTruncatedTooltips"] = false,
["LockWindow"] = false,
["PetCardForLinks"] = false,
["Anchor"] = "BOTTOMRIGHT",
["LoadHealthiest"] = false,
["CompactQueueList"] = false,
["KeepNotesOnScreen"] = false,
["QueueAutoLearn"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["CollapseOnEsc"] = false,
["ExpandedOptionsHeaders"] = {
},
["ReverseToolbar"] = false,
["UseTypeBar"] = false,
["ConvertedTeams"] = {
},
["LevelingQueue"] = {
},
["NotesFont"] = "GameFontHighlight",
["KeepCompanion"] = false,
["PetCardShowExpansionStat"] = false,
["ResetExceptSearch"] = false,
["UseMinimapButton"] = false,
["FavoriteFilters"] = {
},
["InteractOnTarget"] = 0,
["MaximizedLayout"] = "3-teams",
["JournalLayout"] = "3-teams",
["CompactTeamList"] = false,
["QueueActiveSort"] = false,
["BreedFormat"] = 1,
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["TooltipBehavior"] = "Normal",
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["InteractOnMouseover"] = 0,
["HideTeamBadges"] = false,
["HideNotesButtonInBattle"] = false,
["NeverTeamTabs"] = false,
["ShowNewGroupTab"] = false,
["LastOpenJournal"] = true,
["SpecialSlots"] = {
},
["AlwaysTeamTabs"] = false,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["TypeBarTab"] = 1,
["PetCardAlwaysShowHPBar"] = false,
["CompactTargetList"] = false,
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
["QueueRandomWhenEmpty"] = false,
["ExpandedGroups"] = {
},
["HideRarityBorders"] = false,
["LockPosition"] = false,
["PetNotes"] = {
},
["BoringLoreFont"] = false,
["InteractOnSoftInteract"] = 0,
["AlwaysUsePetSatchel"] = false,
["HideMarkerBadges"] = false,
["ResetFilters"] = false,
["HideTooltips"] = false,
["HideLevelingBadges"] = false,
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
["RawSearchText"] = "elemental",
["Similar"] = {
},
["Search"] = {
["Pattern"] = "[eE][lL][eE][mM][eE][nN][tT][aA][lL]",
["Length"] = 9,
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
["PetCardCanPin"] = false,
["HidePreferenceBadges"] = false,
["WasShownOnLogout"] = false,
["HideLevelBubbles"] = false,
["ShowAbilityID"] = false,
["AbilityBackground"] = "Icon",
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["PetCardCompactCollected"] = false,
["PetCardNoMouseoverFlip"] = false,
["NoBackupReminder"] = false,
["StickyNewPets"] = false,
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
