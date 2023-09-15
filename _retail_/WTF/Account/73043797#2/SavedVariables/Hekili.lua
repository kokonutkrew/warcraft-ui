
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Grapejellie - Emerald Dream"] = "Default",
		["Cherriebomb - Emerald Dream"] = "Default",
		["Grapejellie - Tichondrius"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_259"] = true,
				["forceReloadClassDefaultOptions_20220306_103"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadClassDefaultOptions_20220306_105"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
				["forceReloadClassDefaultOptions_20220306_261"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_104"] = true,
				["forceReloadClassDefaultOptions_20220306_260"] = true,
				["forceReloadClassDefaultOptions_20220306_102"] = true,
			},
			["specs"] = {
				[104] = {
					["settings"] = {
						["catweave_bear"] = false,
						["maul_anyway"] = true,
						["ironfur_damage_threshold"] = 5,
						["mangle_more"] = false,
						["owlweave_bear"] = false,
						["maul_rage"] = 20,
					},
				},
				[103] = {
					["settings"] = {
						["rip_duration"] = 9,
					},
				},
				[259] = {
					["settings"] = {
						["solo_vanish"] = true,
						["mfd_points"] = 3,
						["priority_rotation"] = false,
						["envenom_pool_pct"] = 50,
					},
				},
				[260] = {
					["settings"] = {
						["solo_vanish"] = true,
						["mfd_points"] = 3,
						["ambush_anyway"] = false,
					},
				},
				[261] = {
					["settings"] = {
						["solo_vanish"] = true,
						["mfd_points"] = 3,
						["priority_rotation"] = false,
					},
				},
				[102] = {
					["settings"] = {
						["starlord_cancel"] = false,
						["delay_berserking"] = false,
					},
				},
			},
			["packs"] = {
				["Balance"] = {
					["source"] = "https://balance-simc.github.io/Balance-SimC/md.html?file=balance.txt",
					["builtIn"] = true,
					["date"] = 20230208,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "solar_beam",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "wrath",
								["criteria"] = "time < gcd.max & ( eclipse.any_next || eclipse.lunar_next )",
								["line_cd"] = "5",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & time < 2 * gcd.max & buff.eclipse_lunar.up",
								["line_cd"] = "5",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfall > 1",
								["var_name"] = "is_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "6 / spell_haste + talent.natures_balance.enabled + talent.orbit_breaker.enabled * dot.moonfire.ticking * ( buff.orbit_breaker.stack > ( 27 - 2 * buff.solstice.up ) ) * 40",
								["var_name"] = "passive_asp",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains >= 20 || variable.no_cd_talent || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & ( buff.ca_inc.remains >= 20 || variable.no_cd_talent || boss & fight_remains < 30 )",
								["action"] = "potion",
							}, -- [8]
							{
								["enabled"] = true,
								["slots"] = "trinket1",
								["action"] = "trinket1",
								["criteria"] = "variable.on_use_trinket != 1 & ! trinket.t2.ready_cooldown || ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
							}, -- [9]
							{
								["enabled"] = true,
								["slots"] = "trinket2",
								["action"] = "trinket2",
								["criteria"] = "variable.on_use_trinket != 2 & ! trinket.t1.ready_cooldown || variable.on_use_trinket = 2 & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "variable.is_aoe",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "st",
							}, -- [13]
						},
						["precombat"] = {
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mark_of_the_wild",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.celestial_alignment.enabled & ! talent.incarnation_chosen_of_elune.enabled || druid.no_cds",
								["var_name"] = "no_cd_talent",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.umbral_intensity.rank = 2",
								["var_name"] = "solar_eclipse_st",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "on_use_trinket",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff & trinket.t1.cooldown.duration",
								["var_name"] = "on_use_trinket",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "( trinket.t2.has_use_buff & trinket.t2.cooldown.duration ) * 2",
								["var_name"] = "on_use_trinket",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
							}, -- [8]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "! boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 6 - ( spell_targets / 2 ) & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( cooldown.ca_inc.remains < 5 & ! buff.ca_inc.up & ( target.time_to_die > 10 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled ) )",
								["var_name"] = "cd_condition_aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe & set_bonus.tier29_4pc & eclipse.any_next",
								["action"] = "wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + 8 & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank ) & variable.cd_condition_aoe",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe & ( talent.orbital_strike.enabled & astral_power.deficit < variable.passive_asp + 8 * spell_targets || buff.touch_the_cosmos.up ) || astral_power.deficit < ( variable.passive_asp + 8 + 12 * ( buff.eclipse_lunar.remains < 4 || buff.eclipse_solar.remains < 4 ) )",
								["action"] = "starfall",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "celestial_alignment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "incarnation",
							}, -- [9]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.any_next || buff.eclipse_lunar.up & buff.eclipse_lunar.remains < action.wrath.execute_time",
								["action"] = "wrath",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( ! talent.fungal_growth.enabled || ! talent.waning_twilight.enabled || dot.fungal_growth.remains < 2 & target.time_to_die > 7 & ! prev_gcd.1.wild_mushroom )",
								["action"] = "wild_mushroom",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 8 & target.time_to_die > 2",
								["action"] = "fury_of_elune",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 4 & ( buff.starweavers_warp.up || talent.starlord.enabled & buff.starlord.stack < 3 )",
								["action"] = "starfall",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( buff.gathering_starstuff.stack = 3 || buff.umbral_embrace.up ) & astral_power.deficit > variable.passive_asp + ( 8 * ( 1 + 0.4 * buff.warrior_of_elune.up ) )",
								["action"] = "starfire",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up & spell_targets.starfire < 3",
								["action"] = "starsurge",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + 8 & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank )",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 50",
								["action"] = "astral_communion",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "astral_power < 50 & spell_targets.starfall < 3 + talent.elunes_guidance.enabled & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["action"] = "convoke_the_spirits",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up & spell_targets.starfire < 17",
								["action"] = "starsurge",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets > 1",
								["action"] = "starfire",
							}, -- [25]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [27]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.is_aoe",
								["action"] = "starfall",
							}, -- [1]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.moonfire.remains > remains * 22 / 18",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["action"] = "moonfire",
								["enabled"] = true,
							}, -- [4]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8 & remains < 2 & ( target.time_to_die - remains ) > 8",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( cooldown.ca_inc.remains < 15 & ! buff.ca_inc.up & ( target.time_to_die > 15 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled ) )",
								["var_name"] = "cd_condition_st",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st & set_bonus.tier29_4pc & eclipse.any_next || fight_remains > 10 & ( target.time_to_die <= 2 & astral_power.deficit > 20 || target.time_to_die <= 5 & buff.primordial_arcanic_pulsar.value >= 550 )",
								["action"] = "wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st & buff.touch_the_cosmos.up || buff.primordial_arcanic_pulsar.value >= 560 & buff.starweavers_weft.up",
								["action"] = "starsurge",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_arcanic_pulsar.value >= 550 & ! buff.ca_inc.up",
								["action"] = "starfall",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "celestial_alignment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "incarnation",
							}, -- [9]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "eclipse.any_next || buff.eclipse_lunar.up & ( buff.eclipse_lunar.remains < action.wrath.execute_time ) || buff.eclipse_solar.up & ( buff.eclipse_solar.remains < action.wrath.execute_time )",
								["var_name"] = "enter_eclipse",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_eclipse & variable.solar_eclipse_st",
								["action"] = "starfire",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_eclipse",
								["action"] = "wrath",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.ca_inc.remains > 4 || ( cooldown.ca_inc.remains > 30 || variable.no_cd_talent ) & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["var_name"] = "convoke_condition",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "action.convoke_the_spirits.known & cooldown.convoke_the_spirits.ready & variable.convoke_condition",
								["action"] = "starsurge",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "variable.convoke_condition",
								["action"] = "convoke_the_spirits",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 55",
								["action"] = "astral_communion",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 8 & target.time_to_die > 2",
								["action"] = "fury_of_elune",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_warp.up & ! buff.touch_the_cosmos.up",
								["action"] = "starfall",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.starlord.enabled & buff.starlord.stack < 3 || talent.rattle_the_stars.enabled & buff.rattled_stars.up & buff.rattled_stars.remains < gcd.max",
								["action"] = "starsurge",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up || astral_power.deficit < variable.passive_asp + ( 8 * ( 1 + 0.5 * talent.soul_of_the_forest.enabled * buff.eclipse_solar.up ) ) || talent.astral_communion.enabled & cooldown.astral_communion.remains < 3 || boss & fight_remains < 5",
								["action"] = "starsurge",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > ( full_recharge_time - 7 ) || boss & fight_remains < 10",
								["action"] = "wild_mushroom",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.in_lunar & buff.umbral_embrace.react || buff.eclipse_lunar.up & buff.warrior_of_elune.up",
								["action"] = "starfire",
							}, -- [30]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [31]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [32]
						},
					},
					["version"] = 20230208,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 6: Converted 'talent.natures_balance' to 'talent.natures_balance.enabled' (1x).\nLine 6: Converted 'talent.orbit_breaker' to 'talent.orbit_breaker.enabled' (1x).\nLine 6: Converted operations in '6%spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40' to '6/spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40'.\nLine 9: Converted 'trinket.2.ready_cooldown' to 'trinket.t2.ready_cooldown' (1x).\nLine 10: Converted 'trinket.1.ready_cooldown' to 'trinket.t1.ready_cooldown' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.celestial_alignment' to 'talent.celestial_alignment.enabled' (1x).\nLine 3: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\n\nThe import for 'aoe' required some automated changes.\nLine 2: Converted operations in 'refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+3' to 'refreshable&(target.time_to_die-remains)>6-(spell_targets/2)&astral_power.deficit>variable.passive_asp+3'.\nLine 4: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 7: Converted 'talent.orbital_strike' to 'talent.orbital_strike.enabled' (1x).\nLine 12: Converted 'talent.fungal_growth' to 'talent.fungal_growth.enabled' (1x).\nLine 12: Converted 'talent.waning_twilight' to 'talent.waning_twilight.enabled' (1x).\nLine 15: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 20: Converted 'talent.elunes_guidance' to 'talent.elunes_guidance.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 3: Converted operations in 'dot.moonfire.remains>remains*22%18' to 'dot.moonfire.remains>remains*22/18'.\n\nThe import for 'st' required some automated changes.\nLine 4: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 21: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 21: Converted 'talent.rattle_the_stars' to 'talent.rattle_the_stars.enabled' (1x).\nLine 28: Converted 'talent.soul_of_the_forest' to 'talent.soul_of_the_forest.enabled' (1x).\nLine 28: Converted 'talent.astral_communion' to 'talent.astral_communion.enabled' (1x).\n\nImported 5 action lists.\n",
					["spec"] = 102,
					["profile"] = "actions.precombat+=/moonkin_form\nactions.precombat+=/mark_of_the_wild\nactions.precombat+=/variable,name=no_cd_talent,value=!talent.celestial_alignment&!talent.incarnation_chosen_of_elune||druid.no_cds\nactions.precombat+=/variable,name=solar_eclipse_st,value=talent.umbral_intensity.rank=2\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=trinket.1.has_use_buff&trinket.1.cooldown.duration\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=(trinket.2.has_use_buff&trinket.2.cooldown.duration)*2\nactions.precombat+=/wrath,if=(eclipse.any_next||eclipse.lunar_next)\n\n# Executed every time the actor is available.\nactions+=/solar_beam\nactions+=/soothe\nactions+=/wrath,if=time<gcd.max&(eclipse.any_next||eclipse.lunar_next),line_cd=5\nactions+=/stellar_flare,if=refreshable&time<2*gcd.max&buff.eclipse_lunar.up,line_cd=5\nactions+=/variable,name=is_aoe,value=spell_targets.starfall>1\nactions+=/variable,name=passive_asp,value=6%spell_haste+talent.natures_balance+talent.orbit_breaker*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40\nactions+=/berserking,if=buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<15\nactions+=/potion,if=!druid.no_cds&(buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<30)\nactions+=/use_items,slots=trinket1,if=variable.on_use_trinket!=1&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items,slots=trinket2,if=variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items\nactions+=/run_action_list,name=aoe,if=variable.is_aoe\nactions+=/run_action_list,name=st\n\nactions.aoe+=/moonfire,cycle_targets=1,if=!boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/sunfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/moonfire,cycle_targets=1,if=boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/variable,name=cd_condition_aoe,value=!druid.no_cds&(cooldown.ca_inc.remains<5&!buff.ca_inc.up&(target.time_to_die>10||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.aoe+=/wrath,if=variable.cd_condition_aoe&set_bonus.tier29_4pc&eclipse.any_next\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+8&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)&variable.cd_condition_aoe\nactions.aoe+=/starfall,if=variable.cd_condition_aoe&(talent.orbital_strike&astral_power.deficit<variable.passive_asp+8*spell_targets||buff.touch_the_cosmos.up)||astral_power.deficit<(variable.passive_asp+8+12*(buff.eclipse_lunar.remains<4||buff.eclipse_solar.remains<4))\nactions.aoe+=/celestial_alignment,if=variable.cd_condition_aoe\nactions.aoe+=/incarnation,if=variable.cd_condition_aoe\nactions.aoe+=/warrior_of_elune\nactions.aoe+=/wrath,if=eclipse.any_next||buff.eclipse_lunar.up&buff.eclipse_lunar.remains<action.wrath.execute_time\nactions.aoe+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+20&(!talent.fungal_growth||!talent.waning_twilight||dot.fungal_growth.remains<2&target.time_to_die>7&!prev_gcd.1.wild_mushroom)\nactions.aoe+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8&target.time_to_die>2\nactions.aoe+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/starfall,if=target.time_to_die>4&(buff.starweavers_warp.up||talent.starlord&buff.starlord.stack<3)\nactions.aoe+=/starfire,if=(buff.gathering_starstuff.stack=3||buff.umbral_embrace.up)&astral_power.deficit>variable.passive_asp+(8*(1+0.4*buff.warrior_of_elune.up))\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<3\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+8&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)\nactions.aoe+=/astral_communion,if=astral_power.deficit>variable.passive_asp+50\nactions.aoe+=/convoke_the_spirits,if=astral_power<50&spell_targets.starfall<3+talent.elunes_guidance&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.aoe+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.aoe+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<17\nactions.aoe+=/starfire,if=spell_targets>1\nactions.aoe+=/wrath\nactions.aoe+=/run_action_list,name=fallthru\n\nactions.fallthru=starfall,if=variable.is_aoe\nactions.fallthru+=/starsurge\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8&remains<2&(target.time_to_die-remains)>8\nactions.st+=/variable,name=cd_condition_st,value=!druid.no_cds&(cooldown.ca_inc.remains<15&!buff.ca_inc.up&(target.time_to_die>15||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.st+=/wrath,if=variable.cd_condition_st&set_bonus.tier29_4pc&eclipse.any_next||fight_remains>10&(target.time_to_die<=2&astral_power.deficit>20||target.time_to_die<=5&buff.primordial_arcanic_pulsar.value>=550)\nactions.st+=/starsurge,if=variable.cd_condition_st&buff.touch_the_cosmos.up||buff.primordial_arcanic_pulsar.value>=560&buff.starweavers_weft.up\nactions.st+=/starfall,if=buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up\nactions.st+=/celestial_alignment,if=variable.cd_condition_st\nactions.st+=/incarnation,if=variable.cd_condition_st\nactions.st+=/warrior_of_elune\nactions.st+=/variable,name=enter_eclipse,value=eclipse.any_next||buff.eclipse_lunar.up&(buff.eclipse_lunar.remains<action.wrath.execute_time)||buff.eclipse_solar.up&(buff.eclipse_solar.remains<action.wrath.execute_time)\nactions.st+=/starfire,if=variable.enter_eclipse&variable.solar_eclipse_st\nactions.st+=/wrath,if=variable.enter_eclipse\nactions.st+=/variable,name=convoke_condition,value=buff.ca_inc.remains>4||(cooldown.ca_inc.remains>30||variable.no_cd_talent)&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.st+=/starsurge,if=action.convoke_the_spirits.known&cooldown.convoke_the_spirits.ready&variable.convoke_condition\nactions.st+=/convoke_the_spirits,if=variable.convoke_condition\nactions.st+=/astral_communion,if=astral_power.deficit>variable.passive_asp+55\nactions.st+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.st+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8&target.time_to_die>2\nactions.st+=/starfall,if=buff.starweavers_warp.up&!buff.touch_the_cosmos.up\nactions.st+=/starsurge,if=talent.starlord&buff.starlord.stack<3||talent.rattle_the_stars&buff.rattled_stars.up&buff.rattled_stars.remains<gcd.max\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8\nactions.st+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.st+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/starsurge,if=buff.starweavers_weft.up||astral_power.deficit<variable.passive_asp+(8*(1+0.5*talent.soul_of_the_forest*buff.eclipse_solar.up))||talent.astral_communion&cooldown.astral_communion.remains<3||boss&fight_remains<5\nactions.st+=/wild_mushroom,if=target.time_to_die>(full_recharge_time-7)||boss&fight_remains<10\nactions.st+=/starfire,if=eclipse.in_lunar&buff.umbral_embrace.react||buff.eclipse_lunar.up&buff.warrior_of_elune.up\nactions.st+=/wrath\nactions.st+=/run_action_list,name=fallthru",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230209,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ( ! ticking & time_to_die > 12 ) || ( refreshable & time_to_die > 12 ) ) & active_enemies < 8",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "barkskin",
							}, -- [2]
							{
								["action"] = "bristling_fur",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "incarnation",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & cooldown.incarnation_guardian_of_ursoc.remains > 60 || buff.incarnation_guardian_of_ursoc.up || talent.convoke_the_spirits.enabled",
								["action"] = "rage_of_the_sleeper",
							}, -- [7]
							{
								["action"] = "lunar_beam",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up )",
								["action"] = "berserking",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & active_enemies <= 6 & variable.maul_build = 1",
								["action"] = "maul",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & variable.maul_build = 1",
								["action"] = "raze",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "tanking & variable.maul_build = 1 & ( ! buff.ironfur.up || rage > 90 )",
								["action"] = "ironfur",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "rage > 90 & variable.if_build = 1 || ( buff.incarnation.up || buff.berserk_bear.up ) & rage > 20 & variable.if_build = 1",
								["action"] = "ironfur",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & buff.galactic_guardian.remains <= gcd.max + 0.5",
								["action"] = "moonfire",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.gore.up & active_enemies < 11 || buff.vicious_cycle_mangle.stack = 3",
								["action"] = "mangle",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.incarnation.up || buff.berserk_bear.up ) & active_enemies <= 5 & ( buff.tooth_and_claw.stack >= 2 ) ) & variable.maul_build = 1 & ! talent.thorns_of_iron.enabled",
								["action"] = "maul",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.incarnation.up || buff.berserk_bear.up ) & ( buff.tooth_and_claw.stack >= 2 ) ) & variable.maul_build = 1 & ! talent.thorns_of_iron.enabled",
								["action"] = "raze",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || dot.thrash_bear.stack < 3 || active_enemies >= 5",
								["action"] = "thrash_bear",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 10 & settings.mangle_more",
								["action"] = "mangle",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & active_enemies >= 11",
								["action"] = "swipe_bear",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.tooth_and_claw.up & active_enemies <= 5 )",
								["action"] = "maul",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 5 & buff.vicious_cycle_maul.stack >= 3 || active_enemies < 4 & ! talent.vicious_cycle_maul.enabled & variable.maul_build = 1 & ! talent.thorns_of_iron.enabled",
								["action"] = "maul",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( buff.tooth_and_claw.up )",
								["action"] = "raze",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.vicious_cycle_maul.stack >= 3 || ! talent.vicious_cycle_maul.enabled & variable.maul_build = 1 & ! talent.thorns_of_iron.enabled",
								["action"] = "raze",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.up & active_enemies <= 4 ) || ( buff.incarnation.up & talent.soul_of_the_forest.enabled & active_enemies <= 5 ) || ( ( rage < 90 ) & active_enemies < 11 ) || ( ( rage < 85 ) & active_enemies < 11 & talent.soul_of_the_forest.enabled )",
								["action"] = "mangle",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thrash_bear",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack > 2",
								["action"] = "pulverize",
							}, -- [27]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [28]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [29]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "skull_bash",
								["description"] = "Executed every time the actor is available.",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up ) || ( ( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up ) & ( ! druid.catweave_bear & ! druid.owlweave_bear ) ) )",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "! tanking & druid.catweave_bear & buff.tooth_and_claw.remains < 1.5 & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down ) & ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= gcd.max + 0.5 ) || ( buff.cat_form.up & energy > 25 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 ) || ( ( talent.heart_of_the_wild.enabled & cooldown.heart_of_the_wild.ready || buff.heart_of_the_wild.up ) & energy > 90 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 )",
								["list_name"] = "catweave",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "! tanking & druid.owlweave_bear & buff.tooth_and_claw.remains < 1.5 & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & cooldown.starsurge.up )",
								["list_name"] = "owlweave",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bear_form.up",
								["action"] = "bear_form",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [10]
						},
						["catweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up",
								["action"] = "rake",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.refreshable || energy < 45",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.rip.refreshable & combo_points >= 1",
								["action"] = "rip",
							}, -- [6]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4 & energy > 50",
								["action"] = "ferocious_bite",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points <= 5",
								["action"] = "shred",
							}, -- [9]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "tanking & incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < 3 * haste",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "renewal",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "frenzied_regeneration",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! druid.catweave_bear & ! druid.owlweave_bear ) || active_enemies >= 2",
								["action"] = "empower_bond",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 75 & incoming_damage_5s > 0.1 * health.max",
								["action"] = "barkskin",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [7]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "if_build",
								["value"] = "1",
								["value_else"] = "0",
								["criteria"] = "talent.layered_mane.enabled & talent.reinforced_fur.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "maul_build",
								["value"] = "1",
								["value_else"] = "0",
								["criteria"] = "settings.maul_anyway || ( ! talent.layered_mane.enabled & ! talent.reinforced_fur.enabled )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "mark_of_the_wild",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( druid.catweave_bear & buff.cat_form.up || druid.owlweave_bear & buff.moonkin_form.up )",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & druid.catweave_bear",
								["action"] = "prowl",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.any_form.up || ! druid.owlweave_bear & ! druid.catweave_bear & ! action.convoke_the_spirits.known",
								["action"] = "bear_form",
							}, -- [6]
						},
						["cconvoke"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [3]
						},
						["owlweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & buff.galactic_guardian.remains <= gcd.max + 1",
								["action"] = "moonfire",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.sunfire.refreshable",
								["action"] = "sunfire",
							}, -- [3]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["version"] = 20230209,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 6: Converted 'talent.heart_of_the_wild' to 'talent.heart_of_the_wild.enabled' (1x).\n\nImported 7 action lists.\n",
					["spec"] = 104,
					["profile"] = "actions.precombat+=/variable,name=if_build,value=1,value_else=0,if=talent.layered_mane.enabled&talent.reinforced_fur.enabled\nactions.precombat+=/variable,name=maul_build,value=1,value_else=0,if=settings.maul_anyway||(!talent.layered_mane.enabled&!talent.reinforced_fur.enabled)\nactions.precombat+=/mark_of_the_wild,if=!buff.prowl.up\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up)\nactions.precombat+=/prowl,if=buff.cat_form.up&druid.catweave_bear\nactions.precombat+=/bear_form,if=!buff.any_form.up||!druid.owlweave_bear&!druid.catweave_bear&!action.convoke_the_spirits.known\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up\nactions+=/soothe\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/potion,if=((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\nactions+=/run_action_list,name=catweave,if=!tanking&druid.catweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down)&(cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=gcd+0.5)||(buff.cat_form.up&energy>25&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)||((talent.heart_of_the_wild&cooldown.heart_of_the_wild.ready||buff.heart_of_the_wild.up)&energy>90&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)\nactions+=/run_action_list,name=owlweave,if=!tanking&druid.owlweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&cooldown.starsurge.up)\nactions+=/bear_form,if=!buff.bear_form.up\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear+=/moonfire,cycle_targets=1,if=((!ticking&time_to_die>12)||(refreshable&time_to_die>12))&active_enemies<8\nactions.bear+=/barkskin,if=buff.bear_form.up\nactions.bear+=/bristling_fur\nactions.bear+=/convoke_the_spirits\nactions.bear+=/berserk_bear\nactions.bear+=/incarnation\nactions.bear+=/rage_of_the_sleeper,if=buff.incarnation_guardian_of_ursoc.down&cooldown.incarnation_guardian_of_ursoc.remains>60||buff.incarnation_guardian_of_ursoc.up||talent.convoke_the_spirits.enabled\nactions.bear+=/lunar_beam\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/maul,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&active_enemies<=6&variable.maul_build=1\nactions.bear+=/raze,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&variable.maul_build=1\nactions.bear+=/ironfur,cycle_targets=1,if=tanking&variable.maul_build=1&(!buff.ironfur.up||rage>90)\nactions.bear+=/ironfur,if=rage>90&variable.if_build=1||(buff.incarnation.up||buff.berserk_bear.up)&rage>20&variable.if_build=1\nactions.bear+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+0.5\nactions.bear+=/mangle,if=buff.gore.up&active_enemies<11||buff.vicious_cycle_mangle.stack=3\nactions.bear+=/maul,if=((buff.incarnation.up||buff.berserk_bear.up)&active_enemies<=5&(buff.tooth_and_claw.stack>=2))&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/raze,if=((buff.incarnation.up||buff.berserk_bear.up)&(buff.tooth_and_claw.stack>=2))&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/thrash_bear,cycle_targets=1,if=refreshable||dot.thrash_bear.stack<3||active_enemies>=5\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=11\nactions.bear+=/maul,if=(buff.tooth_and_claw.up&active_enemies<=5)\nactions.bear+=/maul,if=active_enemies<=5&buff.vicious_cycle_maul.stack>=3||active_enemies<4&!talent.vicious_cycle_maul.enabled&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/raze,if=(buff.tooth_and_claw.up)\nactions.bear+=/raze,if=buff.vicious_cycle_maul.stack>=3||!talent.vicious_cycle_maul.enabled&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/mangle,if=(buff.incarnation.up&active_enemies<=4)||(buff.incarnation.up&talent.soul_of_the_forest.enabled&active_enemies<=5)||((rage<90)&active_enemies<11)||((rage<85)&active_enemies<11&talent.soul_of_the_forest.enabled)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/pulverize,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/swipe_bear\n\nactions.catweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/rake,if=dot.rake.refreshable||energy<45\nactions.catweave+=/rip,if=dot.rip.refreshable&combo_points>=1\nactions.catweave+=/convoke_the_spirits\nactions.catweave+=/ferocious_bite,if=combo_points>=4&energy>50\nactions.catweave+=/shred,if=combo_points<=5\n\nactions.cconvoke+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.cconvoke+=/cat_form,if=!buff.cat_form.up\nactions.cconvoke+=/convoke_the_spirits\n\nactions.mitigation=ironfur,if=tanking&incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/regrowth,if=health.pct<65\nactions.mitigation+=/renewal,if=health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/empower_bond,if=(!druid.catweave_bear&!druid.owlweave_bear)||active_enemies>=2\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.owlweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.owlweave+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+1\nactions.owlweave+=/sunfire,if=dot.sunfire.refreshable\nactions.owlweave+=/starsurge",
				},
				["Assassination"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230111,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["stealthed"] = {
							{
								["enabled"] = true,
								["description"] = "Stealthed Actions",
								["criteria"] = "spell_targets.fan_of_knives > desired_targets || spell_targets.fan_of_knives > 1 & raid_event.adds.in > 60",
								["action"] = "indiscriminate_carnage",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "garrote",
								["cycle_targets"] = 1,
								["criteria"] = "stealthed.improved_garrote & ! will_lose_exsanguinate & ( remains < 12 / exsanguinated_rate || pmultiplier <= 1 ) & target.time_to_die - remains > 2",
								["description"] = "Improved Garrote: Apply or Refresh with buffed Garrotes",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Improved Garrote + Exsg on 1T: Refresh Garrote at the end of stealth to get max duration before Exsanguinate",
								["criteria"] = "talent.exsanguinate.enabled & stealthed.improved_garrote & active_enemies = 1 & ! will_lose_exsanguinate & improved_garrote_remains < 1.3",
								["action"] = "garrote",
							}, -- [3]
						},
						["vanish"] = {
							{
								["enabled"] = true,
								["description"] = "Stealth Cooldowns  Vanish Sync for Improved Garrote with Deathmark",
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & ( dot.garrote.pmultiplier <= 1 || dot.garrote.refreshable ) & ( debuff.deathmark.up || cooldown.deathmark.remains < 4 ) & combo_points.deficit >= ( spell_targets.fan_of_knives >? 4 )",
								["action"] = "vanish",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Vanish for Indiscriminate Carnage or Improved Garrote at 2-3+ targets",
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & ( dot.garrote.pmultiplier <= 1 || dot.garrote.refreshable ) & spell_targets.fan_of_knives > ( 3 - talent.indiscriminate_carnage.enabled ) & ( ! talent.indiscriminate_carnage.enabled || cooldown.indiscriminate_carnage.ready )",
								["action"] = "vanish",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Vanish with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.",
								["criteria"] = "! talent.improved_garrote.enabled & talent.master_assassin.enabled & ! dot.rupture.refreshable & dot.garrote.remains > 3 & debuff.deathmark.up & ( debuff.shiv.up || debuff.deathmark.remains < 4 || dot.sepsis.ticking ) & dot.sepsis.remains < 3",
								["action"] = "vanish",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & dot.garrote.pmultiplier <= 1 & ( debuff.deathmark.up || cooldown.deathmark.remains < 4 || cooldown.deathmark.remains > 60 ) & combo_points.deficit >= ( spell_targets.fan_of_knives >? 4 )",
								["action"] = "shadow_dance",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Shadow Dance for Improved Garrote with Deathmark",
								["criteria"] = "talent.improved_garrote.enabled & cooldown.garrote.up & ! debuff.garrote.exsanguinated & ( dot.garrote.pmultiplier <= 1 || dot.garrote.refreshable ) & ( debuff.deathmark.up || cooldown.deathmark.remains < 12 || cooldown.deathmark.remains > 60 ) & combo_points.deficit >= ( spell_targets.fan_of_knives >? 4 )",
								["action"] = "shadow_dance",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Shadow Dance with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.",
								["criteria"] = "! talent.improved_garrote.enabled & talent.master_assassin.enabled & ! dot.rupture.refreshable & dot.garrote.remains > 3 & ( debuff.deathmark.up || cooldown.deathmark.remains > 60 ) & ( debuff.shiv.up || debuff.deathmark.remains < 4 || dot.sepsis.ticking ) & dot.sepsis.remains < 3",
								["action"] = "shadow_dance",
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Restealth if possible (no vulnerable enemies in combat)",
								["action"] = "stealth",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Interrupt on cooldown to allow simming interactions with that",
								["criteria"] = "! stealthed.all",
								["action"] = "kick",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.fan_of_knives < 2",
								["var_name"] = "single_target",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "energy.regen_combined > 35",
								["description"] = "Combined Energy Regen needed to saturate",
								["var_name"] = "regen_saturated",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Next Exsanguinate cooldown time based on Deathmark syncing logic and remaining fight duration",
								["criteria"] = "cooldown.deathmark.remains > cooldown.exsanguinate.remains & cooldown.deathmark.remains < fight_remains",
								["value"] = "cooldown.deathmark.remains",
								["action"] = "variable",
								["value_else"] = "cooldown.exsanguinate.remains",
								["var_name"] = "exsang_sync_remains",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "stealthed.rogue || stealthed.improved_garrote",
								["action"] = "call_action_list",
								["list_name"] = "stealthed",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Put SnD up initially for Cut to the Chase, refresh with Envenom if at low duration",
								["criteria"] = "! buff.slice_and_dice.up & combo_points >= 2 || ! talent.cut_to_the_chase.enabled & refreshable & combo_points >= 4",
								["action"] = "slice_and_dice",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.cut_to_the_chase.enabled & buff.slice_and_dice.up & buff.slice_and_dice.remains < 5 & combo_points >= 4",
								["action"] = "envenom",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "dot",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "direct",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 15 + energy.regen_combined",
								["action"] = "arcane_torrent",
							}, -- [12]
							{
								["action"] = "arcane_pulse",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [15]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Executed before combat begins. Accepts non-harmful actions only.",
								["action"] = "apply_poison",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["criteria"] = "raid_event.adds.in > 15",
								["precombat_seconds"] = "10",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "trinket_sync_slot",
								["criteria"] = "trinket.t1.has_stat.any_dps & ( ! trinket.t2.has_stat.any_dps || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration )",
								["description"] = "Determine which (if any) stat buff trinket we want to attempt to sync with Deathmark.",
								["value"] = "1",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_stat.any_dps & ( ! trinket.t1.has_stat.any_dps || trinket.t2.cooldown.duration > trinket.t1.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cp_max_spend <? ( talent.resounding_clarity.enabled * 7 )",
								["description"] = "Determine if we should be be casting our pre-Exsanguinate Rupture with Echoing Reprimand CP",
								["var_name"] = "exsanguinate_rupture_cp",
							}, -- [5]
							{
								["action"] = "stealth",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["criteria"] = "refreshable",
								["precombat_seconds"] = "1",
							}, -- [7]
						},
						["direct"] = {
							{
								["enabled"] = true,
								["description"] = "Direct damage abilities  Envenom at 4+ (5+ with DS) CP. Immediately on 2+ targets, with Deathmark, or with TB, otherwise wait for some energy. Also wait if Exsg combo is coming up.",
								["criteria"] = "effective_combo_points >= 4 + talent.deeper_stratagem.enabled & ( debuff.deathmark.up || debuff.shiv.up || debuff.amplifying_poison.stack >= 10 || energy.deficit <= 25 + energy.regen_combined || ! variable.single_target || effective_combo_points > cp_max_spend ) & ( ! talent.exsanguinate.enabled || variable.exsang_sync_remains > 2 || talent.resounding_clarity.enabled & ( cooldown.echoing_reprimand.ready & combo_points > 2 || effective_combo_points > 5 ) )",
								["action"] = "envenom",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points.deficit > 1 || energy.deficit <= 25 + energy.regen_combined || ! variable.single_target",
								["var_name"] = "use_filler",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Apply SBS to all targets without a debuff as priority, preferring targets dying sooner after the primary target",
								["criteria"] = "variable.use_filler & ! dot.serrated_bone_spike_dot.ticking",
								["action"] = "serrated_bone_spike",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "serrated_bone_spike",
								["criteria"] = "variable.use_filler & ! dot.serrated_bone_spike_dot.ticking",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Keep from capping charges or burn at the end of fights",
								["criteria"] = "variable.use_filler & master_assassin_remains < 0.8 & ( boss & fight_remains <= 5 || cooldown.serrated_bone_spike.max_charges - charges_fractional <= 0.25 )",
								["action"] = "serrated_bone_spike",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "When MA is not at high duration, sync with Shiv",
								["criteria"] = "variable.use_filler & master_assassin_remains < 0.8 & ! variable.single_target & debuff.shiv.up",
								["action"] = "serrated_bone_spike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.exsanguinate.enabled || ! talent.resounding_clarity.enabled ) & variable.use_filler & cooldown.deathmark.remains > 10 || boss & fight_remains < 20",
								["action"] = "echoing_reprimand",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Fan of Knives at 3+ targets or 4+ with DTB",
								["criteria"] = "variable.use_filler & ( ! priority_rotation & spell_targets.fan_of_knives >= 3 + stealthed.rogue + talent.dragontempered_blades.enabled )",
								["action"] = "fan_of_knives",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "fan_of_knives",
								["cycle_targets"] = 1,
								["criteria"] = "variable.use_filler & spell_targets.fan_of_knives >= 3 & ! dot.deadly_poison_dot.ticking & ( ! priority_rotation || dot.garrote.ticking || dot.rupture.ticking )",
								["description"] = "Fan of Knives to apply poisons if inactive on any target (or any bleeding targets with priority rotation) at 3T",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.use_filler",
								["action"] = "ambush",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "mutilate",
								["cycle_targets"] = 1,
								["criteria"] = "! dot.deadly_poison_dot.ticking & ! debuff.amplifying_poison.up & variable.use_filler & spell_targets.fan_of_knives = 2",
								["description"] = "Tab-Mutilate to apply Deadly Poison at 2 targets",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.use_filler",
								["action"] = "mutilate",
							}, -- [12]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["line_cd"] = "1.5",
								["cycle_targets"] = 1,
								["criteria"] = "raid_event.adds.up & ( ! variable.single_target || boss & fight_remains < 30 ) & ( target.time_to_die < combo_points.deficit * 1.5 || combo_points.deficit >= cp_max_spend )",
								["description"] = "Cooldowns  If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "If no adds will die within the next 30s, use MfD for max CP.",
								["criteria"] = "raid_event.adds.in > 30 - raid_event.adds.duration & combo_points.deficit >= cp_max_spend",
								["action"] = "marked_for_death",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.exsanguinate.enabled || cooldown.exsanguinate.remains > 15 || debuff.rupture.exsanguinated || debuff.garrote.exsanguinated",
								["description"] = "Sync Deathmark window with Exsanguinate if applicable",
								["var_name"] = "deathmark_exsanguinate_condition",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.master_assassin.enabled || dot.garrote.ticking",
								["description"] = "Wait on Deathmark for Garrote with MA",
								["var_name"] = "deathmark_ma_condition",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.rogue & dot.garrote.ticking & ( target.time_to_die > 10 || boss & fight_remains < 10 )",
								["action"] = "sepsis",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! stealthed.rogue & dot.rupture.ticking & ! debuff.deathmark.up & variable.deathmark_exsanguinate_condition & variable.deathmark_ma_condition",
								["description"] = "Deathmark to be used if not stealthed, Rupture is up, and all other talent conditions are satisfied",
								["var_name"] = "deathmark_condition",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( variable.trinket_sync_slot = 1 & ( debuff.deathmark.up || boss & fight_remains <= 20 ) || ( variable.trinket_sync_slot = 2 & ( ! trinket.t2.cooldown.ready || ! debuff.deathmark.up & cooldown.deathmark.remains > 20 ) ) || ! variable.trinket_sync_slot )",
								["description"] = "Sync the priority stat buff trinket with Deathmark, otherwise use on cooldown",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( variable.trinket_sync_slot = 2 & ( debuff.deathmark.up || boss & fight_remains <= 20 ) || ( variable.trinket_sync_slot = 1 & ( ! trinket.t1.cooldown.ready || ! debuff.deathmark.up & cooldown.deathmark.remains > 20 ) ) || ! variable.trinket_sync_slot )",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.deathmark_condition",
								["action"] = "deathmark",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.shiv.up || cooldown.shiv.remains < 6 ) & buff.envenom.up & ( cooldown.deathmark.remains >= 50 || dot.deathmark.ticking )",
								["action"] = "kingsbane",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.exsanguinate.enabled & ! stealthed.rogue & ! stealthed.improved_garrote & ! dot.deathmark.ticking & target.time_to_die > variable.exsang_sync_remains + 4 & variable.exsang_sync_remains < 4",
								["description"] = "Exsanguinate when not stealthed and both Rupture and Garrote are up for long enough. Attempt to sync with Deathmark and also Echoing Reprimand if using Resounding Clarity.",
								["var_name"] = "exsanguinate_condition",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.exsanguinate.enabled & talent.resounding_clarity.enabled & ( variable.exsanguinate_condition & combo_points <= 2 & variable.exsang_sync_remains <= 2 & ! dot.garrote.refreshable & dot.rupture.remains > 9.6 || variable.exsang_sync_remains > 40 )",
								["action"] = "echoing_reprimand",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.exsanguinate_condition & ( ! dot.garrote.refreshable & dot.rupture.remains > 4 + 4 * variable.exsanguinate_rupture_cp || dot.rupture.remains * 0.5 > target.time_to_die )",
								["action"] = "exsanguinate",
							}, -- [13]
							{
								["enabled"] = true,
								["description"] = "Shiv if DoTs are up, Always Shiv with Kingsbane, otherwise attempt to sync with Sepsis or Deathmark if we won't waste more than half Shiv's cooldown",
								["criteria"] = "talent.kingsbane.enabled & ! debuff.shiv.up & dot.kingsbane.ticking & dot.garrote.ticking & dot.rupture.ticking & ( ! talent.crimson_tempest.enabled || variable.single_target || dot.crimson_tempest.ticking )",
								["action"] = "shiv",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! talent.kingsbane.enabled & ! talent.sepsis.enabled & ! debuff.shiv.up & dot.garrote.ticking & dot.rupture.ticking & ( ! talent.crimson_tempest.enabled || variable.single_target || dot.crimson_tempest.ticking )",
								["action"] = "shiv",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! talent.kingsbane.enabled & talent.sepsis.enabled & ! debuff.shiv.up & dot.garrote.ticking & dot.rupture.ticking & ( ( cooldown.sepsis.ready || cooldown.sepsis.remains > 12 ) + ( cooldown.deathmark.ready || cooldown.deathmark.remains > 12 ) = 2 )",
								["action"] = "shiv",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! buff.thistle_tea.up & ( energy.deficit >= 100 || charges = 3 & ( dot.kingsbane.ticking || debuff.deathmark.up ) || boss & fight_remains < charges * 6 )",
								["action"] = "thistle_tea",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.fan_of_knives > desired_targets || spell_targets.fan_of_knives > 1 & raid_event.adds.in > 60 ) & ( ! talent.improved_garrote.enabled || cooldown.vanish.remains > 45 )",
								["action"] = "indiscriminate_carnage",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || boss & fight_remains < 30 || debuff.deathmark.up",
								["action"] = "potion",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "blood_fury",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "berserking",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "fireblood",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "debuff.deathmark.up",
								["action"] = "ancestral_call",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.all & master_assassin_remains = 0",
								["action"] = "call_action_list",
								["list_name"] = "vanish",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4",
								["action"] = "cold_blood",
							}, -- [25]
						},
						["dot"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "priority_rotation & ( dot.garrote.remains < cooldown.garrote.duration || variable.regen_saturated )",
								["description"] = "Damage over time abilities  Limit secondary Garrotes for priority rotation if we have 35 energy regen or Garrote will expire on the primary target",
								["var_name"] = "skip_cycle_garrote",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "priority_rotation & ( debuff.shiv.up & spell_targets.fan_of_knives > 2 || variable.regen_saturated )",
								["description"] = "Limit secondary Ruptures for priority rotation if we have 35 energy regen or Shiv is up on 2T+",
								["var_name"] = "skip_cycle_rupture",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["description"] = "Limit Ruptures when appropriate, not currently used",
								["var_name"] = "skip_rupture",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Special Garrote and Rupture setup prior to Exsanguinate cast",
								["criteria"] = "talent.exsanguinate.enabled & ! will_lose_exsanguinate & dot.garrote.pmultiplier <= 1 & variable.exsang_sync_remains < 2 & spell_targets.fan_of_knives = 1 & raid_event.adds.in > 6 & dot.garrote.remains * 0.5 < target.time_to_die",
								["action"] = "garrote",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.exsanguinate.enabled & ! will_lose_exsanguinate & dot.rupture.pmultiplier <= 1 & variable.exsang_sync_remains < 1 & effective_combo_points >= variable.exsanguinate_rupture_cp & dot.rupture.remains * 0.5 < target.time_to_die",
								["action"] = "rupture",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Garrote upkeep, also tries to use it as a special generator for the last CP before a finisher",
								["criteria"] = "refreshable & combo_points.deficit >= 1 & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & ( target.time_to_die - remains ) > 4 & master_assassin_remains = 0",
								["action"] = "garrote",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "garrote",
								["criteria"] = "! variable.skip_cycle_garrote & refreshable & combo_points.deficit >= 1 & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & ( target.time_to_die - remains ) > 12 & master_assassin_remains = 0",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "crimson_tempest",
								["cycle_targets"] = 1,
								["criteria"] = "spell_targets >= 2 & effective_combo_points >= 4 & energy.regen_combined > 20 & ( ! cooldown.deathmark.ready || dot.rupture.ticking ) & remains < ( 2 + 3 * ( spell_targets >= 4 ) )",
								["description"] = "Crimson Tempest on multiple targets at 4+ CP when running out in 2-5s as long as we have enough regen and aren't setting up for Deathmark",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Keep up Rupture at 4+ on all targets (when living long enough and not snapshot)",
								["criteria"] = "! variable.skip_rupture & effective_combo_points >= 4 & refreshable & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & target.time_to_die - remains > ( 4 + ( talent.dashing_scoundrel.enabled * 5 ) + ( talent.doomblade.enabled * 5 ) + ( variable.regen_saturated * 6 ) )",
								["action"] = "rupture",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["criteria"] = "! variable.skip_cycle_rupture & ! variable.skip_rupture & effective_combo_points >= 4 & refreshable & ( pmultiplier <= 1 || remains <= tick_time & spell_targets.fan_of_knives >= 3 ) & ( ! will_lose_exsanguinate || remains <= tick_time * 2 & spell_targets.fan_of_knives >= 3 ) & target.time_to_die - remains > ( 4 + ( talent.dashing_scoundrel.enabled * 5 ) + ( talent.doomblade.enabled * 5 ) + ( variable.regen_saturated * 6 ) )",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "Fallback AoE Crimson Tempest with the same logic as above, but ignoring the energy conditions if we aren't using Rupture",
								["criteria"] = "spell_targets >= 2 & effective_combo_points >= 4 & remains < 2 + 3 * ( spell_targets >= 4 )",
								["action"] = "crimson_tempest",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "Crimson Tempest on ST if in pandemic and nearly max energy and if Envenom won't do more damage due to TB/MA",
								["criteria"] = "spell_targets = 1 & ! talent.dashing_scoundrel.enabled & effective_combo_points >= ( cp_max_spend - 1 ) & refreshable & ! will_lose_exsanguinate & ! debuff.shiv.up & debuff.amplifying_poison.stack < 15 & ( ! talent.kingsbane.enabled || buff.envenom.up || ! cooldown.kingsbane.up ) & target.time_to_die - remains > 4",
								["action"] = "crimson_tempest",
							}, -- [12]
						},
					},
					["version"] = 20230111,
					["warnings"] = "The import for 'stealthed' required some automated changes.\nLine 2: Converted operations in 'stealthed.improved_garrote&!will_lose_exsanguinate&(remains<12%exsanguinated_rate||pmultiplier<=1)&target.time_to_die-remains>2' to 'stealthed.improved_garrote&!will_lose_exsanguinate&(remains<12/exsanguinated_rate||pmultiplier<=1)&target.time_to_die-remains>2'.\n\nThe import for 'vanish' required some automated changes.\nLine 1: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 1: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 2: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 2: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 2: Converted 'talent.indiscriminate_carnage' to 'talent.indiscriminate_carnage.enabled' (1x).\nLine 2: Converted 'talent.indiscriminate_carnage' to 'talent.indiscriminate_carnage.enabled' (1x).\nLine 3: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 3: Converted 'talent.master_assassin' to 'talent.master_assassin.enabled' (1x).\nLine 4: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 4: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 5: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 5: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 6: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\nLine 6: Converted 'talent.master_assassin' to 'talent.master_assassin.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 8: Converted 'talent.cut_to_the_chase' to 'talent.cut_to_the_chase.enabled' (1x).\nLine 9: Converted 'talent.cut_to_the_chase' to 'talent.cut_to_the_chase.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 3: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 4: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 4: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\n\nThe import for 'direct' required some automated changes.\nLine 1: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 7: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 7: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 8: Converted 'talent.dragontempered_blades' to 'talent.dragontempered_blades.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 3: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 3: Converted 'exsanguinated.rupture' to 'debuff.rupture.exsanguinated' (1x).\nLine 3: Converted 'exsanguinated.garrote' to 'debuff.garrote.exsanguinated' (1x).\nLine 7: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 7: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 8: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 8: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 11: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 12: Converted 'talent.exsanguinate' to 'talent.exsanguinate.enabled' (1x).\nLine 12: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 14: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\nLine 15: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\nLine 15: Converted 'talent.sepsis' to 'talent.sepsis.enabled' (1x).\nLine 16: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\nLine 16: Converted 'talent.sepsis' to 'talent.sepsis.enabled' (1x).\nLine 18: Converted 'talent.improved_garrote' to 'talent.improved_garrote.enabled' (1x).\n\nThe import for 'dot' required some automated changes.\nLine 9: Converted 'talent.dashing_scoundrel' to 'talent.dashing_scoundrel.enabled' (1x).\nLine 9: Converted 'talent.doomblade' to 'talent.doomblade.enabled' (1x).\nLine 10: Converted 'talent.dashing_scoundrel' to 'talent.dashing_scoundrel.enabled' (1x).\nLine 10: Converted 'talent.doomblade' to 'talent.doomblade.enabled' (1x).\nLine 12: Converted 'talent.dashing_scoundrel' to 'talent.dashing_scoundrel.enabled' (1x).\nLine 12: Converted 'talent.kingsbane' to 'talent.kingsbane.enabled' (1x).\n\nImported 7 action lists.\n",
					["profile"] = "# Executed before combat begins. Accepts non-harmful actions only.\nactions.precombat=apply_poison\nactions.precombat+=/marked_for_death,precombat_seconds=10,if=raid_event.adds.in>15\n# Determine which (if any) stat buff trinket we want to attempt to sync with Deathmark.\nactions.precombat+=/variable,name=trinket_sync_slot,value=1,if=trinket.1.has_stat.any_dps&(!trinket.2.has_stat.any_dps||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)\nactions.precombat+=/variable,name=trinket_sync_slot,value=2,if=trinket.2.has_stat.any_dps&(!trinket.1.has_stat.any_dps||trinket.2.cooldown.duration>trinket.1.cooldown.duration)\n# Determine if we should be be casting our pre-Exsanguinate Rupture with Echoing Reprimand CP\nactions.precombat+=/variable,name=exsanguinate_rupture_cp,value=cp_max_spend<?(talent.resounding_clarity*7)\nactions.precombat+=/stealth\nactions.precombat+=/slice_and_dice,precombat_seconds=1,if=refreshable\n\n# Executed every time the actor is available.\n# Restealth if possible (no vulnerable enemies in combat)\nactions=stealth\n# Interrupt on cooldown to allow simming interactions with that\nactions+=/kick,if=!stealthed.all\nactions+=/variable,name=single_target,value=spell_targets.fan_of_knives<2\n# Combined Energy Regen needed to saturate\nactions+=/variable,name=regen_saturated,value=energy.regen_combined>35\n# Next Exsanguinate cooldown time based on Deathmark syncing logic and remaining fight duration\nactions+=/variable,name=exsang_sync_remains,op=setif,condition=cooldown.deathmark.remains>cooldown.exsanguinate.remains&cooldown.deathmark.remains<fight_remains,value=cooldown.deathmark.remains,value_else=cooldown.exsanguinate.remains\nactions+=/call_action_list,name=stealthed,if=stealthed.rogue||stealthed.improved_garrote\nactions+=/call_action_list,name=cds\n# Put SnD up initially for Cut to the Chase, refresh with Envenom if at low duration\nactions+=/slice_and_dice,if=!buff.slice_and_dice.up&combo_points>=2||!talent.cut_to_the_chase&refreshable&combo_points>=4\nactions+=/envenom,if=talent.cut_to_the_chase&buff.slice_and_dice.up&buff.slice_and_dice.remains<5&combo_points>=4\nactions+=/call_action_list,name=dot\nactions+=/call_action_list,name=direct\nactions+=/arcane_torrent,if=energy.deficit>=15+energy.regen_combined\nactions+=/arcane_pulse\nactions+=/lights_judgment\nactions+=/bag_of_tricks\n\n# Cooldowns  If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.\nactions.cds=marked_for_death,line_cd=1.5,cycle_targets=1,if=raid_event.adds.up&(!variable.single_target||boss&fight_remains<30)&(target.time_to_die<combo_points.deficit*1.5||combo_points.deficit>=cp_max_spend)\n# If no adds will die within the next 30s, use MfD for max CP.\nactions.cds+=/marked_for_death,if=raid_event.adds.in>30-raid_event.adds.duration&combo_points.deficit>=cp_max_spend\n# Sync Deathmark window with Exsanguinate if applicable\nactions.cds+=/variable,name=deathmark_exsanguinate_condition,value=!talent.exsanguinate||cooldown.exsanguinate.remains>15||exsanguinated.rupture||exsanguinated.garrote\n# Wait on Deathmark for Garrote with MA\nactions.cds+=/variable,name=deathmark_ma_condition,value=!talent.master_assassin.enabled||dot.garrote.ticking\nactions.cds+=/sepsis,if=!stealthed.rogue&dot.garrote.ticking&(target.time_to_die>10||boss&fight_remains<10)\n# Deathmark to be used if not stealthed, Rupture is up, and all other talent conditions are satisfied\nactions.cds+=/variable,name=deathmark_condition,value=!stealthed.rogue&dot.rupture.ticking&!debuff.deathmark.up&variable.deathmark_exsanguinate_condition&variable.deathmark_ma_condition\n# Sync the priority stat buff trinket with Deathmark, otherwise use on cooldown\nactions.cds+=/use_items,slots=trinket1,if=(variable.trinket_sync_slot=1&(debuff.deathmark.up||boss&fight_remains<=20)||(variable.trinket_sync_slot=2&(!trinket.2.cooldown.ready||!debuff.deathmark.up&cooldown.deathmark.remains>20))||!variable.trinket_sync_slot)\nactions.cds+=/use_items,slots=trinket2,if=(variable.trinket_sync_slot=2&(debuff.deathmark.up||boss&fight_remains<=20)||(variable.trinket_sync_slot=1&(!trinket.1.cooldown.ready||!debuff.deathmark.up&cooldown.deathmark.remains>20))||!variable.trinket_sync_slot)\nactions.cds+=/deathmark,if=variable.deathmark_condition\nactions.cds+=/kingsbane,if=(debuff.shiv.up||cooldown.shiv.remains<6)&buff.envenom.up&(cooldown.deathmark.remains>=50||dot.deathmark.ticking)\n# Exsanguinate when not stealthed and both Rupture and Garrote are up for long enough. Attempt to sync with Deathmark and also Echoing Reprimand if using Resounding Clarity.\nactions.cds+=/variable,name=exsanguinate_condition,value=talent.exsanguinate&!stealthed.rogue&!stealthed.improved_garrote&!dot.deathmark.ticking&target.time_to_die>variable.exsang_sync_remains+4&variable.exsang_sync_remains<4\nactions.cds+=/echoing_reprimand,if=talent.exsanguinate&talent.resounding_clarity&(variable.exsanguinate_condition&combo_points<=2&variable.exsang_sync_remains<=2&!dot.garrote.refreshable&dot.rupture.remains>9.6||variable.exsang_sync_remains>40)\nactions.cds+=/exsanguinate,if=variable.exsanguinate_condition&(!dot.garrote.refreshable&dot.rupture.remains>4+4*variable.exsanguinate_rupture_cp||dot.rupture.remains*0.5>target.time_to_die)\n# Shiv if DoTs are up; Always Shiv with Kingsbane, otherwise attempt to sync with Sepsis or Deathmark if we won't waste more than half Shiv's cooldown\nactions.cds+=/shiv,if=talent.kingsbane&!debuff.shiv.up&dot.kingsbane.ticking&dot.garrote.ticking&dot.rupture.ticking&(!talent.crimson_tempest.enabled||variable.single_target||dot.crimson_tempest.ticking)\nactions.cds+=/shiv,if=!talent.kingsbane&!talent.sepsis&!debuff.shiv.up&dot.garrote.ticking&dot.rupture.ticking&(!talent.crimson_tempest.enabled||variable.single_target||dot.crimson_tempest.ticking)\nactions.cds+=/shiv,if=!talent.kingsbane&talent.sepsis&!debuff.shiv.up&dot.garrote.ticking&dot.rupture.ticking&((cooldown.sepsis.ready||cooldown.sepsis.remains>12)+(cooldown.deathmark.ready||cooldown.deathmark.remains>12)=2)\nactions.cds+=/thistle_tea,if=!buff.thistle_tea.up&(energy.deficit>=100||charges=3&(dot.kingsbane.ticking||debuff.deathmark.up)||boss&fight_remains<charges*6)\nactions.cds+=/indiscriminate_carnage,if=(spell_targets.fan_of_knives>desired_targets||spell_targets.fan_of_knives>1&raid_event.adds.in>60)&(!talent.improved_garrote||cooldown.vanish.remains>45)\nactions.cds+=/potion,if=buff.bloodlust.react||boss&fight_remains<30||debuff.deathmark.up\nactions.cds+=/blood_fury,if=debuff.deathmark.up\nactions.cds+=/berserking,if=debuff.deathmark.up\nactions.cds+=/fireblood,if=debuff.deathmark.up\nactions.cds+=/ancestral_call,if=debuff.deathmark.up\nactions.cds+=/call_action_list,name=vanish,if=!stealthed.all&master_assassin_remains=0\nactions.cds+=/cold_blood,if=combo_points>=4\n\n# Direct damage abilities  Envenom at 4+ (5+ with DS) CP. Immediately on 2+ targets, with Deathmark, or with TB; otherwise wait for some energy. Also wait if Exsg combo is coming up.\nactions.direct+=/envenom,if=effective_combo_points>=4+talent.deeper_stratagem.enabled&(debuff.deathmark.up||debuff.shiv.up||debuff.amplifying_poison.stack>=10||energy.deficit<=25+energy.regen_combined||!variable.single_target||effective_combo_points>cp_max_spend)&(!talent.exsanguinate.enabled||variable.exsang_sync_remains>2||talent.resounding_clarity&(cooldown.echoing_reprimand.ready&combo_points>2||effective_combo_points>5))\nactions.direct+=/variable,name=use_filler,value=combo_points.deficit>1||energy.deficit<=25+energy.regen_combined||!variable.single_target\n# Apply SBS to all targets without a debuff as priority, preferring targets dying sooner after the primary target\nactions.direct+=/serrated_bone_spike,if=variable.use_filler&!dot.serrated_bone_spike_dot.ticking\nactions.direct+=/serrated_bone_spike,cycle_targets=1,if=variable.use_filler&!dot.serrated_bone_spike_dot.ticking\n# Keep from capping charges or burn at the end of fights\nactions.direct+=/serrated_bone_spike,if=variable.use_filler&master_assassin_remains<0.8&(boss&fight_remains<=5||cooldown.serrated_bone_spike.max_charges-charges_fractional<=0.25)\n# When MA is not at high duration, sync with Shiv\nactions.direct+=/serrated_bone_spike,if=variable.use_filler&master_assassin_remains<0.8&!variable.single_target&debuff.shiv.up\nactions.direct+=/echoing_reprimand,if=(!talent.exsanguinate||!talent.resounding_clarity)&variable.use_filler&cooldown.deathmark.remains>10||boss&fight_remains<20\n# Fan of Knives at 3+ targets or 4+ with DTB\nactions.direct+=/fan_of_knives,if=variable.use_filler&(!priority_rotation&spell_targets.fan_of_knives>=3+stealthed.rogue+talent.dragontempered_blades)\n# Fan of Knives to apply poisons if inactive on any target (or any bleeding targets with priority rotation) at 3T\nactions.direct+=/fan_of_knives,cycle_targets=1,if=variable.use_filler&spell_targets.fan_of_knives>=3&!dot.deadly_poison_dot.ticking&(!priority_rotation||dot.garrote.ticking||dot.rupture.ticking)\nactions.direct+=/ambush,if=variable.use_filler\n# Tab-Mutilate to apply Deadly Poison at 2 targets\nactions.direct+=/mutilate,cycle_targets=1,if=!dot.deadly_poison_dot.ticking&!debuff.amplifying_poison.up&variable.use_filler&spell_targets.fan_of_knives=2\nactions.direct+=/mutilate,if=variable.use_filler\n\n# Damage over time abilities  Limit secondary Garrotes for priority rotation if we have 35 energy regen or Garrote will expire on the primary target\nactions.dot+=/variable,name=skip_cycle_garrote,value=priority_rotation&(dot.garrote.remains<cooldown.garrote.duration||variable.regen_saturated)\n# Limit secondary Ruptures for priority rotation if we have 35 energy regen or Shiv is up on 2T+\nactions.dot+=/variable,name=skip_cycle_rupture,value=priority_rotation&(debuff.shiv.up&spell_targets.fan_of_knives>2||variable.regen_saturated)\n# Limit Ruptures when appropriate, not currently used\nactions.dot+=/variable,name=skip_rupture,value=0\n# Special Garrote and Rupture setup prior to Exsanguinate cast\nactions.dot+=/garrote,if=talent.exsanguinate.enabled&!will_lose_exsanguinate&dot.garrote.pmultiplier<=1&variable.exsang_sync_remains<2&spell_targets.fan_of_knives=1&raid_event.adds.in>6&dot.garrote.remains*0.5<target.time_to_die\nactions.dot+=/rupture,if=talent.exsanguinate.enabled&!will_lose_exsanguinate&dot.rupture.pmultiplier<=1&variable.exsang_sync_remains<1&effective_combo_points>=variable.exsanguinate_rupture_cp&dot.rupture.remains*0.5<target.time_to_die\n## actions.dot+=/pool_resource,for_next=1\n# Garrote upkeep, also tries to use it as a special generator for the last CP before a finisher\nactions.dot+=/garrote,if=refreshable&combo_points.deficit>=1&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&(target.time_to_die-remains)>4&master_assassin_remains=0\n## actions.dot+=/pool_resource,for_next=1\nactions.dot+=/garrote,cycle_targets=1,if=!variable.skip_cycle_garrote&refreshable&combo_points.deficit>=1&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&(target.time_to_die-remains)>12&master_assassin_remains=0\n# Crimson Tempest on multiple targets at 4+ CP when running out in 2-5s as long as we have enough regen and aren't setting up for Deathmark\nactions.dot+=/crimson_tempest,cycle_targets=1,if=spell_targets>=2&effective_combo_points>=4&energy.regen_combined>20&(!cooldown.deathmark.ready||dot.rupture.ticking)&remains<(2+3*(spell_targets>=4))\n# Keep up Rupture at 4+ on all targets (when living long enough and not snapshot)\nactions.dot+=/rupture,if=!variable.skip_rupture&effective_combo_points>=4&refreshable&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&target.time_to_die-remains>(4+(talent.dashing_scoundrel*5)+(talent.doomblade*5)+(variable.regen_saturated*6))\nactions.dot+=/rupture,cycle_targets=1,if=!variable.skip_cycle_rupture&!variable.skip_rupture&effective_combo_points>=4&refreshable&(pmultiplier<=1||remains<=tick_time&spell_targets.fan_of_knives>=3)&(!will_lose_exsanguinate||remains<=tick_time*2&spell_targets.fan_of_knives>=3)&target.time_to_die-remains>(4+(talent.dashing_scoundrel*5)+(talent.doomblade*5)+(variable.regen_saturated*6))\n# Fallback AoE Crimson Tempest with the same logic as above, but ignoring the energy conditions if we aren't using Rupture\nactions.dot+=/crimson_tempest,if=spell_targets>=2&effective_combo_points>=4&remains<2+3*(spell_targets>=4)\n# Crimson Tempest on ST if in pandemic and nearly max energy and if Envenom won't do more damage due to TB/MA\nactions.dot+=/crimson_tempest,if=spell_targets=1&!talent.dashing_scoundrel&effective_combo_points>=(cp_max_spend-1)&refreshable&!will_lose_exsanguinate&!debuff.shiv.up&debuff.amplifying_poison.stack<15&(!talent.kingsbane||buff.envenom.up||!cooldown.kingsbane.up)&target.time_to_die-remains>4\n\n# Stealthed Actions\nactions.stealthed+=/indiscriminate_carnage,if=spell_targets.fan_of_knives>desired_targets||spell_targets.fan_of_knives>1&raid_event.adds.in>60\n## actions.stealthed+=/pool_resource,for_next=1\n# Improved Garrote: Apply or Refresh with buffed Garrotes\nactions.stealthed+=/garrote,cycle_targets=1,if=stealthed.improved_garrote&!will_lose_exsanguinate&(remains<12%exsanguinated_rate||pmultiplier<=1)&target.time_to_die-remains>2\n## actions.stealthed+=/pool_resource,for_next=1\n# Improved Garrote + Exsg on 1T: Refresh Garrote at the end of stealth to get max duration before Exsanguinate\nactions.stealthed+=/garrote,if=talent.exsanguinate.enabled&stealthed.improved_garrote&active_enemies=1&!will_lose_exsanguinate&improved_garrote_remains<1.3\n\n# Stealth Cooldowns  Vanish Sync for Improved Garrote with Deathmark\nactions.vanish+=/vanish,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&(dot.garrote.pmultiplier<=1||dot.garrote.refreshable)&(debuff.deathmark.up||cooldown.deathmark.remains<4)&combo_points.deficit>=(spell_targets.fan_of_knives>?4)\n# Vanish for Indiscriminate Carnage or Improved Garrote at 2-3+ targets\nactions.vanish+=/vanish,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&(dot.garrote.pmultiplier<=1||dot.garrote.refreshable)&spell_targets.fan_of_knives>(3-talent.indiscriminate_carnage)&(!talent.indiscriminate_carnage||cooldown.indiscriminate_carnage.ready)\n# Vanish with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.\nactions.vanish+=/vanish,if=!talent.improved_garrote&talent.master_assassin&!dot.rupture.refreshable&dot.garrote.remains>3&debuff.deathmark.up&(debuff.shiv.up||debuff.deathmark.remains<4||dot.sepsis.ticking)&dot.sepsis.remains<3\n## actions.vanish+=/pool_resource,for_next=1,extra_amount=45\nactions.vanish+=/shadow_dance,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&dot.garrote.pmultiplier<=1&(debuff.deathmark.up||cooldown.deathmark.remains<4||cooldown.deathmark.remains>60)&combo_points.deficit>=(spell_targets.fan_of_knives>?4)\n# Shadow Dance for Improved Garrote with Deathmark\nactions.vanish+=/shadow_dance,if=talent.improved_garrote&cooldown.garrote.up&!exsanguinated.garrote&(dot.garrote.pmultiplier<=1||dot.garrote.refreshable)&(debuff.deathmark.up||cooldown.deathmark.remains<12||cooldown.deathmark.remains>60)&combo_points.deficit>=(spell_targets.fan_of_knives>?4)\n# Shadow Dance with Master Assassin: Rupture+Garrote not in refresh range, during Deathmark+Shiv. Sync with Sepsis final hit if possible.\nactions.vanish+=/shadow_dance,if=!talent.improved_garrote&talent.master_assassin&!dot.rupture.refreshable&dot.garrote.remains>3&(debuff.deathmark.up||cooldown.deathmark.remains>60)&(debuff.shiv.up||debuff.deathmark.remains<4||dot.sepsis.ticking)&dot.sepsis.remains<3",
					["spec"] = 259,
				},
				["Feral"] = {
					["builtIn"] = true,
					["date"] = 20230125,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["bloodtalons"] = {
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || 1.4 * persistent_multiplier > dot.rake.pmultiplier ) & buff.bt_rake.down",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & buff.bt_moonfire.down",
								["action"] = "lunar_inspiration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & buff.bt_thrash.down",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1 & buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_thrash.down",
								["action"] = "thrash_cat",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_rake.down & combo_points > 4",
								["action"] = "rake",
							}, -- [9]
						},
						["finisher"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.primal_wrath > 2",
								["action"] = "primal_wrath",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & spell_targets.primal_wrath > 1",
								["action"] = "primal_wrath",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die >= settings.rip_duration",
								["action"] = "rip",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["max_energy"] = 1,
								["criteria"] = "( dot.rip.ticking || target.time_to_die < settings.rip_duration ) & ( ! buff.bs_inc.up || ( buff.bs_inc.up & ! talent.soul_of_the_forest.enabled ) )",
								["action"] = "ferocious_bite",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( dot.rip.ticking || target.time_to_die < settings.rip_duration ) & buff.bs_inc.up & talent.soul_of_the_forest.enabled",
								["action"] = "ferocious_bite",
							}, -- [5]
						},
						["clearcasting"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "thrash_cat",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > 5 & talent.moment_of_clarity.enabled",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [4]
						},
						["builder"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.clearcasting.react",
								["list_name"] = "clearcasting",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || ( buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & dot.rake.duration > 6 )",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["action"] = "brutal_slash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [6]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [7]
						},
						["owlweaving"] = {
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["line_cd"] = "4*gcd",
							}, -- [1]
						},
						["default"] = {
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.jungle_stalker.up & buff.jungle_stalker.remains < 2 * gcd.max || dot.rake.pmultiplier < persistent_multiplier * class.auras.prowl_base.multiplier",
								["action"] = "prowl",
							}, -- [3]
							{
								["action"] = "tigers_fury",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.bloodtalons.enabled & buff.bloodtalons.down",
								["var_name"] = "need_bt",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! dot.adaptive_swarm_damage.ticking || dot.adaptive_swarm_damage.remains < 2 ) & ( dot.adaptive_swarm_damage.stack < 3 || ! dot.adaptive_swarm_heal.stack > 1 ) & ! action.adaptive_swarm_heal.in_flight & ! action.adaptive_swarm_damage.in_flight & ! action.adaptive_swarm.in_flight ) & target.time_to_die > 5 || active_enemies > 2 & ! dot.adaptive_swarm_damage.ticking & energy < 35 & target.time_to_die > 5",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 2 || combo_points = 2 & buff.bs_inc.up",
								["action"] = "feral_frenzy",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.swipe_cat > 1 & talent.primal_wrath.enabled",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.apex_predators_craving.up",
								["action"] = "ferocious_bite",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points = 5",
								["list_name"] = "finisher",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.need_bt & ! buff.bs_inc.up",
								["list_name"] = "bloodtalons",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points < 5 & buff.bs_inc.up",
								["list_name"] = "berserk_builders",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points < 5",
								["list_name"] = "builder",
							}, -- [16]
						},
						["berserk_builders"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [5]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "combo_points = 5",
								["action"] = "primal_wrath",
								["description"] = "AoE",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.apex_predators_craving.up & buff.sabertooth.down",
								["action"] = "ferocious_bite",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "variable.need_bt & active_bt_triggers >= 1",
								["list_name"] = "bloodtalons",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "At this target count BRS also crushes everything except full thrashes",
								["action"] = "brutal_slash",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "rake",
								["cycle_targets"] = 1,
								["description"] = "This means that a full rake (5.5+ ticks) is stronger up to 10ish targets",
								["criteria"] = "refreshable || active_dot.rake < cycle_enemies",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
								["description"] = "Full Lis beat Swipe up til around 3-ish targets depending on haste",
								["criteria"] = "refreshable & cycle_enemies - active_dot.lunar_inspiration > 2",
							}, -- [7]
							{
								["action"] = "swipe_cat",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "action.shred.damage > action.thrash_cat.damage",
								["action"] = "shred",
								["description"] = "If we have BrS and nothing better to cast, check if Thrash DD beats Shred",
							}, -- [9]
							{
								["action"] = "thrash_cat",
								["enabled"] = true,
							}, -- [10]
						},
						["cooldown"] = {
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "incarnation",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & combo_points < 3 || boss & fight_remains < 5",
								["action"] = "convoke_the_spirits",
							}, -- [3]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & buff.bs_inc.down & combo_points < 4 & buff.sudden_ambush.down & dot.rake.pmultiplier < 1.6 & energy > 40 & druid.rake.ticks_gained_on_refresh > spell_targets.swipe_cat * 2 - 2 & target.time_to_die > 5",
								["action"] = "shadowmeld",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up || boss & fight_remains < cooldown.bs_inc.remains || boss & fight_remains < 35",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "manic_grieftorch",
								["action"] = "manic_grieftorch",
								["criteria"] = "energy.deficit > 40",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
								["criteria"] = "buff.bs_inc.down & ( talent.incarnation.enabled & cooldown.incarnation.remains < 5 || cooldown.berserk.remains < 5 )",
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.down",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [2]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["version"] = 20230125,
					["warnings"] = "The import for 'cooldown' required some automated changes.\nLine 8: Converted 'talent.incarnation' to 'talent.incarnation.enabled' (1x).\n\nImported 10 action lists.\n",
					["spec"] = 103,
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=buff.prowl.down\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/prowl\nactions.precombat+=/cat_form\n\nactions+=/skull_bash\nactions+=/soothe\nactions+=/prowl,if=buff.jungle_stalker.up&buff.jungle_stalker.remains<2*gcd.max||dot.rake.pmultiplier<persistent_multiplier*class.auras.prowl_base.multiplier\nactions+=/tigers_fury\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/variable,name=need_bt,value=talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/call_action_list,name=cooldown\nactions+=/adaptive_swarm,cycle_targets=1,if=((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5\nactions+=/feral_frenzy,if=combo_points<2||combo_points=2&buff.bs_inc.up\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.swipe_cat>1&talent.primal_wrath.enabled\nactions+=/ferocious_bite,if=buff.apex_predators_craving.up\nactions+=/call_action_list,name=finisher,strict=1,if=combo_points=5\nactions+=/call_action_list,name=bloodtalons,if=variable.need_bt&!buff.bs_inc.up\nactions+=/call_action_list,name=berserk_builders,strict=1,if=combo_points<5&buff.bs_inc.up\nactions+=/call_action_list,name=builder,strict=1,if=combo_points<5\n\n# AoE\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/primal_wrath,if=combo_points=5\nactions.aoe+=/ferocious_bite,if=buff.apex_predators_craving.up&buff.sabertooth.down\nactions.aoe+=/run_action_list,name=bloodtalons,if=variable.need_bt&active_bt_triggers>=1\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/thrash_cat,cycle_targets=1,if=refreshable\n# At this target count BRS also crushes everything except full thrashes\nactions.aoe+=/brutal_slash\n## actions.aoe+=/pool_resource,for_next=1\n## TODO: actions.aoe+=/rake,cycle_targets=1,if=((dot.rake.ticks_gained_on_refresh.pmult*(1+talent.doubleclawed_rake.enabled))>(spell_targets.swipe_cat*0.216+3.32))\n# This means that a full rake (5.5+ ticks) is stronger up to 10ish targets\nactions.aoe+=/rake,cycle_targets=1,if=refreshable||active_dot.rake<cycle_enemies\n## TODO: actions.aoe+=/lunar_inspiration,cycle_targets=1,if=max((ticks_gained_on_refresh+1)-(spell_targets.swipe_cat*2.492))\n# Full Lis beat Swipe up til around 3-ish targets depending on haste\nactions.aoe+=/lunar_inspiration,cycle_targets=1,if=refreshable&cycle_enemies-active_dot.lunar_inspiration>2\nactions.aoe+=/swipe_cat\n# If we have BrS and nothing better to cast, check if Thrash DD beats Shred\nactions.aoe+=/shred,if=action.shred.damage>action.thrash_cat.damage\nactions.aoe+=/thrash_cat\n\nactions.bloodtalons+=/rake,cycle_targets=1,if=(refreshable||1.4*persistent_multiplier>dot.rake.pmultiplier)&buff.bt_rake.down\nactions.bloodtalons+=/lunar_inspiration,if=refreshable&buff.bt_moonfire.down\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down\nactions.bloodtalons+=/swipe_cat,if=spell_targets.swipe_cat>1&buff.bt_swipe.down\nactions.bloodtalons+=/shred,if=buff.bt_shred.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\nactions.bloodtalons+=/rake,if=buff.bt_rake.down&combo_points>4\n\nactions.berserk_builders+=/rake,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.berserk_builders+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk_builders+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/shred\n\nactions.builder+=/run_action_list,name=clearcasting,if=buff.clearcasting.react\nactions.builder+=/rake,cycle_targets=1,if=refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&dot.rake.duration>6)\nactions.builder+=/moonfire_cat,cycle_targets=1,if=refreshable\n## actions.builder+=/pool_resource,for_next=1\nactions.builder+=/thrash_cat,cycle_targets=1,if=refreshable\nactions.builder+=/brutal_slash\nactions.builder+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.builder+=/shred\n\nactions.clearcasting+=/thrash_cat,if=refreshable\nactions.clearcasting+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.clearcasting+=/brutal_slash,if=spell_targets.brutal_slash>5&talent.moment_of_clarity.enabled\nactions.clearcasting+=/shred\n\nactions.cooldown+=/berserk\nactions.cooldown+=/incarnation\nactions.cooldown+=/convoke_the_spirits,if=buff.tigers_fury.up&combo_points<3||boss&fight_remains<5\nactions.cooldown+=/berserking\nactions.cooldown+=/shadowmeld,if=buff.tigers_fury.up&buff.bs_inc.down&combo_points<4&buff.sudden_ambush.down&dot.rake.pmultiplier<1.6&energy>40&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2&target.time_to_die>5\nactions.cooldown+=/potion,if=buff.bs_inc.up||boss&fight_remains<cooldown.bs_inc.remains||boss&fight_remains<35\nactions.cooldown+=/use_item,name=manic_grieftorch,if=energy.deficit>40\nactions.cooldown+=/use_item,name=algethar_puzzle_box,if=buff.bs_inc.down&(talent.incarnation&cooldown.incarnation.remains<5||cooldown.berserk.remains<5)\nactions.cooldown+=/use_items\n\nactions.finisher+=/primal_wrath,if=spell_targets.primal_wrath>2\nactions.finisher+=/primal_wrath,cycle_targets=1,if=refreshable&spell_targets.primal_wrath>1\nactions.finisher+=/rip,cycle_targets=1,if=refreshable&target.time_to_die>=settings.rip_duration\n## actions.finisher+=/pool_resource,for_next=1\nactions.finisher+=/ferocious_bite,max_energy=1,if=(dot.rip.ticking||target.time_to_die<settings.rip_duration)&(!buff.bs_inc.up||(buff.bs_inc.up&!talent.soul_of_the_forest.enabled))\nactions.finisher+=/ferocious_bite,if=(dot.rip.ticking||target.time_to_die<settings.rip_duration)&buff.bs_inc.up&talent.soul_of_the_forest.enabled\n\nactions.owlweaving+=/sunfire,line_cd=4*gcd",
				},
				["Outlaw"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230116,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["finish"] = {
							{
								["enabled"] = true,
								["description"] = "Finishers  BtE to keep the Crit debuff up, if RP is up, or for Greenskins, unless the target is about to die.",
								["criteria"] = "target.time_to_die > 3 & ( debuff.between_the_eyes.remains < 4 || talent.greenskins_wickers.enabled & ! buff.greenskins_wickers.up || ! talent.greenskins_wickers.enabled & buff.ruthless_precision.up )",
								["action"] = "between_the_eyes",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.slice_and_dice.remains < fight_remains & refreshable & ( ! talent.swift_slasher.enabled || combo_points >= cp_max_spend )",
								["action"] = "slice_and_dice",
							}, -- [2]
							{
								["action"] = "cold_blood",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "dispatch",
								["enabled"] = true,
							}, -- [4]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Restealth if possible (no vulnerable enemies in combat)",
								["action"] = "stealth",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Interrupt on cooldown to allow simming interactions with that",
								["action"] = "kick",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.count_the_odds.enabled & ( stealthed.basic || buff.shadowmeld.up || buff.shadow_dance.up )",
								["description"] = "Checks if we are in an appropriate Stealth state for triggering the Count the Odds bonus",
								["var_name"] = "stealthed_cto",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "! talent.hidden_opportunity.enabled",
								["description"] = "Roll the Bones Reroll Conditions",
								["value"] = "rtb_buffs < 2 & ( ! buff.broadside.up & ( ! talent.fan_the_hammer.enabled || ! buff.skull_and_crossbones.up ) & ! buff.true_bearing.up || buff.loaded_dice.up ) || rtb_buffs = 2 & ( buff.buried_treasure.up & buff.grand_melee.up || ! buff.broadside.up & ! buff.true_bearing.up & buff.loaded_dice.up )",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "! talent.hidden_opportunity.enabled & ( talent.keep_it_rolling.enabled || talent.count_the_odds.enabled )",
								["description"] = "Additional Reroll Conditions for Keep it Rolling or Count the Odds",
								["value"] = "variable.rtb_reroll || ( ( rtb_buffs_normal = 0 & rtb_buffs_longer >= 1 ) & ! ( buff.broadside.up & buff.true_bearing.up & buff.skull_and_crossbones.up ) & ! ( buff.broadside.remains > 39 || buff.true_bearing.remains > 39 || buff.ruthless_precision.remains > 39 || buff.skull_and_crossbones.remains > 39 ) )",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "talent.hidden_opportunity.enabled",
								["description"] = "With Hidden Opportunity, prioritize rerolling for Skull and Crossbones over everything else",
								["value"] = "! rtb_buffs_will_lose_buff.skull_and_crossbones & ( rtb_buffs_will_lose - rtb_buffs_will_lose_buff.grand_melee ) < 2 + buff.loaded_dice.up",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "reset",
								["action"] = "variable",
								["var_name"] = "rtb_reroll",
								["criteria"] = "! ( raid_event.adds.remains > 12 || raid_event.adds.up & ( raid_event.adds.in - raid_event.adds.remains ) < 6 || target.time_to_die > 12 ) || boss & fight_remains < 12",
								["description"] = "Avoid rerolls when we will not have time remaining on the fight or add wave to recoup the opportunity cost of the global",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points.deficit >= 2 + talent.improved_ambush.enabled + buff.broadside.up & energy >= 50 & ( ! talent.count_the_odds.enabled || buff.roll_the_bones.remains >= 10 )",
								["description"] = "Ensure we get full Ambush CP gains and aren't rerolling Count the Odds buffs away",
								["var_name"] = "ambush_condition",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points >= cp_max_spend - buff.broadside.up - ( buff.opportunity.up * ( talent.quick_draw.enabled || talent.fan_the_hammer.enabled ) ) || effective_combo_points >= cp_max_spend",
								["description"] = "Finish at max possible CP without overflowing bonus combo points, unless for BtE which always should be 5+ CP",
								["var_name"] = "finish_condition",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "reset",
								["action"] = "variable",
								["var_name"] = "finish_condition",
								["criteria"] = "cooldown.between_the_eyes.ready & effective_combo_points < 5",
								["description"] = "Always attempt to use BtE at 5+ CP, regardless of CP gen waste",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.blade_flurry < 2 & raid_event.adds.in > 20 || buff.blade_flurry.remains > 1 + talent.killing_spree.enabled",
								["description"] = "With multiple targets, this variable is checked to decide whether some CDs should be synced with Blade Flurry",
								["var_name"] = "blade_flurry_sync",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Higher priority Stealth list for Count the Odds or true Stealth/Vanish that will break in a single global",
								["criteria"] = "stealthed.basic || buff.shadowmeld.up",
								["list_name"] = "stealth",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Lower priority Stealth list for Shadow Dance",
								["criteria"] = "variable.stealthed_cto",
								["list_name"] = "stealth",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.finish_condition",
								["action"] = "run_action_list",
								["list_name"] = "finish",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "build",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "energy.base_deficit >= 15 + energy.regen",
								["action"] = "arcane_torrent",
							}, -- [17]
							{
								["action"] = "arcane_pulse",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [20]
						},
						["precombat"] = {
							{
								["action"] = "apply_poison",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "stealth",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["criteria"] = "raid_event.adds.in > 25",
								["precombat_seconds"] = "10",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "adrenaline_rush",
								["criteria"] = "talent.improved_adrenaline_rush.enabled",
								["precombat_seconds"] = "3",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "roll_the_bones",
								["criteria"] = "remains < 3 || rtb_buffs_normal = 0",
								["precombat_seconds"] = "2",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["criteria"] = "refreshable",
								["precombat_seconds"] = "1",
							}, -- [7]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["description"] = "Cooldowns",
								["criteria"] = "! buff.adrenaline_rush.up & ( ! talent.improved_adrenaline_rush.enabled || combo_points <= 2 )",
								["action"] = "adrenaline_rush",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 2 & buff.blade_flurry.remains < gcd.max",
								["action"] = "blade_flurry",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.dreadblades.down & ( rtb_buffs = 0 || variable.rtb_reroll )",
								["action"] = "roll_the_bones",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! variable.rtb_reroll & ( buff.broadside.up + buff.true_bearing.up + buff.skull_and_crossbones.up + buff.ruthless_precision.up ) > 2 & ( buff.shadow_dance.down || rtb_buffs >= 6 )",
								["action"] = "keep_it_rolling",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_flurry_sync & ! buff.dreadblades.up & ( energy.base_time_to_max > 4 + stealthed.rogue - spell_targets / 3 )",
								["action"] = "blade_rush",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.all || talent.count_the_odds.enabled & ! variable.stealthed_cto",
								["action"] = "call_action_list",
								["list_name"] = "stealth_cds",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.all & combo_points <= 2 & ( ! talent.marked_for_death.enabled || ! cooldown.marked_for_death.ready ) & target.time_to_die >= 10",
								["action"] = "dreadblades",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["line_cd"] = "1.5",
								["cycle_targets"] = 1,
								["criteria"] = "raid_event.adds.up & ( target.time_to_die < combo_points.deficit || combo_points.deficit >= cp_max_spend - 1 ) & ! buff.dreadblades.up",
								["description"] = "If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "If no adds will die within the next 30s, use MfD on boss without any CP.",
								["criteria"] = "raid_event.adds.in > 30 - raid_event.adds.duration & combo_points.deficit >= cp_max_spend - 1 & ! buff.dreadblades.up",
								["action"] = "marked_for_death",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.thistle_tea.up & ( energy.base_deficit >= 100 || fight_remains < charges * 6 )",
								["action"] = "thistle_tea",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_flurry_sync & ! stealthed.rogue & debuff.between_the_eyes.up & energy.base_time_to_max > 4",
								["action"] = "killing_spree",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! stealthed.all & ( talent.count_the_odds.enabled & variable.finish_condition || ! talent.weaponmaster.enabled & variable.ambush_condition )",
								["action"] = "shadowmeld",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || fight_remains < 30 || buff.adrenaline_rush.up",
								["action"] = "potion",
							}, -- [13]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["name"] = "manic_grieftorch",
								["description"] = "Default conditions for usable items.",
								["criteria"] = "! stealthed.all & ! buff.adrenaline_rush.up || fight_remains < 5",
								["action"] = "manic_grieftorch",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.blade_flurry > desired_targets || raid_event.adds.in > 60 || boss & fight_remains < 10",
								["name"] = "stormeaters_boon",
								["action"] = "stormeaters_boon",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.blade_flurry > desired_targets || raid_event.adds.in > 60 || boss & fight_remains < 7",
								["name"] = "windscar_whetstone",
								["action"] = "windscar_whetstone",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "debuff.between_the_eyes.up || trinket.t1.has_stat.any_dps || boss & fight_remains <= 20",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "debuff.between_the_eyes.up || trinket.t2.has_stat.any_dps || boss & fight_remains <= 20",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [22]
						},
						["stealth"] = {
							{
								["enabled"] = true,
								["description"] = "Stealth",
								["criteria"] = "talent.subterfuge.enabled & talent.hidden_opportunity.enabled & spell_targets >= 2 & ! buff.blade_flurry.up",
								["action"] = "blade_flurry",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.finish_condition",
								["action"] = "cold_blood",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.finish_condition",
								["action"] = "dispatch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.stealthed_cto || stealthed.basic & ( settings.ambush_anyway || talent.find_weakness.enabled & ! debuff.find_weakness.up || talent.hidden_opportunity.enabled )",
								["action"] = "ambush",
							}, -- [4]
						},
						["stealth_cds"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.hidden_opportunity.enabled || ! talent.shadow_dance.enabled || ! cooldown.shadow_dance.ready",
								["description"] = "Stealth Cooldowns",
								["var_name"] = "vanish_condition",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.shadow_dance.enabled & talent.fan_the_hammer.rank + talent.quick_draw.enabled + talent.audacity.enabled < talent.count_the_odds.enabled + talent.keep_it_rolling.enabled",
								["var_name"] = "vanish_opportunity_condition",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.find_weakness.enabled & ! talent.audacity.enabled & debuff.find_weakness.down & variable.ambush_condition & variable.vanish_condition",
								["action"] = "vanish",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.hidden_opportunity.enabled & ! buff.audacity.up & ( variable.vanish_opportunity_condition || buff.opportunity.stack < buff.opportunity.max_stack ) & variable.ambush_condition & variable.vanish_condition",
								["action"] = "vanish",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.find_weakness.enabled || talent.audacity.enabled ) & ! talent.hidden_opportunity.enabled & variable.finish_condition & variable.vanish_condition",
								["action"] = "vanish",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.shadow_dance.enabled & debuff.between_the_eyes.up & ( ! talent.ghostly_strike.enabled || debuff.ghostly_strike.up ) & ( ! talent.dreadblades.enabled || ! cooldown.dreadblades.ready ) & ( ! talent.hidden_opportunity.enabled || ! buff.audacity.up & ( talent.fan_the_hammer.rank < 2 || ! buff.opportunity.up ) )",
								["var_name"] = "shadow_dance_condition",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.keep_it_rolling.enabled & variable.shadow_dance_condition & buff.slice_and_dice.up & ( variable.finish_condition || talent.hidden_opportunity.enabled ) & ( ! talent.hidden_opportunity.enabled || ! cooldown.vanish.ready )",
								["action"] = "shadow_dance",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.keep_it_rolling.enabled & variable.shadow_dance_condition & ( cooldown.keep_it_rolling.remains <= 30 || cooldown.keep_it_rolling.remains > 120 & ( variable.finish_condition || talent.hidden_opportunity.enabled ) )",
								["action"] = "shadow_dance",
							}, -- [8]
						},
						["build"] = {
							{
								["enabled"] = true,
								["action"] = "sepsis",
								["cycle_targets"] = 1,
								["criteria"] = "target.time_to_die > 11 & debuff.between_the_eyes.up || fight_remains < 11",
								["description"] = "Builders",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.ghostly_strike.remains <= 3 & ( spell_targets.blade_flurry <= 2 || buff.dreadblades.up ) & ! buff.subterfuge.up & target.time_to_die >= 5",
								["action"] = "ghostly_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dreadblades.up",
								["action"] = "echoing_reprimand",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "High priority Ambush line to apply Find Weakness or consume HO+Audacity buff before Pistol Shot",
								["criteria"] = "settings.ambush_anyway || talent.hidden_opportunity.enabled & buff.audacity.up || talent.find_weakness.enabled & debuff.find_weakness.down",
								["action"] = "ambush",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "With Audacity + Hidden Opportunity + Fan the Hammer, use Pistol Shot to proc Audacity any time Ambush is not available",
								["criteria"] = "talent.fan_the_hammer.enabled & talent.audacity.enabled & talent.hidden_opportunity.enabled & buff.opportunity.up & ! buff.audacity.up & ! buff.subterfuge.up & ! buff.shadow_dance.up",
								["action"] = "pistol_shot",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Use Greenskins Wickers buff immediately with Opportunity unless running Fan the Hammer",
								["criteria"] = "buff.greenskins_wickers.up & ( ! talent.fan_the_hammer.enabled & buff.opportunity.up || buff.greenskins_wickers.remains < 1.5 )",
								["action"] = "pistol_shot",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "With Fan the Hammer, consume Opportunity at max stacks or if we will get max 4+ CP and Dreadblades is not up",
								["criteria"] = "talent.fan_the_hammer.enabled & buff.opportunity.up & ( buff.opportunity.stack >= buff.opportunity.max_stack || buff.opportunity.remains < 2 )",
								["action"] = "pistol_shot",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.fan_the_hammer.enabled & buff.opportunity.up & combo_points.deficit > ( ( 1 + talent.quick_draw.enabled ) * talent.fan_the_hammer.rank ) & ! buff.dreadblades.up & ( ! talent.hidden_opportunity.enabled || ! buff.subterfuge.up & ! buff.shadow_dance.up )",
								["action"] = "pistol_shot",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "settings.ambush_anyway || talent.hidden_opportunity.enabled || talent.find_weakness.enabled & debuff.find_weakness.down",
								["action"] = "ambush",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Use Pistol Shot with Opportunity if Combat Potency won't overcap energy, when it will exactly cap CP, or when using Quick Draw",
								["criteria"] = "! talent.fan_the_hammer.enabled & buff.opportunity.up & ( energy.base_deficit > energy.regen * 1.5 || ! talent.weaponmaster.enabled & combo_points.deficit <= 1 + buff.broadside.up || talent.quick_draw.enabled || talent.audacity.enabled & ! buff.audacity.up )",
								["action"] = "pistol_shot",
							}, -- [10]
							{
								["action"] = "sinister_strike",
								["enabled"] = true,
							}, -- [11]
						},
					},
					["version"] = 20230116,
					["warnings"] = "The import for 'stealth' required some automated changes.\nLine 1: Converted 'talent.subterfuge' to 'talent.subterfuge.enabled' (1x).\nLine 1: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 4: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 4: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 4: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 4: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 5: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 5: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 5: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 6: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 6: Converted 'rtb_buffs.will_lose.skull_and_crossbones' to 'rtb_buffs_will_lose_buff.skull_and_crossbones' (1x).\nLine 6: Converted 'rtb_buffs.will_lose.grand_melee' to 'rtb_buffs_will_lose_buff.grand_melee' (1x).\nLine 8: Converted 'talent.improved_ambush' to 'talent.improved_ambush.enabled' (1x).\nLine 8: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 9: Converted 'talent.quick_draw' to 'talent.quick_draw.enabled' (1x).\nLine 9: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 5: Converted 'talent.improved_adrenaline_rush' to 'talent.improved_adrenaline_rush.enabled' (1x).\n\nThe import for 'finish' required some automated changes.\nLine 1: Converted 'talent.greenskins_wickers' to 'talent.greenskins_wickers.enabled' (1x).\nLine 1: Converted 'talent.greenskins_wickers' to 'talent.greenskins_wickers.enabled' (1x).\nLine 2: Converted 'talent.swift_slasher' to 'talent.swift_slasher.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 1: Converted 'talent.improved_adrenaline_rush' to 'talent.improved_adrenaline_rush.enabled' (1x).\nLine 5: Converted operations in 'variable.blade_flurry_sync&!buff.dreadblades.up&(energy.base_time_to_max>4+stealthed.rogue-spell_targets%3)' to 'variable.blade_flurry_sync&!buff.dreadblades.up&(energy.base_time_to_max>4+stealthed.rogue-spell_targets/3)'.\nLine 6: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 7: Converted 'talent.marked_for_death' to 'talent.marked_for_death.enabled' (1x).\nLine 12: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 21: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 22: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\n\nThe import for 'stealth_cds' required some automated changes.\nLine 1: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 1: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 2: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 2: Converted 'talent.quick_draw' to 'talent.quick_draw.enabled' (1x).\nLine 2: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 2: Converted 'talent.count_the_odds' to 'talent.count_the_odds.enabled' (1x).\nLine 2: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 3: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 3: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 4: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 5: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 5: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 5: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 6: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 6: Converted 'talent.ghostly_strike' to 'talent.ghostly_strike.enabled' (1x).\nLine 6: Converted 'talent.dreadblades' to 'talent.dreadblades.enabled' (1x).\nLine 6: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 7: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 7: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 7: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 8: Converted 'talent.keep_it_rolling' to 'talent.keep_it_rolling.enabled' (1x).\nLine 8: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\n\nThe import for 'build' required some automated changes.\nLine 4: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 4: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 5: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 5: Converted 'talent.audacity' to 'talent.audacity.enabled' (1x).\nLine 5: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 6: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 7: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 8: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 8: Converted 'talent.quick_draw' to 'talent.quick_draw.enabled' (1x).\nLine 8: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 9: Converted 'talent.hidden_opportunity' to 'talent.hidden_opportunity.enabled' (1x).\nLine 9: Converted 'talent.find_weakness' to 'talent.find_weakness.enabled' (1x).\nLine 10: Converted 'talent.fan_the_hammer' to 'talent.fan_the_hammer.enabled' (1x).\nLine 10: Converted 'talent.weaponmaster' to 'talent.weaponmaster.enabled' (1x).\n\nImported 7 action lists.\n",
					["profile"] = "actions.precombat+=/apply_poison\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/stealth\nactions.precombat+=/marked_for_death,precombat_seconds=10,if=raid_event.adds.in>25\nactions.precombat+=/adrenaline_rush,precombat_seconds=3,if=talent.improved_adrenaline_rush\nactions.precombat+=/roll_the_bones,precombat_seconds=2,if=remains<3||rtb_buffs.normal=0\nactions.precombat+=/slice_and_dice,precombat_seconds=1,if=refreshable\n\n# Restealth if possible (no vulnerable enemies in combat)\nactions+=/stealth\n# Interrupt on cooldown to allow simming interactions with that\nactions+=/kick\n# Checks if we are in an appropriate Stealth state for triggering the Count the Odds bonus\nactions+=/variable,name=stealthed_cto,value=talent.count_the_odds&(stealthed.basic||buff.shadowmeld.up||buff.shadow_dance.up)\n# Roll the Bones Reroll Conditions\nactions+=/variable,name=rtb_reroll,if=!talent.hidden_opportunity,value=rtb_buffs<2&(!buff.broadside.up&(!talent.fan_the_hammer||!buff.skull_and_crossbones.up)&!buff.true_bearing.up||buff.loaded_dice.up)||rtb_buffs=2&(buff.buried_treasure.up&buff.grand_melee.up||!buff.broadside.up&!buff.true_bearing.up&buff.loaded_dice.up)\n# Additional Reroll Conditions for Keep it Rolling or Count the Odds\nactions+=/variable,name=rtb_reroll,if=!talent.hidden_opportunity&(talent.keep_it_rolling||talent.count_the_odds),value=variable.rtb_reroll||((rtb_buffs.normal=0&rtb_buffs.longer>=1)&!(buff.broadside.up&buff.true_bearing.up&buff.skull_and_crossbones.up)&!(buff.broadside.remains>39||buff.true_bearing.remains>39||buff.ruthless_precision.remains>39||buff.skull_and_crossbones.remains>39))\n# With Hidden Opportunity, prioritize rerolling for Skull and Crossbones over everything else\nactions+=/variable,name=rtb_reroll,if=talent.hidden_opportunity,value=!rtb_buffs.will_lose.skull_and_crossbones&(rtb_buffs.will_lose-rtb_buffs.will_lose.grand_melee)<2+buff.loaded_dice.up\n# Avoid rerolls when we will not have time remaining on the fight or add wave to recoup the opportunity cost of the global\nactions+=/variable,name=rtb_reroll,op=reset,if=!(raid_event.adds.remains>12||raid_event.adds.up&(raid_event.adds.in-raid_event.adds.remains)<6||target.time_to_die>12)||boss&fight_remains<12\n# Ensure we get full Ambush CP gains and aren't rerolling Count the Odds buffs away\nactions+=/variable,name=ambush_condition,value=combo_points.deficit>=2+talent.improved_ambush+buff.broadside.up&energy>=50&(!talent.count_the_odds||buff.roll_the_bones.remains>=10)\n# Finish at max possible CP without overflowing bonus combo points, unless for BtE which always should be 5+ CP\nactions+=/variable,name=finish_condition,value=combo_points>=cp_max_spend-buff.broadside.up-(buff.opportunity.up*(talent.quick_draw||talent.fan_the_hammer))||effective_combo_points>=cp_max_spend\n# Always attempt to use BtE at 5+ CP, regardless of CP gen waste\nactions+=/variable,name=finish_condition,op=reset,if=cooldown.between_the_eyes.ready&effective_combo_points<5\n# With multiple targets, this variable is checked to decide whether some CDs should be synced with Blade Flurry\nactions+=/variable,name=blade_flurry_sync,value=spell_targets.blade_flurry<2&raid_event.adds.in>20||buff.blade_flurry.remains>1+talent.killing_spree.enabled\n# Higher priority Stealth list for Count the Odds or true Stealth/Vanish that will break in a single global\nactions+=/call_action_list,name=stealth,if=stealthed.basic||buff.shadowmeld.up\nactions+=/call_action_list,name=cds\n# Lower priority Stealth list for Shadow Dance\nactions+=/call_action_list,name=stealth,if=variable.stealthed_cto\nactions+=/run_action_list,name=finish,if=variable.finish_condition\nactions+=/call_action_list,name=build\nactions+=/arcane_torrent,if=energy.base_deficit>=15+energy.regen\nactions+=/arcane_pulse\nactions+=/lights_judgment\nactions+=/bag_of_tricks\n\n# Builders\nactions.build+=/sepsis,cycle_targets=1,if=target.time_to_die>11&debuff.between_the_eyes.up||fight_remains<11\nactions.build+=/ghostly_strike,if=debuff.ghostly_strike.remains<=3&(spell_targets.blade_flurry<=2||buff.dreadblades.up)&!buff.subterfuge.up&target.time_to_die>=5\nactions.build+=/echoing_reprimand,if=!buff.dreadblades.up\n# High priority Ambush line to apply Find Weakness or consume HO+Audacity buff before Pistol Shot\nactions.build+=/ambush,if=settings.ambush_anyway||talent.hidden_opportunity&buff.audacity.up||talent.find_weakness&debuff.find_weakness.down\n# With Audacity + Hidden Opportunity + Fan the Hammer, use Pistol Shot to proc Audacity any time Ambush is not available\nactions.build+=/pistol_shot,if=talent.fan_the_hammer&talent.audacity&talent.hidden_opportunity&buff.opportunity.up&!buff.audacity.up&!buff.subterfuge.up&!buff.shadow_dance.up\n# Use Greenskins Wickers buff immediately with Opportunity unless running Fan the Hammer\nactions.build+=/pistol_shot,if=buff.greenskins_wickers.up&(!talent.fan_the_hammer&buff.opportunity.up||buff.greenskins_wickers.remains<1.5)\n# With Fan the Hammer, consume Opportunity at max stacks or if we will get max 4+ CP and Dreadblades is not up\nactions.build+=/pistol_shot,if=talent.fan_the_hammer&buff.opportunity.up&(buff.opportunity.stack>=buff.opportunity.max_stack||buff.opportunity.remains<2)\nactions.build+=/pistol_shot,if=talent.fan_the_hammer&buff.opportunity.up&combo_points.deficit>((1+talent.quick_draw)*talent.fan_the_hammer.rank)&!buff.dreadblades.up&(!talent.hidden_opportunity||!buff.subterfuge.up&!buff.shadow_dance.up)\n## actions.build+=/pool_resource,for_next=1\nactions.build+=/ambush,if=settings.ambush_anyway||talent.hidden_opportunity||talent.find_weakness&debuff.find_weakness.down\n# Use Pistol Shot with Opportunity if Combat Potency won't overcap energy, when it will exactly cap CP, or when using Quick Draw\nactions.build+=/pistol_shot,if=!talent.fan_the_hammer&buff.opportunity.up&(energy.base_deficit>energy.regen*1.5||!talent.weaponmaster&combo_points.deficit<=1+buff.broadside.up||talent.quick_draw.enabled||talent.audacity.enabled&!buff.audacity.up)\nactions.build+=/sinister_strike\n\n# Cooldowns\nactions.cds+=/adrenaline_rush,if=!buff.adrenaline_rush.up&(!talent.improved_adrenaline_rush||combo_points<=2)\nactions.cds+=/blade_flurry,if=spell_targets>=2&buff.blade_flurry.remains<gcd\nactions.cds+=/roll_the_bones,if=buff.dreadblades.down&(rtb_buffs.total=0||variable.rtb_reroll)\nactions.cds+=/keep_it_rolling,if=!variable.rtb_reroll&(buff.broadside.up+buff.true_bearing.up+buff.skull_and_crossbones.up+buff.ruthless_precision.up)>2&(buff.shadow_dance.down||rtb_buffs>=6)\nactions.cds+=/blade_rush,if=variable.blade_flurry_sync&!buff.dreadblades.up&(energy.base_time_to_max>4+stealthed.rogue-spell_targets%3)\nactions.cds+=/call_action_list,name=stealth_cds,if=!stealthed.all||talent.count_the_odds&!variable.stealthed_cto\nactions.cds+=/dreadblades,if=!stealthed.all&combo_points<=2&(!talent.marked_for_death||!cooldown.marked_for_death.ready)&target.time_to_die>=10\n# If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or without any CP.\nactions.cds+=/marked_for_death,line_cd=1.5,cycle_targets=1,if=raid_event.adds.up&(target.time_to_die<combo_points.deficit||combo_points.deficit>=cp_max_spend-1)&!buff.dreadblades.up\n# If no adds will die within the next 30s, use MfD on boss without any CP.\nactions.cds+=/marked_for_death,if=raid_event.adds.in>30-raid_event.adds.duration&combo_points.deficit>=cp_max_spend-1&!buff.dreadblades.up\nactions.cds+=/thistle_tea,if=!buff.thistle_tea.up&(energy.base_deficit>=100||fight_remains<charges*6)\nactions.cds+=/killing_spree,if=variable.blade_flurry_sync&!stealthed.rogue&debuff.between_the_eyes.up&energy.base_time_to_max>4\nactions.cds+=/shadowmeld,if=!stealthed.all&(talent.count_the_odds&variable.finish_condition||!talent.weaponmaster.enabled&variable.ambush_condition)\nactions.cds+=/potion,if=buff.bloodlust.react||fight_remains<30||buff.adrenaline_rush.up\nactions.cds+=/blood_fury\nactions.cds+=/berserking\nactions.cds+=/fireblood\nactions.cds+=/ancestral_call\n# Default conditions for usable items.\nactions.cds+=/use_item,name=manic_grieftorch,if=!stealthed.all&!buff.adrenaline_rush.up||fight_remains<5\nactions.cds+=/use_item,name=stormeaters_boon,if=spell_targets.blade_flurry>desired_targets||raid_event.adds.in>60||boss&fight_remains<10\nactions.cds+=/use_item,name=windscar_whetstone,if=spell_targets.blade_flurry>desired_targets||raid_event.adds.in>60||boss&fight_remains<7\nactions.cds+=/use_items,slots=trinket1,if=debuff.between_the_eyes.up||trinket.1.has_stat.any_dps||boss&fight_remains<=20\nactions.cds+=/use_items,slots=trinket2,if=debuff.between_the_eyes.up||trinket.2.has_stat.any_dps||boss&fight_remains<=20\n\n# Stealth Cooldowns\nactions.stealth_cds+=/variable,name=vanish_condition,value=talent.hidden_opportunity||!talent.shadow_dance||!cooldown.shadow_dance.ready\nactions.stealth_cds+=/variable,name=vanish_opportunity_condition,value=!talent.shadow_dance&talent.fan_the_hammer.rank+talent.quick_draw+talent.audacity<talent.count_the_odds+talent.keep_it_rolling\nactions.stealth_cds+=/vanish,if=talent.find_weakness&!talent.audacity&debuff.find_weakness.down&variable.ambush_condition&variable.vanish_condition\nactions.stealth_cds+=/vanish,if=talent.hidden_opportunity&!buff.audacity.up&(variable.vanish_opportunity_condition||buff.opportunity.stack<buff.opportunity.max_stack)&variable.ambush_condition&variable.vanish_condition\nactions.stealth_cds+=/vanish,if=(!talent.find_weakness||talent.audacity)&!talent.hidden_opportunity&variable.finish_condition&variable.vanish_condition\nactions.stealth_cds+=/variable,name=shadow_dance_condition,value=talent.shadow_dance&debuff.between_the_eyes.up&(!talent.ghostly_strike||debuff.ghostly_strike.up)&(!talent.dreadblades||!cooldown.dreadblades.ready)&(!talent.hidden_opportunity||!buff.audacity.up&(talent.fan_the_hammer.rank<2||!buff.opportunity.up))\nactions.stealth_cds+=/shadow_dance,if=!talent.keep_it_rolling&variable.shadow_dance_condition&buff.slice_and_dice.up&(variable.finish_condition||talent.hidden_opportunity)&(!talent.hidden_opportunity||!cooldown.vanish.ready)\nactions.stealth_cds+=/shadow_dance,if=talent.keep_it_rolling&variable.shadow_dance_condition&(cooldown.keep_it_rolling.remains<=30||cooldown.keep_it_rolling.remains>120&(variable.finish_condition||talent.hidden_opportunity))\n\n# Finishers  BtE to keep the Crit debuff up, if RP is up, or for Greenskins, unless the target is about to die.\nactions.finish+=/between_the_eyes,if=target.time_to_die>3&(debuff.between_the_eyes.remains<4||talent.greenskins_wickers&!buff.greenskins_wickers.up||!talent.greenskins_wickers&buff.ruthless_precision.up)\nactions.finish+=/slice_and_dice,if=buff.slice_and_dice.remains<fight_remains&refreshable&(!talent.swift_slasher||combo_points>=cp_max_spend)\nactions.finish+=/cold_blood\nactions.finish+=/dispatch\n\n# Stealth\nactions.stealth+=/blade_flurry,if=talent.subterfuge&talent.hidden_opportunity&spell_targets>=2&!buff.blade_flurry.up\nactions.stealth+=/cold_blood,if=variable.finish_condition\nactions.stealth+=/dispatch,if=variable.finish_condition\nactions.stealth+=/ambush,if=variable.stealthed_cto||stealthed.basic&(settings.ambush_anyway||talent.find_weakness&!debuff.find_weakness.up||talent.hidden_opportunity)",
					["spec"] = 260,
				},
				["Subtlety"] = {
					["builtIn"] = true,
					["date"] = 20221223,
					["spec"] = 261,
					["desc"] = "",
					["lists"] = {
						["stealthed"] = {
							{
								["enabled"] = true,
								["description"] = "Stealthed Rotation  If Stealth/vanish are up, use Shadowstrike to benefit from the passive bonus and Find Weakness, even if we are at max CP (unless using Master Assassin)",
								["criteria"] = "( buff.stealth.up || buff.vanish.up ) & ( spell_targets.shuriken_storm < 4 || variable.priority_rotation )",
								["action"] = "shadowstrike",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.danse_macabre.stack < 5 & ( combo_points.deficit = 2 || combo_points.deficit = 3 ) & ( buff.premeditation.up || effective_combo_points < 7 ) & ( spell_targets.shuriken_storm <= 8 || talent.lingering_shadow.enabled )",
								["description"] = "Variable to Gloomblade / Backstab when on 4 or 5 combo points with premediation and when the combo point is not anima charged",
								["var_name"] = "gloomblade_condition",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.gloomblade_condition & buff.silent_storm.up & ! debuff.find_weakness.remains",
								["action"] = "shuriken_storm",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.gloomblade_condition",
								["action"] = "gloomblade",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.gloomblade_condition & talent.danse_macabre.enabled & buff.danse_macabre.stack <= 2 & spell_targets.shuriken_storm <= 2",
								["action"] = "backstab",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.effective_combo_points >= cp_max_spend",
								["action"] = "call_action_list",
								["list_name"] = "finish",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Finish earlier with Shuriken tornado up.",
								["criteria"] = "buff.shuriken_tornado.up & combo_points.deficit <= 2",
								["list_name"] = "finish",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Also safe to finish at 4+ CP with exactly 4 targets. (Same as outside stealth.)",
								["criteria"] = "spell_targets.shuriken_storm >= 4 - talent.seal_fate.enabled & variable.effective_combo_points >= 4",
								["list_name"] = "finish",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Finish at lower combo points if you are talented in DS, SS or Seal Fate",
								["criteria"] = "combo_points.deficit <= 1 + ( talent.seal_fate.enabled || talent.deeper_stratagem.enabled || talent.secret_stratagem.enabled )",
								["list_name"] = "finish",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Use Gloomblade or Backstab when close to hitting max PV stacks",
								["criteria"] = "buff.perforated_veins.stack >= 5 & spell_targets.shuriken_storm < 3",
								["action"] = "gloomblade",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.perforated_veins.stack >= 5 & spell_targets.shuriken_storm < 3",
								["action"] = "backstab",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "stealthed.sepsis & spell_targets.shuriken_storm < 4",
								["action"] = "shadowstrike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets >= 3 + buff.the_rotten.up & ( ! buff.premeditation.up || spell_targets >= 7 )",
								["action"] = "shuriken_storm",
							}, -- [13]
							{
								["enabled"] = true,
								["description"] = "Shadowstrike to refresh Find Weakness and to ensure we can carry over a full FW into the next SoD if possible.",
								["criteria"] = "debuff.find_weakness.remains <= 1 || cooldown.symbols_of_death.remains < 18 & debuff.find_weakness.remains < cooldown.symbols_of_death.remains",
								["action"] = "shadowstrike",
							}, -- [14]
							{
								["action"] = "shadowstrike",
								["enabled"] = true,
							}, -- [15]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Restealth if possible (no vulnerable enemies in combat)",
								["action"] = "stealth",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Interrupt on cooldown to allow simming interactions with that",
								["action"] = "kick",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.slice_and_dice.up || spell_targets.shuriken_storm >= cp_max_spend",
								["description"] = "Used to determine whether cooldowns wait for SnD based on targets.",
								["var_name"] = "snd_condition",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "is_next_cp_animacharged",
								["criteria"] = "talent.echoing_reprimand.enabled",
								["description"] = "Check to see if the next CP (in the event of a ShT proc) is Animacharged",
								["value"] = "combo_points = 1 & buff.echoing_reprimand_2.up || combo_points = 2 & buff.echoing_reprimand_3.up || combo_points = 3 & buff.echoing_reprimand_4.up || combo_points = 4 & buff.echoing_reprimand_5.up",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "effective_combo_points",
								["description"] = "Account for ShT reaction time by ignoring low-CP animacharged matches in the 0.5s preceeding a potential ShT proc",
								["var_name"] = "effective_combo_points",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points",
								["criteria"] = "talent.echoing_reprimand.enabled & effective_combo_points > combo_points & combo_points.deficit > 2 & time_to_sht_plus.4 < 0.5 & ! variable.is_next_cp_animacharged",
								["var_name"] = "effective_combo_points",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Check CDs at first",
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Apply Slice and Dice at 4+ CP if it expires within the next GCD or is not up",
								["criteria"] = "spell_targets.shuriken_storm < cp_max_spend & buff.slice_and_dice.remains < gcd.max & fight_remains > 6 & combo_points >= 4",
								["action"] = "slice_and_dice",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Run fully switches to the Stealthed Rotation (by doing so, it forces pooling if nothing is available).",
								["criteria"] = "stealthed.all",
								["list_name"] = "stealthed",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "25 + talent.vigor.enabled * 20 + talent.master_of_shadows.enabled * 20 + talent.shadow_focus.enabled * 25 + talent.alacrity.enabled * 20 + 25 * ( spell_targets.shuriken_storm >= 4 )",
								["description"] = "Used to define when to use stealth CDs or builders",
								["var_name"] = "stealth_threshold",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Consider using a Stealth CD when reaching the energy threshold",
								["criteria"] = "energy.deficit <= variable.stealth_threshold",
								["list_name"] = "stealth_cds",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.effective_combo_points >= cp_max_spend",
								["action"] = "call_action_list",
								["list_name"] = "finish",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Finish at maximum or close to maximum combo point value",
								["criteria"] = "combo_points.deficit <= 1 || fight_remains <= 1 & variable.effective_combo_points >= 3",
								["list_name"] = "finish",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Finish at 4+ against 4 targets (outside stealth)",
								["criteria"] = "spell_targets.shuriken_storm >= ( 4 - talent.seal_fate.enabled ) & variable.effective_combo_points >= 4",
								["list_name"] = "finish",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Use a builder when reaching the energy threshold",
								["criteria"] = "energy.deficit <= variable.stealth_threshold",
								["list_name"] = "build",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "Lowest priority in all of the APL because it causes a GCD",
								["criteria"] = "energy.deficit >= 15 + energy.regen",
								["action"] = "arcane_torrent",
							}, -- [16]
							{
								["action"] = "arcane_pulse",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [19]
						},
						["precombat"] = {
							{
								["action"] = "apply_poison",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "stealth",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["precombat_seconds"] = "15",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "slice_and_dice",
								["criteria"] = "refreshable",
								["precombat_seconds"] = "1",
							}, -- [4]
						},
						["build"] = {
							{
								["enabled"] = true,
								["description"] = "Builders",
								["criteria"] = "spell_targets >= 2 + ( buff.lingering_shadow.up || buff.perforated_veins.up )",
								["action"] = "shuriken_storm",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.echoing_reprimand.enabled || ! ( variable.is_next_cp_animacharged & ( time_to_sht_plus.3 < 0.5 || time_to_sht_plus.4 < 1 ) & energy < 60 )",
								["description"] = "Build immediately unless the next CP is Animacharged and we won't cap energy waiting for it.",
								["var_name"] = "anima_helper",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.anima_helper",
								["action"] = "gloomblade",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.anima_helper",
								["action"] = "backstab",
							}, -- [4]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadow_dance.up & buff.shuriken_tornado.up & buff.shuriken_tornado.remains <= 3.5",
								["use_off_gcd"] = 1,
								["action"] = "shadow_dance",
								["description"] = "Cooldowns  Use Dance off-gcd before the first Shuriken Storm from Tornado comes in.",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.shuriken_tornado.up & buff.shuriken_tornado.remains <= 3.5",
								["use_off_gcd"] = 1,
								["action"] = "symbols_of_death",
								["description"] = "(Unless already up because we took Shadow Focus) use Symbols off-gcd before the first Shuriken Storm from Tornado comes in.",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Vanish for Shadowstrike with Danse Macabre at adaquate stacks",
								["criteria"] = "buff.danse_macabre.stack > 3 & combo_points <= 2",
								["action"] = "vanish",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Cold Blood on 5 combo points when not playing Secret Technique",
								["criteria"] = "! talent.secret_technique.enabled & combo_points >= 5",
								["action"] = "cold_blood",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "flagellation",
								["criteria"] = "variable.snd_condition & combo_points >= 5 & target.time_to_die > 10",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["description"] = "Pool for Tornado pre-SoD with ShD ready when not running SF.",
								["criteria"] = "talent.shuriken_tornado.enabled & ! talent.shadow_focus.enabled",
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Use Tornado pre SoD when we have the energy whether from pooling without SF or just generally.",
								["criteria"] = "spell_targets.shuriken_storm <= 1 & energy >= 60 & variable.snd_condition & cooldown.symbols_of_death.up & cooldown.shadow_dance.charges >= 1 & ( ! talent.flagellation.enabled & ! cooldown.flagellation.up || buff.flagellation_buff.up || spell_targets.shuriken_storm >= 5 ) & combo_points <= 2 & ! buff.premeditation.up",
								["action"] = "shuriken_tornado",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.snd_condition & combo_points.deficit >= 1 & target.time_to_die >= 16",
								["action"] = "sepsis",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Use Symbols on cooldown (after first SnD) unless we are going to pop Tornado and do not have Shadow Focus.",
								["criteria"] = "variable.snd_condition & ( ! talent.flagellation.enabled || cooldown.flagellation.remains > 10 || cooldown.flagellation.up & combo_points >= 5 )",
								["action"] = "symbols_of_death",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "marked_for_death",
								["line_cd"] = "1.5",
								["cycle_targets"] = 1,
								["criteria"] = "raid_event.adds.up & ( target.time_to_die < combo_points.deficit || ! stealthed.all & combo_points.deficit >= cp_max_spend )",
								["description"] = "If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or not stealthed without any CP.",
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "If no adds will die within the next 30s, use MfD on boss without any CP.",
								["criteria"] = "raid_event.adds.in > 30 - raid_event.adds.duration & combo_points.deficit >= cp_max_spend",
								["action"] = "marked_for_death",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.snd_condition & combo_points.deficit >= 2 & ( boss || fight_remains > buff.shadow_blades.duration )",
								["action"] = "shadow_blades",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.snd_condition & combo_points.deficit >= 3 & ( variable.priority_rotation || spell_targets.shuriken_storm <= 4 || talent.resounding_clarity.enabled ) & ( buff.shadow_dance.up || ! talent.danse_macabre.enabled )",
								["action"] = "echoing_reprimand",
							}, -- [13]
							{
								["enabled"] = true,
								["description"] = "With SF, if not already done, use Tornado with SoD up.",
								["criteria"] = "variable.snd_condition & buff.symbols_of_death.up & combo_points <= 2 & ( ! buff.premeditation.up || spell_targets.shuriken_storm > 4 )",
								["action"] = "shuriken_tornado",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shadow_dance.ready & ! stealthed.all & spell_targets.shuriken_storm >= 3 & ! talent.flagellation.enabled",
								["action"] = "shuriken_tornado",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! buff.shadow_dance.up & boss & fight_remains <= 8 + talent.subterfuge.enabled",
								["action"] = "shadow_dance",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.symbols_of_death.remains >= 3 & ! buff.thistle_tea.up & ( energy.deficit >= 100 || cooldown.thistle_tea.charges_fractional >= 2.75 & buff.shadow_dance.up ) || buff.shadow_dance.up & ! buff.thistle_tea.up & spell_targets.shuriken_storm >= 3 || ! buff.thistle_tea.up & fight_remains <= ( 6 * cooldown.thistle_tea.charges )",
								["action"] = "thistle_tea",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.react || fight_remains < 30 || buff.symbols_of_death.up & ( buff.shadow_blades.up || cooldown.shadow_blades.remains <= 10 )",
								["action"] = "potion",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "blood_fury",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "berserking",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "fireblood",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.symbols_of_death.up",
								["action"] = "ancestral_call",
							}, -- [22]
							{
								["enabled"] = true,
								["description"] = "Default fallback for usable items: Use with Symbols of Death.",
								["criteria"] = "buff.symbols_of_death.up || fight_remains < 20",
								["action"] = "use_items",
							}, -- [23]
						},
						["stealth_cds"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.shadow_dance.charges_fractional >= 0.75 + talent.shadow_dance.enabled",
								["description"] = "Stealth Cooldowns  Helper Variable",
								["var_name"] = "shd_threshold",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Vanish if we are capping on Dance charges. Early before first dance if we have no Nightstalker but Dark Shadow in order to get Rupture up (no Master Assassin).",
								["criteria"] = "( ! talent.danse_macabre.enabled || spell_targets.shuriken_storm >= 3 ) & ! variable.shd_threshold & combo_points.deficit > 1",
								["action"] = "vanish",
							}, -- [2]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["description"] = "Pool for Shadowmeld + Shadowstrike unless we are about to cap on Dance charges. Only when Find Weakness is about to run out.",
								["criteria"] = "race.night_elf",
								["extra_amount"] = "40",
								["action"] = "pool_resource",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "energy >= 40 & energy.deficit >= 10 & ! variable.shd_threshold & combo_points.deficit > 4",
								["action"] = "shadowmeld",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "combo_points <= 1",
								["description"] = "CP thresholds for entering Shadow Dance Default to start dance with 0 or 1 combo point",
								["var_name"] = "shd_combo_points",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "shd_combo_points",
								["criteria"] = "spell_targets.shuriken_storm > ( 4 - 2 * talent.shuriken_tornado.enabled ) || variable.priority_rotation & spell_targets.shuriken_storm >= 4",
								["description"] = "Use stealth cooldowns with high combo points when playing shuriken tornado or with high target counts",
								["value"] = "combo_points.deficit <= 1",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "shd_combo_points",
								["criteria"] = "spell_targets.shuriken_storm = ( 4 - talent.seal_fate.enabled )",
								["description"] = "Use stealth cooldowns on any combo point on 4 targets",
								["value"] = "1",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Dance during Symbols or above threshold.",
								["criteria"] = "( variable.shd_combo_points & ( buff.symbols_of_death.remains >= ( 2.2 - talent.flagellation.enabled ) || variable.shd_threshold ) || buff.flagellation.up || buff.flagellation_persist.remains >= 6 || spell_targets.shuriken_storm >= 4 & cooldown.symbols_of_death.remains > 10 ) & ! buff.the_rotten.up",
								["action"] = "shadow_dance",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Burn Dances charges if before the fight ends if SoD won't be ready in time.",
								["criteria"] = "variable.shd_combo_points & fight_remains < cooldown.symbols_of_death.remains || ! talent.shadow_dance.enabled & dot.rupture.ticking & spell_targets.shuriken_storm <= 4",
								["action"] = "shadow_dance",
							}, -- [9]
						},
						["finish"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.premeditation.enabled & spell_targets.shuriken_storm < 5",
								["description"] = "Finishers  While using Premeditation, avoid casting Slice and Dice when Shadow Dance is soon to be used, except for Kyrian",
								["var_name"] = "premed_snd_condition",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.premed_snd_condition & spell_targets.shuriken_storm < 6 & ! buff.shadow_dance.up & buff.slice_and_dice.remains < fight_remains & refreshable",
								["action"] = "slice_and_dice",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.premed_snd_condition & cooldown.shadow_dance.charges_fractional < 1.75 & buff.slice_and_dice.remains < cooldown.symbols_of_death.remains & ( cooldown.shadow_dance.ready & buff.symbols_of_death.remains - buff.shadow_dance.remains < 1.2 )",
								["action"] = "slice_and_dice",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.thistle_tea.up & spell_targets.shuriken_storm = 1 || buff.shadow_dance.up & ( spell_targets.shuriken_storm = 1 || dot.rupture.ticking & spell_targets.shuriken_storm >= 2 )",
								["var_name"] = "skip_rupture",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Keep up Rupture if it is about to run out.",
								["criteria"] = "( ! variable.skip_rupture || variable.priority_rotation ) & target.time_to_die - remains > 6 & refreshable",
								["action"] = "rupture",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Refresh Rupture early for Finality",
								["criteria"] = "! variable.skip_rupture & buff.finality_rupture.up & cooldown.shadow_dance.remains < 12 & cooldown.shadow_dance.charges_fractional <= 1 & spell_targets.shuriken_storm = 1 & ( talent.dark_brew.enabled || talent.danse_macabre.enabled )",
								["action"] = "rupture",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Sync Cold Blood with Secret Technique when possible",
								["criteria"] = "buff.shadow_dance.up & ( buff.danse_macabre.stack >= 3 || ! talent.danse_macabre.enabled ) & cooldown.secret_technique.ready",
								["action"] = "cold_blood",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.shadow_dance.up & ( buff.danse_macabre.stack >= 3 || ! talent.danse_macabre.enabled ) & ( ! talent.cold_blood.enabled || cooldown.cold_blood.remains > buff.shadow_dance.remains - 2 )",
								["action"] = "secret_technique",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "rupture",
								["cycle_targets"] = 1,
								["criteria"] = "! variable.skip_rupture & ! variable.priority_rotation & spell_targets.shuriken_storm >= 2 & target.time_to_die >= ( 2 * combo_points ) & refreshable",
								["description"] = "Multidotting targets that will live for the duration of Rupture, refresh during pandemic.",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Refresh Rupture early if it will expire during Symbols. Do that refresh if SoD gets ready in the next 5s.",
								["criteria"] = "! variable.skip_rupture & remains < cooldown.symbols_of_death.remains + 10 & cooldown.symbols_of_death.remains <= 5 & target.time_to_die - remains > cooldown.symbols_of_death.remains + 5",
								["action"] = "rupture",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! variable.priority_rotation & spell_targets >= 3",
								["action"] = "black_powder",
							}, -- [11]
							{
								["action"] = "eviscerate",
								["enabled"] = true,
							}, -- [12]
						},
					},
					["version"] = 20221223,
					["warnings"] = "The import for 'stealthed' required some automated changes.\nLine 2: Converted 'talent.lingering_shadow' to 'talent.lingering_shadow.enabled' (1x).\nLine 5: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 8: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\nLine 9: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\nLine 9: Converted 'talent.deeper_stratagem' to 'talent.deeper_stratagem.enabled' (1x).\nLine 9: Converted 'talent.secret_stratagem' to 'talent.secret_stratagem.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 6: Converted 'time_to_sht.4.plus' to 'time_to_sht_plus.4' (1x).\nLine 14: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\n\nThe import for 'finish' required some automated changes.\nLine 6: Converted 'talent.dark_brew' to 'talent.dark_brew.enabled' (1x).\nLine 6: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 7: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 8: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 8: Converted 'talent.cold_blood' to 'talent.cold_blood.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 4: Converted 'talent.secret_technique' to 'talent.secret_technique.enabled' (1x).\nLine 9: Converted 'talent.flagellation' to 'talent.flagellation.enabled' (1x).\nLine 13: Converted 'talent.resounding_clarity' to 'talent.resounding_clarity.enabled' (1x).\nLine 13: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\n\nThe import for 'stealth_cds' required some automated changes.\nLine 1: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\nLine 2: Converted 'talent.danse_macabre' to 'talent.danse_macabre.enabled' (1x).\nLine 7: Converted 'talent.seal_fate' to 'talent.seal_fate.enabled' (1x).\nLine 9: Converted 'talent.shadow_dance' to 'talent.shadow_dance.enabled' (1x).\n\nThe import for 'build' required some automated changes.\nLine 2: Converted 'time_to_sht.3.plus' to 'time_to_sht_plus.3' (1x).\nLine 2: Converted 'time_to_sht.4.plus' to 'time_to_sht_plus.4' (1x).\n\nImported 7 action lists.\n",
					["author"] = "SimC",
					["profile"] = "actions.precombat+=/apply_poison\nactions.precombat+=/stealth\nactions.precombat+=/marked_for_death,precombat_seconds=15\nactions.precombat+=/slice_and_dice,precombat_seconds=1,if=refreshable\n\n# Restealth if possible (no vulnerable enemies in combat)\nactions+=/stealth\n# Interrupt on cooldown to allow simming interactions with that\nactions+=/kick\n# Used to determine whether cooldowns wait for SnD based on targets.\nactions+=/variable,name=snd_condition,value=buff.slice_and_dice.up||spell_targets.shuriken_storm>=cp_max_spend\n# Check to see if the next CP (in the event of a ShT proc) is Animacharged\nactions+=/variable,name=is_next_cp_animacharged,if=talent.echoing_reprimand.enabled,value=combo_points=1&buff.echoing_reprimand_2.up||combo_points=2&buff.echoing_reprimand_3.up||combo_points=3&buff.echoing_reprimand_4.up||combo_points=4&buff.echoing_reprimand_5.up\n# Account for ShT reaction time by ignoring low-CP animacharged matches in the 0.5s preceeding a potential ShT proc\nactions+=/variable,name=effective_combo_points,value=effective_combo_points\nactions+=/variable,name=effective_combo_points,if=talent.echoing_reprimand.enabled&effective_combo_points>combo_points&combo_points.deficit>2&time_to_sht.4.plus<0.5&!variable.is_next_cp_animacharged,value=combo_points\n# Check CDs at first\nactions+=/call_action_list,name=cds\n# Apply Slice and Dice at 4+ CP if it expires within the next GCD or is not up\nactions+=/slice_and_dice,if=spell_targets.shuriken_storm<cp_max_spend&buff.slice_and_dice.remains<gcd.max&fight_remains>6&combo_points>=4\n# Run fully switches to the Stealthed Rotation (by doing so, it forces pooling if nothing is available).\nactions+=/run_action_list,name=stealthed,if=stealthed.all\n## Only change rotation if we have priority_rotation set.\n## actions+=/variable,name=priority_rotation,value=priority_rotation\n# Used to define when to use stealth CDs or builders\nactions+=/variable,name=stealth_threshold,value=25+talent.vigor.enabled*20+talent.master_of_shadows.enabled*20+talent.shadow_focus.enabled*25+talent.alacrity.enabled*20+25*(spell_targets.shuriken_storm>=4)\n# Consider using a Stealth CD when reaching the energy threshold\nactions+=/call_action_list,name=stealth_cds,if=energy.deficit<=variable.stealth_threshold\nactions+=/call_action_list,name=finish,if=variable.effective_combo_points>=cp_max_spend\n# Finish at maximum or close to maximum combo point value\nactions+=/call_action_list,name=finish,if=combo_points.deficit<=1||fight_remains<=1&variable.effective_combo_points>=3\n# Finish at 4+ against 4 targets (outside stealth)\nactions+=/call_action_list,name=finish,if=spell_targets.shuriken_storm>=(4-talent.seal_fate)&variable.effective_combo_points>=4\n# Use a builder when reaching the energy threshold\nactions+=/call_action_list,name=build,if=energy.deficit<=variable.stealth_threshold\n# Lowest priority in all of the APL because it causes a GCD\nactions+=/arcane_torrent,if=energy.deficit>=15+energy.regen\nactions+=/arcane_pulse\nactions+=/lights_judgment\nactions+=/bag_of_tricks\n\n# Builders\nactions.build+=/shuriken_storm,if=spell_targets>=2+(buff.lingering_shadow.up||buff.perforated_veins.up)\n# Build immediately unless the next CP is Animacharged and we won't cap energy waiting for it.\nactions.build+=/variable,name=anima_helper,value=!talent.echoing_reprimand.enabled||!(variable.is_next_cp_animacharged&(time_to_sht.3.plus<0.5||time_to_sht.4.plus<1)&energy<60)\nactions.build+=/gloomblade,if=variable.anima_helper\nactions.build+=/backstab,if=variable.anima_helper\n\n# Cooldowns  Use Dance off-gcd before the first Shuriken Storm from Tornado comes in.\nactions.cds+=/shadow_dance,use_off_gcd=1,if=!buff.shadow_dance.up&buff.shuriken_tornado.up&buff.shuriken_tornado.remains<=3.5\n# (Unless already up because we took Shadow Focus) use Symbols off-gcd before the first Shuriken Storm from Tornado comes in.\nactions.cds+=/symbols_of_death,use_off_gcd=1,if=buff.shuriken_tornado.up&buff.shuriken_tornado.remains<=3.5\n# Vanish for Shadowstrike with Danse Macabre at adaquate stacks\nactions.cds+=/vanish,if=buff.danse_macabre.stack>3&combo_points<=2\n# Cold Blood on 5 combo points when not playing Secret Technique\nactions.cds+=/cold_blood,if=!talent.secret_technique&combo_points>=5\nactions.cds+=/flagellation,cycle_targets=1,if=variable.snd_condition&combo_points>=5&target.time_to_die>10\n# Pool for Tornado pre-SoD with ShD ready when not running SF.\nactions.cds+=/pool_resource,for_next=1,if=talent.shuriken_tornado.enabled&!talent.shadow_focus.enabled\n# Use Tornado pre SoD when we have the energy whether from pooling without SF or just generally.\nactions.cds+=/shuriken_tornado,if=spell_targets.shuriken_storm<=1&energy>=60&variable.snd_condition&cooldown.symbols_of_death.up&cooldown.shadow_dance.charges>=1&(!talent.flagellation.enabled&!cooldown.flagellation.up||buff.flagellation_buff.up||spell_targets.shuriken_storm>=5)&combo_points<=2&!buff.premeditation.up\nactions.cds+=/sepsis,if=variable.snd_condition&combo_points.deficit>=1&target.time_to_die>=16\n# Use Symbols on cooldown (after first SnD) unless we are going to pop Tornado and do not have Shadow Focus.\nactions.cds+=/symbols_of_death,if=variable.snd_condition&(!talent.flagellation||cooldown.flagellation.remains>10||cooldown.flagellation.up&combo_points>=5)\n# If adds are up, snipe the one with lowest TTD. Use when dying faster than CP deficit or not stealthed without any CP.\nactions.cds+=/marked_for_death,line_cd=1.5,cycle_targets=1,if=raid_event.adds.up&(target.time_to_die<combo_points.deficit||!stealthed.all&combo_points.deficit>=cp_max_spend)\n# If no adds will die within the next 30s, use MfD on boss without any CP.\nactions.cds+=/marked_for_death,if=raid_event.adds.in>30-raid_event.adds.duration&combo_points.deficit>=cp_max_spend\nactions.cds+=/shadow_blades,if=variable.snd_condition&combo_points.deficit>=2&(boss||fight_remains>buff.shadow_blades.duration)\nactions.cds+=/echoing_reprimand,if=variable.snd_condition&combo_points.deficit>=3&(variable.priority_rotation||spell_targets.shuriken_storm<=4||talent.resounding_clarity)&(buff.shadow_dance.up||!talent.danse_macabre)\n# With SF, if not already done, use Tornado with SoD up.\nactions.cds+=/shuriken_tornado,if=variable.snd_condition&buff.symbols_of_death.up&combo_points<=2&(!buff.premeditation.up||spell_targets.shuriken_storm>4)\nactions.cds+=/shuriken_tornado,if=cooldown.shadow_dance.ready&!stealthed.all&spell_targets.shuriken_storm>=3&!talent.flagellation.enabled\nactions.cds+=/shadow_dance,if=!buff.shadow_dance.up&boss&fight_remains<=8+talent.subterfuge.enabled\nactions.cds+=/thistle_tea,if=cooldown.symbols_of_death.remains>=3&!buff.thistle_tea.up&(energy.deficit>=100||cooldown.thistle_tea.charges_fractional>=2.75&buff.shadow_dance.up)||buff.shadow_dance.up&!buff.thistle_tea.up&spell_targets.shuriken_storm>=3||!buff.thistle_tea.up&fight_remains<=(6*cooldown.thistle_tea.charges)\nactions.cds+=/potion,if=buff.bloodlust.react||fight_remains<30||buff.symbols_of_death.up&(buff.shadow_blades.up||cooldown.shadow_blades.remains<=10)\nactions.cds+=/blood_fury,if=buff.symbols_of_death.up\nactions.cds+=/berserking,if=buff.symbols_of_death.up\nactions.cds+=/fireblood,if=buff.symbols_of_death.up\nactions.cds+=/ancestral_call,if=buff.symbols_of_death.up\n# Default fallback for usable items: Use with Symbols of Death.\nactions.cds+=/use_items,if=buff.symbols_of_death.up||fight_remains<20\n\n# Finishers  While using Premeditation, avoid casting Slice and Dice when Shadow Dance is soon to be used, except for Kyrian\nactions.finish+=/variable,name=premed_snd_condition,value=talent.premeditation.enabled&spell_targets.shuriken_storm<5\nactions.finish+=/slice_and_dice,if=!variable.premed_snd_condition&spell_targets.shuriken_storm<6&!buff.shadow_dance.up&buff.slice_and_dice.remains<fight_remains&refreshable\nactions.finish+=/slice_and_dice,if=variable.premed_snd_condition&cooldown.shadow_dance.charges_fractional<1.75&buff.slice_and_dice.remains<cooldown.symbols_of_death.remains&(cooldown.shadow_dance.ready&buff.symbols_of_death.remains-buff.shadow_dance.remains<1.2)\nactions.finish+=/variable,name=skip_rupture,value=buff.thistle_tea.up&spell_targets.shuriken_storm=1||buff.shadow_dance.up&(spell_targets.shuriken_storm=1||dot.rupture.ticking&spell_targets.shuriken_storm>=2)\n# Keep up Rupture if it is about to run out.\nactions.finish+=/rupture,if=(!variable.skip_rupture||variable.priority_rotation)&target.time_to_die-remains>6&refreshable\n# Refresh Rupture early for Finality\nactions.finish+=/rupture,if=!variable.skip_rupture&buff.finality_rupture.up&cooldown.shadow_dance.remains<12&cooldown.shadow_dance.charges_fractional<=1&spell_targets.shuriken_storm=1&(talent.dark_brew||talent.danse_macabre)\n# Sync Cold Blood with Secret Technique when possible\nactions.finish+=/cold_blood,if=buff.shadow_dance.up&(buff.danse_macabre.stack>=3||!talent.danse_macabre)&cooldown.secret_technique.ready\nactions.finish+=/secret_technique,if=buff.shadow_dance.up&(buff.danse_macabre.stack>=3||!talent.danse_macabre)&(!talent.cold_blood||cooldown.cold_blood.remains>buff.shadow_dance.remains-2)\n# Multidotting targets that will live for the duration of Rupture, refresh during pandemic.\nactions.finish+=/rupture,cycle_targets=1,if=!variable.skip_rupture&!variable.priority_rotation&spell_targets.shuriken_storm>=2&target.time_to_die>=(2*combo_points)&refreshable\n# Refresh Rupture early if it will expire during Symbols. Do that refresh if SoD gets ready in the next 5s.\nactions.finish+=/rupture,if=!variable.skip_rupture&remains<cooldown.symbols_of_death.remains+10&cooldown.symbols_of_death.remains<=5&target.time_to_die-remains>cooldown.symbols_of_death.remains+5\nactions.finish+=/black_powder,if=!variable.priority_rotation&spell_targets>=3\nactions.finish+=/eviscerate\n\n# Stealth Cooldowns  Helper Variable\nactions.stealth_cds+=/variable,name=shd_threshold,value=cooldown.shadow_dance.charges_fractional>=0.75+talent.shadow_dance\n# Vanish if we are capping on Dance charges. Early before first dance if we have no Nightstalker but Dark Shadow in order to get Rupture up (no Master Assassin).\nactions.stealth_cds+=/vanish,if=(!talent.danse_macabre||spell_targets.shuriken_storm>=3)&!variable.shd_threshold&combo_points.deficit>1\n# Pool for Shadowmeld + Shadowstrike unless we are about to cap on Dance charges. Only when Find Weakness is about to run out.\nactions.stealth_cds+=/pool_resource,for_next=1,extra_amount=40,if=race.night_elf\nactions.stealth_cds+=/shadowmeld,if=energy>=40&energy.deficit>=10&!variable.shd_threshold&combo_points.deficit>4\n# CP thresholds for entering Shadow Dance Default to start dance with 0 or 1 combo point\nactions.stealth_cds+=/variable,name=shd_combo_points,value=combo_points<=1\n# Use stealth cooldowns with high combo points when playing shuriken tornado or with high target counts\nactions.stealth_cds+=/variable,name=shd_combo_points,value=combo_points.deficit<=1,if=spell_targets.shuriken_storm>(4-2*talent.shuriken_tornado.enabled)||variable.priority_rotation&spell_targets.shuriken_storm>=4\n# Use stealth cooldowns on any combo point on 4 targets\nactions.stealth_cds+=/variable,name=shd_combo_points,value=1,if=spell_targets.shuriken_storm=(4-talent.seal_fate)\n# Dance during Symbols or above threshold.\nactions.stealth_cds+=/shadow_dance,if=(variable.shd_combo_points&(buff.symbols_of_death.remains>=(2.2-talent.flagellation.enabled)||variable.shd_threshold)||buff.flagellation.up||buff.flagellation_persist.remains>=6||spell_targets.shuriken_storm>=4&cooldown.symbols_of_death.remains>10)&!buff.the_rotten.up\n# Burn Dances charges if before the fight ends if SoD won't be ready in time.\nactions.stealth_cds+=/shadow_dance,if=variable.shd_combo_points&fight_remains<cooldown.symbols_of_death.remains||!talent.shadow_dance&dot.rupture.ticking&spell_targets.shuriken_storm<=4\n\n# Stealthed Rotation  If Stealth/vanish are up, use Shadowstrike to benefit from the passive bonus and Find Weakness, even if we are at max CP (unless using Master Assassin)\nactions.stealthed+=/shadowstrike,if=(buff.stealth.up||buff.vanish.up)&(spell_targets.shuriken_storm<4||variable.priority_rotation)\n# Variable to Gloomblade / Backstab when on 4 or 5 combo points with premediation and when the combo point is not anima charged\nactions.stealthed+=/variable,name=gloomblade_condition,value=buff.danse_macabre.stack<5&(combo_points.deficit=2||combo_points.deficit=3)&(buff.premeditation.up||effective_combo_points<7)&(spell_targets.shuriken_storm<=8||talent.lingering_shadow)\nactions.stealthed+=/shuriken_storm,if=variable.gloomblade_condition&buff.silent_storm.up&!debuff.find_weakness.remains\nactions.stealthed+=/gloomblade,if=variable.gloomblade_condition\nactions.stealthed+=/backstab,if=variable.gloomblade_condition&talent.danse_macabre&buff.danse_macabre.stack<=2&spell_targets.shuriken_storm<=2\nactions.stealthed+=/call_action_list,name=finish,if=variable.effective_combo_points>=cp_max_spend\n# Finish earlier with Shuriken tornado up.\nactions.stealthed+=/call_action_list,name=finish,if=buff.shuriken_tornado.up&combo_points.deficit<=2\n# Also safe to finish at 4+ CP with exactly 4 targets. (Same as outside stealth.)\nactions.stealthed+=/call_action_list,name=finish,if=spell_targets.shuriken_storm>=4-talent.seal_fate&variable.effective_combo_points>=4\n# Finish at lower combo points if you are talented in DS, SS or Seal Fate\nactions.stealthed+=/call_action_list,name=finish,if=combo_points.deficit<=1+(talent.seal_fate||talent.deeper_stratagem||talent.secret_stratagem)\n# Use Gloomblade or Backstab when close to hitting max PV stacks\nactions.stealthed+=/gloomblade,if=buff.perforated_veins.stack>=5&spell_targets.shuriken_storm<3\nactions.stealthed+=/backstab,if=buff.perforated_veins.stack>=5&spell_targets.shuriken_storm<3\nactions.stealthed+=/shadowstrike,if=stealthed.sepsis&spell_targets.shuriken_storm<4\nactions.stealthed+=/shuriken_storm,if=spell_targets>=3+buff.the_rotten.up&(!buff.premeditation.up||spell_targets>=7)\n# Shadowstrike to refresh Find Weakness and to ensure we can carry over a full FW into the next SoD if possible.\nactions.stealthed+=/shadowstrike,if=debuff.find_weakness.remains<=1||cooldown.symbols_of_death.remains<18&debuff.find_weakness.remains<cooldown.symbols_of_death.remains\nactions.stealthed+=/shadowstrike",
				},
				["Restoration Druid"] = {
					["builtIn"] = true,
					["date"] = 20230127.2,
					["spec"] = 105,
					["desc"] = "Healer priorities are DPS-focused only.",
					["lists"] = {
						["cat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.shadowmeld.up || buff.prowl.up || buff.sudden_ambush.up",
								["action"] = "rake",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.convoke_the_spirits.remains < 30 || ! talent.convoke_the_spirits.enabled ) & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["list_name"] = "owl",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies < 2 || ! talent.moonkin_form.enabled ) & ( ! buff.cat_form.up & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled ) )",
								["action"] = "cat_form",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "convoke_the_spirits",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max & combo_points > 0 & dot.adaptive_swarm_damage.ticking",
								["action"] = "rip",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 1",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & target.time_to_die > 5 ) & ! prev_gcd.1.cat_form & ( active_enemies = 1 || talent.improved_sunfire.enabled )",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up & energy > 50 & ( dot.thrash_cat.refreshable & spell_targets.swipe_cat >= 9 & talent.thrash.enabled )",
								["action"] = "cat_form",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & time_to_die > 12 & ! ticking || ( prev_gcd.1.sunfire & remains < duration * 0.8 & spell_targets.sunfire = 1 ) ) & ! prev_gcd.1.cat_form",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.moonfire & remains < duration * 0.8",
								["action"] = "sunfire",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || ( active_enemies < 8 & ! buff.cat_form.up )",
								["action"] = "starsurge",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 10 & spell_targets.starfire > 1 & ( ! talent.improved_swipe.enabled || spell_targets.swipe_cat >= 9 )",
								["action"] = "starfire",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up & energy > 50",
								["action"] = "cat_form",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( combo_points > 3 & time_to_die < 3 ) || ( combo_points = 5 & energy >= 50 & dot.rip.remains > 10 ) & spell_targets.swipe_cat < 4",
								["action"] = "ferocious_bite",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 2",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.ticking & refreshable",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( ( refreshable || energy > 90 & remains <= 10 ) & ( combo_points = 5 & time_to_die > remains + 24 || ( remains + combo_points * 4 < time_to_die & remains + 4 + combo_points * 4 > time_to_die ) ) || ! ticking & combo_points > 2 + spell_targets.swipe_cat * 2 )",
								["action"] = "rip",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["max_energy"] = 1,
								["criteria"] = "combo_points = combo_points.max & ( dot.rip.ticking || ! talent.rip.enabled )",
								["action"] = "ferocious_bite",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & time_to_die > 10 & spell_targets.swipe_cat < 10 ) & ( combo_points < 5 || remains < 1 )",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & active_enemies < 7 & ! talent.improved_sunfire.enabled",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & combo_points < 5 & talent.improved_swipe.enabled",
								["action"] = "swipe_cat",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "energy > 60 & combo_points < 5",
								["action"] = "shred",
							}, -- [29]
						},
						["owl"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.moonkin_form.up",
								["action"] = "moonkin_form",
							}, -- [1]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "natures_vigil",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "use_items",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "talent.rake.enabled || buff.cat_form.up",
								["list_name"] = "cat",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["list_name"] = "owl",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.moonkin_form.enabled & buff.cat_form.down",
								["action"] = "moonkin_form",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "convoke_the_spirits",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & talent.improved_sunfire.enabled",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time_to_die > 12",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 8",
								["action"] = "starsurge",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 7 & active_enemies < 7",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.starfire > 1",
								["action"] = "starfire",
							}, -- [20]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [21]
						},
						["precombat"] = {
							{
								["action"] = "heart_of_the_wild",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.rake.enabled",
								["action"] = "prowl",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.rake.enabled",
								["action"] = "cat_form",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.down & talent.moonkin_form.enabled",
								["action"] = "moonkin_form",
							}, -- [4]
						},
					},
					["version"] = 20230127.2,
					["warnings"] = "The import for 'cat' required some automated changes.\nLine 24: Converted 'talent.rip' to 'talent.rip.enabled' (1x).\n\nImported 4 action lists.\n",
					["author"] = "Makahiki",
					["profile"] = "actions.precombat+=/heart_of_the_wild\nactions.precombat+=/prowl,if=talent.rake.enabled\nactions.precombat+=/cat_form,if=talent.rake.enabled\nactions.precombat+=/moonkin_form,if=buff.cat_form.down&talent.moonkin_form.enabled\n\n# Executed every time the actor is available.\nactions+=/skull_bash\nactions+=/solar_beam\nactions+=/berserking\nactions+=/natures_vigil,if=!buff.prowl.up&!buff.shadowmeld.up\n## actions+=/regrowth,if=!buff.prowl.up&!buff.shadowmeld.up&settings.heal_in_groups,line_cd=7\nactions+=/use_items,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/potion,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/run_action_list,name=cat,if=talent.rake.enabled||buff.cat_form.up\nactions+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/moonkin_form,if=talent.moonkin_form.enabled&buff.cat_form.down\nactions+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&talent.improved_sunfire.enabled\nactions+=/moonfire,cycle_targets=1,if=refreshable&time_to_die>12\nactions+=/starsurge,if=active_enemies<8\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>7&active_enemies<7\nactions+=/starfire,if=spell_targets.starfire>1\nactions+=/wrath\n\nactions.cat+=/rake,if=buff.shadowmeld.up||buff.prowl.up||buff.sudden_ambush.up\nactions.cat+=/heart_of_the_wild,if=(cooldown.convoke_the_spirits.remains<30||!talent.convoke_the_spirits.enabled)&!buff.heart_of_the_wild.up\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions.cat+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/cat_form,if=(active_enemies<2||!talent.moonkin_form.enabled)&(!buff.cat_form.up&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled))\nactions.cat+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/rip,if=remains<=gcd&combo_points>0&dot.adaptive_swarm_damage.ticking\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>1\nactions.cat+=/sunfire,cycle_targets=1,if=(refreshable&target.time_to_die>5)&!prev_gcd.1.cat_form&(active_enemies=1||talent.improved_sunfire.enabled)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50&(dot.thrash_cat.refreshable&spell_targets.swipe_cat>=9&talent.thrash.enabled)\nactions.cat+=/moonfire,cycle_targets=1,if=(refreshable&time_to_die>12&!ticking||(prev_gcd.1.sunfire&remains<duration*0.8&spell_targets.sunfire=1))&!prev_gcd.1.cat_form\nactions.cat+=/sunfire,if=prev_gcd.1.moonfire&remains<duration*0.8\nactions.cat+=/starsurge,if=active_enemies=1||(active_enemies<8&!buff.cat_form.up)\nactions.cat+=/starfire,if=time_to_die<10&spell_targets.starfire>1&(!talent.improved_swipe.enabled||spell_targets.swipe_cat>=9)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50\nactions.cat+=/ferocious_bite,if=(combo_points>3&target.1.time_to_die<3)||(combo_points=5&energy>=50&dot.rip.remains>10)&spell_targets.swipe_cat<4\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>2\nactions.cat+=/rake,cycle_targets=1,if=dot.adaptive_swarm_damage.ticking&refreshable\nactions.cat+=/rip,cycle_targets=1,if=((refreshable||energy>90&remains<=10)&(combo_points=5&time_to_die>remains+24||(remains+combo_points*4<time_to_die&remains+4+combo_points*4>time_to_die))||!ticking&combo_points>2+spell_targets.swipe_cat*2)\nactions.cat+=/ferocious_bite,max_energy=1,if=combo_points=combo_points.max&(dot.rip.ticking||!talent.rip)\nactions.cat+=/rake,cycle_targets=1,if=(refreshable&time_to_die>10&spell_targets.swipe_cat<10)&(combo_points<5||remains<1)\nactions.cat+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&active_enemies<7&!talent.improved_sunfire.enabled\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5\nactions.cat+=/swipe_cat,if=active_enemies>1&combo_points<5&talent.improved_swipe.enabled\nactions.cat+=/shred,if=energy>60&combo_points<5\n\nactions.owl+=/moonkin_form,if=!buff.moonkin_form.up\nactions.owl+=/convoke_the_spirits",
				},
			},
		},
	},
}
