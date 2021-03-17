
DynamicCamDB = {
	["profileKeys"] = {
		["Scootervin - Emerald Dream"] = "Default",
		["Threadcraft - Emerald Dream"] = "Default",
		["Adinbalo - Emerald Dream"] = "Default",
		["Samoaninja - Emerald Dream"] = "Default",
		["Samoansurge - Emerald Dream"] = "Default",
		["Orecraft - Emerald Dream"] = "Default",
		["Weqfqw - Alonsus"] = "Default",
		["Gentodnes - Emerald Dream"] = "Default",
		["Hfishsamoan - Ravenholdt"] = "Default",
		["Samoanbeast - Ravenholdt"] = "Default",
		["Vithun - Emerald Dream"] = "Default",
		["Herbcraft - Emerald Dream"] = "Default",
		["Feerless - Emerald Dream"] = "Default",
		["Samoanrelic - Emerald Dream"] = "Default",
		["Haedshot - Emerald Dream"] = "Default",
		["Farmcraft - Emerald Dream"] = "Default",
		["Dustcraft - Emerald Dream"] = "Default",
		["YourCharName - YourServer"] = "Default",
		["Samoanbeast - Emerald Dream"] = "Default",
		["Tingerce - Emerald Dream"] = "Default",
		["Samoansage - Emerald Dream"] = "KokonutKrew",
		["Samoantank - Tichondrius"] = "Default",
		["Samoanstrap - Tichondrius"] = "Default",
		["Samoanreaper - Emerald Dream"] = "Default",
		["Forgecraft - Emerald Dream"] = "Default",
		["Samoansavage - Emerald Dream"] = "KokonutKrew",
		["Samoanmystic - Emerald Dream"] = "Default",
		["Craudy - Emerald Dream"] = "Default",
		["Samoanruin - Emerald Dream"] = "Default",
		["Samoanranger - Emerald Dream"] = "Default",
		["Brunderan - Emerald Dream"] = "Default",
		["Samoanzero - Emerald Dream"] = "Default",
		["Samoansteel - Emerald Dream"] = "Default",
		["Samoansage - Tichondrius"] = "Default",
		["Mf - Emerald Dream"] = "Default",
		["Samoansneaky - Tichondrius"] = "Default",
		["Aheenan - Emerald Dream"] = "Default",
		["Samoanslayer - Emerald Dream"] = "Default",
		["Samoantitan - Stormrage"] = "KokonutKrew",
	},
	["profiles"] = {
		["Default"] = {
			["reactiveZoom"] = {
				["addIncrements"] = 5,
				["maxZoomTime"] = 2,
				["addIncrementsAlways"] = 0,
			},
			["defaultVersion"] = 1,
			["advanced"] = true,
			["version"] = 2,
			["situations"] = {
				["303"] = {
				},
				["033"] = {
					["cameraActions"] = {
						["zoomMax"] = 39,
						["zoomSetting"] = "fit",
						["zoomFitContinous"] = true,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						[5] = "ENCOUNTER_STOP",
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 1,
					},
				},
				["023"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "fit",
						["zoomFitToggleNameplate"] = true,
					},
					["name"] = "Dungeon (Combat, Boss)",
					["events"] = {
						[5] = "ENCOUNTER_STOP",
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
				},
				["006"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomMax"] = 8,
						["zoomMin"] = 2,
						["transitionTime"] = 1.5,
						["zoomFitToggleNameplate"] = true,
						["zoomFitSpeedMultiplier"] = 1.5,
						["zoomSetting"] = "fit",
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 1,
						["test_cameraOverShoulder"] = 1.2,
					},
				},
				["302"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["zoomValue"] = 7,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
					},
				},
				["005"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["transitionTime"] = 1.1,
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 3.5,
						["zoomSetting"] = "in",
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0.5,
						["test_cameraOverShoulder"] = 1.2,
					},
				},
				["002"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["transitionTime"] = 1.05,
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 3,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.11,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraOverShoulder"] = 2,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
					},
				},
				["034"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["events"] = {
						[5] = "ENCOUNTER_STOP",
					},
				},
				["030"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["102"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
				},
				["050"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["020"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
					["name"] = "Dungeon",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["301"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "in",
						["zoomValue"] = 4,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["060"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["031"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["021"] = {
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
					["name"] = "Dungeon (Outdoors)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["004"] = {
					["cameraActions"] = {
						["zoomMax"] = 10,
						["zoomMin"] = 6,
						["transitionTime"] = 1,
						["zoomValue"] = 6.5,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.17,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.27,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 10,
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.75,
					},
				},
				["001"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 6,
						["transitionTime"] = 1,
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 6,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 1.2,
					},
				},
				["024"] = {
					["cameraActions"] = {
						["zoomMin"] = 10,
						["zoomSetting"] = "fit",
						["zoomFitToggleNameplate"] = true,
					},
					["name"] = "Dungeon (Combat, Trash)",
					["events"] = {
						[5] = "ENCOUNTER_STOP",
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
				},
				["051"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["061"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["300"] = {
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
					["events"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						nil, -- [4]
						nil, -- [5]
						nil, -- [6]
						nil, -- [7]
						"BANKFRAME_OPENED", -- [8]
						"BANKFRAME_CLOSED", -- [9]
						nil, -- [10]
						"MERCHANT_CLOSED", -- [11]
						"TRAINER_SHOW", -- [12]
						"TRAINER_CLOSED", -- [13]
						"SHIPMENT_CRAFTER_OPENED", -- [14]
						"SHIPMENT_CRAFTER_CLOSED", -- [15]
					},
					["cameraCVars"] = {
						["test_cameraTargetFocusInteractEnable"] = 1,
						["test_cameraHeadMovementStrength"] = 1,
						["test_cameraTargetFocusEnemyEnable"] = 1,
						["test_cameraDynamicPitchBaseFovPad"] = 1,
						["test_cameraOverShoulder"] = -1.8,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 1,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
					},
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomMax"] = 28.5,
						["zoomMin"] = 0.5,
						["zoomFitToggleNameplate"] = true,
						["rotateBack"] = true,
						["transitionTime"] = 0.5,
						["zoomFitIncrements"] = 0.5,
						["zoomSetting"] = "range",
						["zoomFitPosition"] = 90,
						["rotate"] = true,
						["rotateSetting"] = "degrees",
						["zoomValue"] = 3.5,
					},
				},
				["200"] = {
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["timeIsMax"] = false,
						["transitionTime"] = 10,
						["zoomSetting"] = "in",
						["yawDegrees"] = 360,
						["rotateSetting"] = "degrees",
						["rotate"] = true,
						["zoomValue"] = 4,
					},
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["extras"] = {
						["hideUI"] = true,
					},
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
				},
				["100"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["transitionTime"] = 1,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "out",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 1.6,
					},
					["condition"] = "return IsMounted();",
				},
				["201"] = {
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["101"] = {
					["cameraActions"] = {
						["zoomMax"] = 20,
						["rotateSpeed"] = 18.0000000000002,
						["zoomSetting"] = "set",
						["rotate"] = true,
						["zoomValue"] = 12,
						["zoomFitToggleNameplate"] = true,
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 2,
						["test_cameraOverShoulder"] = 3.8,
					},
					["extras"] = {
						["hideUI"] = true,
					},
				},
			},
			["defaultCvars"] = {
				["cameraZoomSpeed"] = 39.5,
				["test_cameraHeadMovementDeadZone"] = 0,
				["test_cameraDynamicPitchBaseFovPadFlying"] = 0.22,
				["test_cameraHeadMovementRangeScale"] = 2.5,
				["test_cameraHeadMovementStrength"] = 0.5,
				["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.84,
				["test_cameraDynamicPitchBaseFovPad"] = 1,
				["test_cameraDynamicPitch"] = 1,
				["test_cameraOverShoulder"] = 0.9,
				["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
			},
			["firstRun"] = false,
		},
		["KokonutKrew"] = {
			["defaultCvars"] = {
				["test_cameraDynamicPitchBaseFovPad"] = 0.08,
				["test_cameraHeadMovementRangeScale"] = 4,
				["cameraZoomSpeed"] = 29,
				["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
				["test_cameraDynamicPitchBaseFovPadFlying"] = 0.46,
				["test_cameraOverShoulder"] = 1.1,
				["test_cameraDynamicPitch"] = 1,
				["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
			},
			["version"] = 2,
			["reactiveZoom"] = {
				["enabled"] = true,
			},
			["advanced"] = true,
			["situations"] = {
				["303"] = {
				},
				["103"] = {
					["cameraActions"] = {
						["transitionTime"] = 1,
						["zoomValue"] = 13,
						["zoomSetting"] = "out",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.3,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 0.4,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraOverShoulder"] = 0.800000000000001,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 8.5,
					},
				},
				["023"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomFitPosition"] = 60,
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "fit",
					},
				},
				["006"] = {
					["cameraActions"] = {
						["transitionTime"] = 1.5,
						["zoomMax"] = 14,
						["zoomFitPosition"] = 60,
						["zoomMin"] = 10,
						["zoomFitContinous"] = true,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.5,
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraHeadMovementStrength"] = 0.6,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.31,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 10.5,
					},
				},
				["302"] = {
					["cameraActions"] = {
						["zoomValue"] = 7,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
					},
				},
				["034"] = {
					["enabled"] = false,
				},
				["031"] = {
					["enabled"] = false,
				},
				["002"] = {
					["cameraActions"] = {
						["transitionTime"] = 1.05,
						["zoomValue"] = 3.5,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.11,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraTargetFocusInteractEnable"] = 0,
					},
				},
				["030"] = {
					["priority"] = 120,
					["cameraActions"] = {
						["zoomValue"] = 28,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraDynamicPitch"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
				},
				["020"] = {
					["priority"] = 120,
					["cameraActions"] = {
						["zoomValue"] = 22,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.5,
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraDynamicPitch"] = 1,
					},
				},
				["102"] = {
					["cameraActions"] = {
						["zoomValue"] = 15,
						["zoomSetting"] = "out",
					},
					["cameraCVars"] = {
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraOverShoulder"] = -0.0999999999999997,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
					},
				},
				["050"] = {
					["enabled"] = false,
				},
				["201"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
				},
				["301"] = {
					["enabled"] = false,
				},
				["060"] = {
					["enabled"] = false,
				},
				["101"] = {
					["cameraCVars"] = {
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraOverShoulder"] = 3.8,
						["test_cameraHeadMovementStrength"] = 2,
						["test_cameraTargetFocusEnemyEnable"] = 0,
					},
					["extras"] = {
						["hideUI"] = true,
					},
					["cameraActions"] = {
						["zoomValue"] = 12,
						["rotate"] = true,
						["rotateSpeed"] = 10,
						["zoomSetting"] = "set",
					},
				},
				["021"] = {
					["priority"] = 130,
					["cameraActions"] = {
						["zoomValue"] = 22,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.5,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraOverShoulder"] = 0,
						["test_cameraDynamicPitch"] = 1,
					},
				},
				["004"] = {
					["cameraActions"] = {
						["timeIsMax"] = false,
						["zoomValue"] = 8,
						["zoomMin"] = 10,
						["transitionTime"] = 1.05,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraHeadMovementStrength"] = 0.2,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.66,
						["test_cameraDynamicPitchBaseFovPad"] = 0.4,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraOverShoulder"] = 1,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
					},
				},
				["001"] = {
					["cameraActions"] = {
						["transitionTime"] = 1,
						["zoomValue"] = 6,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
					},
				},
				["024"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomFitPosition"] = 60,
						["zoomMin"] = 10,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "fit",
					},
				},
				["051"] = {
					["enabled"] = false,
				},
				["061"] = {
					["enabled"] = false,
				},
				["300"] = {
					["cameraActions"] = {
						["transitionTime"] = 0.5,
						["zoomSetting"] = "in",
						["zoomValue"] = 3.5,
						["yawDegrees"] = -40,
						["rotateSetting"] = "degrees",
						["rotate"] = true,
						["rotateBack"] = true,
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 1,
						["test_cameraOverShoulder"] = -1.8,
						["test_cameraHeadMovementStrength"] = 1,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 1,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
					},
				},
				["200"] = {
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
					["executeOnInit"] = "this.spells = {227334, 136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016, 193753, 278244};",
					["extras"] = {
						["hideUI"] = true,
					},
					["cameraActions"] = {
						["transitionTime"] = 5,
						["zoomValue"] = 4,
						["yawDegrees"] = 360,
						["rotate"] = true,
						["zoomSetting"] = "in",
						["rotateSetting"] = "degrees",
					},
				},
				["100"] = {
					["cameraActions"] = {
						["transitionTime"] = 1,
						["zoomValue"] = 12,
						["zoomSetting"] = "out",
					},
					["cameraCVars"] = {
						["test_cameraDynamicPitchBaseFovPad"] = 0.3,
						["test_cameraOverShoulder"] = 0.800000000000001,
						["test_cameraHeadMovementStrength"] = 0.4,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraDynamicPitch"] = 1,
						["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraDynamicPitchSmartPivotCutoffDist"] = 8.5,
					},
				},
				["005"] = {
					["cameraActions"] = {
						["transitionTime"] = 1.1,
						["zoomValue"] = 4,
						["zoomSetting"] = "in",
					},
					["cameraCVars"] = {
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraOverShoulder"] = 1.2,
						["test_cameraHeadMovementStrength"] = 0.2,
						["test_cameraTargetFocusEnemyEnable"] = 0,
					},
				},
				["033"] = {
					["enabled"] = false,
				},
			},
			["firstRun"] = false,
		},
	},
}
