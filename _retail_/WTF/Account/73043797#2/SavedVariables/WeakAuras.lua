
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
<<<<<<< Updated upstream
	["displays"] = {
		["KK-Wake of Ashes"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["yOffset"] = -237.000061035156,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["use_showgcd"] = true,
						["use_trackcharge"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 255937,
						["realSpellName"] = "Wake of Ashes",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["duration"] = "1",
						["names"] = {
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = true,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64.0000152587891,
			["load"] = {
				["talent"] = {
					["single"] = 12,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_spellknown"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 255937,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "KK-Wake of Ashes",
			["uid"] = "7An0cpxpn4o",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 64.0000839233399,
			["config"] = {
			},
			["inverse"] = true,
			["desaturate"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = -2.99993896484375,
		},
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1603327879,
=======
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1616916334,
>>>>>>> Stashed changes
	["minimap"] = {
		["minimapPos"] = 126.869819244542,
		["hide"] = false,
	},
<<<<<<< Updated upstream
	["lastUpgrade"] = 1605997356,
	["dbVersion"] = 40,
	["clearOldHistory"] = 30,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -10.9998779296875,
		["yOffset"] = -143.499694824219,
		["height"] = 515,
		["width"] = 875.000061035156,
	},
	["editor_theme"] = "Monokai",
=======
	["lastUpgrade"] = 1616916364,
	["dbVersion"] = 44,
	["registered"] = {
	},
	["displays"] = {
	},
>>>>>>> Stashed changes
}
