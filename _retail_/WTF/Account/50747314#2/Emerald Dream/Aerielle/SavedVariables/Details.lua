
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 0,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["ocd_tracker"] = {
		["show_title"] = true,
		["current_cooldowns"] = {
		},
		["group_frames"] = true,
		["lines_per_column"] = 12,
		["frames"] = {
			["defensive-raid"] = {
			},
			["main"] = {
			},
			["ofensive"] = {
			},
			["defensive-target"] = {
			},
			["utility"] = {
			},
			["defensive-personal"] = {
			},
		},
		["show_options"] = false,
		["own_frame"] = {
			["defensive-raid"] = false,
			["ofensive"] = false,
			["defensive-target"] = false,
			["utility"] = false,
			["defensive-personal"] = false,
		},
		["width"] = 120,
		["framme_locked"] = false,
		["cooldowns"] = {
		},
		["height"] = 18,
		["show_conditions"] = {
			["only_inside_instance"] = true,
			["only_in_group"] = true,
		},
		["enabled"] = false,
		["filters"] = {
			["defensive-raid"] = false,
			["ofensive"] = true,
			["defensive-target"] = false,
			["utility"] = false,
			["defensive-personal"] = false,
		},
	},
	["last_version"] = "10.0.5 10562",
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
					["y"] = -175.5,
					["x"] = -826.5006256103516,
					["w"] = 260.9999694824219,
					["h"] = 116.999885559082,
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
	["cached_talents"] = {
	},
	["last_instance_id"] = 1763,
	["data_harvest_for_charsts"] = {
		["players"] = {
			{
				["playerKey"] = "total",
				["combatObjectContainer"] = 1,
				["name"] = "Damage of Each Individual Player",
				["playerOnly"] = true,
			}, -- [1]
		},
		["totals"] = {
			{
				["combatObjectSubTableKey"] = 1,
				["name"] = "Damage of All Player Combined",
				["combatObjectSubTableName"] = "totals",
			}, -- [1]
		},
	},
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
	["active_profile"] = "Aerielle-Emerald Dream",
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
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["combat_counter"] = 752,
	["plugin_database"] = {
		["DETAILS_PLUGIN_COMPARETWO_WINDOW"] = {
			["enabled"] = true,
			["author"] = "Terciob",
		},
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
			["author"] = "Details! Team",
			["last_encounter_hash"] = false,
			["enabled"] = true,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 0,
			["timeline_cutoff_delete_time"] = 3,
			["showing_type"] = 4,
			["InstalledAt"] = 1672603742,
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["last_section_selected"] = "main",
			["author"] = "Terciob",
			["window_scale"] = 1,
			["encounter_timers_dbm"] = {
			},
			["show_icon"] = 5,
			["opened"] = 0,
			["hide_on_combat"] = false,
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
				["show_method"] = 4,
				["auto_create"] = true,
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
			["useclasscolors"] = false,
			["showamount"] = false,
			["useplayercolor"] = false,
			["absolute_mode"] = false,
			["playSound"] = false,
			["playSoundFile"] = "Details Threat Warning Volume 3",
			["disable_gouge"] = false,
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
			["show_inc_bars"] = true,
			["tank_block_powerbar_size_height"] = 10,
			["tank_block_height"] = 40,
			["tank_block_color"] = {
				0.074509, -- [1]
				0.035294, -- [2]
				0.035294, -- [3]
				0.832845, -- [4]
			},
		},
		["DETAILS_PLUGIN_TARGET_CALLER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["use_square_mode"] = false,
			["is_first_run"] = true,
			["arrow_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["arrow_anchor_y"] = 0,
			["main_frame_size"] = {
				300, -- [1]
				500.0000305175781, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 160,
				["radius"] = 160,
				["hide"] = false,
			},
			["main_frame_locked"] = false,
			["arrow_anchor_x"] = 0,
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["row_texture"] = "Details Serenity",
			["square_grow_direction"] = "right",
			["use_spark"] = true,
			["author"] = "Terciob",
			["square_amount"] = 5,
			["enabled"] = false,
			["arrow_size"] = 10,
			["y"] = 4.57763671875e-05,
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["main_frame_strata"] = "LOW",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["font_size"] = 10,
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = 3.0517578125e-05,
				["x"] = 3.0517578125e-05,
				["attribute_type"] = 1,
				["update_speed"] = 0.05,
				["size"] = 32,
			},
			["x"] = 0,
			["font_face"] = "Friz Quadrata TT",
			["square_size"] = 32,
			["point"] = "CENTER",
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["row_height"] = 20,
			["scale"] = 1,
		},
		["DETAILS_PLUGIN_EXPLOSIVE_ORBS"] = {
			["enabled"] = true,
			["author"] = "Rhythm",
			["useShortText"] = false,
			["onlyShowHit"] = false,
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
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["announce_damagerecord"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["mythic_plus_log"] = {
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1678216614,
		["last_version"] = 15,
	},
	["last_instance_time"] = 1674303141,
	["last_realversion"] = 148,
	["character_data"] = {
		["logons"] = 44,
	},
	["combat_id"] = 0,
	["savedStyles"] = {
	},
	["data_harvested_for_charts"] = {
	},
	["ignore_nicktag"] = false,
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
			},
		}, -- [1]
		{
			["tipo"] = 3,
			["_ActorTable"] = {
			},
		}, -- [2]
		{
			["tipo"] = 7,
			["_ActorTable"] = {
			},
		}, -- [3]
		{
			["tipo"] = 9,
			["_ActorTable"] = {
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
		["tempo_start"] = 1675501315,
		["last_events_tables"] = {
		},
		["alternate_power"] = {
		},
		["combat_counter"] = 737,
		["frags"] = {
		},
		["totals"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["dead"] = 0,
				["cc_break"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
				["dispell"] = 0,
				["cooldowns_defensive"] = 0,
			}, -- [4]
			["voidzone_damage"] = 0,
			["frags_total"] = 0,
		},
		["player_last_events"] = {
		},
		["frags_need_refresh"] = false,
		["aura_timeline"] = {
		},
		["__call"] = {
		},
		["data_inicio"] = 0,
		["PhaseData"] = {
			{
				1, -- [1]
				1, -- [2]
			}, -- [1]
			["damage"] = {
			},
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage_section"] = {
			},
		},
		["overall_refreshed"] = true,
		["hasSaved"] = true,
		["spells_cast_timeline"] = {
		},
		["data_fim"] = 0,
		["cleu_events"] = {
			["n"] = 1,
		},
		["CombatSkillCache"] = {
		},
		["cleu_timeline"] = {
		},
		["start_time"] = 0,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
		},
		["totals_grupo"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["dead"] = 0,
				["cc_break"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
				["dispell"] = 0,
				["cooldowns_defensive"] = 0,
			}, -- [4]
		},
	},
	["on_death_menu"] = false,
	["last_day"] = "21",
	["force_font_outline"] = "",
	["announce_cooldowns"] = {
		["ignored_cooldowns"] = {
		},
		["enabled"] = false,
		["custom"] = "",
		["channel"] = "RAID",
	},
	["rank_window"] = {
		["last_difficulty"] = 15,
		["last_raid"] = "",
	},
	["cached_roles"] = {
	},
	["cached_specs"] = {
		["Player-162-0B98F028"] = 266,
	},
}
