
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
["JournalLayout"] = "3-teams",
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
["PetCardNoMouseoverFlip"] = false,
["ResetExceptSearch"] = false,
["LockPosition"] = false,
["ToolbarDismiss"] = false,
["KeepNotesOnScreen"] = false,
["QueueAutoLearn"] = false,
["ExpandedOptionsHeaders"] = {
},
["PetCardAlwaysShowHPXPText"] = false,
["CollapseOnEsc"] = false,
["ReverseToolbar"] = false,
["UseTypeBar"] = false,
["ConvertedTeams"] = {
},
["ShowAbilityID"] = false,
["LevelingQueue"] = {
},
["ResetSortWithFilters"] = false,
["QueueActiveSort"] = false,
["InteractOnTarget"] = 0,
["CompactQueueList"] = false,
["LockNotesPosition"] = false,
["AlwaysUsePetSatchel"] = false,
["LargerBreedText"] = false,
["InteractOnSoftInteract"] = 0,
["NeverTeamTabs"] = false,
["WasShownOnLogout"] = false,
["PetCardInBattle"] = false,
["LockWindow"] = false,
["UseMinimapButton"] = false,
["BackupCount"] = 0,
["HideToolbarTooltips"] = false,
["DisplayUniqueTotal"] = false,
["SafariHatShine"] = false,
["PetCardCanPin"] = false,
["HideOptionTooltips"] = false,
["MousewheelSpeed"] = "Normal",
["HideBreedsLoadouts"] = false,
["HideTeamBadges"] = false,
["InteractOnMouseover"] = 0,
["HideNotesButtonInBattle"] = false,
["HideLevelingBadges"] = false,
["LastOpenJournal"] = true,
["ResetFilters"] = false,
["TypeBarTab"] = 1,
["PetCardFlipKey"] = "Alt",
["MinimapButtonPosition"] = -162,
["QueueSortOrder"] = 1,
["PetCardAlwaysShowHPBar"] = false,
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
["SpecialSlots"] = {
},
["CardBehavior"] = "Normal",
["BoringLoreFont"] = false,
["MaximizedLayout"] = "3-teams",
["ShowNewGroupTab"] = false,
["NotesFont"] = "GameFontHighlight",
["HideRarityBorders"] = false,
["HideLevelBubbles"] = false,
["ExpandedGroups"] = {
},
["CompactTargetList"] = false,
["HideMarkerBadges"] = false,
["AlwaysTeamTabs"] = false,
["HideTooltips"] = false,
["PetNotes"] = {
},
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
["RawSearchText"] = "EDE",
["Similar"] = {
},
["Search"] = {
["Pattern"] = "[eE][dD][eE]",
["Length"] = 3,
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
["HidePreferenceBadges"] = false,
["HideBreedsLists"] = false,
["CompactTeamList"] = false,
["TooltipBehavior"] = "Normal",
["BreedFormat"] = 1,
["PetCardShowExpansionStat"] = false,
["PetCardHidePossibleBreeds"] = false,
["PetMarkers"] = {
},
["PetCardCompactCollected"] = false,
["StickyNewPets"] = false,
["NoBackupReminder"] = false,
["AbilityBackground"] = "Icon",
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
