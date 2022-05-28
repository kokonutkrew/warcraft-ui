
MegaMacroConfig = nil
MegaMacroGlobalData = {
	["Macros"] = {
		{
			["Scope"] = "gg",
			["Code"] = "/cast shoot\n/cast taunt\n/cast attack\n",
			["Id"] = 1,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 1,
			["DisplayName"] = "01. Ranged Pull",
		}, -- [1]
		{
			["Scope"] = "gg",
			["Code"] = "/follow party1\n/assist party1\n/use garrote\n/use sinister strike\n",
			["Id"] = 2,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 2,
			["DisplayName"] = "2. Damage",
		}, -- [2]
		{
			["Scope"] = "gg",
			["Code"] = "/cast charge\n/cast overpower\n/cast attack\n/cast thunder clap\n/cast heroic strike\n/cast sunder armor\n",
			["Id"] = 3,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 3,
			["DisplayName"] = "2. Damage",
		}, -- [3]
		{
			["Scope"] = "gg",
			["Code"] = "/cast bloodrage\n/cast rend\n",
			["Id"] = 4,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 4,
			["DisplayName"] = "3. Dots",
		}, -- [4]
		{
			["Scope"] = "gg",
			["Code"] = "/cast bloodrage\n/cast sunder armor\n",
			["Id"] = 5,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 5,
			["DisplayName"] = "4. Light Damage",
		}, -- [5]
		{
			["Scope"] = "gg",
			["Code"] = "/cast bloodrage\n/cast battle shout \n/cast blood fury\n",
			["Id"] = 6,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 6,
			["DisplayName"] = "5. Battle Buffs",
		}, -- [6]
		{
			["Scope"] = "gg",
			["Code"] = "/use Major Healthstone\n/use Greater Healthstone\n/use Healthstone\n/use Major Healing Potion\n/use Greater Healing Potion\n/use Healing Potion\n/use Furbolg Medicine Pouch\n",
			["Id"] = 7,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 7,
			["DisplayName"] = "8.s Self Heal",
		}, -- [7]
		{
			["Scope"] = "gg",
			["Code"] = "#showtooltip\n/use Re-Sizer v9.0.1\n",
			["Id"] = 20,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 20,
			["DisplayName"] = "AAP_MACRO",
		}, -- [8]
		{
			["Scope"] = "gg",
			["Code"] = "/run DEFAULT_CHAT_FRAME:AddMessage(\"\\124cffffff00\\124Hachievement:11195:\"..string.gsub(UnitGUID(\"player\"), '0x', '')..\":1:3:17:17:4294967295:4294967295:4294967295:4294967295\\124h[Ahead of the Curve: Gul'dan]\\124h\\124r\")\n",
			["Id"] = 21,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 21,
			["DisplayName"] = "AOTC Legion HC",
		}, -- [9]
		{
			["Scope"] = "gg",
			["Code"] = "/run _CHATHIDE=not _CHATHIDE for i=1,NUM_CHAT_WINDOWS do for _,v in pairs{\"\",\"Tab\"}do local f=_G[\"ChatFrame\"..i..v]if _CHATHIDE then f.v=f:IsVisible()end f.ORShow=f.ORShow or f.Show f.Show=_CHATHIDE and f.Hide or f.ORShow if f.v then f:Show()end end end\n",
			["Id"] = 22,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 22,
			["DisplayName"] = "ChatHide",
		}, -- [10]
		{
			["Scope"] = "gg",
			["Code"] = "/chicken\n",
			["Id"] = 23,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 23,
			["DisplayName"] = "Cluck",
		}, -- [11]
		{
			["Scope"] = "gg",
			["Code"] = "/run local q,x,_,a,b = GetAchievementCriteriaInfo,0 for i=1,11 do _,_,_,a,b = q(11152,i) x=a end local _,_,_,c,d = q(11153,1) local _,_,_,e,f = q(11154,1) print(\"Dungeons: \"..x..\"/\"..b) print(\"WQs: \"..c..\"/\"..d) print(\"Kills: \"..e..\"/\"..f)\n",
			["Id"] = 24,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 24,
			["DisplayName"] = "Death",
		}, -- [12]
		{
			["Scope"] = "gg",
			["Code"] = "/run local b,d,p,r,a=GetBlockChance(),GetDodgeChance(),GetParryChance(),GetCombatRating(CR_DEFENSE_SKILL) a=1/(.0625+.956/(r/122.9625)) ChatFrame1:AddMessage(format(\"Unhittable: %.2f%%  Avoidance: %.2f%%  Defense %+.0f rating\",b+d+p+5+a,d+p+5+a,r-689))\n",
			["Id"] = 25,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 25,
			["DisplayName"] = "Distance Aggro",
		}, -- [13]
		{
			["Scope"] = "gg",
			["Code"] = "#showtooltip\n/click ExtraActionButton1\n",
			["Id"] = 26,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 26,
			["DisplayName"] = "ExtraAction 1",
		}, -- [14]
		{
			["Scope"] = "gg",
			["Code"] = "/follow party1\n/assist party1\n",
			["Id"] = 27,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 27,
			["DisplayName"] = "F2.Follow",
		}, -- [15]
		{
			["Scope"] = "gg",
			["Code"] = "/follow party1\n/assist party1\n",
			["Id"] = 28,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 28,
			["DisplayName"] = "F2.Follow",
		}, -- [16]
		{
			["Scope"] = "gg",
			["Code"] = "/castsequence [nomod] Fishing\n/equipset [mod:alt] Max Fishing\n/castsequence [mod:ctrl] Anglers Fishing Raft, Sharpened Tuskarr Spear, Sharpened Tuskarr Spear\n/use [mod:shift] Worm Supreme\n",
			["Id"] = 29,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 29,
			["DisplayName"] = "Fish Bait",
		}, -- [17]
		{
			["Scope"] = "gg",
			["Code"] = "/focus\n/target player\n",
			["Id"] = 30,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 30,
			["DisplayName"] = "Follow Party 0",
		}, -- [18]
		{
			["Scope"] = "gg",
			["Code"] = "/follow party1\n/assist party1\n/target party1\n",
			["Id"] = 31,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 31,
			["DisplayName"] = "Follow Party1",
		}, -- [19]
		{
			["Scope"] = "gg",
			["Code"] = "/follow party2\n/assist party2\n/target party2\n",
			["Id"] = 32,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 32,
			["DisplayName"] = "Follow Party2",
		}, -- [20]
		{
			["Scope"] = "gg",
			["Code"] = "/follow party3\n/assist party3\n/target party3\n",
			["Id"] = 33,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 33,
			["DisplayName"] = "Follow Party3",
		}, -- [21]
		{
			["Scope"] = "gg",
			["Code"] = "/follow party4\n/assist party4\n/target party4\n",
			["Id"] = 34,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 34,
			["DisplayName"] = "Follow Party4",
		}, -- [22]
		{
			["Scope"] = "gg",
			["Code"] = "/follow Samoanbeast\n",
			["Id"] = 35,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 35,
			["DisplayName"] = "Follow S4",
		}, -- [23]
		{
			["Scope"] = "gg",
			["Code"] = "/run GuildFrame_Toggle()\n/run GuildFrame_TabClicked ( GuildFrameTab2 )\n",
			["Id"] = 36,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 36,
			["DisplayName"] = "GRM_Roster",
		}, -- [24]
		{
			["Scope"] = "gg",
			["Code"] = "",
			["Id"] = 37,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 37,
			["DisplayName"] = "GRM_Tool",
		}, -- [25]
		{
			["Scope"] = "gg",
			["Code"] = "/run InviteUnit(\"Tigerlilly\");\n/run InviteUnit(\"Mancub\"); \n/run InviteUnit(\"Foxxer\"); \n/run InviteUnit(\"Kickbrass\"); \n/ffa\n/changeactionbar 2\n",
			["Id"] = 39,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 39,
			["DisplayName"] = "Invite",
		}, -- [26]
		{
			["Scope"] = "gg",
			["Code"] = "--/run GuildManager:InviteAction()\n/flood on\n",
			["Id"] = 38,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 38,
			["DisplayName"] = "Invite",
		}, -- [27]
		{
			["Scope"] = "gg",
			["Code"] = "/leave party\n",
			["Id"] = 40,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 40,
			["DisplayName"] = "LeaveParty",
		}, -- [28]
		{
			["Scope"] = "gg",
			["Code"] = "/run SendChatMessage(\"\\124cffffff00\\124Hachievement:5353:\"..string.gsub(UnitGUID(\"player\"), '0x', '')..\":1:3:26:17:4294967295:4294967295:4294967295:4294967295\\124h[Champion]\\124h\\124r, 2k exp, have voice\", WHISPER, nil, \"Kurropt-Dragonmaw\")\n",
			["Id"] = 42,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 42,
			["DisplayName"] = "PVP Champion Ach",
		}, -- [29]
		{
			["Scope"] = "gg",
			["Code"] = "/tsm tasklist\n",
			["Id"] = 41,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 41,
			["DisplayName"] = "Professions",
		}, -- [30]
		{
			["Scope"] = "gg",
			["Code"] = "/run for i=1,GetNumQuestLogEntries() do SelectQuestLogEntry(i); SetAbandonQuest(); AbandonQuest(); end\n",
			["Id"] = 43,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 43,
			["DisplayName"] = "QuestDump",
		}, -- [31]
		{
			["Scope"] = "gg",
			["Code"] = "Power leveling in exchange for RAF link. Your account must be less than 30days old\n",
			["Id"] = 44,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 44,
			["DisplayName"] = "RAF Spam",
		}, -- [32]
		{
			["Scope"] = "gg",
			["Code"] = "/run ConvertToRaid()\n/master Samoantank\n/threshold epic\n/raid Pls be patient as we fill, grab pots, food, runes, and repair. Read group desc.\n",
			["Id"] = 46,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 46,
			["DisplayName"] = "RStart",
		}, -- [33]
		{
			["Scope"] = "gg",
			["Code"] = "#showtooltip\n/use 11\n",
			["Id"] = 45,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 45,
			["DisplayName"] = "Ring1",
		}, -- [34]
		{
			["Scope"] = "gg",
			["Code"] = "/way The Jade Forest  52 17 \n/way Townlong Steppes 36 88 \n/way Krasarang Wilds 39 66\n/way Kun-Lai Summit 75 62\n/way Dread Wastes 47 60\n/npcscan add 69769 Zandalari Warbringer\n/npcscan add 69841 Zandalari Warbringer\n/npcscan add 69842 Zandalari Warbringer\n",
			["Id"] = 47,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 47,
			["DisplayName"] = "SearchDinoMount",
		}, -- [35]
		{
			["Scope"] = "gg",
			["Code"] = "",
			["Id"] = 48,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 48,
			["DisplayName"] = "Shield",
		}, -- [36]
		{
			["Scope"] = "gg",
			["Code"] = "/click TSMCancelAuctionBtn\n/click TSMShoppingBuyoutBtn\n/click TSMSniperBtn\n/click TSMAuctioningBtn\n/click TSMCraftingBtn\n",
			["Id"] = 50,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 50,
			["DisplayName"] = "TSMMacro",
		}, -- [37]
		{
			["Scope"] = "gg",
			["Code"] = "/run for bag = 0,4,1 do for slot = 1, 32, 1 do local name = GetContainerItemLink(bag,slot); if name and string.find(name,\"ff9d9d9d\") then PickupContainerItem(bag,slot); DeleteCursorItem(); end; end; end\n",
			["Id"] = 49,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 49,
			["DisplayName"] = "Trash Gray",
		}, -- [38]
		{
			["Scope"] = "gg",
			["Code"] = "#showtooltip\n/use [mod:ctrl] Grand Expedition Yak\n/use [mod:shift] Crimson Water Strider\n/use Sky Golem\n/use [noflyable][mod:alt] Grand Black War Mammoth\n/use [mod:alt] Obsidian Nightwing\n",
			["Id"] = 51,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 51,
			["DisplayName"] = "Utility Mount",
		}, -- [39]
		{
			["Scope"] = "gg",
			["Code"] = "/click CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton\n/click DropDownList1Button1\n",
			["Id"] = 8,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 8,
			["DisplayName"] = "a-01 Skull",
		}, -- [40]
		{
			["Scope"] = "gg",
			["Code"] = "/click CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton\n/click DropDownList1Button3\n",
			["Id"] = 9,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 9,
			["DisplayName"] = "a-02 Square",
		}, -- [41]
		{
			["Scope"] = "gg",
			["Code"] = "/click CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton\n/click DropDownList1Button9\n",
			["Id"] = 10,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 10,
			["DisplayName"] = "a-03 Remove All",
		}, -- [42]
		{
			["Scope"] = "gg",
			["Code"] = "/click CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton\n/click DropDownList1Button6\n",
			["Id"] = 11,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 11,
			["DisplayName"] = "a-04 Diamond",
		}, -- [43]
		{
			["Scope"] = "gg",
			["Code"] = "/click CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton\n/click DropDownList1Button8\n",
			["Id"] = 12,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 12,
			["DisplayName"] = "a-05 Star",
		}, -- [44]
		{
			["Scope"] = "gg",
			["Code"] = "/click CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton\n/click DropDownList1Button5\n",
			["Id"] = 13,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 13,
			["DisplayName"] = "a-06 Triangle",
		}, -- [45]
		{
			["Scope"] = "gg",
			["Code"] = "/oom\n",
			["Id"] = 14,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 14,
			["DisplayName"] = "a-07 Drink",
		}, -- [46]
		{
			["Scope"] = "gg",
			["Code"] = "",
			["Id"] = 15,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 15,
			["DisplayName"] = "a-08 Self Heal",
		}, -- [47]
		{
			["Scope"] = "gg",
			["Code"] = "/run SetRaidTarget(\"player\", 7)\n/healme\n/run SetRaidTarget(\"player\", 7)\n",
			["Id"] = 16,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 16,
			["DisplayName"] = "a-09 Heal Me",
		}, -- [48]
		{
			["Scope"] = "gg",
			["Code"] = "/run SetRaidTarget(\"mouseover\", 8)\n/attacktarget\n",
			["Id"] = 17,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 17,
			["DisplayName"] = "a-10 Skull",
		}, -- [49]
		{
			["Scope"] = "gg",
			["Code"] = "/run SetRaidTarget(\"mouseover\", 8)\n/incoming\n",
			["Id"] = 18,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 18,
			["DisplayName"] = "a-11 Spot Target",
		}, -- [50]
		{
			["Scope"] = "gg",
			["Code"] = "/run SetRaidTarget(\"mouseover\", 8)\n/roar\n/spit\n/sigh\n/golfclap\n/laugh\n/guffaw\n/rofl\n/pity\n/violin\n",
			["Id"] = 19,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 19,
			["DisplayName"] = "a-12 Mock",
		}, -- [51]
		{
			["Scope"] = "gg",
			["Code"] = "#show item:19019\n/script DEFAULT_CHAT_FRAME:AddMessage(\"\\124cffff8000\\124Hitem:19019:0:0:0:0:0:0:0:0\\124h[Thunderfury, Blessed Blade of the Windseeker]\\124h\\124r\");\n",
			["Id"] = 52,
			["StaticTexture"] = 134400,
			["ScopedIndex"] = 52,
			["DisplayName"] = "xThndrfury",
		}, -- [52]
	},
	["Activated"] = true,
	["Classes"] = {
		["Druid"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Feral"] = {
					["Macros"] = {
					},
				},
			},
		},
		["Warlock"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				[""] = {
					["Macros"] = {
					},
				},
			},
		},
		["Monk"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				[""] = {
					["Macros"] = {
					},
				},
				["Brewmaster"] = {
					["Macros"] = {
					},
				},
			},
		},
	},
}
