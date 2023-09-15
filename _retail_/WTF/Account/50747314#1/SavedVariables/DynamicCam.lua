
DynamicCamDB = {
	["profileKeys"] = {
		["Samoanslayer - Emerald Dream"] = "KokonutKrew",
		["Seawings - Emerald Dream"] = "Default",
		["Threadcraft - Emerald Dream"] = "KokonutKrew",
		["Samoanbeast - Emerald Dream"] = "Default",
		["Tygrrlilly - Emerald Dream"] = "Default",
		["Kkranger - Emerald Dream"] = "Default",
		["Samoansurge - Emerald Dream"] = "Default",
		["Samoanranger - Emerald Dream"] = "Default",
		["Orecraft - Emerald Dream"] = "Default",
		["Adeadmineskk - Emerald Dream"] = "Default",
		["Forgecraft - Emerald Dream"] = "Default",
		["Sermaxim - Emerald Dream"] = "Default",
		["Kokonutkiing - Emerald Dream"] = "Default",
		["Samoansavage - Emerald Dream"] = "KokonutKrew",
		["Kyliegurl - Emerald Dream"] = "Default",
		["Azushina - Emerald Dream"] = "Default",
		["Antoruskk - Emerald Dream"] = "Default",
		["Samoantitan - Emerald Dream"] = "Default",
		["Farmcraft - Emerald Dream"] = "Default",
		["Samoansage - Emerald Dream"] = "KokonutKrew",
		["Herbcraft - Emerald Dream"] = "Default",
		["Samoanrelic - Stormrage"] = "Default",
		["Anightholdkk - Emerald Dream"] = "Default",
		["Kokonutkween - Emerald Dream"] = "Default",
		["Niniconys - Emerald Dream"] = "Default",
		["Urorincar - Emerald Dream"] = "Default",
		["Mf - Emerald Dream"] = "Default",
		["Mp - Emerald Dream"] = "Default",
		["Plvl - Emerald Dream"] = "Default",
		["Kkmystic - Emerald Dream"] = "Default",
		["Samoantitan - Stormrage"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["version"] = 3,
			["situations"] = {
				["303"] = {
					["enabled"] = true,
					["hideUI"] = {
						["fadeOpacity"] = 0,
						["hideEntireUI"] = true,
						["enabled"] = true,
					},
					["rotation"] = {
						["enabled"] = true,
						["rotationSpeed"] = 3,
						["rotateBack"] = false,
					},
				},
				["033"] = {
					["enabled"] = true,
				},
				["023"] = {
					["enabled"] = true,
				},
				["006"] = {
					["enabled"] = true,
				},
				["302"] = {
					["enabled"] = true,
				},
				["060"] = {
					["enabled"] = true,
				},
				["201"] = {
					["enabled"] = true,
				},
				["100"] = {
					["enabled"] = true,
				},
			},
			["standardSettings"] = {
				["reactiveZoomAddIncrements"] = 3,
				["reactiveZoomIncAddDifference"] = 4,
				["shoulderOffsetZoomUpperBound"] = 8,
				["cvars"] = {
					["cameraDistanceMaxZoomFactor"] = 2.6,
					["test_cameraDynamicPitchBaseFovPad"] = 0.35,
				},
				["reactiveZoomEnabled"] = false,
				["reactiveZoomMaxZoomTime"] = 0.25,
			},
			["firstRun"] = false,
		},
		["KokonutKrew"] = {
			["version"] = 3,
			["situations"] = {
				["303"] = {
					["enabled"] = true,
					["rotation"] = {
						["enabled"] = true,
						["rotationSpeed"] = 3,
						["rotateBack"] = false,
					},
					["hideUI"] = {
						["enabled"] = true,
						["hideEntireUI"] = true,
						["fadeOpacity"] = 0,
					},
				},
				["103"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "out",
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 13,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.3,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraHeadMovementStrength"] = 0.4,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraOverShoulder"] = 0.800000000000001,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 8.5,
						},
					},
				},
				["023"] = {
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "fit",
						["zoomMax"] = 20,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
					},
				},
				["006"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomMax"] = 14,
						["zoomTransitionTime"] = 1.5,
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 10,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.5,
							["test_cameraOverShoulder"] = 1.2,
							["test_cameraHeadMovementStrength"] = 0.6,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.31,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 10.5,
						},
					},
				},
				["302"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 7,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 1,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
						},
					},
				},
				["002"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTransitionTime"] = 1.05,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 7,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.11,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraOverShoulder"] = 1.2,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
						},
					},
				},
				["102"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "out",
						["zoomValue"] = 15,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = -0.0999999999999997,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
						},
					},
				},
				["005"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomValue"] = 4,
						["zoomTransitionTime"] = 1.1,
						["zoomTimeIsMax"] = true,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = 1.2,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraHeadMovementStrength"] = 0.2,
							["test_cameraTargetFocusEnemyEnable"] = 0,
						},
					},
				},
				["101"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 12,
					},
					["hideUI"] = {
						["enabled"] = true,
						["hideEntireUI"] = true,
						["fadeOpacity"] = 0,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = 3.8,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraHeadMovementStrength"] = 2,
							["test_cameraTargetFocusEnemyEnable"] = 0,
						},
					},
					["rotation"] = {
						["enabled"] = true,
						["rotationTime"] = 0.75,
						["rotateBackTime"] = 0.75,
						["rotateBack"] = false,
					},
				},
				["021"] = {
					["enabled"] = true,
					["priority"] = 130,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 22,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.5,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraOverShoulder"] = 0,
						},
					},
				},
				["001"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 6,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraOverShoulder"] = 1.2,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
						},
					},
				},
				["024"] = {
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "fit",
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomMin"] = 10,
					},
				},
				["030"] = {
					["enabled"] = true,
					["priority"] = 120,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 28,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraOverShoulder"] = 0,
							["test_cameraDynamicPitch"] = 0,
						},
					},
				},
				["004"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTransitionTime"] = 1.05,
						["zoomMin"] = 10,
						["zoomValue"] = 8,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraHeadMovementStrength"] = 0.2,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitchBaseFovPad"] = 0.4,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
							["test_cameraOverShoulder"] = 1,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0.66,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
						},
					},
				},
				["300"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 1,
							["test_cameraOverShoulder"] = -1.8,
							["test_cameraHeadMovementStrength"] = 1,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitchBaseFovPadFlying"] = 0.66,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 1,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
						},
					},
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomValue"] = 3.5,
						["zoomTransitionTime"] = 0.5,
						["zoomTimeIsMax"] = true,
					},
					["rotation"] = {
						["enabled"] = true,
						["rotateBackTime"] = 0.5,
						["rotationType"] = "degrees",
						["rotationSpeed"] = 20,
						["rotationTime"] = 0.5,
						["yawDegrees"] = -40,
					},
				},
				["200"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "in",
						["zoomValue"] = 4,
						["zoomTransitionTime"] = 5,
						["zoomTimeIsMax"] = true,
					},
					["hideUI"] = {
						["enabled"] = true,
						["hideEntireUI"] = true,
						["fadeOpacity"] = 0,
					},
					["executeOnInit"] = "this.spells = {227334, 136508, 189838, 54406, 94719, 556, 168487, 168499, 171253, 50977, 8690, 222695, 171253, 224869, 53140, 3565, 32271, 193759, 3562, 3567, 33690, 35715, 32272, 49358, 176248, 3561, 49359, 3566, 88342, 88344, 3563, 132627, 132621, 176242, 192085, 192084, 216016, 193753, 278244};",
					["rotation"] = {
						["enabled"] = true,
						["rotateBackTime"] = 5,
						["rotationType"] = "degrees",
						["rotationSpeed"] = 20,
						["yawDegrees"] = 360,
						["rotationTime"] = 5,
						["rotateBack"] = false,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraOverShoulder"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitch"] = 0,
							["test_cameraTargetFocusInteractEnable"] = 0,
						},
					},
				},
				["100"] = {
					["enabled"] = true,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomType"] = "out",
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 12,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.3,
							["test_cameraOverShoulder"] = 0.800000000000001,
							["test_cameraHeadMovementStrength"] = 0.4,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraTargetFocusInteractEnable"] = 0,
							["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
							["test_cameraDynamicPitchSmartPivotCutoffDist"] = 8.5,
						},
					},
				},
				["020"] = {
					["enabled"] = true,
					["priority"] = 120,
					["viewZoom"] = {
						["enabled"] = true,
						["zoomTransitionTime"] = 0.75,
						["zoomTimeIsMax"] = true,
						["zoomValue"] = 22,
					},
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitchBaseFovPad"] = 0.5,
							["test_cameraOverShoulder"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraDynamicPitch"] = 1,
							["test_cameraTargetFocusInteractEnable"] = 0,
						},
					},
				},
				["201"] = {
					["enabled"] = true,
					["situationSettings"] = {
						["cvars"] = {
							["test_cameraDynamicPitch"] = 0,
							["test_cameraHeadMovementStrength"] = 0,
							["test_cameraTargetFocusEnemyEnable"] = 0,
							["test_cameraOverShoulder"] = 0,
							["test_cameraTargetFocusInteractEnable"] = 0,
						},
					},
				},
			},
			["zoomRestoreSetting"] = "never",
			["standardSettings"] = {
				["reactiveZoomAddIncrements"] = 3,
				["cvars"] = {
					["test_cameraHeadMovementRangeScale"] = 4,
					["test_cameraDynamicPitchBaseFovPadDownScale"] = 0,
					["cameraZoomSpeed"] = 29,
					["test_cameraDynamicPitchBaseFovPad"] = 0.08,
					["test_cameraDynamicPitch"] = 1,
					["test_cameraDynamicPitchSmartPivotCutoffDist"] = 0,
					["cameraDistanceMaxZoomFactor"] = 2.6,
					["test_cameraOverShoulder"] = 1.1,
					["test_cameraDynamicPitchBaseFovPadFlying"] = 0.46,
				},
				["reactiveZoomEnabled"] = false,
				["reactiveZoomIncAddDifference"] = 4,
				["reactiveZoomMaxZoomTime"] = 0.25,
				["shoulderOffsetZoomUpperBound"] = 8,
			},
			["firstRun"] = false,
		},
	},
}
minZoomValues = {
}
