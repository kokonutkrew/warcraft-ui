
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 0,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
<<<<<<< Updated upstream
	["last_version"] = "v8.0.1.6449",
=======
	["ocd_tracker"] = {
		["enabled"] = false,
		["current_cooldowns"] = {
		},
		["cooldowns"] = {
		},
		["show_conditions"] = {
			["only_inside_instance"] = true,
			["only_in_group"] = true,
		},
		["show_options"] = false,
		["pos"] = {
		},
	},
	["last_version"] = "9.1.08710",
>>>>>>> Stashed changes
	["SoloTablesSaved"] = {
		["Mode"] = 1,
	},
	["tabela_instancias"] = {
	},
<<<<<<< Updated upstream
	["local_instances_config"] = {
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
=======
	["coach"] = {
		["enabled"] = false,
		["welcome_panel_pos"] = {
		},
		["last_coach_name"] = false,
	},
	["on_death_menu"] = true,
	["cached_talents"] = {
	},
	["last_instance_id"] = 0,
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
	["active_profile"] = "KokonutKrew",
	["last_realversion"] = 145,
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
			["InstalledAt"] = 1626059439,
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
			["author"] = "Terciob",
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["playSound"] = false,
			["updatespeed"] = 1,
			["showamount"] = false,
			["useplayercolor"] = false,
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
			["tank_block_height"] = 40,
			["tank_block_color"] = {
				0.074509, -- [1]
				0.035294, -- [2]
				0.035294, -- [3]
				0.832845, -- [4]
			},
			["tank_block_powerbar_size_height"] = 10,
			["show_inc_bars"] = true,
		},
		["DETAILS_PLUGIN_TARGET_CALLER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
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
				299.9998779296875, -- [1]
				499.9999389648438, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 160,
				["radius"] = 160,
				["hide"] = true,
			},
			["scale"] = 1,
			["arrow_anchor_x"] = 0,
			["point"] = "CENTER",
			["row_texture"] = "Details Serenity",
			["y"] = -4.57763671875e-05,
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["row_height"] = 20,
			["square_amount"] = 5,
			["enabled"] = false,
			["arrow_size"] = 10,
			["use_spark"] = true,
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["main_frame_strata"] = "LOW",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = -3.0517578125e-05,
				["x"] = -6.103515625e-05,
				["update_speed"] = 0.05,
				["size"] = 32,
				["attribute_type"] = 1,
			},
			["x"] = -6.103515625e-05,
			["font_face"] = "Friz Quadrata TT",
			["square_size"] = 32,
			["arrow_anchor_y"] = 0,
			["font_size"] = 10,
			["main_frame_locked"] = false,
			["author"] = "Details! Team",
		},
	},
	["last_day"] = "11",
	["local_instances_config"] = {
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["verticalSnap"] = false,
			["isLocked"] = false,
			["is_open"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
				[3] = 2,
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -364.4656681256511,
					["x"] = -140.2984363873606,
					["w"] = 313.1256103515625,
					["h"] = 161.1251831054688,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [1]
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["verticalSnap"] = false,
			["isLocked"] = false,
			["is_open"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
				1, -- [1]
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -369.9656877707297,
					["x"] = 161.8018042399229,
					["w"] = 310.0002746582031,
					["h"] = 160.0834808349609,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [2]
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
			},
=======
				[3] = 4,
			},
			["segment"] = 0,
>>>>>>> Stashed changes
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
<<<<<<< Updated upstream
					["y"] = -360.999923706055,
					["x"] = 717.000122070313,
					["w"] = 309.999938964844,
					["h"] = 157.999984741211,
=======
					["y"] = -212.31494140625,
					["x"] = -994.7044830322266,
					["w"] = 197.4075469970703,
					["h"] = 74.5555648803711,
>>>>>>> Stashed changes
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
<<<<<<< Updated upstream
		}, -- [1]
	},
	["cached_talents"] = {
		["Player-60-0A6DF395"] = {
			22183, -- [1]
			22185, -- [2]
			22557, -- [3]
			23167, -- [4]
			22591, -- [5]
			21811, -- [6]
			22592, -- [7]
		},
	},
	["last_instance_id"] = 0,
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["last_instance_time"] = 0,
	["active_profile"] = "Samoantitan-Stormrage",
	["last_realversion"] = 134,
	["ignore_nicktag"] = false,
	["plugin_database"] = {
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["updatespeed"] = 1,
			["useclasscolors"] = false,
			["animate"] = false,
			["useplayercolor"] = false,
			["showamount"] = false,
			["author"] = "Details! Team",
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_RAIDCHECK"] = {
			["enabled"] = true,
			["food_tier1"] = true,
			["mythic_1_4"] = true,
			["food_tier2"] = true,
			["author"] = "Details! Team",
			["use_report_panel"] = true,
			["pre_pot_healers"] = false,
			["pre_pot_tanks"] = false,
			["food_tier3"] = true,
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["enabled"] = true,
			["tank_block_texture"] = "Details Serenity",
			["tank_block_color"] = {
				0.24705882, -- [1]
				0.0039215, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["show_inc_bars"] = false,
			["author"] = "Details! Team",
			["first_run"] = false,
			["tank_block_size"] = 150,
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["author"] = "Details! Team",
			["window_scale"] = 1,
			["hide_on_combat"] = false,
			["show_icon"] = 5,
			["opened"] = 0,
			["encounter_timers_dbm"] = {
			},
		},
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["font_color"] = {
=======
		}, -- [3]
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["sub_atributo_last"] = {
>>>>>>> Stashed changes
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
<<<<<<< Updated upstream
			},
			["is_first_run"] = false,
			["arrow_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["main_frame_size"] = {
				300, -- [1]
				500.000030517578, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 160,
				["radius"] = 160,
				["hide"] = true,
			},
			["arrow_anchor_x"] = 0,
			["row_texture"] = "Details Serenity",
			["scale"] = 1,
			["point"] = "CENTER",
			["y"] = 4.577636718750e-005,
			["enabled"] = false,
			["arrow_size"] = 10,
			["author"] = "Details! Team",
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["main_frame_strata"] = "LOW",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["row_height"] = 20,
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = 3.05175781250e-005,
				["x"] = 3.05175781250e-005,
				["update_speed"] = 0.05,
				["size"] = 32,
				["attribute_type"] = 1,
			},
			["x"] = 0,
			["font_face"] = "Friz Quadrata TT",
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["arrow_anchor_y"] = 0,
			["use_spark"] = true,
			["main_frame_locked"] = false,
			["font_size"] = 10,
		},
	},
	["announce_prepots"] = {
		["enabled"] = true,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["last_day"] = "10",
	["nick_tag_cache"] = {
		["nextreset"] = 1540493088,
		["last_version"] = 10,
	},
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["combat_id"] = 0,
	["savedStyles"] = {
	},
	["character_data"] = {
		["logons"] = 1,
	},
	["combat_counter"] = 12,
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
		["last_events_tables"] = {
		},
		["alternate_power"] = {
		},
		["combat_counter"] = 11,
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
		["frags_need_refresh"] = false,
		["__call"] = {
		},
		["data_inicio"] = 0,
		["frags"] = {
		},
		["data_fim"] = 0,
		["CombatSkillCache"] = {
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
		["start_time"] = 0,
		["TimeData"] = {
			["Raid Damage Done"] = {
			},
		},
		["player_last_events"] = {
		},
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["force_font_outline"] = "",
=======
				1, -- [5]
			},
			["is_open"] = true,
			["isLocked"] = true,
			["snap"] = {
				3, -- [1]
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -212.31494140625,
					["x"] = -799.0748291015625,
					["w"] = 193.8517761230469,
					["h"] = 74.5555648803711,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [4]
	},
	["last_instance_time"] = 0,
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
	["cached_roles"] = {
	},
	["ignore_nicktag"] = false,
	["combat_id"] = 0,
	["savedStyles"] = {
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1627355376,
		["last_version"] = 14,
	},
	["combat_counter"] = 3,
	["announce_deaths"] = {
		["enabled"] = false,
		["last_hits"] = 1,
		["only_first"] = 5,
		["where"] = 1,
	},
	["character_data"] = {
		["logons"] = 1,
	},
	["force_font_outline"] = "",
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
		["Player-60-0A6DF395"] = 70,
=======
		["Player-60-0A6E12EE"] = 104,
>>>>>>> Stashed changes
	},
}
