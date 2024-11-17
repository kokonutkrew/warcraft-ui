
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["displays"] = {
<<<<<<< Updated upstream
		["KK-Wake of Ashes"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["yOffset"] = -237.000061035156,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["use_showgcd"] = true,
						["use_trackcharge"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Wake of Ashes",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 255937,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
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
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
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
					["glowThickness"] = 1,
					["glowScale"] = 1,
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
				["zoneIds"] = "",
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
			["cooldown"] = true,
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
			["xOffset"] = -2.99993896484375,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "KK-Wake of Ashes",
			["uid"] = "TDk9VtorXRk",
			["alpha"] = 1,
			["width"] = 64.0000839233399,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = true,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["lastArchiveClear"] = 1604718654,
=======
	},
	["lastArchiveClear"] = 1616350278,
>>>>>>> Stashed changes
	["minimap"] = {
		["minimapPos"] = 126.869819244542,
		["hide"] = false,
	},
<<<<<<< Updated upstream
	["lastUpgrade"] = 1615545641,
	["dbVersion"] = 44,
	["login_squelch_time"] = 10,
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
	["lastUpgrade"] = 1618586628,
	["dbVersion"] = 45,
	["registered"] = {
	},
	["login_squelch_time"] = 10,
>>>>>>> Stashed changes
}
