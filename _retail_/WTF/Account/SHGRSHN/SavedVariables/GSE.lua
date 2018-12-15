
GSEOptions = {
	["HideLoginMessage"] = true,
	["use2"] = true,
	["STANDARDFUNCS"] = "|cff55ddcc",
	["showGSEUsers"] = false,
	["UnfoundSpellIDs"] = {
	},
	["COMMENT"] = "|cff55cc55",
	["use14"] = true,
	["use1"] = true,
	["EQUALS"] = "|cffccddee",
	["use11"] = true,
	["sendDebugOutputToChatWindow"] = false,
	["KEYWORD"] = "|cff88bbdd",
	["debug"] = false,
	["Update2305"] = true,
	["saveAllMacrosLocal"] = true,
	["use6"] = true,
	["CommandColour"] = "|cFF00FF00",
	["CONCAT"] = "|cffcc7777",
	["UNKNOWN"] = "|cffff6666",
	["Updated801"] = true,
	["DisabledSequences"] = {
	},
	["use12"] = true,
	["NUMBER"] = "|cffffaa00",
	["autoCreateMacroStubsGlobal"] = false,
	["sendDebugOutputToDebugOutput"] = false,
	["hideSoundErrors"] = false,
	["ErroneousSpellID"] = {
	},
	["clearUIErrors"] = false,
	["STRING"] = "|cff888888",
	["requireTarget"] = false,
	["AuthorColour"] = "|cFF00D1FF",
	["useTranslator"] = false,
	["TitleColour"] = "|cFFFF0000",
	["hideUIErrors"] = false,
	["initialised"] = true,
	["ActiveSequenceVersions"] = {
	},
	["DebugModules"] = {
		["Translator"] = false,
		["GUI"] = false,
		["Storage"] = false,
		["Editor"] = false,
		["API"] = false,
		["Versions"] = false,
		["Viewer"] = false,
		["Transmission"] = false,
	},
	["INDENT"] = "|cffccaa88",
	["MacroResetModifiers"] = {
		["Alt"] = false,
		["LeftControl"] = false,
		["LeftButton"] = false,
		["LeftAlt"] = false,
		["RighttButton"] = false,
		["RightAlt"] = false,
		["MiddleButton"] = false,
		["Button5"] = false,
		["Button4"] = false,
		["LeftShift"] = false,
		["Control"] = false,
		["RightControl"] = false,
		["Shift"] = true,
		["AnyMod"] = false,
		["RightShift"] = false,
	},
	["filterList"] = {
		["All"] = false,
		["Spec"] = true,
		["Global"] = true,
		["Class"] = true,
	},
	["EmphasisColour"] = "|cFFFFFF00",
	["UseVerboseExportFormat"] = false,
	["WOWSHORTCUTS"] = "|cffddaaff",
	["RealtimeParse"] = false,
	["deleteOrphansOnLogout"] = true,
	["resetOOC"] = true,
	["UnfoundSpells"] = {
	},
	["overflowPersonalMacros"] = false,
	["showGSEoocqueue"] = true,
	["AddInPacks"] = {
		["Samples"] = {
			["Version"] = "2402",
			["Name"] = "Samples",
			["SequenceNames"] = {
				"Assorted Sample Macros", -- [1]
			},
		},
	},
	["DebugPrintModConditionsOnKeyPress"] = false,
	["DefaultDisabledMacroIcon"] = "Interface\\Icons\\INV_MISC_BOOK_08",
	["use13"] = true,
	["NormalColour"] = "|cFFFFFFFF",
	["autoCreateMacroStubsClass"] = false,
	["UseWLMExportFormat"] = true,
	["setDefaultIconQuestionMark"] = true,
	["CreateGlobalButtons"] = false,
	["DefaultImportAction"] = "MERGE",
}
GSELibrary = {
	{
	}, -- [1]
	{
		["BFA_RET"] = {
			["Helplink"] = "kokonutkrew.com/g",
			["Talents"] = "2233211",
			["Help"] = "Single target rotation for retribution paladins in Battle for Azeroth",
			["Default"] = 1,
			["Author"] = "Samoantitan@Stormrage",
			["MacroVersions"] = {
				{
					"/use Avenging Wrath", -- [1]
					"/use Templar's Verdict", -- [2]
					"/use Blade of Justice", -- [3]
					"/use Templar's Verdict", -- [4]
					"/use Judgement", -- [5]
					"/use Templar's Verdict", -- [6]
					"/use Crusader Strike", -- [7]
					["PostMacro"] = {
					},
					["Head"] = true,
					["Neck"] = true,
					["Belt"] = true,
					["Ring1"] = true,
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
					},
					["KeyRelease"] = {
					},
					["Trinket2"] = true,
					["Combat"] = true,
					["Ring2"] = true,
					["PreMacro"] = {
					},
					["Trinket1"] = true,
				}, -- [1]
			},
			["SpecID"] = 70,
			["ManualIntervention"] = true,
		},
		["BFA_RET_AOE"] = {
			["Helplink"] = "kokonutkrew.com/g",
			["Talents"] = "2233211",
			["Help"] = "Area of effect rotation for retribution paladins in Battle for Azeroth",
			["Default"] = 1,
			["SpecID"] = 70,
			["Author"] = "Samoantitan@Stormrage",
			["MacroVersions"] = {
				{
					"/use Avenging Wrath", -- [1]
					"/use Divine Storm", -- [2]
					"/use Wake of Ashes", -- [3]
					"/use Divine Storm", -- [4]
					"/use Blade of Justice", -- [5]
					"/use Divine Storm", -- [6]
					"/use Judgement", -- [7]
					"/use Divine Storm", -- [8]
					"/use Crusader Strike", -- [9]
					["Trinket1"] = true,
					["Head"] = true,
					["Neck"] = true,
					["Belt"] = true,
					["Ring1"] = true,
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
					},
					["KeyRelease"] = {
					},
					["Trinket2"] = true,
					["Combat"] = true,
					["Ring2"] = true,
					["PreMacro"] = {
					},
					["PostMacro"] = {
					},
				}, -- [1]
			},
			["ManualIntervention"] = true,
		},
	}, -- [2]
	{
	}, -- [3]
	{
		["SAM_ASSASSIN"] = {
			["Default"] = 1,
			["Talents"] = "2222212",
			["Help"] = "Sample Assination Macro",
			["Author"] = "TimothyLuke",
			["SpecID"] = 259,
			["MacroVersions"] = {
				{
					"/cast 1329", -- [1]
					"/cast 1943", -- [2]
					"/cast 79140", -- [3]
					"/cast 1329", -- [4]
					"/cast 703", -- [5]
					"/cast 32645", -- [6]
					"/cast 1329", -- [7]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
						"/cast Kingsbane", -- [1]
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
					},
				}, -- [1]
			},
			["Icon"] = "Ability_Rogue_DeadlyBrew",
			["ManualIntervention"] = false,
		},
		["SAM_OUTLAW"] = {
			["Talents"] = "2222231",
			["Default"] = 1,
			["Author"] = "TimothyLuke",
			["SpecID"] = 260,
			["MacroVersions"] = {
				{
					"/cast 8676", -- [1]
					"/cast [combat] 13750", -- [2]
					"/cast 193316", -- [3]
					"/cast 1833", -- [4]
					"/cast 199804", -- [5]
					"/cast 193315", -- [6]
					"/cast 199804", -- [7]
					"/cast 185763", -- [8]
					"/cast 1856", -- [9]
					"/cast 8676", -- [10]
					"/cast 199804", -- [11]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
						"/cast [nostealth,nocombat] 1784", -- [1]
					},
					["PreMacro"] = {
						"/cast [nostealth,nocombat] 1784", -- [1]
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:alt] 13877", -- [2]
					},
				}, -- [1]
			},
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_SUB"] = {
			["Talents"] = "3113213",
			["Default"] = 1,
			["Author"] = "Cymiryc",
			["SpecID"] = 261,
			["MacroVersions"] = {
				{
					"/castsequence [form:1/2/3] 185438", -- [1]
					"/castsequence [form:0] 53, 196819, 53, 53, 53, 196819, 53, 196819, 53, 53, 53, 196819, 53, 196819, 53, 53, 53, 196819", -- [2]
					"/cast 212283", -- [3]
					"/cast 121471", -- [4]
					"/cast 277925", -- [5]
					["LoopLimit"] = 30,
					["Combat"] = true,
					["StepFunction"] = "Priority",
					["KeyRelease"] = {
					},
					["PostMacro"] = {
					},
					["PreMacro"] = {
						"/cast [form:0] 1856", -- [1]
					},
					["KeyPress"] = {
						"/castsequence [mod:ctrl,form:0] reset=1  195452, 185313", -- [1]
						"/cast [mod:shift] Death from Above", -- [2]
					},
				}, -- [1]
			},
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
	}, -- [4]
	{
		["SAM_SHADOW"] = {
			["Help"] = "",
			["Talents"] = "1211221",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/castsequence [nochanneling] reset=target  34914, 15407, null", -- [1]
					"/cast [nochanneling] 8092", -- [2]
					"/castsequence [combat, nochanneling] 228260, 34433", -- [3]
					"/cast [nochanneling] 228260", -- [4]
					"/cast [nochanneling] 32379", -- [5]
					"/cast [nochanneling] 15407", -- [6]
					["PostMacro"] = {
					},
					["StepFunction"] = "Priority",
					["KeyRelease"] = {
						"/cast [combat,nochanneling] 586", -- [1]
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/cast [form:0] 232698", -- [1]
						"/targetenemy [noharm][dead]", -- [2]
						"/castsequence [mod:alt] 589, 34914", -- [3]
					},
				}, -- [1]
			},
			["Author"] = "TimothyLuke",
			["SpecID"] = 258,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_DISC"] = {
			["Talents"] = "1231212",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/cast [@player, nocombat, nochanneling] 17", -- [1]
					"/cast [combat, nochanneling] 34433", -- [2]
					"/cast [combat, nochanneling][@focus, exists, noharm, nodead][@player] 17", -- [3]
					"/castsequence [nochanneling] reset=target  589, 47540, 47540", -- [4]
					"/cast [combat, nochanneling] 585", -- [5]
					["Trinket1"] = true,
					["StepFunction"] = "Priority",
					["Combat"] = true,
					["Trinket2"] = true,
					["PostMacro"] = {
					},
					["KeyPress"] = {
						"/target [@focustarget, harm, nodead]", -- [1]
						"/targetenemy [noharm, dead]", -- [2]
						"/startattack", -- [3]
					},
					["PreMacro"] = {
					},
					["KeyRelease"] = {
					},
				}, -- [1]
			},
			["Author"] = "TimothyLuke",
			["SpecID"] = 256,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
	}, -- [5]
	{
	}, -- [6]
	{
		["SAM_ELEMENTAL"] = {
			["Help"] = "A simple Elemental Macro",
			["Talents"] = "2211121",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/castsequence [nopet:Fire Elemental] 198067", -- [1]
					"/castsequence [nochanneling] reset=8  8042", -- [2]
					"/castsequence [nochanneling] 188389, 188196, 188196, 188196", -- [3]
					"/cast [combat] 51505", -- [4]
					"/cast [nochanneling] Thunderstorn", -- [5]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/petattack [@target,harm]", -- [2]
					},
					["PreMacro"] = {
					},
					["KeyRelease"] = {
						"/cast [combat] Stormkeeper", -- [1]
					},
				}, -- [1]
			},
			["Author"] = "TimothyLuke",
			["SpecID"] = 262,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_ENHANCEMENT"] = {
			["Talents"] = "2211121",
			["Default"] = 1,
			["Help"] = "Sample Elemental Macro",
			["SpecID"] = 262,
			["Author"] = "Lloskka",
			["MacroVersions"] = {
				{
					"/cast Stormstrike", -- [1]
					"/cast Lava Lash", -- [2]
					"/cast Crash Lightning", -- [3]
					"/cast Flametongue", -- [4]
					"/cast Rockbiter", -- [5]
					"/use 13", -- [6]
					"/use 14", -- [7]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["PostMacro"] = {
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
					},
				}, -- [1]
			},
			["ManualIntervention"] = false,
		},
	}, -- [7]
	[0] = {
	},
	[10] = {
	},
	[12] = {
	},
	[11] = {
		["SAM_BALANCE"] = {
			["Talents"] = "1323321",
			["Default"] = 1,
			["Author"] = "John Metz",
			["SpecID"] = 102,
			["MacroVersions"] = {
				{
					"/castsequence 8921, 93402, 190984, 190984, 190984, 190984, 190984", -- [1]
					"/cast 78674", -- [2]
					"/cast 202360", -- [3]
					"/cast [mod:alt] 194153", -- [4]
					"/cast [talent 5/3] 194223", -- [5]
					["LoopLimit"] = "",
					["PostMacro"] = {
					},
					["KeyPress"] = {
					},
					["StepFunction"] = "Sequential",
					["PreMacro"] = {
					},
					["KeyRelease"] = {
					},
				}, -- [1]
				{
					"/castsequence [nomod] reset=combat  8921, 93402, 190984, 190984, 190984, 190984, 78674, 190984, 190984, 190984, 190984, 78674", -- [1]
					"/cast 202360", -- [2]
					"/cast [mod:alt] 194153", -- [3]
					["PostMacro"] = {
					},
					["KeyPress"] = {
					},
					["KeyRelease"] = {
					},
					["PreMacro"] = {
					},
					["StepFunction"] = "Sequential",
				}, -- [2]
			},
			["ManualIntervention"] = false,
		},
		["SAM_GUARDIAN"] = {
			["Help"] = "Press Shift for Maul, Ctrl for Frenzied Regeneration, and Alt for Moonfire.",
			["Talents"] = "2332213",
			["Default"] = 1,
			["SpecID"] = 104,
			["MacroVersions"] = {
				{
					"/targetenemy [noharm][dead]", -- [1]
					"/cast Thrash", -- [2]
					"/castsequence Ironfur, Ironfur", -- [3]
					"/castsequence Swipe, Swipe, Swipe, Swipe, Moonfire", -- [4]
					"/castsequence Ironfur, Ironfur", -- [5]
					"/cast Mangle", -- [6]
					"/castsequence Ironfur, Ironfur", -- [7]
					"/cast Rage of the Sleeper", -- [8]
					["StepFunction"] = "Priority",
					["KeyRelease"] = {
					},
					["Trinket2"] = true,
					["PostMacro"] = {
					},
					["KeyPress"] = {
						"/cast [@player, nostance:1] Bear Form", -- [1]
						"/cast [mod:shift] Maul", -- [2]
						"/cast [mod:ctrl] Frenzied Regeneration", -- [3]
						"/cast [mod:alt] Wild Charge", -- [4]
					},
					["PreMacro"] = {
					},
					["Trinket1"] = true,
				}, -- [1]
			},
			["Author"] = "TimothyLuke",
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_FERAL"] = {
			["Talents"] = "2,3,2,1,2,2,1",
			["Default"] = 1,
			["SpecID"] = 103,
			["MacroVersions"] = {
				{
					"/cast Rake", -- [1]
					"/cast [combat] Incarnation: King of the Jungle", -- [2]
					"/cast [combat] Shred", -- [3]
					"/cast [combat] Rip", -- [4]
					"/cast [combat] Shred", -- [5]
					"/cast [combat] Shred", -- [6]
					"/cast [combat] Shred", -- [7]
					"/cast [combat] Shred", -- [8]
					"/cast [combat] Ferocious Bite", -- [9]
					"/cast [combat] Rake", -- [10]
					"/cast [combat] Shred", -- [11]
					"/cast [combat] Shred", -- [12]
					"/cast [combat] Shred", -- [13]
					"/cast [combat] Shred", -- [14]
					"/cast [combat] Ferocious Bite", -- [15]
					"/cast [combat] Rake", -- [16]
					"/cast [combat] Shred", -- [17]
					"/cast [combat] Shred", -- [18]
					"/cast [combat] Rip", -- [19]
					"/cast [combat] Shred", -- [20]
					"/cast [combat] Shred", -- [21]
					"/cast [combat] Shred", -- [22]
					"/cast [combat] Rake", -- [23]
					"/cast [combat] Ferocious Bite", -- [24]
					"/cast [combat] Shred", -- [25]
					"/cast [combat] Shred", -- [26]
					"/cast [combat] Shred", -- [27]
					"/cast [combat] Shred", -- [28]
					"/cast [combat] Shred", -- [29]
					"/cast [combat] Ferocious Bite", -- [30]
					"/cast [combat] Rip", -- [31]
					"/cast [combat] Shred", -- [32]
					"/cast [combat] Tiger's Fury", -- [33]
					"/cast [combat] Feral Frenzy", -- [34]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/cast [noform:2] Cat Form", -- [1]
						"/cast [nostealth,nocombat] Prowl", -- [2]
					},
					["PreMacro"] = {
					},
					["KeyRelease"] = {
					},
				}, -- [1]
			},
			["Author"] = "Ed",
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
	},
}
