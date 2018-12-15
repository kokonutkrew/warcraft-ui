
GSEOptions = {
	["HideLoginMessage"] = false,
	["use2"] = false,
	["STANDARDFUNCS"] = "|cff55ddcc",
	["showGSEUsers"] = false,
	["UnfoundSpellIDs"] = {
	},
	["COMMENT"] = "|cff55cc55",
	["use14"] = false,
	["use1"] = false,
	["EQUALS"] = "|cffccddee",
	["use11"] = false,
	["sendDebugOutputToChatWindow"] = false,
	["KEYWORD"] = "|cff88bbdd",
	["debug"] = false,
	["Update2305"] = true,
	["saveAllMacrosLocal"] = true,
	["use6"] = false,
	["CommandColour"] = "|cFF00FF00",
	["CONCAT"] = "|cffcc7777",
	["UNKNOWN"] = "|cffff6666",
	["Updated801"] = true,
	["DisabledSequences"] = {
	},
	["use12"] = false,
	["NUMBER"] = "|cffffaa00",
	["useTranslator"] = false,
	["sendDebugOutputToDebugOutput"] = false,
	["hideSoundErrors"] = false,
	["ErroneousSpellID"] = {
	},
	["requireTarget"] = false,
	["STRING"] = "|cff888888",
	["clearUIErrors"] = false,
	["AuthorColour"] = "|cFF00D1FF",
	["autoCreateMacroStubsGlobal"] = false,
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
	["resetOOC"] = true,
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
		["Shift"] = false,
		["RightControl"] = false,
		["AnyMod"] = false,
		["RightShift"] = false,
	},
	["filterList"] = {
		["Class"] = true,
		["All"] = false,
		["Global"] = true,
		["Spec"] = true,
	},
	["EmphasisColour"] = "|cFFFFFF00",
	["UseVerboseExportFormat"] = false,
	["WOWSHORTCUTS"] = "|cffddaaff",
	["RealtimeParse"] = false,
	["deleteOrphansOnLogout"] = false,
	["INDENT"] = "|cffccaa88",
	["UnfoundSpells"] = {
		["Carve"] = true,
		["Fury of the Eagle"] = true,
		["Misdirection\""] = true,
		["Call Pet 1t"] = true,
		["Roar of Sacrifice"] = true,
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
	["use13"] = false,
	["NormalColour"] = "|cFFFFFFFF",
	["autoCreateMacroStubsClass"] = true,
	["UseWLMExportFormat"] = true,
	["setDefaultIconQuestionMark"] = true,
	["CreateGlobalButtons"] = false,
	["DefaultImportAction"] = "MERGE",
}
GSELibrary = {
	[3] = {
		["SAM_BMAOE"] = {
			["Talents"] = "3123311",
			["Mythic"] = 2,
			["MacroVersions"] = {
				{
					"/cast 34026", -- [1]
					"/castsequence 2643, 34026, 2643, 19577", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 19574", -- [6]
					"/cast 34026", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 2643, 34026, 2643, 19577", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19577", -- [19]
					"/cast 19574", -- [20]
					["LoopLimit"] = "2",
					["PostMacro"] = {
					},
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["KeyRelease"] = {
						"/cast 131894", -- [1]
					},
					["Ring2"] = false,
					["Trinket2"] = false,
					["Trinket1"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] 883", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["StepFunction"] = "Sequential",
				}, -- [1]
				{
					"/cast 34026", -- [1]
					"/castsequence 2643, 34026, 2643, 19577", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 19574", -- [6]
					"/cast 34026", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 2643, 34026, 2643, 19577", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19574", -- [19]
					["LoopLimit"] = "2",
					["PostMacro"] = {
					},
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["Trinket2"] = false,
					["Ring2"] = false,
					["StepFunction"] = "Sequential",
					["Trinket1"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] Call Pet 1t", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
					},
					["KeyRelease"] = {
						"/cast 131894", -- [1]
					},
				}, -- [2]
				{
					"/cast 5116", -- [1]
					"/cast 34026", -- [2]
					"/castsequence 2643, 34026, 2643, 19577", -- [3]
					"/cast 34026", -- [4]
					"/cast 131894", -- [5]
					"/cast 217200", -- [6]
					"/cast 19574", -- [7]
					"/cast 34026", -- [8]
					"/cast 120679", -- [9]
					"/cast 193530", -- [10]
					"/cast 5116", -- [11]
					"/cast 34026", -- [12]
					"/castsequence 2643, 34026, 2643, 19577", -- [13]
					"/cast 217200", -- [14]
					"/use 13", -- [15]
					"/use 14", -- [16]
					"/cast 34026", -- [17]
					"/cast 120679", -- [18]
					"/cast 193530", -- [19]
					"/cast 131894", -- [20]
					"/cast 19577", -- [21]
					"/cast 19574", -- [22]
					["LoopLimit"] = "2",
					["PostMacro"] = {
					},
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["Ring2"] = false,
					["KeyRelease"] = {
						"/cast 131894", -- [1]
					},
					["StepFunction"] = "Sequential",
					["Trinket1"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] Call Pet 1t", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["Trinket2"] = false,
				}, -- [3]
			},
			["Heroic"] = 2,
			["ManualIntervention"] = false,
			["Dungeon"] = 2,
			["Party"] = 2,
			["Help"] = "Beta AoE",
			["PVP"] = 3,
			["SpecID"] = 253,
			["Raid"] = 2,
			["Default"] = 1,
			["Author"] = "Sir Ewing",
		},
		["SAM_SURVIVAL"] = {
			["Talents"] = "1211232",
			["Default"] = 1,
			["SpecID"] = 255,
			["MacroVersions"] = {
				{
					"/cast 269751", -- [1]
					"/cast 186270", -- [2]
					"/cast [@player, nochanneling] 187698", -- [3]
					"/cast [@player, nochanneling] 187650", -- [4]
					"/cast 186289", -- [5]
					"/cast [nochanneling] 186270", -- [6]
					"/cast [nochanneling] Carve", -- [7]
					"/cast [nochanneling] 259489", -- [8]
					"/cast [nochanneling] 266779", -- [9]
					"/cast 259491", -- [10]
					"/cast 270335", -- [11]
					"/cast [combat] Fury of the Eagle", -- [12]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
						"/startattack", -- [1]
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
					},
				}, -- [1]
			},
			["Author"] = "TimothyLuke",
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_BMST"] = {
			["Talents"] = "3123311",
			["Author"] = "Sir Ewing",
			["Heroic"] = 2,
			["MacroVersions"] = {
				{
					"/cast 34026", -- [1]
					"/castsequence 193455, 34026, 193455, 19577", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 34026", -- [6]
					"/cast 19574", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 193455, 34026, 193455, 19577", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19577", -- [19]
					"/cast 19574", -- [20]
					["LoopLimit"] = "2",
					["Trinket1"] = false,
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] 883; [@pet,dead,nochanneling] 136", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["Ring2"] = false,
					["StepFunction"] = "Sequential",
					["PostMacro"] = {
					},
					["Trinket2"] = false,
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["KeyRelease"] = {
					},
				}, -- [1]
				{
					"/cast 34026", -- [1]
					"/castsequence 193455, 34026, 193455", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 19574", -- [6]
					"/cast 34026", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 193455, 34026, 193455", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19574", -- [19]
					["LoopLimit"] = "2",
					["Trinket1"] = false,
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["KeyRelease"] = {
					},
					["Ring2"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] 883; [@pet,dead,nochanneling] 136", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PostMacro"] = {
					},
					["Trinket2"] = false,
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
					},
					["StepFunction"] = "Sequential",
				}, -- [2]
				{
					"/cast 5116", -- [1]
					"/cast 34026", -- [2]
					"/castsequence 193455, 34026, 193455, 19577", -- [3]
					"/cast 34026", -- [4]
					"/cast 131894", -- [5]
					"/cast 217200", -- [6]
					"/cast 19574", -- [7]
					"/cast 34026", -- [8]
					"/cast 120679", -- [9]
					"/cast 193530", -- [10]
					"/cast 5116", -- [11]
					"/cast 34026", -- [12]
					"/castsequence 193455, 34026, 193455, 19577", -- [13]
					"/cast 217200", -- [14]
					"/use 13", -- [15]
					"/use 14", -- [16]
					"/cast 34026", -- [17]
					"/cast 120679", -- [18]
					"/cast 193530", -- [19]
					"/cast 131894", -- [20]
					"/cast 19577", -- [21]
					"/cast 19574", -- [22]
					["LoopLimit"] = "2",
					["Trinket1"] = false,
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["KeyRelease"] = {
					},
					["Ring2"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] 883; [@pet,dead,nochanneling] 136", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PostMacro"] = {
					},
					["Trinket2"] = false,
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["StepFunction"] = "Sequential",
				}, -- [3]
			},
			["SpecID"] = 253,
			["ManualIntervention"] = false,
			["Dungeon"] = 2,
			["Party"] = 2,
			["Help"] = "Beta single target",
			["Raid"] = 2,
			["Default"] = 1,
			["Arena"] = 3,
			["Mythic"] = 2,
			["PVP"] = 3,
		},
		["SAM_MM"] = {
			["Talents"] = "3,3,2,3,2,1,",
			["Default"] = 1,
			["SpecID"] = 254,
			["MacroVersions"] = {
				{
					"/cast [nochanneling] 19434", -- [1]
					"/cast [nochanneling] 131894", -- [2]
					"/cast [nochanneling] 185358", -- [3]
					"/cast [nochanneling] 212431", -- [4]
					"/cast [nochanneling] 56641", -- [5]
					"/cast [nochanneling] 257044", -- [6]
					"/cast [nochanneling] 257620", -- [7]
					"/cast [nochanneling] 186387", -- [8]
					["LoopLimit"] = 2,
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
					},
					["PreMacro"] = {
						"/cast [nochanneling] 193526", -- [1]
						"/cast [nochanneling] 131894", -- [2]
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/startattack", -- [2]
					},
				}, -- [1]
			},
			["Author"] = "Webber",
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
	},
	[0] = {
	},
}
