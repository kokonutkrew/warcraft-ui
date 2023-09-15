
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 0,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["ocd_tracker"] = {
		["enabled"] = false,
		["current_cooldowns"] = {
		},
		["filters"] = {
			["defensive-raid"] = false,
			["ofensive"] = true,
			["defensive-target"] = false,
			["utility"] = false,
			["defensive-personal"] = false,
		},
		["group_frames"] = true,
		["width"] = 120,
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
		["lines_per_column"] = 12,
		["height"] = 18,
		["cooldowns"] = {
		},
		["framme_locked"] = false,
		["show_conditions"] = {
			["only_inside_instance"] = true,
			["only_in_group"] = true,
		},
		["show_title"] = true,
		["pos"] = {
		},
	},
	["last_version"] = "10.1.0 10562",
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
	},
	["last_instance_id"] = 0,
	["data_harvest_for_charsts"] = {
		["players"] = {
			{
				["name"] = "Damage of Each Individual Player",
				["playerOnly"] = true,
				["playerKey"] = "total",
				["combatObjectContainer"] = 1,
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
	["active_profile"] = "Sparkkles-Emerald Dream",
	["last_realversion"] = 148,
	["benchmark_db"] = {
		["frame"] = {
		},
	},
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
			["InstalledAt"] = 1653686107,
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
			["disable_gouge"] = false,
			["showamount"] = false,
			["useplayercolor"] = false,
			["absolute_mode"] = false,
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
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["square_grow_direction"] = "right",
			["point"] = "CENTER",
			["main_frame_strata"] = "LOW",
			["square_amount"] = 5,
			["enabled"] = false,
			["arrow_size"] = 10,
			["font_size"] = 10,
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
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
			["use_spark"] = true,
			["x"] = -0.00018310546875,
			["font_face"] = "Friz Quadrata TT",
			["square_size"] = 32,
			["y"] = -2.288818359375e-05,
			["author"] = "Terciob",
			["main_frame_locked"] = false,
			["arrow_anchor_y"] = 0,
		},
	},
	["mythic_plus_log"] = {
	},
	["data_harvested_for_charts"] = {
	},
	["last_day"] = "07",
	["cached_roles"] = {
	},
	["last_instance_time"] = 0,
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
					["y"] = -61.0003662109375,
					["x"] = -805,
					["w"] = 310,
					["h"] = 157.9999694824219,
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
	["combat_id"] = 159,
	["savedStyles"] = {
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1690053758,
		["last_version"] = 15,
	},
	["combat_counter"] = 169,
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
		["tempo_start"] = 166647.954,
		["last_events_tables"] = {
		},
		["alternate_power"] = {
		},
		["combat_counter"] = 167,
		["totals"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
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
		["data_inicio"] = 0,
		["end_time"] = 166647.954,
		["spells_cast_timeline"] = {
		},
		["totals_grupo"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
		},
		["frags"] = {
		},
		["data_fim"] = 0,
		["cleu_events"] = {
			["n"] = 1,
		},
		["CombatSkillCache"] = {
		},
		["cleu_timeline"] = {
		},
		["start_time"] = 166647.954,
		["TimeData"] = {
			["Player Damage Done"] = {
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
		["logons"] = 5,
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
		["Player-162-0B7B66E7"] = 62,
	},
}
