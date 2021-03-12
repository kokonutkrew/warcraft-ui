
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1598388753,
	["minimap"] = {
		["minimapPos"] = 291.322981922309,
		["hide"] = false,
	},
	["lastUpgrade"] = 1605829054,
	["dbVersion"] = 40,
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
						["type"] = "status",
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
			["internalVersion"] = 40,
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
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 2,
			["parent"] = "cursor circles",
			["height"] = 30,
			["anchorPoint"] = "CENTER",
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
				["spec"] = {
					["multi"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
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
			["conditions"] = {
			},
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "450915",
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["startAngle"] = 0,
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["uid"] = "CcrtPjppgg)",
			["blendMode"] = "BLEND",
			["authorOptions"] = {
			},
			["width"] = 30,
			["slantMode"] = "INSIDE",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["compress"] = false,
			["semver"] = "1.0.0",
			["tocversion"] = 80300,
			["id"] = "gcd",
			["fontSize"] = 12,
			["alpha"] = 1,
			["anchorFrameType"] = "MOUSE",
			["desaturateForeground"] = false,
			["config"] = {
			},
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["information"] = {
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
						["type"] = "event",
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
						["type"] = "event",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
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
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "zMEnDr7(EGD",
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
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
								["message_type"] = "GUILD",
								["message_format_2.extraSpellName_format"] = "none",
								["message"] = "%2.destName is heading back to UBRS for %2.extraSpellName peepoParty",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "World Buff Purge",
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Resist Fire",
			["frameStrata"] = 1,
			["alpha"] = 0,
			["width"] = 1,
			["semver"] = "1.0.3",
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 135806,
			["cooldown"] = false,
			["xOffset"] = -329.95526123047,
		},
		["Average_Kill_Time"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = -25,
			["displayText"] = "%c",
			["customText"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\nfunction()\n    local colour = \"|cffdd1600\"\n    if aura_env.StartTime and global_AverageKT ~= nil then\n        --        print(global_encounterNAME)\n        local combatTime = GetTime() - aura_env.StartTime\n        --print(combatTime)\n        wa_gct_noFormat = combatTime\n        --print(global_AverageKT)\n        wa_global_combatTime = string.format(\"%02d:%02d\", combatTime/60, combatTime%60)\n        \n        global_AvgKT = string.format(\"%02d:%02d\", global_AverageKT/60,  global_AverageKT%60)\n        if global_AverageKT == 00.00 then global_AvgKT = \" ----.---- \" end\n        \n        --local checkName = UnitName(\"target\")\n        --if load_EncounterID[checkName] == 1101 then print(\"works\") end\n        local  outputInfo = \"Avg KT: \"..global_AvgKT..\"\\nCombat: \"..wa_global_combatTime\n        \n        if global_AverageKT ~= 00.00 then\n            if global_AverageKT - combatTime >= (global_maxSTM_secs + 10) then \n                colour = \"|cffdd1600\"  -- red (default: greater than 160 seconds remain)\n                global_wa_outputInfo = 0\n            end \n            if global_AverageKT - combatTime < (global_maxSTM_secs + 10) then \n                colour = \"|cffffc425\" \n                global_wa_outputInfo = 1\n            end -- yellow (default: less than 160 seconds remain)\n            if global_AverageKT - combatTime <= (global_maxSTM_secs - 5) then \n                colour = \"|cff0eae21\" \n                global_wa_outputInfo = 1\n            end --  green (default: less than 145 seconds remain)\n            return colour..outputInfo\n            \n        else\n            return outputInfo\n            \n        end\n        \n        \n    else\n        global_AverageKT = 00.00\n        return \" ----.---- \"\n    end\nend\n\n\n\n\n",
			["yOffset"] = -10,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/Vkta0EsHf/1",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.StartTime = GetTime()",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.StartTime = nil",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\n-- number of seconds from end of fight you want to pop Surrender to Madness\nglobal_maxSTM_secs = 150\n\n----------------------------------------------\n---- DO NOT EDIT ANYTHING BELOW THIS LINE ----\n----------------------------------------------\n\naura_env.StartTime = nil\n\nglobal_wa_outputInfo = 0\nglobal_wa_STM_GO = 0\n\n-- Raid Difficulty ID's --\nload_EncounterDiffID = {}\n\nload_EncounterDiffID[0] = \"None\"\nload_EncounterDiffID[1] = \"5-player\"\nload_EncounterDiffID[2] = \"5-player Heroic\"\nload_EncounterDiffID[3] = \"10-player Raid\"\nload_EncounterDiffID[4] = \"25-player Raid\"\nload_EncounterDiffID[5] = \"10-player Heroic Raid\"\nload_EncounterDiffID[6] = \"25-player Heroic Raid\"\nload_EncounterDiffID[7] = \"Raid Finder\"\nload_EncounterDiffID[8] = \"Challenge Mode\"\nload_EncounterDiffID[9] = \"40-player Raid\"\nload_EncounterDiffID[10] = \"10 - Not used\"\nload_EncounterDiffID[11] = \"Heroic Scenario\"\nload_EncounterDiffID[12] = \"Scenario\"\nload_EncounterDiffID[13] = \"13 - Not used\"\nload_EncounterDiffID[14] = \"Flexible Raid\"\nload_EncounterDiffID[15] = \"Heroic Flexible Raid\"\nload_EncounterDiffID[16] = \"Mythic Raid\"\nload_EncounterDiffID[17] = \"LFR Raid\"\nload_EncounterDiffID[18] = \"Molten Core 10th Anniversary\"\nload_EncounterDiffID[19] = \"5-player special event\"\nload_EncounterDiffID[20] = \"25-player Event Scenario\"\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["unevent"] = "timed",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["custom_type"] = "event",
						["custom"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\nfunction(e, ...)\n    \n    --print(encounterID)\n    \n    if e == \"ENCOUNTER_START\" then\n        \n        local encounterID = select(1, ...)\n        local encounterNAME = select(2, ...)\n        local difficultyID = select(3, ...)\n        local raidSize = select(4, ...) \n        local charName = UnitName(\"player\")\n        local charRealm = GetRealmName(\"player\")\n        local uName = charName..\"_\"..charRealm\n        \n        \n        ----------------------------------------------\n        -- check each key and if missing initialize --\n        ----------------------------------------------\n        \n        -- saved, but no active table --\n        if WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] ~= nil and store_EncounterID == nil then  \n            \n            -- load the saved table --\n            store_EncounterID = {}\n            store_EncounterID = WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] \n            \n            -- Never done the encounter --\n            if store_EncounterID[encounterID] == nil then  \n                global_AverageKT = 00.00\n                \n                -- Done the encounter but not on this difficulty --\n            elseif store_EncounterID[encounterID][encounterNAME][difficultyID] == nil then\n                global_AverageKT = 00.00\n                \n                -- Done the encounter on this difficulty but not on this toon --\n            elseif store_EncounterID[encounterID][encounterNAME][difficultyID][uName] == nil then\n                global_AverageKT = 00.00\n                \n                -- Done the encounter, on this difficulty on this toon -- load the values --\n            else  \n                if store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT'] == nil then\n                    global_AverageKT = 00.00\n                else\n                    global_AverageKT = store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT']\n                    \n                end\n            end\n            \n            \n            -- none saved, but an active table --    \n        elseif WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] == nil and store_EncounterID ~= nil then\n            \n            -- Never done the encounter --\n            if store_EncounterID[encounterID] == nil then\n                global_AverageKT = 00.00\n                \n                -- Done the encounter but not on this difficulty --\n            elseif store_Encounter[encounterID][encounterNAME][difficultyID] == nil then\n                global_AverageKT = 00.00\n                \n                -- Done the encounter on this difficulty but not on this toon --                \n            elseif store_Encounter[encounterID][encounterNAME][difficultyID][uName] == nil then\n                global_AverageKT = 00.00\n                \n                -- Done the encounter, on this difficulty on this toon -- load the values --\n            else  \n                if store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT'] == nil then\n                    global_AverageKT = 00.00\n                else\n                    global_AverageKT = store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT']\n                    \n                end\n            end\n            \n            -- saved, and active table --\n        elseif WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] ~= nil and store_EncounterID ~= nil then  \n            \n            -- Never done the encounter --\n            if store_EncounterID[encounterID] == nil and WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'][encounterID] == nil then\n                global_AverageKT = 00.00\n                \n                -- Encounter active in current table, but does not have a save --\n            elseif store_EncounterID[encounterID] ~= nil and WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'][encounterID] == nil then\n                \n                -- if active table has entry for this difficulty --\n                if store_EncounterID[encounterID][encounterNAME][difficultyID] ~= nil then \n                    \n                    -- if active table has entry for this difficulty on this toon --\n                    if store_EncounterID[encounterID][encounterNAME][difficultyID][uName] ~= nil then\n                        if store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT'] == nil then\n                            global_AverageKT = 00.00\n                        else\n                            global_AverageKT = store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT']\n                            \n                        end\n                    else\n                        global_AverageKT = 00.00\n                    end\n                    \n                else\n                    global_AverageKT = 00.00\n                    \n                end\n                \n                -- Encounter not active in current table, but does have a save --\n            elseif store_EncounterID[encounterID] == nil and WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'][encounterID] ~= nil then  \n                \n                --  load the save into the active table --\n                store_EncounterID[encounterID] = WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'][encounterID] \n                \n                -- if active table has entry for this difficulty --\n                if store_EncounterID[encounterID][encounterNAME][difficultyID] ~= nil then \n                    \n                    -- if active table has entry for this difficulty on this toon --\n                    if store_EncounterID[encounterID][encounterNAME][difficultyID][uName] ~= nil then\n                        if store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT'] == nil then\n                            global_AverageKT = 00.00\n                        else\n                            global_AverageKT = store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT']\n                            \n                        end\n                    else\n                        global_AverageKT = 00.00\n                        \n                    end\n                    \n                else \n                    global_AverageKT = 00.00\n                    \n                end\n                \n                -- Done the encounter, on this difficulty on this toon -- load the values --\n            else \n                if store_EncounterID ~= nil then\n                    if store_EncounterID[encounterID] ~= nil then\n                        if store_EncounterID[encounterID][encounterNAME] ~= nil then\n                            if store_EncounterID[encounterID][encounterNAME][difficultyID] ~= nil then             \n                                if store_EncounterID[encounterID][encounterNAME][difficultyID][uName] ~= nil then\n                                    if store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT'] == nil then\n                                        global_AverageKT = 00.00\n                                    else\n                                        global_AverageKT = store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT']\n                                    end\n                                else\n                                    global_AverageKT = 00.00\n                                end\n                            else\n                                global_AverageKT = 00.00\n                            end\n                        else\n                            global_AverageKT = 00.00\n                        end\n                    else\n                        global_AverageKT = 00.00\n                    end\n                else\n                    global_AverageKT = 00.00\n                end\n            end\n            \n            \n            -- none saved but there is an active table\n        elseif WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] == nil and store_EncounterID ~= nil then \n            \n            if store_EncounterID ~= nil then\n                if store_EncounterID[encounterID] ~= nil then\n                    if store_EncounterID[encounterID][encounterNAME] ~= nil then\n                        if store_EncounterID[encounterID][encounterNAME][difficultyID] ~= nil then             \n                            if store_EncounterID[encounterID][encounterNAME][difficultyID][uName] ~= nil then\n                                if store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT'] == nil then\n                                    global_AverageKT = 00.00\n                                else\n                                    global_AverageKT = store_EncounterID[encounterID][encounterNAME][difficultyID][uName]['average_KT']\n                                end\n                            else\n                                global_AverageKT = 00.00\n                            end\n                        else\n                            global_AverageKT = 00.00\n                        end\n                    else\n                        global_AverageKT = 00.00\n                    end\n                else\n                    global_AverageKT = 00.00\n                end\n            else\n                global_AverageKT = 00.00\n            end                       \n        end\n        \n        --print(\"EncounterID: \"..encounterID..\"\\nEncounterName: \"..encounterNAME..\"\\nDifficultyID: \"..difficultyID..\"\\nRaidSize: \"..raidSize)\n        print(encounterNAME..\" has started...\")\n        \n        return true\n        \n    elseif e == \"ENCOUNTER_END\" then\n        return false\n        \n    end\n    \nend\n\n\n\n",
						["spellIds"] = {
						},
						["events"] = "ENCOUNTER_START, ENCOUNTER_END",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\nfunction(e, ...)\n    \n    local encounterID = select(1, ...)\n    local encounterNAME = select(2, ...)\n    local difficultyID = select(3, ...)\n    local raidSize = select(4, ...)\n    local endStatus = select(5, ...)\n    local charName = UnitName(\"player\")\n    local charRealm = GetRealmName(\"player\")\n    local uName = charName..\"_\"..charRealm\n    local wipeORwin = 1000 --initializing\n    local tempTableFill = 0\n    \n    if endStatus == 0 then\n        wipeORwin = \"Wipe\" \n    elseif endStatus == 1 then \n        wipeORwin = \"Success\"\n    end\n    \n    -- Enable and load all the encounter IDs in intit if you want to output ie Heroic 25\n    --for i=0,15 do\n    --   if difficultyID == i then    \n    --        difficultyID = load_EncounterDiffID[i]\n    --    end\n    --end\n    \n    if e == \"ENCOUNTER_START\" then\n        return false\n        \n    elseif e == \"ENCOUNTER_END\" then\n        if select(5, ...) == 0 then \n            print(select(2, ...)..\" has ended...\")\n            return true\n        else\n            \n            -- none saved, and no active table --\n            if WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] == nil and store_EncounterID == nil then\n                store_EncounterID = {}  -- create an active table\n                \n                -- Saved table, but no active table --    \n            elseif WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] ~= nil and store_EncounterID == nil then\n                \n                store_EncounterID = {} -- create an active table and load the whole saved table into the active table --\n                store_EncounterID = WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info']\n                \n                \n                -- No saved table, but active table --\n            elseif WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] == nil and store_EncounterID ~= nil then\n                \n                ----** Nothing to do here, but wanted this logic in place to keep everything straight **----\n                \n                -- Saved table and active table --\n            elseif WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] ~= nil and store_EncounterID ~= nil then\n                \n                -- merge the tables --\n                for k,v in ipairs(WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info']) do table.insert(store_EncounterID, v) end \n                \n            end\n            \n            -- Check the active table, key by key and create new rows if nil --\n            if store_EncounterID[encounterID] ~= nil then \n                if store_EncounterID[encounterID][encounterNAME] ~= nil then\n                    if store_EncounterID[encounterID][encounterNAME][difficultyID] ~= nil then\n                        if store_EncounterID[encounterID][encounterNAME][difficultyID][uName] ~= nil then  \n                            -- Data already active -- this is a repeat kill --                                \n                        else\n                            store_EncounterID[encounterID][encounterNAME][difficultyID][uName] = {}\n                            store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"] = {}\n                            store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"average_KT\"] = {}   \n                        end\n                    else\n                        store_EncounterID[encounterID][encounterNAME][difficultyID] = {}\n                        store_EncounterID[encounterID][encounterNAME][difficultyID][uName] = {}\n                        store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"] = {}\n                        store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"average_KT\"] = {}   \n                    end\n                else\n                    store_EncounterID[encounterID][encounterNAME] = {}\n                    store_EncounterID[encounterID][encounterNAME][difficultyID] = {}\n                    store_EncounterID[encounterID][encounterNAME][difficultyID][uName] = {}\n                    store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"] = {}\n                    store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"average_KT\"] = {}    \n                end\n            else\n                store_EncounterID[encounterID] = {} \n                store_EncounterID[encounterID][encounterNAME] = {}\n                store_EncounterID[encounterID][encounterNAME][difficultyID] = {}\n                store_EncounterID[encounterID][encounterNAME][difficultyID][uName] = {}\n                store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"] = {}\n                store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"average_KT\"] = {}    \n            end\n            \n            -- Sort the newly formed table kill times --\n            table.sort(store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"])\n            \n            -- if there are kill times, check for duplicates and if found leave one entry and fill the rest with current time\n            for p=1,10 do\n                if store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][p] ~= nil then\n                    if p >=2 then\n                        local tempP = (p-1)\n                        if store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][p] == store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][tempP]then\n                            for q=p,10 do\n                                store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][q] = wa_gct_noFormat    \n                            end\n                            tempTableFill = 1\n                            p=10\n                        end\n                        \n                    end\n                    \n                end\n                \n                \n            end\n            \n            \n            -- if there are no kill times fill the table with this kill time\n            -- if there are kill times, add this kill time, sort the table, remove the longest kill time\n            -- then average the 10 kill times and assign to the global\n            for i=1,10 do          \n                if store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][i] ~= nil then\n                    \n                    if tempTableFill == 0 then store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][11] = wa_gct_noFormat end\n                    table.sort(store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"])\n                    store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][11] = nil\n                    \n                    local tempAvg = 0\n                    \n                    for j=1,10 do\n                        tempAvg = tempAvg + store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][j]\n                        if j == 10 then global_AverageKT = (tempAvg/10) end\n                        \n                    end                \n                    \n                    if tempTableFill == 0 then break end\n                    \n                else\n                    store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"kill_Times\"][i] = wa_gct_noFormat\n                    global_AverageKT = wa_gct_noFormat\n                    \n                end            \n            end\n            \n            \n            -- store average kill time in the table\n            store_EncounterID[encounterID][encounterNAME][difficultyID][uName][\"average_KT\"] = global_AverageKT\n            \n            -- Save the kill time table to weakauras variable\n            WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] = store_EncounterID\n            \n            \n            print(encounterNAME..\" has ended...\")\n            print(\"Time spent fighting \"..encounterNAME..\": \"..wa_global_combatTime)\n            print(\"New Average Kill Time: \"..(string.format(\"%02d:%02d\", global_AverageKT/60,  global_AverageKT%60)))\n                \n                if endStatus == 0 then print(\"RESET\") end\n                \n                global_wa_STM_GO = 0 -- shut down STM glow warning\n                \n                return true\n            end\n            \n        end\n        \n    end",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 40,
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
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 18.333324432373,
			["rotate"] = true,
			["load"] = {
				["use_size"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
					["multi"] = {
					},
				},
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
				["pvptalent"] = {
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
				["affixes"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["ten"] = true,
						["flexible"] = true,
						["twenty"] = true,
						["twentyfive"] = true,
					},
				},
			},
			["fontSize"] = 18,
			["parent"] = "STM Kill Timers",
			["selfPoint"] = "BOTTOM",
			["shadowXOffset"] = 1,
			["mirror"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["blendMode"] = "BLEND",
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["uid"] = "yQI2)Mk6QcA",
			["automaticWidth"] = "Auto",
			["semver"] = "1.0.0",
			["anchorFrameType"] = "SCREEN",
			["id"] = "Average_Kill_Time",
			["shadowYOffset"] = -1,
			["frameStrata"] = 1,
			["width"] = 78.333335876465,
			["justify"] = "LEFT",
			["config"] = {
			},
			["preferToUpdate"] = false,
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
			["Kill_Info"] = {
				[788] = {
					["Edge of Madness"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[790] = {
					["Gahz'ranka"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[792] = {
					["Jin'do the Hexxer"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[719] = {
					["General Rajaxx"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[721] = {
					["Buru the Gorger"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[723] = {
					["Ossirian the Unscarred"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[785] = {
					["High Priestess Jeklik"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[787] = {
					["Bloodlord Mandokir"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[789] = {
					["High Priest Thekal"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[791] = {
					["High Priestess Arlokk"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[793] = {
					["Hakkar"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[720] = {
					["Moam"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[722] = {
					["Ayamiss the Hunter"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[784] = {
					["High Priest Venoxis"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[786] = {
					["High Priestess Mar'li"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
				[718] = {
					["Kurinnaxx"] = {
						[148] = {
							["Samoanslayer_Grobbulus"] = {
								["kill_Times"] = {
								},
							},
						},
					},
				},
			},
			["discrete_rotation"] = 0,
		},
		["Restoration Pot"] = {
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
			["text1Enabled"] = true,
			["cooldownSwipe"] = true,
			["internalVersion"] = 40,
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
						["type"] = "status",
						["itemName"] = 9030,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
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
						["itemName"] = 9030,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
			["useTooltip"] = false,
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
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Point"] = "BOTTOMRIGHT",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["uid"] = "YGCe2gMVdcX",
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2FontFlags"] = "OUTLINE",
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = true,
			["auto"] = true,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Restoration Pot",
			["stickyDuration"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = true,
			["selfPoint"] = "CENTER",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["xOffset"] = -490,
		},
		["Grilled Squid 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["stickyDuration"] = false,
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
						["type"] = "status",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["event"] = "Item Count",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
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
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Font"] = "Friz Quadrata TT",
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["text1Containment"] = "INSIDE",
			["load"] = {
				["use_class"] = false,
				["use_never"] = true,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
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
			["uid"] = "HGVinrMD)DL",
			["internalVersion"] = 40,
			["width"] = 64,
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
			["text2Enabled"] = true,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Grilled Squid 2",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/_RGLErxXs/2",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
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
						["type"] = "event",
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
						["type"] = "event",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
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
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
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
			["information"] = {
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
								["message_type"] = "GUILD",
								["message_format_2.extraSpellName_format"] = "none",
								["message"] = "%2.destName used to have %2.extraSpellName peepoPogPoo",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "World Buff Purge",
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Songflower Serenade",
			["frameStrata"] = 1,
			["alpha"] = 0,
			["width"] = 1,
			["semver"] = "1.0.3",
			["uid"] = "MBfu0pXyr5Z",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = 135934,
			["cooldown"] = false,
			["xOffset"] = -329.95526123047,
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
						["type"] = "event",
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
						["type"] = "event",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
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
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["icon"] = true,
			["xOffset"] = -329.95526123047,
			["regionType"] = "icon",
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
			["information"] = {
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
								["message_type"] = "GUILD",
								["message_format_2.extraSpellName_format"] = "none",
								["message"] = "%2.destName says goodbye to %2.extraSpellName peepoBlush",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "World Buff Purge",
			["cooldownTextDisabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Slip'kik's Savvy",
			["alpha"] = 0,
			["frameStrata"] = 1,
			["width"] = 1,
			["semver"] = "1.0.3",
			["uid"] = "jxkhRI)kHlX",
			["inverse"] = false,
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["displayIcon"] = 135930,
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
				["use_zone"] = true,
				["use_never"] = false,
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
			["config"] = {
			},
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/GZL1eMszV/1",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["icon"] = true,
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 3",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 32,
			["semver"] = "1.0.0",
			["uid"] = "S6llDhplL7o",
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
			["parent"] = "PVP: AB Callout Bar - Jon Test",
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
			["internalVersion"] = 40,
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
			["authorOptions"] = {
			},
			["config"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["uid"] = "MokMSWGOJRe",
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
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
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
			["internalVersion"] = 40,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 2,
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
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
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
			["uid"] = "7RRYBMXOExP",
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
			["borderInset"] = 11,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["xOffset"] = 0,
		},
		["Melee Range (multiclass)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -253.977447509766,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/MeleeRange/2",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Expressway",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[7] = true,
						[8] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
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
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DEATHKNIGHT",
					["multi"] = {
						["DEATHKNIGHT"] = true,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["startAngle"] = 0,
			["shadowXOffset"] = 1,
			["crop"] = 0.41,
			["blendMode"] = "ADD",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_Smooth_Border",
			["compress"] = false,
			["alpha"] = 1,
			["config"] = {
			},
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.11372549019608, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["check"] = "update",
						["custom_type"] = "status",
						["custom"] = "function()\n    for k, v in pairs(aura_env.melee) do\n        if IsSpellInRange(GetSpellInfo(v), \"target\") == 0 then\n            return true\n        end\n    end\nend\n\n\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return true\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["duration"] = "0.2",
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = (progress + 0.25) * 2 * math.pi\n      return startX + (math.cos(angle) * deltaX * math.cos(angle*2)), startY + (math.abs(math.cos(angle)) * deltaY * math.sin(angle*2))\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 3,
					["x"] = 3,
					["colorA"] = 1,
					["scalex"] = 1,
					["rotate"] = 0,
					["easeStrength"] = 3,
					["translateType"] = "spiralandpulse",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["scaley"] = 1,
					["alpha"] = 0.6,
					["y"] = 0,
					["x"] = 0,
					["duration"] = "0.3",
					["colorB"] = 1,
					["rotate"] = 0,
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = true,
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 1.5,
					["x"] = 1.5,
					["colorA"] = 1,
					["duration"] = "0.3",
					["rotate"] = 0,
					["easeStrength"] = 3,
					["translateType"] = "straightTranslate",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["version"] = 2,
			["height"] = 140.00004577637,
			["rotate"] = true,
			["fontSize"] = 70,
			["mirror"] = false,
			["anchorPoint"] = "CENTER",
			["regionType"] = "text",
			["xOffset"] = 436.841430664063,
			["displayText"] = "LOS\n",
			["crop_x"] = 0.41,
			["orientation"] = "VERTICAL",
			["semver"] = "1.0.0",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.melee = {\n    49998, -- \"Death Strike\" Blood/Unholy/Frost DK\n    100780, -- \"Tiger Palm\" Brewmaster/Mistweaver/Windwalker monk\n    33917, -- \"Mangle\" Guardian druid\n    5221, -- \"Shred\" Feral druid\n    203782, -- \"Shear\" Vengeance DH\n    162794, -- \"Chaos Strike\" Havoc DH\n    23922, -- \"Shield Slam\" Protection warrior\n    23881, -- \"Bloodthirst\" Fury warrior\n    12294, -- \"Mortal Strike\" ARMS warrior\n    60103, -- \"Lava Lash\" Enhancement shaman\n    187708, -- \"Carve\" Survival hunter\n    53600, -- \"Shield of the Righteous\" Protection paladin\n    35395, -- \"Crusader Strike\" Retribution paladin\n    1329, -- \"Mutilate\" Assassination rogue\n    193315, -- \"Saber Slash\" Outlaw rogue\n    53, -- \"Backstab\" Subtlety rogue\n}\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["justify"] = "CENTER",
			["selfPoint"] = "CENTER",
			["id"] = "Melee Range (multiclass)",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["frameStrata"] = 2,
			["width"] = 123.3334197998,
			["anchorFrameType"] = "SCREEN",
			["crop_y"] = 0.41,
			["inverse"] = false,
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
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
			["uid"] = "pjWAgVkuQC2",
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
						["type"] = "event",
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
						["type"] = "event",
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
			["internalVersion"] = 40,
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
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["xOffset"] = -329.95526123047,
			["regionType"] = "icon",
			["icon"] = true,
			["information"] = {
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
								["message_type"] = "GUILD",
								["message_format_2.extraSpellName_format"] = "none",
								["message"] = "%2.destName is now without %2.extraSpellName peepoKEKW",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "World Buff Purge",
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Mol'dar's Moxie",
			["alpha"] = 0,
			["frameStrata"] = 1,
			["width"] = 1,
			["semver"] = "1.0.3",
			["uid"] = "0p1(WRnib5Z",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 136054,
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["type"] = "status",
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
						["type"] = "status",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["message_operator"] = "==",
						["type"] = "event",
						["sourceUnit"] = "player",
						["subeventSuffix"] = "_CAST_FAILED",
						["subeventPrefix"] = "SPELL",
						["duration"] = "0.3",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["message"] = "Interrupted",
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["use_sourceUnit"] = true,
						["use_message"] = true,
						["unit"] = "player",
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
			["internalVersion"] = 40,
			["selfPoint"] = "CENTER",
			["frameStrata"] = 5,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 2,
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
			["height"] = 40,
			["parent"] = "cursor circles",
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
				["spec"] = {
					["multi"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
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
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "450915",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["startAngle"] = 0,
			["xOffset"] = 0,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["uid"] = "9CO)4JNGEAT",
			["blendMode"] = "BLEND",
			["authorOptions"] = {
			},
			["width"] = 40,
			["slantMode"] = "INSIDE",
			["desaturateForeground"] = false,
			["crop_y"] = 0.41,
			["tocversion"] = 80300,
			["semver"] = "1.0.0",
			["compress"] = false,
			["id"] = "cast time",
			["textureWrapMode"] = "CLAMP",
			["alpha"] = 1,
			["anchorFrameType"] = "MOUSE",
			["fontSize"] = 12,
			["config"] = {
			},
			["inverse"] = true,
			["anchorPoint"] = "CENTER",
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["information"] = {
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
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["rotation"] = 0,
			["borderInset"] = 1,
			["version"] = 3,
			["subRegions"] = {
			},
			["space"] = 0,
			["fullCircle"] = true,
			["load"] = {
				["use_class"] = "false",
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
			["selfPoint"] = "CENTER",
			["animate"] = false,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["scale"] = 0.45,
			["stagger"] = 0,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["uid"] = "p8eJxOa7eVw",
			["arcLength"] = 360,
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["gridWidth"] = 1,
			["borderOffset"] = 4,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Warrior - 2: Defensive Consumes",
			["internalVersion"] = 40,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sort"] = "none",
			["config"] = {
			},
			["gridType"] = "DR",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["radius"] = 200,
		},
		["Dense Sharpening Stone"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["text2FontFlags"] = "OUTLINE",
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
						["itemName"] = 12404,
						["type"] = "status",
						["unevent"] = "auto",
						["genericShowOn"] = "showOnCooldown",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Item)",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_itemName"] = true,
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
						["itemName"] = 12404,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["use_itemName"] = true,
						["names"] = {
						},
						["unit"] = "player",
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
			["desaturate"] = false,
			["internalVersion"] = 40,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["stickyDuration"] = false,
			["load"] = {
				["use_class"] = false,
				["use_never"] = true,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
						["ROGUE"] = true,
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
			["uid"] = "8JUe4v4Pq(k",
			["text1Containment"] = "INSIDE",
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text2Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "ABF",
			["auto"] = true,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Dense Sharpening Stone",
			["text2Font"] = "Friz Quadrata TT",
			["alpha"] = 1,
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
			["icon"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		},
		["Blessed Sunfruit "] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
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
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["event"] = "Item Count",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
			["information"] = {
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
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["xOffset"] = -490,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
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
			["cooldownEdge"] = false,
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["text1Enabled"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["alpha"] = 1,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Blessed Sunfruit ",
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["uid"] = "ErEppFHrs(7",
			["inverse"] = false,
			["internalVersion"] = 40,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
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
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
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
						["itemName"] = 18262,
						["type"] = "status",
						["unevent"] = "auto",
						["genericShowOn"] = "showOnCooldown",
						["duration"] = "1",
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["names"] = {
						},
						["unit"] = "player",
						["use_unit"] = true,
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
						["type"] = "status",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["names"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon"] = true,
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
			["url"] = "https://wago.io/_RGLErxXs/2",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["desaturate"] = false,
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "yNI8W(dVdi6",
			["text2Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Font"] = "ABF",
			["stickyDuration"] = false,
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = true,
			["auto"] = true,
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Elemental Sharpening Stone",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["xOffset"] = 0,
			["config"] = {
			},
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
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
			["internalVersion"] = 40,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
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
			["radius"] = 200,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
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
			["animate"] = false,
			["xOffset"] = 167.505920410156,
			["scale"] = 1,
			["grow"] = "DOWN",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["anchorPoint"] = "CENTER",
			["rotation"] = 0,
			["constantFactor"] = "RADIUS",
			["borderInset"] = 1,
			["borderOffset"] = 4,
			["limit"] = 5,
			["tocversion"] = 11305,
			["id"] = "Warrior CD Useage Use CD",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "JSBd)j7pBiN",
			["selfPoint"] = "TOP",
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["space"] = 2,
		},
		["dense dynamite"] = {
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
			["parent"] = "Warrior - 3: Offensive Consumes",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 18641,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
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
						["itemName"] = 18641,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
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
			["text2Font"] = "Friz Quadrata TT",
			["information"] = {
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
			["stickyDuration"] = false,
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
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
			["config"] = {
			},
			["desaturate"] = false,
			["width"] = 64,
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
			["frameStrata"] = 1,
			["semver"] = "1.0.1",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "dense dynamite",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1Enabled"] = true,
			["uid"] = "sJb0sGNe6L6",
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["internalVersion"] = 40,
		},
		["SWIFTNESS"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["internalVersion"] = 40,
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["count"] = "1",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Item Count",
						["use_unit"] = true,
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useTooltip"] = false,
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
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Enabled"] = true,
			["xOffset"] = -490,
			["stickyDuration"] = false,
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
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Font"] = "ABF",
			["text2Enabled"] = true,
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "SWIFTNESS",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 64,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["uid"] = "fKDfEQ0bK8j",
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		},
		["Healthstone 3"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 19013,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
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
			["cooldownEdge"] = false,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
			["desaturate"] = false,
			["internalVersion"] = 40,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["stickyDuration"] = false,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
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
			["uid"] = "OR3iIgV(RtN",
			["text1Containment"] = "INSIDE",
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["parent"] = "Warrior - 1: Recovery Consumes",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Healthstone 3",
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
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["Greater Stoneshield"] = {
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
			["text2Font"] = "Friz Quadrata TT",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 13455,
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
						["itemName"] = 13455,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["event"] = "Item Count",
						["use_unit"] = true,
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
			["parent"] = "Warrior - 2: Defensive Consumes",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -490,
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["alpha"] = 1,
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
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["zoom"] = 0,
			["cooldownEdge"] = false,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Stoneshield",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["uid"] = "zYYBoUmvFNX",
			["inverse"] = true,
			["internalVersion"] = 40,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
			["internalVersion"] = 40,
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
			["font"] = "Friz Quadrata TT",
			["fixedWidth"] = 200,
			["subRegions"] = {
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
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bam.ogg",
					["do_message"] = false,
					["message"] = "243175",
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fontSize"] = 12,
			["conditions"] = {
			},
			["automaticWidth"] = "Auto",
			["shadowXOffset"] = 1,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["uid"] = "nZlyvkhxfzm",
			["regionType"] = "icon",
			["parent"] = "Warrior CD Useage Use CD",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "USE DEATHWISH",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["width"] = 64,
			["wordWrap"] = "WordWrap",
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
			["displayIcon"] = 136146,
			["cooldown"] = false,
			["displayText_format_p_time_dynamic"] = false,
		},
		["SAND"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["text1Containment"] = "INSIDE",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 19183,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["names"] = {
						},
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["internalVersion"] = 40,
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
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["useTooltip"] = false,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
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
			["config"] = {
			},
			["text1Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["alpha"] = 1,
			["semver"] = "1.0.1",
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "SAND",
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
			["text2Enabled"] = true,
			["width"] = 64,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["uid"] = "jca8BSmUqTR",
			["inverse"] = true,
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
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
		["Healthstone 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["stickyDuration"] = false,
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "Warrior - 1: Recovery Consumes",
			["information"] = {
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
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Containment"] = "INSIDE",
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "HWTXbzsrEON",
			["useTooltip"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
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
			["auto"] = true,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Healthstone 2",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["width"] = 64,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["internalVersion"] = 40,
		},
		["Defense"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["cooldownSwipe"] = true,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 13445,
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
						["itemName"] = 13445,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
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
				["ignoreOptionsEventErrors"] = true,
			},
			["internalVersion"] = 40,
			["useTooltip"] = false,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "9JQ)zXFbdMn",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["text1Enabled"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Enabled"] = true,
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Defense",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		},
		["Kill_Time_Display"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "-------------------------------------------------------------------------------------------\n-- >>>> USAGE: target a saved boss and type \"!kt\" into raid chat, party chat or /say  <<<<\n-------------------------------------------------------------------------------------------\n\nfunction()\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/Vkta0EsHf/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\n-------------------------------------------------------------------------------------------\n-- >>>> USAGE: target a saved boss and type \"!kt\" into raid chat, party chat or /say  <<<<\n-------------------------------------------------------------------------------------------\n\n-- Raid Difficulty ID's --\nload_EncounterDiffID = {}\n\nload_EncounterDiffID[0] = \"None\"\nload_EncounterDiffID[1] = \"5-player\"\nload_EncounterDiffID[2] = \"5-player Heroic\"\nload_EncounterDiffID[3] = \"10-player Raid\"\nload_EncounterDiffID[4] = \"25-player Raid\"\nload_EncounterDiffID[5] = \"10-player Heroic Raid\"\nload_EncounterDiffID[6] = \"25-player Heroic Raid\"\nload_EncounterDiffID[7] = \"Raid Finder\"\nload_EncounterDiffID[8] = \"Challenge Mode\"\nload_EncounterDiffID[9] = \"40-player Raid\"\nload_EncounterDiffID[10] = \"10 - Not used\"\nload_EncounterDiffID[11] = \"Heroic Scenario\"\nload_EncounterDiffID[12] = \"Scenario\"\nload_EncounterDiffID[13] = \"13 - Not used\"\nload_EncounterDiffID[14] = \"Flexible Raid\"\nload_EncounterDiffID[15] = \"Heroic Flexible Raid\"\nload_EncounterDiffID[16] = \"Mythic Raid\"\nload_EncounterDiffID[17] = \"LFR Raid\"\nload_EncounterDiffID[18] = \"Molten Core 10th Anniversary\"\nload_EncounterDiffID[19] = \"5-player special event\"\nload_EncounterDiffID[20] = \"25-player Event Scenario\"\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "3",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["custom_hide"] = "custom",
						["type"] = "custom",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["event"] = "Chat Message",
						["names"] = {
						},
						["message"] = "!Kill Time",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["custom"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\n-------------------------------------------------------------------------------------------\n-- >>>> USAGE: target a saved boss and type \"!kt\" into raid chat, party chat or /say  <<<<\n-------------------------------------------------------------------------------------------\n\n\n-- e = chat event name\n-- arg1 = chat message\n-- arg2 = message author\n-- arg8 = channel number\n-- arg9 = channel name\n\n--[[ Reference list of trigger channels \n\nCHAT_MSG_SAY\nCHAT_MSG_RAID_LEADER\nCHAT_MSG_RAID\nCHAT_MSG_PARTY_LEADER\nCHAT_MSG_PARTY\nCHAT_MSG_CHANNEL \n\n]]\n\n\nfunction(e,arg1,arg2,_,_,_,_,_,arg8,arg9, ...)\n    if arg9:find(\"Trade\") or arg9:find(\"LocalDefense\") then return false end\n    \n    --print(e)\n    --print(arg1)\n    --print(arg2)\n    \n    local goFlag = 0\n    local encDiff = \"\"\n    local encounterID = \"\"\n    local chanType = \"\"\n    local charName = UnitName(\"player\")\n    local charRealm = GetRealmName(\"player\")\n    local uName = charName..\"_\"..charRealm\n    local tarName = UnitName(\"target\")\n    local lastTime = 0\n    local killTable = {}\n    local killTableTimes = {}\n    \n    local _, _, difficulty, _, _, _, _, _, _ = GetInstanceInfo()\n    \n    if tarName == nil then return false end\n    \n    if WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] ~= nil then \n        killTable = WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info']    \n        \n    end\n    \n    \n    if e == \"CHAT_MSG_SAY\" then  chanType = \"SAY\" end\n    if e == \"CHAT_MSG_RAID_LEADER\" then chanType = \"INSTANCE_CHAT\" end\n    if e == \"CHAT_MSG_RAID\" then chanType = \"INSTANCE_CHAT\" end\n    if e == \"CHAT_MSG_PARTY_LEADER\" then chanType = \"PARTY\" end\n    if e == \"CHAT_MSG_PARTY\" then chanType = \"PARTY\" end\n    if e == \"CHAT_MSG_CHANNEL\" then chanType = \"CHANNEL\" end\n    \n    --if arg1:find(\"Nythendra\") then encounterID = 1853 end\n    --if arg1:find(\"Nythendra\") then encounterID = 1853 end\n    \n    \n    \n    \n    if arg1:find(\"!kt\") or arg1:find(\"!kt all\") and arg2:find(charName) then\n        --print(e)\n        --print(arg2)\n        --print(\"WOW!!!!\")\n        for key, value in pairs(killTable) do\n            if killTable[key][tarName] ~= nil then\n                for key2, value2 in pairs(killTable[key][tarName]) do\n                    if killTable[key][tarName][key2] ~= nil then\n                        if arg1:find(\"!kt all\") then\n                            encDiff = key2\n                        else\n                            encDiff = difficulty\n                        end\n                        if killTable[key][tarName][encDiff][uName] ~= nil then\n                            \n                            goFlag = 1\n                            SendChatMessage(\" \", chanType, \"Common\", arg8)\n                            SendChatMessage(\"--------------------------\", chanType, \"Common\", arg8)\n                            SendChatMessage(\"--- \"..(load_EncounterDiffID[encDiff])..\" ---\", chanType, \"Common\", arg8)\n                            SendChatMessage(\"--------------------------\", chanType, \"Common\", arg8)\n                            \n                            for p=1,10 do\n                                --print(\"p: \"..p)\n                                if chanType ~= \"CHANNEL\" then\n                                    goFlag = 1\n                                    local tempChat = killTable[key][tarName][encDiff][uName][\"kill_Times\"][p]\n                                    \n                                    if lastTime ~= tempChat then\n                                        local tempChat2 = (string.format(\"%02d:%02d\", tempChat/60,  tempChat%60))\n                                        SendChatMessage(tempChat2, chanType)\n                                    end\n                                    \n                                    lastTime = tempChat\n                                    \n                                else\n                                    goFlag = 1\n                                    local tempChat = killTable[key][tarName][encDiff][uName][\"kill_Times\"][p]\n                                    \n                                    if lastTime ~= tempChat then\n                                        local tempChat2 = (string.format(\"%02d:%02d\", tempChat/60,  tempChat%60))\n                                        SendChatMessage(tempChat2, chanType,\"Common\", arg8)\n                                    end\n                                    \n                                    lastTime = tempChat\n                                    \n                                end\n                                \n                            end\n                            if arg1:find(\"!kt all\") then\n                            else\n                                break\n                            end\n                            \n                        end\n                    end\n                end\n            end\n        end\n        if goFlag == 1 then\n            return true \n        else\n            return false\n            \n        end\n        \n        \n    end\n    \nend",
						["use_message"] = true,
						["events"] = "CHAT_MSG_SAY,CHAT_MSG_RAID_LEADER,CHAT_MSG_RAID,CHAT_MSG_PARTY_LEADER,CHAT_MSG_PARTY,CHAT_MSG_CHANNEL",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
					},
					["untrigger"] = {
						["custom"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\nfunction()\n    return true\n    \nend\n\n\n\n\n",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
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
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 11.666681289673,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["spec"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
				["affixes"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["automaticWidth"] = "Auto",
			["parent"] = "STM Kill Timers",
			["preferToUpdate"] = false,
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
			["semver"] = "1.0.0",
			["uid"] = "fMaQ8hxyDmQ",
			["id"] = "Kill_Time_Display",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 6.6666436195374,
			["config"] = {
			},
			["justify"] = "LEFT",
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
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
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
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\cat2.ogg",
					["do_message"] = false,
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
			["internalVersion"] = 40,
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
			["font"] = "Friz Quadrata TT",
			["fixedWidth"] = 200,
			["subRegions"] = {
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
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["race"] = {
					["single"] = "Orc",
				},
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
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fontSize"] = 12,
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["shadowXOffset"] = 1,
			["preferToUpdate"] = false,
			["shadowYOffset"] = -1,
			["uid"] = "UvY8coJhnFN",
			["regionType"] = "icon",
			["parent"] = "Warrior CD Useage Use CD",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "Bloodfury",
			["wordWrap"] = "WordWrap",
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
			["xOffset"] = 0,
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
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["useTooltip"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 8410,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownEdge"] = false,
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["desaturate"] = false,
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
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
			["uid"] = "FVBX3(TjZNK",
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["alpha"] = 1,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Dragonbreath",
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
			["width"] = 64,
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
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
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
		["Major Healing Potion 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Item)",
						["duration"] = "1",
						["use_itemName"] = true,
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
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
						["itemName"] = 13446,
						["use_count"] = false,
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/cmdyr6QI7/2",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 1: Recovery Consumes",
			["stickyDuration"] = false,
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["authorOptions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["internalVersion"] = 40,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["desaturate"] = false,
			["text2"] = "%p",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Major Healing Potion 2",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["uid"] = "X12XUYIZyon",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["Fortitude"] = {
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
			["internalVersion"] = 40,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 3825,
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
						["itemName"] = 3825,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
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
			["parent"] = "Warrior - 2: Defensive Consumes",
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
				["ignoreOptionsEventErrors"] = true,
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
			["text1Containment"] = "INSIDE",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "1cSSt3md3vL",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["selfPoint"] = "CENTER",
			["text2"] = "%p",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Fortitude",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["xOffset"] = -490,
		},
		["Tender Wolf Steak"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = 0,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["xOffset"] = -490,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["type"] = "status",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_includeBank"] = false,
						["use_unit"] = true,
						["count"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Item Count",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
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
			["displayIcon"] = "134003",
			["authorOptions"] = {
			},
			["internalVersion"] = 40,
			["desaturate"] = false,
			["uid"] = "HpLKMvP3r5o",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["cooldownEdge"] = false,
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 64,
			["authorMode"] = true,
			["frameStrata"] = 1,
			["text2Containment"] = "INSIDE",
			["icon"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["semver"] = "1.0.2",
			["text2"] = "%p",
			["text2FontSize"] = 31,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["text1Containment"] = "INSIDE",
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Tender Wolf Steak",
			["text1Enabled"] = true,
			["text2Enabled"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
		},
		["Greater Fire Pot"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["cooldownSwipe"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["type"] = "status",
						["itemName"] = 13457,
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
						["itemName"] = 13457,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
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
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
			["internalVersion"] = 40,
			["stickyDuration"] = false,
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "Flh17w(0Er7",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["cooldownEdge"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["desaturate"] = false,
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Fire Pot",
			["useTooltip"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["text2Enabled"] = true,
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["xOffset"] = -490,
		},
		["LIP"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 3387,
						["unevent"] = "auto",
						["genericShowOn"] = "showOnCooldown",
						["duration"] = "1",
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
						["names"] = {
						},
						["unit"] = "player",
						["use_unit"] = true,
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["unevent"] = "auto",
						["count"] = "1",
						["names"] = {
						},
						["use_itemName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 1: Recovery Consumes",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = 0,
			["desaturate"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Containment"] = "INSIDE",
			["load"] = {
				["use_never"] = false,
				["use_level"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["level"] = "40",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "N0Irb813)VL",
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "ABF",
			["semver"] = "1.0.1",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "LIP",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["width"] = 64,
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = false,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		},
		["Titans"] = {
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
			["cooldownEdge"] = false,
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
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 13510,
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
						["itemName"] = 13510,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
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
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Enabled"] = true,
			["useTooltip"] = false,
			["stickyDuration"] = false,
			["internalVersion"] = 40,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
			["authorMode"] = true,
			["width"] = 64,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["desaturate"] = false,
			["text2"] = "%p",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Titans",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["uid"] = "5F0uSnAjY8T",
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["xOffset"] = -490,
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
			["internalVersion"] = 40,
			["useLimit"] = false,
			["align"] = "CENTER",
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["rotation"] = 0,
			["uid"] = "Uwh0zbAQcVE",
			["version"] = 2,
			["subRegions"] = {
			},
			["stagger"] = 0,
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
			["load"] = {
				["use_class"] = "false",
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
			["url"] = "https://wago.io/_RGLErxXs/2",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "TOPLEFT",
			["animate"] = false,
			["authorOptions"] = {
			},
			["scale"] = 0.45,
			["backgroundInset"] = 0,
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["space"] = 0,
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
			["sort"] = "none",
			["config"] = {
			},
			["arcLength"] = 360,
			["radius"] = 200,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fullCircle"] = true,
		},
		["INVIS"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 9172,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["names"] = {
						},
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["unevent"] = "auto",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["use_unit"] = true,
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
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["internalVersion"] = 40,
			["text1Containment"] = "INSIDE",
			["useTooltip"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "q55cuVzFcTJ",
			["stickyDuration"] = false,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["cooldownEdge"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Font"] = "ABF",
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "INVIS",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["Spirit"] = {
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
			["selfPoint"] = "CENTER",
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
						["itemName"] = 20079,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["event"] = "Item Count",
						["unit"] = "player",
						["names"] = {
						},
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
			["cooldownEdge"] = false,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["uid"] = "iG4paspZ0qu",
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
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
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["text1Enabled"] = true,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Spirit",
			["text2FontFlags"] = "OUTLINE",
			["text2Enabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 40,
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["Healthstone 1"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 9421,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
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
			["parent"] = "Warrior - 1: Recovery Consumes",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["xOffset"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["stickyDuration"] = false,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "VIkrlhTs7oq",
			["text2Font"] = "Friz Quadrata TT",
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["internalVersion"] = 40,
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Healthstone 1",
			["useTooltip"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/cmdyr6QI7/2",
		},
		["CLICK_ME_TO_Reset_Kill_Times_BE_CAREFUL"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    \n    wa_global_reset_check = wa_global_reset_check + 1\n    if wa_global_reset_check == 1 then StaticPopup_Show (\"Reset_Check_One\") end\n    \nend\n\n\n\n\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/Vkta0EsHf/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "wa_global_reset_check = 0\n\n--- Create Dialog to reset the database ---\nStaticPopupDialogs[\"Reset_Check_One\"] = {\n    text = \"You are about to Reset all your saved kill times... are you sure?\",\n    button1 = \"Yes\",\n    button2 = \"No\",\n    OnAccept = function()\n        Spinal_Reset_Check_One_Pass()\n    end,\n    timeout = 0,\n    whileDead = true,\n    hideOnEscape = true,\n    preferredIndex = 3,  \n}\n\nStaticPopupDialogs[\"Reset_Check_Two\"] = {\n    text = \"This cannot be undone.  Last chance... are you sure?\",\n    button1 = \"Yes\",\n    button2 = \"No\",\n    OnAccept = function()\n        Spinal_Reset_Check_Two_Pass()\n    end,\n    timeout = 0,\n    whileDead = true,\n    hideOnEscape = true,\n    preferredIndex = 3,  \n}\n\n\nfunction Spinal_Reset_Check_One_Pass()\n    StaticPopup_Show (\"Reset_Check_Two\")\n    \nend\n\nfunction Spinal_Reset_Check_Two_Pass()\n    store_EncounterID = {}\n    WeakAurasSaved['displays']['Average_Kill_Time']['Kill_Info'] = nil\n    WeakAurasSaved['displays']['CLICK_ME_TO_Reset_Kill_Times_BE_CAREFUL']['load'][\"use_never\"] = true\n    \n    ReloadUI();\nend",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["event"] = "Conditions",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_unit"] = true,
						["unevent"] = "auto",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
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
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 11.666681289673,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["spec"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
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
				["affixes"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["automaticWidth"] = "Auto",
			["parent"] = "STM Kill Timers",
			["preferToUpdate"] = false,
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["semver"] = "1.0.0",
			["uid"] = "KdezT4rxk6g",
			["id"] = "CLICK_ME_TO_Reset_Kill_Times_BE_CAREFUL",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 6.6666436195374,
			["config"] = {
			},
			["selfPoint"] = "BOTTOM",
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
				["ignoreOptionsEventErrors"] = true,
			},
			["authorOptions"] = {
			},
		},
		["Juju Power"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12451,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
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
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["desaturate"] = false,
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "R4)yATif(lI",
			["cooldownEdge"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = true,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Juju Power",
			["text2Font"] = "Friz Quadrata TT",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["useTooltip"] = false,
		},
		["Dirge's Kickin"] = {
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
			["useTooltip"] = false,
			["cooldownSwipe"] = true,
			["selfPoint"] = "CENTER",
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
						["itemName"] = 21023,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["count"] = "1",
						["spellIds"] = {
						},
						["unit"] = "player",
						["event"] = "Item Count",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = -490,
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["uid"] = "WZcwIiE8J9d",
			["load"] = {
				["use_class"] = true,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["level"] = "40",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 40,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["zoom"] = 0,
			["semver"] = "1.0.2",
			["tocversion"] = 11305,
			["id"] = "Dirge's Kickin",
			["text2Enabled"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["spellIds"] = {
						},
						["events"] = "",
						["check"] = "update",
						["custom"] = "function()\n    return true\nend\n\n\n",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
				["use_zone"] = true,
				["use_never"] = false,
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
			["uid"] = "orJHJQe)ZlC",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["regionType"] = "icon",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 4+",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 32,
			["semver"] = "1.0.0",
			["config"] = {
			},
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
			["parent"] = "PVP: AB Callout Bar - Jon Test",
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
				["use_zone"] = true,
				["use_never"] = false,
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
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["url"] = "https://wago.io/GZL1eMszV/1",
			["cooldownTextDisabled"] = false,
			["width"] = 32,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 1",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["uid"] = "CoYxHGHhxVu",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "PVP: AB Callout Bar - Jon Test",
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
			["internalVersion"] = 40,
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
			["yOffset"] = 583.538208007813,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOMLEFT",
			["config"] = {
			},
			["uid"] = "A7J9lnBowvc",
			["borderInset"] = 1,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["authorOptions"] = {
			},
		},
		["Time to Die"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\nfunction()\n    \n    if UnitIsDead(\"target\") then return \"\" end\n    \n    --local tarName = UnitName(\"target\")\n    local bossOffsetFactor = 1\n    --local npcId = tonumber((UnitGUID(\"target\")):sub(-12, -9), 16)\n    local guid = UnitGUID(\"target\")\n    local _, _, _, _, _, npcId, _ = strsplit(\"-\",guid)\n    local _, _, difficulty, _, _, _, _, _, _ = GetInstanceInfo()\n    \n    if difficulty == 1 or difficulty == 2 or difficulty == 23 then   -- 5 man version of same boss\n        if FiveManExceptionTable[npcId] then \n            bossOffsetFactor = (FiveManExceptionTable[npcId] / 100) + bossOffsetFactor end        \n    else      \n        if BossExceptionTable[npcId] then \n            bossOffsetFactor = (BossExceptionTable[npcId] / 100) + bossOffsetFactor end\n    end\n    \n    local colour = \"|cffffffff\"\n    local health = UnitHealth(\"target\")\n    local maxHealth = UnitHealthMax(\"target\")\n    local time = GetTime()\n    local text\n    local oldhealth\n    local bossOffset = (maxHealth * bossOffsetFactor) - maxHealth\n    \n    if oldhealth ~= health then\n        oldhealth = health\n        if health == maxHealth then -- THiS BLOCK IS GOOD\n            wa_Spinal_health0, wa_Spinal_time0, wa_Spinal_mhealth, wa_Spinal_mtime = nil\n            text = \" - - \"\n            return colour..text\n        end\n        \n        health = health - bossOffset\n        \n        if not wa_Spinal_health0 then -- GOOD\n            wa_Spinal_health0, wa_Spinal_time0 = health, time\n            wa_Spinal_mhealth, wa_Spinal_mtime = health, time\n            return\n        end\n        \n        wa_Spinal_mhealth = (wa_Spinal_mhealth + health) * .5\n        wa_Spinal_mtime = (wa_Spinal_mtime + time) * .5\n        \n        if wa_Spinal_mhealth >= wa_Spinal_health0 then\n            text = \" - - \"\n            wa_Spinal_health0, wa_Spinal_time0, wa_Spinal_mhealth, wa_Spinal_mtime =nil\n        else\n            time = health * (wa_Spinal_time0 - wa_Spinal_mtime) / (wa_Spinal_mhealth - wa_Spinal_health0)\n            if time < 0 then\n                time = 0\n                colour = \"|cffdd1600\"\n                text = format(\"%0.2d\",time)\n            elseif (time <= 60) then\n                text = format(\"%0.2d\",time)           \n            elseif (time > 60) then\n                text = format(\"%d:%0.2d\",time / 60, time % 60)\n            end\n            return colour..text\n        end\n    end\nend",
			["yOffset"] = -3.9999694824219,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/Vkta0EsHf/1",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "---------------------------------------------------------------------\n--   Set the npcID of the boss you want to offset the health       --\n--   to time to and make equal to new health percentage            --\n--   You can get the npcID from the url of the npc on wowhead.com  --\n--   ie. http://www.wowhead.com/npc=104215/patrol-captain-gerdo    --\n---------------------------------------------------------------------\n\nBossExceptionTable = {}\n\nBossExceptionTable[\"114263\"] = 10    -- Odyn Raid Boss\nBossExceptionTable[\"114361\"] = 25    -- Hymdall Raid Boss\nBossExceptionTable[\"114360\"] = 25    -- Hyrja Raid Boss\n\n\n-----------------------------------------------------------\n\nFiveManExceptionTable = {}\n\nFiveManExceptionTable[\"95676\"] = 80    -- Odyn 5 Man\nFiveManExceptionTable[\"94960\"] = 10    -- Hymdall 5 Man\nFiveManExceptionTable[\"96759\"] = 70    -- Helya 5 Man\nFiveManExceptionTable[\"104215\"] = 25   -- Patrol Captain Gerdo *** Only use this if you have an alchemist\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["percenthealth"] = "0",
						["event"] = "Health",
						["use_unit"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["use_percenthealth"] = false,
						["percenthealth_operator"] = ">",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["unit"] = "target",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 40,
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
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 35.833381652832,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
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
						["HUNTER"] = true,
						["ROGUE"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["affixes"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 36,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["automaticWidth"] = "Auto",
			["parent"] = "STM Kill Timers",
			["preferToUpdate"] = false,
			["xOffset"] = 113,
			["authorOptions"] = {
			},
			["semver"] = "1.0.0",
			["uid"] = "LSsWOysjf1I",
			["id"] = "Time to Die",
			["selfPoint"] = "BOTTOM",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 60.833347320557,
			["config"] = {
			},
			["justify"] = "RIGHT",
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
				["ignoreOptionsEventErrors"] = true,
			},
			["wordWrap"] = "WordWrap",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
				["use_zone"] = true,
				["use_never"] = false,
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
			["uid"] = "mtAeCVGFcrG",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["regionType"] = "icon",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Clear",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 32,
			["semver"] = "1.0.0",
			["config"] = {
			},
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
			["parent"] = "PVP: AB Callout Bar - Jon Test",
		},
		["Thistle Tea"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
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
						["type"] = "status",
						["itemName"] = 7676,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
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
						["itemName"] = 7676,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["use_itemName"] = true,
						["names"] = {
						},
						["unit"] = "player",
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
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1Containment"] = "INSIDE",
			["useTooltip"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["desaturate"] = false,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
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
			["uid"] = "AF3r)aAgaAX",
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
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["parent"] = "Warrior - 3: Offensive Consumes",
			["stickyDuration"] = false,
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["auto"] = true,
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["internalVersion"] = 40,
			["cooldownTextDisabled"] = false,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Thistle Tea",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["text2FontFlags"] = "OUTLINE",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
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
						["spellIds"] = {
						},
						["unit"] = "player",
						["check"] = "event",
						["custom"] = "function(states, e, arg1, arg2, ...)\n    local init = aura_env:Initialize(states)\n    local res\n    if e == \"CHAT_MSG_BG_SYSTEM_NEUTRAL\" and arg1 then\n        res = aura_env:OnChatMsgBGSystemNeutral(states, arg1)\n    elseif (e == \"CHAT_MSG_BG_SYSTEM_ALLIANCE\" or e == \"CHAT_MSG_BG_SYSTEM_HORDE\") and arg1 then\n        res = aura_env:OnChatMsgBGSystemFaction(states, arg1, (e == \"CHAT_MSG_BG_SYSTEM_ALLIANCE\") and 1 or 2)\n    elseif e == \"CHAT_MSG_ADDON\" and arg1 == aura_env.msg_prefix then\n        res = aura_env:RestartTimer(states, arg2, aura_env.res_time)\n    elseif e == \"AB_RESURRECTION_TIMER\" and arg1 then\n        res = aura_env:RestartTimer(states, arg1, aura_env.res_time)\n    elseif e == \"PLAYER_UNGHOST\" and not WeakAuras.IsOptionsOpen() then\n        -- todo find a way to not trigger this when option pane is open\n        local id = aura_env.subzones[GetSubZoneText()]\n        if id and states[id] and states[id].duration > 7 then\n            C_ChatInfo.SendAddonMessage(aura_env.msg_prefix, id, \"INSTANCE_CHAT\")\n        end\n    end\n    return init or res\nend",
						["events"] = "CHAT_MSG_BG_SYSTEM_NEUTRAL CHAT_MSG_BG_SYSTEM_ALLIANCE CHAT_MSG_BG_SYSTEM_HORDE CHAT_MSG_ADDON PLAYER_UNGHOST AB_RESURRECTION_TIMER",
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
			["internalVersion"] = 40,
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
			["barColor"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
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
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
			},
			["height"] = 20,
			["load"] = {
				["use_zone"] = true,
				["zone"] = "Arathi Basin",
				["use_size"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "pvp",
					["multi"] = {
						["pvp"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["icon"] = true,
			["parent"] = "ArathiBasin Capture and Resurrection Timers",
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["useAdjustedMax"] = false,
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["uid"] = "DeJBLIXZ3zs",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["texture"] = "Flatt",
			["frameStrata"] = 1,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "ArathiBasinCaptureOrResurrectionTimerEntry",
			["spark"] = false,
			["alpha"] = 1,
			["width"] = 150,
			["zoom"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["sparkOffsetY"] = 0,
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["iconSource"] = -1,
		},
		["FAP"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
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
						["itemName"] = 5634,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["use_itemName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
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
			["selfPoint"] = "CENTER",
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 40,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "Esw7mJSw)4v",
			["stickyDuration"] = false,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "ABF",
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "FAP",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["icon"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
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
			["internalVersion"] = 40,
			["selfPoint"] = "TOPLEFT",
			["align"] = "LEFT",
			["rotation"] = 0,
			["version"] = 1,
			["subRegions"] = {
			},
			["xOffset"] = -244.989318847656,
			["stagger"] = 0,
			["load"] = {
				["use_class"] = false,
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
			["yOffset"] = -76.51611328125,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useLimit"] = false,
			["animate"] = false,
			["arcLength"] = 360,
			["scale"] = 1,
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
			["border"] = false,
			["anchorFrameFrame"] = "UIWidgetTopCenterContainerFrame",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["limit"] = 5,
			["config"] = {
			},
			["anchorFrameParent"] = true,
			["constantFactor"] = "RADIUS",
			["borderEdge"] = "Square Full White",
			["borderOffset"] = 4,
			["gridWidth"] = 3,
			["tocversion"] = 11305,
			["id"] = "ArathiBasin Capture and Resurrection Timers",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fullCircle"] = true,
			["uid"] = "euXKNmiWPRp",
			["gridType"] = "DR",
			["radius"] = 200,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["space"] = 1,
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
					["sound"] = "Interface\\AddOns\\Prat-3.0\\sounds\\Bell.ogg",
					["do_message"] = false,
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["automaticWidth"] = "Auto",
			["subRegions"] = {
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
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fontSize"] = 12,
			["fixedWidth"] = 200,
			["displayIcon"] = 136006,
			["shadowXOffset"] = 1,
			["wordWrap"] = "WordWrap",
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
			["config"] = {
			},
			["regionType"] = "icon",
			["icon"] = true,
			["width"] = 64,
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["displayText_format_p_time_precision"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["tocversion"] = 11305,
			["id"] = "USE EARTHSTRIKE ",
			["parent"] = "Warrior CD Useage Use CD",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["preferToUpdate"] = false,
			["uid"] = "eVYPsXo2D)C",
			["inverse"] = false,
			["shadowYOffset"] = -1,
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
						["spellIds"] = {
						},
						["events"] = "",
						["check"] = "update",
						["custom"] = "function()\n    return true\nend",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
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
				["use_zone"] = true,
				["use_never"] = false,
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
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["cooldownEdge"] = false,
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Incoming 2",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 32,
			["semver"] = "1.0.0",
			["uid"] = "gU(rCXXg1QR",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "PVP: AB Callout Bar - Jon Test",
		},
		["Threat Warning"] = {
			["user_y"] = 0,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.011764705882353, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "\nfunction ()\n    return ''..aura_env.threat\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/9qBCTJSAt/9",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["dynamicDuration"] = false,
						["duration"] = "5",
						["event"] = "Health",
						["names"] = {
						},
						["customDuration"] = "",
						["unit"] = "player",
						["events"] = "THREAT_WARNING_UPDATE, PLAYER_REGEN_DISABLED, PLAYER_REGEN_ENABLED, PLAYER_TARGET_CHANGED",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event)\n    if event == 'PLAYER_REGEN_DISABLED' then\n        local speed = aura_env.config[\"speed\"]\n        aura_env.ticker = C_Timer.NewTicker(speed, function() WeakAuras.ScanEvents(\"THREAT_WARNING_UPDATE\") end)\n    elseif event == 'PLAYER_REGEN_ENABLED' then\n        if aura_env.ticker then\n            aura_env.ticker:Cancel()\n        end\n    end\n    \n    local isTanking, _, threatPercent, _, _ = aura_env.UnitDetailedThreatSituation(\"player\", \"target\")\n    threatPercent = threatPercent or 0\n    return not isTanking and threatPercent >= aura_env.config[\"threshold\"]\nend",
						["spellIds"] = {
						},
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
			["internalVersion"] = 40,
			["xOffset"] = -6.1035156250e-05,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["do_message"] = false,
					["do_custom"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\Fireball.ogg",
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.UnitDetailedThreatSituation = UnitDetailedThreatSituation\n\n",
					["do_custom"] = true,
				},
			},
			["conditions"] = {
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 9,
			["subRegions"] = {
			},
			["height"] = 500,
			["rotate"] = true,
			["crop_y"] = 0.41,
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
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["fontSize"] = 12,
			["startAngle"] = 0,
			["config"] = {
				["threshold"] = 90,
				["speed"] = 0.2,
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "texture",
			["width"] = 500,
			["blendMode"] = "BLEND",
			["alpha"] = 0.7,
			["customTextUpdate"] = "update",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura17",
			["tocversion"] = 11305,
			["discrete_rotation"] = 0,
			["semver"] = "2.2.0",
			["compress"] = false,
			["id"] = "Threat Warning",
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
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_level"] = false,
				["level_operator"] = "==",
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["level"] = "60",
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "f1xGf4PXGtT",
			["inverse"] = false,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["swing timer"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 19.000305175781,
			["preferToUpdate"] = false,
			["yOffset"] = -321.99978637695,
			["anchorPoint"] = "CENTER",
			["icon"] = false,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/wHUImG4M6/1",
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
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_hand"] = true,
						["hand"] = "main",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
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
			["internalVersion"] = 40,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["customTextUpdate"] = "update",
			["barColor"] = {
				0.85098039215686, -- [1]
				0.80392156862745, -- [2]
				0.65098039215686, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["desaturate"] = false,
			["borderBackdrop"] = "None",
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
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
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
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
				}, -- [3]
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
				}, -- [4]
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
				}, -- [5]
			},
			["height"] = 17.999904632568,
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
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "custom",
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
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
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
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkOffsetY"] = 0,
			["config"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["authorOptions"] = {
			},
			["icon_side"] = "RIGHT",
			["id"] = "swing timer",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["spark"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHidden"] = "NEVER",
			["auto"] = true,
			["frameStrata"] = 2,
			["width"] = 384.00048828125,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "1tFOxKvWIXO",
			["inverse"] = true,
			["useAdjustededMax"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["iconSource"] = -1,
		},
		["Greater Nature"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
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
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/-yIOkSTYQ/3",
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
						["type"] = "status",
						["itemName"] = 13458,
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
						["itemName"] = 13458,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["internalVersion"] = 40,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["desaturate"] = false,
			["xOffset"] = -490,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "SzxrQ6LlgiA",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Nature",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 64,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["SWIFT"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["desaturate"] = false,
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
						["itemName"] = 2459,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Item)",
						["use_genericShowOn"] = true,
						["use_itemName"] = true,
						["names"] = {
						},
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
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
						["itemName"] = 2459,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
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
			["internalVersion"] = 40,
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
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["icon"] = true,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["ROGUE"] = true,
						["WARRIOR"] = true,
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
			["config"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["alpha"] = 1,
			["semver"] = "1.0.1",
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "SWIFT",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["width"] = 64,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["uid"] = "LZ8fJPiI5kL",
			["inverse"] = true,
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["JUJU EMBER"] = {
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
				}, -- [1]
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
					["useGlowColor"] = true,
					["glow"] = false,
					["glowThickness"] = 2.6,
					["glowScale"] = 1,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["cooldownSwipe"] = true,
			["internalVersion"] = 40,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 12455,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["count"] = "1",
						["spellIds"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["names"] = {
						},
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["xOffset"] = -490,
			["useTooltip"] = false,
			["text1Containment"] = "INSIDE",
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "J1n6Js(VHuq",
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
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
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "JUJU EMBER",
			["text2Font"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = true,
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
		},
		["Mana 5SecondRule + Ticks"] = {
			["sparkWidth"] = 21,
			["borderBackdrop"] = "Blizzard Tooltip",
			["width"] = 319.999938964844,
			["parent"] = "Mana Bar + Tick",
			["preferToUpdate"] = false,
			["iconSource"] = -1,
			["yOffset"] = -222.216461181641,
			["anchorPoint"] = "CENTER",
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/CrTv_xPBX/4",
			["icon"] = false,
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
						["spellIds"] = {
						},
						["custom"] = "function(a, e, t)\n    local currentMana = UnitPower(\"player\" , 0)\n    \n    if currentMana >= UnitPowerMax(\"player\", 0) then\n        return false\n    end\n    \n    if e == \"UNIT_POWER_FREQUENT\" and currentMana > aura_env.lastMana then\n        local duration = 2\n        a[\"\"] = {\n            show = true,\n            changed = true,\n            duration = duration,\n            expirationTime = GetTime() + duration,\n            progressType = \"timed\",\n            autoHide = true\n        }\n        aura_env.lastMana = currentMana\n        \n    elseif e == \"UNIT_SPELLCAST_SUCCEEDED\" and currentMana < aura_env.lastMana then\n        local duration = 6.45 -- why?\n        --local duration = 5\n        a[\"\"] = {\n            show = true,\n            changed = true,\n            duration = duration,\n            expirationTime = GetTime() + duration,\n            progressType = \"timed\",\n            autoHide = true\n        }\n        aura_env.lastMana = currentMana\n    end\n    \n    --aura_env.lastMana = currentMana\n    return true\nend",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED:player UNIT_POWER_FREQUENT:player",
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
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 40,
			["useAdjustedMin"] = false,
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["id"] = "Mana 5SecondRule + Ticks",
			["barColor"] = {
				0, -- [1]
				0.23529411764706, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["stickyDuration"] = false,
			["color"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0.22352941176471, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["version"] = 4,
			["subRegions"] = {
				{
					["type"] = "aurabar_bar",
				}, -- [1]
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
					["text_anchorXOffset"] = 15,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Accidental Presidency",
					["text_anchorYOffset"] = -10,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "SPARK",
					["text_text_format_p_format"] = "timed",
					["text_visible"] = false,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [2]
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
				}, -- [3]
			},
			["height"] = 32.9999542236328,
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
			["load"] = {
				["use_class"] = false,
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
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 23.4940795898438,
			["desaturate"] = false,
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
			["sparkOffsetY"] = 0,
			["useAdjustedMax"] = false,
			["smoothProgress"] = false,
			["anchorFrameFrame"] = "WeakAuras:Mana",
			["regionType"] = "aurabar",
			["borderInFront"] = true,
			["useAdjustededMax"] = false,
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.3",
			["config"] = {
			},
			["sparkHeight"] = 48,
			["texture"] = "ElvUI Blank",
			["useAdjustededMin"] = false,
			["zoom"] = 0,
			["spark"] = true,
			["tocversion"] = 11305,
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "GarrMission_EncounterBar-Spark",
			["alpha"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["frameStrata"] = 4,
			["uid"] = "dvZawXAyrxC",
			["inverse"] = false,
			["auto"] = true,
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["internalVersion"] = 40,
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
			["font"] = "Friz Quadrata TT",
			["fixedWidth"] = 200,
			["subRegions"] = {
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
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["automaticWidth"] = "Auto",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fontSize"] = 12,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["shadowXOffset"] = 1,
			["preferToUpdate"] = false,
			["displayText_format_p_time_dynamic"] = false,
			["uid"] = "K7VNSy4CmVO",
			["regionType"] = "icon",
			["parent"] = "Warrior CD Useage Use CD",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["actions"] = {
				["start"] = {
					["message"] = "243176",
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_glow"] = true,
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
			},
			["displayText_format_p_time_precision"] = 1,
			["cooldownTextDisabled"] = false,
			["justify"] = "LEFT",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Diamond flask",
			["wordWrap"] = "WordWrap",
			["alpha"] = 1,
			["width"] = 64,
			["authorOptions"] = {
			},
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["xOffset"] = 0,
			["subRegions"] = {
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
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["fontSize"] = 12,
			["fixedWidth"] = 200,
			["displayIcon"] = 132109,
			["shadowXOffset"] = 1,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = true,
					["message_type"] = "SMARTRAID",
					["message"] = "243176",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
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
			["config"] = {
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["width"] = 64,
			["alpha"] = 1,
			["cooldownEdge"] = false,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["justify"] = "LEFT",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Reck",
			["parent"] = "Warrior CD Useage Use CD",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["preferToUpdate"] = false,
			["uid"] = "3k2f4TIs4h9",
			["inverse"] = false,
			["yOffset"] = 0,
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
						["type"] = "status",
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
			["internalVersion"] = 40,
			["selfPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["version"] = 3,
			["subRegions"] = {
			},
			["load"] = {
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
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["shadowYOffset"] = -1,
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
			["justify"] = "LEFT",
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
			["semver"] = "1.0.2",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://wago.io/hmycuCcHu/3",
		},
		["Greater Frost"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = -490,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 40,
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
						["type"] = "status",
						["itemName"] = 13456,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
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
						["itemName"] = 13456,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["names"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["use_unit"] = true,
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
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Enabled"] = true,
			["icon"] = true,
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["uid"] = "WUpyH0(uN6p",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
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
			["parent"] = "Warrior - 2: Defensive Consumes",
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Frost",
			["text2FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["cooldownEdge"] = false,
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
			["desc"] = "Clickable Consumables for Warriors, will show red icon for missing consumables and provide facility to click if consumable is in inventory.",
			["rotation"] = 0,
			["limit"] = 5,
			["version"] = 2,
			["subRegions"] = {
			},
			["stagger"] = 0,
			["internalVersion"] = 40,
			["load"] = {
				["use_class"] = "false",
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
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 50,
			["animate"] = false,
			["space"] = 0,
			["scale"] = 0.45,
			["grow"] = "GRID",
			["border"] = false,
			["borderEdge"] = "1 Pixel",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["backgroundInset"] = 0,
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
			["gridType"] = "DR",
			["config"] = {
			},
			["useLimit"] = false,
			["fullCircle"] = true,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["background"] = "None",
		},
		["Mighty Rage 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 13442,
						["unevent"] = "auto",
						["use_itemName"] = true,
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
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
						["itemName"] = 13442,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["names"] = {
						},
						["use_itemName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 40,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Enabled"] = true,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
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
			["uid"] = "bT5p9HIyTwy",
			["desaturate"] = false,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["auto"] = true,
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Mighty Rage 2",
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["stickyDuration"] = false,
			["cooldownSwipe"] = true,
			["internalVersion"] = 40,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 13459,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["event"] = "Cooldown Progress (Item)",
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
						["itemName"] = 13459,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["subeventPrefix"] = "SPELL",
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["useTooltip"] = false,
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
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
			["xOffset"] = -490,
			["text1Containment"] = "INSIDE",
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "sj1ndg9PJql",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
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
			["text2Font"] = "Friz Quadrata TT",
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["cooldownTextDisabled"] = false,
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
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Shadow",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
		},
		["Boss Time to Die"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 111,
			["displayText"] = "%c",
			["customText"] = "-----------------------------------------------------------------------\n--- Spinalcrack's Average Kill Time Weakaura -- www.howtopriest.com ---\n-----------------------------------------------------------------------\n\nfunction()\n    \n    if UnitIsDead(\"boss1\") then return \"\" end\n    \n    --    local boss_tarName = UnitName(\"boss1\")\n    local bossOffsetFactor = 1    \n    --local npcId = tonumber((UnitGUID(\"boss1\")):sub(-12, -9), 16)\n    local guid = UnitGUID(\"boss1\")\n    local _, _, _, _, _, npcId, _ = strsplit(\"-\",guid)\n    local _, _, difficulty, _, _, _, _, _, _ = GetInstanceInfo()\n    \n    if difficulty == 1 or difficulty == 2 or difficulty == 23 then   -- 5 man version of same boss\n        if FiveManExceptionTable[npcId] then \n            bossOffsetFactor = (FiveManExceptionTable[npcId] / 100) + bossOffsetFactor end        \n    else      \n        if BossExceptionTable[npcId] then \n            bossOffsetFactor = (BossExceptionTable[npcId] / 100) + bossOffsetFactor end\n    end\n    \n    local colour = \"|cffffffff\"\n    local boss_health = UnitHealth(\"boss1\")\n    local boss_maxHealth = UnitHealthMax(\"boss1\")\n    local boss_time = GetTime()\n    local boss_text\n    local boss_oldhealth\n    local boss_TTD = \"Boss TTD: \"\n    local bossOffset = (boss_maxHealth * bossOffsetFactor) - boss_maxHealth\n    \n    if boss_oldhealth ~= boss_health then\n        boss_oldhealth = boss_health\n        if boss_health == boss_maxHealth then -- THiS BLOCK IS GOOD\n            wa_Spinal_boss_health0, wa_Spinal_boss_time0, wa_Spinal_boss_mhealth, wa_Spinal_boss_mtime = nil\n            boss_text = \" - - \"\n            return colour..boss_TTD..boss_text\n        end\n        \n        boss_health = boss_health - bossOffset\n        \n        if not wa_Spinal_boss_health0 then -- GOOD\n            wa_Spinal_boss_health0, wa_Spinal_boss_time0 = boss_health, boss_time\n            wa_Spinal_boss_mhealth, wa_Spinal_boss_mtime = boss_health, boss_time\n            return\n        end\n        \n        wa_Spinal_boss_mhealth = (wa_Spinal_boss_mhealth + boss_health) * .5\n        wa_Spinal_boss_mtime = (wa_Spinal_boss_mtime + boss_time) * .5\n        \n        if wa_Spinal_boss_mhealth >= wa_Spinal_boss_health0 then\n            boss_text = \" - - \"\n            wa_Spinal_boss_health0, wa_Spinal_boss_time0, wa_Spinal_boss_mhealth, wa_Spinal_boss_mtime = nil\n        else\n            boss_time = boss_health * (wa_Spinal_boss_time0 - wa_Spinal_boss_mtime) / (wa_Spinal_boss_mhealth - wa_Spinal_boss_health0)\n            if boss_time < 0 then\n                boss_time = 0\n                colour = \"|cffdd1600\"\n                boss_text = format(\"%0.2d\",boss_time)                \n            elseif (boss_time <= 60) then\n                boss_text = format(\"%0.2d\",boss_time)           \n            elseif (boss_time > 60) then\n                boss_text = format(\"%d:%0.2d\",boss_time / 60, boss_time % 60)\n            end\n            if global_wa_outputInfo == 1 and boss_time == global_maxSTM_secs then global_wa_STM_GO = 1 else global_wa_STM_GO = 0 end\n            return colour..boss_TTD..boss_text\n        end\n    end\nend",
			["yOffset"] = -23.000030517578,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/Vkta0EsHf/1",
			["actions"] = {
				["start"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n-- Do not remove this comment, it is part of this trigger: Average_Kill_Time_Output",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "10",
						["genericShowOn"] = "showOnActive",
						["unit"] = "boss1",
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_unit"] = true,
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["percenthealth"] = "0",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START, ENCOUNTER_END, INSTANCE_ENCOUNTER_ENGAGE_UNIT, UNIT_HEALTH",
						["subeventSuffix"] = "_CAST_START",
						["use_percenthealth"] = false,
						["percenthealth_operator"] = ">",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "boss1",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 40,
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
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 11.666681289673,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
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
						["HUNTER"] = true,
						["ROGUE"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["affixes"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
			["authorOptions"] = {
			},
			["parent"] = "STM Kill Timers",
			["preferToUpdate"] = false,
			["selfPoint"] = "BOTTOM",
			["justify"] = "RIGHT",
			["semver"] = "1.0.0",
			["uid"] = "JwK(cxqqETQ",
			["id"] = "Boss Time to Die",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 6.6666436195374,
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
				["ignoreOptionsEventErrors"] = true,
			},
			["automaticWidth"] = "Auto",
		},
		["Blessed Sunfruit"] = {
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
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
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Enabled"] = true,
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
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "cz7bOsin7X8",
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = true,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Blessed Sunfruit",
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
			["width"] = 64,
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["useTooltip"] = false,
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
						["type"] = "event",
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
						["type"] = "event",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
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
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
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
			["xOffset"] = -329.95526123047,
			["information"] = {
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
								["message_type"] = "GUILD",
								["message_format_2.extraSpellName_format"] = "none",
								["message"] = "%2.destName is no longer friends with %2.extraSpellName peepoGlad",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["cooldownTextDisabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Fengus' Ferocity",
			["frameStrata"] = 1,
			["alpha"] = 0,
			["width"] = 1,
			["semver"] = "1.0.3",
			["uid"] = "0JXCc9F2tXj",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 136109,
			["cooldown"] = false,
			["parent"] = "World Buff Purge",
		},
		["Mongoose "] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 13452,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["event"] = "Item Count",
						["names"] = {
						},
						["unit"] = "player",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
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
			["text1Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["desaturate"] = false,
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "R71fchWyZRW",
			["cooldownEdge"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = true,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Mongoose ",
			["text2Font"] = "Friz Quadrata TT",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["useTooltip"] = false,
		},
		["Tuber"] = {
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/cmdyr6QI7/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 11951,
						["use_count"] = false,
						["duration"] = "1",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["count"] = "1",
						["spellIds"] = {
						},
						["use_itemName"] = true,
						["use_unit"] = true,
						["unit"] = "player",
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["useTooltip"] = false,
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text1Enabled"] = true,
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["text1Containment"] = "INSIDE",
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
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
			["uid"] = "Vpd)i0TOPta",
			["desaturate"] = false,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "Warrior - 1: Recovery Consumes",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "ABF",
			["auto"] = true,
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Tuber",
			["authorOptions"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
		},
		["Juju Might"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
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
						["itemName"] = 12460,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["use_itemName"] = true,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
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
			["selfPoint"] = "CENTER",
			["parent"] = "Warrior - 3: Offensive Consumes",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 40,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "NrxwxjwEhca",
			["stickyDuration"] = false,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["url"] = "https://wago.io/_RGLErxXs/2",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "ABF",
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["text2"] = "%p",
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Juju Might",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = true,
			["icon"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
		},
		["Bandage"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = 0,
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
			["cooldownSwipe"] = true,
			["xOffset"] = 0,
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
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Item Count",
						["unit"] = "player",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_itemName"] = true,
						["check"] = "update",
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
			["cooldownEdge"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = "133682",
			["useTooltip"] = false,
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
				["use_level"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 40,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "ABF",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["auto"] = false,
			["zoom"] = 0,
			["text2FontSize"] = 31,
			["icon"] = true,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Bandage",
			["desaturate"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["text2FontFlags"] = "OUTLINE",
			["uid"] = "Spkl0TqOJH5",
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
							["property"] = "sub.2.glow",
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
			["parent"] = "Warrior - 1: Recovery Consumes",
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
						["type"] = "event",
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
						["type"] = "event",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 4,
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
			},
			["height"] = 1,
			["load"] = {
				["use_class"] = false,
				["use_never"] = false,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["url"] = "https://wago.io/8ncUU5-Pi/4",
			["information"] = {
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
								["message_type"] = "GUILD",
								["message_format_2.extraSpellName_format"] = "none",
								["message"] = "%2.destName once had %2.extraSpellName peepoHappy",
								["message_format_2.destName_format"] = "none",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
			},
			["parent"] = "World Buff Purge",
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "Winterfall Firewater 2",
			["alpha"] = 0,
			["frameStrata"] = 1,
			["width"] = 1,
			["semver"] = "1.0.3",
			["uid"] = "pLZbo3ydCw7",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 134872,
			["cooldown"] = false,
			["xOffset"] = -329.95526123047,
		},
		["STM_Go"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 8.0000610351562,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/Vkta0EsHf/1",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\ESPARK1.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnMissing",
						["names"] = {
							"Surrender to Madness", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["event"] = "Health",
						["use_specific_unit"] = true,
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(e, ...)\n    if e == \"UNIT_HEALTH\" then\n        if global_wa_STM_GO == 1 and select(1, ...) == \"boss1\" then return true end\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["events"] = "UNIT_HEALTH, ENCOUNTER_START, ENCOUNTER_END",
						["unevent"] = "auto",
						["unit"] = "boss1",
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["custom"] = "function()\n    if global_wa_STM_GO == 0 then return true end\n    \nend\n\n\n\n\n\n\n\n\n",
						["unit"] = "boss1",
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 2,
			},
			["internalVersion"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "fade",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "alphaPulse",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "grow",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
			},
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["version"] = 1,
			["height"] = 104,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
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
				["class_and_spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 21,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["difficulty"] = {
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
				["affixes"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Spells\\TEXTURES\\Beam_Shadow_01",
			["parent"] = "STM Kill Timers",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["semver"] = "1.0.0",
			["xOffset"] = 33.000061035156,
			["id"] = "STM_Go",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["width"] = 169,
			["config"] = {
			},
			["alpha"] = 1,
			["uid"] = "(v1(bMjJKL9",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["rotation"] = 0,
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
			["borderInset"] = 1,
			["load"] = {
				["use_class"] = false,
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
			["limit"] = 5,
			["animate"] = false,
			["rotation"] = 0,
			["scale"] = 1,
			["internalVersion"] = 40,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["fullCircle"] = true,
			["config"] = {
			},
			["constantFactor"] = "RADIUS",
			["anchorPoint"] = "CENTER",
			["borderOffset"] = 4,
			["semver"] = "1.0.0",
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Bar - Jon Test",
			["frameStrata"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["space"] = 5,
			["uid"] = "hN)7qTsKOYh",
			["selfPoint"] = "LEFT",
			["useLimit"] = false,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["arcLength"] = 360,
		},
		["Greater Arcane Pot"] = {
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
			["useTooltip"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
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
						["type"] = "status",
						["itemName"] = 13461,
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
						["itemName"] = 13461,
						["use_count"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_unit"] = true,
						["use_itemName"] = true,
						["unit"] = "player",
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
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["internalVersion"] = 40,
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
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "vl0J5gLcNyI",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["text1Font"] = "ABF",
			["text2Enabled"] = true,
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
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["cooldownTextDisabled"] = false,
			["authorOptions"] = {
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Greater Arcane Pot",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["width"] = 64,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["config"] = {
			},
			["inverse"] = true,
			["xOffset"] = -490,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["Winterfall Firewater"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["text2FontFlags"] = "OUTLINE",
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["names"] = {
						},
						["use_itemName"] = true,
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
			["parent"] = "Warrior - 3: Offensive Consumes",
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
			["icon"] = true,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["cooldownEdge"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["desaturate"] = false,
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["text1Containment"] = "INSIDE",
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
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
			["text2Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "ABF",
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Winterfall Firewater",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["authorOptions"] = {
			},
			["uid"] = "wcOQ2g5lLiS",
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["Lung Juice"] = {
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
			["useTooltip"] = false,
			["cooldownSwipe"] = true,
			["parent"] = "Warrior - 2: Defensive Consumes",
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["event"] = "Item Count",
						["use_unit"] = true,
						["names"] = {
						},
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["internalVersion"] = 40,
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
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["uid"] = "GNajjUHHYtR",
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["alpha"] = 1,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["zoom"] = 0,
			["text1"] = "%s",
			["cooldownTextDisabled"] = false,
			["authorOptions"] = {
			},
			["text2"] = "%p",
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Lung Juice",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
						["spellIds"] = {
						},
						["unit"] = "player",
						["check"] = "update",
						["custom_type"] = "status",
						["custom"] = "function()\n    local time_cur = GetTime()\n    if (time_cur - aura_env.TIMER) > 3 then\n        aura_env.TIMER = time_cur\n        RequestBattlefieldScoreData()\n    end\n    return true\nend",
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
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
				["use_zone"] = true,
				["use_never"] = false,
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
			["uid"] = "XPycNDqoWE2",
			["authorOptions"] = {
			},
			["cooldownEdge"] = false,
			["regionType"] = "icon",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["displayIcon"] = 132486,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11305,
			["id"] = "PVP: AB Callout Count Enemies",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 31.999900817871,
			["semver"] = "1.0.0",
			["config"] = {
			},
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
			["parent"] = "PVP: AB Callout Bar - Jon Test",
		},
		["STM Kill Timers"] = {
			["controlledChildren"] = {
				"Average_Kill_Time", -- [1]
				"Time to Die", -- [2]
				"Boss Time to Die", -- [3]
				"STM_Go", -- [4]
				"Kill_Time_Display", -- [5]
				"CLICK_ME_TO_Reset_Kill_Times_BE_CAREFUL", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 358.549682617188,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/Vkta0EsHf/1",
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
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
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
			["internalVersion"] = 40,
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
			["version"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["affixes"] = {
					["multi"] = {
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
				["spec"] = {
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
			["semver"] = "1.0.0",
			["id"] = "STM Kill Timers",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOMLEFT",
			["borderInset"] = 1,
			["config"] = {
			},
			["xOffset"] = 64.1668090820313,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = true,
			},
			["uid"] = "q9vJKRfEl6m",
		},
		["Sapper 2"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["useTooltip"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/_RGLErxXs/2",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["itemName"] = 10646,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Item)",
						["unit"] = "player",
						["duration"] = "1",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnCooldown",
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
						["itemName"] = 10646,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["names"] = {
						},
						["event"] = "Item Count",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
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
				["init"] = {
					["custom"] = "local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n\nif not f.button then\n    local itemId = WeakAuras.GetData(aura_env.id).triggers[1].trigger.itemName\n    local itemName = GetItemInfo(itemId)\n    f.button = CreateFrame(\"Button\", nil, f,\"SecureActionButtonTemplate\")\n    f.button:SetAttribute(\"type\", \"macro\")\n    f.button:SetAttribute(\"unit\",\"player\")\n    \n    local macrotext = \"/cancelform\\n/use item:\" .. itemId\n    \n    f.button:SetAttribute(\"macrotext\",macrotext)\n    f.button:SetAllPoints(f)\n    \n    f.button:SetScript(\"OnEnter\", function(self) \n            GameTooltip:SetOwner(self, \"ANCHOR_CURSOR\"); \n            GameTooltip:ClearLines(); \n            GameTooltip:SetItemByID(itemId);\n            GameTooltip:Show() \n    end)\n    f.button:SetScript(\"OnLeave\", function(self) \n            GameTooltip:Hide() \n    end)\nend\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["parent"] = "Warrior - 3: Offensive Consumes",
			["text1Containment"] = "INSIDE",
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
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 2,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["height"] = 64,
			["desaturate"] = false,
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["level_operator"] = ">",
				["level"] = "40",
				["spec"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["uid"] = "Fb1BPvr2mve",
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				0.72941176470588, -- [1]
				0.14901960784314, -- [2]
				0.25098039215686, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["alpha"] = 1,
			["auto"] = true,
			["text2FontSize"] = 31,
			["cooldownTextDisabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%p",
			["zoom"] = 0,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Sapper 2",
			["text1Font"] = "ABF",
			["frameStrata"] = 1,
			["width"] = 64,
			["text1Enabled"] = true,
			["config"] = {
			},
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["Smoked Desert Dumplings"] = {
			["text2Point"] = "BOTTOMRIGHT",
			["iconSource"] = -1,
			["text1FontSize"] = 12,
			["parent"] = "Warrior - 2: Defensive Consumes",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["cooldownSwipe"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
						["itemName"] = 20452,
						["use_count"] = false,
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Count",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["use_itemName"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["url"] = "https://wago.io/-yIOkSTYQ/3",
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["information"] = {
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
			["desaturate"] = false,
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = false,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["spec"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useTooltip"] = false,
			["authorMode"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["alpha"] = 1,
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
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["zoom"] = 0,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Smoked Desert Dumplings",
			["xOffset"] = -490,
			["frameStrata"] = 1,
			["width"] = 64,
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["uid"] = "uegjRp4Zd5N",
			["inverse"] = true,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
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
		["Monster Omelet"] = {
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
			["text2Font"] = "Friz Quadrata TT",
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["count"] = "1",
						["unit"] = "player",
						["event"] = "Item Count",
						["use_unit"] = true,
						["names"] = {
						},
						["count_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Warrior - 2: Defensive Consumes",
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
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["useTooltip"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["version"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["config"] = {
			},
			["load"] = {
				["use_class"] = false,
				["use_level"] = true,
				["use_never"] = true,
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
						["WARRIOR"] = true,
					},
				},
				["level"] = "40",
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -490,
			["authorMode"] = true,
			["width"] = 64,
			["text2Containment"] = "INSIDE",
			["text2Enabled"] = true,
			["text1Font"] = "ABF",
			["alpha"] = 1,
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
			["text1FontFlags"] = "OUTLINE",
			["semver"] = "1.0.2",
			["text2FontSize"] = 31,
			["text2"] = "%p",
			["text1"] = "%s",
			["zoom"] = 0,
			["cooldownEdge"] = false,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 11305,
			["id"] = "Monster Omelet",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2.6,
					["glowLines"] = 10,
					["glowBorder"] = true,
				}, -- [2]
			},
			["uid"] = "pLSzt(1CVOd",
			["inverse"] = true,
			["internalVersion"] = 40,
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
							["property"] = "sub.2.glow",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [4]
			},
			["cooldown"] = true,
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
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n  return (trigger[1] or trigger[2]) and not trigger[3]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 40,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
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
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Roboto Bold",
					["text_anchorYOffset"] = -2,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_format"] = "timed",
					["text_visible"] = true,
					["text_fontSize"] = 41,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [1]
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
					["glowXOffset"] = 0,
					["glow"] = false,
					["glowThickness"] = 7.85,
					["glowScale"] = 1,
					["glowLines"] = 6,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 59.2593955993652,
			["load"] = {
				["use_class"] = true,
				["use_combat"] = true,
				["class"] = {
					["single"] = "WARRIOR",
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
			["icon"] = true,
			["regionType"] = "icon",
			["authorOptions"] = {
			},
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
			["xOffset"] = 233.482019424438,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["auto"] = true,
			["uid"] = "iZyBAa(tjmh",
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.1",
			["tocversion"] = 11305,
			["id"] = "Battle Shout Reminder",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 61.6294670104981,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["zoom"] = 0,
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
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = 48,
							["property"] = "sub.1.text_fontSize",
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
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["url"] = "https://wago.io/RbGbJ76Iv/1",
		},
		["Cursor"] = {
			["authorOptions"] = {
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
						["type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 40,
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
					["rotate"] = 0,
					["easeStrength"] = 3,
					["translateType"] = "custom",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["height"] = 69.9999618530274,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
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
				["difficulty"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
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
			["textureWrapMode"] = "CLAMP",
			["mirror"] = false,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["uid"] = "WAARQucMofb",
			["discrete_rotation"] = 0,
			["tocversion"] = 80300,
			["id"] = "Cursor",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70.0003890991211,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["color"] = {
				0.549019607843137, -- [1]
				0.270588235294118, -- [2]
				0.0980392156862745, -- [3]
				1, -- [4]
			},
			["xOffset"] = 1.58020687103272,
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["frameStrata"] = 4,
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -388.567138671875,
		["width"] = 750,
		["height"] = 533.92578125,
		["yOffset"] = -95.012451171875,
	},
	["editor_theme"] = "Monokai",
}
