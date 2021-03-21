
ElvDB = {
	["profileKeys"] = {
		["Samoanslayer - Emerald Dream"] = "KokonutKrew (Global)",
		["Threadcraft - Emerald Dream"] = "KokonutKrew (Global)",
		["Samoansavage - Stormrage"] = "KokonutKrew (Global)",
		["Samoansavage - Emerald Dream"] = "KokonutKrew (Global)",
		["Samoansage - Emerald Dream"] = "KokonutKrew (Global)",
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Emerald Dream"] = {
			["Samoanslayer"] = "WARRIOR",
			["Samoansavage"] = "ROGUE",
			["Threadcraft"] = "MAGE",
			["Samoansage"] = "SHAMAN",
		},
		["Stormrage"] = {
			["Samoansavage"] = "DRUID",
		},
	},
	["profiles"] = {
		["KokonutKrew (Global)"] = {
			["databars"] = {
				["threat"] = {
					["width"] = 472,
					["height"] = 24,
				},
				["honor"] = {
					["mouseover"] = true,
				},
				["reputation"] = {
					["enable"] = true,
					["mouseover"] = true,
				},
				["experience"] = {
					["mouseover"] = true,
				},
				["azerite"] = {
					["enable"] = false,
				},
				["colors"] = {
					["experience"] = {
						["a"] = 0.800000011920929,
					},
				},
			},
			["general"] = {
				["interruptAnnounce"] = "EMOTE",
				["backdropfadecolor"] = {
					["a"] = 0.800000011920929,
					["r"] = 0.05882352941176471,
					["g"] = 0.05882352941176471,
					["b"] = 0.05882352941176471,
				},
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 0,
					["g"] = 0.4392147064208984,
					["b"] = 0.8666647672653198,
				},
				["font"] = "Expressway",
				["fontSize"] = 14,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationFont"] = "Expressway",
					["size"] = 220,
				},
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 400,
				["autoTrackReputation"] = true,
				["totems"] = {
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
				["backdropcolor"] = {
					["a"] = 1,
					["r"] = 0.1019607843137255,
					["g"] = 0.1019607843137255,
					["b"] = 0.1019607843137255,
				},
				["talkingHeadFrameScale"] = 1,
				["bonusObjectivePosition"] = "AUTO",
				["fontStyle"] = "NONE",
				["bordercolor"] = {
					["a"] = 1,
				},
			},
			["bags"] = {
				["itemLevelFont"] = "Expressway",
				["bagSize"] = 42,
				["itemLevelCustomColorEnable"] = true,
				["junkIcon"] = true,
				["bankSize"] = 42,
				["countFontSize"] = 14,
				["bagWidth"] = 474,
				["split"] = {
					["player"] = true,
					["bag3"] = true,
					["bagSpacing"] = 7,
					["bag4"] = true,
					["bag1"] = true,
					["bag2"] = true,
				},
				["itemLevelFontSize"] = 14,
				["scrapIcon"] = true,
				["countFont"] = "Expressway",
				["bankWidth"] = 474,
				["junkDesaturate"] = true,
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 14,
					["size"] = 40,
					["countFont"] = "Expressway",
					["timeFontSize"] = 14,
					["timeFont"] = "Expressway",
				},
				["debuffs"] = {
					["countFontSize"] = 14,
					["size"] = 40,
					["countFont"] = "Expressway",
					["timeFontSize"] = 14,
					["timeFont"] = "Expressway",
				},
			},
			["dbConverted"] = 12.23,
			["layoutSet"] = "healer",
			["movers"] = {
				["ElvAB_8"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,332",
				["ThreatBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-249",
				["PetAB"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,202,373",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-6",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-198,-5",
				["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUF_Focus,BOTTOMLEFT,0,-1",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,490,4",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-150,300",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-104",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,150,300",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["ElvUIBagMover"] = "BOTTOMRIGHT,RightChatPanel,BOTTOMRIGHT,0,27",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,100",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,243",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,60",
				["ElvAB_10"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,400",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,RIGHT,-106,-166",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,97",
				["PowerBarContainerMover"] = "CENTER,ElvUIParent,TOP,0,-76",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,269",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,43",
				["ShiftAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,58",
				["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,27",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,507",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,-1,-120",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,140",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-1,191",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-68,-190",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-1,373",
				["ElvAB_4"] = "RIGHT,ElvUIParent,RIGHT,-4,0",
				["ElvAB_9"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,366",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-37",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-1,139",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-86,-306",
				["VehicleLeaveButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,300",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-279,4",
				["DurabilityFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,141,-4",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-127,-332",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-86,-253",
				["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-82",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,342,100",
				["HonorBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-85,-319",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,264",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-342,472",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,RIGHT,-106,-166",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-342,140",
				["ElvAB_7"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,298",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,269",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-19",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-198,-175",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
			},
			["convertPages"] = true,
			["tooltip"] = {
				["fontSize"] = 14,
				["headerFontSize"] = 14,
				["cursorAnchor"] = true,
				["cursorAnchorType"] = "ANCHOR_CURSOR_RIGHT",
				["cursorAnchorX"] = 128,
				["healthBar"] = {
					["font"] = "Expressway",
					["fontOutline"] = "NONE",
					["height"] = 12,
					["fontSize"] = 12,
				},
				["alwaysShowRealm"] = true,
				["textFontSize"] = 14,
				["font"] = "Expressway",
				["cursorAnchorY"] = -128,
				["smallTextFontSize"] = 14,
			},
			["layoutSetting"] = "healer",
			["unitframe"] = {
				["smoothbars"] = true,
				["units"] = {
					["pet"] = {
						["debuffs"] = {
							["enable"] = true,
						},
						["castbar"] = {
							["iconSize"] = 32,
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 14,
						},
						["disableTargetGlow"] = false,
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["anchorPoint"] = "TOPRIGHT",
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = 2,
							["enable"] = false,
							["yOffset"] = 0,
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = -16,
							["maxDuration"] = 300,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["height"] = 60,
						["buffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 16,
							["maxDuration"] = 300,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["castbar"] = {
							["width"] = 270,
						},
						["width"] = 270,
					},
					["target"] = {
						["orientation"] = "LEFT",
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 405,
							["height"] = 40,
						},
						["height"] = 82,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
						},
					},
					["raid"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 2,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["rdebuffs"] = {
							["xOffset"] = 30,
							["yOffset"] = 25,
							["font"] = "Expressway",
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["width"] = 92,
						["roleIcon"] = {
							["attachTo"] = "InfoPanel",
							["xOffset"] = 0,
							["size"] = 12,
						},
					},
					["party"] = {
						["height"] = 74,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
						["power"] = {
							["height"] = 13,
						},
						["width"] = 231,
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["healPrediction"] = {
							["showOverAbsorbs"] = false,
						},
						["disableMouseoverGlow"] = true,
						["height"] = 82,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
						},
						["classbar"] = {
							["height"] = 14,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 405,
							["height"] = 40,
						},
					},
				},
				["colors"] = {
					["healthclass"] = true,
					["borderColor"] = {
						["a"] = 1,
					},
					["castClassColor"] = true,
					["auraBarBuff"] = {
						["r"] = 0.7764688730239868,
						["g"] = 0.6078417897224426,
						["b"] = 0.427450031042099,
					},
				},
				["font"] = "Expressway",
			},
			["datatexts"] = {
				["font"] = "Expressway",
				["fontSize"] = 14,
				["panels"] = {
					["LeftChatDataPanel"] = {
						[3] = "QuickJoin",
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 10,
					["visibility"] = "[petbattle] hide; show",
					["buttonSpacing"] = 1,
					["buttonSize"] = 50,
					["buttons"] = 8,
				},
				["font"] = "Expressway",
				["bar6"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 6,
					["buttonsPerRow"] = 6,
				},
				["bar1"] = {
					["buttonSpacing"] = 1,
					["buttonSize"] = 50,
					["buttons"] = 8,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
				["bar2"] = {
					["enabled"] = true,
					["visibility"] = "[petbattle] hide; show",
					["buttonSpacing"] = 1,
					["buttons"] = 9,
					["buttonSize"] = 38,
				},
				["bar5"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
					["buttons"] = 12,
					["buttonsPerRow"] = 12,
				},
				["bar4"] = {
					["enabled"] = false,
					["visibility"] = "[petbattle] hide; show",
				},
			},
			["nameplates"] = {
				["units"] = {
					["ENEMY_PLAYER"] = {
						["portrait"] = {
							["position"] = "LEFT",
							["xOffset"] = 0,
							["classicon"] = false,
							["enable"] = true,
							["yOffset"] = 0,
						},
						["health"] = {
							["text"] = {
								["format"] = "",
							},
						},
					},
					["ENEMY_NPC"] = {
						["health"] = {
							["text"] = {
								["format"] = "",
							},
						},
					},
				},
				["font"] = "Expressway",
				["colors"] = {
					["threat"] = {
						["goodTransition"] = {
							["r"] = 0.85,
							["g"] = 0.76,
							["b"] = 0.36,
						},
						["goodColor"] = {
							["r"] = 0.29,
							["g"] = 0.67,
							["b"] = 0.3,
						},
						["badColor"] = {
							["r"] = 0.78,
							["g"] = 0.25,
							["b"] = 0.25,
						},
					},
					["reactions"] = {
						["good"] = {
							["r"] = 0.3,
							["g"] = 0.67,
							["b"] = 0.29,
						},
						["neutral"] = {
							["g"] = 0.76,
						},
					},
					["selection"] = {
						nil, -- [1]
						{
							["r"] = 0.85,
							["g"] = 0.76,
							["b"] = 0.36,
						}, -- [2]
						{
							["r"] = 0.29,
							["g"] = 0.67,
							["b"] = 0.3,
						}, -- [3]
						[0] = {
							["r"] = 0.78,
							["g"] = 0.25,
							["b"] = 0.25,
						},
					},
				},
			},
			["chat"] = {
				["shortChannels"] = false,
				["tabFontOutline"] = "OUTLINE",
				["tabSelectorColor"] = {
					["r"] = 0,
					["g"] = 0.4392147064208984,
					["b"] = 0.8666647672653198,
				},
				["panelWidth"] = 472,
				["panelHeight"] = 236,
				["panelBackdrop"] = "HIDEBOTH",
				["timeStampFormat"] = "%H:%M ",
				["fontSize"] = 14,
				["tabFont"] = "Arial Narrow",
				["inactivityTimer"] = 30,
				["font"] = "Arial Narrow",
				["copyChatLines"] = true,
			},
		},
		["Default"] = {
			["convertPages"] = true,
			["dbConverted"] = 12.23,
			["actionbar"] = {
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttons"] = 6,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
				["bar5"] = {
					["enabled"] = false,
					["buttonsPerRow"] = 12,
					["buttons"] = 12,
				},
			},
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["serverID"] = {
		[162] = {
			["Emerald Dream"] = true,
		},
		[60] = {
			["Stormrage"] = true,
		},
	},
	["faction"] = {
		["Emerald Dream"] = {
			["Samoanslayer"] = "Alliance",
			["Samoansavage"] = "Alliance",
			["Threadcraft"] = "Alliance",
			["Samoansage"] = "Alliance",
		},
		["Stormrage"] = {
			["Samoansavage"] = "Alliance",
		},
	},
	["gold"] = {
		["Emerald Dream"] = {
			["Samoanslayer"] = 24943663,
			["Samoansavage"] = 102548549,
			["Threadcraft"] = 2639733,
			["Samoansage"] = 113442582,
		},
		["Stormrage"] = {
			["Samoansavage"] = 123964735,
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_NonTarget"] = {
				},
				["ElvUI_Explosives"] = {
				},
				["ElvUI_Target"] = {
				},
				["ElvUI_Boss"] = {
				},
			},
		},
		["general"] = {
			["AceGUI"] = {
				["height"] = 666.37,
				["width"] = 892.44,
			},
			["allowDistributor"] = true,
			["UIScale"] = 0.6,
		},
		["ignoreIncompatible"] = true,
		["datatexts"] = {
			["settings"] = {
				["Currencies"] = {
					["tooltipData"] = {
						[7] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[11] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[14] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[23] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[19] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
					},
				},
			},
		},
		["profileCopy"] = {
			["selected"] = "KokonutKrew (Global)",
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Samoanslayer - Emerald Dream"] = "KokonutKrew (Private)",
		["Threadcraft - Emerald Dream"] = "KokonutKrew (Private)",
		["Samoansavage - Stormrage"] = "KokonutKrew (Private)",
		["Samoansavage - Emerald Dream"] = "KokonutKrew (Private)",
		["Samoansage - Emerald Dream"] = "KokonutKrew (Private)",
	},
	["profiles"] = {
		["Threadcraft - Emerald Dream"] = {
			["install_complete"] = 12.23,
		},
		["Samoansavage - Stormrage"] = {
			["install_complete"] = 12.23,
		},
		["KokonutKrew (Private)"] = {
			["general"] = {
				["minimap"] = {
					["enable"] = false,
				},
				["dmgfont"] = "2002",
				["namefont"] = "2002",
			},
			["unitframe"] = {
				["enable"] = false,
				["disabledBlizzardFrames"] = {
					["player"] = false,
					["raid"] = false,
					["focus"] = false,
					["target"] = false,
					["arena"] = false,
					["party"] = false,
					["boss"] = false,
				},
			},
			["actionbar"] = {
				["enable"] = false,
			},
			["theme"] = "class",
			["install_complete"] = 12.23,
		},
		["Samoansavage - Emerald Dream"] = {
			["theme"] = "class",
			["install_complete"] = 12.23,
		},
		["Samoansage - Emerald Dream"] = {
			["install_complete"] = 12.23,
		},
	},
}
