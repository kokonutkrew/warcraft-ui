
Rematch5Settings = {
["ShowLoadedTeamPreferences"] = false,
["ExpandedTargets"] = {
},
["CustomScale"] = false,
["HideLevelBubbles"] = false,
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
["ShowAfterBattle"] = false,
["HideTruncatedTooltips"] = false,
["FavoriteFilters"] = {
},
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
["PetCardInBattle"] = false,
["QueueActiveSort"] = false,
["InteractOnTarget"] = 0,
["StickyNewPets"] = false,
["ShowAbilityID"] = false,
["ToolbarDismiss"] = false,
["PetCardCompactCollected"] = false,
["LockPosition"] = false,
["HidePreferenceBadges"] = false,
["AbilityBackground"] = "Icon",
["UseMinimapButton"] = false,
["CompactTeamList"] = false,
["TooltipBehavior"] = "Normal",
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["BreedFormat"] = 1,
["PetCardCanPin"] = false,
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["SafariHatShine"] = false,
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["MaximizedLayout"] = "3-teams",
["NeverTeamTabs"] = false,
["LastOpenJournal"] = true,
["CompactPetList"] = false,
["QueueSortOrder"] = 1,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["ResetFilters"] = false,
["PetCardAlwaysShowHPBar"] = false,
["HideMarkerBadges"] = false,
["ShowNewGroupTab"] = false,
["SpecialSlots"] = {
},
["CardBehavior"] = "Normal",
["QueueRandomWhenEmpty"] = false,
["AlwaysUsePetSatchel"] = false,
["ExpandedGroups"] = {
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
["BoringLoreFont"] = false,
["HideRarityBorders"] = false,
["InteractOnSoftInteract"] = 0,
["CompactTargetList"] = false,
["TypeBarTab"] = 1,
["AlwaysTeamTabs"] = false,
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
["HideNotesButtonInBattle"] = false,
["NotesFont"] = "GameFontHighlight",
["WasShownOnLogout"] = false,
["LockWindow"] = false,
["PetNotes"] = {
},
["JournalLayout"] = "3-teams",
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["PetCardShowExpansionStat"] = false,
["LevelingQueue"] = {
},
["NoBackupReminder"] = false,
["ExpandedOptionsHeaders"] = {
},
["UseTypeBar"] = false,
["ReverseToolbar"] = false,
["ConvertedTeams"] = {
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
