
BugGrabberDB = {
	["session"] = 348,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\FrameXML\\StaticPopup.lua:4460: bad argument #2 to 'SetFormattedText' (string expected, got nil)",
			["time"] = "2019/01/16 21:58:01",
			["locals"] = "(*temporary) = StaticPopup1Text {\n 0 = <userdata>\n}\n(*temporary) = \"Would you like to Untrack \"%s\" On All Toons?\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: in function `SetFormattedText'\nInterface\\FrameXML\\StaticPopup.lua:4460: in function `StaticPopup_Show'\nInterface\\AddOns\\EMA\\Modules\\Quest.lua:1691: in function <Interface\\AddOns\\EMA\\Modules\\Quest.lua:1678>\n(tail call): ?\n[C]: in function `QuestMapQuestOptions_TrackQuest'\n[string \"*:OnClick\"]:2: in function <[string \"*:OnClick\"]:1>",
			["session"] = 336,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: GetAchievementCriteriaInfo(achievementID, criteriaIndex [,countHidden]), criteria not found",
			["time"] = "2019/01/17 08:53:35",
			["stack"] = "[C]: in function `GetAchievementCriteriaInfo'\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:90>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:181: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:166>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:214: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:209>\n[C]: ?\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 344,
			["counter"] = 8,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:242: attempt to call global 'SendAddonMessage' (a nil value)",
			["time"] = "2019/03/11 09:03:19",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"GUILD_ROSTER_UPDATE\"\n(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"StatusCheck\"\n(*temporary) = \"GUILD\"\n(*temporary) = \"attempt to call global 'SendAddonMessage' (a nil value)\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:242: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 347,
			["counter"] = 38,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua:346: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2019/01/30 09:12:34",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua:346: in function `FF_OnLoad'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 348,
			["counter"] = 6,
		}, -- [4]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\DeathKnight\\Frost.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [5]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\DeathKnight\\Unholy.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [6]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Hunter\\Marksmanship.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [7]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Hunter\\Survival.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [8]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Mage\\Fire.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [9]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Mage\\Frost.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [10]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Monk\\Mistweaver.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [11]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Priest\\Holy.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 6,
		}, -- [12]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Priest\\Shadow.lua",
			["time"] = "2019/01/30 09:12:39",
			["session"] = 348,
			["counter"] = 5,
		}, -- [13]
		{
			["message"] = "...dOns\\AzeriteTooltip\\libs\\AceHook-3.0\\AceHook-3.0-8.lua:180: Attempting to rehook already active hook OnTooltipSetItem.",
			["time"] = "2019/06/29 22:06:28",
			["stack"] = "[C]: ?\n...dOns\\AzeriteTooltip\\libs\\AceHook-3.0\\AceHook-3.0-8.lua:180: in function <...dOns\\AzeriteTooltip\\libs\\AceHook-3.0\\AceHook-3.0.lua:118>\n...dOns\\AzeriteTooltip\\libs\\AceHook-3.0\\AceHook-3.0-8.lua:411: in function `SecureHookScript'\nInterface\\AddOns\\AzeriteTooltip\\AzeriteTooltip-2.0.2.lua:162: in function <Interface\\AddOns\\AzeriteTooltip\\AzeriteTooltip.lua:146>\n[C]: ?\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:70: in function <...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:527: in function `EnableAddon'\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:620: in function <...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:605>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:450: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:569: in function `TimeManager_LoadUI'\nInterface\\FrameXML\\UIParent.lua:1210: in function <Interface\\FrameXML\\UIParent.lua:1108>",
			["session"] = 348,
			["counter"] = 4,
		}, -- [14]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFMount.lua:28: attempt to call field 'GetMountInfo' (a nil value)",
			["time"] = "2019/01/30 09:12:42",
			["locals"] = "FFNewNumMounts = 82\n(for index) = 1\n(for limit) = 82\n(for step) = 1\ni = 1\n(*temporary) = nil\n(*temporary) = 1\n(*temporary) = \"attempt to call field 'GetMountInfo' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFMount.lua:28: in function `FF_UpdateMounts'\nInterface\\AddOns\\FollowFelankor\\FFEvents.lua:38: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 348,
			["counter"] = 247,
		}, -- [15]
	},
}
