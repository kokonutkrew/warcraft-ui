
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
	["last_version"] = "9.1.08782",
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
	["on_death_menu"] = true,
	["nick_tag_cache"] = {
		["nextreset"] = 1631496867,
		["last_version"] = 14,
	},
	["last_instance_id"] = 34,
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["last_instance_time"] = 1618544625,
	["active_profile"] = "KokonutKrew",
	["last_realversion"] = 145,
	["ignore_nicktag"] = false,
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
			["InstalledAt"] = 1618542930,
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
			["author"] = "Details! Team",
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
			["updatespeed"] = 1,
			["showamount"] = false,
			["animate"] = false,
			["useplayercolor"] = false,
			["useclasscolors"] = false,
			["author"] = "Details! Team",
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["enabled"] = true,
			["tank_block_color"] = {
				0.24705882, -- [1]
				0.0039215, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["show_inc_bars"] = true,
			["author"] = "Tercio",
			["first_run"] = false,
			["tank_block_size"] = 150,
			["bar_height"] = 24,
			["tank_block_texture"] = "Details Serenity",
			["tank_block_height"] = 40,
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
			["author"] = "Details! Team",
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
			["use_spark"] = true,
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["author"] = "Details! Team",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["font_size"] = 10,
			["y"] = -4.57763671875e-05,
			["x"] = -6.103515625e-05,
			["font_face"] = "Friz Quadrata TT",
			["square_size"] = 32,
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = -3.0517578125e-05,
				["x"] = -6.103515625e-05,
				["size"] = 32,
				["update_speed"] = 0.05,
				["attribute_type"] = 1,
			},
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["main_frame_locked"] = false,
			["arrow_anchor_y"] = 0,
		},
	},
	["character_data"] = {
		["logons"] = 7,
	},
	["combat_counter"] = 31,
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["cached_roles"] = {
	},
	["announce_prepots"] = {
		["enabled"] = false,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["cached_talents"] = {
	},
	["combat_id"] = 4,
	["savedStyles"] = {
	},
	["force_font_outline"] = "",
	["last_day"] = "29",
	["announce_deaths"] = {
		["enabled"] = false,
		["last_hits"] = 1,
		["only_first"] = 5,
		["where"] = 1,
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
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
	["local_instances_config"] = {
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["verticalSnap"] = false,
			["isLocked"] = true,
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
					["y"] = -416.4023895705008,
					["x"] = -836.4435248229726,
					["w"] = 244,
					["h"] = 193.0000305175781,
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
			["isLocked"] = true,
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
					["y"] = -416.4023895705008,
					["x"] = -602.2035183552729,
					["w"] = 244.0000457763672,
					["h"] = 193.0000305175781,
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
				[3] = 4,
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -212.3147583007813,
					["x"] = -816.9266662597656,
					["w"] = 197.4075927734375,
					["h"] = 74.55563354492188,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [3]
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
					["y"] = -212.3147277832031,
					["x"] = -621.2969970703125,
					["w"] = 193.8517761230469,
					["h"] = 74.55557250976562,
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
		["Player-162-0B553AD5"] = 66,
	},
}