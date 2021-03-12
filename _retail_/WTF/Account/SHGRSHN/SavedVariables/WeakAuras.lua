
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["login_squelch_time"] = 10,
	["mousePointerFrame"] = {
		["xOffset"] = -612.999755859375,
		["yOffset"] = -813.49951171875,
	},
	["displays"] = {
		["Cast-Circle Lag (Channel)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				0.34901960784314, -- [2]
				0.015686274509804, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = true,
						["use_remaining"] = false,
						["duration"] = "1",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["remaining_operator"] = "<",
						["event"] = "Cast",
						["names"] = {
						},
						["castType"] = "channel",
						["unit"] = "player",
						["spellIds"] = {
						},
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["customDuration"] = "function()\n    if not aura_env.last or aura_env.last < GetTime() - 1 then\n        \n        local _,_,_, world = GetNetStats()\n        local _, _, _, startDuration, endDuration = UnitChannelInfo(\"player\")\n        local currentTimer\n        \n        if startDuration and endDuration then\n            currentTimer = endDuration - startDuration\n        else\n            currentTimer = 0\n        end\n        \n        aura_env.lat_max = currentTimer\n        aura_env.lat_world = world\n    end\n    \n    return aura_env.lat_world, aura_env.lat_max,true\nend",
						["type"] = "custom",
						["custom_type"] = "status",
						["check"] = "update",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[2]\nend",
				["activeTriggerMode"] = 3,
			},
			["endAngle"] = 360,
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.config[\"CastBar\"] == 1 then\n        \n        if aura_env.config[\"ShowOnKeyPress\"] then\n            \n            if aura_env.config[\"KeyOption\"] == 1 then\n                if IsLeftAltKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            elseif  aura_env.config[\"KeyOption\"] == 2 then\n                if IsLeftShiftKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            else\n                if IsLeftControlKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            end\n        end \n    end\nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["scalex"] = 1,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Ultimate Mouse Cursor",
			["backgroundColor"] = {
				0.50196078431373, -- [1]
				0.50196078431373, -- [2]
				0.50196078431373, -- [3]
				0.5, -- [4]
			},
			["crop_x"] = 0.41,
			["xOffset"] = 0,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 90,
			["crop_y"] = 0.41,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["uid"] = "ThNN3qTq1eW",
			["startAngle"] = 0,
			["textureWrapMode"] = "CLAMP",
			["width"] = 90,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mouse Cursor Dot",
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["useAdjustededMin"] = false,
			["selfPoint"] = "CENTER",
			["slantMode"] = "INSIDE",
			["anchorFrameParent"] = false,
			["tocversion"] = 90002,
			["smoothProgress"] = false,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.13",
			["compress"] = false,
			["id"] = "Cast-Circle Lag (Channel)",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if aura_env.config[\"CastBar\"] ~= 1 then\n    aura_env.region:Color(255,255,255,0)\n    aura_env.region:SetBackgroundColor (128,128,128,0)\nelse\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        aura_env.region:Color(255,255,255,0)\n        aura_env.region:SetBackgroundColor (128,128,128,0)\n    end    \nend\n\nif aura_env.config[\"HideDefaultCastBar\"] then\n    CastingBarFrame:UnregisterAllEvents()   \nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura69",
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "~=",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["Inscrutable Quantum Device Available"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 179350,
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["spellName"] = 0,
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["names"] = {
						},
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
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
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
					["text_font"] = "Expressway",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "9oSo)oHa3wr",
			["zoom"] = 0,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Available",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 48,
			["frameStrata"] = 3,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["Deeper Daggers"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"341550", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["combineMode"] = "showHighest",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["ownOnly"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["zoneIds"] = "",
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_level"] = false,
				["level_operator"] = "==",
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["level"] = "60",
				["spellknown"] = 341549,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "uMEkDZDc4TQ",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Deeper Daggers",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Envenom - Bar"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["parent"] = "Rogue Core - Luxthos",
			["preferToUpdate"] = false,
			["yOffset"] = -78,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"32645", -- [1]
						},
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["powertype"] = 6,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 25771,
						["realSpellName"] = "Forbearance",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_genericShowOn"] = true,
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["ownOnly"] = true,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["spark"] = false,
			["barColor"] = {
				0.18039215686275, -- [1]
				0.89803921568627, -- [2]
				0.25490196078431, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
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
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_visible"] = false,
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 5,
			["sparkOffsetX"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_spec"] = true,
				["spellknown"] = 32645,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["sound"] = 1,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.02,0.82,0.17,0.34,0.98,0.34)",
					["do_custom"] = true,
				},
			},
			["internalVersion"] = 44,
			["selfPoint"] = "CENTER",
			["uid"] = "8XHSq3cer0U",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["id"] = "Envenom - Bar",
			["zoom"] = 0,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["auto"] = true,
			["frameStrata"] = 5,
			["width"] = 296,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["version"] = 46,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
		},
		["Inscrutable Quantum Device Mastery"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"330380", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_abbreviate"] = false,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_gcd_channel"] = false,
					["text_text_format_p_decimal_precision"] = 1,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "Mastery",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = -5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "48WM0a(EnH9",
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Mastery",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 48,
			["frameStrata"] = 3,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Inscrutable Quantum Device Execute"] = {
			["iconSource"] = 0,
			["color"] = {
				0.8078431372549, -- [1]
				0.019607843137255, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["use_health"] = false,
						["unevent"] = "auto",
						["use_unit"] = true,
						["percenthealth"] = "20",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"330366", -- [1]
						},
						["useExactSpellId"] = true,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["unit"] = "target",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "item",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["itemName"] = 179350,
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["event"] = "Cooldown Progress (Item)",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				{
					["trigger"] = {
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["use_health"] = false,
						["unevent"] = "auto",
						["use_unit"] = true,
						["percenthealth"] = "0",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"330366", -- [1]
						},
						["useExactSpellId"] = true,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = ">",
						["unit"] = "target",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "EXE",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = 6,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "CUTE",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = -5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["displayIcon"] = 2000857,
			["uid"] = "W5N8vC)NpyX",
			["frameStrata"] = 4,
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Execute",
			["width"] = 48,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Inscrutable Quantum Device",
		},
		["Echoing Reprimand - 1"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "1",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks then\n        aura_env.region:SetDurationInfo(aura_env.state.stacks, 1, true)\n    end\nend",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = true,
						["auranames"] = {
							"323547", -- [1]
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["stacks"] = "1",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["stacksOperator"] = "==",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Power",
						["ownOnly"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["powertype"] = 4,
						["subeventPrefix"] = "SPELL",
						["use_power"] = false,
						["use_unit"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_track"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["powertype"] = 4,
						["use_powertype"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = false,
			["parent"] = "Rogue Core - Luxthos",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["customTextUpdate"] = "update",
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%c",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowThickness"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.98039215686275, -- [1]
						0.89411764705882, -- [2]
						0.47058823529412, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glow_anchor"] = "bar",
					["glowLength"] = 5,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 20,
			["adjustedMin"] = "0",
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "mxFq80)NQcy",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["version"] = 46,
			["id"] = "Echoing Reprimand - 1",
			["icon_side"] = "RIGHT",
			["selfPoint"] = "CENTER",
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.81,0.04,0.03,0.83,0.08,0.04)",
					["do_custom"] = false,
				},
			},
			["alpha"] = 1,
			["width"] = 56,
			["semver"] = "2.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = -120,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -5,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">=",
								["value"] = "1",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.07843137254902, -- [1]
								0.45490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["iconSource"] = -1,
		},
		["Blind"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 2094,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Blind",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 2094,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Blind",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "hBwTazAy0fL",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Broadside"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -85,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"193356", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							193356, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["names"] = {
							"Broadside", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "LUXTHOS_EVENT",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 1\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Health",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 2\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["events"] = "LUXTHOS_EVENT",
						["unit"] = "player",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] and t[4] end",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "CMB",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 20,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 315508,
				["zoneIds"] = "",
			},
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -125,
			["useTooltip"] = true,
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.40000003576279, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [3]
			},
			["regionType"] = "icon",
			["parent"] = "Rogue Core - Luxthos",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["uid"] = "uJtVWkrjzdV",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["authorOptions"] = {
				{
					["width"] = 2,
					["type"] = "select",
					["default"] = 1,
					["name"] = "Roll the Bones: Display",
					["useDesc"] = true,
					["key"] = "dropdown",
					["values"] = {
						"Description", -- [1]
						"Cooldown", -- [2]
						"Nothing", -- [3]
					},
					["desc"] = "Select what you want to show on your Roll the Bones buff.",
				}, -- [1]
			},
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Broadside",
			["zoom"] = 0.33,
			["alpha"] = 1,
			["width"] = 46,
			["desc"] = "",
			["config"] = {
				["dropdown"] = 1,
			},
			["inverse"] = false,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["displayIcon"] = 1393014,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = false,
		},
		["Inscrutable Quantum Device Crit"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"330366", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_abbreviate"] = false,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_gcd_channel"] = false,
					["text_text_format_p_decimal_precision"] = 1,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "Crit",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = -5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "g5)uq8GiBP(",
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Crit",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 48,
			["frameStrata"] = 3,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Echoing Reprimand"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"323547", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 323547,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Echoing Reprimand",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Echoing Reprimand",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "55ZgJBx1Na8",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMRIGHT",
		},
		["Combo Point - 6 (Rogue)"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["parent"] = "Rogue Core - Luxthos",
			["adjustedMax"] = "6",
			["adjustedMin"] = "5",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Power",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 4,
						["spellIds"] = {
						},
						["use_power"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["spark"] = false,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["semver"] = "2.0.7",
			["version"] = 46,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
			},
			["height"] = 20,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["single"] = 8,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["authorOptions"] = {
			},
			["iconSource"] = -1,
			["selfPoint"] = "CENTER",
			["preferToUpdate"] = false,
			["uid"] = "NETM7x)0fAq",
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["id"] = "Combo Point - 6 (Rogue)",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["frameStrata"] = 5,
			["width"] = 46,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 125,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "6",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["sound"] = 1,
					["do_custom"] = false,
					["sound_channel"] = "SFX",
				},
				["finish"] = {
					["sound"] = 1,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.89,0.21,0.06,0.91,0.25,0.07)",
					["do_custom"] = false,
				},
			},
		},
		["Combo Point - 5 (Rogue)"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = 120,
			["preferToUpdate"] = false,
			["adjustedMin"] = "4",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Power",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 4,
						["spellIds"] = {
						},
						["use_power"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["selfPoint"] = "CENTER",
			["semver"] = "2.0.7",
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
			},
			["height"] = 20,
			["sparkOffsetX"] = 0,
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["adjustedMax"] = "5",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["sound"] = 1,
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.89,0.21,0.06,0.91,0.25,0.07)",
					["do_custom"] = false,
				},
			},
			["version"] = 46,
			["uid"] = "zTSn1ssGIoX",
			["config"] = {
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 5,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Combo Point - 5 (Rogue)",
			["spark"] = false,
			["alpha"] = 1,
			["width"] = 56,
			["parent"] = "Rogue Core - Luxthos",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -45,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "4",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RobotBlip.ogg",
								["sound_channel"] = "SFX",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\RobotBlip.ogg",
								["sound_channel"] = "SFX",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "6",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = false,
		},
		["BG - Arathi Basin Cap Announcer"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/4nJyhahP7/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.currtime = 0\naura_env.threecheck = false\naura_env.twocheck = false\naura_env.onecheck = false\naura_env.zone = nil\naura_env.chattype = \"INSTANCE_CHAT\" -- INSTANCE_CHAT for bg, otherwise SAY, RAID, EMOTE",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["custom"] = "function()\n    if aura_env.currtime > 0 then\n        local timetocap = 10 - math.floor(GetTime() - aura_env.currtime)\n        if timetocap > 0 then\n            \n            -- this could probably be done smarter\n            --print(timetocap, aura_env.threecheck)\n            -- setting zone inside to save resources\n            function returntext(num) \n                return \"Capping \"..aura_env.zone..\" in \"..num..\"...\"\n            end\n            \n            \n            if timetocap == 3 and not aura_env.threecheck then\n                aura_env.threecheck = true\n                SendChatMessage(returntext(3), aura_env.chattype);\n            elseif timetocap == 2 and not aura_env.twocheck then\n                aura_env.twocheck = true\n                SendChatMessage(returntext(2), aura_env.chattype);\n            elseif timetocap == 1 and not aura_env.onecheck then\n                aura_env.onecheck = true\n                SendChatMessage(returntext(1), aura_env.chattype);\n                return true\n            end\n        end\n    end    \nend",
						["event"] = "Health",
						["unit"] = "player",
						["customDuration"] = "function()\n    return 10, aura_env.startTime\nend",
						["spellIds"] = {
						},
						["events"] = "UNIT_SPELLCAST_START:player, UNIT_SPELLCAST_INTERRUPTED:player",
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["custom_type"] = "status",
						["custom_hide"] = "timed",
						["customVariables"] = "{\n    duration = true\n}",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return true\nend\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom"] = "function(e, ...)\n    local function switchcase(zone)\n        if zone == \"STABLES\" then\n            return \"stables\"\n        elseif zone == \"LUMBER MILL\" then\n            return \"lumber mill\"\n        elseif zone == \"GOLD MINE\" then\n            return \"mine\"\n        elseif zone == \"BLACKSMITH\" then\n            return \"blacksmith\"\n        elseif zone == \"FARM\"  then\n            return \"farm\"\n        end\n    end\n    \n    local function reset_auraenvs()\n        aura_env.currtime = 0\n        aura_env.threecheck = false\n        aura_env.twocheck = false\n        aura_env.onecheck = false\n        aura_env.zone = nil\n    end\n    \n    \n    spellid = select(3, ...)\n    if spellid == 21651 then\n        -- Start capping\n        if e == \"UNIT_SPELLCAST_START\" then\n            aura_env.currtime = GetTime()\n            aura_env.zone = string.upper(GetSubZoneText())\n            -- Capping interrupted\n        elseif e == \"UNIT_SPELLCAST_INTERRUPTED\" then\n            if aura_env.threecheck then\n                SendChatMessage(\"Capping \"..aura_env.zone..\" interrupted\", aura_env.chattype);\n            end\n            reset_auraenvs()\n            -- Capping succeeded\n        elseif e == \"UNIT_SPELLCAST_SUCCEEDED\" then\n            reset_auraenvs()\n        end\n        \n        -- currently capping but something happened to a flag (Potentially the one you're capping)\n    elseif (e == \"CHAT_MSG_BG_SYSTEM_HORDE\" or e == \"CHAT_MSG_BG_SYSTEM_ALLIANCE\") then\n        if aura_env.currtime > 0 and aura_env.zone ~= nil then\n            local bgmsg = select(1, ...)\n            local formatted_zone = switchcase(aura_env.zone)\n            \n            -- Something happened to the base you were capping (Meaning either it got assaulted by a teammate, an enemy or it changed to enemy faction)\n            if string.find(bgmsg, formatted_zone) ~= nil then\n                reset_auraenvs()\n            end\n        end\n    end\nend\n\n\n",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "UNIT_SPELLCAST_START:player, UNIT_SPELLCAST_INTERRUPTED:player, UNIT_SPELLCAST_SUCCEEDED:player, CHAT_MSG_BG_SYSTEM_ALLIANCE, CHAT_MSG_BG_SYSTEM_HORDE, CHAT_MSG_BG_SYSTEM_NEUTRAL",
						["custom_type"] = "event",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desc"] = "Announces in BG when you're about to cap so your shitty teammates can defend you.",
			["font"] = "Friz Quadrata TT",
			["version"] = 2,
			["subRegions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
						["raid"] = true,
					},
				},
				["zone"] = "Arathi Basin",
				["class"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["size"] = {
					["single"] = "pvp",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_size"] = true,
				["zoneIds"] = "",
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["shadowYOffset"] = -1,
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["automaticWidth"] = "Auto",
			["semver"] = "1.0.1",
			["justify"] = "LEFT",
			["tocversion"] = 11304,
			["id"] = "BG - Arathi Basin Cap Announcer",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "FAub4XgI3DG",
			["selfPoint"] = "BOTTOM",
			["authorOptions"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Inscrutable Quantum Device CD"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 179350,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["remaining"] = "20",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = true,
						["remaining_operator"] = "<=",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["spellName"] = 0,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = true,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_t_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_t_format"] = "timed",
					["text_text_format_p_time_format"] = 0,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 24,
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_dynamic_threshold"] = 60,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "N6jOWYWsXqi",
			["zoom"] = 0,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device CD",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 48,
			["frameStrata"] = 5,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Slice and Dice (Subtlety)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"315496", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Slice and Dice",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 315496,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 315496,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 75,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<=",
								["value"] = "11",
								["variable"] = "expirationTime",
							}, -- [2]
						},
						["value"] = "11",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Slice and Dice (Subtlety)",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "s4YregE158Z",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Buried Treasure"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -85,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"199600", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							199600, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["names"] = {
							"Buried Treasure", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "LUXTHOS_EVENT",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 1\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "LUXTHOS_EVENT",
						["check"] = "event",
						["custom_type"] = "status",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 2\nend",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] and t[4] end",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ERG",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 20,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 315508,
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Rogue Core - Luxthos",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["xOffset"] = 125,
			["cooldown"] = true,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useTooltip"] = true,
			["desaturate"] = false,
			["uid"] = "(XxoTalRI)r",
			["alpha"] = 1,
			["zoom"] = 0.33,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Buried Treasure",
			["auto"] = true,
			["frameStrata"] = 5,
			["width"] = 46,
			["authorOptions"] = {
				{
					["width"] = 2,
					["type"] = "select",
					["default"] = 1,
					["name"] = "Roll the Bones: Display",
					["useDesc"] = true,
					["key"] = "dropdown",
					["values"] = {
						"Description", -- [1]
						"Cooldown", -- [2]
						"Nothing", -- [3]
					},
					["desc"] = "Select what you want to show on your Roll the Bones buff.",
				}, -- [1]
			},
			["config"] = {
				["dropdown"] = 1,
			},
			["inverse"] = false,
			["desc"] = "",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.40000003576279, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Death from Above (Outlaw)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 70.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 269513,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Death from Above",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 3,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 20,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["spellknown"] = 269513,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -130,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = -38.5,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Death from Above (Outlaw)",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "UoNiKD(n0yo",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Fleshcraft (Rogue)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"324631", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 324631,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Fleshcraft",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 326526,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Fleshcraft (Rogue)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "zQAit14Dnc5",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["PVP: AB Callout Count Enemies"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function()\n    local time_cur = GetTime()\n    if (time_cur - aura_env.TIMER) > 3 then\n        aura_env.TIMER = time_cur\n        RequestBattlefieldScoreData()\n    end\n    return true\nend",
						["custom_type"] = "status",
						["check"] = "update",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom"] = "function(event)\n    local not_in_combat = not InCombatLockdown()\n    if event == \"UPDATE_BATTLEFIELD_SCORE\" then\n        if not_in_combat then\n            aura_env.UPDATE_MACRO()\n        else\n            aura_env.REQUEST_MACRO_UPDATE = true\n        end\n    elseif event == \"PLAYER_REGEN_ENABLED\" then\n        if aura_env.REQUEST_MACRO_UPDATE and not_in_combat then\n            aura_env.REQUEST_MACRO_UPDATE = false\n            aura_env.UPDATE_MACRO()\n        end\n    end\n    \nend",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "PLAYER_REGEN_ENABLED, UPDATE_BATTLEFIELD_SCORE",
						["custom_type"] = "event",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom"] = "function()\n    if aura_env.CHECK_RANGE and UnitExists(\"target\") and not UnitIsDeadOrGhost(\"target\") then\n        local target_in_range = aura_env.GET_RANGE(\"target\")\n        if target_in_range then\n            aura_env.RANGE_CNT = aura_env.RANGE_CNT + 1\n        end\n    end\nend",
						["custom_type"] = "event",
						["events"] = "PLAYER_TARGET_CHANGED",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "CNT",
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
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
			},
			["height"] = 32,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["zone"] = "Arathi Basin",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.TIMER = 0\naura_env.TIMER_CD = 0\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Button\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:SetAttribute(\"type\",\"macro\")\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    \n    b:SetAttribute('macrotext', string.format(''))\n    r.btn_ann = b\nend\n\naura_env.GET_RANGE = function(unit)\n    local checked_range,in_range,range\n    for ii=1,#aura_env.LIST_ITEMS_SHORT do\n        in_range = IsItemInRange(aura_env.LIST_ITEMS_SHORT[ii].iid,unit)\n        if in_range then\n            range = aura_env.LIST_ITEMS_SHORT[ii].range\n            break\n        end\n    end\n    \n    in_range = CheckInteractDistance(unit,3)\n    if in_range then\n        if range then range = min(range,10)\n        else range = 10 end\n    end\n    \n    in_range = CheckInteractDistance(unit,2)\n    if in_range then\n        if range then range = min(range,11)\n        else range = 11 end\n    end\n    \n    in_range = CheckInteractDistance(unit,4)\n    if in_range then\n        if range then range = min(range,28)\n        else range = 28 end\n    end\n    \n    in_range, checked_range = UnitInRange(unit)\n    if in_range and checked_range then\n        if range then range = min(range,40)\n        else range = 40 end\n    end\n    \n    return range\nend\n\n\naura_env.LIST_ITEMS_SHORT = {\n    {iid=16114,range=3},\n    {iid=8149,range=5},\n    {iid=17626,range=10},\n    {iid=4559,range=15},\n    {iid=17757,range=20},\n    {iid=13289,range=25},\n    {iid=17202,range=30},\n    {iid=18904,range=35},\n    {iid=4945,range=40},\n    {iid=5418,range=100},\n    {iid=23715,range=100},\n    {iid=23718,range=100},\n    {iid=23719,range=100},\n    {iid=23721,range=100},\n    {iid=23722,range=100},\n    {iid=17162,range=100},    \n}\n\naura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\naura_env.CHECK_RANGE = false\naura_env.RANGE_CNT = 0\nlocal av = aura_env\nr.SET_BUTTON_ON_CD = function(mode)\n    if mode == 0 then\n        local time_cur = GetTime()\n        if (time_cur - av.TIMER_CD) > 1 then\n            av.TIMER_CD = time_cur\n            r.btn_ann.c:SetCooldown(time_cur,1)\n            av.CHECK_RANGE = true\n            av.RANGE_CNT = 0\n        end\n    end\n    if mode == 1 and av.CHECK_RANGE then\n        local subzone = GetSubZoneText()\n        if subzone and av.LIST_VALID_SUBZONES[subzone] then\n            local msg\n            if av.RANGE_CNT == 0 then\n                msg = string.format(\"%s no enemies\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 and av.RANGE_CNT <= 1 then\n                msg = string.format(\"%s %d enemy\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 and av.RANGE_CNT <= 3 then\n                msg = string.format(\"%s %d enemies\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 then\n                msg = string.format(\">>> %s %d enemies <<<\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            end\n            if msg then\n                --print(msg)\n                SendChatMessage(msg,\"INSTANCE_CHAT\")\n            end\n        end\n        av.CHECK_RANGE = false\n    end\n    return\nend\n\nif UnitFactionGroup(\"player\") == \"Horde\" then\n    aura_env.PLAYER_FACTION = 0\nelse\n    aura_env.PLAYER_FACTION = 1\nend\n\naura_env.REQUEST_MACRO_UPDATE = false\naura_env.UPDATE_MACRO = function()\n    local str_macro\n    str_macro = string.format(\"/run WeakAuras.GetRegion(\\\"%s\\\").SET_BUTTON_ON_CD(0)\",aura_env.id)\n    str_macro = str_macro .. \"\\n/cleartarget\"\n    for i=1,80 do\n        local name, killingBlows, honorableKills, deaths, honorGained, faction, rank, race, class, CLASS = GetBattlefieldScore(i);\n        if name and faction ~= aura_env.PLAYER_FACTION then\n            str_macro = str_macro .. string.format(\"\\n/targetexact %s\",name)\n        end\n    end\n    str_macro = str_macro .. \"\\n/cleartarget\"\n    str_macro = str_macro .. string.format(\"\\n/run WeakAuras.GetRegion(\\\"%s\\\").SET_BUTTON_ON_CD(1)\",aura_env.id)\n    \n    \n    aura_env.region.btn_ann:SetAttribute('macrotext',str_macro)\nend\n\naura_env.COLOR_TEXT = function(text,r,g,b)\n    return string.format(\"|cff%02x%02x%02x%s|r\", 255*r, 255*g, 255*b,text)\nend\n\naura_env.bool_to_str = function(bool)\n    if bool==true then return aura_env.COLOR_TEXT(tostring(bool),0,0.75,1)\n    elseif bool==false then return aura_env.COLOR_TEXT(tostring(bool),1,0,0)\n    elseif bool==nil then return aura_env.COLOR_TEXT(\"nil\",1,0,0)\n    else return tostring(bool) end\nend",
					["do_custom"] = true,
				},
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0",
			["width"] = 31.999900817871,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "PVP: AB Callout Count Enemies",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["uid"] = "XPycNDqoWE2",
			["inverse"] = false,
			["parent"] = "PVP: AB Callout Bar",
			["displayIcon"] = 132486,
			["cooldown"] = false,
			["cooldownEdge"] = false,
		},
		["Sepsis"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"328305", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "target",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 328305,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Sepsis",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Sepsis",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "qKe()IUXdei",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMRIGHT",
		},
		["Rogue Dynamic - Luxthos"] = {
			["grow"] = "GRID",
			["controlledChildren"] = {
				"Envenom - Dynamic", -- [1]
				"Alacrity", -- [2]
				"Roll the Bones - Duration", -- [3]
				"Subterfuge", -- [4]
				"Master Assassin", -- [5]
				"The Rotten", -- [6]
				"Guile Charm", -- [7]
				"Perforated Veins", -- [8]
				"Deeper Daggers", -- [9]
				"Cheap Tricks", -- [10]
				"Concealed Blunderbuss", -- [11]
				"Finality: Eviscerate", -- [12]
				"Finality: Rupture", -- [13]
				"Finality: Black Powder", -- [14]
				"Deathly Shadows", -- [15]
				"Celerity", -- [16]
				"Mark of the Master Assassin", -- [17]
				"Shared Legendary (Rogue)", -- [18]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "interface/icons/classicon_rogue.blp",
			["gridType"] = "LU",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 4,
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["desc"] = "Created by Luxthos\nwww.twitch.tv/luxthos",
			["stagger"] = 0,
			["sort"] = "none",
			["version"] = 27,
			["subRegions"] = {
			},
			["rowSpace"] = 3,
			["selfPoint"] = "BOTTOMRIGHT",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["xOffset"] = 420.1670543919054,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotation"] = 0,
			["animate"] = false,
			["useLimit"] = false,
			["scale"] = 2,
			["internalVersion"] = 44,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:Rogue Core - Luxthos",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["uid"] = "O(UHtvBn7MG",
			["borderEdge"] = "Square Full White",
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["gridWidth"] = 3,
			["borderOffset"] = 4,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Rogue Dynamic - Luxthos",
			["arcLength"] = 360,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SELECTFRAME",
			["config"] = {
			},
			["borderInset"] = 1,
			["anchorPoint"] = "TOPRIGHT",
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["yOffset"] = -198.6664696845056,
		},
		["Inscrutable Quantum Device Versa"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"330367", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_abbreviate"] = false,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_gcd_channel"] = false,
					["text_text_format_p_decimal_precision"] = 1,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "Versa",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = -5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "Y18jHqsO7mA",
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Versa",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 48,
			["frameStrata"] = 3,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Adrenaline Rush"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"13750", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Adrenaline Rush",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 13750,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 13750,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 125,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Adrenaline Rush",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "(QYBq0JRBY4",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Hidden Blades"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"270070", -- [1]
						},
						["useExactSpellId"] = false,
						["names"] = {
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
						},
						["useName"] = true,
						["matchesShowOn"] = "showAlways",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 18,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
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
					["text_selfPoint"] = "CENTER",
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
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -130,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Hidden Blades",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "o1d2A6evyNY",
			["inverse"] = false,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "20",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 76,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Echoing Reprimand - 3"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "3",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks then\n        aura_env.region:SetDurationInfo(aura_env.state.stacks, 3, true)\n    end\nend",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = true,
						["auranames"] = {
							"323547", -- [1]
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["stacks"] = "3",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["stacksOperator"] = "==",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Power",
						["ownOnly"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["powertype"] = 4,
						["subeventPrefix"] = "SPELL",
						["use_power"] = false,
						["use_unit"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_track"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["powertype"] = 4,
						["use_powertype"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = false,
			["parent"] = "Rogue Core - Luxthos",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["customTextUpdate"] = "update",
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%c",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowThickness"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.98039215686275, -- [1]
						0.89411764705882, -- [2]
						0.47058823529412, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glow_anchor"] = "bar",
					["glowLength"] = 5,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 20,
			["adjustedMin"] = "2",
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "tYLgPLFYXzM",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["version"] = 46,
			["id"] = "Echoing Reprimand - 3",
			["icon_side"] = "RIGHT",
			["selfPoint"] = "CENTER",
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.85,0.12,0.05,0.87,0.17,0.05)",
					["do_custom"] = false,
				},
			},
			["alpha"] = 1,
			["width"] = 56,
			["semver"] = "2.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -25,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">=",
								["value"] = "3",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.07843137254902, -- [1]
								0.45490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["iconSource"] = -1,
		},
		["Rogue Core - Luxthos"] = {
			["controlledChildren"] = {
				"Alpha Options - Rogue", -- [1]
				"Assassination Logic", -- [2]
				"Garrote", -- [3]
				"Rupture", -- [4]
				"Shiv", -- [5]
				"Elaborate Planning", -- [6]
				"Blindside", -- [7]
				"Envenom - Rotation", -- [8]
				"Slice and Dice (Assassination)", -- [9]
				"Vendetta", -- [10]
				"Pistol Shot", -- [11]
				"Between the Eyes", -- [12]
				"Roll the Bones", -- [13]
				"Slice and Dice (Outlaw)", -- [14]
				"Shane", -- [15]
				"Blade Flurry", -- [16]
				"Adrenaline Rush", -- [17]
				"Find Weakness", -- [18]
				"Rupture (Subtlety)", -- [19]
				"Shadow Dance", -- [20]
				"Symbols of Death", -- [21]
				"Slice and Dice (Subtlety)", -- [22]
				"Shadow Blades", -- [23]
				"Marked for Death", -- [24]
				"Exsanguinate", -- [25]
				"Hidden Blades", -- [26]
				"Crimson Tempest", -- [27]
				"Ghostly Strike", -- [28]
				"Blade Rush", -- [29]
				"Secret Technique", -- [30]
				"Shuriken Tornada", -- [31]
				"Dreadblades", -- [32]
				"Killing Spree", -- [33]
				"Plunder Armor", -- [34]
				"Vanish (Outlaw)", -- [35]
				"Shadowy Duel", -- [36]
				"Vanish (Assassination & Subtlety)", -- [37]
				"Neurotoxin", -- [38]
				"Death from Above (Assassination)", -- [39]
				"Death from Above (Outlaw)", -- [40]
				"Cold Blood", -- [41]
				"Death from Above (Subtlety)", -- [42]
				"Kick", -- [43]
				"Kidney Shot", -- [44]
				"Gouge", -- [45]
				"Echoing Reprimand", -- [46]
				"Serrated Bone Spike", -- [47]
				"Sepsis", -- [48]
				"Flagellation", -- [49]
				"Fleshcraft (Rogue)", -- [50]
				"Door of Shadows (Rogue)", -- [51]
				"Phial of Serenity (Rogue)", -- [52]
				"Summon Steward (Rogue)", -- [53]
				"Soulshape Flicker (Rogue)", -- [54]
				"Soulshape (Rogue)", -- [55]
				"Energy - Bar (Rogue)", -- [56]
				"Echoing Reprimand - 1", -- [57]
				"Echoing Reprimand - 2", -- [58]
				"Echoing Reprimand - 3", -- [59]
				"Echoing Reprimand - 4", -- [60]
				"Combo Point - 1 (Rogue)", -- [61]
				"Combo Point - 2 (Rogue)", -- [62]
				"Combo Point - 3 (Rogue)", -- [63]
				"Combo Point - 4 (Rogue)", -- [64]
				"Combo Point - 5 (Rogue)", -- [65]
				"Combo Point - 6 (Rogue)", -- [66]
				"Broadside", -- [67]
				"True Bearing", -- [68]
				"Ruthless Precision", -- [69]
				"Grand Melee", -- [70]
				"Skull and Crossbones", -- [71]
				"Buried Treasure", -- [72]
				"Envenom - Bar", -- [73]
				"Cast - Bar (Rogue)", -- [74]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 780.0003524186477,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desc"] = "Created by Luxthos\nwww.twitch.tv/luxthos",
			["version"] = 46,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 0.6000000000000001,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Rogue Core - Luxthos",
			["config"] = {
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOMLEFT",
			["borderInset"] = 1,
			["groupIcon"] = "interface/icons/classicon_rogue.blp",
			["uid"] = "9loURKuWPB7",
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = -6.666971376765357,
		},
		["Assassination Logic"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "_G[\"LuxthosWARupExsg\"] = nil\n_G[\"LuxthosWAGarExsg\"] = nil\n_G[\"LuxthosWACTExsg\"] = nil\n_G[\"LuxthosWARupSnap\"] = {}\n_G[\"LuxthosWAGarSnap\"] = {}\n_G[\"LuxthosWACTSnap\"] = {}",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["custom"] = "function(event, arg1, arg2, arg3, arg4)\n    if event == \"UNIT_SPELLCAST_SENT\" then\n        aura_env.stealthed = false\n        if arg1 == \"player\" and (arg4 == 703 or arg4 == 1943) and\n        WA_GetUnitBuff(\"player\", 1784) then\n            aura_env.stealthed = true\n        end\n        return false\n    end\n    if arg1 == \"player\" and arg3 == 200806 then\n        local guid = UnitGUID(\"target\")\n        _G[\"LuxthosWARupExsg\"] = guid\n        _G[\"LuxthosWAGarExsg\"] = guid\n        _G[\"LuxthosWACTExsg\"] = guid\n    elseif arg1 == \"player\" and arg3 == 703 then --Garrote\n        local guid = UnitGUID(\"target\")\n        if (select(4, GetTalentInfo(2, 1, GetActiveSpecGroup(), nil, \"player\")) or\n            select(4, GetTalentInfo(2, 2, GetActiveSpecGroup(), nil, \"player\"))) and\n        (WA_GetUnitBuff(\"player\", 115191) or -- Subterfuge Stealth\n            WA_GetUnitBuff(\"player\", 115192) or -- Subterfuge\n            aura_env.stealthed or -- Stealth\n            WA_GetUnitBuff(\"player\", 11327)) then -- Vanish\n            _G[\"LuxthosWAGarSnap\"][guid] = true\n        else\n            _G[\"LuxthosWAGarSnap\"][guid] = false\n        end\n        _G[\"LuxthosWAGarExsg\"] = nil\n    elseif arg1 == \"player\" and arg3 == 1943 then -- Rupture\n        local guid = UnitGUID(\"target\")\n        if select(4, GetTalentInfo(2, 1, GetActiveSpecGroup(), nil, \"player\")) and\n        (aura_env.stealthed or -- Stealth\n            WA_GetUnitBuff(\"player\", 11327)) then -- Vanish\n            _G[\"LuxthosWARupSnap\"][guid] = true\n        else\n            _G[\"LuxthosWARupSnap\"][guid] = false\n        end\n        _G[\"LuxthosWARupExsg\"] = nil\n    end\n    return false\nend",
						["names"] = {
						},
						["events"] = "UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_SENT",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "function() return true end",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 44,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 46,
			["subRegions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["preferToUpdate"] = false,
			["regionType"] = "text",
			["parent"] = "Rogue Core - Luxthos",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["conditions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["xOffset"] = 0,
			["shadowYOffset"] = -1,
			["config"] = {
			},
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Assassination Logic",
			["authorOptions"] = {
			},
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["uid"] = "CyaEeRBQvwU",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
			},
			["selfPoint"] = "BOTTOM",
		},
		["Rupture"] = {
			["iconSource"] = -1,
			["xOffset"] = -75,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if aura_env.states[1].show then\n        local guid = UnitGUID(\"target\")\n        if _G[\"LuxthosWARupExsg\"] == guid or\n        _G[\"LuxthosWARupSnap\"][guid] then\n            return \"|cFF00FF00\"\n        end\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"1943", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Rupture",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 1943,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["alpha"] = 0.6,
					["type"] = "none",
					["y"] = 0,
					["x"] = 0,
					["rotate"] = 0,
					["scaleFunc"] = "",
					["use_scale"] = false,
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c%p",
					["text_text_format_p_format"] = "timed",
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
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 17,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 1943,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["uid"] = "b4Hn8C0TYwD",
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.87450980392157, -- [1]
								0.34117647058824, -- [2]
								0.32941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "inverse",
						}, -- [2]
						{
							["property"] = "color",
						}, -- [3]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "7.7",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
						["value"] = "7.7",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [6]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Rupture",
			["auto"] = true,
			["alpha"] = 1,
			["width"] = 46,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Blade Rush"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"271896", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 271877,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Blade Rush",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 3,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 271877,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -130,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Blade Rush",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "RAo102w2bZT",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
						{
							["property"] = "color",
						}, -- [6]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 76,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [7]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Combo Point - 2 (Rogue)"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "2",
			["adjustedMin"] = "1",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.83,0.08,0.04,0.85,0.12,0.05)",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Power",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 4,
						["spellIds"] = {
						},
						["use_power"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["auto"] = true,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
			},
			["height"] = 20,
			["parent"] = "Rogue Core - Luxthos",
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["sparkOffsetY"] = 0,
			["xOffset"] = -60,
			["spark"] = false,
			["uid"] = "P6UcXQbRPmn",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["iconSource"] = -1,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 5,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["id"] = "Combo Point - 2 (Rogue)",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 56,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -15,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "4",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "6",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["PVP: AB Callout Incoming 1"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_1\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 1 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["custom"] = "function()\n    return true\nend",
						["spellIds"] = {
						},
						["events"] = "",
						["check"] = "update",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.07843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
			},
			["height"] = 32,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["zone"] = "Arathi Basin",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["uid"] = "CoYxHGHhxVu",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
			},
			["icon"] = true,
			["auto"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11304,
			["id"] = "PVP: AB Callout Incoming 1",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 32,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "PVP: AB Callout Bar",
			["displayIcon"] = 132486,
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["Cancel Slice Dice"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.8745098039215686, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "CANCEL SLICE AND DICE",
			["yOffset"] = -232.46,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						1, -- [1]
						0.9490196078431372, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glow_action"] = "show",
					["glow_scale"] = 1,
					["do_glow"] = true,
					["glow_frequency"] = 0.25,
					["glow_frame"] = "WeakAuras:Change Target",
					["glow_type"] = "ACShine",
					["do_sound"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
					["use_glow_color"] = false,
					["sound"] = 1,
					["glow_lines"] = 12,
				},
				["finish"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["stop_sound"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Switch.ogg",
					["glow_action"] = "show",
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["use_spell"] = true,
						["names"] = {
						},
						["use_sourceFlags3"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["type"] = "combatlog",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spell"] = "Slice and Dice",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = false,
						["unit"] = "player",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["spellName"] = "Between the Eyes",
						["use_destUnit"] = false,
						["duration"] = "3",
						["use_sourceFlags"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"Slice and Dice", -- [1]
						},
						["useTotal"] = false,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["remOperator"] = ">=",
						["type"] = "aura2",
						["rem"] = "60",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 44,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["zoneIds"] = "",
			},
			["fontSize"] = 16,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["preferToUpdate"] = false,
			["displayText_format_p_time_precision"] = 1,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["fixedWidth"] = 200,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "Cancel Slice Dice",
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "EJLsM(umOdU",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["shadowYOffset"] = -1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["xOffset"] = -0.64,
		},
		["Vanish (Assassination & Subtlety)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 6,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 1856,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Vanish",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = "Shadowy Duel",
						["use_spellName"] = true,
						["spellName"] = 207736,
						["event"] = "Spell Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_spec"] = false,
				["spellknown"] = 1856,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Vanish (Assassination & Subtlety)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "K6jbK5pYpIU",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = -38,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "RIGHT",
		},
		["Celerity"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"13750", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = false,
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["item_bonusid_equipped"] = "7121",
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["level_operator"] = "==",
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_item_bonusid_equipped"] = true,
				["zoneIds"] = "",
			},
			["uid"] = "5Y9jSCCIU9h",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Celerity",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Finality: Rupture"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"340601", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["combineMode"] = "showHighest",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["ownOnly"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["zoneIds"] = "",
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7123",
				["use_class"] = true,
				["use_spellknown"] = false,
				["level_operator"] = "==",
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["level"] = "60",
				["use_item_bonusid_equipped"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "fOQdXSreehX",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Finality: Rupture",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Plunder Armor"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 6,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["spellId"] = "49206",
						["auranames"] = {
							"198529", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
						["duration"] = "35",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unevent"] = "auto",
						["use_spellName"] = true,
						["spellName"] = 0,
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 198529,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Plunder Armor",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 18,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_size"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 198529,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Plunder Armor",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "nfg85tckRHp",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = -38,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = -76,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [6]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "RIGHT",
		},
		["Poisons"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["enchant"] = "318038",
						["rem"] = "",
						["spellId"] = "49206",
						["auranames"] = {
							"2823", -- [1]
							"8679", -- [2]
							"315584", -- [3]
						},
						["remaining_operator"] = "<=",
						["remaining"] = "30",
						["use_weapon"] = true,
						["spellName"] = 0,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_showOn"] = true,
						["event"] = "Weapon Enchant",
						["use_spellId"] = true,
						["use_sourceUnit"] = true,
						["use_track"] = true,
						["use_totemName"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["weapon"] = "main",
						["matchesShowOn"] = "showOnMissing",
						["use_genericShowOn"] = true,
						["remOperator"] = "<=",
						["ownOnly"] = true,
						["use_remaining"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["names"] = {
						},
						["unevent"] = "auto",
						["duration"] = "35",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["showOn"] = "showOnMissing",
						["use_enchant"] = false,
						["sourceUnit"] = "player",
						["useRem"] = false,
					},
					["untrigger"] = {
						["showOn"] = "showOnMissing",
						["weapon"] = "main",
					},
				}, -- [1]
				{
					["trigger"] = {
						["enchant"] = "318038",
						["rem"] = "540",
						["spellId"] = "49206",
						["auranames"] = {
							"2823", -- [1]
							"8679", -- [2]
							"315584", -- [3]
						},
						["remaining_operator"] = "<=",
						["remaining"] = "30",
						["use_weapon"] = true,
						["spellName"] = 0,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_showOn"] = true,
						["event"] = "Weapon Enchant",
						["use_spellId"] = true,
						["use_sourceUnit"] = true,
						["use_track"] = true,
						["use_totemName"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["weapon"] = "main",
						["matchesShowOn"] = "showOnActive",
						["use_genericShowOn"] = true,
						["remOperator"] = "<=",
						["ownOnly"] = true,
						["use_remaining"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["names"] = {
						},
						["unevent"] = "auto",
						["duration"] = "35",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["showOn"] = "showOnMissing",
						["use_enchant"] = false,
						["sourceUnit"] = "player",
						["useRem"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showOnMissing",
						["weapon"] = "main",
					},
				}, -- [2]
				{
					["trigger"] = {
						["useName"] = true,
						["spellName"] = 0,
						["auranames"] = {
							"323658", -- [1]
						},
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["type"] = "aura2",
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnMissing",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] and t[3] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 0,
			["url"] = "https://wago.io/r1ViuTz47/21",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Poisons",
			["semver"] = "2.0.3",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "in00XgtCh35",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 136242,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Utilities - Luxthos",
		},
		["PVP: AB Callout Incoming 2"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_2\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 2 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function()\n    return true\nend",
						["spellIds"] = {
						},
						["events"] = "",
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.07843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
			},
			["height"] = 32,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["zone"] = "Arathi Basin",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["uid"] = "gU(rCXXg1QR",
			["url"] = "https://wago.io/GZL1eMszV/1",
			["icon"] = true,
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["semver"] = "1.0.0",
			["width"] = 32,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "PVP: AB Callout Incoming 2",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "PVP: AB Callout Bar",
			["displayIcon"] = 132486,
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Sprint"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"2983", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 2983,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Sprint",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 2983,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Sprint",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "FGhd1Ta)w0T",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Pistol Shot"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"340587", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"213995", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"195627", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Pistol Shot",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 185763,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 185763,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["parent"] = "Rogue Core - Luxthos",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "inverse",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 4,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 4,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.87450980392157, -- [1]
								0.34117647058824, -- [2]
								0.32941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -125,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Pistol Shot",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["uid"] = "wv616)oUeo3",
			["inverse"] = true,
			["useTooltip"] = true,
			["displayIcon"] = 1373908,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Combo Point - 1 (Rogue)"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "1",
			["adjustedMin"] = "0",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.81,0.04,0.03,0.83,0.08,0.04)",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Power",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 4,
						["spellIds"] = {
						},
						["use_power"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["auto"] = true,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
			},
			["height"] = 20,
			["parent"] = "Rogue Core - Luxthos",
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["sparkOffsetY"] = 0,
			["xOffset"] = -120,
			["spark"] = false,
			["uid"] = "g1x4JQEHvxQ",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["iconSource"] = -1,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 5,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["id"] = "Combo Point - 1 (Rogue)",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 56,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -5,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "4",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "6",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Shadowstep"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 36554,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Shadowstep",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
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
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["spellknown"] = 36554,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shadowstep",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "TXzG86d1b1V",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "charges",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "1",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "1",
								["variable"] = "charges",
							}, -- [2]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "charges",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "cooldownSwipe",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["op"] = "==",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 1,
										["op"] = "==",
										["value"] = "0",
										["variable"] = "charges",
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
						["value"] = 1,
						["variable"] = "onCooldown",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Between the Eyes"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"315341", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Between the Eyes",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 315341,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 2,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 315341,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -75,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Between the Eyes",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["alpha"] = 0.6,
					["type"] = "none",
					["y"] = 0,
					["x"] = 0,
					["rotate"] = 0,
					["scaleFunc"] = "",
					["use_scale"] = false,
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "iOXbHjW(T1B",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Grappling Hook"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 195457,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Grappling Hook",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 195457,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Grappling Hook",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "ATkyK6QFav5",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Soulshape (Rogue)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"310143", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 310143,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Soulshape",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 326526,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Soulshape (Rogue)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "nPAsxBG1qiK",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["Blindside"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"121153", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["matchesShowOn"] = "showAlways",
						["duration"] = "35",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["spellName"] = 0,
						["use_spellId"] = true,
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unevent"] = "auto",
						["unit"] = "player",
						["ownOnly"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 25,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [2]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Blindside",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "n3A5KRQpqhr",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Gouge"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 1776,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Gouge",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 1776,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Gouge",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "wWGygy3DsBd",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "LEFT",
		},
		["Cloak of Shadow"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"31224", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 31224,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Cloak of Shadows",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 31224,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Cloak of Shadow",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "Lc9HTWIyj3J",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Distract"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 1725,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Distract",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 1725,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Distract",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "GCiizopEFoj",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Echoing Reprimand - 4"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "4",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks then\n        aura_env.region:SetDurationInfo(aura_env.state.stacks, 4, true)\n    end\nend",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = true,
						["auranames"] = {
							"323547", -- [1]
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["stacks"] = "4",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["stacksOperator"] = "==",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Power",
						["ownOnly"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["powertype"] = 4,
						["subeventPrefix"] = "SPELL",
						["use_power"] = false,
						["use_unit"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_track"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["powertype"] = 4,
						["use_powertype"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = false,
			["parent"] = "Rogue Core - Luxthos",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["customTextUpdate"] = "update",
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%c",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowThickness"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.98039215686275, -- [1]
						0.89411764705882, -- [2]
						0.47058823529412, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glow_anchor"] = "bar",
					["glowLength"] = 5,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 20,
			["adjustedMin"] = "3",
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "g1VgG(509aN",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["version"] = 46,
			["id"] = "Echoing Reprimand - 4",
			["icon_side"] = "RIGHT",
			["selfPoint"] = "CENTER",
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.87,0.17,0.05,0.89,0.21,0.06)",
					["do_custom"] = false,
				},
			},
			["alpha"] = 1,
			["width"] = 56,
			["semver"] = "2.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 60,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -35,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">=",
								["value"] = "4",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.07843137254902, -- [1]
								0.45490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["iconSource"] = -1,
		},
		["Cold Blood"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 70.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"213981", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 213981,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Cold Blood",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 20,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] or t[2] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["spellknown"] = 213981,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -130,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = -38.5,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Cold Blood",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "))BlWKXuVpg",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Shuriken Tornada"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"277925", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 277925,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Shuriken Tornado",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 277925,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -130,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shuriken Tornada",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "jZBdF7OnLDO",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
						{
							["property"] = "color",
						}, -- [6]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [6]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Kick"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 6,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 1766,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Kick",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 1766,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Kick",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "sdGcisSEVMn",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "LEFT",
		},
		["Skull and Crossbones"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -85,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"199603", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							199603, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["names"] = {
							"Skull and Crossbones", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "LUXTHOS_EVENT",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 1\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Health",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 2\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["events"] = "LUXTHOS_EVENT",
						["unit"] = "player",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] and t[4] end",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "SS",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 20,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 315508,
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Rogue Core - Luxthos",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["xOffset"] = 75,
			["cooldown"] = true,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useTooltip"] = true,
			["desaturate"] = false,
			["uid"] = "VWu8GSjR1Ju",
			["alpha"] = 1,
			["zoom"] = 0.33,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Skull and Crossbones",
			["auto"] = true,
			["frameStrata"] = 5,
			["width"] = 46,
			["authorOptions"] = {
				{
					["width"] = 2,
					["type"] = "select",
					["default"] = 1,
					["name"] = "Roll the Bones: Display",
					["useDesc"] = true,
					["key"] = "dropdown",
					["values"] = {
						"Description", -- [1]
						"Cooldown", -- [2]
						"Nothing", -- [3]
					},
					["desc"] = "Select what you want to show on your Roll the Bones buff.",
				}, -- [1]
			},
			["config"] = {
				["dropdown"] = 1,
			},
			["inverse"] = false,
			["desc"] = "",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.40000003576279, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Find Weakness"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"316219", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 316219,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -125,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [2]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Find Weakness",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "zy7RPuvNeqg",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Swing-Circle"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["use_hand"] = true,
						["hand"] = "main",
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Swing Timer",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["remaining_operator"] = "<",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["unit"] = "player",
					},
					["untrigger"] = {
						["hand"] = "main",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.config[\"CastBar\"] == 1 then\n        \n        if aura_env.config[\"ShowOnKeyPress\"] then\n            \n            if aura_env.config[\"KeyOption\"] == 1 then\n                if IsLeftAltKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            elseif  aura_env.config[\"KeyOption\"] == 2 then\n                if IsLeftShiftKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            else\n                if IsLeftControlKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            end\n        end \n    end\nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["scalex"] = 1,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Ultimate Mouse Cursor",
			["backgroundColor"] = {
				0.50196078431373, -- [1]
				0.50196078431373, -- [2]
				0.50196078431373, -- [3]
				0.5, -- [4]
			},
			["crop_x"] = 0.41,
			["xOffset"] = 0,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 40,
			["crop_y"] = 0.41,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["uid"] = "Wb6LrTEHFfj",
			["startAngle"] = 0,
			["textureWrapMode"] = "CLAMP",
			["width"] = 40,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mouse Cursor Dot",
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["useAdjustededMin"] = false,
			["selfPoint"] = "CENTER",
			["slantMode"] = "INSIDE",
			["anchorFrameParent"] = false,
			["tocversion"] = 90002,
			["smoothProgress"] = false,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.13",
			["compress"] = false,
			["id"] = "Swing-Circle",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if not aura_env.config[\"SwingBar\"] then\n    aura_env.region:Color(255,255,255,0)\n    aura_env.region:SetBackgroundColor (128,128,128,0)\nelse\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        aura_env.region:Color(255,255,255,0)\n        aura_env.region:SetBackgroundColor (128,128,128,0)\n    end    \nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura69",
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "~=",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["Evasion"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"5277", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 5277,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Evasion",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 5277,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Evasion",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "KHQt3Pja9cB",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Roll the Bones - Duration"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"193356", -- [1]
							"193359", -- [2]
							"193357", -- [3]
							"193358", -- [4]
							"199603", -- [5]
							"199600", -- [6]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["uid"] = "xj(eLdHeexv",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["useTooltip"] = true,
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "1373910",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Roll the Bones - Duration",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["alpha"] = 1,
			["width"] = 35,
			["semver"] = "2.0.2",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "Rogue Dynamic - Luxthos",
		},
		["PVP: AB Callout Incoming 4+"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function()\n    return true\nend\n\n\n",
						["spellIds"] = {
						},
						["events"] = "",
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "4+",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.07843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
			},
			["height"] = 32,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["zone"] = "Arathi Basin",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_4p\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\">>> %s 4+ inc <<<\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0",
			["width"] = 32,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "PVP: AB Callout Incoming 4+",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["uid"] = "orJHJQe)ZlC",
			["inverse"] = false,
			["parent"] = "PVP: AB Callout Bar",
			["displayIcon"] = 132486,
			["cooldown"] = false,
			["cooldownEdge"] = false,
		},
		["Dreadblades"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 6,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["spellId"] = "49206",
						["auranames"] = {
							"343142", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
						["duration"] = "35",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unevent"] = "auto",
						["use_spellName"] = true,
						["spellName"] = 0,
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 343142,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Dreadblades",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 343142,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Dreadblades",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "2TBdkibYBBU",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "RIGHT",
		},
		["Crescendo"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -303.0357971191406,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/w0P7ab0os/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["sourceName"] = "Crimson Cabalist",
						["use_destNpcId"] = true,
						["unevent"] = "timed",
						["subeventPrefix"] = "UNIT_DIED",
						["duration"] = "4",
						["event"] = "Combat Log",
						["names"] = {
						},
						["type"] = "combatlog",
						["use_sourceName"] = false,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "",
						["destNpcId"] = "169196",
						["use_cloneId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
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
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 52,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "FEET",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_anchorYOffset"] = -50,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 28,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 72.000274658203,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2407",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["conditions"] = {
			},
			["xOffset"] = 238.8165283203125,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BoxingArenaSound.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = false,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.0",
			["tocversion"] = 90002,
			["id"] = "Crescendo",
			["width"] = 73.000411987305,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "xtfmMhgISbE",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 1394887,
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["PVP: AB Callout Incoming 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["custom"] = "function()\n    return true\nend",
						["spellIds"] = {
						},
						["events"] = "",
						["check"] = "update",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "3",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.07843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
			},
			["height"] = 32,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["zone"] = "Arathi Basin",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["uid"] = "S6llDhplL7o",
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_3\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 3 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["semver"] = "1.0.0",
			["width"] = 32,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "PVP: AB Callout Incoming 3",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["displayIcon"] = 132486,
			["cooldown"] = false,
			["parent"] = "PVP: AB Callout Bar",
		},
		["Vanish (Outlaw)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 6,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 1856,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Vanish",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 18,
						},
						["spellName"] = 51690,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 51690,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "spell",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 198529,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Spell Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_spec"] = true,
				["spellknown"] = 1856,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Vanish (Outlaw)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "8qNlOWggPEi",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = -38,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 3,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 4,
										["variable"] = "show",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = -76,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = -114,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [6]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "RIGHT",
		},
		["Echoing Reprimand - 2"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "2",
			["customText"] = "function()\n    if aura_env.state and aura_env.state.stacks then\n        aura_env.region:SetDurationInfo(aura_env.state.stacks, 2, true)\n    end\nend",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["auto"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = true,
						["auranames"] = {
							"323547", -- [1]
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["stacks"] = "2",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["stacksOperator"] = "==",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Power",
						["ownOnly"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["powertype"] = 4,
						["subeventPrefix"] = "SPELL",
						["use_power"] = false,
						["use_unit"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_track"] = true,
						["duration"] = "1",
						["event"] = "Power",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["powertype"] = 4,
						["use_powertype"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["icon"] = false,
			["parent"] = "Rogue Core - Luxthos",
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["customTextUpdate"] = "update",
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%c",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowThickness"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.98039215686275, -- [1]
						0.89411764705882, -- [2]
						0.47058823529412, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glow_anchor"] = "bar",
					["glowLength"] = 5,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 20,
			["adjustedMin"] = "1",
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "wqguM1u001a",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["version"] = 46,
			["id"] = "Echoing Reprimand - 2",
			["icon_side"] = "RIGHT",
			["selfPoint"] = "CENTER",
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.83,0.08,0.04,0.85,0.12,0.05)",
					["do_custom"] = false,
				},
			},
			["alpha"] = 1,
			["width"] = 56,
			["semver"] = "2.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = -60,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -15,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">=",
								["value"] = "2",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.07843137254902, -- [1]
								0.45490196078431, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["iconSource"] = -1,
		},
		["Shadowy Duel"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 6,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["spellId"] = "49206",
						["auranames"] = {
							"207736", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
						["duration"] = "35",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unevent"] = "auto",
						["use_spellName"] = true,
						["spellName"] = 0,
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 207736,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Shadowy Duel",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_size"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_petbattle"] = false,
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 207736,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shadowy Duel",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "w2tqW5yu74d",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "RIGHT",
		},
		["Summon Steward (Rogue)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["spellName"] = 324739,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Summon Steward",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 177278,
						["use_count"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellName"] = 0,
						["event"] = "Item Count",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["count"] = "0",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["count_operator"] = "==",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 326526,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Summon Steward (Rogue)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "SfqDo2Q0)tB",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["Neurotoxin"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 70.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_totemName"] = true,
						["spellId"] = "49206",
						["auranames"] = {
							"206328", -- [1]
						},
						["use_track"] = true,
						["duration"] = "35",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["ownOnly"] = true,
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["spellIds"] = {
						},
						["use_spellId"] = true,
						["spellName"] = 0,
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["useName"] = true,
						["custom_type"] = "status",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "target",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["events"] = "",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 206328,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Neurotoxin",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 18,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 20,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] or t[2] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["spellknown"] = 206328,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -130,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
							{
								["trigger"] = 6,
								["variable"] = "show",
								["value"] = 0,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = -38.5,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Neurotoxin",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "NtEOxRlE(wr",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Soulshape Flicker (Rogue)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 70,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellName"] = 324701,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 324701,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"310143", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 326526,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Soulshape Flicker (Rogue)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "YX54dZu5owD",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["Guile Charm"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"340582", -- [1]
							"340583", -- [2]
							"340584", -- [3]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7120",
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["level_operator"] = "==",
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_item_bonusid_equipped"] = true,
				["zoneIds"] = "",
			},
			["uid"] = "ssItyaFk0iG",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Guile Charm",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Rupture (Subtlety)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"1943", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Rupture",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 1943,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 1943,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -75,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.87450980392157, -- [1]
								0.34117647058824, -- [2]
								0.32941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "inverse",
						}, -- [2]
						{
							["property"] = "color",
						}, -- [3]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "7.7",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
						["value"] = "7.7",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [6]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Rupture (Subtlety)",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["alpha"] = 0.6,
					["type"] = "none",
					["y"] = 0,
					["x"] = 0,
					["rotate"] = 0,
					["scaleFunc"] = "",
					["use_scale"] = false,
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "fJskZxK8pw3",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Shiv (Outlaw & Subtlety)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 5938,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Shiv",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["spellknown"] = 5938,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shiv (Outlaw & Subtlety)",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "mWyqIREoPVk",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Kidney Shot"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -33,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 408,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Kidney Shot",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 408,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Kidney Shot",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "2o8FunNzzYQ",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "LEFT",
		},
		["Death from Above (Subtlety)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 70.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 269513,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Death from Above",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 20,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["useName"] = true,
						["spellName"] = 213981,
						["auranames"] = {
							"213981", -- [1]
						},
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = "Cold Blood",
						["use_spellName"] = true,
						["type"] = "aura2",
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["ownOnly"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["useName"] = true,
						["spellName"] = 213981,
						["auranames"] = {
							"213981", -- [1]
						},
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["realSpellName"] = "Cold Blood",
						["use_spellName"] = true,
						["type"] = "spell",
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["ownOnly"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["spellknown"] = 269513,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -130,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = -38.5,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 6,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Death from Above (Subtlety)",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "VEIpwbqeGix",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Cast-Circle Lag (Cast)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				0.34901960784314, -- [2]
				0.015686274509804, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = true,
						["use_remaining"] = false,
						["duration"] = "1",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["remaining_operator"] = "<",
						["event"] = "Cast",
						["names"] = {
						},
						["castType"] = "cast",
						["unit"] = "player",
						["spellIds"] = {
						},
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["customDuration"] = "function()\n    if not aura_env.last or aura_env.last < GetTime() - 1 then\n        \n        local _,_,_, world = GetNetStats()\n        local _, _, _, startDuration, endDuration = UnitCastingInfo(\"player\")\n        local currentTimer\n        \n        if startDuration and endDuration then\n            currentTimer = endDuration - startDuration\n        else\n            currentTimer = 0\n        end\n        \n        aura_env.lat_max = currentTimer\n        aura_env.lat_world = world\n    end\n    \n    return aura_env.lat_world, aura_env.lat_max,true\nend",
						["type"] = "custom",
						["custom_type"] = "status",
						["check"] = "update",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[2]\nend",
				["activeTriggerMode"] = 3,
			},
			["endAngle"] = 360,
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.config[\"CastBar\"] == 1 then\n        \n        if aura_env.config[\"ShowOnKeyPress\"] then\n            \n            if aura_env.config[\"KeyOption\"] == 1 then\n                if IsLeftAltKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            elseif  aura_env.config[\"KeyOption\"] == 2 then\n                if IsLeftShiftKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            else\n                if IsLeftControlKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            end\n        end \n    end\nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["scalex"] = 1,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Ultimate Mouse Cursor",
			["backgroundColor"] = {
				0.50196078431373, -- [1]
				0.50196078431373, -- [2]
				0.50196078431373, -- [3]
				0.5, -- [4]
			},
			["crop_x"] = 0.41,
			["xOffset"] = 0,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 90,
			["crop_y"] = 0.41,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["uid"] = "2yKg(vhGpa8",
			["startAngle"] = 0,
			["textureWrapMode"] = "CLAMP",
			["width"] = 90,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mouse Cursor Dot",
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["useAdjustededMin"] = false,
			["selfPoint"] = "CENTER",
			["slantMode"] = "INSIDE",
			["anchorFrameParent"] = false,
			["tocversion"] = 90002,
			["smoothProgress"] = false,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.13",
			["compress"] = false,
			["id"] = "Cast-Circle Lag (Cast)",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if aura_env.config[\"CastBar\"] ~= 1 then\n    aura_env.region:Color(255,255,255,0)\n    aura_env.region:SetBackgroundColor (128,128,128,0)\nelse\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        aura_env.region:Color(255,255,255,0)\n        aura_env.region:SetBackgroundColor (128,128,128,0)\n    end    \nend\n\nif aura_env.config[\"HideDefaultCastBar\"] then\n    CastingBarFrame:UnregisterAllEvents()   \nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura69",
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "~=",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["Rogue Utilities - Luxthos"] = {
			["grow"] = "CUSTOM",
			["controlledChildren"] = {
				"Cloak of Shadow", -- [1]
				"Evasion", -- [2]
				"Crimson Vial", -- [3]
				"Drink Up Me Hearties", -- [4]
				"Smoke Bomb", -- [5]
				"Sprint", -- [6]
				"Shiv (Outlaw & Subtlety)", -- [7]
				"Dismantle", -- [8]
				"Grappling Hook", -- [9]
				"Shadowstep", -- [10]
				"Shroud of Concealment", -- [11]
				"Feint", -- [12]
				"Blind", -- [13]
				"Tricks of the Trade", -- [14]
				"Distract", -- [15]
				"Poisons", -- [16]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -60.50002629170021,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAnchorPerUnit"] = false,
			["url"] = "https://wago.io/r1ViuTz47/21",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 4,
			["radius"] = 200,
			["borderEdge"] = "Square Full White",
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["internalVersion"] = 44,
			["rowSpace"] = 3,
			["desc"] = "Created by Luxthos\nwww.twitch.tv/luxthos",
			["rotation"] = 0,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 21,
			["subRegions"] = {
			},
			["useLimit"] = true,
			["groupIcon"] = "interface/icons/classicon_rogue.blp",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["space"] = 4,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 1,
			["animate"] = false,
			["customGrow"] = "function(newPositions, activeRegions)\n    local limit = 8 -- limit of icons per row\n    local rows = 3 -- total rows\n    local spacing = 3 -- spacing between icons\n    \n    -----do not touch-----\n    local check = true\n    local xCount = 0 -- xOffset count\n    local yCount = 0 -- yOffset count\n    local tCount = 0 -- count of all regions before last row\n    \n    local xOffset = 0\n    local yOffset = 0\n    local total = #activeRegions\n    \n    for i, regionData in ipairs(activeRegions) do\n        local region = regionData.region\n        \n        local regionsLeft = total - tCount\n        local rowTotal = 1\n        \n        if total <= limit then\n            rowTotal = total\n        elseif (regionsLeft < limit and xCount < 1) or not check then\n            check = false\n            rowTotal = regionsLeft\n        elseif yCount >= rows-1 then\n            rowTotal = regionsLeft\n        elseif total > limit then\n            rowTotal = limit\n        end\n        \n        xOffset = 0 - (region.width + spacing) / 2 * (rowTotal-1) + (xCount * (region.width + spacing))\n        yOffset = 0 - (region.height + spacing) * yCount -- change '-' to '+' after 0 to grow up instead of down\n        \n        xCount = xCount + 1\n        \n        if yCount < rows-1 and check then -- check for last row\n            tCount = tCount + 1\n            if xCount >= limit then -- check for last region in the row\n                xCount = 0\n                yCount = yCount + 1 -- new row\n            end\n        end\n        \n        newPositions[i] = {xOffset, yOffset}\n    end\nend",
			["scale"] = 2,
			["uid"] = "30NAZ7qeF02",
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:Rogue Core - Luxthos",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 7,
			["frameStrata"] = 3,
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["stagger"] = 0,
			["borderOffset"] = 4,
			["semver"] = "2.0.3",
			["tocversion"] = 90002,
			["id"] = "Rogue Utilities - Luxthos",
			["anchorPerUnit"] = "CUSTOM",
			["gridWidth"] = 7,
			["anchorFrameType"] = "SELECTFRAME",
			["fullCircle"] = true,
			["config"] = {
			},
			["anchorPoint"] = "CENTER",
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0.8333332751256779,
		},
		["Flagellation"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"345569", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"345569", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "target",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 345569,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Flagellation",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Flagellation",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "gHVhabS3(Sa",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "25",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMRIGHT",
		},
		["Shared Legendary (Rogue)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"339344", -- [1]
							"339340", -- [2]
							"339348", -- [3]
							"339351", -- [4]
							"339058", -- [5]
							"338743", -- [6]
							"340197", -- [7]
							"347458", -- [8]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["useName"] = true,
						["type"] = "aura2",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_spellId"] = true,
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "player",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["level_operator"] = "==",
				["use_class"] = true,
				["use_itemequiped"] = false,
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7100,7101,7102,7103,7104,7105,7106,7159",
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["DEATHKNIGHT"] = true,
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_item_bonusid_equipped"] = true,
				["zoneIds"] = "",
			},
			["uid"] = "RfqPvl0M4(X",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Shared Legendary (Rogue)",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Mark of the Master Assassin"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"340094", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["zoneIds"] = "",
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7111",
				["use_class"] = true,
				["use_spellknown"] = false,
				["level_operator"] = "==",
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["level"] = "60",
				["use_item_bonusid_equipped"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "v6glAFDbAAN",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Mark of the Master Assassin",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Crystallize"] = {
			["iconSource"] = 2,
			["xOffset"] = 80,
			["preferToUpdate"] = false,
			["yOffset"] = 67,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/B-Tv9R72W/3",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\phone.ogg",
					["glow_action"] = "hide",
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["names"] = {
						},
						["auraspellids"] = {
							"333913", -- [1]
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useGroup_count"] = true,
						["group_countOperator"] = ">",
						["auraspellids"] = {
							"339690", -- [1]
						},
						["event"] = "Health",
						["unit"] = "group",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["group_count"] = "0",
						["names"] = {
						},
						["useAffected"] = false,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "REMOVE BLEED NOW",
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
					["text_anchorXOffset"] = -40,
					["text_color"] = {
						0.92941176470588, -- [1]
						1, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 39,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["parent"] = "Wicked Blade Group",
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 90005,
			["id"] = "Crystallize",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 64,
			["uid"] = "hwsQc2ZUVOI",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Alacrity"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["useName"] = false,
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["auranames"] = {
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"193538", -- [1]
						},
						["names"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["zoneIds"] = "",
			},
			["uid"] = "JzBfRmt9Mc1",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Alacrity",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Inscrutable Quantum Device Heal"] = {
			["iconSource"] = 0,
			["color"] = {
				0.11764705882353, -- [1]
				0.96862745098039, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["use_unit"] = true,
						["use_ignoreDead"] = true,
						["debuffType"] = "HELPFUL",
						["use_controlled"] = true,
						["useExactSpellId"] = true,
						["type"] = "unit",
						["use_health"] = false,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["percenthealth"] = "30",
						["event"] = "Health",
						["unevent"] = "auto",
						["use_ignoreDisconnected"] = true,
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"330366", -- [1]
						},
						["unit"] = "party",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "party",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "item",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["itemName"] = 179350,
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["event"] = "Cooldown Progress (Item)",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "HEAL",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["displayIcon"] = 2000857,
			["uid"] = "5cKHiMQzXJp",
			["frameStrata"] = 5,
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Heal",
			["width"] = 48,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Inscrutable Quantum Device",
		},
		["Wicked Blade Group"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Crystallize", -- [1]
				"Wicked Mark", -- [2]
				"Wicked Laceration", -- [3]
				"Wicked Laceration Mult Stack", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -18.64312744140625,
			["preferToUpdate"] = false,
			["yOffset"] = 128.5716552734375,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/B-Tv9R72W/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["rotation"] = 0,
			["version"] = 3,
			["subRegions"] = {
			},
			["config"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["stagger"] = 0,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["limit"] = 5,
			["animate"] = false,
			["space"] = 2,
			["scale"] = 1,
			["useLimit"] = false,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["selfPoint"] = "TOP",
			["borderInset"] = 1,
			["constantFactor"] = "RADIUS",
			["internalVersion"] = 44,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 90005,
			["id"] = "Wicked Blade Group",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["grow"] = "DOWN",
			["uid"] = "vB)sVnxDNbd",
			["authorOptions"] = {
			},
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["information"] = {
			},
			["fullCircle"] = true,
		},
		["6 Lady Inerva Darkvein - Add Say"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "%c",
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    aura_env.time = aura_env.time or 0\n    if GetTime() >= aura_env.time+ 1 then\n        aura_env.time = GetTime()\n        if aura_env.state then\n            local res = aura_env.word..tostring(math.floor(aura_env.state.expirationTime - GetTime()))\n            SendChatMessage(res)\n        end\n    end\n    \nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["init"] = {
					["custom"] = "aura_env.word = \" \"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"340477", -- [1]
							"332664", -- [2]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 44,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 2,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2406",
				["zoneIds"] = "",
				["use_encounterid"] = true,
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["preferToUpdate"] = false,
			["displayText_format_p_time_precision"] = 1,
			["url"] = "https://wago.io/YXzhT3I4M/2",
			["authorOptions"] = {
			},
			["shadowYOffset"] = -1,
			["justify"] = "LEFT",
			["tocversion"] = 90002,
			["id"] = "6 Lady Inerva Darkvein - Add Say",
			["uid"] = "Y7YPJQTb5IR",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.1",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "340477",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.word = \"Tank Add - \"",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "spellId",
						["value"] = "332664",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "aura_env.word = \"Interrupt Add - \"",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
		},
		["Envenom - Dynamic"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"32645", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["spellName"] = 0,
						["talent"] = {
							["single"] = 2,
						},
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["use_inverse"] = false,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["spellName"] = 0,
						["talent"] = {
							["single"] = 3,
						},
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["use_inverse"] = false,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[2] or t[3] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["race"] = {
				},
				["zoneIds"] = "",
			},
			["uid"] = "UW8uRBTmgyY",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Envenom - Dynamic",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Perforated Veins"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"341572", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["level_operator"] = "==",
				["use_class"] = true,
				["use_itemequiped"] = false,
				["use_spec"] = true,
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "341567",
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["use_spellknown"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["use_item_bonusid_equipped"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["spellknown"] = 341567,
				["zoneIds"] = "",
			},
			["uid"] = "jyWSxO5nWI4",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Perforated Veins",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Mouse Cursor"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if aura_env.config[\"ShowOnKeyPress\"] then\n    aura_env.region:Color(0,0,0,0)\nend\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        \n        if aura_env.config[\"KeyOption\"] == 1 then\n            if IsLeftAltKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        elseif  aura_env.config[\"KeyOption\"] == 2 then\n            if IsLeftShiftKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        else\n            if IsLeftControlKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        end\n        \n        \n    end\nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["scalex"] = 1,
					["easeType"] = "none",
					["x"] = 0,
					["use_color"] = true,
					["alpha"] = 0,
					["easeStrength"] = 3,
					["y"] = 0,
					["colorType"] = "custom",
					["preset"] = "fade",
					["colorA"] = 1,
					["colorFunc"] = "function()\n    if aura_env.config[\"MainRingClassColor\"] then\n        local c = RAID_CLASS_COLORS[select(2,UnitClass(\"player\"))]\n        return c.r, c.g, c.b\n    end\n    \nend",
					["rotate"] = 0,
					["scaley"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 100,
			["rotate"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mouse Cursor Dot",
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["width"] = 100,
			["anchorFrameParent"] = false,
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["semver"] = "1.0.13",
			["tocversion"] = 90002,
			["id"] = "Mouse Cursor",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["uid"] = "Q1VqDPsBIJz",
			["rotation"] = 0,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Ultimate Mouse Cursor",
		},
		["Garrote"] = {
			["iconSource"] = -1,
			["xOffset"] = -125,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if aura_env.states[1].show then\n        local guid = UnitGUID(\"target\")\n        if _G[\"LuxthosWAGarExsg\"] == guid or\n        _G[\"LuxthosWAGarSnap\"][guid] then\n            return \"|cFF00FF00\"\n        end\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"703", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Garrote",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 703,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = false,
						["remaining"] = "1",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["unevent"] = "auto",
						["spellName"] = 703,
						["type"] = "spell",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Garrote",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["remaining_operator"] = ">",
						["use_genericShowOn"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["alpha"] = 0.6,
					["type"] = "none",
					["y"] = 0,
					["x"] = 0,
					["rotate"] = 0,
					["scaleFunc"] = "",
					["use_scale"] = false,
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%c%p",
					["text_text_format_p_format"] = "timed",
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
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 17,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_shadowXOffset"] = 0,
					["text_text"] = "%3.p",
					["text_text_format_2.p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_3.p_time_format"] = 0,
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_2.p_time_precision"] = 1,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_2.p_format"] = "timed",
					["text_text_format_3.p_format"] = "timed",
					["type"] = "subtext",
					["text_fontType"] = "OUTLINE",
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_2.p_time_dynamic_threshold"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_3.p_time_dynamic_threshold"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = -4,
					["text_text_format_3.p_time_precision"] = 1,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [3]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 703,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["uid"] = "wqYyYUkLwC5",
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.87450980392157, -- [1]
								0.34117647058824, -- [2]
								0.32941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "inverse",
						}, -- [2]
						{
							["property"] = "color",
						}, -- [3]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.3.text_visible",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = -2,
								["op"] = "<=",
								["variable"] = "OR",
								["checks"] = {
									{
										["trigger"] = 1,
										["op"] = "<=",
										["value"] = "6",
										["variable"] = "expirationTime",
									}, -- [1]
									{
										["trigger"] = 1,
										["variable"] = "show",
										["value"] = 0,
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 0,
							}, -- [2]
						},
						["value"] = "6",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [7]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Garrote",
			["auto"] = true,
			["alpha"] = 1,
			["width"] = 46,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Finality: Black Powder"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"340603", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["combineMode"] = "showHighest",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["ownOnly"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["zoneIds"] = "",
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7123",
				["use_class"] = true,
				["use_spellknown"] = false,
				["level_operator"] = "==",
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["level"] = "60",
				["use_item_bonusid_equipped"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "K8(N)dkWUyO",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Finality: Black Powder",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Cast-Circle"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_castType"] = false,
						["use_remaining"] = false,
						["unevent"] = "auto",
						["duration"] = "1",
						["remaining_operator"] = "<",
						["event"] = "Cast",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["spellIds"] = {
						},
						["type"] = "unit",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.config[\"CastBar\"] == 1 then\n        \n        if aura_env.config[\"ShowOnKeyPress\"] then\n            \n            if aura_env.config[\"KeyOption\"] == 1 then\n                if IsLeftAltKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            elseif  aura_env.config[\"KeyOption\"] == 2 then\n                if IsLeftShiftKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            else\n                if IsLeftControlKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            end\n        end \n    end\nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["scalex"] = 1,
					["easeType"] = "none",
					["x"] = 0,
					["use_color"] = true,
					["alpha"] = 0,
					["easeStrength"] = 3,
					["y"] = 0,
					["colorType"] = "custom",
					["preset"] = "fade",
					["colorA"] = 1,
					["colorFunc"] = "function()\n    if aura_env.config[\"CastRingClassColor\"] then\n        local c = RAID_CLASS_COLORS[select(2,UnitClass(\"player\"))]\n        return c.r, c.g, c.b\n    end\n    \nend",
					["rotate"] = 0,
					["scaley"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Ultimate Mouse Cursor",
			["backgroundColor"] = {
				0.50196078431373, -- [1]
				0.50196078431373, -- [2]
				0.50196078431373, -- [3]
				0.5, -- [4]
			},
			["crop_x"] = 0.41,
			["xOffset"] = 0,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 90,
			["crop_y"] = 0.41,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["uid"] = "6Oa61Y8XrtH",
			["startAngle"] = 0,
			["textureWrapMode"] = "CLAMP",
			["width"] = 90,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mouse Cursor Dot",
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["useAdjustededMin"] = false,
			["selfPoint"] = "CENTER",
			["slantMode"] = "INSIDE",
			["anchorFrameParent"] = false,
			["tocversion"] = 90002,
			["smoothProgress"] = false,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.13",
			["compress"] = false,
			["id"] = "Cast-Circle",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if aura_env.config[\"CastBar\"] ~= 1 then\n    aura_env.region:Color(255,255,255,0)\n    aura_env.region:SetBackgroundColor (128,128,128,0)\nelse\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        aura_env.region:Color(255,255,255,0)\n        aura_env.region:SetBackgroundColor (128,128,128,0)\n    end    \nend\n\nif aura_env.config[\"HideDefaultCastBar\"] then\n    CastingBarFrame:UnregisterAllEvents()   \nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura69",
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "~=",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">",
								["variable"] = "expirationTime",
								["value"] = "0",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["The Rotten"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"341134", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7125",
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["level_operator"] = "==",
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_item_bonusid_equipped"] = true,
				["zoneIds"] = "",
			},
			["uid"] = "UHCbhwa2qk8",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "The Rotten",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Secret Technique"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["use_genericShowOn"] = true,
						["use_spell"] = true,
						["use_unit"] = true,
						["use_showgcd"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["track"] = "auto",
						["spell"] = "206931",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellName"] = 280719,
						["genericShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["realSpellName"] = "Secret Technique",
						["castType"] = "channel",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["type"] = "spell",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellName"] = 0,
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["subeventSuffix"] = "",
						["subeventPrefix"] = "",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["event"] = "Talent Known",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 280719,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -130,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Secret Technique",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "1rLpieAZjAN",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Crimson Vial"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"185311", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 185311,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Crimson Vial",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 185311,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Crimson Vial",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "RKAGVARLVRq",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Deathly Shadows"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"341202", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["zoneIds"] = "",
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7126",
				["use_class"] = true,
				["use_spellknown"] = false,
				["level_operator"] = "==",
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["level"] = "60",
				["use_item_bonusid_equipped"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "WHpcZwwXMRn",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Deathly Shadows",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["GCD"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["parent"] = "Ultimate Mouse Cursor",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["backgroundOffset"] = 0,
			["color"] = {
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["desaturateForeground"] = false,
			["slant"] = 0.2,
			["endAngle"] = 360,
			["internalVersion"] = 44,
			["crop_x"] = 0.41,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        \n        if aura_env.config[\"KeyOption\"] == 1 then\n            if IsLeftAltKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        elseif  aura_env.config[\"KeyOption\"] == 2 then\n            if IsLeftShiftKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        else\n            if IsLeftControlKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        end\n        \n        \n    end\nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["scalex"] = 1,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["textureWrapMode"] = "CLAMP",
			["uid"] = "WaQc)avM3LN",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 50,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "SELECTFRAME",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["alpha"] = 1,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["xOffset"] = 0,
			["anchorFrameFrame"] = "WeakAuras:Mouse Cursor Dot",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["tocversion"] = 90002,
			["blendMode"] = "BLEND",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["auranames"] = {
						},
						["use_hand"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["hand"] = "main",
						["buffShowOn"] = "showOnActive",
						["duration"] = "1",
						["type"] = "spell",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["spellName"] = 0,
						["event"] = "Global Cooldown",
						["realSpellName"] = 0,
						["use_itemSlot"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["use_track"] = true,
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["slantMode"] = "INSIDE",
			["anchorFrameParent"] = false,
			["smoothProgress"] = false,
			["slantFirst"] = false,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.13",
			["compress"] = false,
			["id"] = "GCD",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if aura_env.config[\"ShowOnKeyPress\"] then\n    aura_env.region:Color(0,0,0,0)\nend\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 50,
			["startAngle"] = 0,
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["slanted"] = false,
		},
		["Door of Shadows (Rogue)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 300728,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Door of Shadows",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_2_format"] = "none",
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 326526,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Door of Shadows (Rogue)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "Kg0m(EAVEGQ",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "charges",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "1",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "1",
								["variable"] = "charges",
							}, -- [2]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "charges",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "cooldownSwipe",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "==",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 1,
										["op"] = "==",
										["value"] = "0",
										["variable"] = "charges",
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "1",
								["variable"] = "charges",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "0",
								["variable"] = "charges",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [6]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["Wicked Laceration"] = {
			["iconSource"] = -1,
			["xOffset"] = 20,
			["preferToUpdate"] = false,
			["yOffset"] = 199,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/B-Tv9R72W/3",
			["actions"] = {
				["start"] = {
					["sound"] = 1,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["stacksOperator"] = "<",
						["auraspellids"] = {
							"333913", -- [1]
						},
						["event"] = "Health",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["stacks"] = "2",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["useStacks"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "BLEEDING",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0, -- [2]
						0.003921568627451, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 40,
					["text_fontSize"] = 39,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["parent"] = "Wicked Blade Group",
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 90005,
			["id"] = "Wicked Laceration",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 64,
			["uid"] = "vToDREOhrnI",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shroud of Concealment"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"114018", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 114018,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Shroud of Concealment",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 114018,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shroud of Concealment",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "Yae7hJH9BeI",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Elaborate Planning"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"193640", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
				},
				["use_spec"] = true,
				["use_vehicleUi"] = false,
				["use_spellknown"] = false,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 25,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
					},
				}, -- [2]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Elaborate Planning",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "buKrg)x9uuu",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Vendetta"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"79140", -- [1]
						},
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["unevent"] = "auto",
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "spell",
						["realSpellName"] = "Vendetta",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 79140,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 79140,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 125,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Vendetta",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "Y)gTui2IZOY",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Combo Point - 3 (Rogue)"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "3",
			["adjustedMin"] = "2",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.85,0.12,0.05,0.87,0.17,0.05)",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Power",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 4,
						["spellIds"] = {
						},
						["use_power"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["auto"] = true,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
			},
			["height"] = 20,
			["parent"] = "Rogue Core - Luxthos",
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["sparkOffsetY"] = 0,
			["xOffset"] = 0,
			["spark"] = false,
			["uid"] = "XzwGiUadPsD",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["iconSource"] = -1,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 5,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["id"] = "Combo Point - 3 (Rogue)",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 56,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -25,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "4",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "6",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Shadow Blades"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"121471", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Shadow Blades",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 121471,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 121471,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 125,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shadow Blades",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "QnrZqxmh8WQ",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Ultimate Mouse Cursor"] = {
			["controlledChildren"] = {
				"Mouse Cursor Dot", -- [1]
				"Mouse Cursor", -- [2]
				"GCD", -- [3]
				"Cast-Circle", -- [4]
				"Swing-Circle", -- [5]
				"Cast-Circle Lag (Cast)", -- [6]
				"Cast-Circle Lag (Channel)", -- [7]
				"Cast-Bar", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desc"] = "Cursor reticle for cast and GCD.",
			["version"] = 14,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.13",
			["tocversion"] = 90002,
			["id"] = "Ultimate Mouse Cursor",
			["config"] = {
			},
			["frameStrata"] = 5,
			["anchorFrameType"] = "MOUSE",
			["selfPoint"] = "BOTTOMLEFT",
			["borderInset"] = 1,
			["groupIcon"] = 878211,
			["uid"] = "Jy16uE7Jjvk",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["xOffset"] = 0,
		},
		["Ghostly Strike"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"196937", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "target",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 196937,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Ghostly Strike",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 196937,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -130,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Ghostly Strike",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "G7QPONDL2FN",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
						{
							["property"] = "color",
						}, -- [6]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [6]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Exsanguinate"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["use_genericShowOn"] = true,
						["use_spell"] = true,
						["use_unit"] = true,
						["use_showgcd"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["track"] = "auto",
						["spell"] = "206931",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellName"] = 200806,
						["genericShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["realSpellName"] = "Exsanguinate",
						["castType"] = "channel",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["type"] = "spell",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellName"] = 0,
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["subeventSuffix"] = "",
						["subeventPrefix"] = "",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["event"] = "Talent Known",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 200806,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -130,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Exsanguinate",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "n5ZOEfT6odW",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Tricks of the Trade"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = true,
						["spellId"] = "49206",
						["auranames"] = {
							"57934", -- [1]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["ownOnly"] = true,
						["use_track"] = true,
						["use_absorbMode"] = true,
						["unit"] = "group",
						["match_count"] = "0",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["use_spellId"] = true,
						["useName"] = true,
						["match_countOperator"] = ">",
						["unevent"] = "auto",
						["type"] = "aura2",
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["names"] = {
						},
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 57934,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Tricks of the Trade",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 57934,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Tricks of the Trade",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "2M8fHpmSOpz",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Phial of Serenity (Rogue)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 177278,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["names"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 177278,
						["use_count"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["unit"] = "player",
						["use_itemName"] = true,
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["count"] = "0",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["count_operator"] = ">",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				{
					["trigger"] = {
						["spellName"] = 324739,
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["realSpellName"] = "Summon Steward",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%2.s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_text_format_2.s_format"] = "none",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 326526,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Phial of Serenity (Rogue)",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "UeQGb(2uEiR",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMLEFT",
		},
		["Cast-Bar"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -35,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cast",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    if aura_env.config[\"CastBar\"] == 2 then\n        \n        if aura_env.config[\"ShowOnKeyPress\"] then\n            \n            if aura_env.config[\"KeyOption\"] == 1 then\n                if IsLeftAltKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            elseif  aura_env.config[\"KeyOption\"] == 2 then\n                if IsLeftShiftKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            else\n                if IsLeftControlKeyDown() then\n                    aura_env.region:Color(255,255,255,255)\n                    return 1\n                else\n                    aura_env.region:Color(255,255,255,0)\n                    return 0\n                end\n            end\n        end  \n    end\nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["scalex"] = 1,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["parent"] = "Ultimate Mouse Cursor",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["crop_x"] = 0.41,
			["xOffset"] = 0,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 5,
			["crop_y"] = 0.41,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["uid"] = "z0yeJcSX1S3",
			["startAngle"] = 0,
			["textureWrapMode"] = "CLAMP",
			["width"] = 50,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mouse Cursor Dot",
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["useAdjustededMin"] = false,
			["selfPoint"] = "CENTER",
			["slantMode"] = "INSIDE",
			["anchorFrameParent"] = false,
			["tocversion"] = 90002,
			["smoothProgress"] = false,
			["anchorPoint"] = "CENTER",
			["semver"] = "1.0.13",
			["compress"] = false,
			["id"] = "Cast-Bar",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if aura_env.config[\"CastBar\"] ~= 2 then\n    aura_env.region:Color(255,255,255,0)\n    aura_env.region:SetBackgroundColor (0,0,0,0)\nelse\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        aura_env.region:Color(255,255,255,0)\n        aura_env.region:SetBackgroundColor (0,0,0,0)\n    end    \nend\n\n\nif aura_env.config[\"HideDefaultCastBar\"] then\n    CastingBarFrame:UnregisterAllEvents()   \nend\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura69",
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["inverse"] = false,
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 0,
		},
		["PVP: AB Callout Clear"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["custom"] = "function()\n    return true\nend",
						["events"] = "",
						["check"] = "update",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "CLR",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
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
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
			},
			["height"] = 32,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["zone"] = "Arathi Basin",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\n\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_Clr\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s clear\",AV.LIST_VALID_SUBZONES[subzone])\n                    --print(msg)\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0",
			["width"] = 32,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "PVP: AB Callout Clear",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["uid"] = "mtAeCVGFcrG",
			["inverse"] = false,
			["parent"] = "PVP: AB Callout Bar",
			["displayIcon"] = 132486,
			["cooldown"] = false,
			["cooldownEdge"] = false,
		},
		["Mouse Cursor Dot"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/ZbjlsgMkp/14",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\nif aura_env.config[\"ShowOnKeyPress\"] then\n    aura_env.region:Color(0,0,0,0)\nend\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["events"] = "GLOBAL_MOUSE_DOWN,GLOBAL_MOUSE_UP",
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_DOWN\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end\n    \n    \nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function(event,button)\n    \n    if aura_env.config.HideOnRightClick then\n        if event == \"GLOBAL_MOUSE_UP\" then\n            if button == \"RightButton\" then\n                return true\n            else\n                return false\n            end\n        end\n    end \n    \nend\n\n\n\n",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["spellIds"] = {
						},
						["custom_type"] = "stateupdate",
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "50",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n    \n    --[[if aura_env.config[\"HideOnRightClick\"] then\n        if IsMouseButtonDown(\"RightButton\") then\n            aura_env.region:Color(255,255,255,0)\n            return 0\n        else\n            aura_env.region:Color(255,255,255,255)\n            return 1\n        end\n    end\n]]--\n    \n    if aura_env.config[\"ShowOnKeyPress\"] then\n        \n        if aura_env.config[\"KeyOption\"] == 1 then\n            if IsLeftAltKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        elseif  aura_env.config[\"KeyOption\"] == 2 then\n            if IsLeftShiftKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        else\n            if IsLeftControlKeyDown() then\n                aura_env.region:Color(255,255,255,255)\n                return 1\n            else\n                aura_env.region:Color(255,255,255,0)\n                return 0\n            end\n        end\n        \n    end\n    \n    \nend\n\n\n",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["scalex"] = 1,
					["preset"] = "fade",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["version"] = 14,
			["subRegions"] = {
			},
			["height"] = 10,
			["rotate"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "MOUSE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura45",
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.13",
			["tocversion"] = 90002,
			["id"] = "Mouse Cursor Dot",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 10,
			["xOffset"] = 0,
			["config"] = {
				["CastBar"] = 1,
				["HideDefaultCastBar"] = false,
				["MainRingClassColor"] = false,
				["SwingBar"] = false,
				["ShowOnKeyPress"] = false,
				["HideOnRightClick"] = false,
				["CastRingClassColor"] = false,
				["KeyOption"] = 1,
			},
			["authorOptions"] = {
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Visibility",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "ShowOnKeyPress",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Show on key press",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "select",
					["values"] = {
						"Left Alt", -- [1]
						"Left Shift", -- [2]
						"Left Control", -- [3]
					},
					["default"] = 1,
					["key"] = "KeyOption",
					["useDesc"] = false,
					["name"] = "Key:",
					["width"] = 1,
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "HideOnRightClick",
					["desc"] = "Hide while pressing the mouse right button.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide on Right Click",
					["width"] = 1,
				}, -- [4]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Cast",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "HideDefaultCastBar",
					["desc"] = "Check to hide the default blizzard castbar. Uncheck and /reload to get it back.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Hide default castbar",
					["width"] = 1,
				}, -- [6]
				{
					["type"] = "select",
					["values"] = {
						"Circle", -- [1]
						"Bar", -- [2]
					},
					["default"] = 1,
					["key"] = "CastBar",
					["useDesc"] = false,
					["name"] = "Show cast as:",
					["width"] = 1,
				}, -- [7]
				{
					["type"] = "header",
					["useName"] = true,
					["text"] = "Additional Options",
					["noMerge"] = false,
					["width"] = 1,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "SwingBar",
					["desc"] = "This show a circle for the duration of your white attack. Useful for melee trying to maximize their rotation.",
					["default"] = false,
					["useDesc"] = true,
					["name"] = "Show swing timer",
					["width"] = 1,
				}, -- [9]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [10]
				{
					["type"] = "toggle",
					["key"] = "MainRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for main ring",
					["width"] = 1,
				}, -- [11]
				{
					["type"] = "space",
					["variableWidth"] = true,
					["height"] = 1,
					["width"] = 1,
					["useHeight"] = false,
				}, -- [12]
				{
					["type"] = "toggle",
					["key"] = "CastRingClassColor",
					["default"] = false,
					["useDesc"] = false,
					["name"] = "Use class color for cast ring",
					["width"] = 1,
				}, -- [13]
			},
			["uid"] = "Rmtk(1Xv0OT",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Ultimate Mouse Cursor",
		},
		["Subterfuge"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"115192", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["class_and_spec"] = {
				},
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["uid"] = "oH4Zh9UQIAv",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Subterfuge",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Death from Above (Assassination)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 70.5,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 269513,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Death from Above",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 18,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 20,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "spell",
						["talent"] = {
							["single"] = 21,
						},
						["spellName"] = 206328,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = "Neurotoxin",
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_class"] = true,
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["spellknown"] = 269513,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -130,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
							{
								["trigger"] = 5,
								["variable"] = "show",
								["value"] = 0,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = -38.5,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 6,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Death from Above (Assassination)",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "uGFNRDmqc)s",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Crimson Tempest"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"121411", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Crimson Tempest",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 121411,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 9,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 18,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "BOTTOM",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 121411,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -130,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "desaturate",
						}, -- [1]
						{
							["property"] = "inverse",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "7.5",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
						["value"] = "3.5",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
						["checks"] = {
							{
								["trigger"] = -1,
								["variable"] = "incombat",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = -1,
								["variable"] = "attackabletarget",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = -1,
								["variable"] = "hastarget",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 38,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 76,
							["property"] = "xOffsetRelative",
						}, -- [1]
					},
				}, -- [6]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Crimson Tempest",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["alpha"] = 0.6,
					["type"] = "none",
					["y"] = 0,
					["x"] = 0,
					["rotate"] = 0,
					["scaleFunc"] = "",
					["use_scale"] = false,
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "0jJPpLeUc)9",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Drink Up Me Hearties"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 212205,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Create: Crimson Vial",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
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
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 35,
			["load"] = {
				["use_size"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_spec"] = true,
				["use_vehicleUi"] = false,
				["use_petbattle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["spellknown"] = 212205,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Drink Up Me Hearties",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "RrO9Cg8uNx7",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "==",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "charges",
							}, -- [2]
						},
						["value"] = "3",
						["variable"] = "charges",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "1",
								["variable"] = "charges",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "3",
								["variable"] = "charges",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "cooldownSwipe",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["op"] = "==",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 1,
										["op"] = "==",
										["value"] = "0",
										["variable"] = "charges",
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 2,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 2,
										["variable"] = "onCooldown",
										["value"] = 1,
									}, -- [2]
								},
							}, -- [2]
						},
						["value"] = 1,
						["variable"] = "onCooldown",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Roll the Bones"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Roll the Bones",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 315508,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"193356", -- [1]
							"193359", -- [2]
							"193357", -- [3]
							"193358", -- [4]
							"199603", -- [5]
							"199600", -- [6]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["events"] = "UNIT_AURA",
						["custom_type"] = "status",
						["check"] = "event",
						["debuffType"] = "HELPFUL",
						["custom"] = "function(event, unit)\n    return aura_env.checkDice(event, unit)\nend",
						["unit"] = "player",
					},
					["untrigger"] = {
						["custom"] = "function(event, unit)\n    return not aura_env.checkDice(event, unit)\nend\n",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 315508,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
				["keep-broadside"] = false,
				["keep-skull-and-crossbones"] = false,
				["keep-true-bearing"] = false,
				["keep-buried-treasure"] = false,
				["keep-ruthless-precision"] = false,
				["keep-grand-melee"] = false,
			},
			["xOffset"] = -25,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "onCooldown",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["key"] = "keep-broadside",
					["width"] = 1,
					["name"] = "Roll the Bones: Broadside",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "Check this box if you want Roll the Bones to keep a single Broadside roll.",
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "keep-true-bearing",
					["width"] = 1,
					["name"] = "Roll the Bones: True Bearing",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "Check this box if you want Roll the Bones to keep a single True Bearing roll.",
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "keep-skull-and-crossbones",
					["width"] = 1,
					["name"] = "Roll the Bones: Skull and Crossbones",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "Check this box if you want Roll the Bones to keep a single Skull and Crossbones roll.",
				}, -- [3]
				{
					["type"] = "toggle",
					["key"] = "keep-buried-treasure",
					["width"] = 1,
					["name"] = "Roll the Bones: Buried Treasure",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "Check this box if you want Roll the Bones to keep a single Buried Treasure roll.",
				}, -- [4]
				{
					["type"] = "toggle",
					["key"] = "keep-ruthless-precision",
					["width"] = 1,
					["name"] = "Roll the Bones: Ruthless Precision",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "Check this box if you want Roll the Bones to keep a single Ruthless Precision roll.",
				}, -- [5]
				{
					["type"] = "toggle",
					["key"] = "keep-grand-melee",
					["width"] = 1,
					["name"] = "Roll the Bones: Grand Melee",
					["useDesc"] = true,
					["default"] = false,
					["desc"] = "Check this box if you want Roll the Bones to keep a single Grand Melee roll.",
				}, -- [6]
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Roll the Bones",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "YgwS5BA1cGk",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.dice_ids = {\n    [193356] = true, -- Broadside\n    [193357] = true, -- Ruthless Precision\n    [193358] = true, -- Grand Melee\n    [193359] = true, -- True Bearing\n    [199600] = true, -- Buried Treasure\n    [199603] = true, -- Skull and Crossbones\n}\n\n\naura_env.checkDice = function(event, unit)\n    if not unit == \"player\" then\n        return\n    end\n    \n    local foundDices = {}\n    local count = 0\n    \n    for i = 1, 255 do\n        local name, _, _, _, _, _, _, _, _, spellId = UnitAura(\"player\", i, \"HELPFUL\")\n        if not name then break end\n        if aura_env.dice_ids[spellId] then\n            count = count + 1\n            foundDices[spellId] = true\n        end\n    end\n    \n    -- Loaded Dice buff ID: 256171\n    if count < 2 and not foundDices[256171] then\n        if aura_env.config[\"keep-broadside\"] and foundDices[193356] then\n            return false\n        elseif aura_env.config[\"keep-ruthless-precision\"] and foundDices[193357] then\n            return false\n        elseif aura_env.config[\"keep-grand-melee\"] and foundDices[193358] then\n            return false\n        elseif aura_env.config[\"keep-true-bearing\"] and foundDices[193359] then\n            return false\n        elseif aura_env.config[\"keep-buried-treasure\"] and foundDices[199600] then\n            return false\n        elseif aura_env.config[\"keep-skull-and-crossbones\"] and foundDices[199603] then\n            return false\n        end\n    end\n    \n    if count >= 2 then\n        return false\n    else\n        return true\n    end\nend\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["displayIcon"] = "1373910",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Marked for Death"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["use_genericShowOn"] = true,
						["use_spell"] = true,
						["use_unit"] = true,
						["use_showgcd"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["track"] = "auto",
						["spell"] = "206931",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellName"] = 137619,
						["genericShowOn"] = "showAlways",
						["event"] = "Cooldown Progress (Spell)",
						["realSpellName"] = "Marked for Death",
						["castType"] = "channel",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["type"] = "spell",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 137619,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -130,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Marked for Death",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "olJvZDgPZrg",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOM",
		},
		["Slice and Dice (Outlaw)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"315496", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Slice and Dice",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 315496,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 315496,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 75,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<=",
								["value"] = "11",
								["variable"] = "expirationTime",
							}, -- [2]
						},
						["value"] = "11",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Slice and Dice (Outlaw)",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "Pd(kCg4TWKi",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Grand Melee"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -85,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"193358", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							193358, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["names"] = {
							"Grand Melee", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "LUXTHOS_EVENT",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 1\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "LUXTHOS_EVENT",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 2\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] and t[4] end",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "AS+L",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 20,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 315508,
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Rogue Core - Luxthos",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["xOffset"] = 25,
			["cooldown"] = true,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useTooltip"] = true,
			["desaturate"] = false,
			["uid"] = "(eFh4yEXklJ",
			["alpha"] = 1,
			["zoom"] = 0.33,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Grand Melee",
			["auto"] = true,
			["frameStrata"] = 5,
			["width"] = 46,
			["authorOptions"] = {
				{
					["width"] = 2,
					["type"] = "select",
					["default"] = 1,
					["name"] = "Roll the Bones: Display",
					["useDesc"] = true,
					["key"] = "dropdown",
					["values"] = {
						"Description", -- [1]
						"Cooldown", -- [2]
						"Nothing", -- [3]
					},
					["desc"] = "Select what you want to show on your Roll the Bones buff.",
				}, -- [1]
			},
			["config"] = {
				["dropdown"] = 1,
			},
			["inverse"] = false,
			["desc"] = "",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.40000003576279, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Dismantle"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"207777", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "target",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 207777,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Dismantle",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_size"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["arena"] = true,
						["pvp"] = true,
						["none"] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_spec"] = true,
				["use_vehicleUi"] = false,
				["use_petbattle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["spellknown"] = 207777,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Dismantle",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "8RQvVI7DmOF",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Envenom - Rotation"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["showClones"] = false,
						["type"] = "aura2",
						["auranames"] = {
							"32645", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["unitExists"] = true,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["talent"] = {
							["single"] = 2,
						},
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["unevent"] = "auto",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
						["talent"] = {
							["single"] = 3,
						},
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Talent Known",
						["unit"] = "player",
						["unevent"] = "auto",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "DAMAGER",
					["multi"] = {
						["DAMAGER"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
				},
				["use_spellknown"] = true,
				["use_spec"] = true,
				["use_vehicleUi"] = false,
				["use_exact_spellknown"] = false,
				["spellknown"] = 32645,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 25,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 46,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Envenom - Rotation",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "PKbUdwbvmgf",
			["inverse"] = false,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 0.5,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
					},
				}, -- [2]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Smoke Bomb"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "212182",
						["duration"] = "5",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Combat Log",
						["spellName"] = 0,
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_spellName"] = false,
						["use_genericShowOn"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 212182,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Smoke Bomb",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 212182,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 0,
			["url"] = "https://wago.io/r1ViuTz47/21",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
						["checks"] = {
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 35,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 90002,
			["id"] = "Smoke Bomb",
			["semver"] = "2.0.3",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "zoaM(qo891(",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 458733,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Utilities - Luxthos",
		},
		["Energy - Bar (Rogue)"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = -37,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",1.00,0.75,0.16,1.00,0.83,0.32)",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_showCost"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 3,
						["spellIds"] = {
						},
						["event"] = "Power",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["selfPoint"] = "CENTER",
			["semver"] = "2.0.7",
			["barColor"] = {
				1, -- [1]
				0.78823529411765, -- [2]
				0.23921568627451, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["parent"] = "Rogue Core - Luxthos",
			["version"] = 46,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
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
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_visible"] = true,
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 16,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 20,
			["overlays"] = {
				{
					0.25098039215686, -- [1]
					0.43529411764706, -- [2]
					0.77647058823529, -- [3]
					1, -- [4]
				}, -- [1]
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["icon"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["iconSource"] = -1,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["alpha"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Energy - Bar (Rogue)",
			["spark"] = false,
			["frameStrata"] = 5,
			["width"] = 296,
			["zoom"] = 0,
			["uid"] = "sPcutea4xVY",
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkOffsetY"] = 0,
		},
		["Slice and Dice (Assassination)"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"315496", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Slice and Dice",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 315496,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_spec"] = true,
				["use_vehicleUi"] = false,
				["covenant"] = {
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 315496,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 75,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [3]
						{
							["value"] = false,
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<=",
								["value"] = "11",
								["variable"] = "expirationTime",
							}, -- [2]
						},
						["value"] = "11",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Slice and Dice (Assassination)",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = ")Lu2YcDQRdv",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Killing Spree"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 6,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["spellId"] = "49206",
						["auranames"] = {
							"51690", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
						["duration"] = "35",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unevent"] = "auto",
						["use_spellName"] = true,
						["spellName"] = 0,
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 51690,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Killing Spree",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 18,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 51690,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Killing Spree",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "HkpfETvWQ12",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = -38,
							["property"] = "yOffsetRelative",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "RIGHT",
		},
		["Blade Flurry"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"13877", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Blade Flurry",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 13877,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 13877,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 25,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Blade Flurry",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "",
					["use_alpha"] = false,
					["scaleType"] = "custom",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["alpha"] = 0.6,
					["type"] = "none",
					["y"] = 0,
					["x"] = 0,
					["rotate"] = 0,
					["scaleFunc"] = "",
					["use_scale"] = false,
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "EAXY06mzdsc",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Cast - Bar (Rogue)"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = -85,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "CastingBarFrame:UnregisterAllEvents()",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["powertype"] = 6,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["names"] = {
						},
						["spellName"] = 0,
						["event"] = "Cast",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_absorbMode"] = true,
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.76470588235294, -- [1]
				0.098039215686275, -- [2]
				0.098039215686275, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["alpha"] = 1,
			["version"] = 46,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
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
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 13,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%n",
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 13,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
			},
			["height"] = 20,
			["parent"] = "Rogue Core - Luxthos",
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["authorOptions"] = {
			},
			["icon"] = false,
			["sparkOffsetY"] = 0,
			["config"] = {
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "WFonhKmuYnQ",
			["zoom"] = 0,
			["icon_side"] = "LEFT",
			["anchorFrameType"] = "SCREEN",
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["semver"] = "2.0.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = true,
			["tocversion"] = 90002,
			["id"] = "Cast - Bar (Rogue)",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 5,
			["width"] = 296,
			["auto"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["iconSource"] = -1,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Concealed Blunderbuss"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"340587", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["combineMode"] = "showHighest",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["ownOnly"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7122",
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_spellknown"] = false,
				["zoneIds"] = "",
				["use_vehicleUi"] = false,
				["level_operator"] = "==",
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_item_bonusid_equipped"] = true,
				["itemtypeequipped"] = {
				},
			},
			["uid"] = "iuBBSZ71cU6",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Concealed Blunderbuss",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Dark Recital Direction Arrow"] = {
			["color"] = {
				0.14509803921569, -- [1]
				1, -- [2]
				0, -- [3]
				0.74000000953674, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 382.4444580078125,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/j7HfZpxN6/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["group_countOperator"] = ">",
						["auranames"] = {
							"331636", -- [1]
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
						["group_count"] = "0",
						["useGroup_count"] = true,
						["spellIds"] = {
						},
						["ignoreSelf"] = false,
						["combineMode"] = "showHighest",
						["unit"] = "group",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"331636", -- [1]
						},
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["names"] = {
						},
						["auranames"] = {
							"331636", -- [1]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) \n    return t[1] and t[2] \n    or t[1] and t[3]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 270,
			["version"] = 1,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
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
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_n_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [1]
			},
			["height"] = 200,
			["rotate"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2412",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "MIRROR",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\offscreen.tga",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.0",
			["tocversion"] = 90002,
			["id"] = "Dark Recital Direction Arrow",
			["xOffset"] = 12.480224609375,
			["alpha"] = 1,
			["width"] = 200,
			["discrete_rotation"] = 270,
			["config"] = {
			},
			["uid"] = "QPMn3mfG32W",
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "mirror",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "mirror",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.007843137254902, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [2]
			},
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Shadow Dance"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"185313", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 185313,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Shadow Dance",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 2,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%2.s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowXOffset"] = 0,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
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
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_text_format_2.s_format"] = "none",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spellknown"] = 185313,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -25,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 46,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shadow Dance",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "0OYPhOLIvy(",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "==",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "charges",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "==",
								["value"] = "1",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "onCooldown",
								["value"] = 0,
							}, -- [2]
						},
					},
					["linked"] = false,
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = ">=",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["op"] = "==",
								["value"] = "2",
								["variable"] = "maxCharges",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = ">=",
								["value"] = "1",
								["variable"] = "charges",
							}, -- [2]
							{
								["trigger"] = 2,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "charges",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["property"] = "cooldownSwipe",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = "0",
						["variable"] = "charges",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = true,
							["property"] = "cooldownSwipe",
						}, -- [5]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [6]
					},
				}, -- [6]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Shiv"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"5938", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Shiv",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 5938,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 5938,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = -25,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "insufficientResources",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.47450980392157, -- [1]
								0.51372549019608, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "spellInRange",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								0.87450980392157, -- [1]
								0.34117647058824, -- [2]
								0.32941176470588, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [6]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shiv",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "XGz)AaTrztu",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Combo Point - 4 (Rogue)"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["adjustedMax"] = "4",
			["adjustedMin"] = "3",
			["yOffset"] = -61,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.region.bar.fg:SetGradient(\"HORIZONTAL\",0.87,0.17,0.05,0.89,0.21,0.06)",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Power",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["powertype"] = 4,
						["spellIds"] = {
						},
						["use_power"] = false,
						["unit"] = "player",
						["use_absorbMode"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["talent"] = {
							["single"] = 8,
						},
						["spellName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_talent"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["event"] = "Talent Known",
						["duration"] = "1",
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["auto"] = true,
			["barColor"] = {
				0.85882352941176, -- [1]
				0.14509803921569, -- [2]
				0.050980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["preferToUpdate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
			},
			["height"] = 20,
			["parent"] = "Rogue Core - Luxthos",
			["load"] = {
				["use_class"] = true,
				["use_petbattle"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = true,
			["sparkOffsetY"] = 0,
			["xOffset"] = 60,
			["spark"] = false,
			["uid"] = "ihgmxyRVzCF",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = true,
			["regionType"] = "aurabar",
			["iconSource"] = -1,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["frameStrata"] = 5,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["id"] = "Combo Point - 4 (Rogue)",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 56,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.30000001192093, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = 46,
							["property"] = "width",
						}, -- [1]
						{
							["value"] = -35,
							["property"] = "xOffsetRelative",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "4",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "5",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.35686274509804, -- [1]
								0.91372549019608, -- [2]
								0.27843137254902, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "6",
								["variable"] = "power",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [5]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Master Assassin"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"256735", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["ownOnly"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "35",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 6,
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["use_spellknown"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class_and_spec"] = {
				},
				["use_vehicleUi"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["uid"] = "GYSc5kkQtkn",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Master Assassin",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "expirationTime",
						["value"] = "0",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Ruthless Precision"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -85,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"193357", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							193357, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["names"] = {
							"Ruthless Precision", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "LUXTHOS_EVENT",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 1\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["duration"] = "1",
						["event"] = "Health",
						["use_unit"] = true,
						["custom_type"] = "status",
						["events"] = "LUXTHOS_EVENT",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 2\nend",
						["subeventPrefix"] = "SPELL",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] and t[4] end",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["stickyDuration"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "CRIT",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 20,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 315508,
				["zoneIds"] = "",
			},
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Rogue Core - Luxthos",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["xOffset"] = -25,
			["cooldown"] = true,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useTooltip"] = true,
			["desaturate"] = false,
			["uid"] = "X6n1e)KCHOG",
			["alpha"] = 1,
			["zoom"] = 0.33,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "Ruthless Precision",
			["auto"] = true,
			["frameStrata"] = 5,
			["width"] = 46,
			["authorOptions"] = {
				{
					["width"] = 2,
					["type"] = "select",
					["default"] = 1,
					["name"] = "Roll the Bones: Display",
					["useDesc"] = true,
					["key"] = "dropdown",
					["values"] = {
						"Description", -- [1]
						"Cooldown", -- [2]
						"Nothing", -- [3]
					},
					["desc"] = "Select what you want to show on your Roll the Bones buff.",
				}, -- [1]
			},
			["config"] = {
				["dropdown"] = 1,
			},
			["inverse"] = false,
			["desc"] = "",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.40000003576279, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [3]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["True Bearing"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -85,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"193359", -- [1]
						},
						["matchesShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							193356, -- [1]
						},
						["useName"] = true,
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["ownOnly"] = true,
						["names"] = {
							"Broadside", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["events"] = "LUXTHOS_EVENT",
						["custom_type"] = "status",
						["check"] = "event",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 1\nend",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Health",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["custom"] = "function()\n    return aura_env.config[\"dropdown\"] == 2\nend",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["events"] = "LUXTHOS_EVENT",
						["unit"] = "player",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "unit",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["use_inverse"] = true,
						["event"] = "Cast",
						["unit"] = "player",
						["duration"] = "1",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t) return t[1] and t[4] end",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "CDR",
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
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 17,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 20,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spellknown"] = 315508,
				["zoneIds"] = "",
			},
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -75,
			["useTooltip"] = true,
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.40000003576279, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "buffed",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_color",
						}, -- [1]
					},
				}, -- [3]
			},
			["regionType"] = "icon",
			["parent"] = "Rogue Core - Luxthos",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["uid"] = "kk0XkLhai(T",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["authorOptions"] = {
				{
					["width"] = 2,
					["type"] = "select",
					["default"] = 1,
					["name"] = "Roll the Bones: Display",
					["useDesc"] = true,
					["key"] = "dropdown",
					["values"] = {
						"Description", -- [1]
						"Cooldown", -- [2]
						"Nothing", -- [3]
					},
					["desc"] = "Select what you want to show on your Roll the Bones buff.",
				}, -- [1]
			},
			["auto"] = true,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.0.7",
			["tocversion"] = 90002,
			["id"] = "True Bearing",
			["zoom"] = 0.33,
			["alpha"] = 1,
			["width"] = 46,
			["desc"] = "",
			["config"] = {
				["dropdown"] = 1,
			},
			["inverse"] = false,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["displayIcon"] = 1393014,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = false,
		},
		["Finality: Eviscerate"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"340600", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["combineMode"] = "showHighest",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["ownOnly"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spec"] = true,
				["level"] = "60",
				["size"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["item_bonusid_equipped"] = "7123",
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["use_spellknown"] = false,
				["use_vehicleUi"] = false,
				["level_operator"] = "==",
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_item_bonusid_equipped"] = true,
				["zoneIds"] = "",
			},
			["uid"] = "vW6WawVm0Fn",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Finality: Eviscerate",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Cheap Tricks"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"213995", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["use_totemName"] = true,
						["combineMode"] = "showHighest",
						["use_genericShowOn"] = true,
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["useName"] = true,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "35",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["ownOnly"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 27,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["zoneIds"] = "",
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["single"] = 5,
					["multi"] = {
						[5] = true,
					},
				},
				["use_vehicle"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_level"] = false,
				["level_operator"] = "==",
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
					},
				},
				["level"] = "60",
				["spellknown"] = 212035,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "a3sa84()u2L",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["url"] = "https://wago.io/H1n5_pf4X/27",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Dynamic - Luxthos",
			["useTooltip"] = true,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "2.0.2",
			["tocversion"] = 90002,
			["id"] = "Cheap Tricks",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 35,
			["zoom"] = 0.3,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Symbols of Death"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"212283", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Symbols of Death",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["spellName"] = 212283,
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 212283,
				["zoneIds"] = "",
			},
			["zoom"] = 0.3,
			["config"] = {
			},
			["xOffset"] = 25,
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["regionType"] = "icon",
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [4]
			},
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["width"] = 46,
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Symbols of Death",
			["semver"] = "2.0.7",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["uid"] = "vYr6GG1KPqL",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Rogue Core - Luxthos",
		},
		["Serrated Bone Spike"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 32,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 328547,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Serrated Bone Spike",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"324073", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "nameplate",
						["group_countOperator"] = ">",
						["fetchTooltip"] = false,
						["useMatch_count"] = false,
						["group_count"] = "0",
						["type"] = "aura2",
						["useGroup_count"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t) return t[1] end",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.88627450980392, -- [2]
						0.76862745098039, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 18,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%2.unitCount",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.3843137254902, -- [2]
						0.3843137254902, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_text_format_2.unitCount_format"] = "none",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontType"] = "OUTLINE",
					["text_anchorYOffset"] = 4,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 313347,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -157,
			["regionType"] = "icon",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.7",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Serrated Bone Spike",
			["alpha"] = 1,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "4gMevYRujfO",
			["inverse"] = true,
			["parent"] = "Rogue Core - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "3",
						["variable"] = "charges",
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = ">=",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = ">=",
								["value"] = "1",
								["variable"] = "charges",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "3",
								["variable"] = "charges",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["property"] = "cooldownSwipe",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "0",
						["variable"] = "charges",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [3]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "BOTTOMRIGHT",
		},
		["PVP: AB Callout Bar"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"PVP: AB Callout Count Enemies", -- [1]
				"PVP: AB Callout Incoming 1", -- [2]
				"PVP: AB Callout Incoming 2", -- [3]
				"PVP: AB Callout Incoming 3", -- [4]
				"PVP: AB Callout Incoming 4+", -- [5]
				"PVP: AB Callout Clear", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 290,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = false,
			["align"] = "CENTER",
			["desc"] = "Set of clickable buttons to announce enemy count or incoming at the base you're currently at.",
			["rotation"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["borderInset"] = 1,
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["fullCircle"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 240,
			["animate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["scale"] = 1,
			["space"] = 5,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["selfPoint"] = "LEFT",
			["arcLength"] = 360,
			["constantFactor"] = "RADIUS",
			["gridType"] = "RD",
			["borderOffset"] = 4,
			["semver"] = "1.0.0",
			["tocversion"] = 11304,
			["id"] = "PVP: AB Callout Bar",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["config"] = {
			},
			["internalVersion"] = 44,
			["uid"] = "hN)7qTsKOYh",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["stagger"] = 0,
		},
		["Alpha Options - Rogue"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
				{
					["type"] = "range",
					["useDesc"] = true,
					["max"] = 1,
					["step"] = 0.05,
					["width"] = 2,
					["min"] = 0,
					["key"] = "ooc-alpha",
					["default"] = 1,
					["name"] = "Out of Combat Alpha",
					["desc"] = "Change the alpha of the groups when out of combat.",
				}, -- [1]
				{
					["type"] = "toggle",
					["key"] = "enemy-alpha",
					["width"] = 1,
					["name"] = "Ignore on Enemy Target",
					["useDesc"] = true,
					["default"] = true,
					["desc"] = "Enable to show full opacity on enemy target.",
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "friendly-alpha",
					["width"] = 1,
					["name"] = "Ignore on Friendly Target",
					["useDesc"] = true,
					["default"] = true,
					["desc"] = "Enable to show full opacity on friendly target.",
				}, -- [3]
			},
			["displayText"] = "Alpha Options - Luxthos",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["shadowXOffset"] = 1,
			["regionType"] = "icon",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 90002,
			["alpha"] = 0,
			["uid"] = "G7gFbvYLyLz",
			["displayIcon"] = 134520,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["use_eventtype"] = true,
						["type"] = "custom",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["custom"] = "function(event, ...)\n    local data = WeakAuras.GetData(aura_env.id)\n    local frame = WeakAuras.GetRegion(data.parent)\n    \n    if frame then\n        local alpha = 1\n        local cfgAlpha = aura_env.config\n        \n        if not UnitAffectingCombat(\"player\") then\n            alpha = cfgAlpha[\"ooc-alpha\"]\n        end\n        \n        if UnitExists(\"target\") then\n            local isEnemy = UnitCanAttack(\"player\", \"target\") or UnitIsEnemy(\"player\", \"target\")\n            \n            if (not isEnemy and cfgAlpha[\"friendly-alpha\"]) or (isEnemy and cfgAlpha[\"enemy-alpha\"]) then\n                alpha = 1\n            end\n        end\n        \n        frame:SetAlpha(alpha)\n        \n        return true\n    end\n    \n    return false\nend\n\n\n",
						["events"] = "PLAYER_ENTERING_WORLD PLAYER_REGEN_ENABLED PLAYER_REGEN_DISABLED PLAYER_TARGET_CHANGED PLAYER_ALIVE PLAYER_DEAD PLAYER_UNGHOST",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["discrete_rotation"] = 0,
			["version"] = 46,
			["subRegions"] = {
			},
			["height"] = 32,
			["rotate"] = true,
			["fontSize"] = 12,
			["mirror"] = false,
			["cooldownTextDisabled"] = false,
			["information"] = {
			},
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["semver"] = "2.0.7",
			["displayText_format_p_time_precision"] = 1,
			["displayText_format_p_time_dynamic"] = false,
			["automaticWidth"] = "Auto",
			["config"] = {
				["ooc-alpha"] = 1,
				["enemy-alpha"] = false,
				["friendly-alpha"] = false,
			},
			["justify"] = "LEFT",
			["icon"] = true,
			["id"] = "Alpha Options - Rogue",
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["desc"] = "",
			["fixedWidth"] = 200,
			["inverse"] = false,
			["width"] = 32,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Rogue Core - Luxthos",
		},
		["Inscrutable Quantum Device CC Break"] = {
			["iconSource"] = 0,
			["color"] = {
				0, -- [1]
				0.019607843137255, -- [2]
				0.96862745098039, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25.00006103515625,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["type"] = "unit",
						["use_health"] = false,
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["percenthealth"] = "20",
						["event"] = "Crowd Controlled",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["auraspellids"] = {
							"330366", -- [1]
						},
						["unit"] = "target",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "<=",
						["use_controlled"] = true,
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "item",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["itemName"] = 179350,
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["event"] = "Cooldown Progress (Item)",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "BREAK",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = 5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "CC",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = -6,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["use_vehicle"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["itemtypeequipped"] = {
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 282,
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["displayIcon"] = 2000857,
			["uid"] = "vkNzxU(fgF1",
			["frameStrata"] = 5,
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device CC Break",
			["width"] = 48,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Inscrutable Quantum Device",
		},
		["Inscrutable Quantum Device Mana"] = {
			["iconSource"] = 0,
			["color"] = {
				0, -- [1]
				0.019607843137255, -- [2]
				0.96862745098039, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["percenthealth_operator"] = "<=",
						["use_power"] = false,
						["names"] = {
						},
						["use_unit"] = true,
						["unit"] = "party",
						["role"] = "HEALER",
						["subeventPrefix"] = "SPELL",
						["use_ignoreDisconnected"] = true,
						["useExactSpellId"] = true,
						["power"] = "20",
						["auraspellids"] = {
							"330366", -- [1]
						},
						["use_controlled"] = true,
						["use_role"] = true,
						["type"] = "unit",
						["use_health"] = false,
						["subeventSuffix"] = "_CAST_START",
						["power_operator"] = "<",
						["percenthealth"] = "20",
						["event"] = "Power",
						["use_percentpower"] = true,
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_ignoreDead"] = true,
						["duration"] = "1",
						["use_percenthealth"] = true,
						["percentpower"] = "20",
						["percentpower_operator"] = "<",
					},
					["untrigger"] = {
						["unit"] = "party",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "item",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["itemName"] = 179350,
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["event"] = "Cooldown Progress (Item)",
						["use_track"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "GRANT",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = 5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MANA",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = -5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["information"] = {
			},
			["displayIcon"] = 2000857,
			["uid"] = "9HqDmiFNMmk",
			["frameStrata"] = 4,
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Mana",
			["width"] = 48,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "Inscrutable Quantum Device",
		},
		["Inscrutable Quantum Device Haste"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -25,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"330368", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_abbreviate"] = false,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_gcd_channel"] = false,
					["text_text_format_p_decimal_precision"] = 1,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Expressway",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "Haste",
					["text_text_format_p_gcd_cast"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 1,
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_text_format_p_abbreviate"] = false,
					["type"] = "subtext",
					["text_font"] = "Expressway",
					["text_anchorYOffset"] = -5,
					["text_fontType"] = "OUTLINE",
					["text_justify"] = "CENTER",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_text_format_p_abbreviate_max"] = 8,
					["text_text_format_p_big_number_format"] = "AbbreviateNumbers",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["item_bonusid_equipped"] = "Inscrutable Quantum Device",
				["class"] = {
					["multi"] = {
					},
				},
				["itemtypeequipped"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 179350,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["use_item_bonusid_equipped"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 280,
			["regionType"] = "icon",
			["parent"] = "Inscrutable Quantum Device",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["information"] = {
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "IJyvTnXtusT",
			["zoom"] = 0.32,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device Haste",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 48,
			["frameStrata"] = 3,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["Shane"] = {
			["iconSource"] = -1,
			["parent"] = "Rogue Core - Luxthos",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"315496", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_matchedRune"] = false,
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["spellName"] = 315496,
						["realSpellName"] = "Slice and Dice",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 46,
			["subRegions"] = {
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
					["glowScale"] = 1,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 46,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[3] = true,
					},
				},
				["use_spec"] = true,
				["spellknown"] = 315496,
				["zoneIds"] = "",
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["uid"] = "zjtMt7NXM)l",
			["url"] = "https://wago.io/HJe5_pfNm/46",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "",
			["xOffset"] = 75,
			["selfPoint"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Shane",
			["semver"] = "2.0.7",
			["alpha"] = 1,
			["width"] = 46,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 0.7,
							["property"] = "zoom",
						}, -- [5]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["op"] = "<=",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<=",
								["variable"] = "expirationTime",
								["value"] = "11",
							}, -- [2]
						},
						["value"] = "11",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
					},
				}, -- [5]
			},
			["cooldown"] = true,
			["internalVersion"] = 44,
		},
		["Feint"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "49206",
						["auranames"] = {
							"1966", -- [1]
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["duration"] = "35",
						["use_genericShowOn"] = true,
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "aura2",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["spellName"] = 0,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["totemName"] = "27829",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["ownOnly"] = true,
						["use_totemName"] = true,
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["track"] = "auto",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["unit"] = "player",
						["spellName"] = 1966,
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Feint",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnCooldown",
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 21,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 35,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
						[3] = true,
					},
				},
				["use_class"] = true,
				["use_spellknown"] = true,
				["use_vehicleUi"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spellknown"] = 1966,
				["zoneIds"] = "",
			},
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["regionType"] = "icon",
			["url"] = "https://wago.io/r1ViuTz47/21",
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["useTooltip"] = true,
			["semver"] = "2.0.3",
			["width"] = 35,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "Feint",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["uid"] = "yZCazWU6Fl)",
			["inverse"] = true,
			["parent"] = "Rogue Utilities - Luxthos",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "buttonOverlay",
							["property"] = "sub.1.glowType",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "incombat",
						["value"] = 0,
					},
					["changes"] = {
						{
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = 0.3,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "cooldownEdge",
						}, -- [1]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.1.glow",
						}, -- [1]
						{
							["value"] = "ACShine",
							["property"] = "sub.1.glowType",
						}, -- [2]
						{
							["property"] = "desaturate",
						}, -- [3]
						{
							["property"] = "inverse",
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
					},
				}, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Wicked Mark"] = {
			["iconSource"] = -1,
			["xOffset"] = -44,
			["preferToUpdate"] = false,
			["yOffset"] = 134,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/B-Tv9R72W/3",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\ElvUI\\Media\\Sounds\\DumbShit.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"333377", -- [1]
						},
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "GET OUT WITH BLADE",
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
					["text_anchorXOffset"] = 85,
					["text_color"] = {
						0, -- [1]
						0.92941176470588, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 39,
					["anchorXOffset"] = 0,
					["text_fontType"] = "THICKOUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64.000099182129,
			["load"] = {
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2417",
				["zoneIds"] = "",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["parent"] = "Wicked Blade Group",
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 90005,
			["id"] = "Wicked Mark",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 67.333457946777,
			["uid"] = "0di7)sWhP9q",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Inscrutable Quantum Device"] = {
			["controlledChildren"] = {
				"Inscrutable Quantum Device Available", -- [1]
				"Inscrutable Quantum Device CD", -- [2]
				"Inscrutable Quantum Device CC Break", -- [3]
				"Inscrutable Quantum Device Heal", -- [4]
				"Inscrutable Quantum Device Mana", -- [5]
				"Inscrutable Quantum Device Execute", -- [6]
				"Inscrutable Quantum Device Crit", -- [7]
				"Inscrutable Quantum Device Haste", -- [8]
				"Inscrutable Quantum Device Mastery", -- [9]
				"Inscrutable Quantum Device Versa", -- [10]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -368.9997863769531,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/G_ZnwseH-/6",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 44,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 6,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.5",
			["tocversion"] = 90002,
			["id"] = "Inscrutable Quantum Device",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 82.99951171875,
			["uid"] = "i7it7)Ri4Ik",
			["selfPoint"] = "BOTTOMLEFT",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
			},
			["config"] = {
			},
		},
		["Wicked Laceration Mult Stack"] = {
			["iconSource"] = -1,
			["xOffset"] = 20,
			["preferToUpdate"] = false,
			["yOffset"] = 265,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/B-Tv9R72W/3",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shipswhistle.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["stacksOperator"] = ">",
						["auraspellids"] = {
							"333913", -- [1]
						},
						["event"] = "Health",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["stacks"] = "2",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["useStacks"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 44,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 3,
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
					["text_anchorXOffset"] = -3,
					["text_color"] = {
						0, -- [1]
						0.81176470588235, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = -4,
					["text_fontSize"] = 58,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "ACShine",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0.007843137254902, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 2.25,
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 23,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "BLEEDING",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 122,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_shadowYOffset"] = 0,
					["text_color"] = {
						0.78039215686275, -- [1]
						0, -- [2]
						0.03921568627451, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 40,
					["text_visible"] = true,
					["text_wordWrap"] = "Elide",
					["text_fontType"] = "THICKOUTLINE",
					["text_anchorPoint"] = "OUTER_TOP",
					["text_shadowColor"] = {
						1, -- [1]
						0.93725490196078, -- [2]
						0.94117647058824, -- [3]
						1, -- [4]
					},
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 52,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
			},
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["icon"] = true,
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["parent"] = "Wicked Blade Group",
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 90005,
			["id"] = "Wicked Laceration Mult Stack",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 64,
			["uid"] = "l(eFt3sFc0v",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["lastArchiveClear"] = 1601313769,
	["minimap"] = {
		["minimapPos"] = 126.869819244542,
		["hide"] = false,
	},
	["lastUpgrade"] = 1615349120,
	["dbVersion"] = 44,
	["clearOldHistory"] = 30,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -1170.000793457031,
		["width"] = 750,
		["height"] = 1066.00048828125,
		["yOffset"] = -24,
	},
	["editor_theme"] = "Monokai",
}
