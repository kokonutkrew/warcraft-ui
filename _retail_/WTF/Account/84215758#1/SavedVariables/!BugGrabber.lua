
BugGrabberDB = {
	["session"] = 2,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua:346: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2020/11/20 16:46:59",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua\"]:346: in function `FF_OnLoad'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\NOP\\nop-core.lua:33: LE_FOLLOWER_TYPE_SHIPYARD_6_2",
			["time"] = "2020/11/20 16:47:02",
			["locals"] = "(*temporary) = false\n(*temporary) = \"LE_FOLLOWER_TYPE_SHIPYARD_6_2\"\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\NOP\\nop-core.lua\"]:33: in main chunk",
			["session"] = 2,
			["counter"] = 2,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\NOP\\nop-quest.lua:14: GetQuestLogIndexByID",
			["time"] = "2020/11/20 16:47:02",
			["locals"] = "(*temporary) = false\n(*temporary) = \"GetQuestLogIndexByID\"\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\NOP\\nop-quest.lua\"]:14: in main chunk",
			["session"] = 2,
			["counter"] = 2,
		}, -- [3]
		{
			["message"] = "...ns\\SuperGuildInvite\\libs\\GuildShield\\GuildShield.lua:26: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2020/11/20 16:47:21",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"GUILD_SHIELD\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\SuperGuildInvite\\libs\\GuildShield\\GuildShield.lua\"]:26: in main chunk",
			["session"] = 2,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "...erface\\AddOns\\SuperGuildInvite\\SGI_AddOn_Message.lua:10: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2020/11/20 16:47:21",
			["locals"] = "ID_REQUEST = \"SGI_REQ\"\nID_LOCK = \"SGI_LOCK\"\nID_SHIELD = \"I_HAVE_SHIELD\"\nID_VERSION = \"SGI_VERSION\"\nID_LIVE_SYNC = \"SGI_LIVE_SYNC\"\nID_PING = \"SGI_PING\"\nID_PONG = \"SGI_PONG\"\nID_STOP = \"SGI_STOP\"\n(*temporary) = nil\n(*temporary) = \"SGI_REQ\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\SuperGuildInvite\\SGI_AddOn_Message.lua\"]:10: in main chunk",
			["session"] = 2,
			["counter"] = 2,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\WoWDBProfiler\\Comments.lua:507: attempt to call method 'SetBackdrop' (a nil value)",
			["time"] = "2020/11/20 16:47:29",
			["stack"] = "[string \"@Interface\\AddOns\\WoWDBProfiler\\Comments.lua\"]:507: in function `InitializeCommentSystem'\n[string \"@Interface\\AddOns\\WoWDBProfiler\\Main.lua\"]:922: in function <Interface\\AddOns\\WoWDBProfiler\\Main.lua:895>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:498: in function `InitializeAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:623: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFMount.lua:28: attempt to call field 'GetMountInfo' (a nil value)",
			["time"] = "2020/11/20 16:47:37",
			["locals"] = "FFNewNumMounts = 1\n(for index) = 1\n(for limit) = 1\n(for step) = 1\ni = 1\n(*temporary) = nil\n(*temporary) = 1\n(*temporary) = \"attempt to call field 'GetMountInfo' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\FollowFelankor\\FFMount.lua\"]:28: in function `FF_UpdateMounts'\n[string \"@Interface\\AddOns\\FollowFelankor\\FFEvents.lua\"]:38: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\WoWPro\\WoWPro_Frames.lua:459: attempt to call method 'SetBackdrop' (a nil value)",
			["time"] = "2020/11/20 16:47:43",
			["stack"] = "[string \"@Interface\\AddOns\\WoWPro\\WoWPro_Frames.lua\"]:459: in function `CreateTitleBar'\n[string \"@Interface\\AddOns\\WoWPro\\WoWPro_Frames.lua\"]:834: in function `CreateFrames'\n[string \"@Interface\\AddOns\\WoWPro\\WoWPro-8.0.1N.lua\"]:428: in function <Interface\\AddOns\\WoWPro\\WoWPro.lua:421>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [8]
		{
			["message"] = "...s\\WoWPro_Achievements\\WoWPro_Achievements_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/20 16:47:43",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_Achievements\\WoWPro_Achievements_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_Achievements\\WoWPro_Achievements-8.0.1N.lua\"]:22: in function <...e\\AddOns\\WoWPro_Achievements\\WoWPro_Achievements.lua:17>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [9]
		{
			["message"] = "...face\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/20 16:47:43",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies-8.0.1N.lua\"]:21: in function <Interface\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies.lua:16>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [10]
		{
			["message"] = "...ce\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/20 16:47:43",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling-8.0.1N.lua\"]:43: in function <Interface\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling.lua:38>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\WoWPro\\WoWPro-8.0.1N.lua:546: attempt to index field 'EventFrame' (a nil value)",
			["time"] = "2020/11/20 16:47:43",
			["stack"] = "[string \"@Interface\\AddOns\\WoWPro\\WoWPro-8.0.1N.lua\"]:546: in function `RegisterEvents'\n[string \"@Interface\\AddOns\\WowPro_Profession\\WoWPro_Profession-8.0.1N.lua\"]:22: in function <...rface\\AddOns\\WowPro_Profession\\WoWPro_Profession.lua:17>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [12]
		{
			["message"] = "...Ons\\WoWPro_WorldEvents\\WoWPro_WorldEvents_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/20 16:47:43",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_WorldEvents\\WoWPro_WorldEvents_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_WorldEvents\\WoWPro_WorldEvents-8.0.1N.lua\"]:23: in function <...ace\\AddOns\\WoWPro_WorldEvents\\WoWPro_WorldEvents.lua:18>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [13]
		{
			["message"] = "Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua:61: attempt to index global 'GuildShield' (a nil value)",
			["time"] = "2020/11/20 16:47:47",
			["locals"] = "self = SGI_EVENT_HANDLER {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"nil\"\n(*temporary) = \"Emerald Dream\"\n(*temporary) = \"attempt to index global 'GuildShield' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua\"]:61: in function `?'\n[string \"@Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua\"]:138: in function <Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua:137>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [14]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\DeathKnight\\Frost.lua",
			["session"] = 2,
			["time"] = "2020/11/20 16:47:57",
			["counter"] = 2,
		}, -- [15]
		{
			["message"] = "Interface\\AddOns\\WoWDBProfiler\\Main.lua:2654: attempt to call field 'GetQuestLogSelection' (a nil value)",
			["time"] = "2020/11/20 16:47:57",
			["stack"] = "[string \"@Interface\\AddOns\\WoWDBProfiler\\Main.lua\"]:2654: in function `?'\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...eDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...eDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 2,
			["counter"] = 7,
		}, -- [16]
		{
			["message"] = "Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua:124: attempt to call method 'AddonMessage' (a nil value)",
			["time"] = "2020/11/20 16:48:16",
			["locals"] = "self = SGI_EVENT_HANDLER {\n 0 = <userdata>\n}\nevent = \"CHAT_MSG_ADDON\"\n(*temporary) = nil\n(*temporary) = <table> {\n FormatTime2 = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Core.lua:19\n LoadLocale = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Core.lua:4\n FormatWhisper = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:211\n SystemMessage = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_System_Message.lua:77\n debug = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Constants.lua:72\n ShareLocks = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Blacklist.lua:67\n ShowTroubleShooter = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:1263\n GetPercentageDone = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:324\n ResetFix = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Core.lua:110\n VERSION_ALERT_COOLDOWN = false\n StopMassShare = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Blacklist.lua:37\n versionChanges = <table> {\n }\n ForceStop = <table> {\n }\n RemoveQueued = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:540\n ShowChanges = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:1204\n RemoveShielded = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:621\n RemoveOutdatedLocks = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Blacklist.lua:90\n FORCE_CHANGELOG = true\n libWho = <table> {\n }\n DebugState = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Constants.lua:78\n TestCharacters = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Filter.lua:102\n VERSION_MINOR = \".0\"\n UnregisterForWhisper = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:553\n RegisterForWhisper = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:563\n ShowOptions = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:1665\n ShowMinimapButton = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:1761\n GetSuperScanETR = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:646\n GetNumQueued = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:637\n GetSuperScanTimeLeft = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:334\n print = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Constants.lua:66\n divideString = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Core.lua:117\n GetTotalScanTime = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:658\n CreateSmallSuperScanFrame = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:249\n ReceivedNewLocks = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Blacklist.lua:81\n CountTable = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Core.lua:76\n CompareVersions = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Core.lua:91\n IsScanning = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:662\n CommonIssues = <table> {\n }\n HideInviteList = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:232\n SendGuildInvite = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:573\n StopSuperScan = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:531\n ShowFilterHandle = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:1138\n FilterPlayer = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Filter.lua:178\n PickRandomWhisper = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:198\n VERSION_MAJOR = \"7.6\"\n ShowSuperScanFrame = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:342\n HideMinimapButton = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_GUI.lua:1768\n CreateFilter = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SGI_Filter.lua:25\n GetSuperScanStats = <function> defined @Interface\\AddOns\\SuperGuildInvite\\SuperScan.lua:670\n GetSuperScanProgress = <function> defined @Interface\\AddOns\\SuperGuildInvite\\Su",
			["stack"] = "[string \"@Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua\"]:124: in function `?'\n[string \"@Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua\"]:138: in function <Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua:137>",
			["session"] = 2,
			["counter"] = 22,
		}, -- [17]
		{
			["message"] = "...ace\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua:174: attempt to call global 'GetNumQuestLogEntries' (a nil value)",
			["time"] = "2020/11/20 16:48:13",
			["locals"] = "(*temporary) = 1\n(*temporary) = nil\n(*temporary) = \"attempt to call global 'GetNumQuestLogEntries' (a nil value)\"\ngetbaseid = <function> defined @Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0.lua:84\nquestItems = <table> {\n}\nusableQuestItems = <table> {\n}\nactiveQuestItems = <table> {\n}\nquestItemText = <table> {\n}\nquestItemsNeededPattern = \"(.+): (%d+)/(%d+)\"\nselect = <function> defined =[C]:-1\nGetItemInfo = <function> defined =[C]:-1\n",
			["stack"] = "[string \"@Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua\"]:174: in function <...ace\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0.lua:173>\n[string \"@Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua\"]:226: in function `Scan'\n[string \"@Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua\"]:281: in function <...ace\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0.lua:276>",
			["session"] = 2,
			["counter"] = 8,
		}, -- [18]
		{
			["message"] = "Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua:120: attempt to call global 'SendAddonMessage' (a nil value)",
			["time"] = "2020/11/20 16:49:46",
			["locals"] = "self = SGI_EVENT_HANDLER {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = \"SGI_STOP\"\n(*temporary) = \"\"\n(*temporary) = \"GUILD\"\n(*temporary) = \"attempt to call global 'SendAddonMessage' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua\"]:120: in function `?'\n[string \"@Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua\"]:138: in function <Interface\\AddOns\\SuperGuildInvite\\SGI_Events.lua:137>",
			["session"] = 2,
			["counter"] = 2,
		}, -- [19]
	},
}
