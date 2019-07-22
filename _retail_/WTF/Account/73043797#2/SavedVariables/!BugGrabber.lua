
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 313,
	["errors"] = {
		{
			["message"] = "[string \"CloseTradeSkill()\"]:1: attempt to call global 'CloseTradeSkill' (a nil value)",
			["time"] = "2018/12/07 20:34:17",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"attempt to call global 'CloseTradeSkill' (a nil value)\"\n",
			["stack"] = "[string \"CloseTradeSkill()\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2158: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4734: in function <Interface\\FrameXML\\ChatFrame.lua:4681>\n[C]: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4396: in function <Interface\\FrameXML\\ChatFrame.lua:4395>\n[C]: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2884: in function <Interface\\FrameXML\\ChatFrame.lua:2877>\n[C]: in function `RunMacroText'\nInterface\\FrameXML\\SecureTemplates.lua:432: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:623: in function <Interface\\FrameXML\\SecureTemplates.lua:571>",
			["session"] = 155,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[string \"for i=1,GetNumTradeSkills() do local na,_,n...\"]:1: attempt to call global 'GetNumTradeSkills' (a nil value)",
			["time"] = "2018/12/07 20:34:21",
			["locals"] = "(*temporary) = 1\n(*temporary) = nil\n(*temporary) = \"attempt to call global 'GetNumTradeSkills' (a nil value)\"\n",
			["stack"] = "[string \"for i=1,GetNumTradeSkills() do local na,_,n...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2158: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4734: in function <Interface\\FrameXML\\ChatFrame.lua:4681>\n[C]: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4396: in function <Interface\\FrameXML\\ChatFrame.lua:4395>\n[C]: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2884: in function <Interface\\FrameXML\\ChatFrame.lua:2877>\n[C]: in function `RunMacroText'\nInterface\\FrameXML\\SecureTemplates.lua:432: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:623: in function <Interface\\FrameXML\\SecureTemplates.lua:571>",
			["session"] = 155,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: Attempt to register unknown event \"ENCOUNTER_STOP\"",
			["time"] = "2018/12/07 19:58:52",
			["locals"] = "(*temporary) = AceEvent30Frame {\n 0 = <userdata>\n}\n(*temporary) = \"ENCOUNTER_STOP\"\n",
			["stack"] = "[C]: in function `RegisterEvent'\nInterface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:33: in function `OnUsed'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:168: in function `RegisterEvent'\nInterface\\AddOns\\DynamicCam\\Core.lua:1434: in function `RegisterSituationEvents'\nInterface\\AddOns\\DynamicCam\\Core.lua:1424: in function `?'\nInterface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0-17.lua:55: in function <Interface\\AddOns\\Ace3\\AceTimer-3.0\\AceTimer-3.0.lua:50>",
			["session"] = 157,
			["counter"] = 3,
		}, -- [3]
		{
			["message"] = "[string \"for k,v in pairs(this.buffs) do ...\"]:2: Usage: UnitBuff(\"unit\", [index][, \"filter\"])",
			["time"] = "2018/12/07 19:35:11",
			["stack"] = "[C]: in function `UnitBuff'\n[string \"for k,v in pairs(this.buffs) do ...\"]:2: in main chunk\n(tail call): ?\nInterface\\AddOns\\DynamicCam\\Core.lua:763: in function `EvaluateSituations'\nInterface\\AddOns\\DynamicCam\\Core.lua:1408: in function `?'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:145: in function <...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:90: in function `Fire'\nInterface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 157,
			["counter"] = 612,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:37: Attempt to unregister unknown event \"ENCOUNTER_STOP\"",
			["time"] = "2018/12/07 19:52:07",
			["stack"] = "[C]: in function `UnregisterEvent'\nInterface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-4.lua:37: in function `OnUnused'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:223: in function `UnregisterAllEvents'\nInterface\\AddOns\\DynamicCam\\Core.lua:721: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\nInterface\\AddOns\\Ace3\\AceDB-3.0\\AceDB-3.0-26.lua:362: in function <Interface\\AddOns\\Ace3\\AceDB-3.0\\AceDB-3.0.lua:359>",
			["session"] = 157,
			["counter"] = 4,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\Storyline\\logic.lua:217: attempt to index local 'eventInfo' (a nil value)",
			["time"] = "2018/12/07 21:20:13",
			["locals"] = "targetType = \"none\"\nfullText = \"Samoantitan, there's a new threat in Elwynn Forest!  Murlocs are swimming up the streams of eastern Elwynn, scaring away fish and attacking gentle folk!\n\nI warned Marshal Dughan, but he's more worried about the gnolls and the bandits.  He's not convinced that the murlocs are a danger.\n\nPlease, Samoantitan, speak to Dughan and persuade him to send more troops to the east!\"\nevent = \"REPLAY\"\neventInfo = nil\nguid = \"Uniq-WOWGUID_SCRIPT_TARGET_NONE\"\ntype = \"Uniq\"\nzero = \"WOWGUID_SCRIPT_TARGET_NONE\"\nserver_id = nil\ninstance_id = nil\nzone_uid = nil\nnpc_id = nil\nspawn_uid = nil\ntargetName = \"Unknown\"\n(*temporary) = \"Unknown\"\n(*temporary) = \"Unknown\"\n(*temporary) = 7\n(*temporary) = <table> {\n}\n(*temporary) = nil\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = <table> {\n}\n(*temporary) = 0\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 0\n(*temporary) = 1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'eventInfo' (a nil value)\"\nmainFrame = Storyline_NPCFrame {\n 0 = <userdata>\n TopBorder = <unnamed> {\n }\n debug = Storyline_NPCFrameDebug {\n }\n BorderBottomLeft = <unnamed> {\n }\n BorderTopRight = <unnamed> {\n }\n BorderLeft = <unnamed> {\n }\n banner = Storyline_NPCFrameBanner {\n }\n chat = Storyline_NPCFrameChat {\n }\n models = Storyline_NPCFrameModels {\n }\n title = Storyline_NPCFrameTitle {\n }\n BottomBorder = <unnamed> {\n }\n BorderRight = <unnamed> {\n }\n BorderBottomRight = <unnamed> {\n }\n BorderTopLeft = <unnamed> {\n }\n}\nUnitGUID = <function> defined =[C]:-1\nstrsplit = <function> defined =[C]:-1\ntContains = <function> defined @Interface\\SharedXML\\Util.lua:156\nStoryline_NPC_BLACKLIST = <table> {\n 1 = \"94399\"\n}\nUnitName = <function> defined =[C]:-1\nplayerModel = Storyline_NPCFrameModelsMe {\n OnModelLoaded = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:35\n SetModelFacing = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:219\n scroll = <unnamed> {\n }\n ResetIdleAnimationID = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:56\n SetModelUnit = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:68\n SetModelFeet = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:225\n SetModelHeight = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:213\n SetModelOffset = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:231\n modelLoadedPromise = <table> {\n }\n offset = 0.215\n debug = Storyline_NPCFrameDebugSequenceMe {\n }\n OnAnimFinished = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:185\n AnimateScalingValuesIn = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:237\n PlayAnimation = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:110\n displayedModel = 1011653\n animationStartedTime = 37671.737\n currentAnimation = 60\n boundSetModelHeight = <function> defined @Interface\\AddOns\\Storyline\\lib\\Ellyb\\Tools\\Functions.lua:21\n isPlayingAnimationSequence = true\n isModelDisplayedOnLeft = true\n SetCustomIdleAnimationID = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:50\n sequence = <table> {\n }\n scale = 1.45\n SetScalingValuesIn = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:244\n facing = 0.75\n animationTries = 0\n animTab = <table> {\n }\n isPlayingIntersticeAnimation = true\n isModelLoaded = false\n doNotAnimateScaling = false\n modelOffsetTransitionator = <table> {\n }\n 0 = <userdata>\n DisplayDead = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:80\n GetValidSpeakingAnimation = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:90\n modelFeetTransitionator = <table> {\n }\n PlayIdleAnimation = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:117\n GetModelFileIDAsString = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:252\n OnLoad = <function> defined @Interface\\AddOns\\Storyline\\PlayerModelMixin.lua:19\n PlayAnimSequence = <func",
			["stack"] = "Interface\\AddOns\\Storyline\\logic.lua:217: in function <Interface\\AddOns\\Storyline\\logic.lua:198>\nInterface\\AddOns\\Storyline\\events.lua:850: in function <Interface\\AddOns\\Storyline\\events.lua:848>",
			["session"] = 161,
			["counter"] = 2,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\Storyline\\events.lua:638: bad argument #2 to 'format' (string expected, got nil)",
			["time"] = "2018/12/07 21:32:04",
			["locals"] = "(*temporary) = \"QUEST_GREETING – Finish method : Using selector method found for bucket type %s at index %s.\"\n(*temporary) = \"4\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: in function `format'\nInterface\\AddOns\\Storyline\\events.lua:638: in function `finishMethod'\nInterface\\AddOns\\Storyline\\events.lua:571: in function <Interface\\AddOns\\Storyline\\events.lua:552>\nInterface\\AddOns\\Storyline\\logic.lua:300: in function <Interface\\AddOns\\Storyline\\logic.lua:198>\nInterface\\AddOns\\Storyline\\events.lua:824: in function <Interface\\AddOns\\Storyline\\events.lua:822>",
			["session"] = 163,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "Interface\\AddOns\\WoWDBProfiler\\Main.lua:1010: bad argument #2 to 'tonumber' (base out of range)",
			["time"] = "2018/12/11 20:32:55",
			["locals"] = "(*temporary) = \"0\"\n(*temporary) = 0\n",
			["stack"] = "[C]: ?\nInterface\\AddOns\\WoWDBProfiler\\Main.lua:1010: in function <Interface\\AddOns\\WoWDBProfiler\\Main.lua:989>\nInterface\\AddOns\\WoWDBProfiler\\Main.lua:1077: in function <Interface\\AddOns\\WoWDBProfiler\\Main.lua:1046>\nInterface\\SharedXML\\C_TimerAugment.lua:16: in function <Interface\\SharedXML\\C_TimerAugment.lua:14>",
			["session"] = 177,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "SendChatMessage(): Whisper message missing target player!",
			["time"] = "2018/12/11 20:40:38",
			["locals"] = "(*temporary) = \"!ff_follow\"\n(*temporary) = \"WHISPER\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n",
			["stack"] = "[C]: ?\n[C]: in function `SendChatMessage'\n[string \"SendChatMessage(\"!ff_follow\", \"WHISPER\", ni...\"]:1: in main chunk\n[C]: in function `RunScript'\nInterface\\FrameXML\\ChatFrame.lua:2155: in function `?'\nInterface\\FrameXML\\ChatFrame.lua:4757: in function <Interface\\FrameXML\\ChatFrame.lua:4704>\n[C]: in function `ChatEdit_ParseText'\nInterface\\FrameXML\\ChatFrame.lua:4418: in function <Interface\\FrameXML\\ChatFrame.lua:4417>\n[C]: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:2895: in function <Interface\\FrameXML\\ChatFrame.lua:2888>\n[C]: in function `UseAction'\nInterface\\FrameXML\\SecureTemplates.lua:345: in function `handler'\nInterface\\FrameXML\\SecureTemplates.lua:623: in function <Interface\\FrameXML\\SecureTemplates.lua:571>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:266: in function <Interface\\FrameXML\\SecureHandlers.lua:263>\n[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:296: in function <Interface\\FrameXML\\SecureHandlers.lua:279>\n(tail call): ?",
			["session"] = 178,
			["counter"] = 4,
		}, -- [9]
		{
			["message"] = "...ace\\AddOns\\OrderHallCommander\\OrderHallCommander-1.7.2 80000.lua:467: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2018/12/11 20:44:46",
			["locals"] = "(*temporary) = \":\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[C]: in function `strsplit'\n...ace\\AddOns\\OrderHallCommander\\OrderHallCommander-1.7.2 80000.lua:467: in function <...ace\\AddOns\\OrderHallCommander\\OrderHallCommander.lua:453>",
			["session"] = 178,
			["counter"] = 2,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:3216: attempt to index field '?' (a nil value)",
			["time"] = "2018/12/12 02:15:05",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n}\nevent = \"QUEST_DETAIL\"\ntype = \"Creature\"\nzero = \"0\"\nserver_id = \"3131\"\ninstance_id = \"1669\"\nzone_uid = \"25\"\nnpc_id = \"125341\"\nspawn_uid = \"0000103264\"\nCurStep = 1\n(*temporary) = nil\n(*temporary) = 830\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field '?' (a nil value)\"\nAAP_PopupFunc = <function> defined @Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2666\nAAP_BuyMerchFunc = <function> defined @Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2651\n",
			["stack"] = "Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:3216: in function <Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2718>",
			["session"] = 183,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:3022: attempt to index field '?' (a nil value)",
			["time"] = "2018/12/12 10:28:07",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n}\nevent = \"UNIT_SPELLCAST_SUCCEEDED\"\narg1 = \"player\"\narg2 = \"Cast-3-3776-1669-13-8690-001211451B\"\narg3 = 8690\narg4 = nil\narg5 = nil\nCurStep = 1\nsteps = nil\n(*temporary) = nil\n(*temporary) = 882\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field '?' (a nil value)\"\nAAP_PopupFunc = <function> defined @Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2674\nAAP_BuyMerchFunc = <function> defined @Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2659\n",
			["stack"] = "Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:3022: in function <Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2726>",
			["session"] = 191,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Azeroth Auto Pilot' tried to call the protected function 'CLQListF21:Hide()'.",
			["time"] = "2018/12/12 00:18:24",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2548: in function <Interface\\AddOns\\Azeroth Auto Pilot\\QuestHandler.lua:2529>",
			["session"] = 191,
			["counter"] = 2,
		}, -- [13]
		{
			["message"] = "Interface\\AddOns\\WeakAuras\\Locales\\ruRU-Russian.lua:616: unfinished long string near '<eof>'",
			["time"] = "2018/12/12 08:31:50",
			["locals"] = "",
			["stack"] = "",
			["session"] = 207,
			["counter"] = 105,
		}, -- [14]
		{
			["message"] = "Interface\\AddOns\\PVPSound\\PVPSound-4.0.9.lua:277: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2018/12/07 19:58:22",
			["locals"] = "self = <table> {\n RecentlyPaybackInQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:274\n SoundInQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_SoundEngine.lua:95\n Korean = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:930\n UpdatePaybackSound = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:101\n AddEffectToQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_SoundEngine.lua:223\n FrenchClient = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:747\n ClearRecentlyPaybackQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:253\n CheckRecentlyPaybackQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:243\n English = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:19\n Spanish = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:378\n TraditionalChineseClient = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:1652\n TriggerKill = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound.lua:6192\n French = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:654\n LatinAmericanSpanishClient = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:609\n SimplifiedChineseClient = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:1514\n PrintSlashHelp = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Options.lua:1836\n RussianClient = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:1377\n AddToQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_SoundEngine.lua:25\n AddToRecentlyKilledQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:303\n CheckRecentlyKilledQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:334\n PrintSlashMenu = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Options.lua:1866\n UnregisterEvents = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound.lua:98\n AddToRecentlyPaybackQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:212\n TraditionalChinese = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:1559\n OnLoadTwo = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound.lua:62\n LatinAmericanSpanish = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:516\n OnEventTwo = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound.lua:4605\n RegisterEvents = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound.lua:80\n Italian = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:792\n ClearRetributionQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:162\n UpdateSoundEffectEngine = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_SoundEngine.lua:297\n CheckRetributionQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:152\n KillingSettings = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound.lua:172\n ClearRecentlyKilledQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:344\n DeleteFirstPayback = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:80\n PaybackInQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_PaybackEngine.lua:92\n KoreanClient = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Localizations.lua:1023\n RegisterDataEvents = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_DataShare.lua:15\n OnLoadThree = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound.lua:74\n DataOnEvent = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_DataShare.lua:39\n SoundEffectInQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_SoundEngine.lua:288\n ClearSctQueue = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_SctEngine.lua:217\n SlashCommands = <function> defined @Interface\\AddOns\\PVPSound\\PVPSound_Options.lua:1495\n ClearSoundEffectQueue = <function> defined ",
			["stack"] = "Interface\\AddOns\\PVPSound\\PVPSound-4.0.9.lua:277: in function `DefaultSettings'\nInterface\\AddOns\\PVPSound\\PVPSound-4.0.9.lua:924: in function <Interface\\AddOns\\PVPSound\\PVPSound.lua:917>",
			["session"] = 222,
			["counter"] = 7,
		}, -- [15]
		{
			["message"] = "Error loading Interface\\AddOns\\PVPSound_CustomSoundPack\\PVPSound_SoundLengthsCustom.lua",
			["time"] = "2018/12/07 19:58:30",
			["session"] = 222,
			["counter"] = 21,
		}, -- [16]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'DataStore' tried to call the protected function 'setInsetFn()'.",
			["time"] = "2018/12/15 18:13:13",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `setInsetFn'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:138: in function `UpdateInsetsForType'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:122: in function `ApplyFrameOptions'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:93: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:51: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:42>",
			["session"] = 228,
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WoWPro' tried to call the protected function 'WoWPro.MainFrame:Hide()'.",
			["time"] = "2018/12/16 01:25:18",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `Hide'\nInterface\\AddOns\\WoWPro\\WoWPro_Events.lua:403: in function `?'\nInterface\\AddOns\\WoWPro\\WoWPro_Events.lua:878: in function <Interface\\AddOns\\WoWPro\\WoWPro_Events.lua:830>",
			["session"] = 242,
			["counter"] = 1,
		}, -- [18]
		{
			["message"] = "Interface\\AddOns\\Prat-3.0-r1193      \\modules\\ChannelSticky.lua:379: attempt to call method 'ResgisterSmartGroup' (a nil value)",
			["time"] = "2018/12/10 13:13:22",
			["stack"] = "Interface\\AddOns\\Prat-3.0-r1193      \\modules\\ChannelSticky.lua:379: in function `OnModuleDisable'\nInterface\\AddOns\\Prat-3.0-r1193      \\addon\\modules.lua:190: in function <Interface\\AddOns\\Prat-3.0\\addon\\modules.lua:187>\n[C]: ?\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:70: in function <...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:562: in function <...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:555>\n(tail call): ?\nInterface\\AddOns\\Prat-3.0-r1193      \\addon\\addon.lua:341: in function `?'\n...\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0-17.lua:55: in function <...\\AddOns\\DataStore\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:50>",
			["session"] = 257,
			["counter"] = 5,
		}, -- [19]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Bartender4' tried to call the protected function 'SecureStateDriverManager:SetAttribute()'.",
			["time"] = "2018/12/17 23:03:40",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:18: in function <Interface\\FrameXML\\SecureStateDriver.lua:16>\n(tail call): ?\nInterface\\AddOns\\Bartender4\\Bar.lua:433: in function `InitVisibilityDriver'\nInterface\\AddOns\\Bartender4\\Bar.lua:228: in function `ApplyConfig'\nInterface\\AddOns\\Bartender4\\StatusTrackingBar.lua:70: in function `ApplyConfig'\nInterface\\AddOns\\Bartender4\\StatusTrackingBar.lua:54: in function `ApplyConfig'\nInterface\\AddOns\\Bartender4\\StatusTrackingBar.lua:48: in function <Interface\\AddOns\\Bartender4\\StatusTrackingBar.lua:29>\n[C]: ?\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:70: in function <...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:65>\n...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0-12.lua:527: in function <...\\AddOns\\DataStore\\libs\\AceAddon-3.0\\AceAddon-3.0.lua:520>\n...\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-67.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-67.lua:784: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:610>\n[C]: ?\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...ic\\libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown.lua:442: in function <...ic\\libs\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown.lua:433>\n[C]: ?\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...s\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown-Items.lua:351: in function <...s\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown-Items.lua:341>",
			["session"] = 268,
			["counter"] = 1,
		}, -- [20]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'DataStore' tried to call the protected function 'SecureHandlersUpdateFrame:SetAttribute()'.",
			["time"] = "2018/12/17 23:03:40",
			["locals"] = "InCombatSkipped",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureHandlers.lua:742: in function <Interface\\FrameXML\\SecureHandlers.lua:725>\n(tail call): ?\n...er4\\libs\\LibActionButton-1.0\\LibActionButton-1.0-74.lua:445: in function `func'\nInterface\\AddOns\\Bartender4\\ButtonBar.lua:278: in function `ForAll'\nInterface\\AddOns\\Bartender4\\StateBar.lua:249: in function `UpdateStates'\nInterface\\AddOns\\Bartender4\\StateBar.lua:321: in function `UpdateSelfCast'\nInterface\\AddOns\\Bartender4\\ActionBar.lua:93: in function `UpdateSelfCast'\nInterface\\AddOns\\Bartender4\\ActionBar.lua:85: in function `UpdateButtonConfig'\nInterface\\AddOns\\Bartender4\\ActionBar.lua:282: in function `SetGrid'\nInterface\\AddOns\\Bartender4\\ActionBar.lua:235: in function `UpdateButtons'\n...\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-67.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-67.lua:784: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:610>\n[C]: ?\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...ic\\libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown.lua:442: in function <...ic\\libs\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown.lua:433>\n[C]: ?\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...s\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown-Items.lua:351: in function <...s\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown-Items.lua:341>",
			["session"] = 268,
			["counter"] = 1,
		}, -- [21]
		{
			["message"] = "Interface\\AddOns\\Bartender4\\Bar.lua:324: Usage: BT4BarPetBar:SetAlpha(alpha 0 to 1)",
			["time"] = "2018/12/17 23:48:26",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `SetAlpha'\nInterface\\AddOns\\Bartender4\\Bar.lua:324: in function `SetConfigAlpha'\nInterface\\AddOns\\Bartender4\\Bar.lua:124: in function <Interface\\AddOns\\Bartender4\\Bar.lua:116>\n[C]: ?\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\RestrictedFrames.lua:481: in function `SetAttribute'\n[string \"		if not newstate then return end...\"]:4: in function <[string \"		if not newstate then return end...\"]:1>\n(tail call): ?\n[C]: ?\nInterface\\FrameXML\\RestrictedExecution.lua:484: in function <Interface\\FrameXML\\RestrictedExecution.lua:447>\n(tail call): ?\nInterface\\FrameXML\\SecureHandlers.lua:115: in function <Interface\\FrameXML\\SecureHandlers.lua:110>\n[C]: ?\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\SecureStateDriver.lua:114: in function <Interface\\FrameXML\\SecureStateDriver.lua:95>\nInterface\\FrameXML\\SecureStateDriver.lua:127: in function <Interface\\FrameXML\\SecureStateDriver.lua:119>",
			["session"] = 268,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "Interface\\AddOns\\Bartender4\\StateBar.lua:275: attempt to index field 'states' (a nil value)",
			["time"] = "2018/12/17 23:04:40",
			["locals"] = "self = BT4Bar3 {\n module = <table> {\n }\n WrapScript = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:782\n numbuttons = 12\n buttons = <table> {\n }\n Execute = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:777\n hidedriver = <table> {\n }\n 0 = <userdata>\n overlay = BT4Bar3Overlay {\n }\n UnwrapScript = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:788\n config = <table> {\n }\n SetFrameRef = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:793\n id = \"3\"\n statebutton = <table> {\n }\n buttonConfig = <table> {\n }\n name = \"Bar 3\"\n elapsed = 0\n}\nkey = \"enabled\"\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'states' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\Bartender4\\StateBar.lua:275: in function `GetStateOption'\nInterface\\AddOns\\Bartender4\\StateBar.lua:116: in function `UpdateStates'\nInterface\\AddOns\\Bartender4\\StateBar.lua:70: in function `OnEvent'\nInterface\\AddOns\\Bartender4\\ActionBar.lua:55: in function <Interface\\AddOns\\Bartender4\\ActionBar.lua:41>",
			["session"] = 268,
			["counter"] = 20,
		}, -- [23]
		{
			["message"] = "Interface\\FrameXML\\SecureHandlers.lua:735: Header frame must be explicitly protected",
			["time"] = "2018/12/17 23:03:40",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: ?\nInterface\\FrameXML\\SecureHandlers.lua:735: in function <Interface\\FrameXML\\SecureHandlers.lua:725>\n(tail call): ?\nInterface\\AddOns\\Bartender4\\ActionBar.lua:147: in function `SetupSmartTarget'\nInterface\\AddOns\\Bartender4\\ActionBar.lua:36: in function `ApplyConfig'\nInterface\\AddOns\\Bartender4\\ActionBars.lua:183: in function `Create'\nInterface\\AddOns\\Bartender4\\ActionBars.lua:204: in function `EnableBar'\nInterface\\AddOns\\Bartender4\\ActionBars.lua:133: in function `ApplyConfig'\nInterface\\AddOns\\Bartender4\\Bartender4-4.8.1.lua:230: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-67.lua:50: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:48>\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-67.lua:784: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:610>\n[C]: ?\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...ic\\libs\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown.lua:442: in function <...ic\\libs\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown.lua:433>\n[C]: ?\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:71: in function <...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0.lua:69>\n...face\\AddOns\\Altoholic\\libs\\AceGUI-3.0\\AceGUI-3.0-36.lua:285: in function `Fire'\n...s\\AceGUI-3.0-36\\widgets\\AceGUIWidget-DropDown-Items.lua:351: in function <...s\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown-Items.lua:341>",
			["session"] = 268,
			["counter"] = 10,
		}, -- [24]
		{
			["message"] = "Interface\\AddOns\\Bartender4\\ButtonBar.lua:195: attempt to perform arithmetic on local 'Rows' (a nil value)",
			["time"] = "2018/12/17 23:04:40",
			["locals"] = "self = BT4BarMicroMenu {\n 0 = <userdata>\n WrapScript = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:782\n buttons = <table> {\n }\n id = \"MicroMenu\"\n hidedriver = <table> {\n }\n UnwrapScript = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:788\n config = <table> {\n }\n name = \"Micro Menu\"\n anchors = <table> {\n }\n elapsed = 0\n overlay = BT4BarMicroMenuOverlay {\n }\n SetFrameRef = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:793\n Execute = <function> defined @Interface\\FrameXML\\SecureHandlers.lua:777\n}\nbuttons = <table> {\n 1 = CharacterMicroButton {\n }\n 2 = SpellbookMicroButton {\n }\n 3 = TalentMicroButton {\n }\n 4 = AchievementMicroButton {\n }\n 5 = QuestLogMicroButton {\n }\n 6 = GuildMicroButton {\n }\n 7 = LFDMicroButton {\n }\n 8 = CollectionsMicroButton {\n }\n 9 = EJMicroButton {\n }\n 10 = StoreMicroButton {\n }\n 11 = MainMenuMicroButton {\n }\n}\npad = -2\nnumbuttons = 11\nRows = nil\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to perform arithmetic on local 'Rows' (a nil value)\"\nmath_ceil = <function> defined =[C]:-1\nLBF = nil\nMasque = nil\n",
			["stack"] = "Interface\\AddOns\\Bartender4\\ButtonBar.lua:195: in function `UpdateButtonLayout'\nInterface\\AddOns\\Bartender4\\MicroMenu.lua:123: in function `UpdateButtonLayout'\nInterface\\AddOns\\Bartender4\\MicroMenu.lua:88: in function <Interface\\AddOns\\Bartender4\\MicroMenu.lua:84>\n(tail call): ?\n[C]: in function `UpdateMicroButtons'\nInterface\\FrameXML\\MainMenuBarMicroButtons.lua:689: in function <Interface\\FrameXML\\MainMenuBarMicroButtons.lua:674>",
			["session"] = 268,
			["counter"] = 141,
		}, -- [25]
		{
			["message"] = "AceLocale-3.0-6: Jamba-Quest: Missing entry for 'Share All Quests to all Minions'",
			["time"] = "2018/12/11 19:55:29",
			["stack"] = "Interface\\AddOns\\Jamba-Quest\\JambaQuest.lua:1843: in function <Interface\\AddOns\\Jamba-Quest\\JambaQuest.lua:1843>",
			["session"] = 282,
			["counter"] = 6,
		}, -- [26]
		{
			["message"] = "Frame LimitTool: Unknown script element OnTooltipAddMoney",
			["time"] = "2018/12/25 00:23:12",
			["session"] = 289,
			["counter"] = 3,
		}, -- [27]
		{
			["message"] = "Frame LimitTool: Unknown script element OnTooltipCleared",
			["time"] = "2018/12/25 00:23:12",
			["session"] = 289,
			["counter"] = 3,
		}, -- [28]
		{
			["message"] = "Frame LimitTool: Unknown script element OnTooltipSetDefaultAnchor",
			["time"] = "2018/12/25 00:23:12",
			["session"] = 289,
			["counter"] = 4,
		}, -- [29]
		{
			["message"] = "Frame InviteTime: Unknown script element OnTooltipSetDefaultAnchor",
			["time"] = "2018/12/25 00:27:32",
			["session"] = 289,
			["counter"] = 1,
		}, -- [30]
		{
			["message"] = "Frame InviteTime: Unknown script element OnTooltipAddMoney",
			["time"] = "2018/12/25 00:27:32",
			["session"] = 289,
			["counter"] = 1,
		}, -- [31]
		{
			["message"] = "Frame InviteTime: Unknown script element OnTooltipCleared",
			["time"] = "2018/12/25 00:27:32",
			["session"] = 289,
			["counter"] = 1,
		}, -- [32]
		{
			["message"] = "Interface\\AddOns\\Prat-3.0-r1193      \\modules\\Achievements-Achievements.lua:932: Usage: GetPlayerInfoByGUID(\"playerGUID\")",
			["time"] = "2018/12/21 22:54:14",
			["locals"] = "InCombatSkipped",
			["stack"] = "[C]: in function `GetPlayerInfoByGUID'\nInterface\\AddOns\\Prat-3.0-r1193      \\modules\\Achievements-Achievements.lua:932: in function <Interface\\AddOns\\Prat-3.0\\modules\\Achievements.lua:921>\n[C]: in function `gsub'\nInterface\\AddOns\\Prat-3.0-r1193      \\services\\patterns.lua:159: in function `MatchPatterns'\nInterface\\AddOns\\Prat-3.0-r1193      \\addon\\addon.lua:639: in function <Interface\\AddOns\\Prat-3.0\\addon\\addon.lua:565>\n(tail call): ?\nInterface\\FrameXML\\ChatFrame.lua:2909: in function `ChatFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 289,
			["counter"] = 7,
		}, -- [33]
		{
			["message"] = "Interface\\AddOns\\CanIMogIt\\code.lua:964: Usage: GetItemInfo(itemID (, itemModID)|\"name\"|\"itemlink\")",
			["time"] = "2019/01/13 15:15:47",
			["locals"] = "(*temporary) = nil\n",
			["stack"] = "[C]: in function `GetItemInfo'\nInterface\\AddOns\\CanIMogIt\\code.lua:964: in function `GetSourceID'\nInterface\\AddOns\\CanIMogIt\\code.lua:1013: in function `GetAppearanceID'\nInterface\\AddOns\\CanIMogIt\\database.lua:304: in function `DBAddItem'\nInterface\\AddOns\\CanIMogIt\\database.lua:384: in function `func'\nInterface\\AddOns\\CanIMogIt\\options-Options.lua:183: in function <Interface\\AddOns\\CanIMogIt\\options.lua:172>\n[C]: ?",
			["session"] = 295,
			["counter"] = 1,
		}, -- [34]
		{
			["message"] = "Usage: local taxiNodes = C_TaxiMap.GetAllTaxiNodes(uiMapID)",
			["time"] = "2018/12/19 09:34:02",
			["locals"] = "(*temporary) = \"Usage: local taxiNodes = C_TaxiMap.GetAllTaxiNodes(uiMapID)\"\n",
			["stack"] = "[C]: in function `GetAllTaxiNodes'\nInterface\\AddOns\\WoWPro\\WoWPro_Events.lua:49: in function `TakeTaxi'\nInterface\\AddOns\\WoWPro\\WoWPro_Events.lua:788: in function `?'\nInterface\\AddOns\\WoWPro\\WoWPro_Events.lua:878: in function <Interface\\AddOns\\WoWPro\\WoWPro_Events.lua:830>",
			["session"] = 303,
			["counter"] = 9,
		}, -- [35]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Rogue\\Assassination.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 305,
			["counter"] = 60,
		}, -- [36]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:195: attempt to perform arithmetic on a nil value",
			["time"] = "2019/01/15 19:22:12",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"PARTY_INVITE_REQUEST\"\narg1 = \"Samoanranger\"\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = \"Samoanranger\"\n(*temporary) = 1\n(*temporary) = nil\n(*temporary) = \"Samoanranger\"\n(*temporary) = \"-\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to perform arithmetic on a nil value\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:195: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 306,
			["counter"] = 2,
		}, -- [37]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:230: attempt to call global 'SendAddonMessage' (a nil value)",
			["time"] = "2019/01/15 19:22:17",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"GROUP_ROSTER_UPDATE\"\n(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"StatusCheck\"\n(*temporary) = \"PARTY\"\n(*temporary) = \"attempt to call global 'SendAddonMessage' (a nil value)\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:230: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 306,
			["counter"] = 24,
		}, -- [38]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:112: attempt to call global 'SendAddonMessage' (a nil value)",
			["time"] = "2019/01/15 19:23:57",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"AUTOFOLLOW_END\"\n(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"StoppedFollowingYou\"\n(*temporary) = \"WHISPER\"\n(*temporary) = \"Samoanranger\"\n(*temporary) = \"attempt to call global 'SendAddonMessage' (a nil value)\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:112: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>\n[C]: in function `FollowUnit'\nInterface\\AddOns\\Jamba-Follow\\JambaFollow.lua:1113: in function `FollowTarget'\nInterface\\AddOns\\Jamba-Follow\\JambaFollow.lua:824: in function `?'\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:119: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:119>\n[C]: ?\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 306,
			["counter"] = 329,
		}, -- [39]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:83: attempt to call global 'SendAddonMessage' (a nil value)",
			["time"] = "2019/01/15 19:23:39",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"AUTOFOLLOW_BEGIN\"\narg1 = \"Samoanranger\"\n(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"FollowingYou\"\n(*temporary) = \"WHISPER\"\n(*temporary) = \"Samoanranger\"\n(*temporary) = \"attempt to call global 'SendAddonMessage' (a nil value)\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:83: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>\n[C]: in function `FollowUnit'\nInterface\\FrameXML\\UnitPopup.lua:1756: in function `func'\nInterface\\FrameXML\\UIDropDownMenu.lua:914: in function `UIDropDownMenuButton_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 306,
			["counter"] = 323,
		}, -- [40]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua:346: attempt to call global 'RegisterAddonMessagePrefix' (a nil value)",
			["time"] = "2019/01/15 00:06:42",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"attempt to call global 'RegisterAddonMessagePrefix' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FollowFelankor-2.5.5a [60000].lua:346: in function `FF_OnLoad'\n[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 313,
			["counter"] = 13,
		}, -- [41]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\DeathKnight\\Frost.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [42]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\DeathKnight\\Unholy.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [43]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Hunter\\Marksmanship.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [44]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Hunter\\Survival.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [45]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Mage\\Fire.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [46]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Mage\\Frost.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [47]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Monk\\Mistweaver.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [48]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Priest\\Holy.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 72,
		}, -- [49]
		{
			["message"] = "Error loading Interface\\AddOns\\GS-MultiboxMacros\\GSEMacros\\Priest\\Shadow.lua",
			["time"] = "2018/12/16 00:53:32",
			["session"] = 313,
			["counter"] = 71,
		}, -- [50]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFMount.lua:28: attempt to call field 'GetMountInfo' (a nil value)",
			["time"] = "2019/01/15 00:06:49",
			["locals"] = "FFNewNumMounts = 12\n(for index) = 1\n(for limit) = 12\n(for step) = 1\ni = 1\n(*temporary) = nil\n(*temporary) = 1\n(*temporary) = \"attempt to call field 'GetMountInfo' (a nil value)\"\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFMount.lua:28: in function `FF_UpdateMounts'\nInterface\\AddOns\\FollowFelankor\\FFEvents.lua:38: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 313,
			["counter"] = 2120,
		}, -- [51]
		{
			["message"] = "...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: GetAchievementCriteriaInfo(achievementID, criteriaIndex [,countHidden]), criteria not found",
			["time"] = "2018/12/11 16:53:26",
			["stack"] = "[C]: in function `GetAchievementCriteriaInfo'\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:132: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:90>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:181: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:166>\n...ns\\DataStore_Achievements\\DataStore_Achievements-r47.lua:214: in function <...ns\\DataStore_Achievements\\DataStore_Achievements.lua:209>\n[C]: ?\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:29: in function <...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:25>\n...ore\\libs\\CallbackHandler-1.0\\CallbackHandler-1.0-7.lua:64: in function `Fire'\n...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0-4.lua:120: in function <...\\AddOns\\DataStore\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 313,
			["counter"] = 127,
		}, -- [52]
		{
			["message"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:242: attempt to call global 'SendAddonMessage' (a nil value)",
			["time"] = "2019/01/15 00:06:48",
			["locals"] = "self = FFFrame {\n 0 = <userdata>\n}\nevent = \"GUILD_ROSTER_UPDATE\"\n(*temporary) = nil\n(*temporary) = \"FollowFelankor\"\n(*temporary) = \"StatusCheck\"\n(*temporary) = \"GUILD\"\n(*temporary) = \"attempt to call global 'SendAddonMessage' (a nil value)\"\nFF_Sender = \"(Unknown)\"\nFF_HidePartyInvite = false\nFFAuthorised = \"\"\nFFSentHealthWarning = false\n",
			["stack"] = "Interface\\AddOns\\FollowFelankor\\FFEvents.lua:242: in function <Interface\\AddOns\\FollowFelankor\\FFEvents.lua:22>",
			["session"] = 313,
			["counter"] = 79,
		}, -- [53]
	},
}
