
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["editor_font_size"] = 12,
	["lastArchiveClear"] = 1598388753,
	["minimap"] = {
		["minimapPos"] = 291.322981922309,
		["hide"] = false,
	},
	["lastUpgrade"] = 1696781878,
	["dbVersion"] = 68,
	["registered"] = {
	},
	["displays"] = {
		["gcd"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.97254901960784, -- [1]
				1, -- [2]
				0.9843137254902, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["backgroundTexture"] = "450915",
			["sameTexture"] = true,
			["url"] = "https://wago.io/SyzhSDGUb/2",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "spell",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Global Cooldown",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 68,
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
					["easeType"] = "none",
					["preset"] = "fade",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 30,
			["crop_x"] = 0.41,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "cursor circles",
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["crop_y"] = 0.41,
			["startAngle"] = 0,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["config"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["auraRotation"] = 0,
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "MOUSE",
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["fontSize"] = 12,
			["tocversion"] = 80300,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.0",
			["compress"] = false,
			["id"] = "gcd",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 5,
			["width"] = 30,
			["xOffset"] = 0,
			["uid"] = "CcrtPjppgg)",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["Resist Fire"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -427.139793396,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
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
						["use_destFlags2"] = false,
						["spellId"] = {
							"15123", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["debuffType"] = "HELPFUL",
						["spellName"] = {
							"Resist Fire", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["unit"] = "player",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_DISPEL",
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["extraSpellName"] = "Resist Fire",
						["use_spellId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_destUnit"] = false,
						["sourceUnit"] = "pet",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_extraSpellName"] = true,
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["extraSpellName"] = "Resist Fire",
						["use_sourceUnit"] = true,
						["type"] = "combatlog",
						["use_cloneId"] = false,
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_DISPEL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
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
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
				}, -- [2]
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
						["SHAMAN"] = true,
						["WARLOCK"] = true,
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["config"] = {
			},
			["parent"] = "World Buff Purge",
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["regionType"] = "icon",
			["cooldown"] = false,
			["displayIcon"] = 135806,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -329.95526123047,
			["width"] = 1,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Resist Fire",
			["auto"] = false,
			["alpha"] = 0,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "zMEnDr7(EGD",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%1.destName is heading back to UBRS for %1.extraSpellName peepoParty",
								["message_format_1.extraSpellName_format"] = "none",
								["message_format_1.destName_format"] = "none",
								["message_type"] = "GUILD",
								["message_dest"] = "rukk",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%2.destName is heading back to UBRS for %2.extraSpellName peepoParty",
								["message_format_2.extraSpellName_format"] = "none",
								["message_type"] = "GUILD",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
		},
		["PVP: AB Callout Incoming 4+"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message_type"] = "RAID_WARNING",
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_4p\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\">>> %s 4+ inc <<<\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["custom"] = "function()\n    return true\nend\n\n\n",
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
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
				}, -- [2]
			},
			["height"] = 32,
			["load"] = {
				["zoneIds"] = "",
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Arathi Basin",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["icon"] = true,
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["regionType"] = "icon",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["config"] = {
			},
			["anchorFrameParent"] = false,
			["width"] = 32,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 4+",
			["auto"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "orJHJQe)ZlC",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132486,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
		},
		["Restoration Pot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 9030,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 9030,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["count"] = "1",
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text1Enabled"] = true,
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text2Enabled"] = true,
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["level_operator"] = {
					">", -- [1]
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["useTooltip"] = false,
			["text2Containment"] = "INSIDE",
			["cooldownTextDisabled"] = false,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Restoration Pot",
			["text1Font"] = "ABF",
			["alpha"] = 1,
			["width"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "YGCe2gMVdcX",
			["inverse"] = true,
			["desaturate"] = false,
			["text2"] = "%p",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["Grilled Squid 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 13928,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["alpha"] = 1,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1Containment"] = "INSIDE",
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["zoom"] = 0,
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["text1Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Grilled Squid 2",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["useCooldownModRate"] = true,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["uid"] = "HGVinrMD)DL",
			["inverse"] = false,
			["anchorFrameParent"] = false,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Songflower Serenade"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -427.139793396,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/8ncUU5-Pi/4",
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
						["use_extraSpellName"] = true,
						["spellId"] = {
							"15123", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["unit"] = "player",
						["spellName"] = {
							"Resist Fire", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_DISPEL",
						["unevent"] = "timed",
						["debuffType"] = "HELPFUL",
						["event"] = "Combat Log",
						["extraSpellName"] = "Songflower Serenade",
						["use_spellId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_destFlags2"] = false,
						["use_destUnit"] = false,
						["sourceUnit"] = "pet",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["extraSpellName"] = "Songflower Serenade",
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_cloneId"] = false,
						["sourceUnit"] = "player",
						["unevent"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
				}, -- [2]
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
						["SHAMAN"] = true,
						["WARLOCK"] = true,
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["uid"] = "MBfu0pXyr5Z",
			["parent"] = "World Buff Purge",
			["icon"] = true,
			["regionType"] = "icon",
			["cooldown"] = false,
			["displayIcon"] = 135934,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -329.95526123047,
			["width"] = 1,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Songflower Serenade",
			["auto"] = false,
			["alpha"] = 0,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%1.destName used to have %1.extraSpellName peepoPogPoo",
								["message_format_1.extraSpellName_format"] = "none",
								["message_format_1.destName_format"] = "none",
								["message_type"] = "GUILD",
								["message_dest"] = "rukk",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%2.destName used to have %2.extraSpellName peepoPogPoo",
								["message_format_2.extraSpellName_format"] = "none",
								["message_type"] = "GUILD",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
		},
		["Slip'kik's Savvy"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -427.139793396,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
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
						["use_destFlags2"] = false,
						["spellId"] = {
							"15123", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["spellName"] = {
							"Resist Fire", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["auraType"] = "BUFF",
						["unevent"] = "timed",
						["unit"] = "player",
						["event"] = "Combat Log",
						["extraSpellName"] = "Slip'kik's Savvy",
						["use_spellId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_destUnit"] = false,
						["sourceUnit"] = "pet",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["extraSpellName"] = "Slip'kik's Savvy",
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_cloneId"] = false,
						["sourceUnit"] = "player",
						["unevent"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
				}, -- [2]
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
						["SHAMAN"] = true,
						["WARLOCK"] = true,
						["PRIEST"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "jxkhRI)kHlX",
			["parent"] = "World Buff Purge",
			["icon"] = true,
			["regionType"] = "icon",
			["cooldown"] = false,
			["displayIcon"] = 135930,
			["xOffset"] = -329.95526123047,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 1,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Slip'kik's Savvy",
			["auto"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%1.destName says goodbye to %1.extraSpellName peepoBlush",
								["message_format_1.extraSpellName_format"] = "none",
								["message_format_1.destName_format"] = "none",
								["message_type"] = "GUILD",
								["message_dest"] = "rukk",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%2.destName says goodbye to %2.extraSpellName peepoBlush",
								["message_format_2.extraSpellName_format"] = "none",
								["message_type"] = "GUILD",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
		},
		["PVP: AB Callout Incoming 3"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message_type"] = "RAID_WARNING",
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_3\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 3 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
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
			["internalVersion"] = 68,
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
					["type"] = "subbackground",
				}, -- [1]
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
				}, -- [2]
			},
			["height"] = 32,
			["load"] = {
				["zoneIds"] = "",
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Arathi Basin",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["icon"] = true,
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["regionType"] = "icon",
			["conditions"] = {
			},
			["url"] = "https://wago.io/GZL1eMszV/1",
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["uid"] = "S6llDhplL7o",
			["anchorFrameParent"] = false,
			["width"] = 32,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 3",
			["auto"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132486,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Mana Bar + Tick"] = {
			["controlledChildren"] = {
				"Mana 5SecondRule + Ticks", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/CrTv_xPBX/4",
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 68,
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
			["desc"] = "https://wago.io/CrTv_xPBX",
			["version"] = 4,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = "false",
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Mana Bar + Tick",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["uid"] = "MokMSWGOJRe",
		},
		["Melee Range Reminder"] = {
			["outline"] = "OUTLINE",
			["wagoID"] = "Noeo3Gn5Q",
			["authorOptions"] = {
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    \n    if not aura_env.last or aura_env.last < GetTime() - 0.1 then\n        aura_env.last = GetTime()\n        \n        if UnitExists(\"target\") then\n            if not IsItemInRange(16114, \"target\") then --not in melee range\n                aura_env.displayText = \"TOO FAR\"\n            elseif IsCurrentSpell(6603) == false then --auto attack is not queued\n                aura_env.displayText = \"NOT ATTACKING\"\n                \n            elseif not (aura_env.states[2].show -- no swings for 5s\n                or (aura_env.states[3].show and aura_env.states[4].show)) -- or bear druid mauls\n            then\n                aura_env.displayText = \"HAVE NOT ATTACKED\"\n                \n            else\n                aura_env.displayText = \"\"\n            end\n        end\n        \n    end\n    \n    return aura_env.displayText\n    \nend\n\n\n",
			["yOffset"] = -20,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Noeo3Gn5Q/11",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.displayText=\"\"",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_incombat"] = true,
						["unevent"] = "auto",
						["percenthealth"] = "0",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "target",
						["use_percenthealth"] = true,
						["percenthealth_operator"] = ">",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["subeventSuffix"] = "_DAMAGE",
						["duration"] = "5",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SWING",
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = {
							48480, -- [1]
						},
						["subeventSuffix"] = "_DAMAGE",
						["duration"] = "5",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["use_sourceUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["spellId"] = 48480,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["unit"] = "player",
						["subeventSuffix"] = "_DAMAGE",
						["use_track"] = true,
						["duration"] = "5",
						["event"] = "Spell Known",
						["use_exact_spellName"] = true,
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["useExactSpellId"] = true,
						["use_sourceUnit"] = true,
						["auraspellids"] = {
							"9634", -- [1]
						},
						["use_spellName"] = true,
						["sourceUnit"] = "player",
						["spellName"] = 48480,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["selfPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["version"] = 11,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_namerealm"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["use_vehicleUi"] = false,
				["zoneIds"] = "",
				["namerealm"] = "Wherefore",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["SHAMAN"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 46,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
				},
				["main"] = {
					["type"] = "preset",
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
			["color"] = {
				1, -- [1]
				0.011764705882353, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["xOffset"] = 0,
			["automaticWidth"] = "Auto",
			["semver"] = "1.0.10",
			["tocversion"] = 30402,
			["id"] = "Melee Range Reminder",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "CENTER",
			["uid"] = "lkSi86zoX(F",
			["wordWrap"] = "WordWrap",
			["shadowYOffset"] = -1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayText_format_c_format"] = "none",
		},
		["cursor circles"] = {
			["controlledChildren"] = {
				"cast time", -- [1]
				"gcd", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/SyzhSDGUb/2",
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
						["type"] = "unit",
						["use_alwaystrue"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 2,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["semver"] = "1.0.0",
			["tocversion"] = 80300,
			["id"] = "cursor circles",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "7RRYBMXOExP",
			["borderInset"] = 11,
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
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["config"] = {
			},
		},
		["Mol'dar's Moxie"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -427.139793396,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
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
						["use_destFlags2"] = false,
						["spellId"] = {
							"15123", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["spellName"] = {
							"Resist Fire", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["unit"] = "player",
						["unevent"] = "timed",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_DISPEL",
						["event"] = "Combat Log",
						["extraSpellName"] = "Mol'dar's Moxie",
						["use_spellId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_destUnit"] = false,
						["sourceUnit"] = "pet",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["extraSpellName"] = "Mol'dar's Moxie",
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_cloneId"] = false,
						["sourceUnit"] = "player",
						["unevent"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
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
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
				}, -- [2]
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
						["SHAMAN"] = true,
						["WARLOCK"] = true,
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["uid"] = "0p1(WRnib5Z",
			["parent"] = "World Buff Purge",
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["regionType"] = "icon",
			["cooldown"] = false,
			["displayIcon"] = 136054,
			["xOffset"] = -329.95526123047,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 1,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Mol'dar's Moxie",
			["auto"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%1.destName is now without %1.extraSpellName peepoKEKW",
								["message_format_1.extraSpellName_format"] = "none",
								["message_format_1.destName_format"] = "none",
								["message_type"] = "GUILD",
								["message_dest"] = "rukk",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%2.destName is now without %2.extraSpellName peepoKEKW",
								["message_format_2.extraSpellName_format"] = "none",
								["message_type"] = "GUILD",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
		},
		["cast time"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				0.77647058823529, -- [2]
				0.07843137254902, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["desaturateForeground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/SyzhSDGUb/2",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Cast",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellNames"] = {
							"Soothing Mist", -- [1]
						},
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Cast",
						["duration"] = "1",
						["use_spellNames"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["genericShowOn"] = "showOnActive",
						["type"] = "combatlog",
						["use_messageType"] = true,
						["subeventSuffix"] = "_CAST_FAILED",
						["unit"] = "player",
						["duration"] = "0.3",
						["message_operator"] = "==",
						["subeventPrefix"] = "SPELL",
						["message"] = "Interrupted",
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["use_sourceUnit"] = true,
						["use_message"] = true,
						["use_unit"] = true,
						["sourceUnit"] = "player",
						["messageType"] = "CHAT_MSG_SYSTEM",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return ((trigger[1] or trigger[3]) and not trigger[2]) \nend\n\n\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 68,
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
					["easeType"] = "none",
					["preset"] = "fade",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
			},
			["anchorPoint"] = "CENTER",
			["parent"] = "cursor circles",
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 40,
			["crop_x"] = 0.41,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["authorOptions"] = {
			},
			["startAngle"] = 0,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["config"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["auraRotation"] = 0,
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "MOUSE",
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["textureWrapMode"] = "CLAMP",
			["compress"] = false,
			["crop_y"] = 0.41,
			["semver"] = "1.0.0",
			["tocversion"] = 80300,
			["id"] = "cast time",
			["backgroundTexture"] = "450915",
			["frameStrata"] = 5,
			["width"] = 40,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["uid"] = "9CO)4JNGEAT",
			["inverse"] = true,
			["xOffset"] = 0,
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.011764705882353, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["Warrior - 2: Defensive Consumes"] = {
			["grow"] = "GRID",
			["controlledChildren"] = {
				"Titans", -- [1]
				"Greater Stoneshield", -- [2]
				"Greater Fire Pot", -- [3]
				"Greater Shadow", -- [4]
				"Greater Nature", -- [5]
				"Greater Frost", -- [6]
				"Greater Arcane Pot", -- [7]
				"Fortitude", -- [8]
				"Restoration Pot", -- [9]
				"Defense", -- [10]
				"Lung Juice", -- [11]
				"Tender Wolf Steak", -- [12]
				"Monster Omelet", -- [13]
				"Blessed Sunfruit ", -- [14]
				"Smoked Desert Dumplings", -- [15]
				"Dirge's Kickin", -- [16]
				"JUJU EMBER", -- [17]
				"SWIFTNESS", -- [18]
				"Spirit", -- [19]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 149.362665474974,
			["preferToUpdate"] = false,
			["yOffset"] = -593.892149664392,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["background"] = "None",
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
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["backgroundInset"] = 0,
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
			["align"] = "CENTER",
			["uid"] = "p8eJxOa7eVw",
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["rotation"] = 0,
			["stagger"] = 0,
			["version"] = 3,
			["subRegions"] = {
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["radius"] = 200,
			["load"] = {
				["use_class"] = "false",
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useLimit"] = false,
			["animate"] = false,
			["space"] = 0,
			["scale"] = 0.45,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["limit"] = 5,
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["frameStrata"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Warrior - 2: Defensive Consumes",
			["internalVersion"] = 68,
			["gridWidth"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["gridType"] = "DR",
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["arcLength"] = 360,
		},
		["Dense Sharpening Stone"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12404,
						["type"] = "item",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 12404,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
			["internalVersion"] = 68,
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
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["xOffset"] = 0,
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Enabled"] = true,
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["useTooltip"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["semver"] = "1.0.1",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Dense Sharpening Stone",
			["text2Font"] = "Friz Quadrata TT",
			["useCooldownModRate"] = true,
			["width"] = 64,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["uid"] = "8JUe4v4Pq(k",
			["inverse"] = true,
			["text2"] = "%p",
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["alpha"] = 1,
		},
		["Blessed Sunfruit "] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["alpha"] = 1,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 13810,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["count"] = "1",
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["useTooltip"] = false,
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["cooldown"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["authorMode"] = true,
			["auto"] = true,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 68,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["uid"] = "ErEppFHrs(7",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Blessed Sunfruit ",
			["text2"] = "%p",
			["text2Enabled"] = true,
			["width"] = 64,
			["anchorFrameParent"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["Elemental Sharpening Stone"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 18262,
						["type"] = "item",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 18262,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["useCooldownModRate"] = true,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["semver"] = "1.0.1",
			["width"] = 64,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["useTooltip"] = false,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Elemental Sharpening Stone",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "yNI8W(dVdi6",
			["inverse"] = true,
			["zoom"] = 0,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["alpha"] = 1,
		},
		["Warrior CD Useage Use CD"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"USE DEATHWISH", -- [1]
				"USE EARTHSTRIKE ", -- [2]
				"Diamond flask", -- [3]
				"Reck", -- [4]
				"Bloodfury", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 245.728515625,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
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
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 68,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
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
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "TOP",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sort"] = "none",
			["animate"] = false,
			["anchorPoint"] = "CENTER",
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["space"] = 2,
			["grow"] = "DOWN",
			["constantFactor"] = "RADIUS",
			["uid"] = "JSBd)j7pBiN",
			["borderOffset"] = 4,
			["xOffset"] = 167.505920410156,
			["tocversion"] = 11305,
			["id"] = "Warrior CD Useage Use CD",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 1,
			["rotation"] = 0,
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["radius"] = 200,
		},
		["dense dynamite"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 18641,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_unit"] = true,
						["unit"] = "player",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 18641,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["count"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["text2"] = "%p",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useTooltip"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["cooldownTextDisabled"] = false,
			["text2Containment"] = "INSIDE",
			["auto"] = true,
			["text1Font"] = "ABF",
			["text1Containment"] = "INSIDE",
			["authorOptions"] = {
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["uid"] = "sJb0sGNe6L6",
			["text2FontSize"] = 31,
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2Enabled"] = true,
			["internalVersion"] = 68,
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "dense dynamite",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useCooldownModRate"] = true,
			["width"] = 64,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = true,
			["text1Enabled"] = true,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
		},
		["SWIFTNESS"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 20081,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["count"] = "1",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["text2Font"] = "Friz Quadrata TT",
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text2Enabled"] = true,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Containment"] = "INSIDE",
			["useTooltip"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["level_operator"] = {
					">", -- [1]
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["authorMode"] = true,
			["auto"] = true,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["uid"] = "fKDfEQ0bK8j",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 31,
			["width"] = 64,
			["alpha"] = 1,
			["text1"] = "%s",
			["internalVersion"] = 68,
			["text1Font"] = "ABF",
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "SWIFTNESS",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["anchorFrameParent"] = false,
			["xOffset"] = -490,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
		},
		["Healthstone 3"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 1: Recovery Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 19013,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["count"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["authorOptions"] = {
			},
			["icon"] = true,
			["stickyDuration"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 68,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["text1Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text1Font"] = "ABF",
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Healthstone 3",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["width"] = 64,
			["desaturate"] = false,
			["uid"] = "OR3iIgV(RtN",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Enabled"] = true,
		},
		["Greater Stoneshield"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13455,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13455,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["use_unit"] = true,
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["useCooldownModRate"] = true,
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["xOffset"] = -490,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["internalVersion"] = 68,
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["uid"] = "zYYBoUmvFNX",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Stoneshield",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["text2"] = "%p",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["USE DEATHWISH"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "\n",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["messageType"] = "CHAT_MSG_RAID",
						["subeventSuffix"] = "",
						["names"] = {
						},
						["duration"] = "4",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "12328",
						["subeventPrefix"] = "",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["unevent"] = "timed",
						["use_messageType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 68,
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
			["justify"] = "LEFT",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["wordWrap"] = "WordWrap",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DEATH WISH NOW ",
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
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["cooldown"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["displayIcon"] = 136146,
			["preferToUpdate"] = false,
			["fontSize"] = 12,
			["yOffset"] = 0,
			["parent"] = "Warrior CD Useage Use CD",
			["shadowXOffset"] = 1,
			["config"] = {
			},
			["displayText_format_p_time_dynamic"] = false,
			["width"] = 64,
			["regionType"] = "icon",
			["alpha"] = 1,
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["anchorFrameParent"] = false,
			["cooldownTextDisabled"] = false,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "USE DEATHWISH",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "nZlyvkhxfzm",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["message"] = "243175",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bam.ogg",
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
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
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["automaticWidth"] = "Auto",
		},
		["SAND"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 19183,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 19183,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useTooltip"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["zoom"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["uid"] = "jca8BSmUqTR",
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["width"] = 64,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "SAND",
			["internalVersion"] = 68,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.1",
			["config"] = {
			},
			["inverse"] = true,
			["text2"] = "%p",
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
		},
		["Healthstone 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 19012,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["text2Enabled"] = true,
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Font"] = "ABF",
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["width"] = 64,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Healthstone 2",
			["useTooltip"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["uid"] = "HWTXbzsrEON",
			["inverse"] = false,
			["anchorFrameParent"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 1: Recovery Consumes",
		},
		["Defense"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13445,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13445,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["desaturate"] = false,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorMode"] = true,
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 68,
			["text1Font"] = "ABF",
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["width"] = 64,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Defense",
			["xOffset"] = -490,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.2",
			["uid"] = "9JQ)zXFbdMn",
			["inverse"] = true,
			["cooldownTextDisabled"] = false,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
		},
		["Bloodfury"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["displayText"] = "\n",
			["yOffset"] = 0,
			["displayText_format_p_time_dynamic"] = false,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["message"] = "243176",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\cat2.ogg",
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
						["type"] = "event",
						["messageType"] = "CHAT_MSG_RAID",
						["subeventSuffix"] = "",
						["names"] = {
						},
						["duration"] = "4",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "23234",
						["subeventPrefix"] = "",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["unevent"] = "timed",
						["use_messageType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 68,
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
			["justify"] = "LEFT",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "BLOODFURY NOW",
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
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["cooldown"] = false,
			["load"] = {
				["zoneIds"] = "",
				["race"] = {
					["single"] = "Orc",
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_race"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["displayIcon"] = 135726,
			["preferToUpdate"] = false,
			["fontSize"] = 12,
			["shadowYOffset"] = -1,
			["parent"] = "Warrior CD Useage Use CD",
			["shadowXOffset"] = 1,
			["config"] = {
			},
			["anchorPoint"] = "CENTER",
			["width"] = 64,
			["regionType"] = "icon",
			["alpha"] = 1,
			["xOffset"] = 0,
			["wordWrap"] = "WordWrap",
			["useCooldownModRate"] = true,
			["anchorFrameParent"] = false,
			["cooldownTextDisabled"] = false,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Bloodfury",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["uid"] = "UvY8coJhnFN",
			["inverse"] = false,
			["icon"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
		},
		["Dragonbreath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 8410,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 8410,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["frameStrata"] = 1,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["zoom"] = 0,
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 68,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["text2Font"] = "Friz Quadrata TT",
			["width"] = 64,
			["text1"] = "%s",
			["alpha"] = 1,
			["text1Font"] = "ABF",
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Dragonbreath",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["uid"] = "FVBX3(TjZNK",
			["inverse"] = true,
			["anchorFrameParent"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Major Healing Potion 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 1: Recovery Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 13446,
						["type"] = "item",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["use_itemName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13446,
						["use_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["count"] = "1",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
			["text1Enabled"] = true,
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["useCooldownModRate"] = true,
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["text1Containment"] = "INSIDE",
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["useTooltip"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["uid"] = "X12XUYIZyon",
			["text2FontSize"] = 31,
			["semver"] = "1.0.1",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["text1Font"] = "ABF",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Major Healing Potion 2",
			["text1FontFlags"] = "OUTLINE",
			["frameStrata"] = 1,
			["width"] = 64,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["Fortitude"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 3825,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 3825,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["useTooltip"] = false,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["authorMode"] = true,
			["semver"] = "1.0.2",
			["text2Containment"] = "INSIDE",
			["xOffset"] = -490,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 31,
			["width"] = 64,
			["text2Enabled"] = true,
			["text1"] = "%s",
			["text1Enabled"] = true,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Fortitude",
			["authorOptions"] = {
			},
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["uid"] = "1cSSt3md3vL",
			["inverse"] = true,
			["anchorFrameParent"] = false,
			["alpha"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["desaturate"] = false,
		},
		["Tender Wolf Steak"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = 0,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Font"] = "ABF",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local trigger1 = WeakAuras.GetData(aura_env.id).triggers[1].trigger\n    local trigger2 = WeakAuras.GetData(aura_env.id).triggers[2].trigger\n    local itemId = trigger2.itemName\n    local trigger1State = WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    \n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["auranames"] = {
							"Food", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["type"] = "aura2",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 18045,
						["use_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["debuffType"] = "HELPFUL",
						["use_itemName"] = true,
						["names"] = {
						},
						["use_includeBank"] = false,
						["event"] = "Item Count",
						["count"] = "1",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["cooldownEdge"] = false,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["authorOptions"] = {
			},
			["text1Enabled"] = true,
			["text1Containment"] = "INSIDE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["useCooldownModRate"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["level_operator"] = {
					">", -- [1]
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldown"] = true,
			["authorMode"] = true,
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 68,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["text2FontSize"] = 31,
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["anchorFrameParent"] = false,
			["frameStrata"] = 1,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Tender Wolf Steak",
			["text1"] = "%s",
			["text2Enabled"] = true,
			["width"] = 64,
			["zoom"] = 0,
			["uid"] = "HpLKMvP3r5o",
			["inverse"] = true,
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["displayIcon"] = "134003",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["alpha"] = 1,
		},
		["Greater Fire Pot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Font"] = "ABF",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13457,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13457,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["cooldownEdge"] = false,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["desaturate"] = false,
			["xOffset"] = -490,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorMode"] = true,
			["useCooldownModRate"] = true,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["semver"] = "1.0.2",
			["width"] = 64,
			["text1"] = "%s",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Fire Pot",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 68,
			["uid"] = "Flh17w(0Er7",
			["inverse"] = true,
			["cooldownTextDisabled"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["LIP"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 1: Recovery Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 3387,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 3387,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["text1Containment"] = "INSIDE",
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
				["level_operator"] = {
					">", -- [1]
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["auto"] = true,
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["useTooltip"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["text2FontSize"] = 31,
			["internalVersion"] = 68,
			["width"] = 64,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "LIP",
			["text1FontFlags"] = "OUTLINE",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "N0Irb813)VL",
			["inverse"] = false,
			["zoom"] = 0,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 1,
		},
		["Titans"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13510,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13510,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
			["stickyDuration"] = false,
			["text2Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["useTooltip"] = false,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["uid"] = "5F0uSnAjY8T",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Titans",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["inverse"] = true,
			["auto"] = true,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["Warrior - 3: Offensive Consumes"] = {
			["grow"] = "GRID",
			["controlledChildren"] = {
				"Dense Sharpening Stone", -- [1]
				"Elemental Sharpening Stone", -- [2]
				"Mighty Rage 2", -- [3]
				"Mongoose ", -- [4]
				"Thistle Tea", -- [5]
				"Juju Power", -- [6]
				"Juju Might", -- [7]
				"Dragonbreath", -- [8]
				"Winterfall Firewater", -- [9]
				"Blessed Sunfruit", -- [10]
				"Grilled Squid 2", -- [11]
				"Sapper 2", -- [12]
				"dense dynamite", -- [13]
				"FAP", -- [14]
				"SWIFT", -- [15]
				"INVIS", -- [16]
				"SAND", -- [17]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -307.049411740542,
			["preferToUpdate"] = false,
			["yOffset"] = -496.876561071103,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["background"] = "None",
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 68,
			["useLimit"] = false,
			["align"] = "CENTER",
			["config"] = {
			},
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["stagger"] = 0,
			["selfPoint"] = "TOPLEFT",
			["version"] = 2,
			["subRegions"] = {
			},
			["rotation"] = 0,
			["radius"] = 200,
			["load"] = {
				["use_class"] = "false",
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
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
			["scale"] = 0.45,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["sort"] = "none",
			["uid"] = "Uwh0zbAQcVE",
			["constantFactor"] = "RADIUS",
			["gridWidth"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Warrior - 3: Offensive Consumes",
			["gridType"] = "DR",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["backgroundInset"] = 0,
			["borderInset"] = 1,
			["arcLength"] = 360,
			["space"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fullCircle"] = true,
		},
		["INVIS"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
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
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 9172,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 9172,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
						["use_unit"] = true,
						["unit"] = "player",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["count"] = "1",
						["unevent"] = "auto",
						["names"] = {
						},
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text1FontFlags"] = "OUTLINE",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useTooltip"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text1Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 68,
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["text2FontFlags"] = "OUTLINE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "INVIS",
			["auto"] = true,
			["alpha"] = 1,
			["width"] = 64,
			["frameStrata"] = 1,
			["uid"] = "q55cuVzFcTJ",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Enabled"] = true,
		},
		["Spirit"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 20079,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorMode"] = true,
			["zoom"] = 0,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Spirit",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["semver"] = "1.0.2",
			["uid"] = "iG4paspZ0qu",
			["inverse"] = true,
			["cooldownTextDisabled"] = false,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Font"] = "Friz Quadrata TT",
		},
		["Healthstone 1"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 9421,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["internalVersion"] = 68,
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
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["stickyDuration"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Font"] = "ABF",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["useTooltip"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 31,
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["parent"] = "Warrior - 1: Recovery Consumes",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Healthstone 1",
			["text2"] = "%p",
			["useCooldownModRate"] = true,
			["width"] = 64,
			["desaturate"] = false,
			["uid"] = "VIkrlhTs7oq",
			["inverse"] = false,
			["anchorFrameParent"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Enabled"] = true,
		},
		["Juju Power"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12451,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 12451,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useCooldownModRate"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["frameStrata"] = 1,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["desaturate"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["useTooltip"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["width"] = 64,
			["text1"] = "%s",
			["alpha"] = 1,
			["internalVersion"] = 68,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Juju Power",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["uid"] = "R4)yATif(lI",
			["inverse"] = true,
			["anchorFrameParent"] = false,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
		},
		["Dirge's Kickin"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["alpha"] = 1,
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 21023,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["count"] = "1",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldown"] = true,
			["icon"] = true,
			["desaturate"] = false,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorMode"] = true,
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 68,
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["text1Containment"] = "INSIDE",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Dirge's Kickin",
			["text1FontFlags"] = "OUTLINE",
			["useCooldownModRate"] = true,
			["width"] = 64,
			["auto"] = true,
			["uid"] = "WZcwIiE8J9d",
			["inverse"] = true,
			["cooldownTextDisabled"] = false,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["World Buff Purge"] = {
			["controlledChildren"] = {
				"Resist Fire", -- [1]
				"Winterfall Firewater 2", -- [2]
				"Songflower Serenade", -- [3]
				"Fengus' Ferocity", -- [4]
				"Mol'dar's Moxie", -- [5]
				"Slip'kik's Savvy", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 128.287231445313,
			["preferToUpdate"] = false,
			["groupIcon"] = 136075,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/8ncUU5-Pi/4",
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 68,
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
			["version"] = 4,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = "false",
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "World Buff Purge",
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = 583.538208007813,
			["borderInset"] = 1,
			["config"] = {
			},
			["uid"] = "A7J9lnBowvc",
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = true,
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["Tuber"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 1: Recovery Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 11951,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["count"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
			["internalVersion"] = 68,
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["xOffset"] = 0,
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["desaturate"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["text2FontSize"] = 31,
			["semver"] = "1.0.1",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Tuber",
			["text2Font"] = "Friz Quadrata TT",
			["useCooldownModRate"] = true,
			["width"] = 64,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["uid"] = "Vpd)i0TOPta",
			["inverse"] = false,
			["text2"] = "%p",
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["alpha"] = 1,
		},
		["PVP: AB Callout Clear"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message_type"] = "RAID_WARNING",
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\n\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_Clr\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s clear\",AV.LIST_VALID_SUBZONES[subzone])\n                    --print(msg)\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
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
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
				}, -- [2]
			},
			["height"] = 32,
			["load"] = {
				["zoneIds"] = "",
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Arathi Basin",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["icon"] = true,
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["regionType"] = "icon",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["config"] = {
			},
			["anchorFrameParent"] = false,
			["width"] = 32,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Clear",
			["auto"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "mtAeCVGFcrG",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132486,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
		},
		["FAP"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
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
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 5634,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 5634,
						["use_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 68,
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["text2FontFlags"] = "OUTLINE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "FAP",
			["auto"] = true,
			["alpha"] = 1,
			["width"] = 64,
			["frameStrata"] = 1,
			["uid"] = "Esw7mJSw)4v",
			["inverse"] = true,
			["xOffset"] = 0,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Enabled"] = true,
		},
		["USE EARTHSTRIKE "] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["xOffset"] = 0,
			["displayText"] = "\n",
			["yOffset"] = 0,
			["displayText_format_p_time_dynamic"] = false,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["message"] = "243176",
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\sounds\\Bell.ogg",
					["do_message"] = false,
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "",
						["unit"] = "player",
						["duration"] = "4",
						["event"] = "Chat Message",
						["names"] = {
						},
						["message"] = "25891",
						["subeventPrefix"] = "",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["unevent"] = "timed",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["justify"] = "LEFT",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["preferToUpdate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "EARTHSTRIKE NOW",
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
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 64,
			["cooldown"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["fontSize"] = 12,
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
			["icon"] = true,
			["shadowXOffset"] = 1,
			["uid"] = "eVYPsXo2D)C",
			["anchorPoint"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["shadowYOffset"] = -1,
			["fixedWidth"] = 200,
			["useCooldownModRate"] = true,
			["anchorFrameParent"] = false,
			["zoom"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "USE EARTHSTRIKE ",
			["parent"] = "Warrior CD Useage Use CD",
			["alpha"] = 1,
			["width"] = 64,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["automaticWidth"] = "Auto",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 136006,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["PVP: AB Callout Incoming 2"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message_type"] = "RAID_WARNING",
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
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["custom"] = "function()\n    return true\nend",
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
			["internalVersion"] = 68,
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
					["type"] = "subbackground",
				}, -- [1]
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
				}, -- [2]
			},
			["height"] = 32,
			["load"] = {
				["zoneIds"] = "",
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Arathi Basin",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["cooldownEdge"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = false,
			["regionType"] = "icon",
			["conditions"] = {
			},
			["icon"] = true,
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["uid"] = "gU(rCXXg1QR",
			["anchorFrameParent"] = false,
			["width"] = 32,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 2",
			["auto"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 132486,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Cursor"] = {
			["xOffset"] = 1.58020687103272,
			["preferToUpdate"] = false,
			["yOffset"] = 0.79010021686554,
			["anchorPoint"] = "BOTTOMLEFT",
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
						["use_form"] = true,
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["type"] = "unit",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Conditions",
						["unit"] = "player",
						["use_alive"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 69.9999618530274,
			["rotate"] = true,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["color"] = {
				0.549019607843137, -- [1]
				0.270588235294118, -- [2]
				0.0980392156862745, -- [3]
				1, -- [4]
			},
			["tocversion"] = 80300,
			["id"] = "Cursor",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_translate"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n    local scale = 1 / UIParent:GetEffectiveScale()\n    local x, y = GetCursorPosition()\n    return x * scale, y * scale\nend",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["translateType"] = "custom",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["alpha"] = 1,
			["width"] = 70.0003890991211,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "WAARQucMofb",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 4,
		},
		["swing timer"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = 19.000305175781,
			["preferToUpdate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["colorR"] = 0,
					["scalex"] = 1,
					["colorA"] = 1,
					["colorG"] = 1,
					["type"] = "none",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["use_color"] = true,
					["y"] = 0,
					["colorType"] = "custom",
					["duration_type"] = "seconds",
					["rotate"] = 0,
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    local t = WeakAuras.triggerState[aura_env.id].triggers;\n    if not t[1] then return r2,g2,b2,a2 else return r1,g1,b1,a1 end\nend\n\n\n",
					["easeStrength"] = 3,
					["colorB"] = 0,
					["x"] = 0,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["yOffset"] = -321.99978637695,
			["anchorPoint"] = "CENTER",
			["borderBackdrop"] = "None",
			["authorOptions"] = {
			},
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/wHUImG4M6/1",
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_hand"] = true,
						["hand"] = "main",
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["unevent"] = "auto",
						["event"] = "Swing Timer",
						["names"] = {
						},
						["use_unit"] = true,
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["events"] = "PLAYER_SPECIALIZATION_CHANGED ACTIVE_TALENT_GROUP_UPDATE",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["customDuration"] = "function() return 0,1,true end",
						["events"] = "ASD",
						["check"] = "event",
						["genericShowOn"] = "showOnActive",
						["custom"] = "function() return true end",
						["custom_type"] = "status",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 68,
			["actions"] = {
				["start"] = {
					["custom"] = "\naura_env.fs:Show();",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local height = aura_env.region:GetHeight();\n\n\nlocal aura_env = aura_env;\nlocal region = aura_env.region;\nregion:ClearAllPoints();\nlocal rage = WeakAuras.regions[\"Potato's Arms Rage\"].region;\nregion:SetPoint(\"BOTTOMLEFT\", rage, \"TOPLEFT\", 0, 1);\nregion:SetPoint(\"BOTTOMRIGHT\", rage, \"TOPRIGHT\", 0, 1);\nregion:SetHeight(height);\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "\naura_env.fs:Hide();",
					["do_custom"] = false,
				},
			},
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["barColor"] = {
				0.85098039215686, -- [1]
				0.80392156862745, -- [2]
				0.65098039215686, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
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
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_p_time_precision"] = 1,
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_legacy_floor"] = true,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = " ",
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
					["text_font"] = "RobotoCondensed-Regular",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
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
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_size"] = 1,
				}, -- [6]
			},
			["gradientOrientation"] = "HORIZONTAL",
			["fontFlags"] = "OUTLINE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["enableGradient"] = false,
			["semver"] = "1.0.0",
			["desaturate"] = false,
			["uid"] = "1tFOxKvWIXO",
			["version"] = 1,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["height"] = 17.999904632568,
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["width"] = 384.00048828125,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "swing timer",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["spark"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["zoom"] = 0,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Greater Nature"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13458,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13458,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_unit"] = true,
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useTooltip"] = false,
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text1Enabled"] = true,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["xOffset"] = -490,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorMode"] = true,
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["useCooldownModRate"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["auto"] = true,
			["width"] = 64,
			["text1"] = "%s",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Nature",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Warrior - 2: Defensive Consumes",
			["uid"] = "SzxrQ6LlgiA",
			["inverse"] = true,
			["zoom"] = 0,
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["SWIFT"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
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
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 2459,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["unit"] = "player",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 2459,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["count"] = "1",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["text1Enabled"] = true,
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
					["easeType"] = "none",
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["useCooldownModRate"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["desaturate"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["auto"] = true,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 68,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["uid"] = "LZ8fJPiI5kL",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 31,
			["width"] = 64,
			["text2Enabled"] = true,
			["text1"] = "%s",
			["text1Font"] = "ABF",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "SWIFT",
			["text1Containment"] = "INSIDE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
		},
		["JUJU EMBER"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12455,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["count"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorMode"] = true,
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "JUJU EMBER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 64,
			["semver"] = "1.0.2",
			["uid"] = "J1n6Js(VHuq",
			["inverse"] = true,
			["zoom"] = 0,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
		},
		["Battle Shout Reminder"] = {
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -72.6914596557617,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
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
						["rem"] = "10",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"Battle Shout", -- [1]
						},
						["useName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["remOperator"] = "<",
						["unit"] = "player",
						["names"] = {
						},
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["auranames"] = {
							"Battle Shout", -- [1]
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_resting"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "unit",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n  return (trigger[1] or trigger[2]) and not trigger[3]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
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
					["text_text_format_p_time_mod_rate"] = true,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_legacy_floor"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Roboto Bold",
					["text_text_format_p_format"] = "timed",
					["text_shadowYOffset"] = 0,
					["text_anchorYOffset"] = -2,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 41,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0.70196078431373, -- [1]
						0, -- [2]
						0.054901960784314, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 7.85,
					["glowLines"] = 6,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 59.2593955993652,
			["load"] = {
				["use_class"] = true,
				["zoneIds"] = "",
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["auto"] = true,
			["url"] = "https://wago.io/RbGbJ76Iv/1",
			["regionType"] = "icon",
			["xOffset"] = 233.482019424438,
			["authorOptions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
			["config"] = {
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Battle Shout Reminder",
			["width"] = 61.6294670104981,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "iZyBAa(tjmh",
			["inverse"] = false,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "expirationTime",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.13725490196078, -- [2]
								0.15686274509804, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [1]
						{
							["value"] = 48,
							["property"] = "sub.2.text_fontSize",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "fade",
					["easeStrength"] = 3,
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["Monster Omelet"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12218,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["use_unit"] = true,
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["useCooldownModRate"] = true,
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["xOffset"] = -490,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["internalVersion"] = 68,
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["uid"] = "pLSzt(1CVOd",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Monster Omelet",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["text2"] = "%p",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["ArathiBasin Capture and Resurrection Timers"] = {
			["grow"] = "GRID",
			["controlledChildren"] = {
				"ArathiBasinCaptureOrResurrectionTimerEntry", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "133282",
			["anchorPoint"] = "TOP",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/7RQUp4ISD/1",
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 220,
			["internalVersion"] = 68,
			["selfPoint"] = "TOPLEFT",
			["align"] = "LEFT",
			["rotation"] = 0,
			["yOffset"] = -76.51611328125,
			["version"] = 1,
			["subRegions"] = {
			},
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
			["stagger"] = 0,
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["arcLength"] = 360,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["animate"] = false,
			["space"] = 1,
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["anchorFrameFrame"] = "UIWidgetTopCenterContainerFrame",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["gridType"] = "DR",
			["uid"] = "euXKNmiWPRp",
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["useLimit"] = false,
			["borderOffset"] = 4,
			["frameStrata"] = 1,
			["tocversion"] = 11305,
			["id"] = "ArathiBasin Capture and Resurrection Timers",
			["borderInset"] = 1,
			["gridWidth"] = 3,
			["anchorFrameType"] = "SCREEN",
			["borderEdge"] = "Square Full White",
			["config"] = {
			},
			["limit"] = 5,
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = -244.989318847656,
		},
		["Sapper 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 10646,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 10646,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["names"] = {
						},
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["icon"] = true,
			["xOffset"] = 0,
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["authorOptions"] = {
			},
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["useTooltip"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["width"] = 64,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Sapper 2",
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "Fb1BPvr2mve",
			["inverse"] = true,
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["Greater Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13456,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["names"] = {
						},
						["use_unit"] = true,
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13456,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["unit"] = "player",
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["useCooldownModRate"] = true,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["stickyDuration"] = false,
			["xOffset"] = -490,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["cooldownTextDisabled"] = false,
			["text2Containment"] = "INSIDE",
			["useTooltip"] = false,
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Frost",
			["authorOptions"] = {
			},
			["text2Enabled"] = true,
			["width"] = 64,
			["semver"] = "1.0.2",
			["uid"] = "WUpyH0(uN6p",
			["inverse"] = true,
			["text2"] = "%p",
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Enabled"] = true,
		},
		["Threat Warning"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
				{
					["type"] = "range",
					["useDesc"] = false,
					["max"] = 100,
					["step"] = 10,
					["width"] = 1,
					["min"] = 0,
					["name"] = "Threat Threshold",
					["key"] = "threshold",
					["default"] = 90,
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = false,
					["max"] = 3,
					["step"] = 0.1,
					["width"] = 1,
					["min"] = 0.2,
					["name"] = "Update Speed",
					["key"] = "speed",
					["default"] = 0.2,
				}, -- [2]
			},
			["preferToUpdate"] = false,
			["customText"] = "\nfunction ()\n    return ''..aura_env.threat\nend",
			["yOffset"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/9qBCTJSAt/9",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["names"] = {
						},
						["customDuration"] = "",
						["events"] = "THREAT_WARNING_UPDATE, PLAYER_REGEN_DISABLED, PLAYER_REGEN_ENABLED, PLAYER_TARGET_CHANGED",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    if event == 'PLAYER_REGEN_DISABLED' then\n        local speed = aura_env.config[\"speed\"]\n        aura_env.ticker = C_Timer.NewTicker(speed, function() WeakAuras.ScanEvents(\"THREAT_WARNING_UPDATE\") end)\n    elseif event == 'PLAYER_REGEN_ENABLED' then\n        if aura_env.ticker then\n            aura_env.ticker:Cancel()\n        end\n    end\n    \n    local isTanking, _, threatPercent, _, _ = aura_env.UnitDetailedThreatSituation(\"player\", \"target\")\n    threatPercent = threatPercent or 0\n    return not isTanking and threatPercent >= aura_env.config[\"threshold\"]\nend",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["dynamicDuration"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "\n\n",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 68,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\Fireball.ogg",
					["do_message"] = false,
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.UnitDetailedThreatSituation = UnitDetailedThreatSituation\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["crop_x"] = 0.41,
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 9,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 500,
			["rotate"] = true,
			["crop_y"] = 0.41,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					"==", -- [1]
				},
				["zoneIds"] = "",
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = {
					"60", -- [1]
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["fontSize"] = 12,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["anchorPoint"] = "CENTER",
			["uid"] = "f1xGf4PXGtT",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "texture",
			["customTextUpdate"] = "update",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0.7,
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura17",
			["xOffset"] = -6.103515625e-05,
			["tocversion"] = 11305,
			["semver"] = "2.2.0",
			["compress"] = false,
			["id"] = "Threat Warning",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 500,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["config"] = {
				["threshold"] = 90,
				["speed"] = 0.2,
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.011764705882353, -- [3]
				1, -- [4]
			},
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["PVP: AB Callout Count Enemies"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message_type"] = "RAID_WARNING",
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.TIMER = 0\naura_env.TIMER_CD = 0\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Button\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:SetAttribute(\"type\",\"macro\")\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    \n    b:SetAttribute('macrotext', string.format(''))\n    r.btn_ann = b\nend\n\naura_env.GET_RANGE = function(unit)\n    local checked_range,in_range,range\n    for ii=1,#aura_env.LIST_ITEMS_SHORT do\n        in_range = IsItemInRange(aura_env.LIST_ITEMS_SHORT[ii].iid,unit)\n        if in_range then\n            range = aura_env.LIST_ITEMS_SHORT[ii].range\n            break\n        end\n    end\n    \n    in_range = CheckInteractDistance(unit,3)\n    if in_range then\n        if range then range = min(range,10)\n        else range = 10 end\n    end\n    \n    in_range = CheckInteractDistance(unit,2)\n    if in_range then\n        if range then range = min(range,11)\n        else range = 11 end\n    end\n    \n    in_range = CheckInteractDistance(unit,4)\n    if in_range then\n        if range then range = min(range,28)\n        else range = 28 end\n    end\n    \n    in_range, checked_range = UnitInRange(unit)\n    if in_range and checked_range then\n        if range then range = min(range,40)\n        else range = 40 end\n    end\n    \n    return range\nend\n\n\naura_env.LIST_ITEMS_SHORT = {\n    {iid=16114,range=3},\n    {iid=8149,range=5},\n    {iid=17626,range=10},\n    {iid=4559,range=15},\n    {iid=17757,range=20},\n    {iid=13289,range=25},\n    {iid=17202,range=30},\n    {iid=18904,range=35},\n    {iid=4945,range=40},\n    {iid=5418,range=100},\n    {iid=23715,range=100},\n    {iid=23718,range=100},\n    {iid=23719,range=100},\n    {iid=23721,range=100},\n    {iid=23722,range=100},\n    {iid=17162,range=100},    \n}\n\naura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\naura_env.CHECK_RANGE = false\naura_env.RANGE_CNT = 0\nlocal av = aura_env\nr.SET_BUTTON_ON_CD = function(mode)\n    if mode == 0 then\n        local time_cur = GetTime()\n        if (time_cur - av.TIMER_CD) > 1 then\n            av.TIMER_CD = time_cur\n            r.btn_ann.c:SetCooldown(time_cur,1)\n            av.CHECK_RANGE = true\n            av.RANGE_CNT = 0\n        end\n    end\n    if mode == 1 and av.CHECK_RANGE then\n        local subzone = GetSubZoneText()\n        if subzone and av.LIST_VALID_SUBZONES[subzone] then\n            local msg\n            if av.RANGE_CNT == 0 then\n                msg = string.format(\"%s no enemies\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 and av.RANGE_CNT <= 1 then\n                msg = string.format(\"%s %d enemy\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 and av.RANGE_CNT <= 3 then\n                msg = string.format(\"%s %d enemies\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 then\n                msg = string.format(\">>> %s %d enemies <<<\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            end\n            if msg then\n                --print(msg)\n                SendChatMessage(msg,\"RAID_WARNING\")\n                SendChatMessage(msg,\"INSTANCE_CHAT\")\n            end\n        end\n        av.CHECK_RANGE = false\n    end\n    return\nend\n\nif UnitFactionGroup(\"player\") == \"Horde\" then\n    aura_env.PLAYER_FACTION = 0\nelse\n    aura_env.PLAYER_FACTION = 1\nend\n\naura_env.REQUEST_MACRO_UPDATE = false\naura_env.UPDATE_MACRO = function()\n    local str_macro\n    str_macro = string.format(\"/run WeakAuras.GetRegion(\\\"%s\\\").SET_BUTTON_ON_CD(0)\",aura_env.id)\n    str_macro = str_macro .. \"\\n/cleartarget\"\n    for i=1,80 do\n        local name, killingBlows, honorableKills, deaths, honorGained, faction, rank, race, class, CLASS = GetBattlefieldScore(i);\n        if name and faction ~= aura_env.PLAYER_FACTION then\n            str_macro = str_macro .. string.format(\"\\n/targetexact %s\",name)\n        end\n    end\n    str_macro = str_macro .. \"\\n/cleartarget\"\n    str_macro = str_macro .. string.format(\"\\n/run WeakAuras.GetRegion(\\\"%s\\\").SET_BUTTON_ON_CD(1)\",aura_env.id)\n    \n    \n    aura_env.region.btn_ann:SetAttribute('macrotext',str_macro)\nend\n\naura_env.COLOR_TEXT = function(text,r,g,b)\n    return string.format(\"|cff%02x%02x%02x%s|r\", 255*r, 255*g, 255*b,text)\nend\n\naura_env.bool_to_str = function(bool)\n    if bool==true then return aura_env.COLOR_TEXT(tostring(bool),0,0.75,1)\n    elseif bool==false then return aura_env.COLOR_TEXT(tostring(bool),1,0,0)\n    elseif bool==nil then return aura_env.COLOR_TEXT(\"nil\",1,0,0)\n    else return tostring(bool) end\nend",
					["do_custom"] = true,
				},
			},
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
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
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
				}, -- [2]
			},
			["height"] = 32,
			["load"] = {
				["zoneIds"] = "",
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Arathi Basin",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["icon"] = true,
			["authorOptions"] = {
			},
			["cooldown"] = false,
			["regionType"] = "icon",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["config"] = {
			},
			["anchorFrameParent"] = false,
			["width"] = 31.999900817871,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Count Enemies",
			["auto"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "XPycNDqoWE2",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132486,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
		},
		["Warrior - 1: Recovery Consumes"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"Bandage", -- [1]
				"Major Healing Potion 2", -- [2]
				"Healthstone 1", -- [3]
				"Healthstone 2", -- [4]
				"Healthstone 3", -- [5]
				"Tuber", -- [6]
				"LIP", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -660.116945157094,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/cmdyr6QI7/2",
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "CENTER",
			["align"] = "CENTER",
			["sort"] = "none",
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["stagger"] = 0,
			["internalVersion"] = 68,
			["version"] = 2,
			["subRegions"] = {
			},
			["useLimit"] = false,
			["gridType"] = "DR",
			["load"] = {
				["use_class"] = "false",
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 50,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["background"] = "None",
			["animate"] = false,
			["grow"] = "GRID",
			["scale"] = 0.45,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["rotation"] = 0,
			["config"] = {
			},
			["constantFactor"] = "RADIUS",
			["gridWidth"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Warrior - 1: Recovery Consumes",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["space"] = 0,
			["uid"] = "rEXC8C8ZlnX",
			["backgroundInset"] = 0,
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
		},
		["PVP: AB Callout Bar - Jon Test"] = {
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
			["xOffset"] = -481.258666992188,
			["preferToUpdate"] = false,
			["yOffset"] = 299.297119140625,
			["gridType"] = "RD",
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
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
			["align"] = "CENTER",
			["desc"] = "Set of clickable buttons to announce enemy count or incoming at the base you're currently at.",
			["stagger"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["uid"] = "hN)7qTsKOYh",
			["selfPoint"] = "LEFT",
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useLimit"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["animate"] = false,
			["rotation"] = 0,
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["internalVersion"] = 68,
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["limit"] = 5,
			["borderOffset"] = 4,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Bar - Jon Test",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["space"] = 5,
			["config"] = {
			},
			["anchorPoint"] = "CENTER",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["arcLength"] = 360,
		},
		["Blessed Sunfruit"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 13810,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["useCooldownModRate"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1Containment"] = "INSIDE",
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["text1Enabled"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["text2FontSize"] = 31,
			["text1FontFlags"] = "OUTLINE",
			["width"] = 64,
			["text1"] = "%s",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Blessed Sunfruit",
			["internalVersion"] = 68,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["uid"] = "cz7bOsin7X8",
			["inverse"] = false,
			["desaturate"] = false,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["Fengus' Ferocity"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -427.139793396,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = {
							"15123", -- [1]
						},
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["unevent"] = "timed",
						["subeventSuffix"] = "_DISPEL",
						["auraType"] = "BUFF",
						["spellName"] = {
							"Resist Fire", -- [1]
						},
						["event"] = "Combat Log",
						["extraSpellName"] = "Fengus' Ferocity",
						["use_spellName"] = false,
						["use_spellId"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_destUnit"] = false,
						["sourceUnit"] = "pet",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["extraSpellName"] = "Fengus' Ferocity",
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_cloneId"] = false,
						["sourceUnit"] = "player",
						["unevent"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
				}, -- [2]
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
						["SHAMAN"] = true,
						["WARLOCK"] = true,
						["PRIEST"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "0JXCc9F2tXj",
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["cooldown"] = false,
			["displayIcon"] = 136109,
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
			["parent"] = "World Buff Purge",
			["width"] = 1,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Fengus' Ferocity",
			["auto"] = false,
			["alpha"] = 0,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
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
							["value"] = {
								["message"] = "%1.destName is no longer friends with %1.extraSpellName peepoGlad",
								["message_format_1.extraSpellName_format"] = "none",
								["message_format_1.destName_format"] = "none",
								["message_type"] = "GUILD",
								["message_dest"] = "rukk",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%2.destName is no longer friends with %2.extraSpellName peepoGlad",
								["message_format_2.extraSpellName_format"] = "none",
								["message_type"] = "GUILD",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = -329.95526123047,
		},
		["Mongoose "] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 13452,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13452,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useCooldownModRate"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["frameStrata"] = 1,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["desaturate"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["useTooltip"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["width"] = 64,
			["text1"] = "%s",
			["alpha"] = 1,
			["internalVersion"] = 68,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Mongoose ",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["uid"] = "R71fchWyZRW",
			["inverse"] = true,
			["anchorFrameParent"] = false,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
		},
		["Greater Arcane Pot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13461,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13461,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Enabled"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorMode"] = true,
			["useTooltip"] = false,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Font"] = "ABF",
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["semver"] = "1.0.2",
			["width"] = 64,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Arcane Pot",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "vl0J5gLcNyI",
			["inverse"] = true,
			["stickyDuration"] = false,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["Greater Shadow"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13459,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13459,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["stickyDuration"] = false,
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["authorMode"] = true,
			["auto"] = true,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 68,
			["text1Font"] = "ABF",
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text1"] = "%s",
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Shadow",
			["desaturate"] = false,
			["useCooldownModRate"] = true,
			["width"] = 64,
			["zoom"] = 0,
			["uid"] = "sj1ndg9PJql",
			["inverse"] = true,
			["anchorFrameParent"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
		},
		["Bandage"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = 0,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1"] = "%s",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["glow_frame_type"] = "FRAMESELECTOR",
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[2].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
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
							"11196", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 14530,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["use_exact_itemName"] = true,
						["type"] = "item",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unevent"] = "auto",
						["event"] = "Item Count",
						["unit"] = "player",
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["check"] = "update",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "Warrior - 1: Recovery Consumes",
			["cooldown"] = true,
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["stickyDuration"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
						{
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["value"] = 1,
						["op"] = ">",
						["variable"] = "show",
					},
					["changes"] = {
						{
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["semver"] = "1.0.1",
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["uid"] = "Spkl0TqOJH5",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 31,
			["width"] = 64,
			["useCooldownModRate"] = true,
			["anchorFrameParent"] = false,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Bandage",
			["text2"] = "%p",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "133682",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["alpha"] = 1,
		},
		["Winterfall Firewater 2"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -427.139793396,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = {
							"15123", -- [1]
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["spellName"] = {
							"Resist Fire", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "combatlog",
						["unevent"] = "timed",
						["subeventSuffix"] = "_DISPEL",
						["auraType"] = "BUFF",
						["unit"] = "player",
						["event"] = "Combat Log",
						["extraSpellName"] = "Winterfall Firewater",
						["use_spellId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_destUnit"] = false,
						["sourceUnit"] = "pet",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["extraSpellName"] = "Winterfall Firewater",
						["use_sourceUnit"] = true,
						["use_extraSpellName"] = true,
						["use_cloneId"] = false,
						["sourceUnit"] = "player",
						["unevent"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
				}, -- [2]
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
						["SHAMAN"] = true,
						["WARLOCK"] = true,
						["PRIEST"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["uid"] = "pLZbo3ydCw7",
			["parent"] = "World Buff Purge",
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
			["regionType"] = "icon",
			["cooldown"] = false,
			["displayIcon"] = 134872,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -329.95526123047,
			["width"] = 1,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Winterfall Firewater 2",
			["auto"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0,
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
							["value"] = {
								["message"] = "%1.destName once had %1.extraSpellName peepoHappy",
								["message_format_1.extraSpellName_format"] = "none",
								["message_format_1.destName_format"] = "none",
								["message_type"] = "GUILD",
								["message_dest"] = "rukk",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "%2.destName once had %2.extraSpellName peepoHappy",
								["message_format_2.extraSpellName_format"] = "none",
								["message_type"] = "GUILD",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/8ncUU5-Pi/4",
		},
		["Mighty Rage 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13442,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 13442,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["alpha"] = 1,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 68,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["config"] = {
			},
			["text2FontSize"] = 31,
			["semver"] = "1.0.1",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Mighty Rage 2",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["width"] = 64,
			["useTooltip"] = false,
			["uid"] = "bT5p9HIyTwy",
			["inverse"] = true,
			["text1Enabled"] = true,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["Juju Might"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
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
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12460,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 12460,
						["use_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 68,
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["text2FontFlags"] = "OUTLINE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Juju Might",
			["auto"] = true,
			["alpha"] = 1,
			["width"] = 64,
			["frameStrata"] = 1,
			["uid"] = "NrxwxjwEhca",
			["inverse"] = true,
			["xOffset"] = 0,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Enabled"] = true,
		},
		["SendWFToShaman"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"WFI-Rodonies\")",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "C_ChatInfo.SendAddonMessage(\"WFI-Rodonies\", \"DROPPED\", \"PARTY\")",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["enchant"] = "564",
						["duration"] = "1",
						["use_unit"] = true,
						["use_weapon"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Weapon Enchant",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_enchant"] = true,
						["showOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["weapon"] = "main",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["selfPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["version"] = 3,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["shadowYOffset"] = -1,
			["wordWrap"] = "WordWrap",
			["anchorFrameParent"] = true,
			["fixedWidth"] = 200,
			["preferToUpdate"] = false,
			["justify"] = "LEFT",
			["semver"] = "1.0.2",
			["tocversion"] = 11303,
			["id"] = "SendWFToShaman",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "wrRjtI5W3Fp",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["op"] = ">=",
						["variable"] = "expirationTime",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "C_ChatInfo.SendAddonMessage(\"WFI-Rodonies\", \"REFRESH\", \"PARTY\")",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/hmycuCcHu/3",
		},
		["Winterfall Firewater"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12820,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 12820,
						["use_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["text2Enabled"] = true,
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["cooldown"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["xOffset"] = 0,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["uid"] = "wcOQ2g5lLiS",
			["text2FontSize"] = 31,
			["semver"] = "1.0.1",
			["width"] = 64,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Winterfall Firewater",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 68,
			["config"] = {
			},
			["inverse"] = true,
			["useTooltip"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["Lung Juice"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 8411,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["use_unit"] = true,
						["count"] = "1",
						["event"] = "Item Count",
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldown"] = true,
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Enabled"] = true,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["level"] = {
					"40", -- [1]
				},
				["level_operator"] = {
					">", -- [1]
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorMode"] = true,
			["useTooltip"] = false,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["semver"] = "1.0.2",
			["width"] = 64,
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Lung Juice",
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "GNajjUHHYtR",
			["inverse"] = true,
			["stickyDuration"] = false,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameParent"] = false,
		},
		["Reck"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "\n",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "",
						["names"] = {
						},
						["duration"] = "4",
						["event"] = "Chat Message",
						["subeventPrefix"] = "",
						["message"] = "1719",
						["unit"] = "player",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["unevent"] = "timed",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 68,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["auto"] = true,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["preferToUpdate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "RECKLESSNESS NOW",
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
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 64,
			["cooldown"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["message"] = "243176",
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["fontSize"] = 12,
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
			["selfPoint"] = "CENTER",
			["shadowXOffset"] = 1,
			["uid"] = "3k2f4TIs4h9",
			["displayText_format_p_time_dynamic"] = false,
			["anchorFrameType"] = "SCREEN",
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["yOffset"] = 0,
			["fixedWidth"] = 200,
			["useCooldownModRate"] = true,
			["anchorFrameParent"] = false,
			["cooldownTextDisabled"] = false,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "Reck",
			["parent"] = "Warrior CD Useage Use CD",
			["alpha"] = 1,
			["width"] = 64,
			["cooldownEdge"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132109,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["Diamond flask"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["messageType"] = "CHAT_MSG_RAID",
						["subeventSuffix"] = "",
						["names"] = {
						},
						["duration"] = "4",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "24427",
						["subeventPrefix"] = "",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["unevent"] = "timed",
						["use_messageType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 68,
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
			["auto"] = true,
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["authorOptions"] = {
			},
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "DIAMOND FLASK ON",
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
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["cooldown"] = false,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["displayIcon"] = 132788,
			["preferToUpdate"] = false,
			["fontSize"] = 12,
			["displayText_format_p_time_dynamic"] = false,
			["parent"] = "Warrior CD Useage Use CD",
			["shadowXOffset"] = 1,
			["config"] = {
			},
			["shadowYOffset"] = -1,
			["width"] = 64,
			["regionType"] = "icon",
			["alpha"] = 1,
			["xOffset"] = 0,
			["wordWrap"] = "WordWrap",
			["useCooldownModRate"] = true,
			["anchorFrameParent"] = false,
			["zoom"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "Diamond flask",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["message"] = "243176",
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["do_glow"] = true,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_message"] = false,
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["uid"] = "K7VNSy4CmVO",
			["inverse"] = false,
			["automaticWidth"] = "Auto",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Mana 5SecondRule + Ticks"] = {
			["sparkWidth"] = 21,
			["iconSource"] = -1,
			["xOffset"] = 23.4940795898438,
			["preferToUpdate"] = false,
			["yOffset"] = -222.216461181641,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/CrTv_xPBX/4",
			["backgroundColor"] = {
				0, -- [1]
				0.22352941176471, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0, -- [1]
				0.23529411764706, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["gradientOrientation"] = "HORIZONTAL",
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "ElvUI Blank",
			["zoom"] = 0,
			["spark"] = true,
			["tocversion"] = 11305,
			["alpha"] = 1,
			["config"] = {
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "2",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["names"] = {
						},
						["unevent"] = "auto",
						["unit"] = "player",
						["subeventSuffix"] = "_ENERGIZE",
						["event"] = "Health",
						["use_unit"] = true,
						["custom"] = "function(a, e, t)\n    local currentMana = UnitPower(\"player\" , 0)\n    \n    if currentMana >= UnitPowerMax(\"player\", 0) then\n        return false\n    end\n    \n    if e == \"UNIT_POWER_FREQUENT\" and currentMana > aura_env.lastMana then\n        local duration = 2\n        a[\"\"] = {\n            show = true,\n            changed = true,\n            duration = duration,\n            expirationTime = GetTime() + duration,\n            progressType = \"timed\",\n            autoHide = true\n        }\n        aura_env.lastMana = currentMana\n        \n    elseif e == \"UNIT_SPELLCAST_SUCCEEDED\" and currentMana < aura_env.lastMana then\n        local duration = 6.45 -- why?\n        --local duration = 5\n        a[\"\"] = {\n            show = true,\n            changed = true,\n            duration = duration,\n            expirationTime = GetTime() + duration,\n            progressType = \"timed\",\n            autoHide = true\n        }\n        aura_env.lastMana = currentMana\n    end\n    \n    --aura_env.lastMana = currentMana\n    return true\nend",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED:player UNIT_POWER_FREQUENT:player",
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["sourceUnit"] = "player",
						["customVariables"] = "{\n    duration = true\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 68,
			["useAdjustedMin"] = false,
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
			["backdropInFront"] = false,
			["stickyDuration"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
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
					["text_text_format_p_time_mod_rate"] = true,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_legacy_floor"] = true,
					["type"] = "subtext",
					["text_anchorXOffset"] = 15,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_text_format_p_format"] = "timed",
					["text_shadowYOffset"] = -1,
					["text_anchorYOffset"] = -10,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "SPARK",
					["text_fontType"] = "None",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
				{
					["border_size"] = 16,
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["type"] = "subborder",
				}, -- [4]
			},
			["height"] = 32.9999542236328,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["useAdjustedMax"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mana",
			["borderBackdrop"] = "Blizzard Tooltip",
			["borderInFront"] = true,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["parent"] = "Mana Bar + Tick",
			["sparkTexture"] = "GarrMission_EncounterBar-Spark",
			["sparkHeight"] = 48,
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.lastMana = UnitPower(\"player\" , 0)",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"TICKUPDATE\", true)",
					["do_custom"] = false,
				},
			},
			["auto"] = true,
			["semver"] = "1.0.3",
			["uid"] = "dvZawXAyrxC",
			["sparkHidden"] = "NEVER",
			["width"] = 319.999938964844,
			["frameStrata"] = 4,
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "Mana 5SecondRule + Ticks",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["icon"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "duration",
						["value"] = "5",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Smoked Desert Dumplings"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["alpha"] = 1,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 20452,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 68,
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
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["frameStrata"] = 1,
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["level_operator"] = {
					">", -- [1]
				},
				["use_never"] = false,
				["level"] = {
					"40", -- [1]
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["authorMode"] = true,
			["auto"] = true,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["uid"] = "uegjRp4Zd5N",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_anchorYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						0, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["width"] = 64,
			["text2Enabled"] = true,
			["text1"] = "%s",
			["useTooltip"] = false,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Smoked Desert Dumplings",
			["stickyDuration"] = false,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["config"] = {
			},
			["inverse"] = true,
			["anchorFrameParent"] = false,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Thistle Tea"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 7676,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 7676,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useCooldownModRate"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["cooldown"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
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
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "PT Sans Narrow",
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 26,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [2]
				{
					["glowFrequency"] = 0.15,
					["type"] = "subglow",
					["useGlowColor"] = true,
					["glowType"] = "Pixel",
					["glowLength"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["internalVersion"] = 68,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = {
					">", -- [1]
				},
				["use_class"] = false,
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = {
					"40", -- [1]
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "bounce",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["cooldownTextDisabled"] = false,
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.1",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["text2FontSize"] = 31,
			["useTooltip"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["alpha"] = 1,
			["text1Font"] = "ABF",
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Thistle Tea",
			["text1FontFlags"] = "OUTLINE",
			["frameStrata"] = 1,
			["width"] = 64,
			["text2Enabled"] = true,
			["uid"] = "AF3r)aAgaAX",
			["inverse"] = true,
			["zoom"] = 0,
			["anchorFrameParent"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.16470588235294, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["value"] = "1",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "<",
						["variable"] = "stacks",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["ArathiBasinCaptureOrResurrectionTimerEntry"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["zoom"] = 0,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/7RQUp4ISD/1",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2009671330452, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "CHAT_MSG_BG_SYSTEM_NEUTRAL CHAT_MSG_BG_SYSTEM_ALLIANCE CHAT_MSG_BG_SYSTEM_HORDE CHAT_MSG_ADDON PLAYER_UNGHOST AB_RESURRECTION_TIMER",
						["custom"] = "function(states, e, arg1, arg2, ...)\n    local init = aura_env:Initialize(states)\n    local res\n    if e == \"CHAT_MSG_BG_SYSTEM_NEUTRAL\" and arg1 then\n        res = aura_env:OnChatMsgBGSystemNeutral(states, arg1)\n    elseif (e == \"CHAT_MSG_BG_SYSTEM_ALLIANCE\" or e == \"CHAT_MSG_BG_SYSTEM_HORDE\") and arg1 then\n        res = aura_env:OnChatMsgBGSystemFaction(states, arg1, (e == \"CHAT_MSG_BG_SYSTEM_ALLIANCE\") and 1 or 2)\n    elseif e == \"CHAT_MSG_ADDON\" and arg1 == aura_env.msg_prefix then\n        res = aura_env:RestartTimer(states, arg2, aura_env.res_time)\n    elseif e == \"AB_RESURRECTION_TIMER\" and arg1 then\n        res = aura_env:RestartTimer(states, arg1, aura_env.res_time)\n    elseif e == \"PLAYER_UNGHOST\" and not WeakAuras.IsOptionsOpen() then\n        -- todo find a way to not trigger this when option pane is open\n        local id = aura_env.subzones[GetSubZoneText()]\n        if id and states[id] and states[id].duration > 7 then\n            C_ChatInfo.SendAddonMessage(aura_env.msg_prefix, id, \"INSTANCE_CHAT\")\n        end\n    end\n    return init or res\nend",
						["spellIds"] = {
						},
						["unit"] = "player",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["names"] = {
						},
						["customVariables"] = "{\n    faction = \"number\",\n    duration = true,\n    expirationTime = true,\n}",
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
			["internalVersion"] = 68,
			["useAdjustedMin"] = false,
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
			["parent"] = "ArathiBasin Capture and Resurrection Timers",
			["barColor"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
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
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
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
					["text_text_format_p_time_legacy_floor"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_format"] = "timed",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_p_time_precision"] = 1,
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [4]
			},
			["gradientOrientation"] = "HORIZONTAL",
			["height"] = 20,
			["load"] = {
				["zoneIds"] = "",
				["use_zone"] = true,
				["zone"] = "Arathi Basin",
				["talent"] = {
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
				["use_size"] = false,
				["size"] = {
					["single"] = "pvp",
					["multi"] = {
						["ratedpvp"] = true,
						["pvp"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["iconSource"] = -1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.msg_prefix = \"AB_RES_TIMER\"\nC_ChatInfo.RegisterAddonMessagePrefix(aura_env.msg_prefix)\naura_env.capture_time = 65\naura_env.res_time = 31.5\naura_env.initial_res_time = 33.0\n\naura_env.bases = {\n    AB = {\n        name = \"Base\",\n        index = 1,\n        icon = 133282,\n    },\n    ST = {\n        name = \"Stables\",\n        index = 2,\n        icon = 132261,\n    },\n    BS = {\n        name = \"BS\",\n        icon = 136241,\n        index = 5,\n    },\n    LM = {\n        name = \"LM\",\n        index = 4,\n        icon = 135435,\n    },\n    GM = {\n        name = \"GM\",\n        index = 6,\n        icon = 134566,\n    },\n    FM = {\n        name = \"Farm\",\n        index = 3,\n        icon = 133974,\n    },\n}\n\n-- things returned from GetSubZoneText()\naura_env.subzones = {\n    [\"Trollbane Hall\"] = \"AB\",\n    [\"Defiler's Den\"] = \"AB\",\n    [\"Stables\"] = \"ST\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Blacksmith\"] = \"BS\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Farm\"] = \"FM\",\n}\n\naura_env.OnChatMsgBGSystemNeutral = function(self, states, msg)\n    local res = nil\n    if msg:find(\"Battle for Arathi Basin has begun\") then\n        res = self:RestartTimer(states, \"AB\", self.res_time)\n    elseif msg:find(\"Arathi Basin will begin in 1 minute\") then\n        res = self:RestartTimer(states, \"AB\", 60)\n        self.bases.AB.duration = 90\n        self.bases.AB.autoHide = false\n    elseif msg:find(\"Arathi Basin will begin in 30 seconds\") then\n        res = self:RestartTimer(states, \"AB\", 30)\n        self.bases.AB.duration = 90\n        self.bases.AB.autoHide = false\n    end\n    return res\nend\n\n-- names of bases as printed in chatframe\naura_env.text_name = {\n    [\"stables\"] = \"ST\",\n    [\"mine\"] = \"GM\",\n    [\"blacksmith\"] = \"BS\",\n    [\"lumber mill\"] = \"LM\",\n    [\"farm\"] = \"FM\",\n}\n\naura_env.ChatMessageToBase = function(self, msg)\n    for k,v in pairs(self.text_name) do\n        if msg:find(k) then\n            return v\n        end\n    end\nend\n\naura_env.OnChatMsgBGSystemFaction = function(self, states, msg, faction)\n    local id = nil\n    local controlled, controlled_end = msg:find(\"taken the\")\n    if controlled then\n        id = self:ChatMessageToBase(msg:sub(controlled_end+1))\n        self.bases[id].faction = faction\n        return self:RestartTimer(states, id, self.initial_res_time)\n    end\n    \n    local claimed, claimed_end = msg:find(\"claims the\")\n    local assaulted, assaulted_end = msg:find(\"assaulted the\")\n    if claimed then\n        id = self:ChatMessageToBase(msg:sub(claimed_end+1))\n        \n    elseif assaulted then\n        id = self:ChatMessageToBase(msg:sub(assaulted_end+1))\n    end\n    if id then\n        local res = self:RestartTimer(states, id, self.capture_time)\n        self.bases[id].faction = faction\n        self.bases[id].autoHide = false\n        return res\n    end\nend\n\naura_env.RestartTimer = function(self, states, id, t)\n    local s = self.bases[id]\n    if s then\n        s.duration = t\n        s.expirationTime = GetTime() + t\n        s.changed = true\n        s.show = true\n        s.autoHide = true\n        states[id] = s\n        return true\n    end\nend\n\naura_env.Initialize = function(self, states)\n    for _,_ in pairs(states) do\n        return nil\n    end\n    for id, tbl in pairs(self.bases) do\n        tbl.faction = 0\n        tbl.show = true\n        tbl.changed = true\n        tbl.progressType = \"timed\"\n        tbl.autoHide = false\n        tbl.base_id = id\n        states[id] = tbl\n    end\n    return true\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "if aura_env and aura_env.state  then\n    local id = aura_env.state.base_id\n    C_Timer.After(0.01, function() WeakAuras.ScanEvents(\"AB_RESURRECTION_TIMER\", id) end)\nend",
					["do_custom"] = true,
				},
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetY"] = 0,
			["useAdjustedMax"] = false,
			["width"] = 150,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["sparkHidden"] = "NEVER",
			["anchorFrameParent"] = false,
			["texture"] = "Flatt",
			["auto"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 11305,
			["id"] = "ArathiBasinCaptureOrResurrectionTimerEntry",
			["sparkHeight"] = 30,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["uid"] = "DeJBLIXZ3zs",
			["inverse"] = false,
			["enableGradient"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "faction",
						["value"] = "1",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "faction",
						["value"] = "2",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "barColor",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">",
						["variable"] = "duration",
						["value"] = "40",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
					},
				}, -- [3]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
		},
		["PVP: AB Callout Incoming 1"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
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
						["type"] = "custom",
						["custom_type"] = "status",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
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
			["internalVersion"] = 68,
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
					["type"] = "subbackground",
				}, -- [1]
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
				}, -- [2]
			},
			["height"] = 32,
			["load"] = {
				["zoneIds"] = "",
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Arathi Basin",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["selfPoint"] = "CENTER",
			["cooldown"] = false,
			["regionType"] = "icon",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["uid"] = "CoYxHGHhxVu",
			["anchorFrameParent"] = false,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 1",
			["semver"] = "1.0.0",
			["frameStrata"] = 1,
			["width"] = 32,
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = 132486,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message_type"] = "RAID_WARNING",
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_1\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 1 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
			},
		},
	},
	["login_squelch_time"] = 10,
	["editor_theme"] = "Monokai",
}
