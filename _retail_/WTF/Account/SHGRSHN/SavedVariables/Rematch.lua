
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
["ToolbarDismiss"] = false,
["PetNotes"] = {
},
["ReverseToolbar"] = false,
["HideNotesBadges"] = false,
["UseTypeBar"] = true,
["LastSelectedGroup"] = "group:none",
["DefaultPreferences"] = {
},
["AutoWinRecord"] = false,
["HideWinRecord"] = false,
["ResetSortWithFilters"] = false,
["PetCardInBattle"] = false,
["ColorTeamNames"] = true,
["HideNonBattlePets"] = false,
["HidePreferenceBadges"] = false,
["DontSortByRelevance"] = false,
["StickyNewPets"] = false,
["DisableShare"] = false,
["ShowSpeciesID"] = false,
["DontConfirmCaging"] = false,
["UseDefaultJournal"] = false,
["AllowHiddenPets"] = false,
["ShowAfterBattle"] = false,
["PreferencesPaused"] = false,
["HideTruncatedTooltips"] = false,
["LevelingQueue"] = {
{
["preferred"] = true,
["petID"] = "BattlePet-0-00001178A225",
["added"] = 20241110213718,
["petTag"] = "Q1404I6",
},
},
["LockWindow"] = false,
["FavoriteFilters"] = {
},
["CompactTeamList"] = false,
["PetCardForLinks"] = false,
["Anchor"] = "BOTTOMRIGHT",
["PetCardCompactCollected"] = false,
["LoadHealthiest"] = false,
["currentTeamID"] = "team:7",
["LastToastedPetID"] = "BattlePet-0-00001178A225",
["KeepNotesOnScreen"] = false,
["CompactQueueList"] = false,
["DontConfirmDeleteTeams"] = true,
["ColorTargetNames"] = true,
["QueueAutoLearn"] = false,
["NeverTeamTabs"] = false,
["ShowAbilityID"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["CollapseOnEsc"] = false,
["StrongVsLevel"] = false,
["AlwaysTeamTabs"] = false,
["TypeBarTab"] = 2,
["CompactTargetList"] = false,
["ExpandedGroups"] = {
["group:favorites"] = true,
["group:none"] = true,
},
["BarChartCategory"] = 1,
["QueueActiveSort"] = false,
["KeepCompanion"] = false,
["NotesFont"] = "GameFontHighlight",
["InteractOnTarget"] = 0,
["HideRarityBorders"] = false,
["LockPosition"] = false,
["PetCardShowExpansionStat"] = false,
["BoringLoreFont"] = false,
["HidePetToast"] = false,
["BreedFormat"] = 1,
["SpecialSlots"] = {
[3] = 0,
},
["ShowNewGroupTab"] = false,
["BackupCount"] = 1,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["TooltipBehavior"] = "Normal",
["HideTargetBadges"] = false,
["MinimizePetSummary"] = true,
["PetCardCanPin"] = false,
["HideTeamBadges"] = false,
["HideNotesButtonInBattle"] = false,
["HideLevelingBadges"] = false,
["NotesLeft"] = false,
["LastOpenJournal"] = true,
["MousewheelSpeed"] = "Normal",
["HideOptionTooltips"] = false,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["RandomPetRules"] = 2,
["PetCardAlwaysShowHPBar"] = false,
["InteractOnMouseover"] = 0,
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
["PickAggressiveCounters"] = false,
["HideLevelBubbles"] = false,
["UseMinimapButton"] = false,
["MaximizedLayout"] = "3-teams",
["RankWinsByPercent"] = false,
["InteractOnSoftInteract"] = 0,
["AlwaysUsePetSatchel"] = false,
["HideMarkerBadges"] = false,
["ResetFilters"] = false,
["HideTooltips"] = false,
["AbilityBackground"] = "Icon",
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
[4] = true,
},
["Tough"] = {
},
["Types"] = {
},
["Expansion"] = {
},
["Rarity"] = {
},
["RawSearchText"] = "blizzard",
["Similar"] = {
},
["Search"] = {
["Pattern"] = "[bB][lL][iI][zZ][zZ][aA][rR][dD]",
["Length"] = 8,
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
["ResetExceptSearch"] = false,
["WasShownOnLogout"] = false,
["PetCardNoMouseoverFlip"] = false,
["ConvertedTeams"] = {
},
["QueueSkipDead"] = false,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["PetMarkerNames"] = {
},
["GroupOrder"] = {
"group:favorites",
"group:none",
},
["NoBackupReminder"] = false,
["HideMenuHelp"] = false,
["ShowAbilityNumbers"] = false,
["PetCardBackground"] = "Expansion",
["ExpandedOptionsHeaders"] = {
},
}
Rematch5SavedTeams = {
["team:2"] = {
["pets"] = {
"BattlePet-0-000006C39BBB",
0,
0,
},
["name"] = "Lyver",
["tags"] = {
"11101FS",
"ZL",
"ZL",
},
["teamID"] = "team:2",
["groupID"] = "group:none",
["targets"] = {
201858,
},
},
["team:6"] = {
["pets"] = {
"BattlePet-0-000007413929",
"BattlePet-0-000010D9AF8A",
0,
},
["name"] = "Awakened Custodian",
["tags"] = {
"11101BK",
"1220R4",
"ZL",
},
["teamID"] = "team:6",
["groupID"] = "group:none",
["targets"] = {
223407,
},
},
["team:1"] = {
["pets"] = {
0,
"BattlePet-0-000006515DCE",
"BattlePet-0-000007F6BB00",
},
["name"] = "Christoph VonFeasel",
["tags"] = {
"ZL",
"11201BB",
"2210198",
},
["teamID"] = "team:1",
["groupID"] = "group:none",
["targets"] = {
85519,
},
},
["team:3"] = {
["pets"] = {
"BattlePet-0-00000748CBAC",
"BattlePet-0-000006515DCE",
0,
},
["name"] = "Jeremy Feasel",
["tags"] = {
"1220QC",
"11101BB",
"ZL",
},
["teamID"] = "team:3",
["groupID"] = "group:none",
["targets"] = {
67370,
},
},
["team:5"] = {
["pets"] = {
"BattlePet-0-000007AFD5B8",
"BattlePet-0-000006C39BBB",
"BattlePet-0-00001147076B",
},
["name"] = "Zaedu",
["tags"] = {
"12109V",
"11101FS",
"1120143",
},
["teamID"] = "team:5",
["groupID"] = "group:none",
["targets"] = {
223406,
},
},
["team:4"] = {
["pets"] = {
"BattlePet-0-000006C39BBB",
"BattlePet-0-000007AFD5B8",
0,
},
["name"] = "Haywire Servobot",
["tags"] = {
"11101FS",
"12109V",
"ZL",
},
["teamID"] = "team:4",
["groupID"] = "group:none",
["targets"] = {
222535,
},
},
["team:7"] = {
["pets"] = {
"BattlePet-0-000007413929",
"BattlePet-0-000010D9AF8A",
0,
},
["name"] = "Collector Dyna",
["tags"] = {
"11101BK",
"1220R4",
"ZL",
},
["teamID"] = "team:7",
["groupID"] = "group:none",
["targets"] = {
223446,
},
},
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
"team:6",
"team:1",
"team:7",
"team:4",
"team:3",
"team:2",
"team:5",
},
["meta"] = true,
["groupID"] = "group:none",
["icon"] = "Interface\\Icons\\INV_Pet_BattlePetTraining",
["isExpanded"] = true,
},
}
Rematch5SavedTargets = {
[223407] = {
"team:6",
},
[85519] = {
"team:1",
},
[222535] = {
"team:4",
},
[201858] = {
"team:2",
},
[67370] = {
"team:3",
},
[223406] = {
"team:5",
},
[223446] = {
"team:7",
},
}
Rematch4Saved = nil
Rematch4Settings = nil
RematchSaved = nil
RematchSettings = nil
