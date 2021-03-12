
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
			["defaultCvars"] = {
				["test_cameraHeadMovementRangeScale"] = 2.5,
				["test_cameraHeadMovementStrength"] = 0.5,
				["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.84,
				["cameraZoomSpeed"] = 39.5,
				["test_cameraDynamicPitchBaseFovPad"] = 1,
				["test_cameraDynamicPitch"] = 1,
				["test_cameraDynamicPitchBaseFovPadFlying"] = 0.22,
				["test_cameraOverShoulder"] = 0.9,
				["test_cameraHeadMovementDeadZone"] = 0,
				["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
			},
			["version"] = 2,
			["advanced"] = true,
			["reactiveZoom"] = {
				["addIncrements"] = 5,
				["addIncrementsAlways"] = 0,
				["maxZoomTime"] = 2,
			},
			["defaultVersion"] = 1,
			["situations"] = {
				["303"] = {
				},
				["033"] = {
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 1,
					},
					["events"] = {
						[5] = "ENCOUNTER_STOP",
					},
					["cameraActions"] = {
						["zoomMax"] = 39,
						["zoomSetting"] = "fit",
						["zoomFitContinous"] = true,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["023"] = {
					["name"] = "Dungeon (Combat, Boss)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "fit",
						["zoomFitToggleNameplate"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and IsEncounterInProgress();",
					["events"] = {
						[5] = "ENCOUNTER_STOP",
					},
				},
				["006"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["transitionTime"] = 1.5,
						["zoomMax"] = 8,
						["zoomFitToggleNameplate"] = true,
						["zoomMin"] = 2,
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
				["060"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
				["002"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["transitionTime"] = 1.05,
						["zoomMax"] = 20,
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
				["101"] = {
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 2,
						["test_cameraOverShoulder"] = 3.8,
					},
					["extras"] = {
						["hideUI"] = true,
					},
					["cameraActions"] = {
						["rotateSpeed"] = 18.0000000000002,
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["rotate"] = true,
						["zoomValue"] = 12,
						["zoomFitToggleNameplate"] = true,
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
					["name"] = "Dungeon",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
						["zoomFitToggleNameplate"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\");",
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
				["005"] = {
					["cameraActions"] = {
						["transitionTime"] = 1.1,
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomValue"] = 3.5,
						["zoomSetting"] = "in",
					},
					["cameraCVars"] = {
						["test_cameraHeadMovementStrength"] = 0.5,
						["test_cameraOverShoulder"] = 1.2,
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
				["201"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
					["condition"] = "for k,v in pairs(this.buffs) do \n    if (UnitBuff(\"player\", GetSpellInfo(v))) then\n        return true;\n    end\nend\nreturn false;",
				},
				["004"] = {
					["cameraActions"] = {
						["transitionTime"] = 1,
						["zoomMax"] = 10,
						["zoomValue"] = 6.5,
						["zoomMin"] = 6,
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
						["transitionTime"] = 1,
						["zoomMax"] = 6,
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
					["name"] = "Dungeon (Combat, Trash)",
					["cameraActions"] = {
						["zoomMin"] = 10,
						["zoomSetting"] = "fit",
						["zoomFitToggleNameplate"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and UnitAffectingCombat(\"player\") and not IsEncounterInProgress();",
					["events"] = {
						[5] = "ENCOUNTER_STOP",
					},
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
					["executeOnInit"] = "this.frames = {\"GarrisonCapacitiveDisplayFrame\", \"BankFrame\", \"MerchantFrame\", \"GossipFrame\", \"ClassTrainerFrame\", \"QuestFrame\",}",
					["cameraActions"] = {
						["zoomFitUseCurAsMin"] = true,
						["zoomMax"] = 28.5,
						["zoomMin"] = 0.5,
						["rotateBack"] = true,
						["zoomFitIncrements"] = 0.5,
						["transitionTime"] = 0.5,
						["zoomValue"] = 3.5,
						["zoomFitToggleNameplate"] = true,
						["zoomFitPosition"] = 90,
						["rotateSetting"] = "degrees",
						["rotate"] = true,
						["zoomSetting"] = "range",
					},
					["condition"] = "local shown = false;\nfor k,v in pairs(this.frames) do\n    if (_G[v] and _G[v]:IsShown()) then\n        shown = true;\n    end\nend\nreturn UnitExists(\"npc\") and UnitIsUnit(\"npc\", \"target\") and shown;",
				},
				["200"] = {
					["executeOnEnter"] = "local _, _, _, _, startTime, endTime = UnitCastingInfo(\"player\");\nthis.transitionTime = ((endTime - startTime)/1000) - .25;",
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 0,
					},
					["extras"] = {
						["hideUI"] = true,
					},
					["executeOnInit"] = "this.spells = {136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016};",
					["condition"] = "for k,v in pairs(this.spells) do \n    if (UnitCastingInfo(\"player\") == GetSpellInfo(v)) then \n        return true;\n    end\nend\nreturn false;",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["transitionTime"] = 10,
						["timeIsMax"] = false,
						["zoomValue"] = 4,
						["zoomFitToggleNameplate"] = true,
						["yawDegrees"] = 360,
						["rotate"] = true,
						["rotateSetting"] = "degrees",
						["zoomSetting"] = "in",
					},
				},
				["100"] = {
					["cameraCVars"] = {
						["test_cameraDynamicPitch"] = 1,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraOverShoulder"] = 1.6,
					},
					["condition"] = "return IsMounted();",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["transitionTime"] = 1,
						["zoomFitToggleNameplate"] = true,
						["zoomSetting"] = "out",
					},
				},
				["021"] = {
					["name"] = "Dungeon (Outdoors)",
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomSetting"] = "set",
						["zoomValue"] = 15,
						["zoomFitToggleNameplate"] = true,
					},
					["condition"] = "local isInstance, instanceType = IsInInstance(); return (isInstance and instanceType == \"party\") and IsOutdoors();",
				},
				["031"] = {
					["enabled"] = false,
					["cameraActions"] = {
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
					},
				},
			},
			["firstRun"] = false,
		},
		["KokonutKrew"] = {
			["reactiveZoom"] = {
				["enabled"] = true,
			},
			["advanced"] = true,
			["version"] = 2,
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
						["zoomMax"] = 20,
						["zoomFitToggleNameplate"] = true,
						["zoomFitPosition"] = 60,
						["zoomSetting"] = "fit",
					},
				},
				["006"] = {
					["cameraActions"] = {
						["zoomMax"] = 14,
						["zoomMin"] = 10,
						["transitionTime"] = 1.5,
						["zoomSetting"] = "set",
						["zoomFitPosition"] = 60,
						["zoomFitContinous"] = true,
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
				["101"] = {
					["cameraActions"] = {
						["rotateSpeed"] = 10,
						["zoomValue"] = 12,
						["rotate"] = true,
						["zoomSetting"] = "set",
					},
					["cameraCVars"] = {
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraOverShoulder"] = 3.8,
						["test_cameraHeadMovementStrength"] = 2,
						["test_cameraTargetFocusEnemyEnable"] = 0,
					},
					["extras"] = {
						["hideUI"] = true,
					},
				},
				["034"] = {
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
					["priority"] = 120,
				},
				["020"] = {
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
					["priority"] = 120,
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
				["031"] = {
					["enabled"] = false,
				},
				["021"] = {
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
					["priority"] = 130,
				},
				["004"] = {
					["cameraActions"] = {
						["zoomMin"] = 10,
						["timeIsMax"] = false,
						["zoomValue"] = 8,
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
						["zoomMin"] = 10,
						["zoomFitToggleNameplate"] = true,
						["zoomFitPosition"] = 60,
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
						["rotateBack"] = true,
						["transitionTime"] = 0.5,
						["zoomValue"] = 3.5,
						["yawDegrees"] = -40,
						["rotate"] = true,
						["rotateSetting"] = "degrees",
						["zoomSetting"] = "in",
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
					["executeOnInit"] = "this.spells = {227334, 136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016, 193753, 278244};",
					["cameraActions"] = {
						["transitionTime"] = 5,
						["zoomValue"] = 4,
						["yawDegrees"] = 360,
						["rotate"] = true,
						["zoomSetting"] = "in",
						["rotateSetting"] = "degrees",
					},
					["cameraCVars"] = {
						["test_cameraOverShoulder"] = 0,
						["test_cameraHeadMovementStrength"] = 0,
						["test_cameraTargetFocusEnemyEnable"] = 0,
						["test_cameraTargetFocusInteractEnable"] = 0,
						["test_cameraDynamicPitch"] = 0,
					},
					["extras"] = {
						["hideUI"] = true,
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
				["060"] = {
					["enabled"] = false,
				},
				["033"] = {
					["enabled"] = false,
				},
			},
			["defaultCvars"] = {
				["cameraZoomSpeed"] = 29,
				["test_cameraDynamicPitchBaseFovPadFlying"] = 0.46,
				["test_cameraHeadMovementRangeScale"] = 4,
				["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
				["test_cameraDynamicPitchBaseFovPad"] = 0.08,
				["test_cameraOverShoulder"] = 1.1,
				["test_cameraDynamicPitch"] = 1,
				["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
			},
			["firstRun"] = false,
		},
	},
}
