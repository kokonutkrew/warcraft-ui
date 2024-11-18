
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
["FavoriteFilters"] = {
},
["PetCardForLinks"] = false,
["Anchor"] = "BOTTOMRIGHT",
["CompactQueueList"] = false,
["KeepNotesOnScreen"] = false,
["QueueAutoLearn"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["CollapseOnEsc"] = false,
["ExpandedOptionsHeaders"] = {
},
["ReverseToolbar"] = false,
["UseTypeBar"] = false,
["QueueActiveSort"] = false,
["InteractOnTarget"] = 0,
["ConvertedTeams"] = {
},
["UseMinimapButton"] = false,
["LevelingQueue"] = {
{
["preferred"] = true,
["petID"] = "BattlePet-0-00000AEFA9AB",
["added"] = 20240806205317,
["petTag"] = "Q1404B2",
},
{
["preferred"] = true,
["petID"] = "BattlePet-0-00000AEFE266",
["added"] = 20240806205312,
["petTag"] = "Q1404B3",
},
{
["preferred"] = true,
["petID"] = "BattlePet-0-00000AEFAB9A",
["added"] = 20240806205323,
["petTag"] = "Q1404B4",
},
},
["PetCardShowExpansionStat"] = false,
["PetMarkerNames"] = {
},
["HidePreferenceBadges"] = false,
["PreferencesPaused"] = false,
["MaximizedLayout"] = "3-teams",
["JournalLayout"] = "3-teams",
["WasShownOnLogout"] = false,
["BackupCount"] = 0,
["LockPosition"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["TooltipBehavior"] = "Normal",
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["HideRarityBorders"] = false,
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["HideNotesButtonInBattle"] = false,
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
["LastOpenJournal"] = true,
["PetCardAlwaysShowHPBar"] = false,
["SpecialSlots"] = {
},
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["ResetFilters"] = false,
["HideLevelingBadges"] = false,
["TypeBarTab"] = 1,
["ShowNewGroupTab"] = false,
["QueueSortOrder"] = 1,
["CardBehavior"] = "Normal",
["BoringLoreFont"] = false,
["CompactTargetList"] = false,
["InteractOnSoftInteract"] = 0,
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
["BreedFormat"] = 1,
["QueueRandomWhenEmpty"] = false,
["ExpandedGroups"] = {
},
["AlwaysUsePetSatchel"] = false,
["HideMarkerBadges"] = false,
["AlwaysTeamTabs"] = false,
["HideTooltips"] = false,
["NotesFont"] = "GameFontHighlight",
["NeverTeamTabs"] = false,
["SortByNickname"] = false,
["PetCardCanPin"] = false,
["PetNotes"] = {
},
["CompactTeamList"] = false,
["ShowAbilityID"] = false,
["StickyNewPets"] = false,
["QueueSkipDead"] = false,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["PetCardCompactCollected"] = false,
["AbilityBackground"] = "Icon",
["NoBackupReminder"] = false,
["LockWindow"] = false,
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
