
Rematch5Settings = {
["ShowLoadedTeamPreferences"] = false,
["ExpandedTargets"] = {
},
["CustomScale"] = false,
["CompactPetList"] = false,
["BreedSource"] = false,
["LastOpenLayout"] = "3-options",
["CurrentLayout"] = "3-options",
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
["LockWindow"] = false,
["Anchor"] = "BOTTOMRIGHT",
["LoadHealthiest"] = false,
["CompactQueueList"] = false,
["KeepNotesOnScreen"] = false,
["QueueAutoLearn"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["CustomScaleValue"] = 100,
["HideMenuHelp"] = false,
["QueueActiveSort"] = false,
["InteractOnTarget"] = 0,
["PetCardBackground"] = "Expansion",
["ShowAbilityNumbers"] = false,
["PetCardCompactCollected"] = false,
["FavoriteFilters"] = {
},
["PetCardShowExpansionStat"] = false,
["ExpandedOptionsHeaders"] = {
},
["HidePreferenceBadges"] = false,
["HideLevelBubbles"] = false,
["PetCardCanPin"] = false,
["JournalLayout"] = "3-options",
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["BreedFormat"] = 1,
["TooltipBehavior"] = "Normal",
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["UseMinimapButton"] = false,
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["WasShownOnLogout"] = false,
["HideRarityBorders"] = false,
["LastOpenJournal"] = true,
["NotesFont"] = "GameFontHighlight",
["BoringLoreFont"] = false,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["NeverTeamTabs"] = false,
["HideLevelingBadges"] = false,
["HideNotesButtonInBattle"] = false,
["ShowNewGroupTab"] = true,
["QueueSortOrder"] = 1,
["CardBehavior"] = "Normal",
["QueueRandomWhenEmpty"] = false,
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
["AlwaysTeamTabs"] = false,
["HideMarkerBadges"] = false,
["AlwaysUsePetSatchel"] = false,
["InteractOnSoftInteract"] = 0,
["ExpandedGroups"] = {
},
["CompactTargetList"] = false,
["TypeBarTab"] = 1,
["ResetFilters"] = false,
["HideTooltips"] = false,
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
["SpecialSlots"] = {
},
["SafariHatShine"] = false,
["CompactTeamList"] = false,
["StickyNewPets"] = false,
["LockPosition"] = false,
["PreferencesPaused"] = false,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["MaximizedLayout"] = "3-teams",
["PetNotes"] = {
},
["NoBackupReminder"] = false,
["LevelingQueue"] = {
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
["showTab"] = true,
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
["showTab"] = true,
["sortMode"] = 1,
["name"] = "Ungrouped Teams",
["teams"] = {
},
["meta"] = true,
["groupID"] = "group:none",
["icon"] = "Interface\\Icons\\PetJournalPortrait",
["isExpanded"] = true,
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
["Filters"] = {
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
["PetNotes"] = {
},
}
RematchSaved = nil
RematchSettings = nil
