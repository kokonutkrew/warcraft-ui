
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1598388753,
	["minimap"] = {
		["minimapPos"] = 291.322981922309,
		["hide"] = false,
	},
	["lastUpgrade"] = 1693548054,
	["dbVersion"] = 66,
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
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/SyzhSDGUb/2",
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
						["type"] = "spell",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Global Cooldown",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
			},
			["parent"] = "cursor circles",
			["desaturateForeground"] = false,
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
			["conditions"] = {
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["crop_y"] = 0.41,
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["authorOptions"] = {
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["xOffset"] = 0,
			["uid"] = "CcrtPjppgg)",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["anchorPoint"] = "CENTER",
			["blendMode"] = "BLEND",
			["width"] = 30,
			["frameStrata"] = 5,
			["slantMode"] = "INSIDE",
			["fontSize"] = 12,
			["compress"] = false,
			["selfPoint"] = "CENTER",
			["semver"] = "1.0.0",
			["tocversion"] = 80300,
			["id"] = "gcd",
			["backgroundTexture"] = "450915",
			["alpha"] = 1,
			["anchorFrameType"] = "MOUSE",
			["auraRotation"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = "15123",
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["spellName"] = "Resist Fire",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["unit"] = "player",
						["auraType"] = "BUFF",
						["use_extraSpellName"] = true,
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_spellName"] = false,
						["use_spellId"] = false,
						["extraSpellName"] = "Resist Fire",
						["use_sourceUnit"] = true,
						["subeventSuffix"] = "_DISPEL",
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
						["subeventSuffix"] = "_DISPEL",
						["sourceUnit"] = "player",
						["use_cloneId"] = false,
						["type"] = "combatlog",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
						["PRIEST"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["alpha"] = 0,
			["uid"] = "zMEnDr7(EGD",
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["icon"] = true,
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
			["selfPoint"] = "CENTER",
			["xOffset"] = -329.95526123047,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Resist Fire",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 135806,
			["cooldown"] = false,
			["parent"] = "World Buff Purge",
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
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_4p\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\">>> %s 4+ inc <<<\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
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
						["custom_hide"] = "timed",
						["event"] = "Health",
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    return true\nend\n\n\n",
						["events"] = "",
						["check"] = "update",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
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
				["zone"] = "Arathi Basin",
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["uid"] = "orJHJQe)ZlC",
			["authorOptions"] = {
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
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 4+",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 32,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["icon"] = true,
		},
		["Restoration Pot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 9030,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["names"] = {
						},
						["unit"] = "player",
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["desaturate"] = false,
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
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["level_operator"] = ">",
				["zoneIds"] = "",
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorMode"] = true,
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
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Font"] = "ABF",
			["semver"] = "1.0.2",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["useTooltip"] = false,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["uid"] = "YGCe2gMVdcX",
			["text1Enabled"] = true,
			["text1"] = "%s",
			["width"] = 64,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Restoration Pot",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["inverse"] = true,
			["zoom"] = 0,
			["frameStrata"] = 1,
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
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["text1Enabled"] = true,
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
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["url"] = "https://wago.io/_RGLErxXs/2",
			["stickyDuration"] = false,
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "HGVinrMD)DL",
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
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
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
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
					["text_anchorYOffset"] = 0,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1Font"] = "ABF",
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Grilled Squid 2",
			["desaturate"] = false,
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
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
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
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
			["cooldown"] = true,
			["xOffset"] = 0,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_extraSpellName"] = true,
						["spellId"] = "15123",
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["unit"] = "player",
						["spellName"] = "Resist Fire",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["auraType"] = "BUFF",
						["use_destFlags2"] = false,
						["debuffType"] = "HELPFUL",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_spellName"] = false,
						["use_spellId"] = false,
						["extraSpellName"] = "Songflower Serenade",
						["use_sourceUnit"] = true,
						["unevent"] = "timed",
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
						["unevent"] = "timed",
						["sourceUnit"] = "player",
						["use_cloneId"] = false,
						["use_extraSpellName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
						["PRIEST"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["alpha"] = 0,
			["config"] = {
			},
			["icon"] = true,
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
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
			["cooldownEdge"] = false,
			["xOffset"] = -329.95526123047,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Songflower Serenade",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 1,
			["zoom"] = 0,
			["uid"] = "MBfu0pXyr5Z",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 135934,
			["cooldown"] = false,
			["parent"] = "World Buff Purge",
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = "15123",
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["debuffType"] = "HELPFUL",
						["spellName"] = "Resist Fire",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["auraType"] = "BUFF",
						["subeventSuffix"] = "_DISPEL",
						["use_extraSpellName"] = true,
						["unit"] = "player",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_spellName"] = false,
						["use_spellId"] = false,
						["extraSpellName"] = "Slip'kik's Savvy",
						["use_sourceUnit"] = true,
						["unevent"] = "timed",
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
						["unevent"] = "timed",
						["sourceUnit"] = "player",
						["use_cloneId"] = false,
						["use_extraSpellName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
						["PRIEST"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["frameStrata"] = 1,
			["config"] = {
			},
			["icon"] = true,
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
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0,
			["zoom"] = 0,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Slip'kik's Savvy",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 1,
			["cooldownTextDisabled"] = false,
			["uid"] = "jxkhRI)kHlX",
			["inverse"] = false,
			["xOffset"] = -329.95526123047,
			["displayIcon"] = 135930,
			["cooldown"] = false,
			["parent"] = "World Buff Purge",
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
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_3\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 3 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
						["custom"] = "function()\n    return true\nend",
						["events"] = "",
						["check"] = "update",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
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
				["zone"] = "Arathi Basin",
				["zoneIds"] = "",
			},
			["frameStrata"] = 1,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 3",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 32,
			["zoom"] = 0,
			["uid"] = "S6llDhplL7o",
			["inverse"] = false,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["conditions"] = {
			},
			["cooldown"] = false,
			["icon"] = true,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
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
			["selfPoint"] = "BOTTOMLEFT",
			["uid"] = "MokMSWGOJRe",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["forceEvents"] = true,
				["groupOffset"] = true,
			},
			["authorOptions"] = {
			},
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
				["init"] = {
					["custom"] = "aura_env.displayText=\"\"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_incombat"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["percenthealth"] = "0",
						["event"] = "Conditions",
						["use_unit"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
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
						["spellId"] = 48480,
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
						["spellName"] = 48480,
						["subeventSuffix"] = "_DAMAGE",
						["sourceUnit"] = "player",
						["use_spellId"] = true,
						["event"] = "Spell Known",
						["use_exact_spellName"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["auraspellids"] = {
							"9634", -- [1]
						},
						["use_sourceUnit"] = true,
						["useExactSpellId"] = true,
						["duration"] = "5",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["ROGUE"] = true,
						["DRUID"] = true,
						["SHAMAN"] = true,
						["PALADIN"] = true,
					},
				},
				["namerealm"] = "Wherefore",
				["zoneIds"] = "",
			},
			["fontSize"] = 46,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["color"] = {
				1, -- [1]
				0.011764705882353, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText_format_c_format"] = "none",
			["preferToUpdate"] = false,
			["shadowYOffset"] = -1,
			["wordWrap"] = "WordWrap",
			["semver"] = "1.0.10",
			["tocversion"] = 30402,
			["id"] = "Melee Range Reminder",
			["uid"] = "lkSi86zoX(F",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "CENTER",
			["config"] = {
			},
			["automaticWidth"] = "Auto",
			["xOffset"] = 0,
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
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "bounceDecay",
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
				["finish"] = {
				},
				["init"] = {
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
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
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
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["semver"] = "1.0.0",
			["tocversion"] = 80300,
			["id"] = "cursor circles",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["uid"] = "7RRYBMXOExP",
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
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["forceEvents"] = true,
				["groupOffset"] = true,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = "15123",
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["debuffType"] = "HELPFUL",
						["spellName"] = "Resist Fire",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["unit"] = "player",
						["unevent"] = "timed",
						["use_extraSpellName"] = true,
						["subeventSuffix"] = "_DISPEL",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_spellName"] = false,
						["use_spellId"] = false,
						["extraSpellName"] = "Mol'dar's Moxie",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
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
						["unevent"] = "timed",
						["sourceUnit"] = "player",
						["use_cloneId"] = false,
						["use_extraSpellName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
						["PRIEST"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["frameStrata"] = 1,
			["config"] = {
			},
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["icon"] = true,
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Mol'dar's Moxie",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 1,
			["zoom"] = 0,
			["uid"] = "0p1(WRnib5Z",
			["inverse"] = false,
			["xOffset"] = -329.95526123047,
			["displayIcon"] = 136054,
			["cooldown"] = false,
			["parent"] = "World Buff Purge",
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
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/SyzhSDGUb/2",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_spell"] = false,
						["unit"] = "player",
						["spellIds"] = {
						},
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spell"] = "Soothing Mist",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cast",
						["unit"] = "player",
						["use_inverse"] = false,
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_spell"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["type"] = "unit",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["message_operator"] = "==",
						["type"] = "combatlog",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_FAILED",
						["use_unit"] = true,
						["duration"] = "0.3",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["message"] = "Interrupted",
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["use_sourceUnit"] = true,
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["use_messageType"] = true,
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
			["internalVersion"] = 66,
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
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
			},
			["parent"] = "cursor circles",
			["selfPoint"] = "CENTER",
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
				["size"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["anchorPoint"] = "CENTER",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["xOffset"] = 0,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["uid"] = "9CO)4JNGEAT",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "450915",
			["blendMode"] = "BLEND",
			["width"] = 40,
			["frameStrata"] = 5,
			["slantMode"] = "INSIDE",
			["textureWrapMode"] = "CLAMP",
			["tocversion"] = 80300,
			["crop_y"] = 0.41,
			["semver"] = "1.0.0",
			["compress"] = false,
			["id"] = "cast time",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["anchorFrameType"] = "MOUSE",
			["auraRotation"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["authorOptions"] = {
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
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
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["backgroundInset"] = 0,
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
			["align"] = "CENTER",
			["limit"] = 5,
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["stagger"] = 0,
			["gridType"] = "DR",
			["version"] = 3,
			["subRegions"] = {
			},
			["fullCircle"] = true,
			["space"] = 0,
			["load"] = {
				["use_class"] = "false",
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
			["radius"] = 200,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "CENTER",
			["animate"] = false,
			["rotation"] = 0,
			["scale"] = 0.45,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["borderInset"] = 1,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["gridWidth"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Warrior - 2: Defensive Consumes",
			["internalVersion"] = 66,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "p8eJxOa7eVw",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["useLimit"] = false,
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
			["text1Font"] = "ABF",
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
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
						["itemName"] = 12404,
						["type"] = "item",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Item)",
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
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
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
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
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
			["text1Enabled"] = true,
			["stickyDuration"] = false,
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "8JUe4v4Pq(k",
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
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
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
					["text_shadowYOffset"] = 0,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useCooldownModRate"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["desaturate"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Dense Sharpening Stone",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = true,
			["parent"] = "Warrior - 3: Offensive Consumes",
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
			["cooldown"] = true,
			["internalVersion"] = 66,
		},
		["Blessed Sunfruit "] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
			},
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Font"] = "ABF",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["text2Enabled"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["stickyDuration"] = false,
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
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = true,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["text1Enabled"] = true,
			["authorMode"] = true,
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
			["text2Containment"] = "INSIDE",
			["cooldownTextDisabled"] = false,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.1",
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "Warrior - 2: Defensive Consumes",
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["config"] = {
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["width"] = 64,
			["alpha"] = 1,
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Blessed Sunfruit ",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 66,
			["uid"] = "ErEppFHrs(7",
			["inverse"] = false,
			["zoom"] = 0,
			["useCooldownModRate"] = true,
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
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["cooldownSwipe"] = true,
			["useTooltip"] = false,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 18262,
						["type"] = "item",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
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
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
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
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "yNI8W(dVdi6",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Elemental Sharpening Stone",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
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
			["cooldown"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
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
			["internalVersion"] = 66,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
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
			["fullCircle"] = true,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["limit"] = 5,
			["animate"] = false,
			["anchorPoint"] = "CENTER",
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["selfPoint"] = "TOP",
			["grow"] = "DOWN",
			["constantFactor"] = "RADIUS",
			["borderInset"] = 1,
			["borderOffset"] = 4,
			["config"] = {
			},
			["tocversion"] = 11305,
			["id"] = "Warrior CD Useage Use CD",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 167.505920410156,
			["uid"] = "JSBd)j7pBiN",
			["rotation"] = 0,
			["space"] = 2,
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
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["internalVersion"] = 66,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 18641,
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnCooldown",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["names"] = {
						},
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["stickyDuration"] = false,
			["text1Containment"] = "INSIDE",
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
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
			["width"] = 64,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["text2FontFlags"] = "OUTLINE",
			["text1Font"] = "ABF",
			["xOffset"] = 0,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["text2Enabled"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "dense dynamite",
			["useTooltip"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["uid"] = "sJb0sGNe6L6",
			["inverse"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["SWIFTNESS"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["use_unit"] = true,
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["icon"] = true,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["level_operator"] = ">",
				["zoneIds"] = "",
			},
			["useTooltip"] = false,
			["authorMode"] = true,
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
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.2",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = -490,
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "SWIFTNESS",
			["text1Font"] = "ABF",
			["text2Enabled"] = true,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["uid"] = "fKDfEQ0bK8j",
			["inverse"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["internalVersion"] = 66,
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
			["cooldown"] = true,
			["text1Enabled"] = true,
		},
		["Healthstone 3"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["cooldownSwipe"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/cmdyr6QI7/2",
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
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 1: Recovery Consumes",
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "OR3iIgV(RtN",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text1Enabled"] = true,
			["width"] = 64,
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Healthstone 3",
			["useTooltip"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["text1Containment"] = "INSIDE",
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
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["Greater Stoneshield"] = {
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
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13455,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["use_unit"] = true,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
			},
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["frameStrata"] = 1,
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
			["stickyDuration"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
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
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
			["authorMode"] = true,
			["xOffset"] = -490,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["width"] = 64,
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Stoneshield",
			["text1Font"] = "ABF",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["uid"] = "zYYBoUmvFNX",
			["inverse"] = true,
			["internalVersion"] = 66,
			["cooldownTextDisabled"] = false,
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
			["cooldown"] = true,
			["desaturate"] = false,
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
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "",
						["unit"] = "player",
						["duration"] = "4",
						["event"] = "Chat Message",
						["names"] = {
						},
						["message"] = "12328",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["subeventPrefix"] = "",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
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
			["conditions"] = {
			},
			["font"] = "Friz Quadrata TT",
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
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 64,
			["automaticWidth"] = "Auto",
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["fontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["shadowXOffset"] = 1,
			["parent"] = "Warrior CD Useage Use CD",
			["uid"] = "nZlyvkhxfzm",
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["displayText_format_p_time_precision"] = 1,
			["auto"] = true,
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "USE DEATHWISH",
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bam.ogg",
					["message"] = "243175",
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["alpha"] = 1,
			["width"] = 64,
			["wordWrap"] = "WordWrap",
			["config"] = {
			},
			["inverse"] = false,
			["preferToUpdate"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 136146,
			["cooldown"] = false,
			["displayText_format_p_time_dynamic"] = false,
		},
		["SAND"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
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
						["type"] = "item",
						["itemName"] = 19183,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
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
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "SAND",
			["useCooldownModRate"] = true,
			["text2Enabled"] = true,
			["width"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "jca8BSmUqTR",
			["inverse"] = true,
			["useTooltip"] = false,
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
			["cooldown"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
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
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
			["text1Enabled"] = true,
			["desaturate"] = false,
			["stickyDuration"] = false,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["uid"] = "HWTXbzsrEON",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text2Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["text2FontFlags"] = "OUTLINE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Healthstone 2",
			["parent"] = "Warrior - 1: Recovery Consumes",
			["text2Enabled"] = true,
			["width"] = 64,
			["internalVersion"] = 66,
			["config"] = {
			},
			["inverse"] = false,
			["text1Containment"] = "INSIDE",
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
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Defense"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
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
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13445,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
			["internalVersion"] = 66,
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
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["useTooltip"] = false,
			["authorMode"] = true,
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["uid"] = "9JQ)zXFbdMn",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Defense",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 64,
			["text1Enabled"] = true,
			["config"] = {
			},
			["inverse"] = true,
			["frameStrata"] = 1,
			["parent"] = "Warrior - 2: Defensive Consumes",
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
			["cooldown"] = true,
			["xOffset"] = -490,
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
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\cat2.ogg",
					["message"] = "243176",
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
						["message"] = "23234",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["subeventPrefix"] = "",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
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
			["conditions"] = {
			},
			["font"] = "Friz Quadrata TT",
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
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 64,
			["cooldownEdge"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Orc",
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_race"] = true,
				["zoneIds"] = "",
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["fontSize"] = 12,
			["xOffset"] = 0,
			["shadowYOffset"] = -1,
			["shadowXOffset"] = 1,
			["parent"] = "Warrior CD Useage Use CD",
			["uid"] = "UvY8coJhnFN",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["wordWrap"] = "WordWrap",
			["useCooldownModRate"] = true,
			["displayText_format_p_time_precision"] = 1,
			["auto"] = true,
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "Bloodfury",
			["icon"] = true,
			["alpha"] = 1,
			["width"] = 64,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["preferToUpdate"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 135726,
			["cooldown"] = false,
			["anchorPoint"] = "CENTER",
		},
		["Dragonbreath"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 8410,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
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
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "FVBX3(TjZNK",
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text1Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1Font"] = "ABF",
			["internalVersion"] = 66,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Dragonbreath",
			["desaturate"] = false,
			["alpha"] = 1,
			["width"] = 64,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = true,
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
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Major Healing Potion 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 1: Recovery Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["cooldownSwipe"] = true,
			["text1Enabled"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 13446,
						["type"] = "item",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["names"] = {
						},
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
			["xOffset"] = 0,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text2Font"] = "Friz Quadrata TT",
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
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
			["semver"] = "1.0.1",
			["zoom"] = 0,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Major Healing Potion 2",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["uid"] = "X12XUYIZyon",
			["inverse"] = false,
			["internalVersion"] = 66,
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
			["cooldown"] = true,
			["url"] = "https://wago.io/cmdyr6QI7/2",
		},
		["Fortitude"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
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
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 3825,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["useTooltip"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["xOffset"] = -490,
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
			["desaturate"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
			["authorMode"] = true,
			["useCooldownModRate"] = true,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 66,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["uid"] = "1cSSt3md3vL",
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Fortitude",
			["auto"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
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
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Tender Wolf Steak"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = 0,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Enabled"] = true,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local trigger1 = WeakAuras.GetData(aura_env.id).triggers[1].trigger\n    local trigger2 = WeakAuras.GetData(aura_env.id).triggers[2].trigger\n    local itemId = trigger2.itemName\n    local trigger1State = WeakAuras.GetTriggerStateForTrigger(aura_env.id, 1)\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    \n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend",
					["do_custom"] = true,
				},
				["finish"] = {
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
						["type"] = "aura2",
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
						["itemName"] = 18045,
						["use_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["use_unit"] = true,
						["use_includeBank"] = false,
						["subeventSuffix"] = "_CAST_START",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["stickyDuration"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Containment"] = "INSIDE",
			["icon"] = true,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["displayIcon"] = "134003",
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
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["level"] = "40",
				["level_operator"] = ">",
				["zoneIds"] = "",
			},
			["useTooltip"] = false,
			["authorMode"] = true,
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["xOffset"] = -490,
			["text1Font"] = "ABF",
			["zoom"] = 0,
			["desaturate"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["uid"] = "HpLKMvP3r5o",
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["semver"] = "1.0.2",
			["width"] = 64,
			["text1"] = "%s",
			["alpha"] = 1,
			["internalVersion"] = 66,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Tender Wolf Steak",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = true,
			["text1FontFlags"] = "OUTLINE",
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
			["cooldown"] = true,
			["useCooldownModRate"] = true,
		},
		["Greater Fire Pot"] = {
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
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13457,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
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
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
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
			["cooldownEdge"] = false,
			["alpha"] = 1,
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
			["stickyDuration"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["xOffset"] = -490,
			["text2Containment"] = "INSIDE",
			["cooldownTextDisabled"] = false,
			["text1Font"] = "ABF",
			["auto"] = true,
			["desaturate"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["useTooltip"] = false,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["uid"] = "Flh17w(0Er7",
			["text1FontFlags"] = "OUTLINE",
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = true,
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Fire Pot",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["internalVersion"] = 66,
			["config"] = {
			},
			["inverse"] = true,
			["zoom"] = 0,
			["authorOptions"] = {
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
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
		},
		["LIP"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 1: Recovery Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
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
						["use_itemName"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
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
						["use_unit"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["count"] = "1",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
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
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["uid"] = "N0Irb813)VL",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
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
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["level_operator"] = ">",
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "LIP",
			["desaturate"] = false,
			["alpha"] = 1,
			["width"] = 64,
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
			["config"] = {
			},
			["inverse"] = false,
			["useTooltip"] = false,
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
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["Titans"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
						["itemName"] = 13510,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Containment"] = "INSIDE",
			["icon"] = true,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorMode"] = true,
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
			["text2Containment"] = "INSIDE",
			["authorOptions"] = {
			},
			["text1Font"] = "ABF",
			["text2"] = "%p",
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 66,
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["config"] = {
			},
			["semver"] = "1.0.2",
			["text1"] = "%s",
			["width"] = 64,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Titans",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["uid"] = "5F0uSnAjY8T",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
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
			["cooldown"] = true,
			["frameStrata"] = 1,
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
				["init"] = {
				},
				["finish"] = {
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 66,
			["useLimit"] = false,
			["align"] = "CENTER",
			["uid"] = "Uwh0zbAQcVE",
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["stagger"] = 0,
			["selfPoint"] = "TOPLEFT",
			["version"] = 2,
			["subRegions"] = {
			},
			["rotation"] = 0,
			["fullCircle"] = true,
			["load"] = {
				["use_class"] = "false",
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
			["backgroundInset"] = 0,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["animate"] = false,
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
			["scale"] = 0.45,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["arcLength"] = 360,
			["borderInset"] = 1,
			["constantFactor"] = "RADIUS",
			["frameStrata"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Warrior - 3: Offensive Consumes",
			["gridType"] = "DR",
			["gridWidth"] = 1,
			["anchorFrameType"] = "SCREEN",
			["space"] = 0,
			["config"] = {
			},
			["sort"] = "none",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
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
			["text1Containment"] = "INSIDE",
			["cooldownSwipe"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 9172,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnCooldown",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["names"] = {
						},
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_unit"] = true,
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
						["names"] = {
						},
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["unit"] = "player",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "q55cuVzFcTJ",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
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
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
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
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "INVIS",
			["internalVersion"] = 66,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["config"] = {
			},
			["inverse"] = true,
			["cooldownEdge"] = false,
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
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Spirit"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
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
			["text1Containment"] = "INSIDE",
			["cooldownTextDisabled"] = false,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
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
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorMode"] = true,
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Font"] = "ABF",
			["auto"] = true,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["useTooltip"] = false,
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
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["uid"] = "iG4paspZ0qu",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["width"] = 64,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Spirit",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 66,
			["config"] = {
			},
			["inverse"] = true,
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Healthstone 1"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
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
						["itemName"] = 9421,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["event"] = "Item Count",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
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
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "VIkrlhTs7oq",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text1Enabled"] = true,
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 66,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["parent"] = "Warrior - 1: Recovery Consumes",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Enabled"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Healthstone 1",
			["useCooldownModRate"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
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
			["cooldown"] = true,
			["url"] = "https://wago.io/cmdyr6QI7/2",
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
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
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
						["itemName"] = 12451,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["icon"] = true,
			["desaturate"] = false,
			["useTooltip"] = false,
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
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["uid"] = "R4)yATif(lI",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text1Font"] = "ABF",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["zoom"] = 0,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Juju Power",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["width"] = 64,
			["text2FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["inverse"] = true,
			["internalVersion"] = 66,
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
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Dirge's Kickin"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
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
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["spellIds"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text2Enabled"] = true,
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
			["text1Containment"] = "INSIDE",
			["cooldownTextDisabled"] = false,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
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
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorMode"] = true,
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["semver"] = "1.0.2",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "Warrior - 2: Defensive Consumes",
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
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["uid"] = "WZcwIiE8J9d",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["width"] = 64,
			["alpha"] = 1,
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Dirge's Kickin",
			["text1Font"] = "ABF",
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
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
			["zoom"] = 0,
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
			["cooldown"] = true,
			["frameStrata"] = 1,
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
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
			["version"] = 4,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = "false",
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
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "World Buff Purge",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = 583.538208007813,
			["uid"] = "A7J9lnBowvc",
			["selfPoint"] = "BOTTOMLEFT",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["forceEvents"] = true,
				["groupOffset"] = true,
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
			["text1Font"] = "ABF",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/cmdyr6QI7/2",
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
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
			},
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Enabled"] = true,
			["useTooltip"] = false,
			["text1Containment"] = "INSIDE",
			["desaturate"] = false,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["uid"] = "Vpd)i0TOPta",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text2FontFlags"] = "OUTLINE",
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useCooldownModRate"] = true,
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Tuber",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 66,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
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
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\n\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_Clr\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s clear\",AV.LIST_VALID_SUBZONES[subzone])\n                    --print(msg)\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["events"] = "",
						["check"] = "update",
						["custom"] = "function()\n    return true\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
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
				["zone"] = "Arathi Basin",
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["uid"] = "mtAeCVGFcrG",
			["authorOptions"] = {
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
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Clear",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 32,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["icon"] = true,
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
			["text1Containment"] = "INSIDE",
			["cooldownSwipe"] = true,
			["text1Enabled"] = true,
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
						["itemName"] = 5634,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
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
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "Esw7mJSw)4v",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["icon"] = true,
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "FAP",
			["text2Font"] = "Friz Quadrata TT",
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
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
			["cooldown"] = true,
			["authorOptions"] = {
			},
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
					["do_glow"] = true,
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\Prat-3.0\\sounds\\Bell.ogg",
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
						["message"] = "25891",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["subeventPrefix"] = "",
						["use_messageType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Friz Quadrata TT",
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 64,
			["wordWrap"] = "WordWrap",
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 136006,
			["fontSize"] = 12,
			["shadowYOffset"] = -1,
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
			["shadowXOffset"] = 1,
			["icon"] = true,
			["config"] = {
			},
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["width"] = 64,
			["alpha"] = 1,
			["parent"] = "Warrior CD Useage Use CD",
			["useCooldownModRate"] = true,
			["displayText_format_p_time_precision"] = 1,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "USE EARTHSTRIKE ",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["preferToUpdate"] = false,
			["uid"] = "eVYPsXo2D)C",
			["inverse"] = false,
			["fixedWidth"] = 200,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["anchorPoint"] = "CENTER",
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
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_2\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 2 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
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
						["custom_hide"] = "timed",
						["event"] = "Health",
						["names"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    return true\nend",
						["events"] = "",
						["check"] = "update",
						["spellIds"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
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
				["zone"] = "Arathi Basin",
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["authorOptions"] = {
			},
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 2",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 32,
			["zoom"] = 0,
			["uid"] = "gU(rCXXg1QR",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = false,
			["cooldownEdge"] = false,
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
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
						["custom"] = "function()\n    return true\nend",
						["events"] = "",
						["check"] = "update",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
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
				["zone"] = "Arathi Basin",
				["zoneIds"] = "",
			},
			["frameStrata"] = 1,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_message"] = true,
					["message_type"] = "RAID_WARNING",
				},
				["init"] = {
					["custom"] = "aura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\n\naura_env.TIMER_CD = 0\nlocal AV = aura_env\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Inc_Button_1\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    b:SetScript(\"OnClick\", function(self)\n            local time_cur = GetTime()\n            if (time_cur - AV.TIMER_CD) > 1 then\n                local subzone = GetSubZoneText()\n                if subzone and AV.LIST_VALID_SUBZONES[subzone] then\n                    local msg = string.format(\"%s 1 inc\",AV.LIST_VALID_SUBZONES[subzone])\n                    SendChatMessage(msg,\"INSTANCE_CHAT\")\n                end\n                AV.TIMER_CD = time_cur\n                b.c:SetCooldown(GetTime(),1)\n            end\n    end)\n    r.btn_ann = b\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["xOffset"] = 0,
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["width"] = 32,
			["alpha"] = 1,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 1",
			["semver"] = "1.0.0",
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["uid"] = "CoYxHGHhxVu",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["url"] = "https://wago.io/GZL1eMszV/1",
		},
		["swing timer"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "None",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["selfPoint"] = "CENTER",
			["yOffset"] = -321.99978637695,
			["anchorPoint"] = "CENTER",
			["iconSource"] = -1,
			["xOffset"] = 19.000305175781,
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/wHUImG4M6/1",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
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
						["use_absorbMode"] = true,
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "PLAYER_SPECIALIZATION_CHANGED ACTIVE_TALENT_GROUP_UPDATE",
						["custom_type"] = "event",
						["use_unit"] = true,
						["names"] = {
						},
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
						["custom_type"] = "status",
						["custom"] = "function() return true end",
						["genericShowOn"] = "showOnActive",
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
			["internalVersion"] = 66,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
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
					["colorType"] = "custom",
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 0,
					["easeStrength"] = 3,
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    local t = WeakAuras.triggerState[aura_env.id].triggers;\n    if not t[1] then return r2,g2,b2,a2 else return r1,g1,b1,a1 end\nend\n\n\n",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["use_color"] = true,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["backdropInFront"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["barColor"] = {
				0.85098039215686, -- [1]
				0.80392156862745, -- [2]
				0.65098039215686, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkRotationMode"] = "AUTO",
			["icon"] = false,
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
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_legacy_floor"] = true,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
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
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_mod_rate"] = true,
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
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "1 Pixel",
					["border_offset"] = 1,
				}, -- [6]
			},
			["height"] = 17.999904632568,
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["enableGradient"] = false,
			["sparkOffsetX"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stickyDuration"] = false,
			["sparkOffsetY"] = 0,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["gradientOrientation"] = "HORIZONTAL",
			["spark"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["useAdjustededMax"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["anchorFrameType"] = "SCREEN",
			["id"] = "swing timer",
			["frameStrata"] = 2,
			["alpha"] = 1,
			["width"] = 384.00048828125,
			["sparkHidden"] = "NEVER",
			["uid"] = "1tFOxKvWIXO",
			["inverse"] = true,
			["auto"] = true,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["custom"] = "\naura_env.fs:Show();",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "\naura_env.fs:Hide();",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "local height = aura_env.region:GetHeight();\n\n\nlocal aura_env = aura_env;\nlocal region = aura_env.region;\nregion:ClearAllPoints();\nlocal rage = WeakAuras.regions[\"Potato's Arms Rage\"].region;\nregion:SetPoint(\"BOTTOMLEFT\", rage, \"TOPLEFT\", 0, 1);\nregion:SetPoint(\"BOTTOMRIGHT\", rage, \"TOPRIGHT\", 0, 1);\nregion:SetHeight(height);\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = false,
				},
			},
		},
		["Greater Nature"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
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
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "item",
						["itemName"] = 13458,
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnCooldown",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
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
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["stickyDuration"] = false,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["authorMode"] = true,
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
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["useCooldownModRate"] = true,
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["uid"] = "SzxrQ6LlgiA",
			["useTooltip"] = false,
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = true,
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Nature",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = true,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
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
			["cooldown"] = true,
			["authorOptions"] = {
			},
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
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["cooldownSwipe"] = true,
			["useTooltip"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 2459,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["use_unit"] = true,
						["names"] = {
						},
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
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["cooldownEdge"] = false,
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["authorOptions"] = {
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "SWIFT",
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text2Enabled"] = true,
			["width"] = 64,
			["text1Enabled"] = true,
			["uid"] = "LZ8fJPiI5kL",
			["inverse"] = true,
			["internalVersion"] = 66,
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
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["JUJU EMBER"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
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
						["itemName"] = 12455,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["unevent"] = "auto",
						["use_exact_itemName"] = true,
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["event"] = "Item Count",
						["unit"] = "player",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useCooldownModRate"] = true,
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
			["cooldownEdge"] = false,
			["zoom"] = 0,
			["icon"] = true,
			["desaturate"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
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
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["uid"] = "J1n6Js(VHuq",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["width"] = 64,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "JUJU EMBER",
			["text1Font"] = "ABF",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["text1Enabled"] = true,
			["text2Enabled"] = true,
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
			["cooldown"] = true,
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
						["customVariables"] = "{\n    faction = \"number\",\n    duration = true,\n    expirationTime = true,\n}",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_type"] = "stateupdate",
						["events"] = "CHAT_MSG_BG_SYSTEM_NEUTRAL CHAT_MSG_BG_SYSTEM_ALLIANCE CHAT_MSG_BG_SYSTEM_HORDE CHAT_MSG_ADDON PLAYER_UNGHOST AB_RESURRECTION_TIMER",
						["unit"] = "player",
						["check"] = "event",
						["spellIds"] = {
						},
						["custom"] = "function(states, e, arg1, arg2, ...)\n    local init = aura_env:Initialize(states)\n    local res\n    if e == \"CHAT_MSG_BG_SYSTEM_NEUTRAL\" and arg1 then\n        res = aura_env:OnChatMsgBGSystemNeutral(states, arg1)\n    elseif (e == \"CHAT_MSG_BG_SYSTEM_ALLIANCE\" or e == \"CHAT_MSG_BG_SYSTEM_HORDE\") and arg1 then\n        res = aura_env:OnChatMsgBGSystemFaction(states, arg1, (e == \"CHAT_MSG_BG_SYSTEM_ALLIANCE\") and 1 or 2)\n    elseif e == \"CHAT_MSG_ADDON\" and arg1 == aura_env.msg_prefix then\n        res = aura_env:RestartTimer(states, arg2, aura_env.res_time)\n    elseif e == \"AB_RESURRECTION_TIMER\" and arg1 then\n        res = aura_env:RestartTimer(states, arg1, aura_env.res_time)\n    elseif e == \"PLAYER_UNGHOST\" and not WeakAuras.IsOptionsOpen() then\n        -- todo find a way to not trigger this when option pane is open\n        local id = aura_env.subzones[GetSubZoneText()]\n        if id and states[id] and states[id].duration > 7 then\n            C_ChatInfo.SendAddonMessage(aura_env.msg_prefix, id, \"INSTANCE_CHAT\")\n        end\n    end\n    return init or res\nend",
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
			["internalVersion"] = 66,
			["useAdjustedMin"] = false,
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
			["id"] = "ArathiBasinCaptureOrResurrectionTimerEntry",
			["barColor"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["desaturate"] = false,
			["xOffset"] = 0,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
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
					["text_text_format_p_time_format"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_format"] = "timed",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_legacy_floor"] = true,
				}, -- [4]
			},
			["gradientOrientation"] = "HORIZONTAL",
			["icon"] = true,
			["load"] = {
				["size"] = {
					["single"] = "pvp",
					["multi"] = {
						["ratedpvp"] = true,
						["pvp"] = true,
					},
				},
				["use_zone"] = true,
				["use_size"] = false,
				["talent"] = {
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
				["zone"] = "Arathi Basin",
				["zoneIds"] = "",
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["height"] = 20,
			["enableGradient"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["custom"] = "if aura_env and aura_env.state  then\n    local id = aura_env.state.base_id\n    C_Timer.After(0.01, function() WeakAuras.ScanEvents(\"AB_RESURRECTION_TIMER\", id) end)\nend",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.msg_prefix = \"AB_RES_TIMER\"\nC_ChatInfo.RegisterAddonMessagePrefix(aura_env.msg_prefix)\naura_env.capture_time = 65\naura_env.res_time = 31.5\naura_env.initial_res_time = 33.0\n\naura_env.bases = {\n    AB = {\n        name = \"Base\",\n        index = 1,\n        icon = 133282,\n    },\n    ST = {\n        name = \"Stables\",\n        index = 2,\n        icon = 132261,\n    },\n    BS = {\n        name = \"BS\",\n        icon = 136241,\n        index = 5,\n    },\n    LM = {\n        name = \"LM\",\n        index = 4,\n        icon = 135435,\n    },\n    GM = {\n        name = \"GM\",\n        index = 6,\n        icon = 134566,\n    },\n    FM = {\n        name = \"Farm\",\n        index = 3,\n        icon = 133974,\n    },\n}\n\n-- things returned from GetSubZoneText()\naura_env.subzones = {\n    [\"Trollbane Hall\"] = \"AB\",\n    [\"Defiler's Den\"] = \"AB\",\n    [\"Stables\"] = \"ST\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Blacksmith\"] = \"BS\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Farm\"] = \"FM\",\n}\n\naura_env.OnChatMsgBGSystemNeutral = function(self, states, msg)\n    local res = nil\n    if msg:find(\"Battle for Arathi Basin has begun\") then\n        res = self:RestartTimer(states, \"AB\", self.res_time)\n    elseif msg:find(\"Arathi Basin will begin in 1 minute\") then\n        res = self:RestartTimer(states, \"AB\", 60)\n        self.bases.AB.duration = 90\n        self.bases.AB.autoHide = false\n    elseif msg:find(\"Arathi Basin will begin in 30 seconds\") then\n        res = self:RestartTimer(states, \"AB\", 30)\n        self.bases.AB.duration = 90\n        self.bases.AB.autoHide = false\n    end\n    return res\nend\n\n-- names of bases as printed in chatframe\naura_env.text_name = {\n    [\"stables\"] = \"ST\",\n    [\"mine\"] = \"GM\",\n    [\"blacksmith\"] = \"BS\",\n    [\"lumber mill\"] = \"LM\",\n    [\"farm\"] = \"FM\",\n}\n\naura_env.ChatMessageToBase = function(self, msg)\n    for k,v in pairs(self.text_name) do\n        if msg:find(k) then\n            return v\n        end\n    end\nend\n\naura_env.OnChatMsgBGSystemFaction = function(self, states, msg, faction)\n    local id = nil\n    local controlled, controlled_end = msg:find(\"taken the\")\n    if controlled then\n        id = self:ChatMessageToBase(msg:sub(controlled_end+1))\n        self.bases[id].faction = faction\n        return self:RestartTimer(states, id, self.initial_res_time)\n    end\n    \n    local claimed, claimed_end = msg:find(\"claims the\")\n    local assaulted, assaulted_end = msg:find(\"assaulted the\")\n    if claimed then\n        id = self:ChatMessageToBase(msg:sub(claimed_end+1))\n        \n    elseif assaulted then\n        id = self:ChatMessageToBase(msg:sub(assaulted_end+1))\n    end\n    if id then\n        local res = self:RestartTimer(states, id, self.capture_time)\n        self.bases[id].faction = faction\n        self.bases[id].autoHide = false\n        return res\n    end\nend\n\naura_env.RestartTimer = function(self, states, id, t)\n    local s = self.bases[id]\n    if s then\n        s.duration = t\n        s.expirationTime = GetTime() + t\n        s.changed = true\n        s.show = true\n        s.autoHide = true\n        states[id] = s\n        return true\n    end\nend\n\naura_env.Initialize = function(self, states)\n    for _,_ in pairs(states) do\n        return nil\n    end\n    for id, tbl in pairs(self.bases) do\n        tbl.faction = 0\n        tbl.show = true\n        tbl.changed = true\n        tbl.progressType = \"timed\"\n        tbl.autoHide = false\n        tbl.base_id = id\n        states[id] = tbl\n    end\n    return true\nend",
					["do_custom"] = true,
				},
			},
			["uid"] = "DeJBLIXZ3zs",
			["useAdjustedMax"] = false,
			["selfPoint"] = "CENTER",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 30,
			["texture"] = "Flatt",
			["spark"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["sparkHidden"] = "NEVER",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 150,
			["sparkOffsetY"] = 0,
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
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "1",
						["variable"] = "faction",
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
						["value"] = "2",
						["variable"] = "faction",
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
						["value"] = "40",
						["variable"] = "duration",
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
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "ArathiBasin Capture and Resurrection Timers",
		},
		["Thistle Tea"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["cooldownSwipe"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
						["itemName"] = 7676,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_unit"] = true,
						["unit"] = "player",
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["cooldownEdge"] = false,
			["internalVersion"] = 66,
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
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["uid"] = "AF3r)aAgaAX",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["selfPoint"] = "CENTER",
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["desaturate"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Thistle Tea",
			["text1Enabled"] = true,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["useTooltip"] = false,
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
			["cooldown"] = true,
			["icon"] = true,
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
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 220,
			["internalVersion"] = 66,
			["selfPoint"] = "TOPLEFT",
			["align"] = "LEFT",
			["rotation"] = 0,
			["sort"] = "none",
			["version"] = 1,
			["subRegions"] = {
			},
			["xOffset"] = -244.989318847656,
			["arcLength"] = 360,
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
			["gridType"] = "DR",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["space"] = 1,
			["animate"] = false,
			["fullCircle"] = true,
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["anchorFrameFrame"] = "UIWidgetTopCenterContainerFrame",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["borderEdge"] = "Square Full White",
			["config"] = {
			},
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["useLimit"] = false,
			["borderOffset"] = 4,
			["gridWidth"] = 3,
			["tocversion"] = 11305,
			["id"] = "ArathiBasin Capture and Resurrection Timers",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["uid"] = "euXKNmiWPRp",
			["stagger"] = 0,
			["yOffset"] = -76.51611328125,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["radius"] = 200,
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
				["size"] = {
					["multi"] = {
					},
				},
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
				["zoneIds"] = "",
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
						["custom_type"] = "stateupdate",
						["event"] = "Health",
						["use_unit"] = true,
						["events"] = "UNIT_SPELLCAST_SUCCEEDED:player UNIT_POWER_FREQUENT:player",
						["spellIds"] = {
						},
						["custom"] = "function(a, e, t)\n    local currentMana = UnitPower(\"player\" , 0)\n    \n    if currentMana >= UnitPowerMax(\"player\", 0) then\n        return false\n    end\n    \n    if e == \"UNIT_POWER_FREQUENT\" and currentMana > aura_env.lastMana then\n        local duration = 2\n        a[\"\"] = {\n            show = true,\n            changed = true,\n            duration = duration,\n            expirationTime = GetTime() + duration,\n            progressType = \"timed\",\n            autoHide = true\n        }\n        aura_env.lastMana = currentMana\n        \n    elseif e == \"UNIT_SPELLCAST_SUCCEEDED\" and currentMana < aura_env.lastMana then\n        local duration = 6.45 -- why?\n        --local duration = 5\n        a[\"\"] = {\n            show = true,\n            changed = true,\n            duration = duration,\n            expirationTime = GetTime() + duration,\n            progressType = \"timed\",\n            autoHide = true\n        }\n        aura_env.lastMana = currentMana\n    end\n    \n    --aura_env.lastMana = currentMana\n    return true\nend",
						["use_sourceUnit"] = true,
						["check"] = "event",
						["subeventSuffix"] = "_ENERGIZE",
						["sourceUnit"] = "player",
						["customVariables"] = "{\n    duration = true\n}",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["useAdjustedMin"] = false,
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
					["text_text_format_p_time_format"] = 0,
					["anchorXOffset"] = 0,
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
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "SPARK",
					["text_anchorYOffset"] = -10,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [3]
				{
					["border_size"] = 16,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_offset"] = 5,
				}, -- [4]
			},
			["height"] = 32.9999542236328,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["useAdjustedMax"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mana",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderInFront"] = true,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["icon_side"] = "RIGHT",
			["parent"] = "Mana Bar + Tick",
			["sparkTexture"] = "GarrMission_EncounterBar-Spark",
			["sparkHeight"] = 48,
			["icon"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["custom"] = "WeakAuras.ScanEvents(\"TICKUPDATE\", true)",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.lastMana = UnitPower(\"player\" , 0)",
					["do_custom"] = true,
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["semver"] = "1.0.3",
			["sparkHidden"] = "NEVER",
			["id"] = "Mana 5SecondRule + Ticks",
			["anchorFrameType"] = "SELECTFRAME",
			["frameStrata"] = 4,
			["width"] = 319.999938964844,
			["uid"] = "dvZawXAyrxC",
			["auto"] = true,
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "5",
						["variable"] = "duration",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
					},
				}, -- [1]
			},
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
		},
		["Greater Frost"] = {
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
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["itemName"] = 13456,
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnCooldown",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["use_unit"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
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
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
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
			["frameStrata"] = 1,
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["text2"] = "%p",
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text1Enabled"] = true,
			["authorMode"] = true,
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
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["auto"] = true,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["internalVersion"] = 66,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text2FontSize"] = 31,
			["uid"] = "WUpyH0(uN6p",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["width"] = 64,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Frost",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = true,
			["alpha"] = 1,
			["xOffset"] = -490,
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
			["cooldown"] = true,
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
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "",
						["unit"] = "player",
						["duration"] = "4",
						["event"] = "Chat Message",
						["names"] = {
						},
						["message"] = "24427",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["subeventPrefix"] = "",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
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
			["conditions"] = {
			},
			["font"] = "Friz Quadrata TT",
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
					["text_fontType"] = "OUTLINE",
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 64,
			["selfPoint"] = "CENTER",
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["fontSize"] = 12,
			["xOffset"] = 0,
			["displayText_format_p_time_dynamic"] = false,
			["shadowXOffset"] = 1,
			["parent"] = "Warrior CD Useage Use CD",
			["uid"] = "K7VNSy4CmVO",
			["actions"] = {
				["start"] = {
					["message"] = "243176",
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_message"] = false,
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["wordWrap"] = "WordWrap",
			["useCooldownModRate"] = true,
			["displayText_format_p_time_precision"] = 1,
			["justify"] = "LEFT",
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Diamond flask",
			["automaticWidth"] = "Auto",
			["alpha"] = 1,
			["width"] = 64,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["preferToUpdate"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132788,
			["cooldown"] = false,
			["shadowYOffset"] = -1,
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
						["messageType"] = "CHAT_MSG_RAID",
						["subeventSuffix"] = "",
						["subeventPrefix"] = "",
						["duration"] = "4",
						["event"] = "Chat Message",
						["names"] = {
						},
						["message"] = "1719",
						["unevent"] = "timed",
						["spellIds"] = {
						},
						["message_operator"] = "==",
						["use_message"] = true,
						["unit"] = "player",
						["use_messageType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["font"] = "Friz Quadrata TT",
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
					["text_visible"] = true,
					["text_shadowYOffset"] = 0,
					["anchorXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
			},
			["height"] = 64,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["message"] = "243176",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_message"] = false,
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132109,
			["fontSize"] = 12,
			["yOffset"] = 0,
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
			["shadowXOffset"] = 1,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["width"] = 64,
			["alpha"] = 1,
			["parent"] = "Warrior CD Useage Use CD",
			["useCooldownModRate"] = true,
			["displayText_format_p_time_precision"] = 1,
			["justify"] = "LEFT",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Reck",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["preferToUpdate"] = false,
			["uid"] = "3k2f4TIs4h9",
			["inverse"] = false,
			["fixedWidth"] = 200,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["displayText_format_p_time_dynamic"] = false,
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
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["selfPoint"] = "CENTER",
			["align"] = "CENTER",
			["limit"] = 5,
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["stagger"] = 0,
			["gridType"] = "DR",
			["version"] = 2,
			["subRegions"] = {
			},
			["xOffset"] = 50,
			["fullCircle"] = true,
			["load"] = {
				["use_class"] = "false",
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
			["useLimit"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["grow"] = "GRID",
			["animate"] = false,
			["rotation"] = 0,
			["scale"] = 0.45,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["internalVersion"] = 66,
			["uid"] = "rEXC8C8ZlnX",
			["constantFactor"] = "RADIUS",
			["frameStrata"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Warrior - 1: Recovery Consumes",
			["borderInset"] = 1,
			["gridWidth"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["config"] = {
			},
			["space"] = 0,
			["backgroundInset"] = 0,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["background"] = "None",
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
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
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
			["align"] = "CENTER",
			["desc"] = "Set of clickable buttons to announce enemy count or incoming at the base you're currently at.",
			["stagger"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
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
			["rotation"] = 0,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 1,
			["animate"] = false,
			["useLimit"] = false,
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["fullCircle"] = true,
			["selfPoint"] = "LEFT",
			["constantFactor"] = "RADIUS",
			["space"] = 5,
			["borderOffset"] = 4,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Bar - Jon Test",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["limit"] = 5,
			["uid"] = "hN)7qTsKOYh",
			["arcLength"] = 360,
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["internalVersion"] = 66,
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
			["stickyDuration"] = false,
			["cooldownSwipe"] = true,
			["useTooltip"] = false,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "cz7bOsin7X8",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
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
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Blessed Sunfruit",
			["text1Containment"] = "INSIDE",
			["useCooldownModRate"] = true,
			["width"] = 64,
			["internalVersion"] = 66,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/_RGLErxXs/2",
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
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["spellId"] = "15123",
						["duration"] = "1",
						["names"] = {
						},
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["unevent"] = "timed",
						["use_extraSpellName"] = true,
						["spellName"] = "Resist Fire",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_spellId"] = false,
						["use_spellName"] = false,
						["extraSpellName"] = "Fengus' Ferocity",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
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
						["unevent"] = "timed",
						["sourceUnit"] = "player",
						["use_cloneId"] = false,
						["use_extraSpellName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
						["PRIEST"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["alpha"] = 0,
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
			["xOffset"] = -329.95526123047,
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
			["authorOptions"] = {
			},
			["parent"] = "World Buff Purge",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Fengus' Ferocity",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 1,
			["cooldownTextDisabled"] = false,
			["uid"] = "0JXCc9F2tXj",
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
			["displayIcon"] = 136109,
			["cooldown"] = false,
			["url"] = "https://wago.io/8ncUU5-Pi/4",
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
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
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
						["itemName"] = 13452,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["icon"] = true,
			["desaturate"] = false,
			["useTooltip"] = false,
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
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["uid"] = "R71fchWyZRW",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text1Font"] = "ABF",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["zoom"] = 0,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Mongoose ",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["width"] = 64,
			["text2FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["inverse"] = true,
			["internalVersion"] = 66,
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
			["cooldown"] = true,
			["xOffset"] = 0,
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
				["finish"] = {
					["custom"] = "C_ChatInfo.SendAddonMessage(\"WFI-Rodonies\", \"DROPPED\", \"PARTY\")",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "C_ChatInfo.RegisterAddonMessagePrefix(\"WFI-Rodonies\")",
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["showOn"] = "showOnActive",
						["use_enchant"] = true,
						["unit"] = "player",
						["weapon"] = "main",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["url"] = "https://wago.io/hmycuCcHu/3",
			["anchorFrameParent"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "6",
						["variable"] = "expirationTime",
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
			["preferToUpdate"] = false,
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
			["semver"] = "1.0.2",
			["tocversion"] = 11303,
			["id"] = "SendWFToShaman",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "wrRjtI5W3Fp",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["justify"] = "LEFT",
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
			["shadowYOffset"] = -1,
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
			["text1Containment"] = "INSIDE",
			["cooldownSwipe"] = true,
			["text1Enabled"] = true,
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
						["itemName"] = 12460,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
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
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "NrxwxjwEhca",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["icon"] = true,
			["width"] = 64,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["alpha"] = 1,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Juju Might",
			["text2Font"] = "Friz Quadrata TT",
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["url"] = "https://wago.io/_RGLErxXs/2",
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
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Bandage"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = 0,
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
				["finish"] = {
				},
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[2].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
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
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
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
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["unevent"] = "auto",
						["event"] = "Item Count",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["count"] = "1",
						["unit"] = "player",
						["check"] = "update",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["zoom"] = 0,
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["stickyDuration"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Enabled"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
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
			["displayIcon"] = "133682",
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
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
						0, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["config"] = {
			},
			["semver"] = "1.0.1",
			["text2FontSize"] = 31,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["useTooltip"] = false,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Bandage",
			["desaturate"] = false,
			["text2Enabled"] = true,
			["width"] = 64,
			["parent"] = "Warrior - 1: Recovery Consumes",
			["uid"] = "Spkl0TqOJH5",
			["inverse"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
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
						{
						}, -- [3]
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
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["spellId"] = "15123",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["destUnit"] = "player",
						["destFlags2"] = "Hostile",
						["debuffType"] = "HELPFUL",
						["spellName"] = "Resist Fire",
						["names"] = {
						},
						["type"] = "combatlog",
						["subeventSuffix"] = "_DISPEL",
						["unevent"] = "timed",
						["use_extraSpellName"] = true,
						["unit"] = "player",
						["event"] = "Combat Log",
						["spellIds"] = {
						},
						["use_spellName"] = false,
						["use_spellId"] = false,
						["extraSpellName"] = "Winterfall Firewater",
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
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
						["unevent"] = "timed",
						["sourceUnit"] = "player",
						["use_cloneId"] = false,
						["use_extraSpellName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
						["PRIEST"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["frameStrata"] = 1,
			["config"] = {
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
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = -329.95526123047,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.3",
			["tocversion"] = 11305,
			["id"] = "Winterfall Firewater 2",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 1,
			["zoom"] = 0,
			["uid"] = "pLZbo3ydCw7",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 134872,
			["cooldown"] = false,
			["parent"] = "World Buff Purge",
		},
		["Mighty Rage 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
					["text_anchorYOffset"] = 0,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
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
						["itemName"] = 13442,
						["unevent"] = "auto",
						["genericShowOn"] = "showOnCooldown",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["names"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
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
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "bT5p9HIyTwy",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_level"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["useTooltip"] = false,
			["width"] = 64,
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Mighty Rage 2",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = true,
			["internalVersion"] = 66,
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
			["cooldown"] = true,
			["parent"] = "Warrior - 3: Offensive Consumes",
		},
		["Greater Shadow"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["itemName"] = 13459,
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnCooldown",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["names"] = {
						},
						["use_unit"] = true,
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
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
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
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
					["text_anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowYOffset"] = 0,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["selfPoint"] = "CENTER",
			["authorMode"] = true,
			["cooldownTextDisabled"] = false,
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["uid"] = "sj1ndg9PJql",
			["text2FontSize"] = 31,
			["useTooltip"] = false,
			["width"] = 64,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Shadow",
			["semver"] = "1.0.2",
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
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
			["cooldown"] = true,
			["alpha"] = 1,
		},
		["Greater Arcane Pot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
						["itemName"] = 13461,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
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
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["desaturate"] = false,
			["icon"] = true,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = false,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["authorMode"] = true,
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Enabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["uid"] = "vl0J5gLcNyI",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Greater Arcane Pot",
			["text1Font"] = "ABF",
			["useCooldownModRate"] = true,
			["width"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = true,
			["text1FontFlags"] = "OUTLINE",
			["cooldownTextDisabled"] = false,
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
			["cooldown"] = true,
			["text2Enabled"] = true,
		},
		["Winterfall Firewater"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
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
						["itemName"] = 12820,
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
			["icon"] = true,
			["desaturate"] = false,
			["text1Containment"] = "INSIDE",
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
						1, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["zoom"] = 0,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["useCooldownModRate"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Winterfall Firewater",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "wcOQ2g5lLiS",
			["inverse"] = true,
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
			["cooldown"] = true,
			["cooldownEdge"] = false,
		},
		["Lung Juice"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["use_unit"] = true,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
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
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Containment"] = "INSIDE",
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["height"] = 64,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
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
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["internalVersion"] = 66,
			["authorMode"] = true,
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["zoom"] = 0,
			["text1Font"] = "ABF",
			["auto"] = true,
			["desaturate"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Enabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["uid"] = "GNajjUHHYtR",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text2"] = "%p",
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Lung Juice",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useCooldownModRate"] = true,
			["width"] = 64,
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = true,
			["text1FontFlags"] = "OUTLINE",
			["cooldownTextDisabled"] = false,
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
			["cooldown"] = true,
			["text2Enabled"] = true,
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
				["init"] = {
					["custom"] = "aura_env.TIMER = 0\naura_env.TIMER_CD = 0\nlocal r = aura_env.region\nif not r.btn_ann then\n    local b = CreateFrame(\"Button\",\"Arathi_Basin_Ann_Button\", r, \"SecureActionButtonTemplate\")\n    b:SetAllPoints()\n    b:SetAttribute(\"type\",\"macro\")\n    b:RegisterForClicks(\"AnyUp\")\n    b:SetHighlightTexture(\"Interface\\\\Buttons\\\\ButtonHilight-Square\",\"ADD\")\n    b:SetPushedTexture(\"Interface\\\\Buttons\\\\UI-Quickslot-Depress\")\n    \n    b.c = CreateFrame(\"Cooldown\", nil, b, \"CooldownFrameTemplate\")\n    b.c:SetAllPoints()\n    \n    b:SetAttribute('macrotext', string.format(''))\n    r.btn_ann = b\nend\n\naura_env.GET_RANGE = function(unit)\n    local checked_range,in_range,range\n    for ii=1,#aura_env.LIST_ITEMS_SHORT do\n        in_range = IsItemInRange(aura_env.LIST_ITEMS_SHORT[ii].iid,unit)\n        if in_range then\n            range = aura_env.LIST_ITEMS_SHORT[ii].range\n            break\n        end\n    end\n    \n    in_range = CheckInteractDistance(unit,3)\n    if in_range then\n        if range then range = min(range,10)\n        else range = 10 end\n    end\n    \n    in_range = CheckInteractDistance(unit,2)\n    if in_range then\n        if range then range = min(range,11)\n        else range = 11 end\n    end\n    \n    in_range = CheckInteractDistance(unit,4)\n    if in_range then\n        if range then range = min(range,28)\n        else range = 28 end\n    end\n    \n    in_range, checked_range = UnitInRange(unit)\n    if in_range and checked_range then\n        if range then range = min(range,40)\n        else range = 40 end\n    end\n    \n    return range\nend\n\n\naura_env.LIST_ITEMS_SHORT = {\n    {iid=16114,range=3},\n    {iid=8149,range=5},\n    {iid=17626,range=10},\n    {iid=4559,range=15},\n    {iid=17757,range=20},\n    {iid=13289,range=25},\n    {iid=17202,range=30},\n    {iid=18904,range=35},\n    {iid=4945,range=40},\n    {iid=5418,range=100},\n    {iid=23715,range=100},\n    {iid=23718,range=100},\n    {iid=23719,range=100},\n    {iid=23721,range=100},\n    {iid=23722,range=100},\n    {iid=17162,range=100},    \n}\n\naura_env.LIST_VALID_SUBZONES = {\n    [\"Blacksmith\"] = \"BS\",\n    [\"Farm\"] = \"FARM\",\n    [\"Gold Mine\"] = \"GM\",\n    [\"Lumber Mill\"] = \"LM\",\n    [\"Stables\"] = \"ST\",\n}\naura_env.CHECK_RANGE = false\naura_env.RANGE_CNT = 0\nlocal av = aura_env\nr.SET_BUTTON_ON_CD = function(mode)\n    if mode == 0 then\n        local time_cur = GetTime()\n        if (time_cur - av.TIMER_CD) > 1 then\n            av.TIMER_CD = time_cur\n            r.btn_ann.c:SetCooldown(time_cur,1)\n            av.CHECK_RANGE = true\n            av.RANGE_CNT = 0\n        end\n    end\n    if mode == 1 and av.CHECK_RANGE then\n        local subzone = GetSubZoneText()\n        if subzone and av.LIST_VALID_SUBZONES[subzone] then\n            local msg\n            if av.RANGE_CNT == 0 then\n                msg = string.format(\"%s no enemies\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 and av.RANGE_CNT <= 1 then\n                msg = string.format(\"%s %d enemy\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 and av.RANGE_CNT <= 3 then\n                msg = string.format(\"%s %d enemies\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            elseif av.RANGE_CNT > 0 then\n                msg = string.format(\">>> %s %d enemies <<<\",av.LIST_VALID_SUBZONES[subzone],av.RANGE_CNT)\n            end\n            if msg then\n                --print(msg)\n                SendChatMessage(msg,\"RAID_WARNING\")\n                SendChatMessage(msg,\"INSTANCE_CHAT\")\n            end\n        end\n        av.CHECK_RANGE = false\n    end\n    return\nend\n\nif UnitFactionGroup(\"player\") == \"Horde\" then\n    aura_env.PLAYER_FACTION = 0\nelse\n    aura_env.PLAYER_FACTION = 1\nend\n\naura_env.REQUEST_MACRO_UPDATE = false\naura_env.UPDATE_MACRO = function()\n    local str_macro\n    str_macro = string.format(\"/run WeakAuras.GetRegion(\\\"%s\\\").SET_BUTTON_ON_CD(0)\",aura_env.id)\n    str_macro = str_macro .. \"\\n/cleartarget\"\n    for i=1,80 do\n        local name, killingBlows, honorableKills, deaths, honorGained, faction, rank, race, class, CLASS = GetBattlefieldScore(i);\n        if name and faction ~= aura_env.PLAYER_FACTION then\n            str_macro = str_macro .. string.format(\"\\n/targetexact %s\",name)\n        end\n    end\n    str_macro = str_macro .. \"\\n/cleartarget\"\n    str_macro = str_macro .. string.format(\"\\n/run WeakAuras.GetRegion(\\\"%s\\\").SET_BUTTON_ON_CD(1)\",aura_env.id)\n    \n    \n    aura_env.region.btn_ann:SetAttribute('macrotext',str_macro)\nend\n\naura_env.COLOR_TEXT = function(text,r,g,b)\n    return string.format(\"|cff%02x%02x%02x%s|r\", 255*r, 255*g, 255*b,text)\nend\n\naura_env.bool_to_str = function(bool)\n    if bool==true then return aura_env.COLOR_TEXT(tostring(bool),0,0.75,1)\n    elseif bool==false then return aura_env.COLOR_TEXT(tostring(bool),1,0,0)\n    elseif bool==nil then return aura_env.COLOR_TEXT(\"nil\",1,0,0)\n    else return tostring(bool) end\nend",
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
						["names"] = {
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    local time_cur = GetTime()\n    if (time_cur - aura_env.TIMER) > 3 then\n        aura_env.TIMER = time_cur\n        RequestBattlefieldScoreData()\n    end\n    return true\nend",
						["unit"] = "player",
						["check"] = "update",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["custom"] = "function(event)\n    local not_in_combat = not InCombatLockdown()\n    if event == \"UPDATE_BATTLEFIELD_SCORE\" then\n        if not_in_combat then\n            aura_env.UPDATE_MACRO()\n        else\n            aura_env.REQUEST_MACRO_UPDATE = true\n        end\n    elseif event == \"PLAYER_REGEN_ENABLED\" then\n        if aura_env.REQUEST_MACRO_UPDATE and not_in_combat then\n            aura_env.REQUEST_MACRO_UPDATE = false\n            aura_env.UPDATE_MACRO()\n        end\n    end\n    \nend",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "PLAYER_REGEN_ENABLED, UPDATE_BATTLEFIELD_SCORE",
						["custom_type"] = "event",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["custom"] = "function()\n    if aura_env.CHECK_RANGE and UnitExists(\"target\") and not UnitIsDeadOrGhost(\"target\") then\n        local target_in_range = aura_env.GET_RANGE(\"target\")\n        if target_in_range then\n            aura_env.RANGE_CNT = aura_env.RANGE_CNT + 1\n        end\n    end\nend",
						["custom_type"] = "event",
						["events"] = "PLAYER_TARGET_CHANGED",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = true,
				["use_never"] = false,
				["talent"] = {
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
				["zone"] = "Arathi Basin",
				["zoneIds"] = "",
			},
			["alpha"] = 1,
			["uid"] = "XPycNDqoWE2",
			["authorOptions"] = {
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
			["regionType"] = "icon",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "PVP: AB Callout Bar - Jon Test",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Count Enemies",
			["auto"] = false,
			["useCooldownModRate"] = true,
			["width"] = 31.999900817871,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["icon"] = true,
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
					["default"] = 90,
					["key"] = "threshold",
				}, -- [1]
				{
					["type"] = "range",
					["useDesc"] = false,
					["max"] = 3,
					["step"] = 0.1,
					["width"] = 1,
					["min"] = 0.2,
					["name"] = "Update Speed",
					["default"] = 0.2,
					["key"] = "speed",
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
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["sameTexture"] = true,
			["url"] = "https://wago.io/9qBCTJSAt/9",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "5",
						["event"] = "Health",
						["dynamicDuration"] = false,
						["customDuration"] = "",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event)\n    if event == 'PLAYER_REGEN_DISABLED' then\n        local speed = aura_env.config[\"speed\"]\n        aura_env.ticker = C_Timer.NewTicker(speed, function() WeakAuras.ScanEvents(\"THREAT_WARNING_UPDATE\") end)\n    elseif event == 'PLAYER_REGEN_ENABLED' then\n        if aura_env.ticker then\n            aura_env.ticker:Cancel()\n        end\n    end\n    \n    local isTanking, _, threatPercent, _, _ = aura_env.UnitDetailedThreatSituation(\"player\", \"target\")\n    threatPercent = threatPercent or 0\n    return not isTanking and threatPercent >= aura_env.config[\"threshold\"]\nend",
						["events"] = "THREAT_WARNING_UPDATE, PLAYER_REGEN_DISABLED, PLAYER_REGEN_ENABLED, PLAYER_TARGET_CHANGED",
						["custom_type"] = "event",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "\n\n",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["conditions"] = {
			},
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
				["level_operator"] = "==",
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["use_never"] = false,
				["level"] = "60",
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["crop_y"] = 0.41,
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "fade",
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
			["startAngle"] = 0,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["config"] = {
				["threshold"] = 90,
				["speed"] = 0.2,
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "texture",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.011764705882353, -- [3]
				1, -- [4]
			},
			["blendMode"] = "BLEND",
			["width"] = 500,
			["frameStrata"] = 1,
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura17",
			["xOffset"] = -6.103515625e-05,
			["compress"] = false,
			["semver"] = "2.2.0",
			["tocversion"] = 11305,
			["id"] = "Threat Warning",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["alpha"] = 0.7,
			["anchorFrameType"] = "SCREEN",
			["fontSize"] = 12,
			["uid"] = "f1xGf4PXGtT",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["do_custom"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\Fireball.ogg",
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.UnitDetailedThreatSituation = UnitDetailedThreatSituation\n\n",
					["do_custom"] = true,
				},
			},
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["Sapper 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["useCooldownModRate"] = true,
			["cooldownSwipe"] = true,
			["authorOptions"] = {
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
						["itemName"] = 10646,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
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
						["unevent"] = "auto",
						["names"] = {
						},
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
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
			["icon"] = true,
			["stickyDuration"] = false,
			["useTooltip"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "Fb1BPvr2mve",
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["text1Containment"] = "INSIDE",
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [3]
			},
			["text1Font"] = "ABF",
			["internalVersion"] = 66,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["semver"] = "1.0.1",
			["zoom"] = 0,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Sapper 2",
			["desaturate"] = false,
			["alpha"] = 1,
			["width"] = 64,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Smoked Desert Dumplings"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["alpha"] = 1,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["parent"] = "Warrior - 2: Defensive Consumes",
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "40",
				["level_operator"] = ">",
				["zoneIds"] = "",
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
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["useTooltip"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["text2FontSize"] = 31,
			["internalVersion"] = 66,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Smoked Desert Dumplings",
			["semver"] = "1.0.2",
			["useCooldownModRate"] = true,
			["width"] = 64,
			["stickyDuration"] = false,
			["uid"] = "uegjRp4Zd5N",
			["inverse"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["cooldown"] = true,
			["text2Enabled"] = true,
		},
		["Monster Omelet"] = {
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
			["parent"] = "Warrior - 2: Defensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
						["unevent"] = "auto",
						["unit"] = "player",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["use_unit"] = true,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
			},
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["frameStrata"] = 1,
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
			["stickyDuration"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
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
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glow"] = false,
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
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["use_class"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["use_never"] = true,
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
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
			["authorMode"] = true,
			["xOffset"] = -490,
			["text2Containment"] = "INSIDE",
			["text2"] = "%p",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["text2FontSize"] = 31,
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["text1"] = "%s",
			["width"] = 64,
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Monster Omelet",
			["text1Font"] = "ABF",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["uid"] = "pLSzt(1CVOd",
			["inverse"] = true,
			["internalVersion"] = 66,
			["cooldownTextDisabled"] = false,
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
			["cooldown"] = true,
			["desaturate"] = false,
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["remOperator"] = "<",
						["useName"] = true,
						["auranames"] = {
							"Battle Shout", -- [1]
						},
						["debuffType"] = "HELPFUL",
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
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
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
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n  return (trigger[1] or trigger[2]) and not trigger[3]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 66,
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
					["text_text_format_p_time_format"] = 0,
					["anchorXOffset"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_legacy_floor"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Roboto Bold",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = -2,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 41,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
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
					["glowThickness"] = 7.85,
					["glowScale"] = 1,
					["glow"] = false,
					["glowLines"] = 6,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 59.2593955993652,
			["load"] = {
				["use_class"] = true,
				["size"] = {
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
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["zoneIds"] = "",
			},
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = true,
			["regionType"] = "icon",
			["url"] = "https://wago.io/RbGbJ76Iv/1",
			["authorOptions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
			["uid"] = "iZyBAa(tjmh",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Battle Shout Reminder",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 61.6294670104981,
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 233.482019424438,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "5",
						["variable"] = "expirationTime",
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
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "pulse",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["Cursor"] = {
			["color"] = {
				0.549019607843137, -- [1]
				0.270588235294118, -- [2]
				0.0980392156862745, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0.79010021686554,
			["anchorPoint"] = "BOTTOMLEFT",
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
						["use_form"] = true,
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Conditions",
						["use_alive"] = true,
						["type"] = "unit",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
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
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["authorOptions"] = {
			},
			["tocversion"] = 80300,
			["id"] = "Cursor",
			["alpha"] = 1,
			["frameStrata"] = 4,
			["width"] = 70.0003890991211,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "WAARQucMofb",
			["config"] = {
			},
			["xOffset"] = 1.58020687103272,
			["conditions"] = {
			},
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
					["colorA"] = 1,
					["scalex"] = 1,
					["easeStrength"] = 3,
					["rotate"] = 0,
					["translateType"] = "custom",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
	},
	["registered"] = {
	},
	["editor_font_size"] = 12,
	["editor_theme"] = "Monokai",
}
