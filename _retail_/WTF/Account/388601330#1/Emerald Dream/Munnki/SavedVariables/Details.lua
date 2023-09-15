
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 0,
	["tabela_historico"] = {
		["resetar_overall"] = nil --[[ skipped inline function ]],
		["tabelas"] = {
		},
	},
	["ocd_tracker"] = {
		["enabled"] = false,
		["current_cooldowns"] = {
		},
		["lines_per_column"] = 12,
		["show_options"] = false,
		["filters"] = {
			["defensive-raid"] = false,
			["ofensive"] = true,
			["defensive-target"] = false,
			["utility"] = false,
			["defensive-personal"] = false,
		},
		["width"] = 120,
		["height"] = 18,
		["framme_locked"] = false,
		["show_conditions"] = {
			["only_inside_instance"] = true,
			["only_in_group"] = true,
		},
		["cooldowns"] = {
		},
		["pos"] = {
		},
	},
	["last_version"] = "9.2.09780",
	["SoloTablesSaved"] = {
		["Mode"] = 1,
	},
	["tabela_instancias"] = {
	},
	["coach"] = {
		["enabled"] = false,
		["welcome_panel_pos"] = {
		},
		["last_coach_name"] = false,
	},
	["on_death_menu"] = false,
	["cached_talents"] = {
		["Player-162-0B337F26"] = {
			22558, -- [1]
			22431, -- [2]
			21811, -- [3]
			22434, -- [4]
			17597, -- [5]
			22438, -- [6]
			21202, -- [7]
		},
		["Player-162-09CE598E"] = {
			19165, -- [1]
			19219, -- [2]
			22134, -- [3]
			22013, -- [4]
			19228, -- [5]
			19230, -- [6]
			21208, -- [7]
		},
	},
	["last_instance_id"] = 546,
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["announce_prepots"] = {
		["enabled"] = false,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["active_profile"] = "Munnki-Emerald Dream",
	["last_realversion"] = 146,
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["plugin_database"] = {
		["DETAILS_PLUGIN_DEATH_GRAPHICS"] = {
			["last_boss"] = false,
			["v1"] = true,
			["v2"] = true,
			["captures"] = {
				false, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
			},
			["first_run"] = true,
			["endurance_threshold"] = 3,
			["max_deaths_for_timeline"] = 5,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["max_segments_for_current"] = 2,
			["max_deaths_for_current"] = 20,
			["last_player"] = false,
			["InstalledAt"] = 1652079120,
			["last_encounter_hash"] = false,
			["showing_type"] = 4,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 0,
			["timeline_cutoff_delete_time"] = 3,
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["last_section_selected"] = "main",
			["author"] = "Terciob",
			["window_scale"] = 1,
			["hide_on_combat"] = false,
			["show_icon"] = 5,
			["opened"] = 0,
			["encounter_timers_dbm"] = {
			},
		},
		["DETAILS_PLUGIN_CHART_VIEWER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["tabs"] = {
				{
					["name"] = "Your Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Player Damage Done",
					["texture"] = "line",
				}, -- [1]
				{
					["name"] = "Class Damage",
					["iType"] = "raid-DAMAGER",
					["segment_type"] = 1,
					["version"] = "v2.0",
					["data"] = "PRESET_DAMAGE_SAME_CLASS",
					["texture"] = "line",
				}, -- [2]
				{
					["name"] = "Raid Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Raid Damage Done",
					["texture"] = "line",
				}, -- [3]
				["last_selected"] = 1,
			},
			["options"] = {
				["auto_create"] = true,
				["show_method"] = 4,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["enabled"] = true,
			["animate"] = false,
			["hide_pull_bar"] = false,
			["author"] = "Terciob",
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["usefocus"] = false,
			["updatespeed"] = 1,
			["showamount"] = false,
			["useplayercolor"] = false,
			["playSound"] = false,
			["playSoundFile"] = "Details Threat Warning Volume 3",
			["useclasscolors"] = false,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["tank_block_size_height"] = 50,
			["show_power_bar"] = false,
			["first_run"] = false,
			["aura_timer_text_size"] = 14,
			["tank_block_castbar_size_height"] = 16,
			["show_health_bar"] = true,
			["aura_offset_y"] = 0,
			["enabled"] = true,
			["show_cast_bar"] = false,
			["author"] = "Terciob",
			["tank_block_size"] = 150,
			["bar_height"] = 24,
			["tank_block_texture"] = "Details Serenity",
			["tank_block_color"] = {
				0.074509, -- [1]
				0.035294, -- [2]
				0.035294, -- [3]
				0.832845, -- [4]
			},
			["tank_block_height"] = 40,
			["tank_block_powerbar_size_height"] = 10,
			["show_inc_bars"] = true,
		},
		["DETAILS_PLUGIN_EXPLOSIVE_ORBS"] = {
			["enabled"] = true,
			["author"] = "Rhythm",
			["onlyShowHit"] = false,
			["useShortText"] = false,
		},
		["DETAILS_PLUGIN_RAIDCHECK"] = {
			["enabled"] = true,
			["food_tier1"] = true,
			["mythic_1_4"] = true,
			["food_tier2"] = true,
			["author"] = "Terciob",
			["use_report_panel"] = true,
			["pre_pot_healers"] = false,
			["pre_pot_tanks"] = false,
			["food_tier3"] = true,
		},
		["DETAILS_PLUGIN_TARGET_CALLER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["use_square_mode"] = false,
			["is_first_run"] = false,
			["grow_direction"] = "right",
			["arrow_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["main_frame_size"] = {
				300.0000610351563, -- [1]
				500.0000305175781, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 160,
				["radius"] = 160,
				["hide"] = false,
			},
			["scale"] = 1,
			["arrow_anchor_x"] = 0,
			["row_height"] = 20,
			["row_texture"] = "Details Serenity",
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["point"] = "CENTER",
			["main_frame_strata"] = "LOW",
			["square_amount"] = 5,
			["enabled"] = false,
			["arrow_size"] = 10,
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = 1.52587890625e-05,
				["x"] = -3.0517578125e-05,
				["size"] = 32,
				["update_speed"] = 0.05,
				["attribute_type"] = 1,
			},
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["author"] = "Terciob",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["y"] = -2.288818359375e-05,
			["font_size"] = 10,
			["x"] = -0.00018310546875,
			["font_face"] = "Friz Quadrata TT",
			["square_size"] = 32,
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["use_spark"] = true,
			["main_frame_locked"] = false,
			["arrow_anchor_y"] = 0,
		},
	},
	["last_instance_time"] = 1652154662,
	["mythic_dungeon_currentsaved"] = {
		["dungeon_name"] = "",
		["started"] = false,
		["segment_id"] = 0,
		["ej_id"] = 0,
		["started_at"] = 0,
		["run_id"] = 0,
		["level"] = 0,
		["dungeon_zone_id"] = 0,
		["previous_boss_killed_at"] = 0,
	},
	["cached_roles"] = {
	},
	["last_day"] = "09",
	["local_instances_config"] = {
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["is_open"] = true,
			["isLocked"] = false,
			["snap"] = {
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -72.00003051757812,
					["x"] = -526.4290924072266,
					["w"] = 310.0000610351563,
					["h"] = 158,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [1]
	},
	["ignore_nicktag"] = false,
	["combat_id"] = 133,
	["savedStyles"] = {
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1653375091,
		["last_version"] = 14,
	},
	["combat_counter"] = 472,
	["announce_deaths"] = {
		["enabled"] = false,
		["last_hits"] = 1,
		["only_first"] = 5,
		["where"] = 1,
	},
	["tabela_overall"] = {
		{
			["tipo"] = 2,
			["_ActorTable"] = {
				{
					["flag_original"] = 1298,
					["totalabsorbed"] = 0.037883,
					["on_hold"] = false,
					["damage_from"] = {
						["Underbog Shambler"] = true,
						["Underbat"] = true,
						["Underbog Lurker"] = true,
						["Underbog Lord"] = true,
						["Murkblood Oracle"] = true,
					},
					["targets"] = {
						["Underbog Shambler"] = 357,
						["Underbat"] = 934,
						["Underbog Lurker"] = 501,
						["Underbog Lord"] = 410,
						["Murkblood Oracle"] = 353,
					},
					["friendlyfire"] = {
					},
					["pets"] = {
					},
					["end_time"] = 1652153228,
					["friendlyfire_total"] = 0,
					["raid_targets"] = {
					},
					["total_without_pet"] = 2555.037883,
					["aID"] = "162-0B79927A",
					["dps_started"] = false,
					["total"] = 2555.037883,
					["classe"] = "WARRIOR",
					["last_event"] = 0,
					["nome"] = "Lidreyste",
					["spec"] = 71,
					["grupo"] = true,
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 5,
								["b_amt"] = 0,
								["c_dmg"] = 268,
								["g_amt"] = 0,
								["n_max"] = 31,
								["targets"] = {
									["Underbog Shambler"] = 108,
									["Underbat"] = 284,
									["Underbog Lurker"] = 124,
									["Underbog Lord"] = 169,
									["Murkblood Oracle"] = 63,
								},
								["n_dmg"] = 480,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 28,
								["total"] = 748,
								["c_max"] = 59,
								["id"] = 1,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 23,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
							[1464] = {
								["c_amt"] = 1,
								["b_amt"] = 0,
								["c_dmg"] = 17,
								["g_amt"] = 0,
								["n_max"] = 23,
								["targets"] = {
									["Underbog Shambler"] = 23,
									["Underbat"] = 45,
									["Underbog Lurker"] = 66,
									["Murkblood Oracle"] = 33,
								},
								["n_dmg"] = 150,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 9,
								["total"] = 167,
								["c_max"] = 17,
								["id"] = 1464,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 8,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[34428] = {
								["c_amt"] = 1,
								["b_amt"] = 0,
								["c_dmg"] = 40,
								["g_amt"] = 0,
								["n_max"] = 20,
								["targets"] = {
									["Underbog Shambler"] = 40,
									["Underbat"] = 19,
									["Underbog Lurker"] = 40,
								},
								["n_dmg"] = 59,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 4,
								["total"] = 99,
								["c_max"] = 40,
								["id"] = 34428,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 3,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[259756] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 7,
								["targets"] = {
									["Underbog Lord"] = 3,
									["Underbat"] = 23,
									["Murkblood Oracle"] = 11,
								},
								["n_dmg"] = 37,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 29,
								["total"] = 37,
								["c_max"] = 0,
								["id"] = 259756,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 29,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[105771] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 0,
								["targets"] = {
									["Underbog Lord"] = 0,
								},
								["n_dmg"] = 0,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 1,
								["total"] = 0,
								["c_max"] = 0,
								["id"] = 105771,
								["r_dmg"] = 0,
								["IMMUNE"] = 1,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 0,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[260798] = {
								["c_amt"] = 2,
								["b_amt"] = 0,
								["c_dmg"] = 81,
								["g_amt"] = 0,
								["n_max"] = 22,
								["targets"] = {
									["Murkblood Oracle"] = 38,
									["Underbat"] = 65,
								},
								["n_dmg"] = 22,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 3,
								["total"] = 103,
								["c_max"] = 43,
								["id"] = 260798,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 1,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[262115] = {
								["c_amt"] = 3,
								["b_amt"] = 0,
								["c_dmg"] = 84,
								["g_amt"] = 0,
								["n_max"] = 14,
								["targets"] = {
									["Underbog Shambler"] = 14,
									["Underbat"] = 98,
									["Underbog Lurker"] = 28,
									["Underbog Lord"] = 44,
									["Murkblood Oracle"] = 112,
								},
								["n_dmg"] = 212,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 19,
								["total"] = 296,
								["c_max"] = 28,
								["id"] = 262115,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 16,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[126664] = {
								["c_amt"] = 1,
								["b_amt"] = 0,
								["c_dmg"] = 11,
								["g_amt"] = 0,
								["n_max"] = 4,
								["targets"] = {
									["Underbog Shambler"] = 11,
									["Murkblood Oracle"] = 2,
									["Underbog Lord"] = 8,
								},
								["n_dmg"] = 10,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 4,
								["total"] = 21,
								["c_max"] = 11,
								["id"] = 126664,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 3,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[12294] = {
								["c_amt"] = 3,
								["b_amt"] = 0,
								["c_dmg"] = 480,
								["g_amt"] = 0,
								["n_max"] = 85,
								["targets"] = {
									["Underbog Shambler"] = 161,
									["Underbat"] = 400,
									["Underbog Lurker"] = 243,
									["Underbog Lord"] = 186,
									["Murkblood Oracle"] = 94,
								},
								["n_dmg"] = 604,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 13,
								["total"] = 1084,
								["c_max"] = 161,
								["id"] = 12294,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 10,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
						},
					},
					["serial"] = "Player-162-0B79927A",
					["custom"] = 0,
					["tipo"] = 1,
					["damage_taken"] = 2430.037883,
					["start_time"] = 1652153133,
					["delay"] = 0,
					["last_dps"] = 0,
				}, -- [1]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.006883,
					["on_hold"] = false,
					["damage_from"] = {
						["Lidreyste"] = true,
						["Stronguard"] = true,
					},
					["targets"] = {
						["Lidreyste"] = 718,
					},
					["pets"] = {
					},
					["end_time"] = 1652153228,
					["friendlyfire"] = {
					},
					["aID"] = "17734",
					["raid_targets"] = {
					},
					["total_without_pet"] = 718.006883,
					["fight_component"] = true,
					["dps_started"] = false,
					["total"] = 718.006883,
					["classe"] = "UNKNOW",
					["monster"] = true,
					["nome"] = "Underbog Lord",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 108,
								["targets"] = {
									["Lidreyste"] = 550,
								},
								["n_dmg"] = 550,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 7,
								["total"] = 550,
								["c_max"] = 0,
								["id"] = 1,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["extra"] = {
								},
								["PARRY"] = 1,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 6,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
							[25778] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 94,
								["targets"] = {
									["Lidreyste"] = 168,
								},
								["n_dmg"] = 168,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 2,
								["total"] = 168,
								["c_max"] = 0,
								["id"] = 25778,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 2,
								["a_amt"] = 0,
								["n_amt"] = 2,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[32065] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 0,
								["targets"] = {
									["Stronguard"] = 0,
								},
								["n_dmg"] = 0,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 1,
								["total"] = 0,
								["c_max"] = 0,
								["id"] = 32065,
								["r_dmg"] = 0,
								["MISS"] = 1,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 2,
								["a_amt"] = 0,
								["n_amt"] = 0,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3887-546-652-17734-000079D8BB",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652153203,
					["delay"] = 0,
					["damage_taken"] = 3081.006883,
				}, -- [2]
				{
					["flag_original"] = 1298,
					["totalabsorbed"] = 0.025012,
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 2,
								["b_amt"] = 0,
								["c_dmg"] = 1181,
								["g_amt"] = 0,
								["n_max"] = 887,
								["targets"] = {
									["Underbat"] = 360,
									["Underbog Lurker"] = 720,
									["Bog Giant"] = 821,
									["Underbog Lord"] = 1642,
									["Wrathfin Myrmidon"] = 372,
								},
								["n_dmg"] = 2734,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 7,
								["total"] = 3915,
								["c_max"] = 821,
								["id"] = 1,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 5,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
							[81297] = {
								["c_amt"] = 1,
								["b_amt"] = 0,
								["c_dmg"] = 360,
								["g_amt"] = 0,
								["n_max"] = 746,
								["targets"] = {
									["Underbog Shambler"] = 720,
									["Underbog Lurker"] = 1080,
									["Murkblood Spearman"] = 373,
									["Wrathfin Warrior"] = 744,
									["Wrathfin Myrmidon"] = 372,
									["Murkblood Oracle"] = 720,
									["Underbat"] = 2160,
									["Murkblood Tribesman"] = 732,
									["Underbog Frenzy"] = 1491,
								},
								["n_dmg"] = 8032,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 21,
								["total"] = 8392,
								["c_max"] = 360,
								["id"] = 81297,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 20,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[31935] = {
								["c_amt"] = 1,
								["b_amt"] = 0,
								["c_dmg"] = 360,
								["g_amt"] = 0,
								["n_max"] = 1029,
								["targets"] = {
									["Underbog Lord"] = 1029,
									["Underbat"] = 3345,
									["Underbog Lurker"] = 2160,
								},
								["n_dmg"] = 6174,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 17,
								["total"] = 6534,
								["c_max"] = 360,
								["id"] = 31935,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 16,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[53595] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 820,
								["targets"] = {
									["Bog Giant"] = 820,
								},
								["n_dmg"] = 820,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 1,
								["total"] = 820,
								["c_max"] = 0,
								["id"] = 53595,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 1,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[275779] = {
								["c_amt"] = 1,
								["b_amt"] = 0,
								["c_dmg"] = 820,
								["g_amt"] = 0,
								["n_max"] = 360,
								["targets"] = {
									["Underbat"] = 360,
									["Bog Giant"] = 820,
								},
								["n_dmg"] = 360,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 2,
								["total"] = 1180,
								["c_max"] = 820,
								["id"] = 275779,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 1,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
						},
					},
					["damage_from"] = {
					},
					["targets"] = {
						["Underbog Shambler"] = 720,
						["Underbog Lurker"] = 3960,
						["Murkblood Spearman"] = 373,
						["Wrathfin Warrior"] = 744,
						["Wrathfin Myrmidon"] = 744,
						["Murkblood Oracle"] = 720,
						["Underbat"] = 6225,
						["Murkblood Tribesman"] = 732,
						["Bog Giant"] = 2461,
						["Underbog Frenzy"] = 1491,
						["Underbog Lord"] = 2671,
					},
					["avoidance"] = {
						["overall"] = {
							["DODGE"] = 0,
							["FULL_ABSORB_AMT"] = 0,
							["BLOCKED_AMT"] = 0,
							["BLOCKED_HITS"] = 0,
							["FULL_ABSORBED"] = 0,
							["ALL"] = 0,
							["PARTIAL_ABSORBED"] = 0,
							["PARRY"] = 0,
							["PARTIAL_ABSORB_AMT"] = 0,
							["ABSORB"] = 0,
							["ABSORB_AMT"] = 0,
							["FULL_HIT"] = 0,
							["HITS"] = 0,
							["FULL_HIT_AMT"] = 0,
						},
					},
					["pets"] = {
					},
					["end_time"] = 1652153228,
					["friendlyfire"] = {
					},
					["aID"] = "162-0B337F26",
					["raid_targets"] = {
					},
					["total_without_pet"] = 20841.025012,
					["last_event"] = 0,
					["classe"] = "PALADIN",
					["dps_started"] = false,
					["total"] = 20841.025012,
					["friendlyfire_total"] = 0,
					["isTank"] = true,
					["nome"] = "Stronguard",
					["spec"] = 66,
					["grupo"] = true,
					["on_hold"] = false,
					["serial"] = "Player-162-0B337F26",
					["custom"] = 0,
					["tipo"] = 1,
					["damage_taken"] = 0.025012,
					["start_time"] = 1652153155,
					["delay"] = 0,
					["last_dps"] = 0,
				}, -- [3]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.02825,
					["on_hold"] = false,
					["damage_from"] = {
						["Lidreyste"] = true,
						["Stronguard"] = true,
					},
					["targets"] = {
						["Xb"] = 82,
						["Lidreyste"] = 724,
						["Plvl"] = 28,
					},
					["end_time"] = 1652153406,
					["pets"] = {
					},
					["friendlyfire"] = {
					},
					["aID"] = "17724",
					["raid_targets"] = {
					},
					["total_without_pet"] = 834.02825,
					["fight_component"] = true,
					["dps_started"] = false,
					["total"] = 834.02825,
					["classe"] = "UNKNOW",
					["monster"] = true,
					["nome"] = "Underbat",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 1,
								["b_amt"] = 0,
								["c_dmg"] = 60,
								["g_amt"] = 0,
								["n_max"] = 33,
								["targets"] = {
									["Xb"] = 82,
									["Plvl"] = 28,
									["Lidreyste"] = 455,
									["Stronguard"] = 0,
								},
								["n_dmg"] = 505,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 26,
								["total"] = 565,
								["c_max"] = 60,
								["a_dmg"] = 0,
								["id"] = 1,
								["r_dmg"] = 0,
								["MISS"] = 5,
								["DODGE"] = 1,
								["extra"] = {
								},
								["PARRY"] = 1,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 18,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
							[34171] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 42,
								["targets"] = {
									["Lidreyste"] = 269,
								},
								["n_dmg"] = 269,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 7,
								["total"] = 269,
								["c_max"] = 0,
								["id"] = 34171,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 7,
								["a_amt"] = 0,
								["n_amt"] = 7,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3779-546-32599-17724-000279DC48",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652153350,
					["delay"] = 0,
					["damage_taken"] = 7159.028249999999,
				}, -- [4]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.01979,
					["on_hold"] = false,
					["damage_from"] = {
						["Lidreyste"] = true,
						["Stronguard"] = true,
					},
					["targets"] = {
						["Lidreyste"] = 31,
						["Munnki"] = 47,
					},
					["end_time"] = 1652153431,
					["pets"] = {
					},
					["friendlyfire"] = {
					},
					["aID"] = "17871",
					["raid_targets"] = {
					},
					["total_without_pet"] = 78.01979000000001,
					["fight_component"] = true,
					["dps_started"] = false,
					["total"] = 78.01979000000001,
					["classe"] = "UNKNOW",
					["monster"] = true,
					["nome"] = "Underbog Shambler",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 47,
								["targets"] = {
									["Lidreyste"] = 31,
									["Munnki"] = 47,
								},
								["n_dmg"] = 78,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 3,
								["total"] = 78,
								["c_max"] = 0,
								["id"] = 1,
								["r_dmg"] = 0,
								["DODGE"] = 1,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 2,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3779-546-32599-17871-000079DC48",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652153426,
					["delay"] = 0,
					["damage_taken"] = 1077.01979,
				}, -- [5]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.034218,
					["on_hold"] = false,
					["damage_from"] = {
						["Lidreyste"] = true,
						["Stronguard"] = true,
					},
					["targets"] = {
						["Lidreyste"] = 851,
						["Plvl"] = 50,
					},
					["end_time"] = 1652153431,
					["pets"] = {
					},
					["friendlyfire"] = {
					},
					["aID"] = "17725",
					["raid_targets"] = {
					},
					["total_without_pet"] = 901.0342179999999,
					["fight_component"] = true,
					["dps_started"] = false,
					["total"] = 901.0342179999999,
					["classe"] = "UNKNOW",
					["monster"] = true,
					["nome"] = "Underbog Lurker",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 3,
								["b_amt"] = 0,
								["c_dmg"] = 317,
								["g_amt"] = 0,
								["n_max"] = 61,
								["targets"] = {
									["Xb"] = 0,
									["Plvl"] = 50,
									["Lidreyste"] = 851,
									["Stronguard"] = 0,
								},
								["n_dmg"] = 584,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 23,
								["total"] = 901,
								["c_max"] = 118,
								["MISS"] = 3,
								["id"] = 1,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["DODGE"] = 3,
								["extra"] = {
								},
								["PARRY"] = 2,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 12,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
							[34161] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 0,
								["targets"] = {
								},
								["n_dmg"] = 0,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 0,
								["total"] = 0,
								["c_max"] = 0,
								["id"] = 34161,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 10,
								["a_amt"] = 0,
								["n_amt"] = 0,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3779-546-32599-17725-000079DC48",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652153389,
					["delay"] = 0,
					["damage_taken"] = 4461.034218,
				}, -- [6]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.017116,
					["on_hold"] = false,
					["damage_from"] = {
						["Stronguard"] = true,
					},
					["targets"] = {
					},
					["pets"] = {
					},
					["end_time"] = 1652153480,
					["friendlyfire"] = {
					},
					["aID"] = "17723",
					["raid_targets"] = {
					},
					["total_without_pet"] = 0.017116,
					["fight_component"] = true,
					["dps_started"] = false,
					["total"] = 0.017116,
					["classe"] = "UNKNOW",
					["monster"] = true,
					["nome"] = "Bog Giant",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 0,
								["targets"] = {
									["Stronguard"] = 0,
								},
								["n_dmg"] = 0,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 1,
								["total"] = 0,
								["c_max"] = 0,
								["id"] = 1,
								["r_dmg"] = 0,
								["MISS"] = 1,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 0,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3779-546-32599-17723-000379DC48",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652153477,
					["delay"] = 0,
					["damage_taken"] = 2461.017116,
				}, -- [7]
				{
					["flag_original"] = 1298,
					["totalabsorbed"] = 0.019636,
					["friendlyfire_total"] = 0,
					["damage_from"] = {
						["Underbat"] = true,
						["Underbog Lurker"] = true,
						["Underbog Frenzy"] = true,
						["Wrathfin Myrmidon"] = true,
						["Murkblood Oracle"] = true,
					},
					["targets"] = {
					},
					["friendlyfire"] = {
					},
					["pets"] = {
					},
					["end_time"] = 1652153480,
					["aID"] = "162-0B79B355",
					["raid_targets"] = {
					},
					["total_without_pet"] = 0.019636,
					["classe"] = "MONK",
					["dps_started"] = false,
					["total"] = 0.019636,
					["last_event"] = 0,
					["on_hold"] = false,
					["nome"] = "Plvl",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
						},
					},
					["grupo"] = true,
					["spec"] = 1450,
					["serial"] = "Player-162-0B79B355",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652153477,
					["delay"] = 0,
					["damage_taken"] = 311.019636,
				}, -- [8]
				{
					["flag_original"] = 1298,
					["totalabsorbed"] = 0.01764,
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
						},
					},
					["damage_from"] = {
						["Underbog Frenzy"] = true,
						["Underbat"] = true,
					},
					["targets"] = {
					},
					["avoidance"] = {
						["overall"] = {
							["DODGE"] = 0,
							["FULL_ABSORB_AMT"] = 0,
							["BLOCKED_AMT"] = 0,
							["BLOCKED_HITS"] = 0,
							["FULL_ABSORBED"] = 0,
							["ALL"] = 0,
							["PARTIAL_ABSORBED"] = 0,
							["PARRY"] = 0,
							["PARTIAL_ABSORB_AMT"] = 0,
							["ABSORB"] = 0,
							["ABSORB_AMT"] = 0,
							["FULL_HIT"] = 0,
							["HITS"] = 0,
							["FULL_HIT_AMT"] = 0,
						},
					},
					["pets"] = {
					},
					["end_time"] = 1652153480,
					["friendlyfire"] = {
					},
					["aID"] = "162-0B554FA1",
					["raid_targets"] = {
					},
					["total_without_pet"] = 0.01764,
					["last_event"] = 0,
					["classe"] = "MONK",
					["dps_started"] = false,
					["total"] = 0.01764,
					["friendlyfire_total"] = 0,
					["isTank"] = true,
					["nome"] = "Xb",
					["spec"] = 268,
					["grupo"] = true,
					["on_hold"] = false,
					["serial"] = "Player-162-0B554FA1",
					["custom"] = 0,
					["tipo"] = 1,
					["damage_taken"] = 126.01764,
					["start_time"] = 1652153477,
					["delay"] = 0,
					["last_dps"] = 0,
				}, -- [9]
				{
					["flag_original"] = 1297,
					["totalabsorbed"] = 0.017105,
					["friendlyfire_total"] = 0,
					["damage_from"] = {
						["Underbog Shambler"] = true,
						["Underbog Frenzy"] = true,
					},
					["targets"] = {
					},
					["friendlyfire"] = {
					},
					["pets"] = {
					},
					["end_time"] = 1652154112,
					["aID"] = "162-0B799781",
					["raid_targets"] = {
					},
					["total_without_pet"] = 0.017105,
					["classe"] = "MONK",
					["dps_started"] = false,
					["total"] = 0.017105,
					["last_event"] = 0,
					["on_hold"] = false,
					["nome"] = "Munnki",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
						},
					},
					["grupo"] = true,
					["spec"] = 1450,
					["serial"] = "Player-162-0B799781",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652154109,
					["delay"] = 0,
					["damage_taken"] = 241.017105,
				}, -- [10]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.011418,
					["damage_from"] = {
						["Lidreyste"] = true,
						["Stronguard"] = true,
					},
					["targets"] = {
						["Lidreyste"] = 106,
						["Plvl"] = 43,
					},
					["on_hold"] = false,
					["pets"] = {
					},
					["monster"] = true,
					["aID"] = "17771",
					["raid_targets"] = {
					},
					["total_without_pet"] = 149.011418,
					["friendlyfire"] = {
					},
					["end_time"] = 1652154969,
					["dps_started"] = false,
					["total"] = 149.011418,
					["fight_component"] = true,
					["classe"] = "UNKNOW",
					["nome"] = "Murkblood Oracle",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 30,
								["targets"] = {
									["Lidreyste"] = 106,
								},
								["n_dmg"] = 106,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 4,
								["total"] = 106,
								["c_max"] = 0,
								["id"] = 1,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 4,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
							[31405] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 4,
								["targets"] = {
									["Plvl"] = 19,
								},
								["n_dmg"] = 19,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 5,
								["total"] = 19,
								["c_max"] = 0,
								["id"] = 31405,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 1,
								["a_amt"] = 0,
								["n_amt"] = 5,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
							[12471] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 24,
								["targets"] = {
									["Plvl"] = 24,
								},
								["n_dmg"] = 24,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 1,
								["total"] = 24,
								["c_max"] = 0,
								["id"] = 12471,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 1,
								["a_amt"] = 0,
								["n_amt"] = 1,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3019-546-14513-17771-000079E13D",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652154943,
					["delay"] = 0,
					["damage_taken"] = 1073.011418,
				}, -- [11]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.013991,
					["damage_from"] = {
						["Stronguard"] = true,
					},
					["targets"] = {
					},
					["on_hold"] = false,
					["pets"] = {
					},
					["monster"] = true,
					["aID"] = "17735",
					["raid_targets"] = {
					},
					["total_without_pet"] = 0.013991,
					["friendlyfire"] = {
					},
					["end_time"] = 1652154969,
					["dps_started"] = false,
					["total"] = 0.013991,
					["fight_component"] = true,
					["classe"] = "UNKNOW",
					["nome"] = "Wrathfin Warrior",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3019-546-14513-17735-000079E13D",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652154966,
					["delay"] = 0,
					["damage_taken"] = 744.013991,
				}, -- [12]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.007799,
					["damage_from"] = {
						["Stronguard"] = true,
					},
					["targets"] = {
					},
					["on_hold"] = false,
					["pets"] = {
					},
					["monster"] = true,
					["aID"] = "17728",
					["raid_targets"] = {
					},
					["total_without_pet"] = 0.007799,
					["friendlyfire"] = {
					},
					["end_time"] = 1652154969,
					["dps_started"] = false,
					["total"] = 0.007799,
					["fight_component"] = true,
					["classe"] = "UNKNOW",
					["nome"] = "Murkblood Tribesman",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3019-546-14513-17728-000079E13D",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652154966,
					["delay"] = 0,
					["damage_taken"] = 732.007799,
				}, -- [13]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.011149,
					["damage_from"] = {
						["Stronguard"] = true,
					},
					["targets"] = {
					},
					["on_hold"] = false,
					["pets"] = {
					},
					["monster"] = true,
					["aID"] = "17729",
					["raid_targets"] = {
					},
					["total_without_pet"] = 0.011149,
					["friendlyfire"] = {
					},
					["end_time"] = 1652154969,
					["dps_started"] = false,
					["total"] = 0.011149,
					["fight_component"] = true,
					["classe"] = "UNKNOW",
					["nome"] = "Murkblood Spearman",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3019-546-14513-17729-0000F9E13C",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652154966,
					["delay"] = 0,
					["damage_taken"] = 373.0111490000001,
				}, -- [14]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.014208,
					["damage_from"] = {
						["Stronguard"] = true,
					},
					["targets"] = {
						["Plvl"] = 43,
					},
					["on_hold"] = false,
					["pets"] = {
					},
					["monster"] = true,
					["aID"] = "17726",
					["raid_targets"] = {
					},
					["total_without_pet"] = 43.014208,
					["friendlyfire"] = {
					},
					["end_time"] = 1652154969,
					["dps_started"] = false,
					["total"] = 43.014208,
					["fight_component"] = true,
					["classe"] = "UNKNOW",
					["nome"] = "Wrathfin Myrmidon",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 43,
								["targets"] = {
									["Stronguard"] = 0,
									["Plvl"] = 43,
								},
								["n_dmg"] = 43,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 2,
								["total"] = 43,
								["c_max"] = 0,
								["id"] = 1,
								["r_dmg"] = 0,
								["DODGE"] = 1,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 1,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3019-546-14513-17726-0001F9E13C",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652154965,
					["delay"] = 0,
					["damage_taken"] = 744.0142079999999,
				}, -- [15]
				{
					["flag_original"] = 2632,
					["totalabsorbed"] = 0.008372000000000001,
					["damage_from"] = {
						["Stronguard"] = true,
					},
					["targets"] = {
						["Xb"] = 44,
						["Munnki"] = 194,
						["Plvl"] = 147,
					},
					["on_hold"] = false,
					["pets"] = {
					},
					["monster"] = true,
					["aID"] = "20465",
					["raid_targets"] = {
					},
					["total_without_pet"] = 385.008372,
					["friendlyfire"] = {
					},
					["end_time"] = 1652154969,
					["dps_started"] = false,
					["total"] = 385.008372,
					["fight_component"] = true,
					["classe"] = "UNKNOW",
					["nome"] = "Underbog Frenzy",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 71,
								["targets"] = {
									["Xb"] = 44,
									["Munnki"] = 194,
									["Plvl"] = 147,
								},
								["n_dmg"] = 385,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 7,
								["total"] = 385,
								["c_max"] = 0,
								["id"] = 1,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 0,
								["a_amt"] = 0,
								["n_amt"] = 7,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							}, -- [1]
							[12097] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 0,
								["targets"] = {
								},
								["n_dmg"] = 0,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 0,
								["total"] = 0,
								["c_max"] = 0,
								["id"] = 12097,
								["r_dmg"] = 0,
								["extra"] = {
								},
								["a_dmg"] = 0,
								["c_min"] = 0,
								["successful_casted"] = 1,
								["a_amt"] = 0,
								["n_amt"] = 0,
								["b_dmg"] = 0,
								["r_amt"] = 0,
							},
						},
					},
					["last_event"] = 0,
					["friendlyfire_total"] = 0,
					["serial"] = "Creature-0-3019-546-14513-20465-000DF9E13C",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1652154964,
					["delay"] = 0,
					["damage_taken"] = 1491.008372,
				}, -- [16]
			},
		}, -- [1]
		{
			["tipo"] = 3,
			["_ActorTable"] = {
				{
					["flag_original"] = 1298,
					["targets_overheal"] = {
					},
					["pets"] = {
					},
					["iniciar_hps"] = false,
					["aID"] = "162-0B79927A",
					["totalover"] = 0.013612,
					["total_without_pet"] = 306.013612,
					["total"] = 306.013612,
					["targets_absorbs"] = {
					},
					["heal_enemy"] = {
					},
					["on_hold"] = false,
					["serial"] = "Player-162-0B79927A",
					["totalabsorb"] = 0.013612,
					["last_hps"] = 0,
					["targets"] = {
						["Lidreyste"] = 306,
					},
					["totalover_without_pet"] = 0.013612,
					["healing_taken"] = 306.013612,
					["fight_component"] = true,
					["end_time"] = 1652153406,
					["start_time"] = 1652153373,
					["healing_from"] = {
						["Lidreyste"] = true,
					},
					["nome"] = "Lidreyste",
					["spells"] = {
						["tipo"] = 3,
						["_ActorTable"] = {
							[118779] = {
								["c_amt"] = 0,
								["totalabsorb"] = 0,
								["targets_overheal"] = {
								},
								["n_max"] = 59,
								["targets"] = {
									["Lidreyste"] = 234,
								},
								["n_min"] = 0,
								["counter"] = 4,
								["overheal"] = 0,
								["total"] = 234,
								["c_max"] = 0,
								["id"] = 118779,
								["targets_absorbs"] = {
								},
								["c_min"] = 0,
								["c_curado"] = 0,
								["n_curado"] = 234,
								["totaldenied"] = 0,
								["n_amt"] = 4,
								["absorbed"] = 0,
							},
							[259760] = {
								["c_amt"] = 0,
								["totalabsorb"] = 0,
								["targets_overheal"] = {
								},
								["n_max"] = 4,
								["targets"] = {
									["Lidreyste"] = 7,
								},
								["n_min"] = 0,
								["counter"] = 2,
								["overheal"] = 0,
								["total"] = 7,
								["c_max"] = 0,
								["id"] = 259760,
								["targets_absorbs"] = {
								},
								["c_min"] = 0,
								["c_curado"] = 0,
								["n_curado"] = 7,
								["totaldenied"] = 0,
								["n_amt"] = 2,
								["absorbed"] = 0,
							},
							[181867] = {
								["c_amt"] = 0,
								["totalabsorb"] = 0,
								["targets_overheal"] = {
								},
								["n_max"] = 65,
								["targets"] = {
									["Lidreyste"] = 65,
								},
								["n_min"] = 0,
								["counter"] = 1,
								["overheal"] = 0,
								["total"] = 65,
								["c_max"] = 0,
								["id"] = 181867,
								["targets_absorbs"] = {
								},
								["c_min"] = 0,
								["c_curado"] = 0,
								["n_curado"] = 65,
								["totaldenied"] = 0,
								["n_amt"] = 1,
								["absorbed"] = 0,
							},
						},
					},
					["grupo"] = true,
					["heal_enemy_amt"] = 0,
					["classe"] = "WARRIOR",
					["custom"] = 0,
					["tipo"] = 2,
					["spec"] = 71,
					["totaldenied"] = 0.013612,
					["delay"] = 0,
					["last_event"] = 0,
				}, -- [1]
				{
					["flag_original"] = 197906,
					["targets_overheal"] = {
						["Stronguard"] = 388,
					},
					["pets"] = {
					},
					["iniciar_hps"] = false,
					["classe"] = "PALADIN",
					["totalover"] = 388.021453,
					["total_without_pet"] = 0.021453,
					["total"] = 0.021453,
					["targets_absorbs"] = {
					},
					["heal_enemy"] = {
					},
					["on_hold"] = false,
					["isTank"] = true,
					["serial"] = "Player-162-0B337F26",
					["totalabsorb"] = 0.021453,
					["last_hps"] = 0,
					["targets"] = {
					},
					["totalover_without_pet"] = 0.021453,
					["healing_taken"] = 0.021453,
					["end_time"] = 1652153480,
					["healing_from"] = {
					},
					["heal_enemy_amt"] = 0,
					["nome"] = "Stronguard",
					["spells"] = {
						["tipo"] = 3,
						["_ActorTable"] = {
							[339119] = {
								["c_amt"] = 2,
								["totalabsorb"] = 0,
								["targets_overheal"] = {
									["Stronguard"] = 388,
								},
								["n_max"] = 0,
								["targets"] = {
									["Stronguard"] = 0,
								},
								["n_min"] = 0,
								["counter"] = 18,
								["overheal"] = 388,
								["total"] = 0,
								["c_max"] = 0,
								["id"] = 339119,
								["targets_absorbs"] = {
								},
								["c_min"] = 0,
								["c_curado"] = 0,
								["n_curado"] = 0,
								["totaldenied"] = 0,
								["n_amt"] = 16,
								["absorbed"] = 0,
							},
						},
					},
					["grupo"] = true,
					["start_time"] = 1652153446,
					["spec"] = 66,
					["custom"] = 0,
					["tipo"] = 2,
					["aID"] = "162-0B337F26",
					["totaldenied"] = 0.021453,
					["delay"] = 0,
					["last_event"] = 0,
				}, -- [2]
			},
		}, -- [2]
		{
			["tipo"] = 7,
			["_ActorTable"] = {
				{
					["received"] = 137.046078,
					["resource"] = 0.046078,
					["targets"] = {
						["Lidreyste"] = 137,
					},
					["pets"] = {
					},
					["powertype"] = 1,
					["classe"] = "WARRIOR",
					["passiveover"] = 0.007331,
					["fight_component"] = true,
					["total"] = 137.046078,
					["tipo"] = 3,
					["totalover"] = 0.007331,
					["nome"] = "Lidreyste",
					["spells"] = {
						["tipo"] = 7,
						["_ActorTable"] = {
							[195707] = {
								["total"] = 117,
								["id"] = 195707,
								["totalover"] = 0,
								["targets"] = {
									["Lidreyste"] = 117,
								},
								["counter"] = 39,
							},
							[100] = {
								["total"] = 20,
								["id"] = 100,
								["totalover"] = 0,
								["targets"] = {
									["Lidreyste"] = 20,
								},
								["counter"] = 2,
							},
						},
					},
					["grupo"] = true,
					["spec"] = 71,
					["flag_original"] = 1298,
					["alternatepower"] = 0.046078,
					["last_event"] = 0,
					["aID"] = "162-0B79927A",
					["serial"] = "Player-162-0B79927A",
				}, -- [1]
				{
					["received"] = 0.026325,
					["resource"] = 6.026325000000001,
					["targets"] = {
					},
					["pets"] = {
					},
					["powertype"] = 0,
					["classe"] = "PALADIN",
					["passiveover"] = 0.006944,
					["resource_type"] = 9,
					["total"] = 0.026325,
					["totalover"] = 0.006944,
					["tipo"] = 3,
					["nome"] = "Stronguard",
					["spells"] = {
						["tipo"] = 7,
						["_ActorTable"] = {
						},
					},
					["grupo"] = true,
					["spec"] = 66,
					["flag_original"] = 1298,
					["alternatepower"] = 0.026325,
					["last_event"] = 0,
					["aID"] = "162-0B337F26",
					["isTank"] = true,
					["serial"] = "Player-162-0B337F26",
				}, -- [2]
			},
		}, -- [3]
		{
			["tipo"] = 9,
			["_ActorTable"] = {
				{
					["flag_original"] = 1047,
					["debuff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[206662] = {
								["refreshamt"] = 0,
								["activedamt"] = 5,
								["appliedamt"] = 5,
								["id"] = 206662,
								["uptime"] = 14,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[348443] = {
								["refreshamt"] = 2,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 348443,
								["uptime"] = 12,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[306600] = {
								["refreshamt"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 1,
								["id"] = 306600,
								["uptime"] = 2,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["pets"] = {
					},
					["classe"] = "MONK",
					["buff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[306715] = {
								["refreshamt"] = 0,
								["activedamt"] = 8,
								["appliedamt"] = 8,
								["id"] = 306715,
								["uptime"] = 130,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[195630] = {
								["refreshamt"] = 1,
								["activedamt"] = 3,
								["appliedamt"] = 3,
								["id"] = 195630,
								["uptime"] = 22,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[97341] = {
								["refreshamt"] = 0,
								["activedamt"] = 7,
								["appliedamt"] = 7,
								["id"] = 97341,
								["uptime"] = 116,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["debuff_uptime"] = 28,
					["nome"] = "Xb",
					["spec"] = 268,
					["grupo"] = true,
					["debuff_uptime_targets"] = {
					},
					["buff_uptime_targets"] = {
					},
					["buff_uptime"] = 268,
					["tipo"] = 4,
					["last_event"] = 0,
					["isTank"] = true,
					["serial"] = "Player-162-0B554FA1",
					["aID"] = "162-0B554FA1",
				}, -- [1]
				{
					["flag_original"] = 1047,
					["debuff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[115804] = {
								["refreshamt"] = 4,
								["activedamt"] = 0,
								["appliedamt"] = 8,
								["id"] = 115804,
								["uptime"] = 60,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[306600] = {
								["refreshamt"] = 0,
								["appliedamt"] = 0,
								["activedamt"] = -1,
								["uptime"] = 0,
								["id"] = 306600,
								["actived_at"] = 1652153393,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[105771] = {
								["refreshamt"] = 0,
								["appliedamt"] = 1,
								["activedamt"] = -1,
								["uptime"] = 1,
								["id"] = 105771,
								["actived_at"] = 1652153411,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[348443] = {
								["refreshamt"] = 2,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 348443,
								["uptime"] = 12,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[262115] = {
								["refreshamt"] = 4,
								["activedamt"] = 1,
								["appliedamt"] = 9,
								["id"] = 262115,
								["uptime"] = 61,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[206662] = {
								["refreshamt"] = 0,
								["activedamt"] = 4,
								["appliedamt"] = 4,
								["id"] = 206662,
								["uptime"] = 17,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["interrupt"] = 1.008348,
					["buff_uptime"] = 285,
					["interrupt_targets"] = {
						["Murkblood Oracle"] = 1,
					},
					["classe"] = "WARRIOR",
					["interrupt_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[6552] = {
								["id"] = 6552,
								["interrompeu_oque"] = {
									[12471] = 1,
								},
								["targets"] = {
									["Murkblood Oracle"] = 1,
								},
								["counter"] = 1,
							},
						},
					},
					["buff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[306715] = {
								["refreshamt"] = 0,
								["activedamt"] = 8,
								["appliedamt"] = 8,
								["id"] = 306715,
								["uptime"] = 133,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[32216] = {
								["refreshamt"] = 0,
								["activedamt"] = 6,
								["appliedamt"] = 6,
								["id"] = 32216,
								["uptime"] = 10,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[126554] = {
								["refreshamt"] = 0,
								["activedamt"] = 4,
								["appliedamt"] = 4,
								["id"] = 126554,
								["uptime"] = 56,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[126649] = {
								["refreshamt"] = 0,
								["activedamt"] = 3,
								["appliedamt"] = 3,
								["id"] = 126649,
								["uptime"] = 28,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[256374] = {
								["refreshamt"] = 0,
								["activedamt"] = 4,
								["appliedamt"] = 4,
								["id"] = 256374,
								["uptime"] = 35,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[118779] = {
								["refreshamt"] = 0,
								["activedamt"] = 4,
								["appliedamt"] = 4,
								["id"] = 118779,
								["uptime"] = 23,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["interrompeu_oque"] = {
						[12471] = 1,
					},
					["fight_component"] = true,
					["debuff_uptime"] = 151,
					["nome"] = "Lidreyste",
					["spec"] = 71,
					["grupo"] = true,
					["spell_cast"] = {
						[12294] = 12,
						[163201] = 3,
						[6552] = 1,
						[181867] = 1,
						[100] = 2,
						[34428] = 4,
						[126664] = 2,
						[1464] = 9,
					},
					["debuff_uptime_targets"] = {
					},
					["last_event"] = 0,
					["tipo"] = 4,
					["buff_uptime_targets"] = {
					},
					["pets"] = {
					},
					["serial"] = "Player-162-0B79927A",
					["aID"] = "162-0B79927A",
				}, -- [2]
				{
					["flag_original"] = 1047,
					["debuff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[206662] = {
								["refreshamt"] = 0,
								["activedamt"] = 5,
								["appliedamt"] = 5,
								["id"] = 206662,
								["uptime"] = 11,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[348443] = {
								["refreshamt"] = 2,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 348443,
								["uptime"] = 11,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[306600] = {
								["refreshamt"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 1,
								["id"] = 306600,
								["uptime"] = 0,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["pets"] = {
					},
					["classe"] = "MONK",
					["buff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[306715] = {
								["refreshamt"] = 0,
								["activedamt"] = 8,
								["appliedamt"] = 8,
								["id"] = 306715,
								["uptime"] = 127,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["debuff_uptime"] = 22,
					["nome"] = "Plvl",
					["spec"] = 1450,
					["grupo"] = true,
					["debuff_uptime_targets"] = {
					},
					["last_event"] = 0,
					["tipo"] = 4,
					["buff_uptime_targets"] = {
					},
					["buff_uptime"] = 127,
					["serial"] = "Player-162-0B79B355",
					["aID"] = "162-0B79B355",
				}, -- [3]
				{
					["flag_original"] = 1047,
					["debuff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[348443] = {
								["refreshamt"] = 3,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 348443,
								["uptime"] = 17,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[306600] = {
								["refreshamt"] = 0,
								["appliedamt"] = 0,
								["activedamt"] = -1,
								["uptime"] = 0,
								["id"] = 306600,
								["actived_at"] = 1652153388,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[204242] = {
								["refreshamt"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 6,
								["id"] = 204242,
								["uptime"] = 1,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["pets"] = {
					},
					["classe"] = "PALADIN",
					["buff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[280375] = {
								["refreshamt"] = 0,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 280375,
								["uptime"] = 8,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[328908] = {
								["refreshamt"] = 0,
								["activedamt"] = 2,
								["appliedamt"] = 2,
								["id"] = 328908,
								["uptime"] = 17,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[93795] = {
								["refreshamt"] = 0,
								["activedamt"] = 8,
								["appliedamt"] = 8,
								["id"] = 93795,
								["uptime"] = 133,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[188370] = {
								["refreshamt"] = 0,
								["activedamt"] = 10,
								["appliedamt"] = 10,
								["id"] = 188370,
								["uptime"] = 16,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[327225] = {
								["refreshamt"] = 0,
								["activedamt"] = 5,
								["appliedamt"] = 5,
								["id"] = 327225,
								["uptime"] = 38,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[182104] = {
								["refreshamt"] = 0,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 182104,
								["uptime"] = 8,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[32223] = {
								["refreshamt"] = 0,
								["activedamt"] = 8,
								["appliedamt"] = 8,
								["id"] = 32223,
								["uptime"] = 133,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[132403] = {
								["refreshamt"] = 0,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 132403,
								["uptime"] = 4,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[328900] = {
								["refreshamt"] = 9,
								["activedamt"] = 6,
								["appliedamt"] = 6,
								["id"] = 328900,
								["uptime"] = 52,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["debuff_uptime"] = 18,
					["debuff_uptime_targets"] = {
					},
					["nome"] = "Stronguard",
					["spec"] = 66,
					["grupo"] = true,
					["spell_cast"] = {
						[62124] = 1,
						[31935] = 3,
						[275779] = 1,
						[304971] = 1,
						[53595] = 1,
						[53600] = 1,
						[26573] = 9,
					},
					["buff_uptime_targets"] = {
					},
					["buff_uptime"] = 409,
					["tipo"] = 4,
					["last_event"] = 0,
					["isTank"] = true,
					["serial"] = "Player-162-0B337F26",
					["aID"] = "162-0B337F26",
				}, -- [4]
				{
					["flag_original"] = 1047,
					["debuff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[206662] = {
								["refreshamt"] = 0,
								["activedamt"] = 4,
								["appliedamt"] = 4,
								["id"] = 206662,
								["uptime"] = 12,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[348443] = {
								["refreshamt"] = 2,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 348443,
								["uptime"] = 17,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[306600] = {
								["refreshamt"] = 0,
								["appliedamt"] = 0,
								["activedamt"] = -1,
								["uptime"] = 0,
								["id"] = 306600,
								["actived_at"] = 1652153388,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["pets"] = {
					},
					["classe"] = "MONK",
					["buff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[306715] = {
								["refreshamt"] = 0,
								["activedamt"] = 8,
								["appliedamt"] = 8,
								["id"] = 306715,
								["uptime"] = 133,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["debuff_uptime"] = 29,
					["nome"] = "Munnki",
					["spec"] = 1450,
					["grupo"] = true,
					["debuff_uptime_targets"] = {
					},
					["last_event"] = 0,
					["tipo"] = 4,
					["buff_uptime_targets"] = {
					},
					["buff_uptime"] = 133,
					["serial"] = "Player-162-0B799781",
					["aID"] = "162-0B799781",
				}, -- [5]
				{
					["flag_original"] = 2632,
					["monster"] = true,
					["aID"] = "17734",
					["nome"] = "Underbog Lord",
					["pets"] = {
					},
					["classe"] = "UNKNOW",
					["spell_cast"] = {
						[25778] = 2,
						[32065] = 2,
					},
					["tipo"] = 4,
					["fight_component"] = true,
					["serial"] = "Creature-0-3887-546-652-17734-000079D8BB",
					["last_event"] = 0,
				}, -- [6]
				{
					["monster"] = true,
					["classe"] = "UNKNOW",
					["spell_cast"] = {
						[34171] = 7,
					},
					["nome"] = "Underbat",
					["pets"] = {
					},
					["fight_component"] = true,
					["flag_original"] = 2632,
					["aID"] = "17724",
					["last_event"] = 0,
					["serial"] = "Creature-0-3779-546-32599-17724-000879DC48",
					["tipo"] = 4,
				}, -- [7]
				{
					["flag_original"] = 2632,
					["monster"] = true,
					["nome"] = "Underbog Lurker",
					["last_event"] = 0,
					["pets"] = {
					},
					["spell_cast"] = {
						[34161] = 10,
					},
					["fight_component"] = true,
					["tipo"] = 4,
					["aID"] = "17725",
					["serial"] = "Creature-0-3779-546-32599-17725-000179DC48",
					["classe"] = "UNKNOW",
				}, -- [8]
				{
					["monster"] = true,
					["classe"] = "UNKNOW",
					["spell_cast"] = {
						[12471] = 1,
						[31405] = 1,
					},
					["nome"] = "Murkblood Oracle",
					["pets"] = {
					},
					["fight_component"] = true,
					["flag_original"] = 2632,
					["aID"] = "17771",
					["last_event"] = 0,
					["serial"] = "Creature-0-3019-546-14513-17771-0000F9E13D",
					["tipo"] = 4,
				}, -- [9]
				{
					["monster"] = true,
					["classe"] = "UNKNOW",
					["spell_cast"] = {
						[12097] = 1,
					},
					["nome"] = "Underbog Frenzy",
					["pets"] = {
					},
					["fight_component"] = true,
					["flag_original"] = 2632,
					["aID"] = "20465",
					["last_event"] = 0,
					["serial"] = "Creature-0-3019-546-14513-20465-000CF9E13C",
					["tipo"] = 4,
				}, -- [10]
			},
		}, -- [4]
		{
			["tipo"] = 2,
			["_ActorTable"] = {
			},
		}, -- [5]
		["raid_roster"] = {
		},
		["raid_roster_indexed"] = {
		},
		["tempo_start"] = 1652152674,
		["last_events_tables"] = {
		},
		["alternate_power"] = {
		},
		["combat_counter"] = 343,
		["spells_cast_timeline"] = {
		},
		["totals"] = {
			26504.203829, -- [1]
			306.026509, -- [2]
			{
				137.038747, -- [1]
				[0] = 0.019381,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 1.008348,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
			["frags_total"] = 0,
			["voidzone_damage"] = 0,
		},
		["player_last_events"] = {
		},
		["frags_need_refresh"] = false,
		["aura_timeline"] = {
		},
		["__call"] = {
		},
		["data_inicio"] = "21:26:55",
		["end_time"] = 119638.807,
		["cleu_events"] = {
			["n"] = 1,
		},
		["segments_added"] = {
			{
				["elapsed"] = 26.78800000000047,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:55:43",
			}, -- [1]
			{
				["elapsed"] = 18.02300000000105,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:52:03",
			}, -- [2]
			{
				["elapsed"] = 11.0109999999986,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:41:41",
			}, -- [3]
			{
				["elapsed"] = 10.02599999999802,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:38:25",
			}, -- [4]
			{
				["elapsed"] = 17,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:31:03",
			}, -- [5]
			{
				["elapsed"] = 20.00800000000163,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:30:11",
			}, -- [6]
			{
				["elapsed"] = 16.00199999999313,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:29:50",
			}, -- [7]
			{
				["elapsed"] = 13.01799999999639,
				["type"] = 5,
				["name"] = "Trash Cleanup",
				["clock"] = "21:26:55",
			}, -- [8]
		},
		["totals_grupo"] = {
			23396.091815, -- [1]
			306.026509, -- [2]
			{
				137.038747, -- [1]
				[0] = 0.019381,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 1.008348,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
		},
		["frags"] = {
		},
		["data_fim"] = "21:56:09",
		["overall_enemy_name"] = "-- x -- x --",
		["CombatSkillCache"] = {
		},
		["cleu_timeline"] = {
		},
		["start_time"] = 119506.931,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
			["Raid Damage Done"] = {
			},
		},
		["PhaseData"] = {
			{
				1, -- [1]
				1, -- [2]
			}, -- [1]
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage_section"] = {
			},
			["damage"] = {
			},
		},
	},
	["character_data"] = {
		["logons"] = 3,
	},
	["force_font_outline"] = "",
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["announce_cooldowns"] = {
		["enabled"] = false,
		["ignored_cooldowns"] = {
		},
		["custom"] = "",
		["channel"] = "RAID",
	},
	["rank_window"] = {
		["last_difficulty"] = 15,
		["last_raid"] = "",
	},
	["announce_damagerecord"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["cached_specs"] = {
	},
}
