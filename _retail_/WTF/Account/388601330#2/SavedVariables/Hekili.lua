
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Pehtal - Emerald Dream"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["specs"] = {
				[103] = {
					["settings"] = {
						["rip_duration"] = 9,
					},
				},
				[104] = {
					["settings"] = {
						["catweave_bear"] = false,
						["ironfur_damage_threshold"] = 5,
						["mangle_more"] = false,
						["owlweave_bear"] = false,
						["maul_rage"] = 20,
					},
				},
				[102] = {
					["settings"] = {
						["starlord_cancel"] = false,
						["delay_berserking"] = false,
					},
				},
			},
			["runOnce"] = {
				["forceReloadClassDefaultOptions_20220306_103"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_104"] = true,
				["forceReloadClassDefaultOptions_20220306_102"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
			},
			["packs"] = {
				["Feral"] = {
					["builtIn"] = true,
					["date"] = 20230101,
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
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "tigers_fury",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.bloodtalons.enabled & buff.bloodtalons.down",
								["var_name"] = "need_bt",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! dot.adaptive_swarm_damage.ticking || dot.adaptive_swarm_damage.remains < 2 ) & ( dot.adaptive_swarm_damage.stack < 3 || ! dot.adaptive_swarm_heal.stack > 1 ) & ! action.adaptive_swarm_heal.in_flight & ! action.adaptive_swarm_damage.in_flight & ! action.adaptive_swarm.in_flight ) & target.time_to_die > 5 || active_enemies > 2 & ! dot.adaptive_swarm_damage.ticking & energy < 35 & target.time_to_die > 5",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 2 || combo_points = 2 & buff.bs_inc.up",
								["action"] = "feral_frenzy",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.swipe_cat > 1 & talent.primal_wrath.enabled",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.apex_predators_craving.up",
								["action"] = "ferocious_bite",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points = 5",
								["list_name"] = "finisher",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "variable.need_bt & ! buff.bs_inc.up",
								["list_name"] = "bloodtalons",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points < 5 & buff.bs_inc.up",
								["list_name"] = "berserk_builders",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "combo_points < 5",
								["list_name"] = "builder",
							}, -- [17]
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
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.down",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20230101,
					["warnings"] = "Imported 10 action lists.\n",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=buff.prowl.down\nactions.precombat+=/prowl\nactions.precombat+=/cat_form\n\nactions+=/prowl\nactions+=/skull_bash\nactions+=/soothe\nactions+=/prowl\nactions+=/tigers_fury\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/variable,name=need_bt,value=talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/call_action_list,name=cooldown\nactions+=/adaptive_swarm,cycle_targets=1,if=((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5\nactions+=/feral_frenzy,if=combo_points<2||combo_points=2&buff.bs_inc.up\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.swipe_cat>1&talent.primal_wrath.enabled\nactions+=/ferocious_bite,if=buff.apex_predators_craving.up\nactions+=/call_action_list,name=finisher,strict=1,if=combo_points=5\nactions+=/call_action_list,name=bloodtalons,if=variable.need_bt&!buff.bs_inc.up\nactions+=/call_action_list,name=berserk_builders,strict=1,if=combo_points<5&buff.bs_inc.up\nactions+=/call_action_list,name=builder,strict=1,if=combo_points<5\n\n# AoE\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/primal_wrath,if=combo_points=5\nactions.aoe+=/ferocious_bite,if=buff.apex_predators_craving.up&buff.sabertooth.down\nactions.aoe+=/run_action_list,name=bloodtalons,if=variable.need_bt&active_bt_triggers>=1\n## actions.aoe+=/pool_resource,for_next=1\nactions.aoe+=/thrash_cat,cycle_targets=1,if=refreshable\n# At this target count BRS also crushes everything except full thrashes\nactions.aoe+=/brutal_slash\n## actions.aoe+=/pool_resource,for_next=1\n## TODO: actions.aoe+=/rake,cycle_targets=1,if=((dot.rake.ticks_gained_on_refresh.pmult*(1+talent.doubleclawed_rake.enabled))>(spell_targets.swipe_cat*0.216+3.32))\n# This means that a full rake (5.5+ ticks) is stronger up to 10ish targets\nactions.aoe+=/rake,cycle_targets=1,if=refreshable||active_dot.rake<cycle_enemies\n## TODO: actions.aoe+=/lunar_inspiration,cycle_targets=1,if=max((ticks_gained_on_refresh+1)-(spell_targets.swipe_cat*2.492))\n# Full Lis beat Swipe up til around 3-ish targets depending on haste\nactions.aoe+=/lunar_inspiration,cycle_targets=1,if=refreshable&cycle_enemies-active_dot.lunar_inspiration>2\nactions.aoe+=/swipe_cat\n# If we have BrS and nothing better to cast, check if Thrash DD beats Shred\nactions.aoe+=/shred,if=action.shred.damage>action.thrash_cat.damage\nactions.aoe+=/thrash_cat\n\nactions.bloodtalons+=/rake,cycle_targets=1,if=(refreshable||1.4*persistent_multiplier>dot.rake.pmultiplier)&buff.bt_rake.down\nactions.bloodtalons+=/lunar_inspiration,if=refreshable&buff.bt_moonfire.down\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down\nactions.bloodtalons+=/swipe_cat,if=spell_targets.swipe_cat>1&buff.bt_swipe.down\nactions.bloodtalons+=/shred,if=buff.bt_shred.down\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\nactions.bloodtalons+=/rake,if=buff.bt_rake.down&combo_points>4\n\nactions.berserk_builders+=/rake,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.berserk_builders+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk_builders+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/shred\n\nactions.builder+=/run_action_list,name=clearcasting,if=buff.clearcasting.react\nactions.builder+=/rake,cycle_targets=1,if=refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&dot.rake.duration>6)\nactions.builder+=/moonfire_cat,cycle_targets=1,if=refreshable\n## actions.builder+=/pool_resource,for_next=1\nactions.builder+=/thrash_cat,cycle_targets=1,if=refreshable\nactions.builder+=/brutal_slash\nactions.builder+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.builder+=/shred\n\nactions.clearcasting+=/thrash_cat,if=refreshable\nactions.clearcasting+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.clearcasting+=/brutal_slash,if=spell_targets.brutal_slash>5&talent.moment_of_clarity.enabled\nactions.clearcasting+=/shred\n\nactions.cooldown+=/berserk\nactions.cooldown+=/incarnation\nactions.cooldown+=/convoke_the_spirits,if=buff.tigers_fury.up&combo_points<3||boss&fight_remains<5\nactions.cooldown+=/berserking\nactions.cooldown+=/shadowmeld,if=buff.tigers_fury.up&buff.bs_inc.down&combo_points<4&buff.sudden_ambush.down&dot.rake.pmultiplier<1.6&energy>40&druid.rake.ticks_gained_on_refresh>spell_targets.swipe_cat*2-2&target.time_to_die>5\nactions.cooldown+=/potion,if=buff.bs_inc.up||boss&fight_remains<cooldown.bs_inc.remains||boss&fight_remains<35\nactions.cooldown+=/use_item,name=manic_grieftorch,if=energy.deficit>40\nactions.cooldown+=/use_items\n\nactions.finisher+=/primal_wrath,if=spell_targets.primal_wrath>2\nactions.finisher+=/primal_wrath,cycle_targets=1,if=refreshable&spell_targets.primal_wrath>1\nactions.finisher+=/rip,cycle_targets=1,if=refreshable&target.time_to_die>=settings.rip_duration\n## actions.finisher+=/pool_resource,for_next=1\nactions.finisher+=/ferocious_bite,max_energy=1,if=(dot.rip.ticking||target.time_to_die<settings.rip_duration)&(!buff.bs_inc.up||(buff.bs_inc.up&!talent.soul_of_the_forest.enabled))\nactions.finisher+=/ferocious_bite,if=(dot.rip.ticking||target.time_to_die<settings.rip_duration)&buff.bs_inc.up&talent.soul_of_the_forest.enabled\n\nactions.owlweaving+=/sunfire,line_cd=4*gcd",
					["spec"] = 103,
				},
				["Balance"] = {
					["source"] = "https://balance-simc.github.io/Balance-SimC/md.html?file=balance.txt",
					["builtIn"] = true,
					["date"] = 20230111,
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
								["criteria"] = "time < 1 & ( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfall > 1",
								["var_name"] = "is_aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire > 1",
								["var_name"] = "is_cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "6 / spell_haste + talent.natures_balance.enabled + talent.orbit_breaker.enabled * dot.moonfire.ticking * ( buff.orbit_breaker.stack > 25 ) * 40",
								["var_name"] = "passive_asp",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 25",
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
								["value"] = "! talent.celestial_alignment.enabled & ! talent.incarnation_chosen_of_elune.enabled",
								["var_name"] = "no_cd_talent",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.aetherial_kindling.rank = 2 & ! talent.power_of_goldrinn.enabled",
								["var_name"] = "fourpc_starfall_st",
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
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 6 - ( spell_targets / 2 ) & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.ca_inc.remains < 5 & ! buff.ca_inc.up & ( target.time_to_die > 10 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled )",
								["var_name"] = "cd_condition_aoe",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe & set_bonus.tier29_4pc & eclipse.any_next",
								["action"] = "wrath",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe & ( talent.orbital_strike.enabled & astral_power.deficit < variable.passive_asp + 8 * spell_targets || buff.touch_the_cosmos.up ) || astral_power.deficit < ( variable.passive_asp + 8 + 12 * ( buff.eclipse_lunar.remains < 4 || buff.eclipse_solar.remains < 4 ) )",
								["action"] = "starfall",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "celestial_alignment",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "incarnation",
							}, -- [7]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.any_next || buff.eclipse_lunar.up & buff.eclipse_lunar.remains < action.wrath.execute_time",
								["action"] = "wrath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( ! talent.fungal_growth.enabled || ! talent.waning_twilight.enabled || dot.fungal_growth.remains < 2 & target.time_to_die > 7 )",
								["action"] = "wild_mushroom",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 8",
								["action"] = "fury_of_elune",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( buff.gathering_starstuff.stack = 3 || buff.umbral_embrace.up ) & astral_power.deficit > variable.passive_asp + ( 8 * ( 1 + 0.4 * buff.warrior_of_elune.up ) )",
								["action"] = "starfire",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 55",
								["action"] = "astral_communion",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 & astral_power.deficit > variable.passive_asp + 8",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 4 & ( buff.ca_inc.remains < 12 & buff.ca_inc.up || buff.starweavers_warp.up || talent.starlord.enabled & buff.starlord.stack < 3 )",
								["action"] = "starfall",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "astral_power < 50 & spell_targets.starfall < 3 + talent.elunes_guidance.enabled & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["action"] = "convoke_the_spirits",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up",
								["action"] = "starsurge",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_solar.remains > execute_time & spell_targets.starfire < 4",
								["action"] = "wrath",
							}, -- [22]
							{
								["action"] = "starfire",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [24]
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
								["value"] = "cooldown.ca_inc.remains < 15 & ! buff.ca_inc.up & ( target.time_to_die > 15 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled )",
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
								["value"] = "eclipse.any_next || buff.eclipse_lunar.up & buff.eclipse_lunar.remains < action.wrath.execute_time",
								["var_name"] = "enter_lunar",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_lunar",
								["action"] = "wrath",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.ca_inc.remains > 4 || ( cooldown.ca_inc.remains > 30 || variable.no_cd_talent ) & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["var_name"] = "convoke_condition",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "action.convoke_the_spirits.known & cooldown.convoke_the_spirits.ready & variable.convoke_condition",
								["action"] = "starsurge",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "variable.convoke_condition",
								["action"] = "convoke_the_spirits",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 55",
								["action"] = "astral_communion",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 8",
								["action"] = "fury_of_elune",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_warp.up & ! buff.touch_the_cosmos.up",
								["action"] = "starfall",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.starlord.enabled & buff.starlord.stack < 3 || talent.rattle_the_stars.enabled & buff.rattled_stars.up & buff.rattled_stars.remains < gcd.max",
								["action"] = "starsurge",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up || astral_power.deficit < variable.passive_asp + ( 8 * ( 1 + 0.5 * talent.soul_of_the_forest.enabled * buff.eclipse_solar.up ) ) || talent.astral_communion.enabled & cooldown.astral_communion.remains < 3 || boss & fight_remains < 5",
								["action"] = "starsurge",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 5 & ( ! talent.fungal_growth.enabled || talent.stellar_flare.enabled || dot.fungal_growth.remains < 2 ) & raid_event.adds.in > 30 - 15 * charges || boss & fight_remains < 10",
								["action"] = "wild_mushroom",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "eclipse.in_lunar & buff.umbral_embrace.react || buff.eclipse_lunar.up & buff.warrior_of_elune.up",
								["action"] = "starfire",
							}, -- [29]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [30]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [31]
						},
					},
					["version"] = 20230111,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 6: Converted 'talent.natures_balance' to 'talent.natures_balance.enabled' (1x).\nLine 6: Converted 'talent.orbit_breaker' to 'talent.orbit_breaker.enabled' (1x).\nLine 6: Converted operations in '6%spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>25)*40' to '6/spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>25)*40'.\nLine 9: Converted 'trinket.2.ready_cooldown' to 'trinket.t2.ready_cooldown' (1x).\nLine 10: Converted 'trinket.1.ready_cooldown' to 'trinket.t1.ready_cooldown' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.celestial_alignment' to 'talent.celestial_alignment.enabled' (1x).\nLine 3: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 4: Converted 'talent.power_of_goldrinn' to 'talent.power_of_goldrinn.enabled' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 6: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\n\nThe import for 'aoe' required some automated changes.\nLine 1: Converted operations in 'refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+3' to 'refreshable&(target.time_to_die-remains)>6-(spell_targets/2)&astral_power.deficit>variable.passive_asp+3'.\nLine 3: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 5: Converted 'talent.orbital_strike' to 'talent.orbital_strike.enabled' (1x).\nLine 10: Converted 'talent.fungal_growth' to 'talent.fungal_growth.enabled' (1x).\nLine 10: Converted 'talent.waning_twilight' to 'talent.waning_twilight.enabled' (1x).\nLine 16: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 17: Converted 'talent.elunes_guidance' to 'talent.elunes_guidance.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 3: Converted operations in 'dot.moonfire.remains>remains*22%18' to 'dot.moonfire.remains>remains*22/18'.\n\nThe import for 'st' required some automated changes.\nLine 4: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 20: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 20: Converted 'talent.rattle_the_stars' to 'talent.rattle_the_stars.enabled' (1x).\nLine 27: Converted 'talent.soul_of_the_forest' to 'talent.soul_of_the_forest.enabled' (1x).\nLine 27: Converted 'talent.astral_communion' to 'talent.astral_communion.enabled' (1x).\nLine 28: Converted 'talent.fungal_growth' to 'talent.fungal_growth.enabled' (1x).\nLine 28: Converted 'talent.stellar_flare' to 'talent.stellar_flare.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/moonkin_form\nactions.precombat+=/mark_of_the_wild\nactions.precombat+=/variable,name=no_cd_talent,value=!talent.celestial_alignment&!talent.incarnation_chosen_of_elune\nactions.precombat+=/variable,name=fourpc_starfall_st,value=talent.aetherial_kindling.rank=2&!talent.power_of_goldrinn\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=trinket.1.has_use_buff&trinket.1.cooldown.duration\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=(trinket.2.has_use_buff&trinket.2.cooldown.duration)*2\nactions.precombat+=/wrath,if=(eclipse.any_next||eclipse.lunar_next)\n\n# Executed every time the actor is available.\nactions+=/solar_beam\nactions+=/soothe\nactions+=/wrath,if=time<1&(eclipse.any_next||eclipse.lunar_next)\nactions=variable,name=is_aoe,value=spell_targets.starfall>1\nactions+=/variable,name=is_cleave,value=spell_targets.starfire>1\nactions+=/variable,name=passive_asp,value=6%spell_haste+talent.natures_balance+talent.orbit_breaker*dot.moonfire.ticking*(buff.orbit_breaker.stack>25)*40\nactions+=/berserking,if=buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<15\nactions+=/potion,if=buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<25\nactions+=/use_items,slots=trinket1,if=variable.on_use_trinket!=1&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items,slots=trinket2,if=variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items\nactions+=/run_action_list,name=aoe,if=variable.is_aoe\nactions+=/run_action_list,name=st\n\nactions.aoe+=/sunfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/moonfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/variable,name=cd_condition_aoe,value=cooldown.ca_inc.remains<5&!buff.ca_inc.up&(target.time_to_die>10||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune)\nactions.aoe+=/wrath,if=variable.cd_condition_aoe&set_bonus.tier29_4pc&eclipse.any_next\nactions.aoe+=/starfall,if=variable.cd_condition_aoe&(talent.orbital_strike&astral_power.deficit<variable.passive_asp+8*spell_targets||buff.touch_the_cosmos.up)||astral_power.deficit<(variable.passive_asp+8+12*(buff.eclipse_lunar.remains<4||buff.eclipse_solar.remains<4))\nactions.aoe+=/celestial_alignment,if=variable.cd_condition_aoe\nactions.aoe+=/incarnation,if=variable.cd_condition_aoe\nactions.aoe+=/warrior_of_elune\nactions.aoe+=/wrath,if=eclipse.any_next||buff.eclipse_lunar.up&buff.eclipse_lunar.remains<action.wrath.execute_time\nactions.aoe+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+20&(!talent.fungal_growth||!talent.waning_twilight||dot.fungal_growth.remains<2&target.time_to_die>7)\nactions.aoe+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8\nactions.aoe+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/starfire,if=(buff.gathering_starstuff.stack=3||buff.umbral_embrace.up)&astral_power.deficit>variable.passive_asp+(8*(1+0.4*buff.warrior_of_elune.up))\nactions.aoe+=/astral_communion,if=astral_power.deficit>variable.passive_asp+55\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8&astral_power.deficit>variable.passive_asp+8\nactions.aoe+=/starfall,if=target.time_to_die>4&(buff.ca_inc.remains<12&buff.ca_inc.up||buff.starweavers_warp.up||talent.starlord&buff.starlord.stack<3)\nactions.aoe+=/convoke_the_spirits,if=astral_power<50&spell_targets.starfall<3+talent.elunes_guidance&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.aoe+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.aoe+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up\nactions.aoe+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.aoe+=/wrath,if=buff.eclipse_solar.remains>execute_time&spell_targets.starfire<4\nactions.aoe+=/starfire\nactions.aoe+=/run_action_list,name=fallthru\n\nactions.fallthru=starfall,if=variable.is_aoe\nactions.fallthru+=/starsurge\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8&remains<2&(target.time_to_die-remains)>8\nactions.st+=/variable,name=cd_condition_st,value=cooldown.ca_inc.remains<15&!buff.ca_inc.up&(target.time_to_die>15||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune)\nactions.st+=/wrath,if=variable.cd_condition_st&set_bonus.tier29_4pc&eclipse.any_next||fight_remains>10&(target.time_to_die<=2&astral_power.deficit>20||target.time_to_die<=5&buff.primordial_arcanic_pulsar.value>=550)\nactions.st+=/starsurge,if=variable.cd_condition_st&buff.touch_the_cosmos.up||buff.primordial_arcanic_pulsar.value>=560&buff.starweavers_weft.up\nactions.st+=/starfall,if=buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up\nactions.st+=/celestial_alignment,if=variable.cd_condition_st\nactions.st+=/incarnation,if=variable.cd_condition_st\nactions.st+=/warrior_of_elune\nactions.st+=/variable,name=enter_lunar,value=eclipse.any_next||buff.eclipse_lunar.up&buff.eclipse_lunar.remains<action.wrath.execute_time\nactions.st+=/wrath,if=variable.enter_lunar\nactions.st+=/variable,name=convoke_condition,value=buff.ca_inc.remains>4||(cooldown.ca_inc.remains>30||variable.no_cd_talent)&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.st+=/starsurge,if=action.convoke_the_spirits.known&cooldown.convoke_the_spirits.ready&variable.convoke_condition\nactions.st+=/convoke_the_spirits,if=variable.convoke_condition\nactions.st+=/astral_communion,if=astral_power.deficit>variable.passive_asp+55\nactions.st+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.st+=/fury_of_elune,if=astral_power.deficit>variable.passive_asp+8\nactions.st+=/starfall,if=buff.starweavers_warp.up&!buff.touch_the_cosmos.up\nactions.st+=/starsurge,if=talent.starlord&buff.starlord.stack<3||talent.rattle_the_stars&buff.rattled_stars.up&buff.rattled_stars.remains<gcd.max\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8\nactions.st+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.st+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/starsurge,if=buff.starweavers_weft.up||astral_power.deficit<variable.passive_asp+(8*(1+0.5*talent.soul_of_the_forest*buff.eclipse_solar.up))||talent.astral_communion&cooldown.astral_communion.remains<3||boss&fight_remains<5\nactions.st+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+5&(!talent.fungal_growth||talent.stellar_flare||dot.fungal_growth.remains<2)&raid_event.adds.in>30-15*charges||boss&fight_remains<10\nactions.st+=/starfire,if=eclipse.in_lunar&buff.umbral_embrace.react||buff.eclipse_lunar.up&buff.warrior_of_elune.up\nactions.st+=/wrath\nactions.st+=/run_action_list,name=fallthru",
					["spec"] = 102,
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20221202,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["catweave"] = {
							{
								["enabled"] = true,
								["action"] = "heart_of_the_wild",
								["description"] = "if you read this know that Kitch is a dummy",
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
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
								["action"] = "skull_bash",
								["description"] = "Executed every time the actor is available.",
								["criteria"] = "! buff.prowl.up",
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
								["criteria"] = "! tanking & druid.catweave_bear & buff.tooth_and_claw.remains < 1.5 & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down ) & ( cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= gcd.max + 0.5 ) || ( buff.cat_form.up & energy > 25 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 ) || ( buff.heart_of_the_wild.up & energy > 90 & druid.catweave_bear = 1 & buff.tooth_and_claw.remains < 1.5 )",
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
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! ticking & time_to_die > 12 ) || ( refreshable & time_to_die > 12 ) ) & active_enemies < 8",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "barkskin",
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
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & cooldown.incarnation_guardian_of_ursoc.remains > 60 || buff.incarnation_guardian_of_ursoc.up",
								["action"] = "rage_of_the_sleeper",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up )",
								["action"] = "berserking",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & active_enemies <= 6",
								["action"] = "maul",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.tooth_and_claw_debuff.up & ! buff.ironfur.up & tanking || rage > 90",
								["action"] = "ironfur",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & buff.galactic_guardian.remains <= gcd.max + 0.5",
								["action"] = "moonfire",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.gore.up & active_enemies < 11 || buff.vicious_cycle_mangle.stack = 3",
								["action"] = "mangle",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.incarnation.up || buff.berserk_bear.up ) & active_enemies <= 5 & ( buff.tooth_and_claw.stack >= 2 ) )",
								["action"] = "maul",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || dot.thrash_bear.stack < 3 || active_enemies >= 5",
								["action"] = "thrash_bear",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 10 & settings.mangle_more",
								["action"] = "mangle",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & active_enemies >= 11",
								["action"] = "swipe_bear",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.tooth_and_claw.up & buff.tooth_and_claw.remains < 1.5 ) & active_enemies <= 5 )",
								["action"] = "maul",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 5 & buff.vicious_cycle_maul.stack >= 3 || active_enemies < 4 & ! talent.vicious_cycle_maul.enabled",
								["action"] = "maul",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.up & active_enemies <= 4 ) || ( buff.incarnation.up & talent.soul_of_the_forest.enabled & active_enemies <= 5 ) || ( ( rage < 90 ) & active_enemies < 11 ) || ( ( rage < 85 ) & active_enemies < 11 & talent.soul_of_the_forest.enabled )",
								["action"] = "mangle",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thrash_bear",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack > 2",
								["action"] = "pulverize",
							}, -- [21]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [23]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < 3 * haste",
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
								["criteria"] = "! buff.prowl.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ( soulbind.pustule_eruption.enabled || soulbind.volatile_solvent.enabled )",
								["interrupt_if"] = "soulbind.volatile_solvent",
								["interrupt_immediate"] = "1",
								["action"] = "fleshcraft",
								["interrupt_global"] = "1",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( druid.catweave_bear & buff.cat_form.up || druid.owlweave_bear & buff.moonkin_form.up || buff.moonkin_form.up & talent.balance_affinity.enabled )",
								["action"] = "heart_of_the_wild",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & druid.catweave_bear",
								["action"] = "prowl",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.any_form.up & ! druid.owlweave_bear & ! druid.catweave_bear & ! action.convoke_the_spirits.known",
								["action"] = "bear_form",
							}, -- [5]
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
					["version"] = 20221202,
					["warnings"] = "Imported 7 action lists.\n",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!buff.prowl.up\nactions.precombat+=/fleshcraft,if=!buff.prowl.up&(soulbind.pustule_eruption.enabled||soulbind.volatile_solvent.enabled),interrupt_immediate=1,interrupt_global=1,interrupt_if=soulbind.volatile_solvent\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up)\nactions.precombat+=/prowl,if=buff.cat_form.up&druid.catweave_bear\nactions.precombat+=/bear_form,if=!buff.any_form.up||!druid.owlweave_bear&!druid.catweave_bear&!action.convoke_the_spirits.known\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up\nactions+=/soothe\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/potion,if=((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\nactions+=/run_action_list,name=catweave,if=!tanking&druid.catweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down)&(cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=gcd+0.5)||(buff.cat_form.up&energy>25&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)||(buff.heart_of_the_wild.up&energy>90&druid.catweave_bear=1&buff.tooth_and_claw.remains<1.5)\nactions+=/run_action_list,name=owlweave,if=!tanking&druid.owlweave_bear&buff.tooth_and_claw.remains<1.5&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&cooldown.starsurge.up)\nactions+=/bear_form,if=!buff.bear_form.up\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled\nactions.bear+=/moonfire,cycle_targets=1,if=((!ticking&time_to_die>12)||(refreshable&time_to_die>12))&active_enemies<8\nactions.bear+=/barkskin,if=buff.bear_form.up\nactions.bear+=/convoke_the_spirits\nactions.bear+=/berserk_bear\nactions.bear+=/incarnation\nactions.bear+=/rage_of_the_sleeper,if=buff.incarnation_guardian_of_ursoc.down&cooldown.incarnation_guardian_of_ursoc.remains>60||buff.incarnation_guardian_of_ursoc.up\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/maul,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&active_enemies<=6\nactions.bear+=/ironfur,cycle_targets=1,if=!debuff.tooth_and_claw_debuff.up&!buff.ironfur.up&tanking||rage>90\nactions.bear+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+0.5\nactions.bear+=/mangle,if=buff.gore.up&active_enemies<11||buff.vicious_cycle_mangle.stack=3\nactions.bear+=/maul,if=((buff.incarnation.up||buff.berserk_bear.up)&active_enemies<=5&(buff.tooth_and_claw.stack>=2))\nactions.bear+=/thrash_bear,cycle_targets=1,if=refreshable||dot.thrash_bear.stack<3||active_enemies>=5\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=11\nactions.bear+=/maul,if=((buff.tooth_and_claw.up&buff.tooth_and_claw.remains<1.5)&active_enemies<=5)\nactions.bear+=/maul,if=active_enemies<=5&buff.vicious_cycle_maul.stack>=3||active_enemies<4&!talent.vicious_cycle_maul.enabled\nactions.bear+=/mangle,if=(buff.incarnation.up&active_enemies<=4)||(buff.incarnation.up&talent.soul_of_the_forest.enabled&active_enemies<=5)||((rage<90)&active_enemies<11)||((rage<85)&active_enemies<11&talent.soul_of_the_forest.enabled)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/pulverize,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/swipe_bear\n\nactions.catweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/rake,if=dot.rake.refreshable||energy<45\nactions.catweave+=/rip,if=dot.rip.refreshable&combo_points>=1\nactions.catweave+=/convoke_the_spirits\nactions.catweave+=/ferocious_bite,if=combo_points>=4&energy>50\nactions.catweave+=/shred,if=combo_points<=5\n\nactions.cconvoke+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.cconvoke+=/cat_form,if=!buff.cat_form.up\nactions.cconvoke+=/convoke_the_spirits\n\nactions.mitigation=ironfur,if=incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/regrowth,if=health.pct<65\nactions.mitigation+=/renewal,if=health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/empower_bond,if=(!druid.catweave_bear&!druid.owlweave_bear)||active_enemies>=2\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.owlweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.owlweave+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=gcd+1\nactions.owlweave+=/sunfire,if=dot.sunfire.refreshable\nactions.owlweave+=/starsurge",
					["spec"] = 104,
				},
			},
		},
	},
}
