
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["login_squelch_time"] = 10,
	["minimap"] = {
		["minimapPos"] = 126.869819244542,
		["hide"] = false,
	},
	["history"] = {
	},
	["clearOldHistory"] = 30,
	["registered"] = {
	},
	["displays"] = {
		["KK-Wake of Ashes"] = {
			["glow"] = true,
			["authorOptions"] = {
			},
			["yOffset"] = -237.000061035156,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["internalVersion"] = 23,
			["glowXOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["text_text"] = "%s",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["rotateText"] = "NONE",
					["anchorXOffset"] = 0,
					["text_fontSize"] = 12,
				}, -- [1]
			},
			["height"] = 64.0000152587891,
			["load"] = {
				["talent"] = {
					["single"] = 12,
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
			["glowFrequency"] = 0.25,
			["anchorFrameType"] = "SCREEN",
			["glowLines"] = 8,
			["glowType"] = "buttonOverlay",
			["glowThickness"] = 1,
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
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Wake of Ashes",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 255937,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowLength"] = 10,
			["regionType"] = "icon",
			["xOffset"] = -2.99993896484375,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\WaterDrop.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["uid"] = "6bWtpfi9SRu",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["glowScale"] = 1,
			["id"] = "KK-Wake of Ashes",
			["zoom"] = 0,
			["alpha"] = 1,
			["glowYOffset"] = 0,
			["width"] = 64.0000839233399,
			["config"] = {
			},
			["inverse"] = true,
			["keepAspectRatio"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glowBorder"] = false,
		},
	},
	["frame"] = {
		["xOffset"] = -10.9998779296875,
		["width"] = 875.000061035156,
		["height"] = 515,
		["yOffset"] = -143.499694824219,
	},
	["editor_theme"] = "Monokai",
}
