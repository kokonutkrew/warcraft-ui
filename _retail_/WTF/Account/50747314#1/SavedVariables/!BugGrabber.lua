
BugGrabberDB = {
	["session"] = 16,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua:346: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2020/11/30 13:15:06",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua\"]:346: in function `FF_OnLoad'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\NOP\\nop-core.lua:33: LE_FOLLOWER_TYPE_SHIPYARD_6_2",
			["time"] = "2020/11/30 13:15:09",
			["locals"] = "(*temporary) = false\n(*temporary) = \"LE_FOLLOWER_TYPE_SHIPYARD_6_2\"\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\NOP\\nop-core.lua\"]:33: in main chunk",
			["session"] = 1,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\NOP\\nop-quest.lua:14: GetQuestLogIndexByID",
			["time"] = "2020/11/30 13:15:09",
			["locals"] = "(*temporary) = false\n(*temporary) = \"GetQuestLogIndexByID\"\n",
			["stack"] = "[string \"=[C]\"]: in function `assert'\n[string \"@Interface\\AddOns\\NOP\\nop-quest.lua\"]:14: in main chunk",
			["session"] = 1,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface\\AddOns\\WoWDBProfiler\\Comments.lua:507: attempt to call method 'SetBackdrop' (a nil value)",
			["time"] = "2020/11/30 13:15:17",
			["stack"] = "[string \"@Interface\\AddOns\\WoWDBProfiler\\Comments.lua\"]:507: in function `InitializeCommentSystem'\n[string \"@Interface\\AddOns\\WoWDBProfiler\\Main.lua\"]:922: in function <Interface\\AddOns\\WoWDBProfiler\\Main.lua:895>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:498: in function `InitializeAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:623: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\WoWPro\\WoWPro_Frames.lua:459: attempt to call method 'SetBackdrop' (a nil value)",
			["time"] = "2020/11/30 13:15:42",
			["stack"] = "[string \"@Interface\\AddOns\\WoWPro\\WoWPro_Frames.lua\"]:459: in function `CreateTitleBar'\n[string \"@Interface\\AddOns\\WoWPro\\WoWPro_Frames.lua\"]:834: in function `CreateFrames'\n[string \"@Interface\\AddOns\\WoWPro\\WoWPro-8.0.1N.lua\"]:428: in function <Interface\\AddOns\\WoWPro\\WoWPro.lua:421>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "...s\\WoWPro_Achievements\\WoWPro_Achievements_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/30 13:15:42",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_Achievements\\WoWPro_Achievements_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_Achievements\\WoWPro_Achievements-8.0.1N.lua\"]:22: in function <...e\\AddOns\\WoWPro_Achievements\\WoWPro_Achievements.lua:17>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "...face\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/30 13:15:42",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies-8.0.1N.lua\"]:21: in function <Interface\\AddOns\\WoWPro_Dailies\\WoWPro_Dailies.lua:16>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "...ce\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/30 13:15:42",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling-8.0.1N.lua\"]:43: in function <Interface\\AddOns\\WoWPro_Leveling\\WoWPro_Leveling.lua:38>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\WoWPro\\WoWPro-8.0.1N.lua:546: attempt to index field 'EventFrame' (a nil value)",
			["time"] = "2020/11/30 13:15:42",
			["stack"] = "[string \"@Interface\\AddOns\\WoWPro\\WoWPro-8.0.1N.lua\"]:546: in function `RegisterEvents'\n[string \"@Interface\\AddOns\\WowPro_Profession\\WoWPro_Profession-8.0.1N.lua\"]:22: in function <...rface\\AddOns\\WowPro_Profession\\WoWPro_Profession.lua:17>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "...Ons\\WoWPro_WorldEvents\\WoWPro_WorldEvents_Config.lua:74: bad argument #1 to 'insert' (table expected, got nil)",
			["time"] = "2020/11/30 13:15:42",
			["stack"] = "[string \"=[C]\"]: in function `insert'\n[string \"@Interface\\AddOns\\WoWPro_WorldEvents\\WoWPro_WorldEvents_Config.lua\"]:74: in function `CreateConfig'\n[string \"@Interface\\AddOns\\WoWPro_WorldEvents\\WoWPro_WorldEvents-8.0.1N.lua\"]:23: in function <...ace\\AddOns\\WoWPro_WorldEvents\\WoWPro_WorldEvents.lua:18>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:70: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:527: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:540: in function `EnableAddon'\n[string \"@Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0-13.lua\"]:630: in function <Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:615>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\DeathKnight\\Frost.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\DeathKnight\\Unholy.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Hunter\\Marksmanship.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Hunter\\Survival.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [14]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Mage\\Fire.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [15]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Mage\\Frost.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [16]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Monk\\Mistweaver.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Priest\\Holy.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [18]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Priest\\Shadow.lua",
			["session"] = 1,
			["time"] = "2020/11/30 13:15:57",
			["counter"] = 1,
		}, -- [19]
		{
			["message"] = "...ace\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua:174: attempt to call global 'GetNumQuestLogEntries' (a nil value)",
			["time"] = "2020/11/30 13:16:20",
			["locals"] = "(*temporary) = 1\n(*temporary) = nil\n(*temporary) = \"attempt to call global 'GetNumQuestLogEntries' (a nil value)\"\ngetbaseid = <function> defined @Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0.lua:84\nquestItems = <table> {\n}\nusableQuestItems = <table> {\n}\nactiveQuestItems = <table> {\n}\nquestItemText = <table> {\n}\nquestItemsNeededPattern = \"(.+): (%d+)/(%d+)\"\nselect = <function> defined =[C]:-1\nGetItemInfo = <function> defined =[C]:-1\n",
			["stack"] = "[string \"@Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua\"]:174: in function <...ace\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0.lua:173>\n[string \"@Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua\"]:226: in function `Scan'\n[string \"@Interface\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0-27.lua\"]:281: in function <...ace\\AddOns\\NOP\\LibQuestItem-1.0\\LibQuestItem-1.0.lua:276>",
			["session"] = 1,
			["counter"] = 4,
		}, -- [20]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:195: attempt to perform arithmetic on a nil value",
			["time"] = "2020/11/30 13:17:49",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"PARTY_INVITE_REQUEST\"\narg1 = \"Samoansavage\"\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = \"Samoansavage\"\n(*temporary) = 1\n(*temporary) = nil\n(*temporary) = \"Samoansavage\"\n(*temporary) = \"-\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to perform arithmetic on a nil value\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "[string \"@Interface\\AddOns\\FollowFelankor\\FFEvents.lua\"]:195: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 1,
			["counter"] = 1,
		}, -- [21]
		{
			["message"] = "Interface\\AddOns\\WoWDBProfiler\\Main.lua:2654: attempt to call field 'GetQuestLogSelection' (a nil value)",
			["time"] = "2020/11/30 13:15:57",
			["stack"] = "[string \"@Interface\\AddOns\\WoWDBProfiler\\Main.lua\"]:2654: in function `?'\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...eDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...eDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua\"]:120: in function <Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1,
			["counter"] = 24,
		}, -- [22]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:230: attempt to call global 'SendAddonMessage' (a nil value)",
			["time"] = "2020/11/30 13:17:51",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"GROUP_ROSTER_UPDATE\"\n(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"StatusCheck\"\n(*temporary) = \"PARTY\"\n(*temporary) = \"attempt to call global 'SendAddonMessage' (a nil value)\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "[string \"@Interface\\AddOns\\FollowFelankor\\FFEvents.lua\"]:230: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 1,
			["counter"] = 8,
		}, -- [23]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFMount.lua:28: attempt to call field 'GetMountInfo' (a nil value)",
			["time"] = "2020/11/30 13:15:35",
			["locals"] = "FFNewNumMounts = 88\n(for index) = 1\n(for limit) = 88\n(for step) = 1\ni = 1\n(*temporary) = nil\n(*temporary) = 1\n(*temporary) = \"attempt to call field 'GetMountInfo' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\FollowFelankor\\FFMount.lua\"]:28: in function `FF_UpdateMounts'\n[string \"@Interface\\AddOns\\FollowFelankor\\FFEvents.lua\"]:38: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 1,
			["counter"] = 9,
		}, -- [24]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TheUndermineJournal' tried to call the protected function '<unnamed>:Show()'.",
			["time"] = "2020/12/20 04:54:39",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_ToyBox.lua\"]:236: in function `ToySpellButton_UpdateButton'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_ToyBox.lua\"]:341: in function `ToyBox_UpdateButtons'\n[string \"@Interface\\AddOns\\Blizzard_Collections\\Blizzard_ToyBox.lua\"]:53: in function <...face\\AddOns\\Blizzard_Collections\\Blizzard_ToyBox.lua:38>",
			["session"] = 5,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "Interface\\AddOns\\AutoShare\\AutoShare-AutoShare-9.0.2-001.lua:40: attempt to call global 'SelectQuestLogEntry' (a nil value)",
			["time"] = "2020/12/20 21:11:55",
			["locals"] = "questIndex = 34019\n(*temporary) = nil\n(*temporary) = 34019\n(*temporary) = \"attempt to call global 'SelectQuestLogEntry' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\AutoShare\\AutoShare-AutoShare-9.0.2-001.lua\"]:40: in function `AS_HandleQuestAccepted'\n[string \"@Interface\\AddOns\\AutoShare\\AutoShare-AutoShare-9.0.2-001.lua\"]:30: in function <Interface\\AddOns\\AutoShare\\AutoShare.lua:26>",
			["session"] = 11,
			["counter"] = 2,
		}, -- [26]
		{
			["message"] = "...terface\\AddOns\\Details_TimeLine\\Details_TimeLine.lua:93: attempt to call method 'SetBackdrop' (a nil value)",
			["time"] = "2020/12/20 03:08:04",
			["locals"] = "_detalhes = <table> {\n SetBarSpecIconSettings = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:4292\n APITopics = <table> {\n }\n InitializeRunCodeWindow = <function> defined @Interface\\AddOns\\Details\\frames\\window_runcode.lua:8\n EntrarEmCombate = <function> defined @Interface\\AddOns\\Details\\core\\control.lua:316\n hex = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:650\n BuildSpellList = <function> defined @Interface\\AddOns\\Details\\functions\\spellcache.lua:315\n opened_windows = 1\n RefreshAttributeTextSize = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:7606\n PotionList = <table> {\n }\n EndRefresh = <function> defined @Interface\\AddOns\\Details\\core\\control.lua:1714\n FechaJanelaInfo = <function> defined @Interface\\AddOns\\Details\\frames\\window_playerbreakdown.lua:395\n GetMode = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:173\n SetMode = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:2722\n RestoreState_CurrentMythicDungeonRun = <function> defined @Interface\\AddOns\\Details\\functions\\profiles.lua:1454\n APIVersion = 144\n IsPluginEnabled = <function> defined @Interface\\AddOns\\Details\\core\\plugins.lua:58\n ImportProfile = <function> defined @Interface\\AddOns\\Details\\functions\\profiles.lua:1605\n show_totalhitdamage_on_overkill = false\n SetNickname = <function> defined @Interface\\AddOns\\Details\\Libs\\NickTag-1.0\\NickTag-1.0.lua:520\n color_by_arena_team = true\n SortKeyGroupHeal = <function> defined @Interface\\AddOns\\Details\\classes\\class_heal.lua:125\n SortKeyGroup = <function> defined @Interface\\AddOns\\Details\\classes\\class_damage.lua:134\n IsInEncounter = <function> defined @Interface\\AddOns\\Details\\core\\parser.lua:5644\n Check_ZONE_CHANGED_NEW_AREA = <function> defined @Interface\\AddOns\\Details\\core\\parser.lua:4387\n plugin_window_pos = <table> {\n }\n gump = <table> {\n }\n CaptureRefresh = <function> defined @Interface\\AddOns\\Details\\core\\parser.lua:4040\n NewModule = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:235\n InstancesToStoreData = <table> {\n }\n name_space_info = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:1358\n ShowDelayMsg = <function> defined @Interface\\AddOns\\Details\\boot.lua:773\n Resize = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:1897\n GetEncounterActorsName = <function> defined @Interface\\AddOns\\Details\\functions\\boss.lua:306\n RequestCloudData = <function> defined @Interface\\AddOns\\Details\\core\\network.lua:775\n RestauraJanela = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:1456\n default_skin_to_use = \"Minimalistic\"\n GetOpenedWindowsAmount = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:281\n GetInstanceGroup = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:8073\n deadlog_events = 32\n Dump = <function> defined @Interface\\AddOns\\Details\\frames\\window_dump.lua:14\n OpenNewsWindow = <function> defined @Interface\\AddOns\\Details\\frames\\window_news.lua:7\n last_instance_id = 0\n Disable = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:314\n atributo_energy = <table> {\n }\n UnitDamageOnUnit = <function> defined @Interface\\AddOns\\Details\\functions\\api2.lua:1123\n name_space_generic = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:1368\n storage = <table> {\n }\n AdjustAlphaByContext = <function> defined @Interface\\AddOns\\Details\\frames\\window_main.lua:7424\n AddOnStartTime = 61595.444000\n ContainerSortEnemies = <function> defined @Interface\\AddOns\\Details\\classes\\class_damage.lua:254\n ToolBar = <table> {\n }\n FixToolbarMenu = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:1444\n UseWestNumericalSystem = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:292\n FazerAnimacao_Esquerda = <function> defined @Interface\\AddOns\\Details\\core\\windows.lua:234\n Desagrupar = <function> defined @Interface\\AddOns\\Details\\classes\\class_instance.lua:1122\n unpacks = <function> defined @Interface\\AddOns\\Details\\core\\util.lua:688\n listener = <unnamed> {\n }",
			["stack"] = "[string \"@Interface\\AddOns\\Details_TimeLine\\Details_TimeLine.lua\"]:93: in function <...terface\\AddOns\\Details_TimeLine\\Details_TimeLine.lua:40>\n[string \"@Interface\\AddOns\\Details_TimeLine\\Details_TimeLine.lua\"]:1691: in function `OnEvent'\n[string \"@Interface\\AddOns\\Details\\core\\plugins.lua\"]:293: in function <Interface\\AddOns\\Details\\core\\plugins.lua:290>",
			["session"] = 14,
			["counter"] = 13,
		}, -- [27]
		{
			["message"] = "Interface\\AddOns\\EMA\\Modules\\Quest.lua:1944: attempt to index local 'info' (a nil value)",
			["time"] = "2020/12/20 20:37:24",
			["locals"] = "self = <table> {\n moduleDisplayName = \"Quest\"\n QuestMapQuestOptions_AbandonQuest = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1684\n COMMAND_SELECT_ACTIVE_QUEST = \"EMASelectActiveQuest\"\n SettingsToggleAllAcceptAnyQuest = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:939\n iterateQuests = 2\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0.lua:147\n SettingsSetMessageArea = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1086\n SecureHook = <function> defined @Interface\\AddOns\\Ace3\\AceHook-3.0\\AceHook-3.0.lua:336\n ToggleQuestLog = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1953\n COMMAND_ACCEPT_QUEST_FAKE = \"EMAAcceptQuestFake\"\n settingsDatabaseName = \"QuestProfileDB\"\n SettingsToggleAcceptFromGuild = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:978\n COMMAND_DECLINE_QUEST = \"EMADeclineQuest\"\n QUEST_PROGRESS = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1189\n SettingsCreateQuestCompletionControl = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:602\n IsEnabled = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:451\n ScheduleTimer = <function> defined @Interface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0.lua:94\n DoShareAllQuestsFromAllToons = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1869\n EMARegisterModule = <function> defined @Interface\\AddOns\\EMA\\Core\\Module.lua:57\n COMMAND_QUEST_TRACK = \"EMAQuestTrack\"\n RegisterMessage = <function> defined @Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:90\n UnregisterMessage = <function> defined @Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n SettingsToggleAcceptFromRaid = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:973\n hooks = <table> {\n }\n SettingsToggleHasChoiceMinionChooseSameRewardAsMaster = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1045\n SelectGossipActiveQuest = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1223\n SettingsToggleNoChoiceAllDoNothing = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1003\n SetEnabledState = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:424\n Hook = <function> defined @Interface\\AddOns\\Ace3\\AceHook-3.0\\AceHook-3.0.lua:274\n COMMAND_SHARE_ALL_QUESTS = \"EMAShareAllQuests\"\n COMMAND_UNTRACK_ALL_QUESTS = \"EMAUnTrackAllQuests\"\n ShareNextQuest = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1880\n SettingsToggleAllAutoSelectQuests = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:911\n COMMAND_SELECT_AVAILABLE_QUEST = \"EMASelectAvailableQuest\"\n SettingsToggleHasChoiceMinionCompleteQuestWithMaster = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1031\n DebugMessage = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:219\n OnInitialize = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:224\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n EMASendSettings = <function> defined @Interface\\AddOns\\EMA\\Core\\Module.lua:66\n SettingsToggleShowEMAQuestLogWithWoWQuestLog = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:993\n SettingsToggleMinionMirrorMasterAccept = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:922\n DoDeclineQuest = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1318\n SelectAvailableQuest = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1283\n ToggleFrame = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1947\n SettingsToggleDoNotAutoAccept = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:932\n GetName = <function> defined @Interface\\AddOns\\Ace3\\AceAddon-3.0\\AceAddon-3.0.lua:279\n EMASendCommandToTeam = <function> defined @Interface\\AddOns\\EMA\\Core\\Module.lua:71\n DoSelectAvailableQuest = <function> defined @Interface\\AddOns\\EMA\\Modules\\Quest.lua:1293\n SharedMedia = <table> {\n }\n name = \"Quest\"\n characterGUID = \"P",
			["stack"] = "[string \"@Interface\\AddOns\\EMA\\Modules\\Quest.lua\"]:1944: in function `GetRelevantQuestInfo'\n[string \"@Interface\\AddOns\\EMA\\Modules\\Quest.lua\"]:1855: in function `?'\n[string \"@Interface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0-17.lua\"]:55: in function <Interface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0.lua:50>",
			["session"] = 14,
			["counter"] = 2,
		}, -- [28]
		{
			["message"] = "Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-97.lua:328: attempt to index local 'data' (a nil value)",
			["time"] = "2020/12/20 20:57:10",
			["locals"] = "id = 2\ndata = nil\n(*temporary) = nil\n(*temporary) = 2\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'data' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-97.lua\"]:328: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:326>\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-97.lua\"]:4861: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:4857>\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-97.lua\"]:5657: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:5632>\n[string \"@Interface\\AddOns\\WorldQuestsList\\WorldQuestsList-97.lua\"]:7000: in function <Interface\\AddOns\\WorldQuestsList\\WorldQuestsList.lua:6997>\n[string \"@Interface\\SharedXML\\C_TimerAugment.lua\"]:16: in function <Interface\\SharedXML\\C_TimerAugment.lua:14>",
			["session"] = 14,
			["counter"] = 3,
		}, -- [29]
		{
			["message"] = "Interface\\AddOns\\EMA\\Modules\\QuestWatcher.lua:1768: attempt to index local 'info' (a nil value)",
			["time"] = "2020/12/21 01:05:36",
			["stack"] = "[string \"@Interface\\AddOns\\EMA\\Modules\\QuestWatcher.lua\"]:1768: in function `GetQuestItemFromQuestID'\n[string \"@Interface\\AddOns\\EMA\\Modules\\QuestWatcher.lua\"]:2077: in function `QuestWatcherQuestListDrawLine'\n[string \"@Interface\\AddOns\\EMA\\Modules\\QuestWatcher.lua\"]:2157: in function `QuestWatcherQuestListScrollRefresh'\n[string \"@Interface\\AddOns\\EMA\\Modules\\QuestWatcher.lua\"]:1601: in function `DoRemoveQuestFromWatchList'\n[string \"@Interface\\AddOns\\EMA\\Modules\\QuestWatcher.lua\"]:2552: in function `EMAOnCommandReceived'\n[string \"@Interface\\AddOns\\EMA\\Core\\Core.lua\"]:445: in function `OnCommandReceived'\n[string \"@Interface\\AddOns\\EMA\\Core\\Communications.lua\"]:359: in function `?'\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:119: in function <...eDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:29: in function <...eDragons\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n[string \"@Interface\\AddOns\\AAP-Core\\lib\\HereBeDragons\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua\"]:64: in function `Fire'\n[string \"@Interface\\AddOns\\Ace3\\AceComm-3.0\\AceComm-3.0-12.lua\"]:264: in function <Interface\\AddOns\\Ace3\\AceComm-3.0\\AceComm-3.0.lua:246>",
			["session"] = 14,
			["counter"] = 11,
		}, -- [30]
		{
			["message"] = "...terface\\AddOns\\RareSpawnOverlay\\RareSpawnOverlay-7.0.00000.lua:108: Attempt to register unknown event \"WORLD_MAP_UPDATE\"",
			["time"] = "2021/03/11 01:19:15",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n}\n(*temporary) = \"WORLD_MAP_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\RareSpawnOverlay\\RareSpawnOverlay-7.0.00000.lua\"]:108: in main chunk",
			["session"] = 16,
			["counter"] = 2,
		}, -- [31]
		{
			["message"] = "(null)",
			["session"] = 16,
			["time"] = "2021/03/11 01:19:52",
			["counter"] = 6,
		}, -- [32]
	},
}
