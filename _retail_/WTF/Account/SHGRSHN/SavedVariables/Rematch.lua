
Rematch5Settings = {
["UseMinimapButton"] = false,
["HideLevelBubbles"] = false,
["HidePreferenceBadges"] = false,
["PetCardShowExpansionStat"] = false,
["ColorPetNames"] = true,
["HideNotesBadges"] = false,
["AutoWinRecord"] = false,
["JournalLayout"] = "3-teams",
["ImportRememberOverride"] = false,
["HideNonBattlePets"] = false,
["DontSortByRelevance"] = false,
["DisableShare"] = false,
["ShowSpeciesID"] = false,
["UseDefaultJournal"] = false,
["HideTruncatedTooltips"] = false,
["PetCardForLinks"] = false,
["HideRarityBorders"] = false,
["EchoTeamDrag"] = false,
["LockPosition"] = false,
["QueueAutoLearn"] = false,
["PetCardAlwaysShowHPXPText"] = false,
["CollapseOnEsc"] = false,
["CustomScaleValue"] = 100,
["RandomAbilitiesToo"] = false,
["QueueActiveSort"] = false,
["MaximizedLayout"] = "3-teams",
["ExportIncludePreferences"] = false,
["LargerBreedText"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["PetCardCanPin"] = false,
["HideTargetBadges"] = false,
["ShowNotesOnLoad"] = false,
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["LastOpenJournal"] = true,
["PetCardFlipKey"] = "Alt",
["RandomPetRules"] = 2,
["PetCardAlwaysShowHPBar"] = false,
["ShowNewGroupTab"] = false,
["SpecialSlots"] = {
},
["QueueRandomWhenEmpty"] = false,
["PickAggressiveCounters"] = false,
["InteractOnSoftInteract"] = 0,
["CompactTargetList"] = false,
["TypeBarTab"] = 2,
["AlwaysTeamTabs"] = false,
["CompactTeamList"] = false,
["PetCardHidePossibleBreeds"] = false,
["UseTypeBar"] = false,
["HideMenuHelp"] = false,
["ShowLoadedTeamPreferences"] = false,
["ShowNotesInBattle"] = false,
["ExpandedTargets"] = {
},
["CustomScale"] = false,
["ExportIncludeNotes"] = false,
["BreedSource"] = "BattlePetBreedID",
["LastSelectedGroup"] = "group:favorites",
["HideWinRecord"] = false,
["ToolbarDismiss"] = false,
["ShowAbilityID"] = false,
["QueueAutoImport"] = true,
["PetCardCompactCollected"] = false,
["ColorTeamNames"] = true,
["StickyNewPets"] = false,
["DontConfirmDeleteNotes"] = false,
["DontConfirmCaging"] = true,
["AllowHiddenPets"] = false,
["ShowAfterBattle"] = false,
["PetCardNoMouseoverFlip"] = false,
["FavoriteFilters"] = {
},
["Anchor"] = "BOTTOMRIGHT",
["LoadHealthiest"] = false,
["currentTeamID"] = "team:25",
["LastToastedPetID"] = "BattlePet-0-00001178A1D9",
["DontConfirmDeleteTeams"] = true,
["KeepNotesOnScreen"] = false,
["NotesFont"] = "GameFontHighlight",
["KeepCompanion"] = false,
["PetNotes"] = {
},
["PetCardBackground"] = "Expansion",
["HideBreedsLists"] = false,
["HideBreedsLoadouts"] = false,
["EnableDrag"] = true,
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
["HidePetToast"] = false,
["PrioritizeBreedOnImport"] = false,
["CompactPetList"] = false,
["RankWinsByPercent"] = false,
["BackupCount"] = 1,
["HideToolbarTooltips"] = false,
["ConvertedTeams"] = {
},
["QueueSkipDead"] = false,
["ShowAbilityNumbers"] = false,
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["DefaultPreferences"] = {
},
["TooltipBehavior"] = "Normal",
["HideNotesButtonInBattle"] = false,
["GroupOrder"] = {
"group:favorites",
"group:none",
},
["NotesLeft"] = false,
["NoSummonOnDblClick"] = false,
["PetMarkerNames"] = {
},
["ResetFilters"] = false,
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
["RawSearchText"] = "\"Rotten Little Helper\"",
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
["MinimapButtonPosition"] = -162,
["LevelingQueue"] = {
{
["petID"] = "BattlePet-0-00001178A1D9",
["preferred"] = true,
["added"] = 20250105004047,
["petTag"] = "Q14A1G8",
},
{
["petID"] = "BattlePet-0-000011787792",
["preferred"] = true,
["added"] = 20250105004045,
["petTag"] = "Q14A1G8",
},
{
["petID"] = "BattlePet-0-00001178A1E8",
["preferred"] = true,
["added"] = 20250105004053,
["petTag"] = "Q14A1G8",
},
{
["petID"] = "BattlePet-0-00000BF095E8",
["preferred"] = true,
["added"] = 20250105004134,
["petTag"] = "Q1472HT",
},
{
["petID"] = "BattlePet-0-000011051987",
["preferred"] = true,
["added"] = 20250106234652,
["petTag"] = "Q1487I",
},
{
["preferred"] = true,
["petID"] = "BattlePet-0-0000119036A1",
["added"] = 20250302205235,
["petTag"] = "Q1401K1",
},
},
["HideLevelingBadges"] = false,
["AbilityBackground"] = "Icon",
["BarChartCategory"] = 1,
["QueueSortOrder"] = 1,
["CardBehavior"] = "Normal",
["InteractOnTarget"] = 0,
["ColorTargetNames"] = true,
["StrongVsLevel"] = false,
["WarnWhenRandomNot25"] = false,
["LockWindow"] = false,
["ImportConflictOverwrite"] = false,
["ExpandedGroups"] = {
["group:favorites"] = true,
["group:none"] = true,
},
["CompactQueueList"] = false,
["HideMarkerBadges"] = false,
["ResetSortWithFilters"] = false,
["HideTooltips"] = false,
["ResetExceptSearch"] = false,
["NeverTeamTabs"] = false,
["SortByNickname"] = false,
["AlwaysUsePetSatchel"] = false,
["BreedFormat"] = 1,
["WasShownOnLogout"] = false,
["MinimizePetSummary"] = true,
["LastOpenLayout"] = "3-teams",
["PreferencesPaused"] = false,
["LockNotesPosition"] = false,
["PetMarkers"] = {
},
["CurrentLayout"] = "3-teams",
["PetCardInBattle"] = false,
["NoBackupReminder"] = false,
["BoringLoreFont"] = false,
["ClickToDrag"] = false,
["ReverseToolbar"] = false,
["ExpandedOptionsHeaders"] = {
},
}
Rematch5SavedTeams = {
["team:14"] = {
["pets"] = {
0,
"BattlePet-0-00001147076B",
"BattlePet-0-000007F6BB00",
},
["name"] = "Friendhaver Grem",
["tags"] = {
"ZL",
"1126143",
"2215198",
},
["teamID"] = "team:14",
["targets"] = {
223444,
},
["groupID"] = "group:none",
},
["team:6"] = {
["pets"] = {
"BattlePet-0-000010D9AF8A",
"BattlePet-0-00000DD61ACB",
0,
},
["name"] = "Awakened Custodian",
["tags"] = {
"1220R4",
"1120143",
"ZL",
},
["teamID"] = "team:6",
["groupID"] = "group:none",
["targets"] = {
223407,
},
},
["team:7"] = {
["pets"] = {
"BattlePet-0-0000117F8529",
"BattlePet-0-0000118CF043",
0,
},
["name"] = "Collector Dyna",
["tags"] = {
"12192R4",
"12192R4",
"ZL",
},
["teamID"] = "team:7",
["groupID"] = "group:none",
["targets"] = {
223446,
},
},
["team:18"] = {
["pets"] = {
"BattlePet-0-000011892D1F",
0,
"BattlePet-0-00000DD6D364",
},
["name"] = "PLvl Squirt Day",
["tags"] = {
"11156L",
"ZL",
"11131TB",
},
["teamID"] = "team:18",
["groupID"] = "group:favorites",
["targets"] = {
231086,
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
["team:9"] = {
["pets"] = {
0,
"BattlePet-0-0000118CF043",
"BattlePet-0-0000117F8529",
},
["name"] = "Guttergunk",
["tags"] = {
"ZL",
"12192R4",
"12192R4",
},
["teamID"] = "team:9",
["groupID"] = "group:none",
["targets"] = {
223409,
},
},
["team:11"] = {
["pets"] = {
"BattlePet-0-00001147076B",
"BattlePet-0-00000DD61ACB",
"BattlePet-0-00001185DCE9",
},
["name"] = "Catching Littles",
["tags"] = {
"1120143",
"1120143",
"1210KA",
},
["teamID"] = "team:11",
["groupID"] = "group:favorites",
["targets"] = {
223446,
},
},
["team:16"] = {
["pets"] = {
"BattlePet-0-0000118D69FD",
"BattlePet-0-0000118D69B8",
"BattlePet-0-0000118D6C6F",
},
["name"] = "Val'kyr Queens",
["tags"] = {
"221616M",
"221616M",
"221616M",
},
["teamID"] = "team:16",
["groupID"] = "group:favorites",
["targets"] = {
62822,
},
},
["team:5"] = {
["pets"] = {
0,
"BattlePet-0-000007F6BB00",
"BattlePet-0-00000DD61ACB",
},
["name"] = "Zaedu",
["tags"] = {
"ZL",
"2215198",
"2126143",
},
["teamID"] = "team:5",
["groupID"] = "group:none",
["targets"] = {
223406,
},
},
["team:13"] = {
["pets"] = {
"BattlePet-0-000011863CDA",
"BattlePet-0-000011868E20",
"BattlePet-0-00000ACE2354",
},
["name"] = "\"Secret2\"",
["tags"] = {
"121338V",
"122338E",
"11192BB",
},
["teamID"] = "team:13",
["groupID"] = "group:favorites",
["targets"] = {
11859,
},
},
["team:8"] = {
["pets"] = {
0,
"BattlePet-0-000007F6BB00",
"BattlePet-0-0000117F8529",
},
["notes"] = "Strategy added by Chocolatebar#2530\nTurn 1: Acidic Goo\nTurns 2-3: Burrow\nTurns 4-6: Swarm until your pet or the enemy dies\nBring in your Iron Starlette\nTurn 8: Wind-Up\nTurn 9: Supercharge if enemy doesn't have  (ID: 542)\nTurn 10: Wind-Up\nSwoopgrasp comes in\nTurn 12: Wind-Up\nTurn 13: Supercharge if CD is up\nTurn 14: Wind-Up\nTurn 15: 2x Wind-Up if needed and Swoopgrasp dies\n",
["name"] = "Ziriak",
["tags"] = {
"ZL",
"2215198",
"12192R4",
},
["teamID"] = "team:8",
["groupID"] = "group:none",
["targets"] = {
223443,
},
["preferences"] = {
["minXP"] = 25,
},
},
["team:17"] = {
["pets"] = {
"BattlePet-0-0000118D69B8",
"BattlePet-0-00000DD61ACB",
"BattlePet-0-00001147076B",
},
["name"] = "Val'kyr",
["tags"] = {
"211316M",
"1126143",
"1126143",
},
["teamID"] = "team:17",
["groupID"] = "group:favorites",
["targets"] = {
223446,
},
},
["team:24"] = {
["pets"] = {
0,
"BattlePet-0-00000DD61ACB",
"BattlePet-0-00000DD89BBA",
},
["name"] = "Prezly Wavecutter",
["tags"] = {
"ZL",
"1120143",
"11102OQ",
},
["teamID"] = "team:24",
["groupID"] = "group:none",
["targets"] = {
237712,
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
["team:19"] = {
["pets"] = {
"BattlePet-0-000006C39BBB",
"BattlePet-0-000007AFD5B8",
"BattlePet-0-00001147076B",
},
["name"] = "Ikky",
["tags"] = {
"11181FS",
"121A9V",
"1126143",
},
["teamID"] = "team:19",
["groupID"] = "group:favorites",
["targets"] = {
222535,
},
},
["team:22"] = {
["pets"] = {
"BattlePet-0-0000118D69B8",
"BattlePet-0-0000118CF415",
"BattlePet-0-00001147076B",
},
["name"] = "Fast Kill",
["tags"] = {
"221616M",
"21241A5",
"1126143",
},
["teamID"] = "team:22",
["groupID"] = "group:favorites",
["targets"] = {
223442,
},
},
["team:12"] = {
["pets"] = {
"BattlePet-0-00000ACE2354",
"BattlePet-0-000011863CDE",
"BattlePet-0-000011863CDA",
},
["name"] = "\"Secret\"",
["tags"] = {
"11192BB",
"111B24M",
"111338V",
},
["teamID"] = "team:12",
["groupID"] = "group:favorites",
["targets"] = {
11859,
},
},
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
["team:23"] = {
["pets"] = {
"BattlePet-0-00000DD89BBA",
"BattlePet-0-0000118CF415",
"BattlePet-0-00000748CBAC",
},
["name"] = "PVP",
["tags"] = {
"11142OQ",
"21241A5",
"1225QC",
},
["teamID"] = "team:23",
["targets"] = {
217395,
},
["groupID"] = "group:favorites",
},
["team:25"] = {
["pets"] = {
"BattlePet-0-00001191AE39",
"BattlePet-0-00001191AE37",
"BattlePet-0-0000118CF415",
},
["name"] = "3 Gnomes",
["tags"] = {
"21241A5",
"21241A5",
"21241A5",
},
["teamID"] = "team:25",
["groupID"] = "group:favorites",
["targets"] = {
223442,
},
},
["team:10"] = {
["pets"] = {
"BattlePet-0-00001147076B",
"BattlePet-0-00000DD61ACB",
0,
},
["name"] = "Catching",
["tags"] = {
"1126143",
"1126143",
"ZL",
},
["teamID"] = "team:10",
["groupID"] = "group:favorites",
["targets"] = {
223446,
},
},
["team:20"] = {
["pets"] = {
0,
"BattlePet-0-000011753CC2",
"BattlePet-0-0000118CF415",
},
["name"] = "Kyrie",
["tags"] = {
"ZL",
"122430S",
"21241A5",
},
["teamID"] = "team:20",
["groupID"] = "group:none",
["targets"] = {
223442,
},
},
["team:15"] = {
["pets"] = {
"BattlePet-0-00001147076B",
"BattlePet-0-00000DD61ACB",
"BattlePet-0-000011863CDA",
},
["name"] = "3 Kings",
["tags"] = {
"1126143",
"1126143",
"121338V",
},
["teamID"] = "team:15",
["groupID"] = "group:favorites",
["targets"] = {
223446,
},
},
["team:21"] = {
["pets"] = {
"BattlePet-0-0000118CF415",
"BattlePet-0-000011753CC2",
0,
},
["name"] = "Robot Killer",
["tags"] = {
"21241A5",
"122430S",
"ZL",
},
["teamID"] = "team:21",
["groupID"] = "group:favorites",
["targets"] = {
223442,
},
},
["team:26"] = {
["pets"] = {
"BattlePet-0-00001191AE39",
"BattlePet-0-00001191AE37",
"BattlePet-0-0000118CF415",
},
["name"] = "Precision Powerdrill",
["tags"] = {
"21241A5",
"21241A5",
"21241A5",
},
["teamID"] = "team:26",
["groupID"] = "group:none",
["targets"] = {
237701,
},
},
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
"team:12",
"team:13",
"team:25",
"team:15",
"team:10",
"team:11",
"team:22",
"team:19",
"team:18",
"team:23",
"team:21",
"team:17",
"team:16",
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
"team:6",
"team:1",
"team:7",
"team:14",
"team:9",
"team:4",
"team:3",
"team:20",
"team:2",
"team:26",
"team:24",
"team:5",
"team:8",
},
},
}
Rematch5SavedTargets = {
[223446] = {
"team:7",
"team:10",
"team:11",
"team:15",
"team:17",
},
[67370] = {
"team:3",
},
[223443] = {
"team:8",
},
[85519] = {
"team:1",
},
[223409] = {
"team:9",
},
[223444] = {
"team:14",
},
[237712] = {
"team:24",
},
[11859] = {
"team:12",
"team:13",
},
[231086] = {
"team:18",
},
[223406] = {
"team:5",
},
[237701] = {
"team:26",
},
[217395] = {
"team:23",
},
[62822] = {
"team:16",
},
[222535] = {
"team:4",
"team:19",
},
[223407] = {
"team:6",
},
[223442] = {
"team:20",
"team:21",
"team:22",
"team:25",
},
[201858] = {
"team:2",
},
}
Rematch4Saved = nil
Rematch4Settings = nil
RematchSaved = nil
RematchSettings = nil
