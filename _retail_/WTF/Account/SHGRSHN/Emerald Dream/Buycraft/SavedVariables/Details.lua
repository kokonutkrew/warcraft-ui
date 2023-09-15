
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
	},
	["last_instance_id"] = 1950,
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
			["InstalledAt"] = 1653375713,
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
	["last_day"] = "24",
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
					["y"] = -305.0200228772065,
					["x"] = -820.5600022929045,
					["w"] = 227.9999847412109,
					["h"] = 108.9999694824219,
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
					["y"] = -305.0200228772065,
					["x"] = -601.6799765952193,
					["w"] = 228.0000152587891,
					["h"] = 108.9999694824219,
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
			["horizontalSnap"] = false,
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
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -172.3128967285156,
					["x"] = -847.0739593505859,
					["w"] = 225.8520812988281,
					["h"] = 74.55577850341797,
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
			["horizontalSnap"] = false,
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
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -173.3128967285156,
					["x"] = -638.296875,
					["w"] = 193.8520050048828,
					["h"] = 74.55571746826172,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [4]
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
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
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -103.6193237304688,
					["x"] = -805.0000762939453,
					["w"] = 309.9998474121094,
					["h"] = 158.0007019042969,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [5]
	},
	["last_instance_time"] = 1653375741,
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
	["ignore_nicktag"] = false,
	["combat_id"] = 6,
	["savedStyles"] = {
		{
			["hide_in_combat_type"] = 1,
			["fontstrings_text3_anchor"] = 35,
			["menu_anchor"] = {
				16, -- [1]
				0, -- [2]
				["side"] = 2,
			},
			["bg_r"] = 0.0941176470588235,
			["hide_out_of_combat"] = false,
			["color_buttons"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
			["micro_displays_locked"] = true,
			["fontstrings_width"] = 35,
			["tooltip"] = {
				["n_abilities"] = 3,
				["n_enemies"] = 3,
			},
			["switch_all_roles_in_combat"] = false,
			["clickthrough_toolbaricons"] = false,
			["clickthrough_rows"] = false,
			["switch_tank"] = false,
			["plugins_grow_direction"] = 1,
			["menu_icons"] = {
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				false, -- [6]
				["space"] = -2,
				["shadow"] = false,
			},
			["desaturated_menu"] = false,
			["micro_displays_side"] = 2,
			["window_scale"] = 1,
			["hide_icon"] = true,
			["toolbar_side"] = 1,
			["bg_g"] = 0.0941176470588235,
			["menu_icons_alpha"] = 0.5,
			["bg_b"] = 0.0941176470588235,
			["backdrop_texture"] = "Details Ground",
			["color"] = {
				0.333333333333333, -- [1]
				0.333333333333333, -- [2]
				0.333333333333333, -- [3]
				0, -- [4]
			},
			["hide_on_context"] = {
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [1]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [2]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [3]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [4]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [5]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [6]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [7]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [8]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [9]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [10]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [11]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [12]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [13]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [14]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [15]
			},
			["skin"] = "Safe Skin Legion Beta",
			["following"] = {
				["enabled"] = false,
				["bar_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["switch_healer"] = false,
			["fontstrings_text2_anchor"] = 70,
			["instance_button_anchor"] = {
				-27, -- [1]
				1, -- [2]
			},
			["name"] = "KokonutKrew",
			["fontstrings_text4_anchor"] = 0,
			["menu_alpha"] = {
				["enabled"] = false,
				["onenter"] = 1,
				["iconstoo"] = true,
				["ignorebars"] = false,
				["onleave"] = 1,
			},
			["switch_healer_in_combat"] = false,
			["auto_hide_menu"] = {
				["left"] = false,
				["right"] = false,
			},
			["switch_damager"] = false,
			["strata"] = "LOW",
			["clickthrough_incombatonly"] = true,
			["show_statusbar"] = false,
			["stretch_button_side"] = 1,
			["hide_in_combat_alpha"] = 0,
			["clickthrough_window"] = false,
			["bg_alpha"] = 0.045324444770813,
			["libwindow"] = {
				["y"] = -43.5391845703125,
				["x"] = 49.14589691162109,
				["point"] = "LEFT",
				["scale"] = 1,
			},
			["statusbar_info"] = {
				["alpha"] = 0,
				["overlay"] = {
					0.333333333333333, -- [1]
					0.333333333333333, -- [2]
					0.333333333333333, -- [3]
				},
			},
			["menu_anchor_down"] = {
				16, -- [1]
				-3, -- [2]
			},
			["bars_grow_direction"] = 1,
			["switch_tank_in_combat"] = false,
			["menu_icons_size"] = 0.850000023841858,
			["grab_on_top"] = false,
			["switch_damager_in_combat"] = false,
			["icon_desaturated"] = false,
			["skin_custom"] = "",
			["auto_current"] = true,
			["bars_sort_direction"] = 1,
			["ignore_mass_showhide"] = false,
			["switch_all_roles_after_wipe"] = false,
			["hide_in_combat"] = false,
			["version"] = 3,
			["attribute_text"] = {
				["enabled"] = true,
				["shadow"] = false,
				["side"] = 1,
				["text_size"] = 12,
				["custom_text"] = "{name}",
				["text_face"] = "Accidental Presidency",
				["anchor"] = {
					-18, -- [1]
					3, -- [2]
				},
				["show_timer"] = true,
				["enable_custom_text"] = false,
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
			},
			["row_show_animation"] = {
				["anim"] = "Fade",
				["options"] = {
				},
			},
			["wallpaper"] = {
				["enabled"] = false,
				["texcoord"] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
					0.7, -- [4]
				},
				["overlay"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["anchor"] = "all",
				["height"] = 114.042518615723,
				["alpha"] = 0.5,
				["width"] = 283.000183105469,
			},
			["total_bar"] = {
				["enabled"] = false,
				["only_in_group"] = true,
				["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["bars_inverted"] = false,
			["row_info"] = {
				["textR_outline"] = false,
				["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
				["textL_outline"] = false,
				["textR_outline_small"] = true,
				["textL_outline_small"] = true,
				["percent_type"] = 1,
				["fixed_text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["space"] = {
					["right"] = 0,
					["left"] = 0,
					["between"] = 0,
				},
				["texture_background_class_color"] = false,
				["textL_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["font_face_file"] = "Interface\\Addons\\Details\\fonts\\Accidental Presidency.ttf",
				["textL_custom_text"] = "{data1}. {data3}{data2}",
				["models"] = {
					["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
					["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
					["upper_alpha"] = 0.5,
					["lower_enabled"] = false,
					["lower_alpha"] = 0.1,
					["upper_enabled"] = false,
				},
				["textL_translit_text"] = false,
				["texture_custom_file"] = "Interface\\",
				["texture_file"] = "Interface\\RaidFrame\\Raid-Bar-Hp-Fill",
				["font_size"] = 16,
				["use_spec_icons"] = true,
				["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
				["icon_grayscale"] = false,
				["backdrop"] = {
					["enabled"] = false,
					["texture"] = "Details BarBorder 2",
					["color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["size"] = 12,
				},
				["textR_bracket"] = "(",
				["textR_enable_custom_text"] = false,
				["textL_enable_custom_text"] = false,
				["fixed_texture_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["textL_show_number"] = true,
				["texture_custom"] = "",
				["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
				["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
				["texture"] = "Blizzard Raid Bar",
				["start_after_icon"] = true,
				["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4_reverse",
				["textL_class_colors"] = false,
				["alpha"] = 1,
				["texture_background"] = "Details D'ictum (reverse)",
				["textR_class_colors"] = false,
				["textR_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["no_icon"] = false,
				["icon_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fixed_texture_background_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.150228589773178, -- [4]
				},
				["font_face"] = "Accidental Presidency",
				["texture_class_colors"] = true,
				["textR_show_data"] = {
					true, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["fast_ps_update"] = false,
				["textR_separator"] = ",",
				["height"] = 21,
			},
			["use_multi_fontstrings"] = true,
			["show_sidebars"] = false,
		}, -- [1]
		{
			["hide_in_combat_type"] = 1,
			["fontstrings_text3_anchor"] = 35,
			["menu_anchor"] = {
				16, -- [1]
				0, -- [2]
				["side"] = 2,
			},
			["bg_r"] = 0.0941176470588235,
			["hide_out_of_combat"] = false,
			["color_buttons"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
			["micro_displays_locked"] = true,
			["fontstrings_width"] = 35,
			["tooltip"] = {
				["n_abilities"] = 3,
				["n_enemies"] = 3,
			},
			["switch_all_roles_in_combat"] = false,
			["clickthrough_toolbaricons"] = false,
			["clickthrough_rows"] = false,
			["switch_tank"] = false,
			["plugins_grow_direction"] = 1,
			["menu_icons"] = {
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				false, -- [6]
				["space"] = -2,
				["shadow"] = false,
			},
			["desaturated_menu"] = false,
			["micro_displays_side"] = 2,
			["window_scale"] = 1,
			["hide_icon"] = true,
			["toolbar_side"] = 1,
			["bg_g"] = 0.0941176470588235,
			["menu_icons_alpha"] = 0.5,
			["bg_b"] = 0.0941176470588235,
			["backdrop_texture"] = "Details Ground",
			["color"] = {
				0.333333333333333, -- [1]
				0.333333333333333, -- [2]
				0.333333333333333, -- [3]
				0, -- [4]
			},
			["hide_on_context"] = {
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [1]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [2]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [3]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [4]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [5]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [6]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [7]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [8]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [9]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [10]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [11]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [12]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [13]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [14]
				{
					["enabled"] = false,
					["inverse"] = false,
					["value"] = 100,
				}, -- [15]
			},
			["skin"] = "Safe Skin Legion Beta",
			["following"] = {
				["enabled"] = false,
				["bar_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["switch_healer"] = false,
			["fontstrings_text2_anchor"] = 70,
			["instance_button_anchor"] = {
				-27, -- [1]
				1, -- [2]
			},
			["name"] = "KokonutKrew",
			["fontstrings_text4_anchor"] = 0,
			["menu_alpha"] = {
				["enabled"] = false,
				["onenter"] = 1,
				["iconstoo"] = true,
				["ignorebars"] = false,
				["onleave"] = 1,
			},
			["switch_healer_in_combat"] = false,
			["auto_hide_menu"] = {
				["left"] = false,
				["right"] = false,
			},
			["switch_damager"] = false,
			["strata"] = "LOW",
			["clickthrough_incombatonly"] = true,
			["show_statusbar"] = false,
			["stretch_button_side"] = 1,
			["hide_in_combat_alpha"] = 0,
			["clickthrough_window"] = false,
			["bg_alpha"] = 0.045324444770813,
			["libwindow"] = {
				["y"] = -43.5391845703125,
				["x"] = 49.14589691162109,
				["point"] = "LEFT",
				["scale"] = 1,
			},
			["statusbar_info"] = {
				["alpha"] = 0,
				["overlay"] = {
					0.333333333333333, -- [1]
					0.333333333333333, -- [2]
					0.333333333333333, -- [3]
				},
			},
			["menu_anchor_down"] = {
				16, -- [1]
				-3, -- [2]
			},
			["bars_grow_direction"] = 1,
			["switch_tank_in_combat"] = false,
			["menu_icons_size"] = 0.850000023841858,
			["grab_on_top"] = false,
			["switch_damager_in_combat"] = false,
			["icon_desaturated"] = false,
			["skin_custom"] = "",
			["auto_current"] = true,
			["bars_sort_direction"] = 1,
			["ignore_mass_showhide"] = false,
			["switch_all_roles_after_wipe"] = false,
			["hide_in_combat"] = false,
			["version"] = 3,
			["attribute_text"] = {
				["show_timer"] = true,
				["shadow"] = false,
				["side"] = 1,
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["custom_text"] = "{name}",
				["text_face"] = "Accidental Presidency",
				["anchor"] = {
					-18, -- [1]
					3, -- [2]
				},
				["enabled"] = true,
				["enable_custom_text"] = false,
				["text_size"] = 12,
			},
			["row_show_animation"] = {
				["anim"] = "Fade",
				["options"] = {
				},
			},
			["wallpaper"] = {
				["enabled"] = false,
				["texcoord"] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
					0.7, -- [4]
				},
				["overlay"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["anchor"] = "all",
				["height"] = 114.042518615723,
				["alpha"] = 0.5,
				["width"] = 283.000183105469,
			},
			["total_bar"] = {
				["enabled"] = false,
				["only_in_group"] = true,
				["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
				["color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["bars_inverted"] = false,
			["row_info"] = {
				["textR_outline"] = false,
				["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
				["textL_outline"] = false,
				["textR_outline_small"] = true,
				["textR_show_data"] = {
					true, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["textL_enable_custom_text"] = false,
				["fixed_text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["space"] = {
					["right"] = 0,
					["left"] = 0,
					["between"] = 0,
				},
				["texture_background_class_color"] = false,
				["textL_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["font_face_file"] = "Fonts\\ARIALN.TTF",
				["textL_custom_text"] = "{data1}. {data3}{data2}",
				["models"] = {
					["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
					["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
					["upper_alpha"] = 0.5,
					["lower_enabled"] = false,
					["lower_alpha"] = 0.1,
					["upper_enabled"] = false,
				},
				["textL_translit_text"] = false,
				["height"] = 10,
				["texture_file"] = "Interface\\RaidFrame\\Raid-Bar-Hp-Fill",
				["font_size"] = 10,
				["textR_bracket"] = "(",
				["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
				["icon_grayscale"] = false,
				["backdrop"] = {
					["enabled"] = false,
					["texture"] = "Details BarBorder 2",
					["color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["size"] = 12,
				},
				["use_spec_icons"] = true,
				["textR_enable_custom_text"] = false,
				["percent_type"] = 1,
				["fixed_texture_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["textL_show_number"] = true,
				["texture_custom"] = "",
				["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
				["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
				["texture"] = "Blizzard Raid Bar",
				["start_after_icon"] = true,
				["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4_reverse",
				["textR_class_colors"] = false,
				["alpha"] = 1,
				["textL_class_colors"] = false,
				["texture_background"] = "Details D'ictum (reverse)",
				["textR_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["no_icon"] = false,
				["icon_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fixed_texture_background_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.150228589773178, -- [4]
				},
				["font_face"] = "Arial Narrow",
				["texture_class_colors"] = true,
				["textL_outline_small"] = true,
				["fast_ps_update"] = false,
				["textR_separator"] = ",",
				["texture_custom_file"] = "Interface\\",
			},
			["use_multi_fontstrings"] = true,
			["show_sidebars"] = false,
		}, -- [2]
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1654671665,
		["last_version"] = 14,
	},
	["combat_counter"] = 12,
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
		["Player-162-0B7B20EE"] = 259,
	},
}
