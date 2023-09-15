
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Sparkkles - Emerald Dream"] = "Default",
		["Cupkek - Emerald Dream"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["forceReloadClassDefaultOptions_20220306_105"] = true,
				["forceReloadClassDefaultOptions_20220306_64"] = true,
				["forceReloadClassDefaultOptions_20220306_103"] = true,
				["forceReloadClassDefaultOptions_20220306_63"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
				["forceReloadClassDefaultOptions_20220306_102"] = true,
				["forceReloadClassDefaultOptions_20220306_62"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_104"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[64] = {
					["settings"] = {
						["manual_water_jet"] = false,
					},
				},
				[103] = {
					["settings"] = {
						["rip_duration"] = 9,
					},
				},
				[62] = {
					["settings"] = {
						["check_explosion_range"] = true,
					},
				},
				[102] = {
					["settings"] = {
						["starlord_cancel"] = false,
						["delay_berserking"] = false,
					},
				},
				[63] = {
					["settings"] = {
						["prevent_hardcasts"] = false,
						["pyroblast_pull"] = false,
					},
				},
				[104] = {
					["settings"] = {
						["catweave_bear"] = false,
						["maul_anyway"] = true,
						["ironfur_damage_threshold"] = 5,
						["maul_rage"] = 20,
						["owlweave_bear"] = false,
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
								["criteria"] = "time < gcd.max & ( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
								["line_cd"] = "5",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time < 2 * gcd.max & buff.eclipse_lunar.up",
								["action"] = "stellar_flare",
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
								["criteria"] = "variable.on_use_trinket != 1 & ! trinket.t2.ready_cooldown || ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 2 & ! trinket.t1.ready_cooldown || variable.on_use_trinket = 2 & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.is_aoe",
								["action"] = "run_action_list",
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
								["action"] = "moonfire",
								["criteria"] = "! boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 6 - ( spell_targets / 2 ) & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + 3",
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
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + 8 & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank ) & variable.cd_condition_aoe",
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
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + 8 & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank )",
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
								["action"] = "sunfire",
								["criteria"] = "dot.moonfire.remains > remains * 22 / 18",
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
								["action"] = "sunfire",
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8 & remains < 2 & ( target.time_to_die - remains ) > 8",
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
								["action"] = "sunfire",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8",
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
					["profile"] = "actions.precombat+=/moonkin_form\nactions.precombat+=/mark_of_the_wild\nactions.precombat+=/variable,name=no_cd_talent,value=!talent.celestial_alignment&!talent.incarnation_chosen_of_elune||druid.no_cds\nactions.precombat+=/variable,name=solar_eclipse_st,value=talent.umbral_intensity.rank=2\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=trinket.1.has_use_buff&trinket.1.cooldown.duration\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=(trinket.2.has_use_buff&trinket.2.cooldown.duration)*2\nactions.precombat+=/wrath,if=(eclipse.any_next||eclipse.lunar_next)\n\n# Executed every time the actor is available.\nactions+=/solar_beam\nactions+=/soothe\nactions+=/wrath,if=time<gcd.max&(eclipse.any_next||eclipse.lunar_next),line_cd=5\nactions+=/stellar_flare,if=refreshable&time<2*gcd.max&buff.eclipse_lunar.up,line_cd=5\nactions+=/variable,name=is_aoe,value=spell_targets.starfall>1\nactions+=/variable,name=passive_asp,value=6%spell_haste+talent.natures_balance+talent.orbit_breaker*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40\nactions+=/berserking,if=buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<15\nactions+=/potion,if=!druid.no_cds&(buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<30)\nactions+=/use_items,slots=trinket1,if=variable.on_use_trinket!=1&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items,slots=trinket2,if=variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items\nactions+=/run_action_list,name=aoe,if=variable.is_aoe\nactions+=/run_action_list,name=st\n\nactions.aoe+=/moonfire,cycle_targets=1,if=!boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/sunfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/moonfire,cycle_targets=1,if=boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/variable,name=cd_condition_aoe,value=!druid.no_cds&(cooldown.ca_inc.remains<5&!buff.ca_inc.up&(target.time_to_die>10||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.aoe+=/wrath,if=variable.cd_condition_aoe&set_bonus.tier29_4pc&eclipse.any_next\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+8&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)&variable.cd_condition_aoe\nactions.aoe+=/starfall,if=variable.cd_condition_aoe&(talent.orbital_strike&astral_power.deficit<variable.passive_asp+8*spell_targets||buff.touch_the_cosmos.up)||astral_power.deficit<(variable.passive_asp+8+12*(buff.eclipse_lunar.remains<4||buff.eclipse_solar.remains<4))\nactions.aoe+=/celestial_alignment,if=variable.cd_condition_aoe\nactions.aoe+=/incarnation,if=variable.cd_condition_aoe\nactions.aoe+=/warrior_of_elune\nactions.aoe+=/wrath,if=eclipse.any_next||buff.eclipse_lunar.up&buff.eclipse_lunar.remains<action.wrath.execute_time\nactions.aoe+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+20&(!talent.fungal_growth||!talent.waning_twilight||dot.fungal_growth.remains<2&target.time_to_die>7&!prev_gcd.1.wild_mushroom)\nactions.aoe+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8&target.time_to_die>2\nactions.aoe+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/starfall,if=target.time_to_die>4&(buff.starweavers_warp.up||talent.starlord&buff.starlord.stack<3)\nactions.aoe+=/starfire,if=(buff.gathering_starstuff.stack=3||buff.umbral_embrace.up)&astral_power.deficit>variable.passive_asp+(8*(1+0.4*buff.warrior_of_elune.up))\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<3\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+8&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)\nactions.aoe+=/astral_communion,if=astral_power.deficit>variable.passive_asp+50\nactions.aoe+=/convoke_the_spirits,if=astral_power<50&spell_targets.starfall<3+talent.elunes_guidance&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.aoe+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.aoe+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<17\nactions.aoe+=/starfire,if=spell_targets>1\nactions.aoe+=/wrath\nactions.aoe+=/run_action_list,name=fallthru\n\nactions.fallthru=starfall,if=variable.is_aoe\nactions.fallthru+=/starsurge\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8&remains<2&(target.time_to_die-remains)>8\nactions.st+=/variable,name=cd_condition_st,value=!druid.no_cds&(cooldown.ca_inc.remains<15&!buff.ca_inc.up&(target.time_to_die>15||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.st+=/wrath,if=variable.cd_condition_st&set_bonus.tier29_4pc&eclipse.any_next||fight_remains>10&(target.time_to_die<=2&astral_power.deficit>20||target.time_to_die<=5&buff.primordial_arcanic_pulsar.value>=550)\nactions.st+=/starsurge,if=variable.cd_condition_st&buff.touch_the_cosmos.up||buff.primordial_arcanic_pulsar.value>=560&buff.starweavers_weft.up\nactions.st+=/starfall,if=buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up\nactions.st+=/celestial_alignment,if=variable.cd_condition_st\nactions.st+=/incarnation,if=variable.cd_condition_st\nactions.st+=/warrior_of_elune\nactions.st+=/variable,name=enter_eclipse,value=eclipse.any_next||buff.eclipse_lunar.up&(buff.eclipse_lunar.remains<action.wrath.execute_time)||buff.eclipse_solar.up&(buff.eclipse_solar.remains<action.wrath.execute_time)\nactions.st+=/starfire,if=variable.enter_eclipse&variable.solar_eclipse_st\nactions.st+=/wrath,if=variable.enter_eclipse\nactions.st+=/variable,name=convoke_condition,value=buff.ca_inc.remains>4||(cooldown.ca_inc.remains>30||variable.no_cd_talent)&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.st+=/starsurge,if=action.convoke_the_spirits.known&cooldown.convoke_the_spirits.ready&variable.convoke_condition\nactions.st+=/convoke_the_spirits,if=variable.convoke_condition\nactions.st+=/astral_communion,if=astral_power.deficit>variable.passive_asp+55\nactions.st+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.st+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8&target.time_to_die>2\nactions.st+=/starfall,if=buff.starweavers_warp.up&!buff.touch_the_cosmos.up\nactions.st+=/starsurge,if=talent.starlord&buff.starlord.stack<3||talent.rattle_the_stars&buff.rattled_stars.up&buff.rattled_stars.remains<gcd.max\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8\nactions.st+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.st+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/starsurge,if=buff.starweavers_weft.up||astral_power.deficit<variable.passive_asp+(8*(1+0.5*talent.soul_of_the_forest*buff.eclipse_solar.up))||talent.astral_communion&cooldown.astral_communion.remains<3||boss&fight_remains<5\nactions.st+=/wild_mushroom,if=target.time_to_die>(full_recharge_time-7)||boss&fight_remains<10\nactions.st+=/starfire,if=eclipse.in_lunar&buff.umbral_embrace.react||buff.eclipse_lunar.up&buff.warrior_of_elune.up\nactions.st+=/wrath\nactions.st+=/run_action_list,name=fallthru",
					["spec"] = 102,
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230209,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
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
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "! buff.prowl.up",
								["action"] = "skull_bash",
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
								["criteria"] = "! tanking & druid.catweave_bear & buff.tooth_and_claw.remains < 1.5 & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down ) & ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= gcd.max + 0.5 ) || ( buff.cat_form.up & energy > 25 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 ) || ( ( talent.heart_of_the_wild.enabled & cooldown.heart_of_the_wild.ready || buff.heart_of_the_wild.up ) & energy > 90 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 )",
								["action"] = "run_action_list",
								["list_name"] = "catweave",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! tanking & druid.owlweave_bear & buff.tooth_and_claw.remains < 1.5 & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & cooldown.starsurge.up )",
								["action"] = "run_action_list",
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
						["bear"] = {
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "( ( ! ticking & time_to_die > 12 ) || ( refreshable & time_to_die > 12 ) ) & active_enemies < 8",
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
								["action"] = "ironfur",
								["criteria"] = "tanking & variable.maul_build = 1 & ( ! buff.ironfur.up || rage > 90 )",
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
								["action"] = "thrash_bear",
								["criteria"] = "refreshable || dot.thrash_bear.stack < 3 || active_enemies >= 5",
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
								["criteria"] = "talent.layered_mane.enabled & talent.reinforced_fur.enabled",
								["value_else"] = "0",
								["value"] = "1",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["var_name"] = "maul_build",
								["criteria"] = "settings.maul_anyway || ( ! talent.layered_mane.enabled & ! talent.reinforced_fur.enabled )",
								["value_else"] = "0",
								["value"] = "1",
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
					["profile"] = "actions.precombat+=/variable,name=if_build,value=1,value_else=0,if=talent.layered_mane.enabled&talent.reinforced_fur.enabled\nactions.precombat+=/variable,name=maul_build,value=1,value_else=0,if=settings.maul_anyway||(!talent.layered_mane.enabled&!talent.reinforced_fur.enabled)\nactions.precombat+=/mark_of_the_wild,if=!buff.prowl.up\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up)\nactions.precombat+=/prowl,if=buff.cat_form.up&druid.catweave_bear\nactions.precombat+=/bear_form,if=!buff.any_form.up||!druid.owlweave_bear&!druid.catweave_bear&!action.convoke_the_spirits.known\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up\nactions+=/soothe\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/potion,if=((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\nactions+=/run_action_list,name=catweave,if=!tanking&druid.catweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down)&(cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=gcd+0.5)||(buff.cat_form.up&energy>25&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)||((talent.heart_of_the_wild&cooldown.heart_of_the_wild.ready||buff.heart_of_the_wild.up)&energy>90&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)\nactions+=/run_action_list,name=owlweave,if=!tanking&druid.owlweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&cooldown.starsurge.up)\nactions+=/bear_form,if=!buff.bear_form.up\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear+=/moonfire,cycle_targets=1,if=((!ticking&time_to_die>12)||(refreshable&time_to_die>12))&active_enemies<8\nactions.bear+=/barkskin,if=buff.bear_form.up\nactions.bear+=/bristling_fur\nactions.bear+=/convoke_the_spirits\nactions.bear+=/berserk_bear\nactions.bear+=/incarnation\nactions.bear+=/rage_of_the_sleeper,if=buff.incarnation_guardian_of_ursoc.down&cooldown.incarnation_guardian_of_ursoc.remains>60||buff.incarnation_guardian_of_ursoc.up||talent.convoke_the_spirits.enabled\nactions.bear+=/lunar_beam\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/maul,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&active_enemies<=6&variable.maul_build=1\nactions.bear+=/raze,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&variable.maul_build=1\nactions.bear+=/ironfur,cycle_targets=1,if=tanking&variable.maul_build=1&(!buff.ironfur.up||rage>90)\nactions.bear+=/ironfur,if=rage>90&variable.if_build=1||(buff.incarnation.up||buff.berserk_bear.up)&rage>20&variable.if_build=1\nactions.bear+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+0.5\nactions.bear+=/mangle,if=buff.gore.up&active_enemies<11||buff.vicious_cycle_mangle.stack=3\nactions.bear+=/maul,if=((buff.incarnation.up||buff.berserk_bear.up)&active_enemies<=5&(buff.tooth_and_claw.stack>=2))&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/raze,if=((buff.incarnation.up||buff.berserk_bear.up)&(buff.tooth_and_claw.stack>=2))&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/thrash_bear,cycle_targets=1,if=refreshable||dot.thrash_bear.stack<3||active_enemies>=5\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=11\nactions.bear+=/maul,if=(buff.tooth_and_claw.up&active_enemies<=5)\nactions.bear+=/maul,if=active_enemies<=5&buff.vicious_cycle_maul.stack>=3||active_enemies<4&!talent.vicious_cycle_maul.enabled&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/raze,if=(buff.tooth_and_claw.up)\nactions.bear+=/raze,if=buff.vicious_cycle_maul.stack>=3||!talent.vicious_cycle_maul.enabled&variable.maul_build=1&!talent.thorns_of_iron.enabled\nactions.bear+=/mangle,if=(buff.incarnation.up&active_enemies<=4)||(buff.incarnation.up&talent.soul_of_the_forest.enabled&active_enemies<=5)||((rage<90)&active_enemies<11)||((rage<85)&active_enemies<11&talent.soul_of_the_forest.enabled)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/pulverize,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/swipe_bear\n\nactions.catweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/rake,if=dot.rake.refreshable||energy<45\nactions.catweave+=/rip,if=dot.rip.refreshable&combo_points>=1\nactions.catweave+=/convoke_the_spirits\nactions.catweave+=/ferocious_bite,if=combo_points>=4&energy>50\nactions.catweave+=/shred,if=combo_points<=5\n\nactions.cconvoke+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.cconvoke+=/cat_form,if=!buff.cat_form.up\nactions.cconvoke+=/convoke_the_spirits\n\nactions.mitigation=ironfur,if=tanking&incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/regrowth,if=health.pct<65\nactions.mitigation+=/renewal,if=health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/empower_bond,if=(!druid.catweave_bear&!druid.owlweave_bear)||active_enemies>=2\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.owlweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.owlweave+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+1\nactions.owlweave+=/sunfire,if=dot.sunfire.refreshable\nactions.owlweave+=/starsurge",
					["spec"] = 104,
				},
				["Arcane"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230126,
					["spec"] = 62,
					["desc"] = "",
					["lists"] = {
						["aoe_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 2",
								["action"] = "arcane_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.evocation.enabled || cooldown.evocation.remains > 12 ) & ( ! talent.arcane_surge.enabled || cooldown.arcane_surge.remains > 12 ) & ( ! talent.touch_of_the_magi.enabled || cooldown.touch_of_the_magi.remains > 12 ) & buff.arcane_surge.down",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down",
								["action"] = "ice_nova",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.arcane_surge.down",
								["action"] = "nether_tempest",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & talent.arcane_harmony.enabled & talent.rune_of_power.enabled & cooldown.rune_of_power.remains < ( gcd.max * 2 )",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack || mana.pct < 10",
								["action"] = "arcane_barrage",
							}, -- [6]
							{
								["action"] = "arcane_explosion",
								["enabled"] = true,
							}, -- [7]
						},
						["aoe_spark_phase"] = {
							{
								["enabled"] = true,
								["buff_name"] = "presence_of_mind",
								["criteria"] = "prev_gcd.1.arcane_blast & cooldown.arcane_surge.remains > 75",
								["action"] = "cancel_buff",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains < 75 & cooldown.arcane_surge.remains > 30",
								["action"] = "rune_of_power",
							}, -- [2]
							{
								["action"] = "radiant_spark",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
								["criteria"] = "cooldown.arcane_surge.remains <= ( gcd.max * 2 )",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack >= 3 & prev_gcd.1.radiant_spark",
								["action"] = "arcane_explosion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "arcane_orb",
								["criteria"] = "buff.arcane_charge.stack < 3",
								["line_cd"] = "15",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "nether_tempest",
								["criteria"] = "talent.arcane_echo.enabled",
								["line_cd"] = "15",
							}, -- [7]
							{
								["action"] = "arcane_surge",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.remains < 75 & debuff.radiant_spark_vulnerability.stack = 4",
								["action"] = "arcane_barrage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.radiant_spark_vulnerability.stack = 2 & cooldown.arcane_surge.remains > 75 ) || ( debuff.radiant_spark_vulnerability.stack = 1 & cooldown.arcane_surge.remains < 75 )",
								["action"] = "arcane_barrage",
							}, -- [10]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
							}, -- [11]
							{
								["action"] = "presence_of_mind",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 2 || debuff.radiant_spark_vulnerability.stack = 3",
								["action"] = "arcane_blast",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( debuff.radiant_spark_vulnerability.stack = 4 & buff.arcane_surge.up ) || ( debuff.radiant_spark_vulnerability.stack = 3 & buff.arcane_surge.down )",
								["action"] = "arcane_barrage",
							}, -- [14]
						},
						["aoe_touch_phase"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - variable.conserve_mana",
								["var_name"] = "conserve_mana",
								["criteria"] = "debuff.touch_of_the_magi.remains > 9",
							}, -- [1]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.arcane_bombardment.enabled & target.health.pct < 35 & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "arcane_barrage",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & active_enemies >= variable.aoe_target_count & cooldown.arcane_orb.remains <= execute_time",
								["action"] = "arcane_barrage",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & ( talent.arcane_echo.enabled || talent.arcane_harmony.enabled )",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.stack > 1 & talent.conjure_mana_gem.enabled & cooldown.use_mana_gem.ready",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 2",
								["action"] = "arcane_orb",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_barrage",
							}, -- [8]
							{
								["action"] = "arcane_explosion",
								["enabled"] = true,
							}, -- [9]
						},
						["touch_phase"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1 - variable.conserve_mana",
								["var_name"] = "conserve_mana",
								["criteria"] = "debuff.touch_of_the_magi.remains > 9",
							}, -- [1]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.arcane_bombardment.enabled || target.health.pct > 35 ) & buff.arcane_surge.up & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "presence_of_mind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.arcane_harmony.up || ( talent.arcane_bombardment.enabled & target.health.pct < 35 ) ) & debuff.touch_of_the_magi.remains <= gcd.max",
								["action"] = "arcane_barrage",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.stack > 1 & talent.conjure_mana_gem.enabled & cooldown.use_mana_gem.ready",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & ( debuff.touch_of_the_magi.remains > execute_time || ! talent.presence_of_mind.enabled )",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [8]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [10]
						},
						["rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3 & ( buff.bloodlust.down || mana.pct > 70 || cooldown.touch_of_the_magi.remains > 30 )",
								["action"] = "arcane_orb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.evocation.enabled || cooldown.evocation.remains > 12 ) & ( ! talent.arcane_surge.enabled || cooldown.arcane_surge.remains > 12 ) & ( ! talent.touch_of_the_magi.enabled || cooldown.touch_of_the_magi.remains > 12 ) & buff.arcane_surge.down & fight_remains > 15",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack < 3 & target.health.pct < 35 & talent.arcane_bombardment.enabled",
								["action"] = "presence_of_mind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence_of_mind.up & target.health.pct < 35 & talent.arcane_bombardment.enabled & buff.arcane_charge.stack < 3",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.clearcasting.stack = buff.clearcasting.max_stack",
								["action"] = "arcane_missiles",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || ! ticking ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack & ( buff.temporal_warp.up || mana.pct < 10 || ! talent.shifting_power.enabled ) & buff.arcane_surge.down & fight_remains >= 12",
								["action"] = "nether_tempest",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 50 & ! talent.evocation.enabled & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 70 & variable.conserve_mana & buff.bloodlust.up & cooldown.touch_of_the_magi.remains > 5 & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.concentration.up & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_missiles",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & buff.nether_precision.up",
								["action"] = "arcane_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack & mana.pct < 60 & variable.conserve_mana & ( ! talent.rune_of_power.enabled || cooldown.rune_of_power.remains > 5 ) & cooldown.touch_of_the_magi.remains > 10 & cooldown.evocation.remains > 40 & fight_remains > 20",
								["action"] = "arcane_barrage",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.react & buff.nether_precision.down",
								["action"] = "arcane_missiles",
							}, -- [12]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [14]
						},
						["standard_cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "arcane_surge",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge & talent.arcane_echo.enabled",
								["action"] = "nether_tempest",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.up & cooldown.touch_of_the_magi.ready",
								["action"] = "meteor",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.up & cooldown.touch_of_the_magi.ready",
								["action"] = "arcane_barrage",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.touch_of_the_magi.remains <= ( gcd.max * 2 ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "rune_of_power",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.touch_of_the_magi.remains <= ( gcd.max * 2 ) & buff.arcane_charge.stack = buff.arcane_charge.max_stack",
								["action"] = "meteor",
							}, -- [6]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
							}, -- [7]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "counterspell",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.arcane_surge.ready",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.temporal_warp.enabled & buff.exhaustion.up & ( cooldown.arcane_surge.ready || fight_remains <= 40 || buff.arcane_surge.up & fight_remains <= 80 )",
								["action"] = "time_warp",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down & buff.rune_of_power.down & debuff.touch_of_the_magi.down",
								["action"] = "lights_judgment",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.arcane_surge.down & buff.rune_of_power.down & debuff.touch_of_the_magi.down",
								["action"] = "bag_of_tricks",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( prev_gcd.1.arcane_surge & ! ( buff.temporal_warp.up & buff.bloodlust.up ) ) || ( buff.arcane_surge.up & debuff.touch_of_the_magi.up )",
								["action"] = "berserking",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "blood_fury",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "fireblood",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "ancestral_call",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_surge",
								["action"] = "use_items",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "conjured_chillglobe",
								["action"] = "conjured_chillglobe",
								["criteria"] = "mana.pct > 65 & ( ! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20 )",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "darkmoon_deck_rime",
								["action"] = "darkmoon_deck_rime",
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "darkmoon_deck_dance",
								["action"] = "darkmoon_deck_dance",
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
							}, -- [13]
							{
								["enabled"] = true,
								["name"] = "darkmoon_deck_inferno",
								["action"] = "darkmoon_deck_inferno",
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "desperate_invokers_codex",
								["action"] = "desperate_invokers_codex",
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
							}, -- [15]
							{
								["enabled"] = true,
								["name"] = "iceblood_deathsnare",
								["action"] = "iceblood_deathsnare",
								["criteria"] = "! variable.steroid_trinket_equipped || cooldown.arcane_surge.remains > 20",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains < 2",
								["action"] = "arcane_barrage",
							}, -- [17]
							{
								["enabled"] = true,
								["interrupt_if"] = "mana.pct>=95&(!talent.siphon_storm||talent.siphon_storm&fight_remains>10&cooldown.arcane_surge.remains<1)",
								["action"] = "evocation",
								["criteria"] = "buff.rune_of_power.down & buff.arcane_surge.down & debuff.touch_of_the_magi.down & ( mana.pct < 10 & cooldown.touch_of_the_magi.remains < 25 )",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & debuff.touch_of_the_magi.down & buff.arcane_surge.down & cooldown.arcane_surge.remains < fight_remains & ! mana_gem_charges",
								["action"] = "conjure_mana_gem",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.cascading_power.enabled & buff.clearcasting.stack < 2 & buff.arcane_surge.up",
								["action"] = "mana_gem",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! talent.cascading_power.enabled & prev_gcd.1.arcane_surge",
								["action"] = "mana_gem",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.radiant_spark.enabled & variable.aoe_spark_phase",
								["list_name"] = "aoe_spark_phase",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "talent.radiant_spark.enabled & variable.spark_phase",
								["list_name"] = "spark_phase",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "debuff.touch_of_the_magi.up & active_enemies >= variable.aoe_target_count",
								["list_name"] = "aoe_touch_phase",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "debuff.touch_of_the_magi.up & active_enemies < variable.aoe_target_count",
								["list_name"] = "touch_phase",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "variable.rop_phase",
								["list_name"] = "rop_phase",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.radiant_spark.enabled & ( ! talent.rune_of_power.enabled || active_enemies >= variable.aoe_target_count )",
								["list_name"] = "standard_cooldowns",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= variable.aoe_target_count",
								["list_name"] = "aoe_rotation",
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "rotation",
							}, -- [29]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "arcane_familiar",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "conjure_mana_gem",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "opener_min_mana",
								["value"] = "225000",
								["value_else"] = "200000",
								["criteria"] = "talent.arcane_harmony.enabled",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "equipped.gladiators_badge || equipped.irideus_fragment || equipped.erupting_spear_fragment || equipped.spoils_of_neltharus || equipped.tome_of_unstable_power || equipped.timebreaching_talon || equipped.horn_of_valor",
								["var_name"] = "steroid_trinket_equipped",
							}, -- [5]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.siphon_storm.enabled",
								["action"] = "arcane_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.siphon_storm.enabled",
								["action"] = "evocation",
							}, -- [8]
						},
						["rop_phase"] = {
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.2.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.3.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [4]
							{
								["action"] = "arcane_surge",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.arcane_blast & prev_gcd.4.rune_of_power",
								["action"] = "arcane_blast",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "nether_tempest",
								["criteria"] = "talent.arcane_echo.enabled",
								["line_cd"] = "15",
							}, -- [7]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage",
								["action"] = "touch_of_the_magi",
							}, -- [10]
						},
						["spark_phase"] = {
							{
								["enabled"] = true,
								["action"] = "nether_tempest",
								["criteria"] = "! ticking & variable.opener & buff.bloodlust.up",
								["line_cd"] = "45",
							}, -- [1]
							{
								["action"] = "rune_of_power",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.opener & cooldown.arcane_surge.ready & buff.bloodlust.up & mana >= variable.opener_min_mana & buff.rune_of_power.remains > gcd.max * 4",
								["action"] = "arcane_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.opener & buff.bloodlust.up & buff.clearcasting.react & buff.clearcasting.stack >= 2 & cooldown.radiant_spark.remains < 5 & buff.nether_precision.down",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.arcane_harmony.enabled & buff.arcane_harmony.stack < 15 & ( ( variable.opener & buff.bloodlust.up ) || buff.clearcasting.react & cooldown.radiant_spark.remains < 5 ) & cooldown.arcane_surge.remains < 30",
								["action"] = "arcane_missiles",
								["chain"] = "1",
							}, -- [5]
							{
								["action"] = "radiant_spark",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
								["criteria"] = "cooldown.arcane_surge.remains <= ( gcd.max * 3 )",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( prev_gcd.4.radiant_spark & cooldown.arcane_surge.remains <= execute_time ) || ! ticking & prev_gcd.5.radiant_spark",
								["action"] = "nether_tempest",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.nether_tempest.enabled & prev_gcd.4.radiant_spark ) || prev_gcd.1.nether_tempest",
								["action"] = "arcane_surge",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( talent.nether_tempest.enabled & prev_gcd.6.radiant_spark ) || ( ! talent.nether_tempest.enabled & prev_gcd.5.radiant_spark )",
								["action"] = "meteor",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cast_time >= gcd.max & execute_time < debuff.radiant_spark_vulnerability.remains & ( ! talent.arcane_bombardment.enabled || target.health.pct >= 35 ) & ( talent.nether_tempest.enabled & prev_gcd.6.radiant_spark || ! talent.nether_tempest.enabled & prev_gcd.5.radiant_spark ) & ! talent.meteor.enabled",
								["action"] = "arcane_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "debuff.radiant_spark_vulnerability.stack = 4",
								["action"] = "arcane_barrage",
							}, -- [12]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "prev_gcd.1.arcane_barrage & ( action.arcane_barrage.in_flight_remains <= 0.2 || gcd.remains <= 0.2 )",
								["action"] = "touch_of_the_magi",
							}, -- [13]
							{
								["action"] = "arcane_blast",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "arcane_barrage",
								["enabled"] = true,
							}, -- [15]
						},
					},
					["version"] = 20230126,
					["warnings"] = "The import for 'aoe_rotation' required some automated changes.\nLine 2: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 2: Converted 'talent.arcane_surge' to 'talent.arcane_surge.enabled' (1x).\nLine 2: Converted 'talent.touch_of_the_magi' to 'talent.touch_of_the_magi.enabled' (1x).\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 5: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'aoe_spark_phase' required some automated changes.\nLine 7: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'aoe_touch_phase' required some automated changes.\nLine 3: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 5: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 6: Converted 'talent.conjure_mana_gem' to 'talent.conjure_mana_gem.enabled' (1x).\n\nThe import for 'touch_phase' required some automated changes.\nLine 3: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 5: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 6: Converted 'talent.conjure_mana_gem' to 'talent.conjure_mana_gem.enabled' (1x).\nLine 8: Converted 'talent.presence_of_mind' to 'talent.presence_of_mind.enabled' (1x).\n\nThe import for 'rotation' required some automated changes.\nLine 2: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 2: Converted 'talent.arcane_surge' to 'talent.arcane_surge.enabled' (1x).\nLine 2: Converted 'talent.touch_of_the_magi' to 'talent.touch_of_the_magi.enabled' (1x).\nLine 3: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 4: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 6: Converted 'talent.shifting_power' to 'talent.shifting_power.enabled' (1x).\nLine 7: Converted 'talent.evocation' to 'talent.evocation.enabled' (1x).\nLine 11: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'standard_cooldowns' required some automated changes.\nLine 2: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.temporal_warp' to 'talent.temporal_warp.enabled' (1x).\nLine 20: Converted 'talent.cascading_power' to 'talent.cascading_power.enabled' (1x).\nLine 21: Converted 'talent.cascading_power' to 'talent.cascading_power.enabled' (1x).\nLine 22: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 23: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 27: Converted 'talent.radiant_spark' to 'talent.radiant_spark.enabled' (1x).\nLine 27: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'rop_phase' required some automated changes.\nLine 7: Converted 'talent.arcane_echo' to 'talent.arcane_echo.enabled' (1x).\n\nThe import for 'spark_phase' required some automated changes.\nLine 5: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 9: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 10: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 10: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 11: Converted 'talent.arcane_bombardment' to 'talent.arcane_bombardment.enabled' (1x).\nLine 11: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 11: Converted 'talent.nether_tempest' to 'talent.nether_tempest.enabled' (1x).\nLine 11: Converted 'talent.meteor' to 'talent.meteor.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.arcane_harmony' to 'talent.arcane_harmony.enabled' (1x).\nLine 7: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\nLine 8: Converted 'talent.siphon_storm' to 'talent.siphon_storm.enabled' (1x).\n\nImported 10 action lists.\n",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/arcane_familiar\nactions.precombat+=/conjure_mana_gem\n## actions.precombat+=/variable,name=aoe_target_count,op=reset,default=3\n## actions.precombat+=/variable,name=conserve_mana,op=set,value=0\nactions.precombat+=/variable,name=opener_min_mana,op=setif,condition=talent.arcane_harmony,value=225000,value_else=200000\nactions.precombat+=/variable,name=steroid_trinket_equipped,op=set,value=equipped.gladiators_badge||equipped.irideus_fragment||equipped.erupting_spear_fragment||equipped.spoils_of_neltharus||equipped.tome_of_unstable_power||equipped.timebreaching_talon||equipped.horn_of_valor\nactions.precombat+=/mirror_image\nactions.precombat+=/arcane_blast,if=!talent.siphon_storm\nactions.precombat+=/evocation,if=talent.siphon_storm\n\n# Executed every time the actor is available.\nactions=counterspell\nactions+=/potion,if=cooldown.arcane_surge.ready\nactions+=/time_warp,if=talent.temporal_warp&buff.exhaustion.up&(cooldown.arcane_surge.ready||fight_remains<=40||buff.arcane_surge.up&fight_remains<=80)\nactions+=/lights_judgment,if=buff.arcane_surge.down&buff.rune_of_power.down&debuff.touch_of_the_magi.down\nactions+=/bag_of_tricks,if=buff.arcane_surge.down&buff.rune_of_power.down&debuff.touch_of_the_magi.down\nactions+=/berserking,if=(prev_gcd.1.arcane_surge&!(buff.temporal_warp.up&buff.bloodlust.up))||(buff.arcane_surge.up&debuff.touch_of_the_magi.up)\nactions+=/blood_fury,if=prev_gcd.1.arcane_surge\nactions+=/fireblood,if=prev_gcd.1.arcane_surge\n## Not supported by the addon; cannot control if another player grants Power Infusion.\n## actions+=/invoke_external_buff,name=power_infusion,if=!talent.radiant_spark&prev_gcd.1.arcane_surge\nactions+=/ancestral_call,if=prev_gcd.1.arcane_surge\nactions+=/use_items,if=prev_gcd.1.arcane_surge\n## TODO: actions+=/use_item,name=tinker_breath_of_neltharion,if=cooldown.arcane_surge.remains&buff.rune_of_power.down&buff.arcane_surge.down&debuff.touch_of_the_magi.down\nactions+=/use_item,name=conjured_chillglobe,if=mana.pct>65&(!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20)\nactions+=/use_item,name=darkmoon_deck_rime,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=darkmoon_deck_dance,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=darkmoon_deck_inferno,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=desperate_invokers_codex,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\nactions+=/use_item,name=iceblood_deathsnare,if=!variable.steroid_trinket_equipped||cooldown.arcane_surge.remains>20\n## actions+=/variable,name=aoe_spark_phase,op=set,value=1,if=active_enemies>=variable.aoe_target_count&(action.arcane_orb.charges>0||buff.arcane_charge.stack>=3)&(!talent.rune_of_power||cooldown.rune_of_power.ready)&cooldown.radiant_spark.ready&cooldown.touch_of_the_magi.remains<=(gcd.max*2)\n## actions+=/variable,name=aoe_spark_phase,op=set,value=0,if=variable.aoe_spark_phase&debuff.radiant_spark_vulnerability.down&dot.radiant_spark.remains<5&cooldown.radiant_spark.remains\n## actions+=/variable,name=spark_phase,op=set,value=1,if=buff.arcane_charge.stack>=3&active_enemies<variable.aoe_target_count&(!talent.rune_of_power||cooldown.rune_of_power.ready)&cooldown.radiant_spark.ready&cooldown.touch_of_the_magi.remains<=(gcd.max*7)\n## actions+=/variable,name=spark_phase,op=set,value=0,if=variable.spark_phase&debuff.radiant_spark_vulnerability.down&dot.radiant_spark.remains<5&cooldown.radiant_spark.remains\n## actions+=/variable,name=rop_phase,op=set,value=1,if=talent.rune_of_power&!talent.radiant_spark&buff.arcane_charge.stack>=3&cooldown.rune_of_power.ready&active_enemies<variable.aoe_target_count\n## actions+=/variable,name=rop_phase,op=set,value=0,if=debuff.touch_of_the_magi.up||!talent.rune_of_power\n## actions+=/variable,name=opener,op=set,if=debuff.touch_of_the_magi.up&variable.opener,value=0\n## actions+=/cancel_action,if=action.evocation.channeling&mana.pct>=95&!talent.siphon_storm\n## actions+=/cancel_action,if=action.evocation.channeling&(mana.pct>fight_remains*4)&!(fight_remains>10&cooldown.arcane_surge.remains<1)\nactions+=/arcane_barrage,if=fight_remains<2\nactions+=/evocation,if=buff.rune_of_power.down&buff.arcane_surge.down&debuff.touch_of_the_magi.down&(mana.pct<10&cooldown.touch_of_the_magi.remains<25),interrupt_if=mana.pct>=95&(!talent.siphon_storm||talent.siphon_storm&fight_remains>10&cooldown.arcane_surge.remains<1)\nactions+=/conjure_mana_gem,if=buff.rune_of_power.down&debuff.touch_of_the_magi.down&buff.arcane_surge.down&cooldown.arcane_surge.remains<fight_remains&!mana_gem_charges\nactions+=/use_mana_gem,if=talent.cascading_power&buff.clearcasting.stack<2&buff.arcane_surge.up\nactions+=/use_mana_gem,if=!talent.cascading_power&prev_gcd.1.arcane_surge\nactions+=/call_action_list,name=aoe_spark_phase,strict=1,if=talent.radiant_spark&variable.aoe_spark_phase\nactions+=/call_action_list,name=spark_phase,strict=1,if=talent.radiant_spark&variable.spark_phase\nactions+=/call_action_list,name=aoe_touch_phase,strict=1,if=debuff.touch_of_the_magi.up&active_enemies>=variable.aoe_target_count\nactions+=/call_action_list,name=touch_phase,strict=1,if=debuff.touch_of_the_magi.up&active_enemies<variable.aoe_target_count\nactions+=/call_action_list,name=rop_phase,strict=1,if=variable.rop_phase\nactions+=/call_action_list,name=standard_cooldowns,strict=1,if=!talent.radiant_spark&(!talent.rune_of_power||active_enemies>=variable.aoe_target_count)\nactions+=/call_action_list,name=aoe_rotation,strict=1,if=active_enemies>=variable.aoe_target_count\nactions+=/call_action_list,name=rotation\n\nactions.aoe_rotation=arcane_orb,if=buff.arcane_charge.stack<2\nactions.aoe_rotation+=/shifting_power,if=(!talent.evocation||cooldown.evocation.remains>12)&(!talent.arcane_surge||cooldown.arcane_surge.remains>12)&(!talent.touch_of_the_magi||cooldown.touch_of_the_magi.remains>12)&buff.arcane_surge.down\nactions.aoe_rotation+=/ice_nova,if=buff.arcane_surge.down\nactions.aoe_rotation+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.arcane_surge.down\nactions.aoe_rotation+=/arcane_missiles,if=buff.clearcasting.react&talent.arcane_harmony&talent.rune_of_power&cooldown.rune_of_power.remains<(gcd.max*2)\nactions.aoe_rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack||mana.pct<10\nactions.aoe_rotation+=/arcane_explosion\n\nactions.aoe_spark_phase=cancel_buff,name=presence_of_mind,if=prev_gcd.1.arcane_blast&cooldown.arcane_surge.remains>75\nactions.aoe_spark_phase+=/rune_of_power,if=cooldown.arcane_surge.remains<75&cooldown.arcane_surge.remains>30\nactions.aoe_spark_phase+=/radiant_spark\nactions.aoe_spark_phase+=/use_item,name=timebreaching_talon,if=cooldown.arcane_surge.remains<=(gcd.max*2)\nactions.aoe_spark_phase+=/arcane_explosion,if=buff.arcane_charge.stack>=3&prev_gcd.1.radiant_spark\nactions.aoe_spark_phase+=/arcane_orb,if=buff.arcane_charge.stack<3,line_cd=15\nactions.aoe_spark_phase+=/nether_tempest,if=talent.arcane_echo,line_cd=15\nactions.aoe_spark_phase+=/arcane_surge\n## actions.aoe_spark_phase+=/wait,sec=0.05,if=cooldown.arcane_surge.remains>75&prev_gcd.1.arcane_blast&!talent.presence_of_mind,line_cd=15\n## actions.aoe_spark_phase+=/wait,sec=0.05,if=prev_gcd.1.arcane_surge,line_cd=15\n## actions.aoe_spark_phase+=/wait,sec=0.05,if=cooldown.arcane_surge.remains<75&debuff.radiant_spark_vulnerability.stack=3&!talent.presence_of_mind,line_cd=15\nactions.aoe_spark_phase+=/arcane_barrage,if=cooldown.arcane_surge.remains<75&debuff.radiant_spark_vulnerability.stack=4\nactions.aoe_spark_phase+=/arcane_barrage,if=(debuff.radiant_spark_vulnerability.stack=2&cooldown.arcane_surge.remains>75)||(debuff.radiant_spark_vulnerability.stack=1&cooldown.arcane_surge.remains<75)\nactions.aoe_spark_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\nactions.aoe_spark_phase+=/presence_of_mind\nactions.aoe_spark_phase+=/arcane_blast,if=debuff.radiant_spark_vulnerability.stack=2||debuff.radiant_spark_vulnerability.stack=3\nactions.aoe_spark_phase+=/arcane_barrage,if=(debuff.radiant_spark_vulnerability.stack=4&buff.arcane_surge.up)||(debuff.radiant_spark_vulnerability.stack=3&buff.arcane_surge.down)\n\nactions.aoe_touch_phase+=/variable,name=conserve_mana,op=set,if=debuff.touch_of_the_magi.remains>9,value=1-variable.conserve_mana\nactions.aoe_touch_phase+=/meteor\nactions.aoe_touch_phase+=/arcane_barrage,if=talent.arcane_bombardment&target.health.pct<35&debuff.touch_of_the_magi.remains<=gcd.max\nactions.aoe_touch_phase+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&active_enemies>=variable.aoe_target_count&cooldown.arcane_orb.remains<=execute_time\nactions.aoe_touch_phase+=/arcane_missiles,if=buff.clearcasting.react&(talent.arcane_echo||talent.arcane_harmony),chain=1\nactions.aoe_touch_phase+=/arcane_missiles,if=buff.clearcasting.stack>1&talent.conjure_mana_gem&cooldown.use_mana_gem.ready,chain=1\nactions.aoe_touch_phase+=/arcane_orb,if=buff.arcane_charge.stack<2\nactions.aoe_touch_phase+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.aoe_touch_phase+=/arcane_explosion\n\nactions.rop_phase=rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.2.rune_of_power\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.3.rune_of_power\nactions.rop_phase+=/arcane_surge\nactions.rop_phase+=/arcane_blast,if=prev_gcd.1.arcane_blast&prev_gcd.4.rune_of_power\nactions.rop_phase+=/nether_tempest,if=talent.arcane_echo,line_cd=15\nactions.rop_phase+=/meteor\nactions.rop_phase+=/arcane_barrage\nactions.rop_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\n\nactions.rotation+=/arcane_orb,if=buff.arcane_charge.stack<3&(buff.bloodlust.down||mana.pct>70||cooldown.touch_of_the_magi.remains>30)\nactions.rotation+=/shifting_power,if=(!talent.evocation||cooldown.evocation.remains>12)&(!talent.arcane_surge||cooldown.arcane_surge.remains>12)&(!talent.touch_of_the_magi||cooldown.touch_of_the_magi.remains>12)&buff.arcane_surge.down&fight_remains>15\nactions.rotation+=/presence_of_mind,if=buff.arcane_charge.stack<3&target.health.pct<35&talent.arcane_bombardment\nactions.rotation+=/arcane_blast,if=buff.presence_of_mind.up&target.health.pct<35&talent.arcane_bombardment&buff.arcane_charge.stack<3\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.clearcasting.stack=buff.clearcasting.max_stack\nactions.rotation+=/nether_tempest,if=(refreshable||!ticking)&buff.arcane_charge.stack=buff.arcane_charge.max_stack&(buff.temporal_warp.up||mana.pct<10||!talent.shifting_power)&buff.arcane_surge.down&fight_remains>=12\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<50&!talent.evocation&fight_remains>20\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<70&variable.conserve_mana&buff.bloodlust.up&cooldown.touch_of_the_magi.remains>5&fight_remains>20\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.concentration.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.rotation+=/arcane_blast,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&buff.nether_precision.up\nactions.rotation+=/arcane_barrage,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack&mana.pct<60&variable.conserve_mana&(!talent.rune_of_power||cooldown.rune_of_power.remains>5)&cooldown.touch_of_the_magi.remains>10&cooldown.evocation.remains>40&fight_remains>20\nactions.rotation+=/arcane_missiles,if=buff.clearcasting.react&buff.nether_precision.down\nactions.rotation+=/arcane_blast\nactions.rotation+=/arcane_barrage\n\nactions.spark_phase+=/nether_tempest,if=!ticking&variable.opener&buff.bloodlust.up,line_cd=45\nactions.spark_phase+=/rune_of_power\nactions.spark_phase+=/arcane_blast,if=variable.opener&cooldown.arcane_surge.ready&buff.bloodlust.up&mana>=variable.opener_min_mana&buff.rune_of_power.remains>gcd.max*4\nactions.spark_phase+=/arcane_missiles,if=variable.opener&buff.bloodlust.up&buff.clearcasting.react&buff.clearcasting.stack>=2&cooldown.radiant_spark.remains<5&buff.nether_precision.down,chain=1\nactions.spark_phase+=/arcane_missiles,if=talent.arcane_harmony&buff.arcane_harmony.stack<15&((variable.opener&buff.bloodlust.up)||buff.clearcasting.react&cooldown.radiant_spark.remains<5)&cooldown.arcane_surge.remains<30,chain=1\nactions.spark_phase+=/radiant_spark\nactions.spark_phase+=/use_item,name=timebreaching_talon,if=cooldown.arcane_surge.remains<=(gcd.max*3)\n## Not supported by addon; cannot control if another player grants you Power Infusion.\n## actions.spark_phase+=/invoke_external_buff,name=power_infusion,if=prev_gcd.1.radiant_spark&cooldown.arcane_surge.remains<=(gcd.max*3)\nactions.spark_phase+=/nether_tempest,if=(prev_gcd.4.radiant_spark&cooldown.arcane_surge.remains<=execute_time)||!ticking&prev_gcd.5.radiant_spark\nactions.spark_phase+=/arcane_surge,if=(!talent.nether_tempest&prev_gcd.4.radiant_spark)||prev_gcd.1.nether_tempest\nactions.spark_phase+=/meteor,if=(talent.nether_tempest&prev_gcd.6.radiant_spark)||(!talent.nether_tempest&prev_gcd.5.radiant_spark)\nactions.spark_phase+=/arcane_blast,if=cast_time>=gcd&execute_time<debuff.radiant_spark_vulnerability.remains&(!talent.arcane_bombardment||target.health.pct>=35)&(talent.nether_tempest&prev_gcd.6.radiant_spark||!talent.nether_tempest&prev_gcd.5.radiant_spark)&!talent.meteor\n## actions.spark_phase+=/wait,sec=0.05,if=!talent.meteor&(talent.nether_tempest&prev_gcd.6.radiant_spark)||(!talent.nether_tempest&prev_gcd.5.radiant_spark),line_cd=15\nactions.spark_phase+=/arcane_barrage,if=debuff.radiant_spark_vulnerability.stack=4\nactions.spark_phase+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage&(action.arcane_barrage.in_flight_remains<=0.2||gcd.remains<=0.2)\nactions.spark_phase+=/arcane_blast\nactions.spark_phase+=/arcane_barrage\n\nactions.standard_cooldowns=arcane_surge,if=buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/nether_tempest,if=prev_gcd.1.arcane_surge&talent.arcane_echo\nactions.standard_cooldowns+=/meteor,if=buff.arcane_surge.up&cooldown.touch_of_the_magi.ready\nactions.standard_cooldowns+=/arcane_barrage,if=buff.arcane_surge.up&cooldown.touch_of_the_magi.ready\nactions.standard_cooldowns+=/rune_of_power,if=cooldown.touch_of_the_magi.remains<=(gcd.max*2)&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/meteor,if=cooldown.touch_of_the_magi.remains<=(gcd.max*2)&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.standard_cooldowns+=/touch_of_the_magi,use_off_gcd=1,if=prev_gcd.1.arcane_barrage\n\nactions.touch_phase=variable,name=conserve_mana,op=set,if=debuff.touch_of_the_magi.remains>9,value=1-variable.conserve_mana\nactions.touch_phase+=/meteor\nactions.touch_phase+=/presence_of_mind,if=(!talent.arcane_bombardment||target.health.pct>35)&buff.arcane_surge.up&debuff.touch_of_the_magi.remains<=gcd.max\nactions.touch_phase+=/arcane_blast,if=buff.presence_of_mind.up&buff.arcane_charge.stack=buff.arcane_charge.max_stack\nactions.touch_phase+=/arcane_barrage,if=(buff.arcane_harmony.up||(talent.arcane_bombardment&target.health.pct<35))&debuff.touch_of_the_magi.remains<=gcd.max\nactions.touch_phase+=/arcane_missiles,if=buff.clearcasting.stack>1&talent.conjure_mana_gem&cooldown.use_mana_gem.ready,chain=1\nactions.touch_phase+=/arcane_blast,if=buff.nether_precision.up\nactions.touch_phase+=/arcane_missiles,if=buff.clearcasting.react&(debuff.touch_of_the_magi.remains>execute_time||!talent.presence_of_mind),chain=1\nactions.touch_phase+=/arcane_blast\nactions.touch_phase+=/arcane_barrage",
					["author"] = "SimulationCraft",
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
								["action"] = "rake",
								["criteria"] = "( refreshable || 1.4 * persistent_multiplier > dot.rake.pmultiplier ) & buff.bt_rake.down",
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
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & buff.bt_thrash.down",
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
								["action"] = "primal_wrath",
								["criteria"] = "refreshable & spell_targets.primal_wrath > 1",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "rip",
								["criteria"] = "refreshable & target.time_to_die >= settings.rip_duration",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "( dot.rip.ticking || target.time_to_die < settings.rip_duration ) & ( ! buff.bs_inc.up || ( buff.bs_inc.up & ! talent.soul_of_the_forest.enabled ) )",
								["max_energy"] = 1,
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
								["criteria"] = "buff.clearcasting.react",
								["action"] = "run_action_list",
								["list_name"] = "clearcasting",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "refreshable || ( buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & dot.rake.duration > 6 )",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable",
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
								["action"] = "adaptive_swarm",
								["criteria"] = "( ( ! dot.adaptive_swarm_damage.ticking || dot.adaptive_swarm_damage.remains < 2 ) & ( dot.adaptive_swarm_damage.stack < 3 || ! dot.adaptive_swarm_heal.stack > 1 ) & ! action.adaptive_swarm_heal.in_flight & ! action.adaptive_swarm_damage.in_flight & ! action.adaptive_swarm.in_flight ) & target.time_to_die > 5 || active_enemies > 2 & ! dot.adaptive_swarm_damage.ticking & energy < 35 & target.time_to_die > 5",
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
								["criteria"] = "variable.need_bt & ! buff.bs_inc.up",
								["action"] = "call_action_list",
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
								["action"] = "rake",
								["criteria"] = "refreshable",
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
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable",
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
								["description"] = "AoE",
								["criteria"] = "combo_points = 5",
								["action"] = "primal_wrath",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.apex_predators_craving.up & buff.sabertooth.down",
								["action"] = "ferocious_bite",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.need_bt & active_bt_triggers >= 1",
								["action"] = "run_action_list",
								["list_name"] = "bloodtalons",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable",
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
								["criteria"] = "refreshable || active_dot.rake < cycle_enemies",
								["description"] = "This means that a full rake (5.5+ ticks) is stronger up to 10ish targets",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
								["criteria"] = "refreshable & cycle_enemies - active_dot.lunar_inspiration > 2",
								["description"] = "Full Lis beat Swipe up til around 3-ish targets depending on haste",
							}, -- [7]
							{
								["action"] = "swipe_cat",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "If we have BrS and nothing better to cast, check if Thrash DD beats Shred",
								["criteria"] = "action.shred.damage > action.thrash_cat.damage",
								["action"] = "shred",
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
								["criteria"] = "energy.deficit > 40",
								["name"] = "manic_grieftorch",
								["action"] = "manic_grieftorch",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.down & ( talent.incarnation.enabled & cooldown.incarnation.remains < 5 || cooldown.berserk.remains < 5 )",
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
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
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=buff.prowl.down\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/prowl\nactions.precombat+=/cat_form\n\nactions+=/skull_bash\nactions+=/soothe\nactions+=/prowl,if=buff.jungle_stalker.up&buff.jungle_stalker.remains<2*gcd.max||dot.rake.pmultiplier<persistent_multiplier*class.auras.prowl_base.multiplier\nactions+=/tigers_fury\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/variable,name=need_bt,value=talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/call_action_list,name=cooldown\nactions+=/adaptive_swarm,cycle_targets=1,if=((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5\nactions+=/feral_frenzy,if=combo_points<2||combo_points=2&buff.bs_inc.up\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.swipe_cat>1&talent.primal_wrath.enabled\nactions+=/ferocious_bite,if=buff.apex_predators_craving.up\nactions+=/call_action_list,name=finisher,strict=1,if=combo_points=5\nactions+=/call_action_list,name=bloodtalons,if=variable.need_bt&!buff.bs_inc.up\nactions+=/call_action_list,name=berserk_builders,strict=1,if=combo_points<5&buff.bs_inc.up\nactions+=/call_action_list,name=builder,strict=1,if=combo_points<5\n\n# AoE\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/primal_wrath,if=combo_points=5\nactions.aoe+=/ferocious_bite,if=buff.apex_predators_craving.up&buff.sabertooth.down\nactions.aoe+=/run_action_list,name=bloodtalons,if=variable.need_bt&active_bt_triggers>=1\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/thrash_cat,cycle_targets=1,if=refreshable\n# At this target count BRS also crushes everything except full thrashes\nactions.aoe+=/brutal_slash\n## actions.aoe+=/pool_resource,for_next=1\n## TODO: actions.aoe+=/rake,cycle_targets=1,if=((dot.rake.ticks_gained_on_refresh.pmult*(1+talent.doubleclawed_rake.enabled))>(spell_targets.swipe_cat*0.216+3.32))\n# This means that a full rake (5.5+ ticks) is stronger up to 10ish targets\nactions.aoe+=/rake,cycle_targets=1,if=refreshable||active_dot.rake<cycle_enemies\n## TODO: actions.aoe+=/lunar_inspiration,cycle_targets=1,if=max((ticks_gained_on_refresh+1)-(spell_targets.swipe_cat*2.492))\n# Full Lis beat Swipe up til around 3-ish targets depending on haste\nactions.aoe+=/lunar_inspiration,cycle_targets=1,if=refreshable&cycle_enemies-active_dot.lunar_inspiration>2\nactions.aoe+=/swipe_cat\n# If we have BrS and nothing better to cast, check if Thrash DD beats Shred\nactions.aoe+=/shred,if=action.shred.damage>action.thrash_cat.damage\nactions.aoe+=/thrash_cat\n\nactions.bloodtalons+=/rake,cycle_targets=1,if=(refreshable||1.4*persistent_multiplier>dot.rake.pmultiplier)&buff.bt_rake.down\nactions.bloodtalons+=/lunar_inspiration,if=refreshable&buff.bt_moonfire.down\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down\nactions.bloodtalons+=/swipe_cat,if=spell_targets.swipe_cat>1&buff.bt_swipe.down\nactions.bloodtalons+=/shred,if=buff.bt_shred.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\nactions.bloodtalons+=/rake,if=buff.bt_rake.down&combo_points>4\n\nactions.berserk_builders+=/rake,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.berserk_builders+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk_builders+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/shred\n\nactions.builder+=/run_action_list,name=clearcasting,if=buff.clearcasting.react\nactions.builder+=/rake,cycle_targets=1,if=refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&dot.rake.duration>6)\nactions.builder+=/moonfire_cat,cycle_targets=1,if=refreshable\n## actions.builder+=/pool_resource,for_next=1\nactions.builder+=/thrash_cat,cycle_targets=1,if=refreshable\nactions.builder+=/brutal_slash\nactions.builder+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.builder+=/shred\n\nactions.clearcasting+=/thrash_cat,if=refreshable\nactions.clearcasting+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.clearcasting+=/brutal_slash,if=spell_targets.brutal_slash>5&talent.moment_of_clarity.enabled\nactions.clearcasting+=/shred\n\nactions.cooldown+=/berserk\nactions.cooldown+=/incarnation\nactions.cooldown+=/convoke_the_spirits,if=buff.tigers_fury.up&combo_points<3||boss&fight_remains<5\nactions.cooldown+=/berserking\nactions.cooldown+=/shadowmeld,if=buff.tigers_fury.up&buff.bs_inc.down&combo_points<4&buff.sudden_ambush.down&dot.rake.pmultiplier<1.6&energy>40&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2&target.time_to_die>5\nactions.cooldown+=/potion,if=buff.bs_inc.up||boss&fight_remains<cooldown.bs_inc.remains||boss&fight_remains<35\nactions.cooldown+=/use_item,name=manic_grieftorch,if=energy.deficit>40\nactions.cooldown+=/use_item,name=algethar_puzzle_box,if=buff.bs_inc.down&(talent.incarnation&cooldown.incarnation.remains<5||cooldown.berserk.remains<5)\nactions.cooldown+=/use_items\n\nactions.finisher+=/primal_wrath,if=spell_targets.primal_wrath>2\nactions.finisher+=/primal_wrath,cycle_targets=1,if=refreshable&spell_targets.primal_wrath>1\nactions.finisher+=/rip,cycle_targets=1,if=refreshable&target.time_to_die>=settings.rip_duration\n## actions.finisher+=/pool_resource,for_next=1\nactions.finisher+=/ferocious_bite,max_energy=1,if=(dot.rip.ticking||target.time_to_die<settings.rip_duration)&(!buff.bs_inc.up||(buff.bs_inc.up&!talent.soul_of_the_forest.enabled))\nactions.finisher+=/ferocious_bite,if=(dot.rip.ticking||target.time_to_die<settings.rip_duration)&buff.bs_inc.up&talent.soul_of_the_forest.enabled\n\nactions.owlweaving+=/sunfire,line_cd=4*gcd",
					["spec"] = 103,
				},
				["Restoration Druid"] = {
					["builtIn"] = true,
					["date"] = 20230127.2,
					["spec"] = 105,
					["desc"] = "Healer priorities are DPS-focused only.",
					["lists"] = {
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
								["criteria"] = "talent.rake.enabled || buff.cat_form.up",
								["action"] = "run_action_list",
								["list_name"] = "cat",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "run_action_list",
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
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 5 & talent.improved_sunfire.enabled",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & time_to_die > 12",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 8",
								["action"] = "starsurge",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 7 & active_enemies < 7",
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
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "run_action_list",
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
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 1",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "( refreshable & target.time_to_die > 5 ) & ! prev_gcd.1.cat_form & ( active_enemies = 1 || talent.improved_sunfire.enabled )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up & energy > 50 & ( dot.thrash_cat.refreshable & spell_targets.swipe_cat >= 9 & talent.thrash.enabled )",
								["action"] = "cat_form",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "( refreshable & time_to_die > 12 & ! ticking || ( prev_gcd.1.sunfire & remains < duration * 0.8 & spell_targets.sunfire = 1 ) ) & ! prev_gcd.1.cat_form",
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
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 2",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "dot.adaptive_swarm_damage.ticking & refreshable",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "rip",
								["criteria"] = "( ( refreshable || energy > 90 & remains <= 10 ) & ( combo_points = 5 & time_to_die > remains + 24 || ( remains + combo_points * 4 < time_to_die & remains + 4 + combo_points * 4 > time_to_die ) ) || ! ticking & combo_points > 2 + spell_targets.swipe_cat * 2 )",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "combo_points = combo_points.max & ( dot.rip.ticking || ! talent.rip.enabled )",
								["max_energy"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( refreshable & time_to_die > 10 & spell_targets.swipe_cat < 10 ) & ( combo_points < 5 || remains < 1 )",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & target.time_to_die > 5 & active_enemies < 7 & ! talent.improved_sunfire.enabled",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & target.time_to_die > 5",
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
					["profile"] = "actions.precombat+=/heart_of_the_wild\nactions.precombat+=/prowl,if=talent.rake.enabled\nactions.precombat+=/cat_form,if=talent.rake.enabled\nactions.precombat+=/moonkin_form,if=buff.cat_form.down&talent.moonkin_form.enabled\n\n# Executed every time the actor is available.\nactions+=/skull_bash\nactions+=/solar_beam\nactions+=/berserking\nactions+=/natures_vigil,if=!buff.prowl.up&!buff.shadowmeld.up\n## actions+=/regrowth,if=!buff.prowl.up&!buff.shadowmeld.up&settings.heal_in_groups,line_cd=7\nactions+=/use_items,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/potion,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/run_action_list,name=cat,if=talent.rake.enabled||buff.cat_form.up\nactions+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/moonkin_form,if=talent.moonkin_form.enabled&buff.cat_form.down\nactions+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&talent.improved_sunfire.enabled\nactions+=/moonfire,cycle_targets=1,if=refreshable&time_to_die>12\nactions+=/starsurge,if=active_enemies<8\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>7&active_enemies<7\nactions+=/starfire,if=spell_targets.starfire>1\nactions+=/wrath\n\nactions.cat+=/rake,if=buff.shadowmeld.up||buff.prowl.up||buff.sudden_ambush.up\nactions.cat+=/heart_of_the_wild,if=(cooldown.convoke_the_spirits.remains<30||!talent.convoke_the_spirits.enabled)&!buff.heart_of_the_wild.up\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions.cat+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/cat_form,if=(active_enemies<2||!talent.moonkin_form.enabled)&(!buff.cat_form.up&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled))\nactions.cat+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/rip,if=remains<=gcd&combo_points>0&dot.adaptive_swarm_damage.ticking\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>1\nactions.cat+=/sunfire,cycle_targets=1,if=(refreshable&target.time_to_die>5)&!prev_gcd.1.cat_form&(active_enemies=1||talent.improved_sunfire.enabled)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50&(dot.thrash_cat.refreshable&spell_targets.swipe_cat>=9&talent.thrash.enabled)\nactions.cat+=/moonfire,cycle_targets=1,if=(refreshable&time_to_die>12&!ticking||(prev_gcd.1.sunfire&remains<duration*0.8&spell_targets.sunfire=1))&!prev_gcd.1.cat_form\nactions.cat+=/sunfire,if=prev_gcd.1.moonfire&remains<duration*0.8\nactions.cat+=/starsurge,if=active_enemies=1||(active_enemies<8&!buff.cat_form.up)\nactions.cat+=/starfire,if=time_to_die<10&spell_targets.starfire>1&(!talent.improved_swipe.enabled||spell_targets.swipe_cat>=9)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50\nactions.cat+=/ferocious_bite,if=(combo_points>3&target.1.time_to_die<3)||(combo_points=5&energy>=50&dot.rip.remains>10)&spell_targets.swipe_cat<4\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>2\nactions.cat+=/rake,cycle_targets=1,if=dot.adaptive_swarm_damage.ticking&refreshable\nactions.cat+=/rip,cycle_targets=1,if=((refreshable||energy>90&remains<=10)&(combo_points=5&time_to_die>remains+24||(remains+combo_points*4<time_to_die&remains+4+combo_points*4>time_to_die))||!ticking&combo_points>2+spell_targets.swipe_cat*2)\nactions.cat+=/ferocious_bite,max_energy=1,if=combo_points=combo_points.max&(dot.rip.ticking||!talent.rip)\nactions.cat+=/rake,cycle_targets=1,if=(refreshable&time_to_die>10&spell_targets.swipe_cat<10)&(combo_points<5||remains<1)\nactions.cat+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&active_enemies<7&!talent.improved_sunfire.enabled\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5\nactions.cat+=/swipe_cat,if=active_enemies>1&combo_points<5&talent.improved_swipe.enabled\nactions.cat+=/shred,if=energy>60&combo_points<5\n\nactions.owl+=/moonkin_form,if=!buff.moonkin_form.up\nactions.owl+=/convoke_the_spirits",
					["author"] = "Makahiki",
				},
				["Fire"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230127,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["combustion_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "lights_judgment",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down",
								["action"] = "bag_of_tricks",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down",
								["action"] = "living_bomb",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "Other cooldowns that should be used with Combustion should only be used with an actual Combustion cast and not with a Sun King's Blessing proc.",
								["criteria"] = "buff.combustion.remains > variable.skb_duration || fight_remains < 20",
								["list_name"] = "combustion_cooldowns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev.1.fire_blast + prev.2.fire_blast + prev.3.fire_blast >= 2 & action.fire_blast.charges = 0",
								["name"] = "hyperthread_wristwraps",
								["action"] = "hyperthread_wristwraps",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > 60",
								["name"] = "neural_synapse_enhancer",
								["action"] = "neural_synapse_enhancer",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! set_bonus.tier28_4pc & buff.combustion.down & buff.sun_kings_blessing.stack > 2 & talent.rune_of_power.enabled & cooldown.rune_of_power.remains < 20",
								["action"] = "cancel_buff",
								["buff_name"] = "sun_kings_blessing",
								["description"] = "If Sun King's Blessing stacks are high, cancel them before Combustion so that the Sun King's Blessing proc can be safely delayed until after Combustion without risk of expiration.",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "If Combustion is down, precast something before activating it.",
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time & active_enemies >= variable.combustion_flamestrike",
								["action"] = "flamestrike",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.pyroclasm.react & buff.pyroclasm.remains > cast_time",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time & ! conduit.flame_accretion.enabled",
								["action"] = "fireball",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & cooldown.combustion.remains < cast_time",
								["action"] = "scorch",
							}, -- [13]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "hot_streak_spells_in_flight = 0 & buff.combustion.down & variable.time_to_combustion <= 0 & ( ! runeforge.disciplinary_command.enabled || buff.disciplinary_command.up || buff.disciplinary_command_frost.up & talent.rune_of_power.enabled & cooldown.buff_disciplinary_command.ready ) & ( ! runeforge.grisly_icicle.enabled || debuff.grisly_icicle.up ) & ( ! covenant.necrolord || cooldown.deathborne.remains || buff.deathborne.up ) & ( ! covenant.venthyr || cooldown.mirrors_of_torment.remains ) & ( action.scorch.executing & action.scorch.execute_remains < variable.combustion_cast_remains || action.fireball.executing & action.fireball.execute_remains < variable.combustion_cast_remains || action.pyroblast.executing & action.pyroblast.execute_remains < variable.combustion_cast_remains || action.flamestrike.executing & action.flamestrike.execute_remains < variable.combustion_cast_remains )",
								["use_off_gcd"] = 1,
								["action"] = "combustion",
								["description"] = "Combustion should be used when the precast is almost finished.",
							}, -- [14]
							{
								["enabled"] = true,
								["description"] = "Rune of Power can be used in Combustion if it is down, but this should only be done if there is more Combustion time to benefit from than there would be from an SKB Combustion later.",
								["criteria"] = "buff.rune_of_power.down & variable.extended_combustion_remains > variable.skb_duration",
								["action"] = "rune_of_power",
							}, -- [15]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! talent.feel_the_burn.enabled & ! conduit.infernal_cascade.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & buff.combustion.up & ! ( buff.firestorm.react || buff.hyperthermia.react ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "Without Feel the Burn, just use Fire Blasts when they won't munch crits and when Firestorm is down.",
							}, -- [16]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "conduit.infernal_cascade.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & ( ! equipped.hyperthread_wristwraps || ! cooldown.hyperthread_wristwraps_300142.ready || charges > 1 || debuff.mirrors_of_torment.up ) & ( variable.expected_fire_blasts >= variable.needed_fire_blasts || buff.combustion.remains < gcd.max || variable.extended_combustion_remains <= buff.infernal_cascade.duration || buff.infernal_cascade.stack < 2 || buff.infernal_cascade.remains < gcd.max || cooldown.shifting_power.ready & variable.use_shifting_power || equipped.hyperthread_wristwraps & cooldown.hyperthread_wristwraps_300142.ready ) & buff.combustion.up & ( ! ( buff.firestorm.react || buff.hyperthermia.react ) || buff.infernal_cascade.remains < 0.5 ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [17]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "talent.feel_the_burn.enabled & ! variable.fire_blast_pooling & ( ! set_bonus.tier28_4pc || debuff.mirrors_of_torment.down || buff.sun_kings_blessing_ready.down || action.pyroblast.executing ) & ( ! equipped.hyperthread_wristwraps || ! cooldown.hyperthread_wristwraps_300142.ready || charges > 1 || debuff.mirrors_of_torment.up ) & ( variable.expected_fire_blasts >= variable.needed_fire_blasts || buff.combustion.remains < gcd.max || variable.extended_combustion_remains <= buff.feel_the_burn.duration || buff.feel_the_burn.stack < 2 || buff.feel_the_burn.remains < gcd.max || cooldown.shifting_power.ready & variable.use_shifting_power || equipped.hyperthread_wristwraps & cooldown.hyperthread_wristwraps_300142.ready ) & buff.combustion.up & ( ! ( buff.firestorm.react || buff.hyperthermia.react ) || buff.feel_the_burn.remains < 0.5 ) & ! buff.hot_streak.react & hot_streak_spells_in_flight + buff.heating_up.react * ( gcd.remains > 0 ) < 2",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
							}, -- [18]
							{
								["enabled"] = true,
								["description"] = "Spend Hot Streaks during Combustion at high priority.",
								["criteria"] = "( buff.hot_streak.react & active_enemies >= variable.combustion_flamestrike ) || ( ( buff.firestorm.react || buff.hyperthermia.react ) & active_enemies >= variable.combustion_flamestrike - ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) )",
								["action"] = "flamestrike",
							}, -- [19]
							{
								["enabled"] = true,
								["description"] = "Radiant Spark should be used with a Hot Streak ready to use immediately after the cast finishes. This will naturally set up a Hot Streak spent for the final stack of Radiant Spark.",
								["criteria"] = "buff.combustion.up & 2 * buff.hot_streak.react + buff.heating_up.react + hot_streak_spells_in_flight = 2",
								["action"] = "radiant_spark",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.combustion.up",
								["action"] = "pyroblast",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & active_enemies < variable.combustion_flamestrike & buff.combustion.up",
								["action"] = "pyroblast",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "Using Shifting Power during Combustion to restore Fire Blast and Phoenix Flame charges can be beneficial, but usually only on AoE.",
								["criteria"] = "variable.use_shifting_power & buff.combustion.up & ! action.fire_blast.charges & ( action.phoenix_flames.charges < action.phoenix_flames.max_charges || talent.alexstraszas_fury.enabled )",
								["action"] = "shifting_power",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "If a Sun King's Blessing proc would be used, Rune of Power should be used first if the existing Rune of Power will expire during the cast.",
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > execute_time + action.flamestrike.cast_time & buff.rune_of_power.remains < action.flamestrike.cast_time & active_enemies >= variable.combustion_flamestrike",
								["action"] = "rune_of_power",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & active_enemies >= variable.combustion_flamestrike & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > execute_time + action.pyroblast.cast_time & buff.rune_of_power.remains < action.pyroblast.cast_time",
								["action"] = "rune_of_power",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [28]
							{
								["enabled"] = true,
								["description"] = "Pyroclasm procs should be used in Combustion at higher priority than Phoenix Flames and Scorch.",
								["criteria"] = "buff.pyroclasm.react & buff.pyroclasm.remains > cast_time & buff.combustion.remains > cast_time & active_enemies < variable.combustion_flamestrike & ( ! talent.feel_the_burn.enabled || buff.feel_the_burn.remains > execute_time || buff.heating_up.react + hot_streak_spells_in_flight < 2 )",
								["action"] = "pyroblast",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time & buff.flame_accelerant.react",
								["action"] = "fireball",
							}, -- [30]
							{
								["enabled"] = true,
								["description"] = "Use Phoenix Flames and Scorch in Combustion to help generate Hot Streaks when Fire Blasts are not available or need to be conserved.",
								["criteria"] = "! talent.alexstraszas_fury.enabled & buff.combustion.up & travel_time < buff.combustion.remains & buff.heating_up.react + hot_streak_spells_in_flight < 2 & ( ! talent.from_the_ashes.enabled || variable.extended_combustion_remains < 10 )",
								["action"] = "phoenix_flames",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time & cast_time >= gcd.max",
								["action"] = "scorch",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains > cast_time",
								["action"] = "fireball",
							}, -- [33]
							{
								["enabled"] = true,
								["description"] = "If there isn't enough time left in Combustion for a Phoenix Flames or Scorch to hit inside of Combustion, use something else.",
								["criteria"] = "buff.combustion.remains < gcd.max & active_enemies > 1",
								["action"] = "living_bomb",
							}, -- [34]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.remains < gcd.max",
								["action"] = "ice_nova",
							}, -- [35]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "! runeforge.disciplinary_command.enabled",
								["action"] = "counterspell",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & action.fire_blast.charges <= 1 & ( cooldown.rune_of_power.remains || ! talent.rune_of_power.enabled ) & ! buff.hot_streak.react & variable.shifting_power_before_combustion",
								["action"] = "shifting_power",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Save Radiant Spark for Combustion, but otherwise use it on cooldown.",
								["criteria"] = "buff.combustion.down & ( variable.time_to_combustion > action_cooldown - 5 )",
								["action"] = "radiant_spark",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Deathborne should always be used with Combustion. With Death's Fathom, it should be used early so that Deathborne will have more stacks during Combustion.",
								["criteria"] = "buff.combustion.down & buff.rune_of_power.down & variable.time_to_combustion < variable.combustion_precast_time + execute_time + ( buff.deathborne.duration - buff.combustion.duration ) * runeforge.deaths_fathom.enabled",
								["action"] = "deathborne",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Use Mirrors of Torment with Combustion.",
								["criteria"] = "variable.time_to_combustion < variable.combustion_precast_time + execute_time & buff.combustion.down",
								["action"] = "mirrors_of_torment",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Also use Mirrors of Torment in between Combustions as long as Combustion will not have to be delayed much for it.",
								["criteria"] = "variable.time_to_combustion > action_cooldown - 30 * runeforge.sinful_delight.enabled",
								["action"] = "mirrors_of_torment",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["description"] = "For Venthyr, use a Fire Blast charge during Mirrors of Torment cast to avoid capping charges.",
								["criteria"] = "action.mirrors_of_torment.executing & full_recharge_time - action.mirrors_of_torment.execute_remains < 4 & ! hot_streak_spells_in_flight & ! buff.hot_streak.react",
								["action"] = "fire_blast",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "gladiators_badge",
								["criteria"] = "variable.time_to_combustion > action_cooldown - 5",
								["effect_name"] = "gladiators_badge",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= variable.empyreal_ordnance_delay & variable.time_to_combustion > variable.empyreal_ordnance_delay - 5",
								["name"] = "empyreal_ordnance",
								["action"] = "empyreal_ordnance",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( variable.time_to_combustion <= variable.combustion_precast_time + 2 || fight_remains < variable.time_to_combustion ) & buff.combustion.down & ( ! equipped.the_first_sigil || cooldown.the_first_sigil_367241.remains > 40 )",
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 8 || fight_remains < variable.time_to_combustion",
								["name"] = "grim_eclipse",
								["action"] = "grim_eclipse",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 5 || fight_remains < variable.time_to_combustion",
								["name"] = "moonlit_prism",
								["action"] = "moonlit_prism",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! variable.item_cutoff_active",
								["name"] = "glyph_of_assimilation",
								["action"] = "glyph_of_assimilation",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 5",
								["name"] = "macabre_sheet_music",
								["action"] = "macabre_sheet_music",
							}, -- [14]
							{
								["enabled"] = true,
								["description"] = "If using a steroid on-use item, always use Dreadfire Vessel outside of Combustion. Otherwise, prioritize using Dreadfire Vessel with Combustion only if Feel the Burn is enabled and a usage won't be lost over the duration of the fight. This adds a small value to the cooldown of Dreadfire Vessel when doing this calculation because it is unrealstic to assume that it will be used perfectly on cooldown. Note that with Sun King's Blessing, it is possible to sync this with SKB Combustions regardless of on-use trinkets.",
								["action"] = "dreadfire_vessel",
								["criteria"] = "! variable.item_cutoff_active & ( buff.infernal_cascade.stack = buff.infernal_cascade.max_stack || ! conduit.infernal_cascade.enabled || variable.combustion_on_use & ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || variable.time_to_combustion > interpolated_fight_remains %  ( action_cooldown + 10 ) )",
								["name"] = "dreadfire_vessel",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "Soul Igniter should be used in a way that doesn't interfere with other on-use trinkets. Other trinkets do not trigger a shared ICD on it, so it can be used right after any other on-use trinket.",
								["action"] = "soul_igniter",
								["criteria"] = "( cooldown.hyperthread_wristwraps.remains || ! variable.item_cutoff_active ) & ( ! conduit.infernal_cascade.enabled || buff.infernal_cascade.up || buff.combustion.up ) & ( ! equipped.dreadfire_vessel || cooldown.dreadfire_vessel_349857.remains > 5 )",
								["name"] = "soul_igniter",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! conduit.infernal_cascade.enabled & time < 5 || buff.infernal_cascade.stack = buff.infernal_cascade.max_stack",
								["action"] = "cancel_buff",
								["buff_name"] = "soul_ignition",
								["description"] = "Trigger Soul Igniter early with Infernal Cascade or when it was precast.",
							}, -- [17]
							{
								["enabled"] = true,
								["description"] = "Items that do not benefit Combustion should just be used outside of Combustion at some point.",
								["action"] = "inscrutable_quantum_device",
								["criteria"] = "equipped.gladiators_badge & ( buff.combustion.down & variable.time_to_combustion >= variable.on_use_cutoff || variable.on_use_cutoff = 0 )",
								["name"] = "inscrutable_quantum_device",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "flame_of_battle",
								["action"] = "flame_of_battle",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "wakeners_frond",
								["action"] = "wakeners_frond",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "instructors_divine_bell",
								["action"] = "instructors_divine_bell",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "equipped.gladiators_badge & ! variable.item_cutoff_active",
								["name"] = "sunblood_amethyst",
								["action"] = "sunblood_amethyst",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.scars_of_fraternal_strife_4.down",
								["name"] = "scars_of_fraternal_strife",
								["action"] = "scars_of_fraternal_strife",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "! variable.item_cutoff_active",
								["action"] = "use_items",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Use Frost Nova to trigger Grisly Icicle.",
								["criteria"] = "runeforge.grisly_icicle.enabled & buff.combustion.down & ( variable.time_to_combustion > action_cooldown || variable.time_to_combustion < variable.combustion_precast_time + execute_time )",
								["action"] = "frost_nova",
							}, -- [25]
							{
								["enabled"] = true,
								["description"] = "Get the Disciplinary Command buff up, unless combustion is soon.",
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_arcane.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + action.frostbolt.cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "counterspell",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_arcane.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + execute_time + action.frostbolt.cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 & ! talent.rune_of_power.enabled )",
								["action"] = "arcane_explosion",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.remains < cast_time & buff.disciplinary_command_frost.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion + cast_time > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "frostbolt",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.disciplinary_command.enabled & cooldown.buff_disciplinary_command.ready & buff.disciplinary_command_frost.down & ! buff.disciplinary_command.up & ( variable.time_to_combustion > cooldown.buff_disciplinary_command.duration || variable.time_to_combustion < 5 )",
								["action"] = "frost_nova",
							}, -- [29]
							{
								["enabled"] = true,
								["op"] = "set",
								["description"] = "Pool as many Fire Blasts as possible for Combustion. Subtract out of the fractional component of the number of Fire Blasts that will naturally recharge during the Combustion phase because pooling anything past that will not grant an extra Fire Blast during Combustion.",
								["action"] = "variable",
								["value"] = "variable.extended_combustion_remains < variable.time_to_combustion & action.fire_blast.charges_fractional + ( variable.time_to_combustion + action.shifting_power.full_reduction * variable.shifting_power_before_combustion + ( debuff.mirrors_of_torment.max_stack - 1 ) * variable.mot_recharge_amount * covenant.venthyr * ( cooldown.mirrors_of_torment.remains <= variable.time_to_combustion ) ) / cooldown.fire_blast.duration - 1 < cooldown.fire_blast.max_charges + variable.overpool_fire_blasts / cooldown.fire_blast.duration - ( buff.combustion.duration / cooldown.fire_blast.duration )  % 1 & variable.time_to_combustion < fight_remains",
								["use_off_gcd"] = 1,
								["var_name"] = "fire_blast_pooling",
								["use_while_casting"] = 1,
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 0 || buff.combustion.up || variable.time_to_combustion < variable.combustion_precast_time & cooldown.combustion.remains < variable.combustion_precast_time",
								["action"] = "call_action_list",
								["list_name"] = "combustion_phase",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.down & buff.rune_of_power.down & ! ( buff.firestorm.react || buff.hyperthermia.react ) & ( variable.time_to_combustion >= buff.rune_of_power.duration & variable.time_to_combustion > action.fire_blast.full_recharge_time || variable.time_to_combustion > fight_remains ) & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || active_enemies >= variable.hard_cast_flamestrike || buff.sun_kings_blessing_ready.up || buff.sun_kings_blessing.react >= buff.sun_kings_blessing.max_stack - 1 || fight_remains < buff.rune_of_power.duration || firestarter.active )",
								["action"] = "rune_of_power",
							}, -- [32]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "variable",
								["op"] = "set",
								["criteria"] = "! variable.fire_blast_pooling & ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled )",
								["value"] = "searing_touch.active & action.fire_blast.full_recharge_time > 3 * gcd.max",
								["use_off_gcd"] = 1,
								["description"] = "Adjust the variable that controls Fire Blast usage to save Fire Blasts while Searing Touch is active with Sun King's Blessing.",
								["var_name"] = "fire_blast_pooling",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.up & buff.combustion.down & variable.time_to_combustion > 0",
								["action"] = "call_action_list",
								["list_name"] = "rop_phase",
							}, -- [34]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["action"] = "variable",
								["op"] = "set",
								["criteria"] = "! variable.fire_blast_pooling & talent.rune_of_power.enabled & buff.rune_of_power.down",
								["value"] = "( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.sun_kings_blessing.stack > buff.sun_kings_blessing.max_stack - 1 ) & cooldown.rune_of_power.remains < action.fire_blast.full_recharge_time - action.shifting_power.full_reduction * ( variable.shifting_power_before_combustion & cooldown.shifting_power.remains < cooldown.rune_of_power.remains ) & cooldown.rune_of_power.remains < fight_remains",
								["use_off_gcd"] = 1,
								["description"] = "Adjust the variable that controls Fire Blast usage to ensure its charges are also pooled for Rune of Power.",
								["var_name"] = "fire_blast_pooling",
							}, -- [35]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & variable.time_to_combustion > 0 & active_enemies >= variable.hard_cast_flamestrike & ! firestarter.active & ! buff.hot_streak.react & ( buff.heating_up.react & action.flamestrike.execute_remains < 0.5 || charges_fractional >= 2 )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "When Hardcasting Flamestrike, Fire Blasts should be used to generate Hot Streaks and to extend Feel the Burn.",
							}, -- [36]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "firestarter.active & variable.time_to_combustion > 0 & ! variable.fire_blast_pooling & ( ! action.fireball.executing & ! action.pyroblast.in_flight & buff.heating_up.react || action.fireball.executing & ! buff.hot_streak.react || action.pyroblast.in_flight & buff.heating_up.react & ! buff.hot_streak.react )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "During Firestarter, Fire Blasts are used similarly to during Combustion. Generally, they are used to generate Hot Streaks when crits will not be wasted and with Feel the Burn, they should be spread out to maintain the Feel the Burn buff.",
							}, -- [37]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["description"] = "Avoid capping Fire Blast charges while channeling Shifting Power",
								["criteria"] = "action.shifting_power.executing & full_recharge_time < action.shifting_power.tick_reduction",
								["action"] = "fire_blast",
							}, -- [38]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion > 0 & buff.rune_of_power.down & buff.combustion.down",
								["action"] = "call_action_list",
								["list_name"] = "standard_rotation",
							}, -- [39]
							{
								["action"] = "scorch",
								["enabled"] = true,
							}, -- [40]
						},
						["rop_phase"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hot_streak_flamestrike & ( buff.hot_streak.react || ( buff.firestorm.react || buff.hyperthermia.react ) )",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.deathborne.up & runeforge.deaths_fathom.enabled & variable.time_to_combustion < buff.deathborne.remains & active_enemies >= 2",
								["action"] = "fireball",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike & buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & buff.sun_kings_blessing_ready.remains > cast_time & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react",
								["action"] = "pyroblast",
							}, -- [6]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & buff.sun_kings_blessing_ready.down & active_enemies < variable.hard_cast_flamestrike & ! firestarter.active & ( ! buff.heating_up.react & ! buff.hot_streak.react & ! prev_off_gcd.fire_blast & ( action.fire_blast.charges >= 2 || ( talent.alexstraszas_fury.enabled & cooldown.dragons_breath.ready ) || searing_touch.active ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "Use one Fire Blast early in RoP if you don't have either Heating Up or Hot Streak yet and either: (a) have more than two already, (b) have Alexstrasza's Fury ready to use, or (c) Searing Touch is active. Don't do this while hard casting Flamestrikes or when Sun King's Blessing is ready.",
							}, -- [7]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! variable.fire_blast_pooling & ! firestarter.active & buff.sun_kings_blessing_ready.down & ( ( ( action.fireball.executing & ( action.fireball.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) || action.pyroblast.executing & ( action.pyroblast.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) ) & buff.heating_up.react ) || ( searing_touch.active & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! hot_streak_spells_in_flight ) ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "actions.rop_phase+=/scorch,if=searing_touch.active&talent.improved_scorch&debuff.improved_scorch.remains<3*gcd.max",
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & cast_time < buff.rune_of_power.remains & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.pyroclasm.remains < action.fireball.cast_time + cast_time * buff.pyroclasm.react )",
								["action"] = "pyroblast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & searing_touch.active & active_enemies < variable.hot_streak_flamestrike",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.phoenix_pooling & ( ! hot_streak_spells_in_flight & ( buff.heating_up.react || charges > 1 ) )",
								["action"] = "phoenix_flames",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "searing_touch.active",
								["action"] = "scorch",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.arcane_explosion & mana.pct >= variable.arcane_explosion_mana",
								["action"] = "arcane_explosion",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.",
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike",
								["action"] = "flamestrike",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.tempered_flames.enabled & ! buff.flame_accelerant.react",
								["action"] = "pyroblast",
							}, -- [17]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [18]
						},
						["combustion_cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.combustion.up",
								["action"] = "berserking",
							}, -- [3]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( talent.temporal_warp.enabled || runeforge.temporal_warp.enabled ) & buff.exhaustion.up",
								["action"] = "time_warp",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "gladiators_badge",
								["effect_name"] = "gladiators_badge",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "irideus_fragment",
								["action"] = "irideus_fragment",
							}, -- [8]
							{
								["enabled"] = true,
								["name"] = "spoils_of_neltharus",
								["action"] = "spoils_of_neltharus",
							}, -- [9]
							{
								["enabled"] = true,
								["name"] = "tome_of_unstable_power",
								["action"] = "tome_of_unstable_power",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "timebreaching_talon",
								["action"] = "timebreaching_talon",
							}, -- [11]
							{
								["enabled"] = true,
								["name"] = "voidmenders_shadowgem",
								["action"] = "voidmenders_shadowgem",
							}, -- [12]
							{
								["enabled"] = true,
								["name"] = "horn_of_valor",
								["action"] = "horn_of_valor",
							}, -- [13]
						},
						["active_talents"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.combustion.down & ( variable.time_to_combustion > cooldown.living_bomb.duration || variable.time_to_combustion <= 0 )",
								["action"] = "living_bomb",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.time_to_combustion <= 0 || buff.combustion.remains > travel_time || ( cooldown.meteor.duration < variable.time_to_combustion & ! talent.rune_of_power.enabled ) || talent.rune_of_power.enabled & buff.rune_of_power.up & variable.time_to_combustion > action.meteor.cooldown || fight_remains < variable.time_to_combustion",
								["action"] = "meteor",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.alexstraszas_fury.enabled & ( buff.combustion.down & ! buff.hot_streak.react )",
								["action"] = "dragons_breath",
							}, -- [3]
						},
						["standard_rotation"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.hot_streak_flamestrike & ( buff.hot_streak.react || ( buff.firestorm.react || buff.hyperthermia.react ) )",
								["action"] = "flamestrike",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.deathborne.up & runeforge.deaths_fathom.enabled & variable.time_to_combustion < buff.deathborne.remains & active_enemies >= 2",
								["action"] = "fireball",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.firestorm.react || buff.hyperthermia.react )",
								["action"] = "pyroblast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & buff.hot_streak.remains < action.fireball.execute_time",
								["action"] = "pyroblast",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & ( prev_gcd.1.fireball || firestarter.active || action.pyroblast.in_flight )",
								["action"] = "pyroblast",
							}, -- [5]
							{
								["enabled"] = true,
								["description"] = "Try to get SKB procs inside RoP phases or Combustion phases when possible.",
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike & buff.sun_kings_blessing_ready.up & ( cooldown.rune_of_power.remains + action.rune_of_power.execute_time + cast_time > buff.sun_kings_blessing_ready.remains || ! talent.rune_of_power.enabled ) & variable.time_to_combustion + cast_time > buff.sun_kings_blessing_ready.remains & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "flamestrike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.sun_kings_blessing_ready.up & ( cooldown.rune_of_power.remains + action.rune_of_power.execute_time + cast_time > buff.sun_kings_blessing_ready.remains || ! talent.rune_of_power.enabled ) & variable.time_to_combustion + cast_time > buff.sun_kings_blessing_ready.remains & buff.sun_kings_blessing_ready.expiration_delay_remains = 0",
								["action"] = "pyroblast",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.hot_streak.react & searing_touch.active",
								["action"] = "pyroblast",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.pyroclasm.react & cast_time < buff.pyroclasm.remains & ( ! ( runeforge.sun_kings_blessing.enabled || talent.sun_kings_blessing.enabled ) || buff.pyroclasm.remains < action.fireball.cast_time + cast_time * buff.pyroclasm.react )",
								["action"] = "pyroblast",
							}, -- [9]
							{
								["enabled"] = true,
								["use_while_casting"] = 1,
								["criteria"] = "! firestarter.active & ! variable.fire_blast_pooling & buff.sun_kings_blessing_ready.down & ( ( ( action.fireball.executing & ( action.fireball.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) || action.pyroblast.executing & ( action.pyroblast.execute_remains < 0.5 || ! ( runeforge.firestorm.enabled || talent.hyperthermia.enabled ) ) ) & buff.heating_up.react ) || ( searing_touch.active & ( buff.heating_up.react & ! action.scorch.executing || ! buff.hot_streak.react & ! buff.heating_up.react & action.scorch.executing & ! hot_streak_spells_in_flight ) ) )",
								["use_off_gcd"] = 1,
								["action"] = "fire_blast",
								["description"] = "During the standard rotation, only use Fire Blasts when they are not being pooled for RoP or Combustion. Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.scorch & buff.heating_up.react & searing_touch.active & active_enemies < variable.hot_streak_flamestrike",
								["action"] = "pyroblast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! variable.phoenix_pooling & ( ! hot_streak_spells_in_flight & ( buff.heating_up.react ) )",
								["action"] = "phoenix_flames",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "active_talents",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "searing_touch.active",
								["action"] = "scorch",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= variable.arcane_explosion & mana.pct >= variable.arcane_explosion_mana",
								["action"] = "arcane_explosion",
							}, -- [16]
							{
								["enabled"] = true,
								["description"] = "With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.",
								["criteria"] = "active_enemies >= variable.hard_cast_flamestrike",
								["action"] = "flamestrike",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.tempered_flames.enabled & ! buff.flame_accelerant.react",
								["action"] = "pyroblast",
							}, -- [18]
							{
								["action"] = "fireball",
								["enabled"] = true,
							}, -- [19]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! variable.combustion_on_use & ! equipped.dreadfire_vessel & ( ! talent.firestarter.enabled || variable.firestarter_combustion )",
								["name"] = "soul_igniter",
								["action"] = "soul_igniter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! equipped.the_first_sigil",
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
							}, -- [3]
							{
								["action"] = "mirror_image",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "fleshcraft",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "pyroblast",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20230127,
					["warnings"] = "The import for 'rop_phase' required some automated changes.\nLine 2: Converted 'runeforge.deaths_fathom' to 'runeforge.deaths_fathom.enabled' (1x).\nLine 7: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 8: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 8: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 8: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 8: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 10: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 10: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 17: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 1: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 2: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 4: Converted 'runeforge.deaths_fathom' to 'runeforge.deaths_fathom.enabled' (1x).\nLine 6: Converted 'runeforge.sinful_delight' to 'runeforge.sinful_delight.enabled' (1x).\nLine 15: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 15: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 15: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 15: Converted operations in '!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade.enabled||variable.combustion_on_use&!(runeforge.sun_kings_blessing.enabled||talent.sun_kings_blessing.enabled)||variable.time_to_combustion>interpolated_fight_remains%%(action_cooldown+10))' to '!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade.enabled||variable.combustion_on_use&!(runeforge.sun_kings_blessing.enabled||talent.sun_kings_blessing.enabled)||variable.time_to_combustion>interpolated_fight_remains%(action_cooldown+10))'.\nLine 16: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 17: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 25: Converted 'runeforge.grisly_icicle' to 'runeforge.grisly_icicle.enabled' (1x).\nLine 26: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 27: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 27: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 28: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 29: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 30: Converted operations in 'variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))%cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts%cooldown.fire_blast.duration-(buff.combustion.duration%cooldown.fire_blast.duration)%%1&variable.time_to_combustion<fight_remains' to 'variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))/cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts/cooldown.fire_blast.duration-(buff.combustion.duration/cooldown.fire_blast.duration)%1&variable.time_to_combustion<fight_remains'.\nLine 32: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 32: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 33: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 33: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 35: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 35: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 35: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 2: Converted 'talent.firestarter' to 'talent.firestarter.enabled' (1x).\n\nThe import for 'combustion_cooldowns' required some automated changes.\nLine 6: Converted 'talent.temporal_warp' to 'talent.temporal_warp.enabled' (1x).\nLine 6: Converted 'runeforge.temporal_warp' to 'runeforge.temporal_warp.enabled' (1x).\n\nThe import for 'active_talents' required some automated changes.\nLine 2: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 2: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 3: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\n\nThe import for 'standard_rotation' required some automated changes.\nLine 2: Converted 'runeforge.deaths_fathom' to 'runeforge.deaths_fathom.enabled' (1x).\nLine 6: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 7: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 9: Converted 'runeforge.sun_kings_blessing' to 'runeforge.sun_kings_blessing.enabled' (1x).\nLine 9: Converted 'talent.sun_kings_blessing' to 'talent.sun_kings_blessing.enabled' (1x).\nLine 10: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 10: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 10: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 10: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 18: Converted 'talent.tempered_flames' to 'talent.tempered_flames.enabled' (1x).\n\nThe import for 'combustion_phase' required some automated changes.\nLine 8: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 12: Converted 'conduit.flame_accretion' to 'conduit.flame_accretion.enabled' (1x).\nLine 14: Converted 'runeforge.disciplinary_command' to 'runeforge.disciplinary_command.enabled' (1x).\nLine 14: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\nLine 14: Converted 'runeforge.grisly_icicle' to 'runeforge.grisly_icicle.enabled' (1x).\nLine 16: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 16: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 17: Converted 'conduit.infernal_cascade' to 'conduit.infernal_cascade.enabled' (1x).\nLine 18: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 19: Converted 'runeforge.firestorm' to 'runeforge.firestorm.enabled' (1x).\nLine 19: Converted 'talent.hyperthermia' to 'talent.hyperthermia.enabled' (1x).\nLine 24: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 29: Converted 'talent.feel_the_burn' to 'talent.feel_the_burn.enabled' (1x).\nLine 31: Converted 'talent.alexstraszas_fury' to 'talent.alexstraszas_fury.enabled' (1x).\nLine 31: Converted 'talent.from_the_ashes' to 'talent.from_the_ashes.enabled' (1x).\n\nImported 7 action lists.\n",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/use_item,name=soul_igniter,if=!variable.combustion_on_use&!equipped.dreadfire_vessel&(!talent.firestarter||variable.firestarter_combustion)\nactions.precombat+=/use_item,name=shadowed_orb_of_torment,if=!equipped.the_first_sigil\nactions.precombat+=/mirror_image\nactions.precombat+=/fleshcraft\nactions.precombat+=/pyroblast\n\n# Executed every time the actor is available.\nactions=counterspell,if=!runeforge.disciplinary_command\nactions+=/shifting_power,if=buff.combustion.down&action.fire_blast.charges<=1&(cooldown.rune_of_power.remains||!talent.rune_of_power)&!buff.hot_streak.react&variable.shifting_power_before_combustion\n# Save Radiant Spark for Combustion, but otherwise use it on cooldown.\nactions+=/radiant_spark,if=buff.combustion.down&(variable.time_to_combustion>cooldown-5)\n# Deathborne should always be used with Combustion. With Death's Fathom, it should be used early so that Deathborne will have more stacks during Combustion.\nactions+=/deathborne,if=buff.combustion.down&buff.rune_of_power.down&variable.time_to_combustion<variable.combustion_precast_time+execute_time+(buff.deathborne.duration-buff.combustion.duration)*runeforge.deaths_fathom\n# Use Mirrors of Torment with Combustion.\nactions+=/mirrors_of_torment,if=variable.time_to_combustion<variable.combustion_precast_time+execute_time&buff.combustion.down\n# Also use Mirrors of Torment in between Combustions as long as Combustion will not have to be delayed much for it.\nactions+=/mirrors_of_torment,if=variable.time_to_combustion>cooldown-30*runeforge.sinful_delight\n# For Venthyr, use a Fire Blast charge during Mirrors of Torment cast to avoid capping charges.\nactions+=/fire_blast,use_while_casting=1,if=action.mirrors_of_torment.executing&full_recharge_time-action.mirrors_of_torment.execute_remains<4&!hot_streak_spells_in_flight&!buff.hot_streak.react\nactions+=/use_item,effect_name=gladiators_badge,if=variable.time_to_combustion>cooldown-5\nactions+=/use_item,name=empyreal_ordnance,if=variable.time_to_combustion<=variable.empyreal_ordnance_delay&variable.time_to_combustion>variable.empyreal_ordnance_delay-5\nactions+=/use_item,name=shadowed_orb_of_torment,if=(variable.time_to_combustion<=variable.combustion_precast_time+2||fight_remains<variable.time_to_combustion)&buff.combustion.down&(!equipped.the_first_sigil||cooldown.the_first_sigil_367241.remains>40)\nactions+=/use_item,name=grim_eclipse,if=variable.time_to_combustion<=8||fight_remains<variable.time_to_combustion\nactions+=/use_item,name=moonlit_prism,if=variable.time_to_combustion<=5||fight_remains<variable.time_to_combustion\nactions+=/use_item,name=glyph_of_assimilation,if=!variable.item_cutoff_active\nactions+=/use_item,name=macabre_sheet_music,if=variable.time_to_combustion<=5\n# If using a steroid on-use item, always use Dreadfire Vessel outside of Combustion. Otherwise, prioritize using Dreadfire Vessel with Combustion only if Feel the Burn is enabled and a usage won't be lost over the duration of the fight. This adds a small value to the cooldown of Dreadfire Vessel when doing this calculation because it is unrealstic to assume that it will be used perfectly on cooldown. Note that with Sun King's Blessing, it is possible to sync this with SKB Combustions regardless of on-use trinkets.\nactions+=/use_item,name=dreadfire_vessel,if=!variable.item_cutoff_active&(buff.infernal_cascade.stack=buff.infernal_cascade.max_stack||!conduit.infernal_cascade||variable.combustion_on_use&!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||variable.time_to_combustion>interpolated_fight_remains%%(cooldown+10))\n# Soul Igniter should be used in a way that doesn't interfere with other on-use trinkets. Other trinkets do not trigger a shared ICD on it, so it can be used right after any other on-use trinket.\nactions+=/use_item,name=soul_igniter,if=(cooldown.hyperthread_wristwraps.remains||!variable.item_cutoff_active)&(!conduit.infernal_cascade||buff.infernal_cascade.up||buff.combustion.up)&(!equipped.dreadfire_vessel||cooldown.dreadfire_vessel_349857.remains>5)\n# Trigger Soul Igniter early with Infernal Cascade or when it was precast.\nactions+=/cancel_buff,name=soul_ignition,if=!conduit.infernal_cascade&time<5||buff.infernal_cascade.stack=buff.infernal_cascade.max_stack\n# Items that do not benefit Combustion should just be used outside of Combustion at some point.\nactions+=/use_item,name=inscrutable_quantum_device,if=equipped.gladiators_badge&(buff.combustion.down&variable.time_to_combustion>=variable.on_use_cutoff||variable.on_use_cutoff=0)\nactions+=/use_item,name=flame_of_battle,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=wakeners_frond,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=instructors_divine_bell,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=sunblood_amethyst,if=equipped.gladiators_badge&!variable.item_cutoff_active\nactions+=/use_item,name=scars_of_fraternal_strife,if=buff.scars_of_fraternal_strife_4.down\nactions+=/use_items,if=!variable.item_cutoff_active\n# Use Frost Nova to trigger Grisly Icicle.\nactions+=/frost_nova,if=runeforge.grisly_icicle&buff.combustion.down&(variable.time_to_combustion>cooldown||variable.time_to_combustion<variable.combustion_precast_time+execute_time)\n# Get the Disciplinary Command buff up, unless combustion is soon.\nactions+=/counterspell,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_arcane.down&!buff.disciplinary_command.up&(variable.time_to_combustion+action.frostbolt.cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\nactions+=/arcane_explosion,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_arcane.down&!buff.disciplinary_command.up&(variable.time_to_combustion+execute_time+action.frostbolt.cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5&!talent.rune_of_power)\nactions+=/frostbolt,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.remains<cast_time&buff.disciplinary_command_frost.down&!buff.disciplinary_command.up&(variable.time_to_combustion+cast_time>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\nactions+=/frost_nova,if=runeforge.disciplinary_command&cooldown.buff_disciplinary_command.ready&buff.disciplinary_command_frost.down&!buff.disciplinary_command.up&(variable.time_to_combustion>cooldown.buff_disciplinary_command.duration||variable.time_to_combustion<5)\n# Pool as many Fire Blasts as possible for Combustion. Subtract out of the fractional component of the number of Fire Blasts that will naturally recharge during the Combustion phase because pooling anything past that will not grant an extra Fire Blast during Combustion.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=variable.extended_combustion_remains<variable.time_to_combustion&action.fire_blast.charges_fractional+(variable.time_to_combustion+action.shifting_power.full_reduction*variable.shifting_power_before_combustion+(debuff.mirrors_of_torment.max_stack-1)*variable.mot_recharge_amount*covenant.venthyr*(cooldown.mirrors_of_torment.remains<=variable.time_to_combustion))%cooldown.fire_blast.duration-1<cooldown.fire_blast.max_charges+variable.overpool_fire_blasts%cooldown.fire_blast.duration-(buff.combustion.duration%cooldown.fire_blast.duration)%%1&variable.time_to_combustion<fight_remains\nactions+=/call_action_list,name=combustion_phase,if=variable.time_to_combustion<=0||buff.combustion.up||variable.time_to_combustion<variable.combustion_precast_time&cooldown.combustion.remains<variable.combustion_precast_time\nactions+=/rune_of_power,if=buff.combustion.down&buff.rune_of_power.down&!(buff.firestorm.react||buff.hyperthermia.react)&(variable.time_to_combustion>=buff.rune_of_power.duration&variable.time_to_combustion>action.fire_blast.full_recharge_time||variable.time_to_combustion>fight_remains)&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||active_enemies>=variable.hard_cast_flamestrike||buff.sun_kings_blessing_ready.up||buff.sun_kings_blessing.react>=buff.sun_kings_blessing.max_stack-1||fight_remains<buff.rune_of_power.duration||firestarter.active)\n# Adjust the variable that controls Fire Blast usage to save Fire Blasts while Searing Touch is active with Sun King's Blessing.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=searing_touch.active&action.fire_blast.full_recharge_time>3*gcd.max,if=!variable.fire_blast_pooling&(runeforge.sun_kings_blessing||talent.sun_kings_blessing)\nactions+=/call_action_list,name=rop_phase,if=buff.rune_of_power.up&buff.combustion.down&variable.time_to_combustion>0\n# Adjust the variable that controls Fire Blast usage to ensure its charges are also pooled for Rune of Power.\nactions+=/variable,use_off_gcd=1,use_while_casting=1,name=fire_blast_pooling,value=(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.sun_kings_blessing.stack>buff.sun_kings_blessing.max_stack-1)&cooldown.rune_of_power.remains<action.fire_blast.full_recharge_time-action.shifting_power.full_reduction*(variable.shifting_power_before_combustion&cooldown.shifting_power.remains<cooldown.rune_of_power.remains)&cooldown.rune_of_power.remains<fight_remains,if=!variable.fire_blast_pooling&talent.rune_of_power&buff.rune_of_power.down\n# When Hardcasting Flamestrike, Fire Blasts should be used to generate Hot Streaks and to extend Feel the Burn.\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&variable.time_to_combustion>0&active_enemies>=variable.hard_cast_flamestrike&!firestarter.active&!buff.hot_streak.react&(buff.heating_up.react&action.flamestrike.execute_remains<0.5||charges_fractional>=2)\n# During Firestarter, Fire Blasts are used similarly to during Combustion. Generally, they are used to generate Hot Streaks when crits will not be wasted and with Feel the Burn, they should be spread out to maintain the Feel the Burn buff.\nactions+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=firestarter.active&variable.time_to_combustion>0&!variable.fire_blast_pooling&(!action.fireball.executing&!action.pyroblast.in_flight&buff.heating_up.react||action.fireball.executing&!buff.hot_streak.react||action.pyroblast.in_flight&buff.heating_up.react&!buff.hot_streak.react)\n# Avoid capping Fire Blast charges while channeling Shifting Power\nactions+=/fire_blast,use_while_casting=1,if=action.shifting_power.executing&full_recharge_time<action.shifting_power.tick_reduction\nactions+=/call_action_list,name=standard_rotation,if=variable.time_to_combustion>0&buff.rune_of_power.down&buff.combustion.down\nactions+=/scorch\n\nactions.active_talents=living_bomb,if=active_enemies>1&buff.combustion.down&(variable.time_to_combustion>cooldown.living_bomb.duration||variable.time_to_combustion<=0)\nactions.active_talents+=/meteor,if=variable.time_to_combustion<=0||buff.combustion.remains>travel_time||(cooldown.meteor.duration<variable.time_to_combustion&!talent.rune_of_power)||talent.rune_of_power&buff.rune_of_power.up&variable.time_to_combustion>action.meteor.cooldown||fight_remains<variable.time_to_combustion\nactions.active_talents+=/dragons_breath,if=talent.alexstraszas_fury&(buff.combustion.down&!buff.hot_streak.react)\n\nactions.combustion_cooldowns=potion\nactions.combustion_cooldowns+=/blood_fury\nactions.combustion_cooldowns+=/berserking,if=buff.combustion.up\nactions.combustion_cooldowns+=/fireblood\nactions.combustion_cooldowns+=/ancestral_call\n## The addon does not invoke external buffs, because they player cannot actually choose to trigger them personally.\n## actions.combustion_cooldowns+=/invoke_external_buff,name=power_infusion,if=buff.power_infusion.down\n## actions.combustion_cooldowns+=/invoke_external_buff,name=blessing_of_summer,if=buff.blessing_of_summer.down\nactions.combustion_cooldowns+=/time_warp,if=(talent.temporal_warp||runeforge.temporal_warp)&buff.exhaustion.up\nactions.combustion_cooldowns+=/use_item,effect_name=gladiators_badge\nactions.combustion_cooldowns+=/use_item,name=irideus_fragment\nactions.combustion_cooldowns+=/use_item,name=spoils_of_neltharus\nactions.combustion_cooldowns+=/use_item,name=tome_of_unstable_power\nactions.combustion_cooldowns+=/use_item,name=timebreaching_talon\nactions.combustion_cooldowns+=/use_item,name=voidmenders_shadowgem\nactions.combustion_cooldowns+=/use_item,name=horn_of_valor\n\nactions.combustion_phase=lights_judgment,if=buff.combustion.down\nactions.combustion_phase+=/bag_of_tricks,if=buff.combustion.down\nactions.combustion_phase+=/living_bomb,if=active_enemies>1&buff.combustion.down\n# Other cooldowns that should be used with Combustion should only be used with an actual Combustion cast and not with a Sun King's Blessing proc.\nactions.combustion_phase+=/call_action_list,name=combustion_cooldowns,if=buff.combustion.remains>variable.skb_duration||fight_remains<20\nactions.combustion_phase+=/use_item,name=hyperthread_wristwraps,if=prev.1.fire_blast+prev.2.fire_blast+prev.3.fire_blast>=2&action.fire_blast.charges=0\nactions.combustion_phase+=/use_item,name=neural_synapse_enhancer,if=variable.time_to_combustion>60\nactions.combustion_phase+=/call_action_list,name=active_talents\n# If Sun King's Blessing stacks are high, cancel them before Combustion so that the Sun King's Blessing proc can be safely delayed until after Combustion without risk of expiration.\nactions.combustion_phase+=/cancel_buff,name=sun_kings_blessing,if=!set_bonus.tier28_4pc&buff.combustion.down&buff.sun_kings_blessing.stack>2&talent.rune_of_power&cooldown.rune_of_power.remains<20\n# If Combustion is down, precast something before activating it.\nactions.combustion_phase+=/flamestrike,if=buff.combustion.down&cooldown.combustion.remains<cast_time&active_enemies>=variable.combustion_flamestrike\nactions.combustion_phase+=/pyroblast,if=buff.combustion.down&buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.combustion_phase+=/pyroblast,if=buff.combustion.down&buff.pyroclasm.react&buff.pyroclasm.remains>cast_time\nactions.combustion_phase+=/fireball,if=buff.combustion.down&cooldown.combustion.remains<cast_time&!conduit.flame_accretion\nactions.combustion_phase+=/scorch,if=buff.combustion.down&cooldown.combustion.remains<cast_time\n# Combustion should be used when the precast is almost finished.\nactions.combustion_phase+=/combustion,use_off_gcd=1,use_while_casting=1,if=hot_streak_spells_in_flight=0&buff.combustion.down&variable.time_to_combustion<=0&(!runeforge.disciplinary_command||buff.disciplinary_command.up||buff.disciplinary_command_frost.up&talent.rune_of_power&cooldown.buff_disciplinary_command.ready)&(!runeforge.grisly_icicle||debuff.grisly_icicle.up)&(!covenant.necrolord||cooldown.deathborne.remains||buff.deathborne.up)&(!covenant.venthyr||cooldown.mirrors_of_torment.remains)&(action.scorch.executing&action.scorch.execute_remains<variable.combustion_cast_remains||action.fireball.executing&action.fireball.execute_remains<variable.combustion_cast_remains||action.pyroblast.executing&action.pyroblast.execute_remains<variable.combustion_cast_remains||action.flamestrike.executing&action.flamestrike.execute_remains<variable.combustion_cast_remains)\n# Rune of Power can be used in Combustion if it is down, but this should only be done if there is more Combustion time to benefit from than there would be from an SKB Combustion later.\nactions.combustion_phase+=/rune_of_power,if=buff.rune_of_power.down&variable.extended_combustion_remains>variable.skb_duration\n# Without Feel the Burn, just use Fire Blasts when they won't munch crits and when Firestorm is down.\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!talent.feel_the_burn&!conduit.infernal_cascade&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&buff.combustion.up&!(buff.firestorm.react||buff.hyperthermia.react)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=conduit.infernal_cascade&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&(!equipped.hyperthread_wristwraps||!cooldown.hyperthread_wristwraps_300142.ready||charges>1||debuff.mirrors_of_torment.up)&(variable.expected_fire_blasts>=variable.needed_fire_blasts||buff.combustion.remains<gcd.max||variable.extended_combustion_remains<=buff.infernal_cascade.duration||buff.infernal_cascade.stack<2||buff.infernal_cascade.remains<gcd.max||cooldown.shifting_power.ready&variable.use_shifting_power||equipped.hyperthread_wristwraps&cooldown.hyperthread_wristwraps_300142.ready)&buff.combustion.up&(!(buff.firestorm.react||buff.hyperthermia.react)||buff.infernal_cascade.remains<0.5)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\nactions.combustion_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=talent.feel_the_burn&!variable.fire_blast_pooling&(!set_bonus.tier28_4pc||debuff.mirrors_of_torment.down||buff.sun_kings_blessing_ready.down||action.pyroblast.executing)&(!equipped.hyperthread_wristwraps||!cooldown.hyperthread_wristwraps_300142.ready||charges>1||debuff.mirrors_of_torment.up)&(variable.expected_fire_blasts>=variable.needed_fire_blasts||buff.combustion.remains<gcd.max||variable.extended_combustion_remains<=buff.feel_the_burn.duration||buff.feel_the_burn.stack<2||buff.feel_the_burn.remains<gcd.max||cooldown.shifting_power.ready&variable.use_shifting_power||equipped.hyperthread_wristwraps&cooldown.hyperthread_wristwraps_300142.ready)&buff.combustion.up&(!(buff.firestorm.react||buff.hyperthermia.react)||buff.feel_the_burn.remains<0.5)&!buff.hot_streak.react&hot_streak_spells_in_flight+buff.heating_up.react*(gcd.remains>0)<2\n# Spend Hot Streaks during Combustion at high priority.\nactions.combustion_phase+=/flamestrike,if=(buff.hot_streak.react&active_enemies>=variable.combustion_flamestrike)||((buff.firestorm.react||buff.hyperthermia.react)&active_enemies>=variable.combustion_flamestrike-(runeforge.firestorm||talent.hyperthermia))\n# Radiant Spark should be used with a Hot Streak ready to use immediately after the cast finishes. This will naturally set up a Hot Streak spent for the final stack of Radiant Spark.\nactions.combustion_phase+=/radiant_spark,if=buff.combustion.up&2*buff.hot_streak.react+buff.heating_up.react+hot_streak_spells_in_flight=2\nactions.combustion_phase+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\n## With Sun King's Blessing, there is a brief delay before the Sun King's Blessing ready buff is removed after consuming it. It is beneficial to wait for this delay before spending Hot Streaks to not waste a stack.\n## actions.combustion_phase+=/wait,sec=0.01,if=buff.hot_streak.react&active_enemies<variable.combustion_flamestrike&(buff.sun_kings_blessing_ready.expiration_delay_remains||time-buff.sun_kings_blessing_ready.last_expire<variable.skb_delay-0.03)\nactions.combustion_phase+=/pyroblast,if=buff.hot_streak.react&buff.combustion.up\nactions.combustion_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&active_enemies<variable.combustion_flamestrike&buff.combustion.up\n# Using Shifting Power during Combustion to restore Fire Blast and Phoenix Flame charges can be beneficial, but usually only on AoE.\nactions.combustion_phase+=/shifting_power,if=variable.use_shifting_power&buff.combustion.up&!action.fire_blast.charges&(action.phoenix_flames.charges<action.phoenix_flames.max_charges||talent.alexstraszas_fury)\n# If a Sun King's Blessing proc would be used, Rune of Power should be used first if the existing Rune of Power will expire during the cast.\nactions.combustion_phase+=/rune_of_power,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>execute_time+action.flamestrike.cast_time&buff.rune_of_power.remains<action.flamestrike.cast_time&active_enemies>=variable.combustion_flamestrike\nactions.combustion_phase+=/flamestrike,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&active_enemies>=variable.combustion_flamestrike&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.combustion_phase+=/rune_of_power,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>execute_time+action.pyroblast.cast_time&buff.rune_of_power.remains<action.pyroblast.cast_time\nactions.combustion_phase+=/pyroblast,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\n# Pyroclasm procs should be used in Combustion at higher priority than Phoenix Flames and Scorch.\nactions.combustion_phase+=/pyroblast,if=buff.pyroclasm.react&buff.pyroclasm.remains>cast_time&buff.combustion.remains>cast_time&active_enemies<variable.combustion_flamestrike&(!talent.feel_the_burn||buff.feel_the_burn.remains>execute_time||buff.heating_up.react+hot_streak_spells_in_flight<2)\nactions.combustion_phase+=/fireball,if=buff.combustion.remains>cast_time&buff.flame_accelerant.react\n# Use Phoenix Flames and Scorch in Combustion to help generate Hot Streaks when Fire Blasts are not available or need to be conserved.\nactions.combustion_phase+=/phoenix_flames,if=!talent.alexstraszas_fury&buff.combustion.up&travel_time<buff.combustion.remains&buff.heating_up.react+hot_streak_spells_in_flight<2&(!talent.from_the_ashes||variable.extended_combustion_remains<10)\nactions.combustion_phase+=/scorch,if=buff.combustion.remains>cast_time&cast_time>=gcd.max\nactions.combustion_phase+=/fireball,if=buff.combustion.remains>cast_time\n# If there isn't enough time left in Combustion for a Phoenix Flames or Scorch to hit inside of Combustion, use something else.\nactions.combustion_phase+=/living_bomb,if=buff.combustion.remains<gcd.max&active_enemies>1\nactions.combustion_phase+=/ice_nova,if=buff.combustion.remains<gcd.max\n\nactions.rop_phase=flamestrike,if=active_enemies>=variable.hot_streak_flamestrike&(buff.hot_streak.react||(buff.firestorm.react||buff.hyperthermia.react))\nactions.rop_phase+=/fireball,if=buff.deathborne.up&runeforge.deaths_fathom&variable.time_to_combustion<buff.deathborne.remains&active_enemies>=2\nactions.rop_phase+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike&buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.rop_phase+=/pyroblast,if=buff.sun_kings_blessing_ready.up&buff.sun_kings_blessing_ready.remains>cast_time&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.rop_phase+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\nactions.rop_phase+=/pyroblast,if=buff.hot_streak.react\n# Use one Fire Blast early in RoP if you don't have either Heating Up or Hot Streak yet and either: (a) have more than two already, (b) have Alexstrasza's Fury ready to use, or (c) Searing Touch is active. Don't do this while hard casting Flamestrikes or when Sun King's Blessing is ready.\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&buff.sun_kings_blessing_ready.down&active_enemies<variable.hard_cast_flamestrike&!firestarter.active&(!buff.heating_up.react&!buff.hot_streak.react&!prev_off_gcd.fire_blast&(action.fire_blast.charges>=2||(talent.alexstraszas_fury&cooldown.dragons_breath.ready)||searing_touch.active))\n# Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.\nactions.rop_phase+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!variable.fire_blast_pooling&!firestarter.active&buff.sun_kings_blessing_ready.down&(((action.fireball.executing&(action.fireball.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia))||action.pyroblast.executing&(action.pyroblast.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia)))&buff.heating_up.react)||(searing_touch.active&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!hot_streak_spells_in_flight)))\nactions.rop_phase+=/call_action_list,name=active_talents\n# actions.rop_phase+=/scorch,if=searing_touch.active&talent.improved_scorch&debuff.improved_scorch.remains<3*gcd.max\nactions.rop_phase+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&cast_time<buff.rune_of_power.remains&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.pyroclasm.remains<action.fireball.cast_time+cast_time*buff.pyroclasm.react)\nactions.rop_phase+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&searing_touch.active&active_enemies<variable.hot_streak_flamestrike\nactions.rop_phase+=/phoenix_flames,if=!variable.phoenix_pooling&(!hot_streak_spells_in_flight&(buff.heating_up.react||charges>1))\nactions.rop_phase+=/scorch,if=searing_touch.active\nactions.rop_phase+=/dragons_breath,if=active_enemies>2\nactions.rop_phase+=/arcane_explosion,if=active_enemies>=variable.arcane_explosion&mana.pct>=variable.arcane_explosion_mana\n# With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.\nactions.rop_phase+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike\nactions.rop_phase+=/pyroblast,if=talent.tempered_flames&!buff.flame_accelerant.react\nactions.rop_phase+=/fireball\n\nactions.standard_rotation=flamestrike,if=active_enemies>=variable.hot_streak_flamestrike&(buff.hot_streak.react||(buff.firestorm.react||buff.hyperthermia.react))\nactions.standard_rotation+=/fireball,if=buff.deathborne.up&runeforge.deaths_fathom&variable.time_to_combustion<buff.deathborne.remains&active_enemies>=2\nactions.standard_rotation+=/pyroblast,if=(buff.firestorm.react||buff.hyperthermia.react)\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&buff.hot_streak.remains<action.fireball.execute_time\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&(prev_gcd.1.fireball||firestarter.active||action.pyroblast.in_flight)\n# Try to get SKB procs inside RoP phases or Combustion phases when possible.\nactions.standard_rotation+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike&buff.sun_kings_blessing_ready.up&(cooldown.rune_of_power.remains+action.rune_of_power.execute_time+cast_time>buff.sun_kings_blessing_ready.remains||!talent.rune_of_power)&variable.time_to_combustion+cast_time>buff.sun_kings_blessing_ready.remains&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.standard_rotation+=/pyroblast,if=buff.sun_kings_blessing_ready.up&(cooldown.rune_of_power.remains+action.rune_of_power.execute_time+cast_time>buff.sun_kings_blessing_ready.remains||!talent.rune_of_power)&variable.time_to_combustion+cast_time>buff.sun_kings_blessing_ready.remains&buff.sun_kings_blessing_ready.expiration_delay_remains=0\nactions.standard_rotation+=/pyroblast,if=buff.hot_streak.react&searing_touch.active\nactions.standard_rotation+=/pyroblast,if=buff.pyroclasm.react&cast_time<buff.pyroclasm.remains&(!(runeforge.sun_kings_blessing||talent.sun_kings_blessing)||buff.pyroclasm.remains<action.fireball.cast_time+cast_time*buff.pyroclasm.react)\n# During the standard rotation, only use Fire Blasts when they are not being pooled for RoP or Combustion. Use Fire Blast either during a Fireball/Pyroblast cast when Heating Up is active or during execute with Searing Touch.\nactions.standard_rotation+=/fire_blast,use_off_gcd=1,use_while_casting=1,if=!firestarter.active&!variable.fire_blast_pooling&buff.sun_kings_blessing_ready.down&(((action.fireball.executing&(action.fireball.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia))||action.pyroblast.executing&(action.pyroblast.execute_remains<0.5||!(runeforge.firestorm||talent.hyperthermia)))&buff.heating_up.react)||(searing_touch.active&(buff.heating_up.react&!action.scorch.executing||!buff.hot_streak.react&!buff.heating_up.react&action.scorch.executing&!hot_streak_spells_in_flight)))\nactions.standard_rotation+=/pyroblast,if=prev_gcd.1.scorch&buff.heating_up.react&searing_touch.active&active_enemies<variable.hot_streak_flamestrike\nactions.standard_rotation+=/phoenix_flames,if=!variable.phoenix_pooling&(!hot_streak_spells_in_flight&(buff.heating_up.react))\nactions.standard_rotation+=/call_action_list,name=active_talents\nactions.standard_rotation+=/dragons_breath,if=active_enemies>1\nactions.standard_rotation+=/scorch,if=searing_touch.active\nactions.standard_rotation+=/arcane_explosion,if=active_enemies>=variable.arcane_explosion&mana.pct>=variable.arcane_explosion_mana\n# With enough targets, it is a gain to cast Flamestrike as filler instead of Fireball.\nactions.standard_rotation+=/flamestrike,if=active_enemies>=variable.hard_cast_flamestrike\nactions.standard_rotation+=/pyroblast,if=talent.tempered_flames&!buff.flame_accelerant.react\nactions.standard_rotation+=/fireball",
					["spec"] = 63,
				},
				["Frost Mage"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230123,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["default"] = {
							{
								["action"] = "counterspell",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.flurry.charges_fractional < 1",
								["action"] = "water_jet",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies >= 7 || active_enemies >= 3 & talent.ice_caller.enabled",
								["list_name"] = "aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies < 7 & ( active_enemies < 3 || ! talent.ice_caller.enabled )",
								["list_name"] = "st",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "movement",
							}, -- [6]
						},
						["precombat"] = {
							{
								["action"] = "arcane_intellect",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "water_elemental",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2",
								["action"] = "blizzard",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1",
								["action"] = "frostbolt",
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack & debuff.frozen.up & ( prev_gcd.1.frost_nova || prev_gcd.1.ice_nova || prev_off_gcd.freeze )",
								["action"] = "cone_of_cold",
							}, -- [1]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "blizzard",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "comet_storm",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & ( ! talent.snowstorm.enabled & debuff.frozen.down || cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack )",
								["action"] = "freeze",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & ( prev_gcd.1.comet_storm || cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack & gcd.max < 1 )",
								["action"] = "ice_nova",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( target.level < level + 3 || target.is_add ) & active_enemies >= 5 & cooldown.cone_of_cold.ready & buff.snowstorm.stack = buff.snowstorm.max_stack & gcd.max < 1",
								["action"] = "frost_nova",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack",
								["action"] = "cone_of_cold",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & remaining_winters_chill = 0 & debuff.winters_chill.down & ( prev_gcd.1.frostbolt || ( active_enemies >= 7 || charges = max_charges ) & buff.fingers_of_frost.react = 0 )",
								["action"] = "flurry",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react || debuff.frozen.remains > travel_time || remaining_winters_chill",
								["action"] = "ice_lance",
							}, -- [10]
							{
								["action"] = "shifting_power",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "meteor",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 7",
								["action"] = "dragons_breath",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 30 & active_enemies >= 7",
								["action"] = "arcane_explosion",
							}, -- [15]
							{
								["action"] = "ebonbolt",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [17]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.exhaustion.up & buff.bloodlust.down",
								["action"] = "time_warp",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_off_gcd.icy_veins || boss & fight_remains < 60",
								["action"] = "potion",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & ( buff.icy_veins.down || talent.rune_of_power.enabled )",
								["action"] = "icy_veins",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down & cooldown.icy_veins.remains > 10",
								["action"] = "rune_of_power",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [10]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry",
								["action"] = "meteor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.flurry",
								["action"] = "comet_storm",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown_react & remaining_winters_chill = 0 & debuff.winters_chill.down & ( prev_gcd.1.frostbolt || prev_gcd.1.glacial_spike )",
								["action"] = "flurry",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "remaining_winters_chill = 1 & buff.freezing_winds.down",
								["action"] = "ray_of_frost",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "remaining_winters_chill",
								["action"] = "glacial_spike",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.snowstorm.stack = buff.snowstorm.max_stack & remaining_winters_chill",
								["action"] = "cone_of_cold",
							}, -- [6]
							{
								["action"] = "frozen_orb",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & talent.ice_caller.enabled & talent.freezing_rain.enabled",
								["action"] = "blizzard",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rune_of_power.down",
								["action"] = "shifting_power",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.fingers_of_frost.react & ! prev_gcd.1.glacial_spike || remaining_winters_chill",
								["action"] = "ice_lance",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4",
								["action"] = "ice_nova",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "action.flurry.cooldown_react",
								["action"] = "glacial_spike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.flurry.charges_fractional < 1",
								["action"] = "ebonbolt",
							}, -- [13]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "frostbolt",
								["enabled"] = true,
							}, -- [15]
						},
						["movement"] = {
							{
								["enabled"] = true,
								["criteria"] = "movement.distance > 10",
								["action"] = "blink",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ice_floes.down",
								["action"] = "ice_floes",
							}, -- [2]
							{
								["action"] = "ice_nova",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct > 30 & active_enemies >= 2",
								["action"] = "arcane_explosion",
							}, -- [4]
							{
								["action"] = "fire_blast",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "ice_lance",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["version"] = 20230123,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 4: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\nLine 5: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.snowstorm' to 'talent.snowstorm.enabled' (1x).\n\nThe import for 'cds' required some automated changes.\nLine 3: Converted 'talent.rune_of_power' to 'talent.rune_of_power.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 8: Converted 'talent.ice_caller' to 'talent.ice_caller.enabled' (1x).\nLine 8: Converted 'talent.freezing_rain' to 'talent.freezing_rain.enabled' (1x).\n\nImported 6 action lists.\n",
					["profile"] = "actions.precombat+=/arcane_intellect\nactions.precombat+=/summon_water_elemental\nactions.precombat+=/blizzard,if=active_enemies>=2\nactions.precombat+=/frostbolt,if=active_enemies=1\n\nactions+=/counterspell\nactions+=/water_jet,if=cooldown.flurry.charges_fractional<1\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=7||active_enemies>=3&talent.ice_caller\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<7&(active_enemies<3||!talent.ice_caller)\nactions+=/call_action_list,name=movement\n\nactions.aoe+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack&debuff.frozen.up&(prev_gcd.1.frost_nova||prev_gcd.1.ice_nova||prev_off_gcd.freeze)\nactions.aoe+=/frozen_orb\nactions.aoe+=/blizzard\nactions.aoe+=/comet_storm\nactions.aoe+=/freeze,if=(target.level<level+3||target.is_add)&(!talent.snowstorm&debuff.frozen.down||cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack)\nactions.aoe+=/ice_nova,if=(target.level<level+3||target.is_add)&(prev_gcd.1.comet_storm||cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack&gcd.max<1)\nactions.aoe+=/frost_nova,if=(target.level<level+3||target.is_add)&active_enemies>=5&cooldown.cone_of_cold.ready&buff.snowstorm.stack=buff.snowstorm.max_stack&gcd.max<1\nactions.aoe+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack\nactions.aoe+=/flurry,if=cooldown_react&remaining_winters_chill=0&debuff.winters_chill.down&(prev_gcd.1.frostbolt||(active_enemies>=7||charges=max_charges)&buff.fingers_of_frost.react=0)\nactions.aoe+=/ice_lance,if=buff.fingers_of_frost.react||debuff.frozen.remains>travel_time||remaining_winters_chill\nactions.aoe+=/shifting_power\nactions.aoe+=/ice_nova\nactions.aoe+=/meteor\nactions.aoe+=/dragons_breath,if=active_enemies>=7\nactions.aoe+=/arcane_explosion,if=mana.pct>30&active_enemies>=7\nactions.aoe+=/ebonbolt\nactions.aoe+=/frostbolt\n\nactions.cds+=/time_warp,if=buff.exhaustion.up&buff.bloodlust.down\nactions.cds+=/potion,if=prev_off_gcd.icy_veins||boss&fight_remains<60\nactions.cds+=/icy_veins,if=buff.rune_of_power.down&(buff.icy_veins.down||talent.rune_of_power)\nactions.cds+=/rune_of_power,if=buff.rune_of_power.down&cooldown.icy_veins.remains>10\nactions.cds+=/use_items\n## External buffs are not invoked by the addon, as the player can't choose to trigger them personally.\n## actions.cds+=/invoke_external_buff,name=power_infusion,if=buff.power_infusion.down\n## actions.cds+=/invoke_external_buff,name=blessing_of_summer,if=buff.blessing_of_summer.down\nactions.cds+=/blood_fury\nactions.cds+=/berserking\nactions.cds+=/lights_judgment\nactions.cds+=/fireblood\nactions.cds+=/ancestral_call\n\nactions.movement+=/blink_any,if=movement.distance>10\nactions.movement+=/ice_floes,if=buff.ice_floes.down\nactions.movement+=/ice_nova\nactions.movement+=/arcane_explosion,if=mana.pct>30&active_enemies>=2\nactions.movement+=/fire_blast\nactions.movement+=/ice_lance\n\nactions.st+=/meteor,if=prev_gcd.1.flurry\nactions.st+=/comet_storm,if=prev_gcd.1.flurry\nactions.st+=/flurry,if=cooldown_react&remaining_winters_chill=0&debuff.winters_chill.down&(prev_gcd.1.frostbolt||prev_gcd.1.glacial_spike)\nactions.st+=/ray_of_frost,if=remaining_winters_chill=1&buff.freezing_winds.down\nactions.st+=/glacial_spike,if=remaining_winters_chill\nactions.st+=/cone_of_cold,if=buff.snowstorm.stack=buff.snowstorm.max_stack&remaining_winters_chill\nactions.st+=/frozen_orb\nactions.st+=/blizzard,if=active_enemies>=2&talent.ice_caller&talent.freezing_rain\nactions.st+=/shifting_power,if=buff.rune_of_power.down\nactions.st+=/ice_lance,if=buff.fingers_of_frost.react&!prev_gcd.1.glacial_spike||remaining_winters_chill\nactions.st+=/ice_nova,if=active_enemies>=4\nactions.st+=/glacial_spike,if=action.flurry.cooldown_react\nactions.st+=/ebonbolt,if=cooldown.flurry.charges_fractional<1\nactions.st+=/bag_of_tricks\nactions.st+=/frostbolt",
					["spec"] = 64,
				},
			},
		},
	},
}
