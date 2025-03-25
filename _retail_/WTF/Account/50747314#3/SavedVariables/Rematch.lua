
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
["HideMenuHelp"] = false,
["PetCardBackground"] = "Expansion",
["ShowAbilityNumbers"] = false,
["StickyNewPets"] = false,
["LevelingQueue"] = {
},
["NotesFont"] = "GameFontHighlight",
["KeepCompanion"] = false,
["PetCardNoMouseoverFlip"] = false,
["PetCardCompactCollected"] = false,
["UseMinimapButton"] = false,
["FavoriteFilters"] = {
},
["AbilityBackground"] = "Icon",
["ShowAbilityID"] = false,
["HideLevelBubbles"] = false,
["WasShownOnLogout"] = false,
["HidePreferenceBadges"] = false,
["TooltipBehavior"] = "Normal",
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["PetCardCanPin"] = false,
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["HideNotesButtonInBattle"] = false,
["HideTeamBadges"] = false,
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
["PetCardAlwaysShowHPBar"] = false,
["LastOpenJournal"] = true,
["QueueSortOrder"] = 1,
["ResetFilters"] = false,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["HideMarkerBadges"] = false,
["HideLevelingBadges"] = false,
["AlwaysUsePetSatchel"] = false,
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
["CardBehavior"] = "Normal",
["QueueRandomWhenEmpty"] = false,
["InteractOnSoftInteract"] = 0,
["BoringLoreFont"] = false,
["PetNotes"] = {
},
["LockPosition"] = false,
["HideRarityBorders"] = false,
["ExpandedGroups"] = {
},
["CompactTargetList"] = false,
["TypeBarTab"] = 1,
["AlwaysTeamTabs"] = false,
["HideTooltips"] = false,
["ShowNewGroupTab"] = false,
["NeverTeamTabs"] = false,
["SortByNickname"] = false,
["BreedFormat"] = 1,
["QueueActiveSort"] = false,
["CompactTeamList"] = false,
["JournalLayout"] = "3-teams",
["MaximizedLayout"] = "3-teams",
["InteractOnTarget"] = 0,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["ResetExceptSearch"] = false,
["PetCardShowExpansionStat"] = false,
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
