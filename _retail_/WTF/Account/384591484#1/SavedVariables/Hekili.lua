
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Wratheane - Emerald Dream"] = "Default",
		["Stronguard - Emerald Dream"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadClassDefaultOptions_20220306_66"] = true,
				["forceReloadClassDefaultOptions_20220306_1468"] = true,
				["forceReloadClassDefaultOptions_20220306_65"] = true,
				["forceReloadClassDefaultOptions_20220306_70"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
				["forceReloadClassDefaultOptions_20220306_1467"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				[66] = {
					["settings"] = {
						["wog_health"] = 40,
						["goak_damage"] = 40,
						["ds_damage"] = 60,
					},
				},
				[70] = {
					["settings"] = {
						["sov_damage"] = 20,
						["check_wake_range"] = false,
						["desync_toll"] = false,
					},
				},
				[1467] = {
					["settings"] = {
						["use_deep_breath"] = true,
						["use_clipping"] = false,
						["use_early_chain"] = false,
						["use_unravel"] = false,
					},
				},
				[1468] = {
					["settings"] = {
						["use_deep_breath"] = true,
						["use_unravel"] = false,
					},
				},
			},
			["packs"] = {
				["Devastation"] = {
					["source"] = "https://github.com/simulationcraft/simc/blob/dragonflight/engine/class_modules/apl/apl_evoker.cpp",
					["builtIn"] = true,
					["date"] = 20230123,
					["spec"] = 1467,
					["desc"] = "",
					["lists"] = {
						["es"] = {
							{
								["enabled"] = true,
								["action"] = "eternity_surge",
								["empower_to"] = 1,
								["criteria"] = "spell_targets.pyre <= 1 + talent.eternitys_span.enabled || buff.dragonrage.remains < 1.75 * spell_haste & buff.dragonrage.remains >= 1 * spell_haste",
								["description"] = "Eternity Surge, use rank most applicable to targets.",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "eternity_surge",
								["criteria"] = "spell_targets.pyre <= 2 + 2 * talent.eternitys_span.enabled || buff.dragonrage.remains < 2.5 * spell_haste & buff.dragonrage.remains >= 1.75 * spell_haste",
								["empower_to"] = 2,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "eternity_surge",
								["criteria"] = "spell_targets.pyre <= 3 + 3 * talent.eternitys_span.enabled || ! talent.font_of_magic.enabled || buff.dragonrage.remains <= 3.25 * spell_haste & buff.dragonrage.remains >= 2.5 * spell_haste",
								["empower_to"] = 3,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "eternity_surge",
								["empower_to"] = 4,
							}, -- [4]
						},
						["default"] = {
							{
								["action"] = "quell",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "unravel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.dragonrage.up || boss & fight_remains < 35",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.dragonrage.remains",
								["description"] = "Variable that evaluates when next dragonrage is by working out the maximum between the dragonrage cd and your empowers, ignoring CDR effect estimates.",
								["var_name"] = "next_dragonrage",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "max",
								["action"] = "variable",
								["value"] = "cooldown.eternity_surge.remains - 2 * gcd.max",
								["var_name"] = "next_dragonrage",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "max",
								["action"] = "variable",
								["value"] = "cooldown.fire_breath.remains - gcd.max",
								["var_name"] = "next_dragonrage",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1.3 * spell_haste",
								["description"] = "Rank 1 empower spell cast time TODO: multiplier should be 1.0 but 1.3 results in more dps for EBF builds",
								["var_name"] = "r1_cast_time",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.pyre >= 3",
								["list_name"] = "aoe",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.pyre < 3",
								["list_name"] = "st",
							}, -- [10]
						},
						["precombat"] = {
							{
								["action"] = "blessing_of_the_bronze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff",
								["var_name"] = "trinket_1_buffs",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff",
								["var_name"] = "trinket_2_buffs",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Decide which trinket to pair with Dragonrage, prefer 2 minute and 1 minute trinkets",
								["criteria"] = "variable.trinket_1_buffs & ( trinket.t1.cooldown.duration % cooldown.dragonrage.duration = 0 || cooldown.dragonrage.duration % trinket.t1.cooldown.duration = 0 )",
								["value"] = "1",
								["action"] = "variable",
								["value_else"] = "0.5",
								["var_name"] = "trinket_1_sync",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["criteria"] = "variable.trinket_2_buffs & ( trinket.t2.cooldown.duration % cooldown.dragonrage.duration = 0 || cooldown.dragonrage.duration % trinket.t2.cooldown.duration = 0 )",
								["value_else"] = "0.5",
								["value"] = "1",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.spoils_of_neltharus",
								["description"] = "Estimates a trinkets value by comparing the cooldown of the trinket, divided by the duration of the buff it provides. Has a intellect modifier (currently 1.5x) to give a higher priority to intellect trinkets. The intellect modifier should be changed as intellect priority increases or decreases. As well as a modifier for if a trinket will or will not sync with cooldowns.",
								["var_name"] = "trinket_1_manual",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.spoils_of_neltharus",
								["var_name"] = "trinket_2_manual",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.is.ruby_whelp_shell || trinket.t1.is.whispering_incarnate_icon",
								["var_name"] = "trinket_1_exclude",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.is.ruby_whelp_shell || trinket.t2.is.whispering_incarnate_icon",
								["var_name"] = "trinket_2_exclude",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["criteria"] = "! variable.trinket_1_buffs & variable.trinket_2_buffs || variable.trinket_2_buffs & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
								["value_else"] = "1",
								["value"] = "2",
							}, -- [10]
							{
								["enabled"] = true,
								["name"] = "shadowed_orb_of_torment",
								["action"] = "shadowed_orb_of_torment",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.firestorm.enabled",
								["action"] = "firestorm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! talent.firestorm.enabled",
								["action"] = "living_flame",
							}, -- [13]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["description"] = "AOE action list, also a mess.",
								["criteria"] = "cooldown.fire_breath.remains <= gcd.max & cooldown.eternity_surge.remains < 3 * gcd.max",
								["action"] = "dragonrage",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.dragonrage.up & ( spell_targets.pyre <= 6 || ! cooldown.fire_breath.up )",
								["action"] = "tip_the_scales",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.dragonrage.up || ! talent.dragonrage.enabled || cooldown.dragonrage.remains > 10 & talent.everburning_flame.enabled",
								["action"] = "call_action_list",
								["list_name"] = "fb",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "cooldown.dragonrage.remains > 10 & spell_targets.pyre >= 7",
								["empower_to"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "cooldown.dragonrage.remains > 10 & spell_targets.pyre >= 6",
								["empower_to"] = 2,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "cooldown.dragonrage.remains > 10 & spell_targets.pyre >= 4",
								["empower_to"] = 3,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "cooldown.dragonrage.remains > 10 || empowering.fire_breath",
								["empower_to"] = 2,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.dragonrage.up || ! talent.dragonrage.enabled || cooldown.dragonrage.remains > 15 || empowering.eternity_surge",
								["action"] = "call_action_list",
								["list_name"] = "es",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.dragonrage.up & buff.dragonrage.remains < ( buff.essence_burst.max_stack - buff.essence_burst.stack ) * gcd.max",
								["action"] = "azure_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dragonrage.up",
								["action"] = "deep_breath",
							}, -- [10]
							{
								["action"] = "firestorm",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "shattering_star",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dragonrage.remains < gcd.max * 6 & cooldown.fire_breath.remains < 6 * gcd.max & cooldown.eternity_surge.remains < 6 * gcd.max",
								["action"] = "azure_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.volatility.enabled",
								["action"] = "pyre",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.burnout.up & buff.leaping_flames.up & ! buff.essence_burst.up",
								["action"] = "living_flame",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dragonrage.remains >= 10 & spell_targets.pyre >= 4",
								["action"] = "pyre",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.dragonrage.remains >= 10 & spell_targets.pyre = 3 & buff.charged_blast.stack >= 10",
								["action"] = "pyre",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.shattering_star.enabled || cooldown.shattering_star.remains > 5 || essence > essence.max - 1 || buff.essence_burst.stack = buff.essence_burst.max_stack",
								["chain"] = "1",
								["action"] = "disintegrate",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.snapfire.enabled & buff.burnout.up",
								["action"] = "living_flame",
							}, -- [19]
							{
								["action"] = "azure_strike",
								["enabled"] = true,
							}, -- [20]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["name"] = "spoils_of_neltharus",
								["description"] = "Try and get spoils to prvide haste or mastery stats, but if dragonrage gets too short just use it anyway.",
								["criteria"] = "buff.dragonrage.up & ( buff.spoils_of_neltharus_mastery.up || buff.spoils_of_neltharus_haste.up || buff.dragonrage.remains + 6 * ( ( cooldown.eternity_surge.remains <= gcd.max * 2 ) + ( cooldown.fire_breath.remains <= gcd.max * 2 ) ) <= 18 ) || boss & fight_remains <= 20",
								["action"] = "spoils_of_neltharus",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["criteria"] = "buff.dragonrage.up & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.remains || variable.trinket_priority = 1 || variable.trinket_2_exclude ) & ! variable.trinket_1_manual || trinket.t1.buff_duration >= fight_remains || trinket.t1.cooldown.duration <= 60 & ( variable.next_dragonrage > 20 || ! talent.dragonrage.enabled ) & ( ! buff.dragonrage.up || variable.trinket_priority = 1 )",
								["description"] = "The trinket with the highest estimated value, will be used first and paired with Dragonrage.",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "buff.dragonrage.up & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.remains || variable.trinket_priority = 2 || variable.trinket_1_exclude ) & ! variable.trinket_2_manual || trinket.t2.buff_duration >= fight_remains || trinket.t2.cooldown.duration <= 60 & ( variable.next_dragonrage > 20 || ! talent.dragonrage.enabled ) & ( ! buff.dragonrage.up || variable.trinket_priority = 2 )",
								["slot"] = "trinket2",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
								["criteria"] = "! variable.trinket_1_buffs & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs ) & ( variable.next_dragonrage > 20 || ! talent.dragonrage.enabled ) & ! variable.trinket_1_manual",
								["description"] = "If only one on use trinket provides a buff, use the other on cooldown. Or if neither trinket provides a buff, use both on cooldown.",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["criteria"] = "! variable.trinket_2_buffs & ( trinket.t1.cooldown.remains || ! variable.trinket_1_buffs ) & ( variable.next_dragonrage > 20 || ! talent.dragonrage.enabled ) & ! variable.trinket_2_manual",
								["slot"] = "trinket2",
							}, -- [5]
						},
						["st"] = {
							{
								["enabled"] = true,
								["name"] = "kharnalex_the_first_light",
								["description"] = "ST Action List, it's a mess",
								["criteria"] = "! buff.dragonrage.up & debuff.shattering_star_debuff.down",
								["action"] = "kharnalex_the_first_light",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.fire_breath.remains < gcd.max & cooldown.eternity_surge.remains < 2 * gcd.max || boss & fight_remains < 30",
								["action"] = "dragonrage",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Use to extend DR when an empower cast won't fit inside the DR window anymore. When running FTF use on ES at the start of DR to maximize uses",
								["criteria"] = "buff.dragonrage.up & ( buff.dragonrage.remains < variable.r1_cast_time & ( buff.dragonrage.remains > cooldown.fire_breath.remains || buff.dragonrage.remains > cooldown.eternity_surge.remains ) || talent.feed_the_flames.enabled & ! cooldown.fire_breath.up )",
								["action"] = "tip_the_scales",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.dragonrage.enabled || variable.next_dragonrage > 15 || ! talent.animosity.enabled || empowering.fire_breath",
								["action"] = "call_action_list",
								["list_name"] = "fb",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.dragonrage.enabled || variable.next_dragonrage > 15 || ! talent.animosity.enabled || empowering.eternity_surge",
								["action"] = "call_action_list",
								["list_name"] = "es",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "wait",
								["sec"] = "cooldown.fire_breath.remains",
								["description"] = "Wait for FB/ES to be ready if spending another GCD would result in the cast no longer fitting inside of DR",
								["criteria"] = "talent.animosity.enabled & buff.dragonrage.up & buff.dragonrage.remains < gcd.max + variable.r1_cast_time * buff.tip_the_scales.down & buff.dragonrage.remains - cooldown.fire_breath.remains >= variable.r1_cast_time * buff.tip_the_scales.down",
							}, -- [6]
							{
								["enabled"] = true,
								["sec"] = "cooldown.eternity_surge.remains",
								["action"] = "wait",
								["criteria"] = "talent.animosity.enabled & buff.dragonrage.up & buff.dragonrage.remains < gcd.max + variable.r1_cast_time & buff.dragonrage.remains - cooldown.eternity_surge.remains > variable.r1_cast_time * buff.tip_the_scales.down",
							}, -- [7]
							{
								["enabled"] = true,
								["description"] = "Wait for 2 EBs to use SS while inside DR, otherwise use on CD",
								["criteria"] = "! buff.dragonrage.up || buff.essence_burst.stack = buff.essence_burst.max_stack || talent.eye_of_infinity.enabled",
								["action"] = "shattering_star",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Spend the last 1 or 2 GCDs of DR on fillers to exit with 2 EBs",
								["criteria"] = "buff.dragonrage.up & buff.dragonrage.remains < ( buff.essence_burst.max_stack - buff.essence_burst.stack ) * gcd.max & buff.burnout.up",
								["action"] = "living_flame",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.dragonrage.up & buff.dragonrage.remains < ( buff.essence_burst.max_stack - buff.essence_burst.stack ) * gcd.max",
								["action"] = "azure_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "Hard cast only outside of SS and DR windows, always spend snapfire procs",
								["criteria"] = "! buff.dragonrage.up & debuff.shattering_star_debuff.down || buff.snapfire.up",
								["action"] = "firestorm",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "Spend burnout procs without overcapping resources",
								["criteria"] = "buff.burnout.up & buff.essence_burst.stack < buff.essence_burst.max_stack & essence < essence.max - 1",
								["action"] = "living_flame",
							}, -- [12]
							{
								["enabled"] = true,
								["description"] = "Ensure we clip Disintegrate inside DR even with our fillers, Pool 1-2 GCDs before SS is up inside DR",
								["criteria"] = "buff.dragonrage.up & ( essence < 3 & ! buff.essence_burst.up || ( talent.shattering_star.enabled & cooldown.shattering_star.remains <= ( buff.essence_burst.max_stack - buff.essence_burst.stack ) * gcd.max ) )",
								["action"] = "azure_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["chain"] = "1",
								["description"] = "In DR chain/clip after the 3rd damage tick, Outside of DR pool 6 seconds before SS unless it would result in overcapping resources TODO: revisit pooling conditions",
								["interrupt_if"] = "buff.dragonrage.up&ticks>=2&(evoker.use_clipping||cooldown.fire_breath.up||cooldown.eternity_surge.up)",
								["early_chain_if"] = "evoker.use_early_chaining&buff.dragonrage.up&ticks>=2",
								["criteria"] = "buff.dragonrage.up || ( ! talent.shattering_star.enabled || cooldown.shattering_star.remains > 6 || essence > essence.max - 1 || buff.essence_burst.stack = buff.essence_burst.max_stack )",
								["action"] = "disintegrate",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! buff.dragonrage.up & spell_targets.deep_breath > 1",
								["action"] = "deep_breath",
							}, -- [15]
							{
								["action"] = "living_flame",
								["enabled"] = true,
							}, -- [16]
						},
						["fb"] = {
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["empower_to"] = 1,
								["criteria"] = "( 20 + 2 * talent.blast_furnace.rank ) + dot.fire_breath_damage.remains < ( 20 + 2 * talent.blast_furnace.rank ) * 1.3 || buff.dragonrage.remains < 1.75 * spell_haste & buff.dragonrage.remains >= 1 * spell_haste || active_enemies <= 2",
								["description"] = "Use Firebreath with some really weird criteria. Override it for st because its not actually useful? Idk. TODO: Someone look at this it's a mess.",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "( 14 + 2 * talent.blast_furnace.rank ) + dot.fire_breath_damage.remains < ( 20 + 2 * talent.blast_furnace.rank ) * 1.3 || buff.dragonrage.remains < 2.5 * spell_haste & buff.dragonrage.remains >= 1.75 * spell_haste",
								["empower_to"] = 2,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "( 8 + 2 * talent.blast_furnace.rank ) + dot.fire_breath_damage.remains < ( 20 + 2 * talent.blast_furnace.rank ) * 1.3 || ! talent.font_of_magic.enabled || buff.dragonrage.remains <= 3.25 * spell_haste & buff.dragonrage.remains >= 2.5 * spell_haste",
								["empower_to"] = 3,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["empower_to"] = 4,
							}, -- [4]
						},
					},
					["version"] = 20230123,
					["warnings"] = "The import for 'es' required some automated changes.\nLine 1: Converted 'talent.eternitys_span' to 'talent.eternitys_span.enabled' (1x).\nLine 2: Converted 'talent.eternitys_span' to 'talent.eternitys_span.enabled' (1x).\nLine 3: Converted 'talent.eternitys_span' to 'talent.eternitys_span.enabled' (1x).\nLine 3: Converted 'talent.font_of_magic' to 'talent.font_of_magic.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 2: Converted 'trinket.1.has_buff.intellect' to 'trinket.t1.has_buff.intellect' (1x).\nLine 2: Converted 'trinket.1.has_buff.intellect' to 'trinket.t1.has_use_buff' (1x).\nLine 2: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 2: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 2: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 2: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 2: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 2: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 2: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 2: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_buff.intellect' to 'trinket.t2.has_buff.intellect' (1x).\nLine 3: Converted 'trinket.2.has_buff.intellect' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 3: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 3: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 3: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 3: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 4: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 4: Converted operations in 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%%cooldown.dragonrage.duration=0||cooldown.dragonrage.duration%%trinket.t1.cooldown.duration=0)' to 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%cooldown.dragonrage.duration=0||cooldown.dragonrage.duration%trinket.t1.cooldown.duration=0)'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 5: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 5: Converted operations in 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%%cooldown.dragonrage.duration=0||cooldown.dragonrage.duration%%trinket.t2.cooldown.duration=0)' to 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%cooldown.dragonrage.duration=0||cooldown.dragonrage.duration%trinket.t2.cooldown.duration=0)'.\nLine 6: Converted 'trinket.1.is.spoils_of_neltharus' to 'trinket.t1.is.spoils_of_neltharus' (1x).\nLine 7: Converted 'trinket.2.is.spoils_of_neltharus' to 'trinket.t2.is.spoils_of_neltharus' (1x).\nLine 8: Converted 'trinket.1.is.ruby_whelp_shell' to 'trinket.t1.is.ruby_whelp_shell' (1x).\nLine 8: Converted 'trinket.1.is.whispering_incarnate_icon' to 'trinket.t1.is.whispering_incarnate_icon' (1x).\nLine 9: Converted 'trinket.2.is.ruby_whelp_shell' to 'trinket.t2.is.ruby_whelp_shell' (1x).\nLine 9: Converted 'trinket.2.is.whispering_incarnate_icon' to 'trinket.t2.is.whispering_incarnate_icon' (1x).\nLine 10: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 10: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 10: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 10: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 10: Converted 'trinket.2.has_buff.intellect' to 'trinket.t2.has_buff.intellect' (1x).\nLine 10: Converted 'trinket.2.has_buff.intellect' to 'trinket.t2.has_use_buff' (1x).\nLine 10: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 10: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 10: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 10: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 10: Converted 'trinket.1.has_buff.intellect' to 'trinket.t1.has_buff.intellect' (1x).\nLine 10: Converted 'trinket.1.has_buff.intellect' to 'trinket.t1.has_use_buff' (1x).\nLine 10: Converted operations in '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nLine 12: Converted 'talent.firestorm' to 'talent.firestorm.enabled' (1x).\nLine 13: Converted 'talent.firestorm' to 'talent.firestorm.enabled' (1x).\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'aoe' required some automated changes.\nLine 3: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\nLine 3: Converted 'talent.everburning_flame' to 'talent.everburning_flame.enabled' (1x).\nLine 8: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\nLine 14: Converted 'talent.volatility' to 'talent.volatility.enabled' (1x).\nLine 18: Converted 'talent.shattering_star' to 'talent.shattering_star.enabled' (1x).\nLine 19: Converted 'talent.snapfire' to 'talent.snapfire.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 2: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 2: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 2: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 2: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 2: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 2: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\nLine 3: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 3: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 3: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 3: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\nLine 4: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 4: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 4: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\nLine 5: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 5: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 5: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 3: Converted 'talent.feed_the_flames' to 'talent.feed_the_flames.enabled' (1x).\nLine 4: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\nLine 4: Converted 'talent.animosity' to 'talent.animosity.enabled' (1x).\nLine 5: Converted 'talent.dragonrage' to 'talent.dragonrage.enabled' (1x).\nLine 5: Converted 'talent.animosity' to 'talent.animosity.enabled' (1x).\nLine 6: Converted 'talent.animosity' to 'talent.animosity.enabled' (1x).\nLine 7: Converted 'talent.animosity' to 'talent.animosity.enabled' (1x).\nLine 8: Converted 'talent.eye_of_infinity' to 'talent.eye_of_infinity.enabled' (1x).\nLine 8: Converted operations in '!buff.dragonrage.up||buff.essence_burst.stack==buff.essence_burst.max_stack||talent.eye_of_infinity.enabled' to '!buff.dragonrage.up||buff.essence_burst.stack=buff.essence_burst.max_stack||talent.eye_of_infinity.enabled'.\nLine 13: Converted 'talent.shattering_star' to 'talent.shattering_star.enabled' (1x).\nLine 14: Converted 'talent.shattering_star' to 'talent.shattering_star.enabled' (1x).\nLine 14: Converted operations in 'buff.dragonrage.up||(!talent.shattering_star.enabled||cooldown.shattering_star.remains>6||essence>essence.max-1||buff.essence_burst.stack==buff.essence_burst.max_stack)' to 'buff.dragonrage.up||(!talent.shattering_star.enabled||cooldown.shattering_star.remains>6||essence>essence.max-1||buff.essence_burst.stack=buff.essence_burst.max_stack)'.\n\nThe import for 'fb' required some automated changes.\nLine 3: Converted 'talent.font_of_magic' to 'talent.font_of_magic.enabled' (1x).\n\nImported 7 action lists.\n",
					["profile"] = "actions.precombat+=/blessing_of_the_bronze\nactions.precombat+=/variable,name=trinket_1_buffs,value=trinket.1.has_buff.intellect||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit\nactions.precombat+=/variable,name=trinket_2_buffs,value=trinket.2.has_buff.intellect||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit\n# Decide which trinket to pair with Dragonrage, prefer 2 minute and 1 minute trinkets\nactions.precombat+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_1_buffs&(trinket.1.cooldown.duration%%cooldown.dragonrage.duration=0||cooldown.dragonrage.duration%%trinket.1.cooldown.duration=0)\nactions.precombat+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_2_buffs&(trinket.2.cooldown.duration%%cooldown.dragonrage.duration=0||cooldown.dragonrage.duration%%trinket.2.cooldown.duration=0)\n# Estimates a trinkets value by comparing the cooldown of the trinket, divided by the duration of the buff it provides. Has a intellect modifier (currently 1.5x) to give a higher priority to intellect trinkets. The intellect modifier should be changed as intellect priority increases or decreases. As well as a modifier for if a trinket will or will not sync with cooldowns.\nactions.precombat+=/variable,name=trinket_1_manual,value=trinket.1.is.spoils_of_neltharus\nactions.precombat+=/variable,name=trinket_2_manual,value=trinket.2.is.spoils_of_neltharus\nactions.precombat+=/variable,name=trinket_1_exclude,value=trinket.1.is.ruby_whelp_shell||trinket.1.is.whispering_incarnate_icon\nactions.precombat+=/variable,name=trinket_2_exclude,value=trinket.2.is.ruby_whelp_shell||trinket.2.is.whispering_incarnate_icon\nactions.precombat+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.intellect)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.intellect)*(variable.trinket_1_sync))\nactions.precombat+=/use_item,name=shadowed_orb_of_torment\nactions.precombat+=/firestorm,if=talent.firestorm\nactions.precombat+=/living_flame,if=!talent.firestorm\n\nactions+=/quell\nactions+=/unravel\nactions+=/potion,if=buff.dragonrage.up||boss&fight_remains<35\n# Variable that evaluates when next dragonrage is by working out the maximum between the dragonrage cd and your empowers, ignoring CDR effect estimates.\nactions+=/variable,name=next_dragonrage,value=cooldown.dragonrage.remains\nactions+=/variable,name=next_dragonrage,op=max,value=cooldown.eternity_surge.remains-2*gcd.max\nactions+=/variable,name=next_dragonrage,op=max,value=cooldown.fire_breath.remains-gcd.max\n# Rank 1 empower spell cast time TODO: multiplier should be 1.0 but 1.3 results in more dps for EBF builds\nactions+=/variable,name=r1_cast_time,value=1.3*spell_haste\nactions+=/call_action_list,name=trinkets\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.pyre>=3\nactions+=/run_action_list,name=st,strict=1,if=spell_targets.pyre<3\n\n# ST Action List, it's a mess\nactions.st+=/use_item,name=kharnalex_the_first_light,if=!buff.dragonrage.up&debuff.shattering_star_debuff.down\nactions.st+=/dragonrage,if=cooldown.fire_breath.remains<gcd.max&cooldown.eternity_surge.remains<2*gcd.max||boss&fight_remains<30\n# Use to extend DR when an empower cast won't fit inside the DR window anymore. When running FTF use on ES at the start of DR to maximize uses\nactions.st+=/tip_the_scales,if=buff.dragonrage.up&(buff.dragonrage.remains<variable.r1_cast_time&(buff.dragonrage.remains>cooldown.fire_breath.remains||buff.dragonrage.remains>cooldown.eternity_surge.remains)||talent.feed_the_flames&!cooldown.fire_breath.up)\nactions.st+=/call_action_list,name=fb,if=!talent.dragonrage||variable.next_dragonrage>15||!talent.animosity||empowering.fire_breath\nactions.st+=/call_action_list,name=es,if=!talent.dragonrage||variable.next_dragonrage>15||!talent.animosity||empowering.eternity_surge\n# Wait for FB/ES to be ready if spending another GCD would result in the cast no longer fitting inside of DR\nactions.st+=/wait,sec=cooldown.fire_breath.remains,if=talent.animosity&buff.dragonrage.up&buff.dragonrage.remains<gcd.max+variable.r1_cast_time*buff.tip_the_scales.down&buff.dragonrage.remains-cooldown.fire_breath.remains>=variable.r1_cast_time*buff.tip_the_scales.down\nactions.st+=/wait,sec=cooldown.eternity_surge.remains,if=talent.animosity&buff.dragonrage.up&buff.dragonrage.remains<gcd.max+variable.r1_cast_time&buff.dragonrage.remains-cooldown.eternity_surge.remains>variable.r1_cast_time*buff.tip_the_scales.down\n# Wait for 2 EBs to use SS while inside DR, otherwise use on CD\nactions.st+=/shattering_star,if=!buff.dragonrage.up||buff.essence_burst.stack==buff.essence_burst.max_stack||talent.eye_of_infinity\n# Spend the last 1 or 2 GCDs of DR on fillers to exit with 2 EBs\nactions.st+=/living_flame,if=buff.dragonrage.up&buff.dragonrage.remains<(buff.essence_burst.max_stack-buff.essence_burst.stack)*gcd.max&buff.burnout.up\nactions.st+=/azure_strike,if=buff.dragonrage.up&buff.dragonrage.remains<(buff.essence_burst.max_stack-buff.essence_burst.stack)*gcd.max\n# Hard cast only outside of SS and DR windows, always spend snapfire procs\nactions.st+=/firestorm,if=!buff.dragonrage.up&debuff.shattering_star_debuff.down||buff.snapfire.up\n# Spend burnout procs without overcapping resources\nactions.st+=/living_flame,if=buff.burnout.up&buff.essence_burst.stack<buff.essence_burst.max_stack&essence<essence.max-1\n# Ensure we clip Disintegrate inside DR even with our fillers, Pool 1-2 GCDs before SS is up inside DR\nactions.st+=/azure_strike,if=buff.dragonrage.up&(essence<3&!buff.essence_burst.up||(talent.shattering_star&cooldown.shattering_star.remains<=(buff.essence_burst.max_stack-buff.essence_burst.stack)*gcd.max))\n# In DR chain/clip after the 3rd damage tick, Outside of DR pool 6 seconds before SS unless it would result in overcapping resources TODO: revisit pooling conditions\nactions.st+=/disintegrate,chain=1,early_chain_if=evoker.use_early_chaining&buff.dragonrage.up&ticks>=2,interrupt_if=buff.dragonrage.up&ticks>=2&(evoker.use_clipping||cooldown.fire_breath.up||cooldown.eternity_surge.up),if=buff.dragonrage.up||(!talent.shattering_star||cooldown.shattering_star.remains>6||essence>essence.max-1||buff.essence_burst.stack==buff.essence_burst.max_stack)\nactions.st+=/deep_breath,if=!buff.dragonrage.up&spell_targets.deep_breath>1\nactions.st+=/living_flame\n\n# AOE action list, also a mess.\nactions.aoe+=/dragonrage,if=cooldown.fire_breath.remains<=gcd.max&cooldown.eternity_surge.remains<3*gcd.max\nactions.aoe+=/tip_the_scales,if=buff.dragonrage.up&(spell_targets.pyre<=6||!cooldown.fire_breath.up)\nactions.aoe+=/call_action_list,name=fb,if=buff.dragonrage.up||!talent.dragonrage||cooldown.dragonrage.remains>10&talent.everburning_flame\nactions.aoe+=/fire_breath,empower_to=1,if=cooldown.dragonrage.remains>10&spell_targets.pyre>=7\nactions.aoe+=/fire_breath,empower_to=2,if=cooldown.dragonrage.remains>10&spell_targets.pyre>=6\nactions.aoe+=/fire_breath,empower_to=3,if=cooldown.dragonrage.remains>10&spell_targets.pyre>=4\nactions.aoe+=/fire_breath,empower_to=2,if=cooldown.dragonrage.remains>10||empowering.fire_breath\nactions.aoe+=/call_action_list,name=es,if=buff.dragonrage.up||!talent.dragonrage||cooldown.dragonrage.remains>15||empowering.eternity_surge\nactions.aoe+=/azure_strike,if=buff.dragonrage.up&buff.dragonrage.remains<(buff.essence_burst.max_stack-buff.essence_burst.stack)*gcd.max\nactions.aoe+=/deep_breath,if=!buff.dragonrage.up\nactions.aoe+=/firestorm\nactions.aoe+=/shattering_star\nactions.aoe+=/azure_strike,if=cooldown.dragonrage.remains<gcd.max*6&cooldown.fire_breath.remains<6*gcd.max&cooldown.eternity_surge.remains<6*gcd.max\nactions.aoe+=/pyre,if=talent.volatility\nactions.aoe+=/living_flame,if=buff.burnout.up&buff.leaping_flames.up&!buff.essence_burst.up\nactions.aoe+=/pyre,if=cooldown.dragonrage.remains>=10&spell_targets.pyre>=4\nactions.aoe+=/pyre,if=cooldown.dragonrage.remains>=10&spell_targets.pyre=3&buff.charged_blast.stack>=10\nactions.aoe+=/disintegrate,chain=1,if=!talent.shattering_star||cooldown.shattering_star.remains>5||essence>essence.max-1||buff.essence_burst.stack=buff.essence_burst.max_stack\nactions.aoe+=/living_flame,if=talent.snapfire&buff.burnout.up\nactions.aoe+=/azure_strike\n\n# Use Firebreath with some really weird criteria. Override it for st because its not actually useful? Idk. TODO: Someone look at this it's a mess.\nactions.fb+=/fire_breath,empower_to=1,if=(20+2*talent.blast_furnace.rank)+dot.fire_breath_damage.remains<(20+2*talent.blast_furnace.rank)*1.3||buff.dragonrage.remains<1.75*spell_haste&buff.dragonrage.remains>=1*spell_haste||active_enemies<=2\nactions.fb+=/fire_breath,empower_to=2,if=(14+2*talent.blast_furnace.rank)+dot.fire_breath_damage.remains<(20+2*talent.blast_furnace.rank)*1.3||buff.dragonrage.remains<2.5*spell_haste&buff.dragonrage.remains>=1.75*spell_haste\nactions.fb+=/fire_breath,empower_to=3,if=(8+2*talent.blast_furnace.rank)+dot.fire_breath_damage.remains<(20+2*talent.blast_furnace.rank)*1.3||!talent.font_of_magic||buff.dragonrage.remains<=3.25*spell_haste&buff.dragonrage.remains>=2.5*spell_haste\nactions.fb+=/fire_breath,empower_to=4\n\n# Eternity Surge, use rank most applicable to targets.\nactions.es+=/eternity_surge,empower_to=1,if=spell_targets.pyre<=1+talent.eternitys_span||buff.dragonrage.remains<1.75*spell_haste&buff.dragonrage.remains>=1*spell_haste\nactions.es+=/eternity_surge,empower_to=2,if=spell_targets.pyre<=2+2*talent.eternitys_span||buff.dragonrage.remains<2.5*spell_haste&buff.dragonrage.remains>=1.75*spell_haste\nactions.es+=/eternity_surge,empower_to=3,if=spell_targets.pyre<=3+3*talent.eternitys_span||!talent.font_of_magic||buff.dragonrage.remains<=3.25*spell_haste&buff.dragonrage.remains>=2.5*spell_haste\nactions.es+=/eternity_surge,empower_to=4\n\n# Try and get spoils to prvide haste or mastery stats, but if dragonrage gets too short just use it anyway.\nactions.trinkets+=/use_item,name=spoils_of_neltharus,if=buff.dragonrage.up&(buff.spoils_of_neltharus_mastery.up||buff.spoils_of_neltharus_haste.up||buff.dragonrage.remains+6*((cooldown.eternity_surge.remains<=gcd.max*2)+(cooldown.fire_breath.remains<=gcd.max*2))<=18)||boss&fight_remains<=20\n# The trinket with the highest estimated value, will be used first and paired with Dragonrage.\nactions.trinkets+=/use_item,slot=trinket1,if=buff.dragonrage.up&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1||variable.trinket_2_exclude)&!variable.trinket_1_manual||trinket.1.proc.any_dps.duration>=fight_remains||trinket.1.cooldown.duration<=60&(variable.next_dragonrage>20||!talent.dragonrage)&(!buff.dragonrage.up||variable.trinket_priority=1)\nactions.trinkets+=/use_item,slot=trinket2,if=buff.dragonrage.up&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2||variable.trinket_1_exclude)&!variable.trinket_2_manual||trinket.2.proc.any_dps.duration>=fight_remains||trinket.2.cooldown.duration<=60&(variable.next_dragonrage>20||!talent.dragonrage)&(!buff.dragonrage.up||variable.trinket_priority=2)\n# If only one on use trinket provides a buff, use the other on cooldown. Or if neither trinket provides a buff, use both on cooldown.\nactions.trinkets+=/use_item,slot=trinket1,if=!variable.trinket_1_buffs&(trinket.2.cooldown.remains||!variable.trinket_2_buffs)&(variable.next_dragonrage>20||!talent.dragonrage)&!variable.trinket_1_manual\nactions.trinkets+=/use_item,slot=trinket2,if=!variable.trinket_2_buffs&(trinket.1.cooldown.remains||!variable.trinket_1_buffs)&(variable.next_dragonrage>20||!talent.dragonrage)&!variable.trinket_2_manual",
					["author"] = "SimC",
				},
				["Holy Paladin"] = {
					["builtIn"] = true,
					["date"] = 20230205,
					["spec"] = 65,
					["lists"] = {
						["spenders"] = {
							{
								["enabled"] = true,
								["criteria"] = "! talent.awakening.enabled || active_enemies > 1",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.awakening.enabled & group",
								["action"] = "light_of_dawn",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.awakening.enabled",
								["action"] = "word_of_glory",
							}, -- [3]
						},
						["default"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "For addon purposes, Avenging Wrath, Sanctified Wrath, and Avenging Crusader are all the same ability.",
								["action"] = "avenging_wrath",
							}, -- [2]
							{
								["action"] = "seraphim",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "holy_avenger",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "blessing_of_summer",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "blessing_of_autumn",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "blessing_of_winter",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "blessing_of_spring",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "! talent.avenging_crusader.enabled || cooldown.avenging_crusader.remains > gcd.max || holy_power.deficit = 0",
								["list_name"] = "spenders",
							}, -- [9]
							{
								["action"] = "divine_toll",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_hammer",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "holy_prism",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & target.within10",
								["action"] = "consecration",
							}, -- [13]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "judgment",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "holy_shock",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.holy_shock.remains > gcd.max",
								["action"] = "crusader_strike",
							}, -- [17]
						},
					},
					["version"] = 20230205,
					["warnings"] = "The import for 'spenders' required some automated changes.\nLine 1: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\nLine 2: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\nLine 3: Converted 'talent.awakening' to 'talent.awakening.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 9: Converted 'talent.avenging_crusader' to 'talent.avenging_crusader.enabled' (1x).\n\nThis profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 3 action lists.\n",
					["author"] = "Kaleokalani",
					["profile"] = "actions+=/rebuke\n# For addon purposes, Avenging Wrath, Sanctified Wrath, and Avenging Crusader are all the same ability.\nactions+=/avenging_wrath\nactions+=/seraphim\nactions+=/holy_avenger\nactions+=/blessing_of_summer\nactions+=/blessing_of_autumn\nactions+=/blessing_of_winter\nactions+=/blessing_of_spring\nactions+=/call_action_list,name=spenders,strict=1,if=!talent.avenging_crusader||cooldown.avenging_crusader.remains>gcd.max||holy_power.deficit=0\nactions+=/divine_toll\nactions+=/lights_hammer\nactions+=/holy_prism\nactions+=/consecration,if=!consecration.up&target.within10\nactions+=/hammer_of_wrath\nactions+=/judgment\nactions+=/holy_shock\nactions+=/crusader_strike,if=cooldown.holy_shock.remains>gcd.max\n\nactions.spenders+=/shield_of_the_righteous,if=!talent.awakening||active_enemies>1\nactions.spenders+=/light_of_dawn,if=talent.awakening&group\nactions.spenders+=/word_of_glory,if=talent.awakening",
				},
				["Protection Paladin"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230126,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "rebuke",
							}, -- [1]
							{
								["action"] = "cleanse_toxins",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "trinkets",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "standard",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.paladin_aura.down",
								["action"] = "devotion_aura",
							}, -- [1]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [4]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "tanking & buff.shield_of_the_righteous.down & ( holy_power.deficit = 0 || buff.divine_purpose.up )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < wog_health & ( holy_power.deficit = 0 || buff.divine_purpose.up || buff.shining_light_free.up )",
								["action"] = "word_of_glory",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "tanking & incoming_damage_5s > goak_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "guardian_of_ancient_kings",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.final_stand.enabled & tanking & incoming_damage_5s > ds_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "divine_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & incoming_damage_5s > goak_damage & ! ( buff.ardent_defender.up || buff.guardian_of_ancient_kings.up || buff.divine_shield.up || buff.potion.up )",
								["action"] = "ardent_defender",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 15",
								["action"] = "lay_on_hands",
							}, -- [6]
						},
						["trinkets"] = {
							{
								["enabled"] = true,
								["op"] = "setif",
								["description"] = "Evaluates a trinkets cooldown, divided by moment of glory or avenging wraths's cooldown. If it's value has no remainder return 1, else return 0.5.",
								["value"] = "1",
								["var_name"] = "trinket_1_sync",
								["action"] = "variable",
								["value_else"] = "0.5",
								["criteria"] = "trinket.t1.has_use_buff & ( ( talent.moment_of_glory.enabled & trinket.t1.cooldown.duration % cooldown.moment_of_glory.duration = 0 ) || ( ! talent.moment_of_glory.enabled & trinket.t1.cooldown.duration % cooldown.avenging_wrath.duration = 0 ) )",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["value"] = "1",
								["value_else"] = "0.5",
								["criteria"] = "trinket.t2.has_use_buff & ( ( talent.moment_of_glory.enabled & trinket.t2.cooldown.duration % cooldown.moment_of_glory.duration = 0 ) || ( ! talent.moment_of_glory.enabled & trinket.t2.cooldown.duration % cooldown.avenging_wrath.duration = 0 ) )",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["value"] = "2",
								["value_else"] = "1",
								["criteria"] = "! trinket.t1.has_use_buff & trinket.t2.has_use_buff || trinket.t2.has_use_buff & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff",
								["var_name"] = "trinket_1_buffs",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff",
								["var_name"] = "trinket_2_buffs",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.moment_of_glory.up || ! talent.moment_of_glory_enabled.enabled & buff.aw_sentinel.up ) & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.remains || variable.trinket_priority = 1 ) || boss & trinket.t1.buff_duration >= fight_remains",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( buff.moment_of_glory.up || ! talent.moment_of_glory_enabled.enabled & buff.aw_sentinel.up ) & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.remains || variable.trinket_priority = 2 ) || boss & trinket.t2.buff_duration >= fight_remains",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_1_buffs & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs || ( cooldown.moment_of_glory.remains > 20 || ( ! talent.moment_of_glory.enabled & ( cooldown.sentinel.remains > 20 || cooldown.avenging_wrath.remains > 20 ) ) ) )",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_2_buffs & ( trinket.t1.cooldown.remains || ! variable.trinket_1_buffs || ( cooldown.moment_of_glory.remains > 20 || ( ! talent.moment_of_glory.enabled & ( cooldown.sentinel.remains > 20 || cooldown.avenging_wrath.remains > 20 ) ) ) )",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
						},
						["standard"] = {
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.seraphim.remains >= 5 || ! talent.seraphim.enabled ) & ( ( ( holy_power = 3 & ! buff.blessing_of_dusk.up & ! buff.holy_avenger.up ) || ( holy_power = 5 ) || buff.bastion_of_light.up || buff.divine_purpose.up ) )",
								["action"] = "shield_of_the_righteous",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.moment_of_glory.up || ! talent.moment_of_glory.enabled",
								["action"] = "avengers_shield",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up",
								["action"] = "hammer_of_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2 || ! talent.crusaders_judgment.enabled",
								["action"] = "judgment",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "time > 20 || ( ( ! talent.seraphim.enabled || buff.seraphim.up ) & ( buff.aw_sentinel.up || ! talent.avenging_wrath.enabled & ! talent.sentinel.enabled ) & ( buff.moment_of_glory.up || ! talent.moment_of_glory.enabled ) )",
								["action"] = "divine_toll",
							}, -- [5]
							{
								["action"] = "avengers_shield",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "judgment",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [9]
							{
								["action"] = "eye_of_tyr",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "blessed_hammer",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.shining_light_free.up",
								["action"] = "word_of_glory",
							}, -- [14]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [15]
						},
						["cooldowns"] = {
							{
								["action"] = "seraphim",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( buff.seraphim.up || ! talent.seraphim.enabled )",
								["action"] = "avenging_wrath",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.seraphim.up || ! talent.seraphim.enabled )",
								["action"] = "avenging_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.remains < 15 || ( time > 10 || cooldown.sentinel.remains > 15 || cooldown.avenging_wrath.remains > 15 ) & ( cooldown.avengers_shield.remains & cooldown.judgment.remains & cooldown.hammer_of_wrath.remains ) )",
								["action"] = "moment_of_glory",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up || cooldown.avenging_wrath.remains > 60 || cooldown.sentinel.remains > 60",
								["action"] = "holy_avenger",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.aw_sentinel.up",
								["action"] = "bastion_of_light",
							}, -- [7]
						},
					},
					["version"] = 20230126,
					["warnings"] = "The import for 'trinkets' required some automated changes.\nLine 1: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted operations in 'trinket.t1.has_use_buff&((talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%%cooldown.avenging_wrath.duration=0))' to 'trinket.t1.has_use_buff&((talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t1.cooldown.duration%cooldown.avenging_wrath.duration=0))'.\nLine 2: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted operations in 'trinket.t2.has_use_buff&((talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%%cooldown.avenging_wrath.duration=0))' to 'trinket.t2.has_use_buff&((talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.t2.cooldown.duration%cooldown.avenging_wrath.duration=0))'.\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 3: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 3: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 3: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 3: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 3: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 3: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 3: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted operations in '!trinket.t1.has_use_buff&trinket.t2.has_use_buff||trinket.t2.has_use_buff&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!trinket.t1.has_use_buff&trinket.t2.has_use_buff||trinket.t2.has_use_buff&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nLine 4: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 4: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 4: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 4: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 4: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 4: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 5: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 5: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 5: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 5: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 5: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'talent.moment_of_glory_enabled' to 'talent.moment_of_glory_enabled.enabled' (1x).\nLine 6: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 6: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 6: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 6: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 7: Converted 'talent.moment_of_glory_enabled' to 'talent.moment_of_glory_enabled.enabled' (1x).\nLine 7: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 7: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 8: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 8: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 9: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 9: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'standard' required some automated changes.\nLine 5: Converted 'talent.avenging_wrath' to 'talent.avenging_wrath.enabled' (1x).\nLine 5: Converted 'talent.sentinel' to 'talent.sentinel.enabled' (1x).\n\nImported 6 action lists.\n",
					["spec"] = 66,
					["profile"] = "actions.precombat+=/devotion_aura,if=buff.paladin_aura.down\nactions.precombat+=/lights_judgment\nactions.precombat+=/arcane_torrent\nactions.precombat+=/consecration\n\n# Executed every time the actor is available.\nactions=rebuke\nactions+=/cleanse_toxins\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=trinkets\nactions+=/call_action_list,name=standard\n\nactions.cooldowns=seraphim\nactions.cooldowns+=/avenging_wrath,if=(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/sentinel,if=(buff.seraphim.up||!talent.seraphim.enabled)\nactions.cooldowns+=/potion,if=buff.aw_sentinel.up\nactions.cooldowns+=/moment_of_glory,if=(buff.avenging_wrath.remains<15||(time>10||cooldown.sentinel.remains>15||cooldown.avenging_wrath.remains>15)&(cooldown.avengers_shield.remains&cooldown.judgment.remains&cooldown.hammer_of_wrath.remains))\nactions.cooldowns+=/holy_avenger,if=buff.aw_sentinel.up||cooldown.avenging_wrath.remains>60||cooldown.sentinel.remains>60\nactions.cooldowns+=/bastion_of_light,if=buff.aw_sentinel.up\n\nactions.mitigation=shield_of_the_righteous,if=tanking&buff.shield_of_the_righteous.down&(holy_power.deficit=0||buff.divine_purpose.up)\nactions.mitigation+=/word_of_glory,if=health.pct<wog_health&(holy_power.deficit=0||buff.divine_purpose.up||buff.shining_light_free.up)\nactions.mitigation+=/guardian_of_ancient_kings,if=tanking&incoming_damage_5s>goak_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/divine_shield,if=talent.final_stand.enabled&tanking&incoming_damage_5s>ds_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/ardent_defender,if=tanking&incoming_damage_5s>goak_damage&!(buff.ardent_defender.up||buff.guardian_of_ancient_kings.up||buff.divine_shield.up||buff.potion.up)\nactions.mitigation+=/lay_on_hands,if=health.pct<15\n\nactions.standard+=/shield_of_the_righteous,if=(cooldown.seraphim.remains>=5||!talent.seraphim.enabled)&(((holy_power=3&!buff.blessing_of_dusk.up&!buff.holy_avenger.up)||(holy_power=5)||buff.bastion_of_light.up||buff.divine_purpose.up))\nactions.standard+=/avengers_shield,if=buff.moment_of_glory.up||!talent.moment_of_glory.enabled\nactions.standard+=/hammer_of_wrath,if=buff.aw_sentinel.up\nactions.standard+=/judgment,cycle_targets=1,if=charges=2||!talent.crusaders_judgment.enabled\nactions.standard+=/divine_toll,if=time>20||((!talent.seraphim.enabled||buff.seraphim.up)&(buff.aw_sentinel.up||!talent.avenging_wrath&!talent.sentinel)&(buff.moment_of_glory.up||!talent.moment_of_glory.enabled))\nactions.standard+=/avengers_shield\nactions.standard+=/hammer_of_wrath\nactions.standard+=/judgment,cycle_targets=1\nactions.standard+=/consecration,if=!consecration.up\nactions.standard+=/eye_of_tyr\nactions.standard+=/blessed_hammer\nactions.standard+=/hammer_of_the_righteous\nactions.standard+=/crusader_strike\nactions.standard+=/word_of_glory,if=buff.shining_light_free.up\nactions.standard+=/consecration\n\n# Evaluates a trinkets cooldown, divided by moment of glory or avenging wraths's cooldown. If it's value has no remainder return 1, else return 0.5.\nactions.trinkets+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=trinket.1.has_use_buff&((talent.moment_of_glory.enabled&trinket.1.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.1.cooldown.duration%%cooldown.avenging_wrath.duration=0))\nactions.trinkets+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=trinket.2.has_use_buff&((talent.moment_of_glory.enabled&trinket.2.cooldown.duration%%cooldown.moment_of_glory.duration=0)||(!talent.moment_of_glory.enabled&trinket.2.cooldown.duration%%cooldown.avenging_wrath.duration=0))\nactions.trinkets+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!trinket.1.has_use_buff&trinket.2.has_use_buff||trinket.2.has_use_buff&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\nactions.trinkets+=/variable,name=trinket_1_buffs,value=trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit\nactions.trinkets+=/variable,name=trinket_2_buffs,value=trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit\nactions.trinkets+=/use_item,slot=trinket1,if=(buff.moment_of_glory.up||!talent.moment_of_glory_enabled&buff.aw_sentinel.up)&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1)||boss&trinket.1.proc.any_dps.duration>=fight_remains\nactions.trinkets+=/use_item,slot=trinket2,if=(buff.moment_of_glory.up||!talent.moment_of_glory_enabled&buff.aw_sentinel.up)&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2)||boss&trinket.2.proc.any_dps.duration>=fight_remains\nactions.trinkets+=/use_item,slot=trinket1,if=!variable.trinket_1_buffs&(trinket.2.cooldown.remains||!variable.trinket_2_buffs||(cooldown.moment_of_glory.remains>20||(!talent.moment_of_glory.enabled&(cooldown.sentinel.remains>20||cooldown.avenging_wrath.remains>20))))\nactions.trinkets+=/use_item,slot=trinket2,if=!variable.trinket_2_buffs&(trinket.1.cooldown.remains||!variable.trinket_1_buffs||(cooldown.moment_of_glory.remains>20||(!talent.moment_of_glory.enabled&(cooldown.sentinel.remains>20||cooldown.avenging_wrath.remains>20))))\nactions.trinkets+=/use_items",
				},
				["Retribution"] = {
					["builtIn"] = true,
					["date"] = 20230205,
					["spec"] = 70,
					["desc"] = "",
					["profile"] = "actions.precombat+=/arcane_torrent,if=talent.final_reckoning&talent.seraphim\nactions.precombat+=/shield_of_vengeance\nactions.precombat+=/variable,name=trinket_1_buffs,value=trinket.1.has_buff.strength||trinket.1.has_buff.mastery||trinket.1.has_buff.versatility||trinket.1.has_buff.haste||trinket.1.has_buff.crit\nactions.precombat+=/variable,name=trinket_2_buffs,value=trinket.2.has_buff.strength||trinket.2.has_buff.mastery||trinket.2.has_buff.versatility||trinket.2.has_buff.haste||trinket.2.has_buff.crit\nactions.precombat+=/variable,name=trinket_1_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_1_buffs&(trinket.1.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.1.cooldown.duration=0||trinket.1.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.1.cooldown.duration=0)\nactions.precombat+=/variable,name=trinket_2_sync,op=setif,value=1,value_else=0.5,condition=variable.trinket_2_buffs&(trinket.2.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.2.cooldown.duration=0||trinket.2.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.2.cooldown.duration=0)\nactions.precombat+=/variable,name=trinket_priority,op=setif,value=2,value_else=1,condition=!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.2.cooldown.duration%trinket.2.proc.any_dps.duration)*(1.5+trinket.2.has_buff.strength)*(variable.trinket_2_sync))>((trinket.1.cooldown.duration%trinket.1.proc.any_dps.duration)*(1.5+trinket.1.has_buff.strength)*(variable.trinket_1_sync))\n\n# Executed every time the actor is available.\nactions+=/rebuke\nactions+=/call_action_list,name=cooldowns\nactions+=/call_action_list,name=es_fr_pooling,if=(!raid_event.adds.exists||raid_event.adds.up||raid_event.adds.in<9||raid_event.adds.in>30)&(talent.execution_sentence&cooldown.execution_sentence.remains<9&spell_targets.divine_storm<5||talent.final_reckoning&cooldown.final_reckoning.remains<9)&(!buff.crusade.up||buff.crusade.stack=10)&fight_remains>8\nactions+=/call_action_list,name=es_fr_active,if=debuff.execution_sentence.up||debuff.final_reckoning.up\nactions+=/call_action_list,name=generators\n\nactions.cooldowns=potion,if=buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10||fight_remains<25\nactions.cooldowns+=/lights_judgment,if=spell_targets.lights_judgment>=2||!raid_event.adds.exists||raid_event.adds.in>75||raid_event.adds.up\nactions.cooldowns+=/fireblood,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10)&!talent.execution_sentence\nactions.cooldowns+=/use_item,name=algethar_puzzle_box,if=(cooldown.avenging_wrath.remains<5&!talent.crusade||cooldown.crusade.remains<5&talent.crusade)&(holy_power>=5&time<5||holy_power>=3&time>5)\nactions.cooldowns+=/use_item,slot=trinket1,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10)&(!trinket.2.has_cooldown||trinket.2.cooldown.remains||variable.trinket_priority=1)||trinket.1.proc.any_dps.duration>=fight_remains\nactions.cooldowns+=/use_item,slot=trinket2,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10)&(!trinket.1.has_cooldown||trinket.1.cooldown.remains||variable.trinket_priority=2)||trinket.2.proc.any_dps.duration>=fight_remains\nactions.cooldowns+=/use_item,slot=trinket1,if=!variable.trinket_1_buffs&(trinket.2.cooldown.remains||!variable.trinket_2_buffs||!buff.crusade.up&cooldown.crusade.remains>20||!buff.avenging_wrath.up&cooldown.avenging_wrath.remains>20)\nactions.cooldowns+=/use_item,slot=trinket2,if=!variable.trinket_2_buffs&(trinket.1.cooldown.remains||!variable.trinket_1_buffs||!buff.crusade.up&cooldown.crusade.remains>20||!buff.avenging_wrath.up&cooldown.avenging_wrath.remains>20)\nactions.cooldowns+=/use_items,if=(buff.avenging_wrath.up||buff.crusade.up&buff.crusade.stack=10)\nactions.cooldowns+=/shield_of_vengeance,if=(!talent.execution_sentence||cooldown.execution_sentence.remains<52)&fight_remains>15\nactions.cooldowns+=/avenging_wrath,if=((holy_power>=4&time<5||holy_power>=3&time>5)||talent.holy_avenger&cooldown.holy_avenger.remains=0)&(!talent.seraphim||!talent.final_reckoning||cooldown.seraphim.remains>0)\nactions.cooldowns+=/crusade,if=holy_power>=5&time<5||holy_power>=3&time>5\nactions.cooldowns+=/holy_avenger,if=time_to_hpg=0&holy_power<=2&(buff.avenging_wrath.up||talent.crusade&(cooldown.crusade.remains=0||buff.crusade.up)||fight_remains<20)\nactions.cooldowns+=/final_reckoning,if=(holy_power>=4&time<8||holy_power>=3&time>=8)&(cooldown.avenging_wrath.remains>gcd||cooldown.crusade.remains&(!buff.crusade.up||buff.crusade.stack>=10))&(time_to_hpg>0||holy_power=5)&(!talent.seraphim||buff.seraphim.up)&(!raid_event.adds.exists||raid_event.adds.up||raid_event.adds.in>40)&(!buff.avenging_wrath.up||holy_power=5||cooldown.hammer_of_wrath.remains)\n\nactions.es_fr_active=fireblood\nactions.es_fr_active+=/call_action_list,name=finishers,if=holy_power=5||debuff.judgment.up||debuff.final_reckoning.up&(debuff.final_reckoning.remains<gcd.max||spell_targets.divine_storm>=2&!talent.execution_sentence)||debuff.execution_sentence.up&debuff.execution_sentence.remains<gcd.max\nactions.es_fr_active+=/divine_toll,if=holy_power<=2\nactions.es_fr_active+=/wake_of_ashes,if=holy_power<=2&(debuff.final_reckoning.up&debuff.final_reckoning.remains<gcd*2&!talent.divine_resonance||debuff.execution_sentence.up&debuff.execution_sentence.remains<gcd||spell_targets.divine_storm>=5&talent.divine_resonance&talent.execution_sentence)\nactions.es_fr_active+=/blade_of_justice,if=talent.expurgation&(!talent.divine_resonance&holy_power<=3||holy_power<=2)\nactions.es_fr_active+=/judgment,if=!debuff.judgment.up&holy_power>=2\nactions.es_fr_active+=/call_action_list,name=finishers\nactions.es_fr_active+=/wake_of_ashes,if=holy_power<=2\nactions.es_fr_active+=/blade_of_justice,if=holy_power<=3\nactions.es_fr_active+=/judgment,if=!debuff.judgment.up\nactions.es_fr_active+=/hammer_of_wrath\nactions.es_fr_active+=/crusader_strike\nactions.es_fr_active+=/arcane_torrent\nactions.es_fr_active+=/exorcism,if=active_enemies=1||consecration.up\nactions.es_fr_active+=/consecration\n\nactions.es_fr_pooling+=/seraphim,if=holy_power=5&(!talent.final_reckoning||cooldown.final_reckoning.remains<=gcd*3||cooldown.final_reckoning.remains>action_cooldown)&(!talent.execution_sentence||cooldown.execution_sentence.remains<=gcd*3||cooldown.execution_sentence.remains>action_cooldown||talent.final_reckoning)\nactions.es_fr_pooling+=/call_action_list,name=finishers,if=holy_power=5||debuff.final_reckoning.up||buff.crusade.up&buff.crusade.stack<10\nactions.es_fr_pooling+=/hammer_of_wrath,if=talent.vanguards_momentum\nactions.es_fr_pooling+=/wake_of_ashes,if=holy_power<=2&talent.ashes_to_dust&(cooldown.crusade.remains||cooldown.avenging_wrath.remains)\nactions.es_fr_pooling+=/blade_of_justice,if=holy_power<=3\nactions.es_fr_pooling+=/judgment,if=!debuff.judgment.up\nactions.es_fr_pooling+=/hammer_of_wrath\nactions.es_fr_pooling+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2)\nactions.es_fr_pooling+=/seraphim,if=!talent.final_reckoning&(cooldown.execution_sentence.remains<=gcd*3||cooldown.execution_sentence.remains>action_cooldown)\nactions.es_fr_pooling+=/call_action_list,name=finishers\nactions.es_fr_pooling+=/crusader_strike\nactions.es_fr_pooling+=/arcane_torrent,if=holy_power<=4\nactions.es_fr_pooling+=/exorcism,if=active_enemies=1||consecration.up\nactions.es_fr_pooling+=/seraphim,if=(!talent.final_reckoning||cooldown.final_reckoning.remains<=gcd*3||cooldown.final_reckoning.remains>action_cooldown)&(!talent.execution_sentence||cooldown.execution_sentence.remains<=gcd*3||cooldown.execution_sentence.remains>action_cooldown||talent.final_reckoning)\nactions.es_fr_pooling+=/consecration\n\nactions.finishers+=/variable,name=ds_castable,value=spell_targets.divine_storm>=2||buff.empyrean_power.up&!debuff.judgment.up&!buff.divine_purpose.up||buff.crusade.up&buff.crusade.stack<10&buff.empyrean_legacy.up&!talent.justicars_vengeance\nactions.finishers+=/seraphim,if=(cooldown.avenging_wrath.remains>15||cooldown.crusade.remains>15)&(!talent.final_reckoning||cooldown.final_reckoning.remains>action_cooldown)&(!talent.execution_sentence||cooldown.execution_sentence.remains>action_cooldown||spell_targets.divine_storm>=5)&(!raid_event.adds.exists||raid_event.adds.in>40||raid_event.adds.in<gcd||raid_event.adds.up)||boss&fight_remains<15&fight_remains>5||buff.crusade.up&buff.crusade.stack<10\nactions.finishers+=/execution_sentence,if=(buff.crusade.down&cooldown.crusade.remains>10||buff.crusade.stack>=3||cooldown.avenging_wrath.remains>10)&(!talent.final_reckoning||cooldown.final_reckoning.remains>10)&target.time_to_die>8&(spell_targets.divine_storm<5||talent.executioners_wrath)\nactions.finishers+=/radiant_decree,if=(buff.crusade.down&cooldown.crusade.remains>5||buff.crusade.stack>=3||cooldown.avenging_wrath.remains>5)&(!talent.final_reckoning||cooldown.final_reckoning.remains>5)\nactions.finishers+=/divine_storm,if=variable.ds_castable&(!buff.empyrean_legacy.up||buff.crusade.up&buff.crusade.stack<10)&((!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.execution_sentence||cooldown.execution_sentence.remains>gcd*6||cooldown.execution_sentence.remains>gcd*4&holy_power>=4||target.time_to_die<8||spell_targets.divine_storm>=5||!talent.seraphim&cooldown.execution_sentence.remains>gcd*2)&(!talent.final_reckoning||cooldown.final_reckoning.remains>gcd*6||cooldown.final_reckoning.remains>gcd*4&holy_power>=4||talent.seraphim&cooldown.seraphim.remains>gcd*6||!talent.seraphim&cooldown.final_reckoning.remains>gcd*2)||talent.holy_avenger&cooldown.holy_avenger.remains<gcd*3||buff.holy_avenger.up||buff.crusade.up&buff.crusade.stack<10)\nactions.finishers+=/justicars_vengeance,if=((!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.execution_sentence||cooldown.execution_sentence.remains>gcd*6||cooldown.execution_sentence.remains>gcd*4&holy_power>=4||target.time_to_die<8||!talent.seraphim&cooldown.execution_sentence.remains>gcd*2)&(!talent.final_reckoning||cooldown.final_reckoning.remains>gcd*6||cooldown.final_reckoning.remains>gcd*4&holy_power>=4||talent.seraphim&cooldown.seraphim.remains>gcd*6||!talent.seraphim&cooldown.final_reckoning.remains>gcd*2)||talent.holy_avenger&cooldown.holy_avenger.remains<gcd*3||buff.holy_avenger.up||buff.crusade.up&buff.crusade.stack<10)&!buff.empyrean_legacy.up\nactions.finishers+=/templars_verdict,if=(!talent.crusade||cooldown.crusade.remains>gcd*3)&(!talent.execution_sentence||cooldown.execution_sentence.remains>gcd*6||cooldown.execution_sentence.remains>gcd*4&holy_power>=4||target.time_to_die<8||!talent.seraphim&cooldown.execution_sentence.remains>gcd*2)&(!talent.final_reckoning||cooldown.final_reckoning.remains>gcd*6||cooldown.final_reckoning.remains>gcd*4&holy_power>=4||talent.seraphim&cooldown.seraphim.remains>gcd*6||!talent.seraphim&cooldown.final_reckoning.remains>gcd*2)||talent.holy_avenger&cooldown.holy_avenger.remains<gcd*3||buff.holy_avenger.up||buff.crusade.up&buff.crusade.stack<10\n\nactions.generators=call_action_list,name=finishers,if=holy_power=5||(debuff.judgment.up||holy_power=4)&buff.divine_resonance.up||buff.holy_avenger.up\nactions.generators+=/vanquishers_hammer,if=!runeforge.dutybound_gavel||!talent.final_reckoning&!talent.execution_sentence||fight_remains<8\nactions.generators+=/hammer_of_wrath,if=talent.zealots_paragon\nactions.generators+=/wake_of_ashes,if=holy_power<=2&talent.ashes_to_dust&(cooldown.avenging_wrath.remains||cooldown.crusade.remains)\nactions.generators+=/divine_toll,if=holy_power<=2&!debuff.judgment.up&(!talent.seraphim||buff.seraphim.up||cooldown.seraphim.remains>15||settings.desync_toll&action.seraphim.disabled)&(!raid_event.adds.exists||raid_event.adds.in>30||raid_event.adds.up)&(!talent.final_reckoning||settings.desync_toll&action.final_reckoning.disabled)&(!talent.execution_sentence||settings.desync_toll&action.execution_sentence.disabled||boss&fight_remains<8||spell_targets.divine_storm>=5)&(cooldown.avenging_wrath.remains>15||cooldown.crusade.remains>15||settings.desync_toll&(!talent.crusade&action.crusade.disabled||action.avenging_wrath.disabled)||boss&fight_remains<8)\nactions.generators+=/judgment,if=!debuff.judgment.up&holy_power>=2\nactions.generators+=/wake_of_ashes,if=(holy_power=0||holy_power<=2&cooldown.blade_of_justice.remains>gcd*2)&(!raid_event.adds.exists||raid_event.adds.in>20||raid_event.adds.up)&(!talent.seraphim||cooldown.seraphim.remains>5)&(!talent.execution_sentence||cooldown.execution_sentence.remains>15||target.time_to_die<8||spell_targets.divine_storm>=5)&(!talent.final_reckoning||cooldown.final_reckoning.remains>15||fight_remains<8)&(cooldown.avenging_wrath.remains||cooldown.crusade.remains)\nactions.generators+=/call_action_list,name=finishers,if=holy_power>=3&buff.crusade.up&buff.crusade.stack<10\nactions.generators+=/exorcism,if=active_enemies=1||consecration.up\nactions.generators+=/judgment,if=!debuff.judgment.up\nactions.generators+=/hammer_of_wrath\nactions.generators+=/blade_of_justice,if=holy_power<=3\nactions.generators+=/call_action_list,name=finishers,if=(target.health.pct<=20||buff.avenging_wrath.up||buff.crusade.up||buff.empyrean_power.up)\nactions.generators+=/consecration,if=!consecration.up&spell_targets.divine_storm>=2\nactions.generators+=/crusader_strike,if=cooldown.crusader_strike.charges_fractional>=1.75&(holy_power<=2||holy_power<=3&cooldown.blade_of_justice.remains>gcd*2||holy_power=4&cooldown.blade_of_justice.remains>gcd*2&cooldown.judgment.remains>gcd*2)\nactions.generators+=/call_action_list,name=finishers\nactions.generators+=/consecration,if=!consecration.up\nactions.generators+=/crusader_strike\nactions.generators+=/arcane_torrent\nactions.generators+=/consecration",
					["version"] = 20230205,
					["warnings"] = "The import for 'generators' required some automated changes.\nLine 2: Converted 'runeforge.dutybound_gavel' to 'runeforge.dutybound_gavel.enabled' (1x).\nLine 2: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 2: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 3: Converted 'talent.zealots_paragon' to 'talent.zealots_paragon.enabled' (1x).\nLine 4: Converted 'talent.ashes_to_dust' to 'talent.ashes_to_dust.enabled' (1x).\nLine 5: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 5: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 5: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 5: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 7: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 7: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 7: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 3: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 1: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 3: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_buff.mastery' (1x).\nLine 3: Converted 'trinket.1.has_buff.mastery' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_buff.versatility' (1x).\nLine 3: Converted 'trinket.1.has_buff.versatility' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_buff.haste' (1x).\nLine 3: Converted 'trinket.1.has_buff.haste' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_buff.crit' (1x).\nLine 3: Converted 'trinket.1.has_buff.crit' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 4: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_buff.mastery' (1x).\nLine 4: Converted 'trinket.2.has_buff.mastery' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_buff.versatility' (1x).\nLine 4: Converted 'trinket.2.has_buff.versatility' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_buff.haste' (1x).\nLine 4: Converted 'trinket.2.has_buff.haste' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_buff.crit' (1x).\nLine 4: Converted 'trinket.2.has_buff.crit' to 'trinket.t2.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted operations in 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.t1.cooldown.duration=0||trinket.t1.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.t1.cooldown.duration=0)' to 'variable.trinket_1_buffs&(trinket.t1.cooldown.duration%cooldown.crusade.duration=0||cooldown.crusade.duration%trinket.t1.cooldown.duration=0||trinket.t1.cooldown.duration%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%trinket.t1.cooldown.duration=0)'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted operations in 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%%cooldown.crusade.duration=0||cooldown.crusade.duration%%trinket.t2.cooldown.duration=0||trinket.t2.cooldown.duration%%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%%trinket.t2.cooldown.duration=0)' to 'variable.trinket_2_buffs&(trinket.t2.cooldown.duration%cooldown.crusade.duration=0||cooldown.crusade.duration%trinket.t2.cooldown.duration=0||trinket.t2.cooldown.duration%cooldown.avenging_wrath.duration=0||cooldown.avenging_wrath.duration%trinket.t2.cooldown.duration=0)'.\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 7: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_buff.strength' (1x).\nLine 7: Converted 'trinket.2.has_buff.strength' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 7: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 7: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 7: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 7: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_buff.strength' (1x).\nLine 7: Converted 'trinket.1.has_buff.strength' to 'trinket.t1.has_use_buff' (1x).\nLine 7: Converted operations in '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration%trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration%trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))' to '!variable.trinket_1_buffs&variable.trinket_2_buffs||variable.trinket_2_buffs&((trinket.t2.cooldown.duration/trinket.t2.buff_duration)*(1.5+trinket.t2.has_use_buff)*(variable.trinket_2_sync))>((trinket.t1.cooldown.duration/trinket.t1.buff_duration)*(1.5+trinket.t1.has_use_buff)*(variable.trinket_1_sync))'.\nThe following auras were used in the action list but were not found in the addon database:\n - crit\n\nThe import for 'cooldowns' required some automated changes.\nLine 3: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 4: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 5: Converted 'trinket.2.has_cooldown' to 'trinket.t2.has_cooldown' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 5: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 5: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.proc.any_dps.duration' (1x).\nLine 5: Converted 'trinket.1.proc.any_dps.duration' to 'trinket.t1.buff_duration' (1x).\nLine 6: Converted 'trinket.1.has_cooldown' to 'trinket.t1.has_cooldown' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 6: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 6: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.proc.any_dps.duration' (1x).\nLine 6: Converted 'trinket.2.proc.any_dps.duration' to 'trinket.t2.buff_duration' (1x).\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains' (1x).\nLine 7: Converted 'trinket.2.cooldown.remains' to 'trinket.t2.cooldown.remains'.\nLine 8: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains' (1x).\nLine 8: Converted 'trinket.1.cooldown.remains' to 'trinket.t1.cooldown.remains'.\nLine 10: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 11: Converted 'talent.holy_avenger' to 'talent.holy_avenger.enabled' (1x).\nLine 11: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 11: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 13: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 14: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\n\nThe import for 'finishers' required some automated changes.\nLine 1: Converted 'talent.justicars_vengeance' to 'talent.justicars_vengeance.enabled' (1x).\nLine 2: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 2: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 3: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 3: Converted 'talent.executioners_wrath' to 'talent.executioners_wrath.enabled' (1x).\nLine 4: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 5: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 5: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 5: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 5: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 5: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 5: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 5: Converted 'talent.holy_avenger' to 'talent.holy_avenger.enabled' (1x).\nLine 6: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 6: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 6: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 6: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 6: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 6: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 6: Converted 'talent.holy_avenger' to 'talent.holy_avenger.enabled' (1x).\nLine 7: Converted 'talent.crusade' to 'talent.crusade.enabled' (1x).\nLine 7: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 7: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 7: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 7: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 7: Converted 'talent.seraphim' to 'talent.seraphim.enabled' (1x).\nLine 7: Converted 'talent.holy_avenger' to 'talent.holy_avenger.enabled' (1x).\n\nThe import for 'es_fr_active' required some automated changes.\nLine 2: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 4: Converted 'talent.divine_resonance' to 'talent.divine_resonance.enabled' (1x).\nLine 4: Converted 'talent.divine_resonance' to 'talent.divine_resonance.enabled' (1x).\nLine 4: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 5: Converted 'talent.expurgation' to 'talent.expurgation.enabled' (1x).\nLine 5: Converted 'talent.divine_resonance' to 'talent.divine_resonance.enabled' (1x).\n\nThe import for 'es_fr_pooling' required some automated changes.\nLine 1: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 1: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 1: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 3: Converted 'talent.vanguards_momentum' to 'talent.vanguards_momentum.enabled' (1x).\nLine 4: Converted 'talent.ashes_to_dust' to 'talent.ashes_to_dust.enabled' (1x).\nLine 9: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 14: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\nLine 14: Converted 'talent.execution_sentence' to 'talent.execution_sentence.enabled' (1x).\nLine 14: Converted 'talent.final_reckoning' to 'talent.final_reckoning.enabled' (1x).\n\nImported 7 action lists.\n",
					["author"] = "SimC",
					["lists"] = {
						["generators"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "holy_power = 5 || ( debuff.judgment.up || holy_power = 4 ) & buff.divine_resonance.up || buff.holy_avenger.up",
								["list_name"] = "finishers",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! runeforge.dutybound_gavel.enabled || ! talent.final_reckoning.enabled & ! talent.execution_sentence.enabled || fight_remains < 8",
								["action"] = "vanquishers_hammer",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.zealots_paragon.enabled",
								["action"] = "hammer_of_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & talent.ashes_to_dust.enabled & ( cooldown.avenging_wrath.remains || cooldown.crusade.remains )",
								["action"] = "wake_of_ashes",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ! debuff.judgment.up & ( ! talent.seraphim.enabled || buff.seraphim.up || cooldown.seraphim.remains > 15 || settings.desync_toll & action.seraphim.disabled ) & ( ! raid_event.adds.exists || raid_event.adds.in > 30 || raid_event.adds.up ) & ( ! talent.final_reckoning.enabled || settings.desync_toll & action.final_reckoning.disabled ) & ( ! talent.execution_sentence.enabled || settings.desync_toll & action.execution_sentence.disabled || boss & fight_remains < 8 || spell_targets.divine_storm >= 5 ) & ( cooldown.avenging_wrath.remains > 15 || cooldown.crusade.remains > 15 || settings.desync_toll & ( ! talent.crusade.enabled & action.crusade.disabled || action.avenging_wrath.disabled ) || boss & fight_remains < 8 )",
								["action"] = "divine_toll",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up & holy_power >= 2",
								["action"] = "judgment",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power = 0 || holy_power <= 2 & cooldown.blade_of_justice.remains > gcd.max * 2 ) & ( ! raid_event.adds.exists || raid_event.adds.in > 20 || raid_event.adds.up ) & ( ! talent.seraphim.enabled || cooldown.seraphim.remains > 5 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > 15 || target.time_to_die < 8 || spell_targets.divine_storm >= 5 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > 15 || fight_remains < 8 ) & ( cooldown.avenging_wrath.remains || cooldown.crusade.remains )",
								["action"] = "wake_of_ashes",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "holy_power >= 3 & buff.crusade.up & buff.crusade.stack < 10",
								["list_name"] = "finishers",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || consecration.up",
								["action"] = "exorcism",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up",
								["action"] = "judgment",
							}, -- [10]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3",
								["action"] = "blade_of_justice",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "( target.health.pct <= 20 || buff.avenging_wrath.up || buff.crusade.up || buff.empyrean_power.up )",
								["list_name"] = "finishers",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up & spell_targets.divine_storm >= 2",
								["action"] = "consecration",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd.max * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd.max * 2 & cooldown.judgment.remains > gcd.max * 2 )",
								["action"] = "crusader_strike",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "! consecration.up",
								["action"] = "consecration",
							}, -- [17]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [20]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "rebuke",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "( ! raid_event.adds.exists || raid_event.adds.up || raid_event.adds.in < 9 || raid_event.adds.in > 30 ) & ( talent.execution_sentence.enabled & cooldown.execution_sentence.remains < 9 & spell_targets.divine_storm < 5 || talent.final_reckoning.enabled & cooldown.final_reckoning.remains < 9 ) & ( ! buff.crusade.up || buff.crusade.stack = 10 ) & fight_remains > 8",
								["list_name"] = "es_fr_pooling",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "debuff.execution_sentence.up || debuff.final_reckoning.up",
								["list_name"] = "es_fr_active",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generators",
							}, -- [5]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.final_reckoning.enabled & talent.seraphim.enabled",
								["action"] = "arcane_torrent",
							}, -- [1]
							{
								["action"] = "shield_of_vengeance",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff || trinket.t1.has_use_buff",
								["var_name"] = "trinket_1_buffs",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff || trinket.t2.has_use_buff",
								["var_name"] = "trinket_2_buffs",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_1_sync",
								["value"] = "1",
								["value_else"] = "0.5",
								["criteria"] = "variable.trinket_1_buffs & ( trinket.t1.cooldown.duration % cooldown.crusade.duration = 0 || cooldown.crusade.duration % trinket.t1.cooldown.duration = 0 || trinket.t1.cooldown.duration % cooldown.avenging_wrath.duration = 0 || cooldown.avenging_wrath.duration % trinket.t1.cooldown.duration = 0 )",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_2_sync",
								["value"] = "1",
								["value_else"] = "0.5",
								["criteria"] = "variable.trinket_2_buffs & ( trinket.t2.cooldown.duration % cooldown.crusade.duration = 0 || cooldown.crusade.duration % trinket.t2.cooldown.duration = 0 || trinket.t2.cooldown.duration % cooldown.avenging_wrath.duration = 0 || cooldown.avenging_wrath.duration % trinket.t2.cooldown.duration = 0 )",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "trinket_priority",
								["value"] = "2",
								["value_else"] = "1",
								["criteria"] = "! variable.trinket_1_buffs & variable.trinket_2_buffs || variable.trinket_2_buffs & ( ( trinket.t2.cooldown.duration / trinket.t2.buff_duration ) * ( 1.5 + trinket.t2.has_use_buff ) * ( variable.trinket_2_sync ) ) > ( ( trinket.t1.cooldown.duration / trinket.t1.buff_duration ) * ( 1.5 + trinket.t1.has_use_buff ) * ( variable.trinket_1_sync ) )",
							}, -- [7]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 || fight_remains < 25",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.lights_judgment >= 2 || ! raid_event.adds.exists || raid_event.adds.in > 75 || raid_event.adds.up",
								["action"] = "lights_judgment",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 ) & ! talent.execution_sentence.enabled",
								["action"] = "fireblood",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "algethar_puzzle_box",
								["criteria"] = "( cooldown.avenging_wrath.remains < 5 & ! talent.crusade.enabled || cooldown.crusade.remains < 5 & talent.crusade.enabled ) & ( holy_power >= 5 & time < 5 || holy_power >= 3 & time > 5 )",
								["name"] = "algethar_puzzle_box",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 ) & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.remains || variable.trinket_priority = 1 ) || trinket.t1.buff_duration >= fight_remains",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 ) & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.remains || variable.trinket_priority = 2 ) || trinket.t2.buff_duration >= fight_remains",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_1_buffs & ( trinket.t2.cooldown.remains || ! variable.trinket_2_buffs || ! buff.crusade.up & cooldown.crusade.remains > 20 || ! buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 20 )",
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! variable.trinket_2_buffs & ( trinket.t1.cooldown.remains || ! variable.trinket_1_buffs || ! buff.crusade.up & cooldown.crusade.remains > 20 || ! buff.avenging_wrath.up & cooldown.avenging_wrath.remains > 20 )",
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.avenging_wrath.up || buff.crusade.up & buff.crusade.stack = 10 )",
								["action"] = "use_items",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains < 52 ) & fight_remains > 15",
								["action"] = "shield_of_vengeance",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( ( holy_power >= 4 & time < 5 || holy_power >= 3 & time > 5 ) || talent.holy_avenger.enabled & cooldown.holy_avenger.remains = 0 ) & ( ! talent.seraphim.enabled || ! talent.final_reckoning.enabled || cooldown.seraphim.remains > 0 )",
								["action"] = "avenging_wrath",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 5 & time < 5 || holy_power >= 3 & time > 5",
								["action"] = "crusade",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "time_to_hpg = 0 & holy_power <= 2 & ( buff.avenging_wrath.up || talent.crusade.enabled & ( cooldown.crusade.remains = 0 || buff.crusade.up ) || fight_remains < 20 )",
								["action"] = "holy_avenger",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power >= 4 & time < 8 || holy_power >= 3 & time >= 8 ) & ( cooldown.avenging_wrath.remains > gcd.max || cooldown.crusade.remains & ( ! buff.crusade.up || buff.crusade.stack >= 10 ) ) & ( time_to_hpg > 0 || holy_power = 5 ) & ( ! talent.seraphim.enabled || buff.seraphim.up ) & ( ! raid_event.adds.exists || raid_event.adds.up || raid_event.adds.in > 40 ) & ( ! buff.avenging_wrath.up || holy_power = 5 || cooldown.hammer_of_wrath.remains )",
								["action"] = "final_reckoning",
							}, -- [14]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.divine_storm >= 2 || buff.empyrean_power.up & ! debuff.judgment.up & ! buff.divine_purpose.up || buff.crusade.up & buff.crusade.stack < 10 & buff.empyrean_legacy.up & ! talent.justicars_vengeance.enabled",
								["var_name"] = "ds_castable",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.avenging_wrath.remains > 15 || cooldown.crusade.remains > 15 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > action_cooldown ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > action_cooldown || spell_targets.divine_storm >= 5 ) & ( ! raid_event.adds.exists || raid_event.adds.in > 40 || raid_event.adds.in < gcd.max || raid_event.adds.up ) || boss & fight_remains < 15 & fight_remains > 5 || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "seraphim",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.crusade.down & cooldown.crusade.remains > 10 || buff.crusade.stack >= 3 || cooldown.avenging_wrath.remains > 10 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > 10 ) & target.time_to_die > 8 & ( spell_targets.divine_storm < 5 || talent.executioners_wrath.enabled )",
								["action"] = "execution_sentence",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.crusade.down & cooldown.crusade.remains > 5 || buff.crusade.stack >= 3 || cooldown.avenging_wrath.remains > 5 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > 5 )",
								["action"] = "radiant_decree",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.ds_castable & ( ! buff.empyrean_legacy.up || buff.crusade.up & buff.crusade.stack < 10 ) & ( ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd.max * 6 || cooldown.execution_sentence.remains > gcd.max * 4 & holy_power >= 4 || target.time_to_die < 8 || spell_targets.divine_storm >= 5 || ! talent.seraphim.enabled & cooldown.execution_sentence.remains > gcd.max * 2 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > gcd.max * 6 || cooldown.final_reckoning.remains > gcd.max * 4 & holy_power >= 4 || talent.seraphim.enabled & cooldown.seraphim.remains > gcd.max * 6 || ! talent.seraphim.enabled & cooldown.final_reckoning.remains > gcd.max * 2 ) || talent.holy_avenger.enabled & cooldown.holy_avenger.remains < gcd.max * 3 || buff.holy_avenger.up || buff.crusade.up & buff.crusade.stack < 10 )",
								["action"] = "divine_storm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ( ! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd.max * 6 || cooldown.execution_sentence.remains > gcd.max * 4 & holy_power >= 4 || target.time_to_die < 8 || ! talent.seraphim.enabled & cooldown.execution_sentence.remains > gcd.max * 2 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > gcd.max * 6 || cooldown.final_reckoning.remains > gcd.max * 4 & holy_power >= 4 || talent.seraphim.enabled & cooldown.seraphim.remains > gcd.max * 6 || ! talent.seraphim.enabled & cooldown.final_reckoning.remains > gcd.max * 2 ) || talent.holy_avenger.enabled & cooldown.holy_avenger.remains < gcd.max * 3 || buff.holy_avenger.up || buff.crusade.up & buff.crusade.stack < 10 ) & ! buff.empyrean_legacy.up",
								["action"] = "justicars_vengeance",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.crusade.enabled || cooldown.crusade.remains > gcd.max * 3 ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains > gcd.max * 6 || cooldown.execution_sentence.remains > gcd.max * 4 & holy_power >= 4 || target.time_to_die < 8 || ! talent.seraphim.enabled & cooldown.execution_sentence.remains > gcd.max * 2 ) & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains > gcd.max * 6 || cooldown.final_reckoning.remains > gcd.max * 4 & holy_power >= 4 || talent.seraphim.enabled & cooldown.seraphim.remains > gcd.max * 6 || ! talent.seraphim.enabled & cooldown.final_reckoning.remains > gcd.max * 2 ) || talent.holy_avenger.enabled & cooldown.holy_avenger.remains < gcd.max * 3 || buff.holy_avenger.up || buff.crusade.up & buff.crusade.stack < 10",
								["action"] = "templars_verdict",
							}, -- [7]
						},
						["es_fr_active"] = {
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "holy_power = 5 || debuff.judgment.up || debuff.final_reckoning.up & ( debuff.final_reckoning.remains < gcd.max || spell_targets.divine_storm >= 2 & ! talent.execution_sentence.enabled ) || debuff.execution_sentence.up & debuff.execution_sentence.remains < gcd.max",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2",
								["action"] = "divine_toll",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & ( debuff.final_reckoning.up & debuff.final_reckoning.remains < gcd.max * 2 & ! talent.divine_resonance.enabled || debuff.execution_sentence.up & debuff.execution_sentence.remains < gcd.max || spell_targets.divine_storm >= 5 & talent.divine_resonance.enabled & talent.execution_sentence.enabled )",
								["action"] = "wake_of_ashes",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.expurgation.enabled & ( ! talent.divine_resonance.enabled & holy_power <= 3 || holy_power <= 2 )",
								["action"] = "blade_of_justice",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up & holy_power >= 2",
								["action"] = "judgment",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2",
								["action"] = "wake_of_ashes",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3",
								["action"] = "blade_of_justice",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up",
								["action"] = "judgment",
							}, -- [10]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || consecration.up",
								["action"] = "exorcism",
							}, -- [14]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [15]
						},
						["es_fr_pooling"] = {
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 5 & ( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains <= gcd.max * 3 || cooldown.final_reckoning.remains > action_cooldown ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains <= gcd.max * 3 || cooldown.execution_sentence.remains > action_cooldown || talent.final_reckoning.enabled )",
								["action"] = "seraphim",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "holy_power = 5 || debuff.final_reckoning.up || buff.crusade.up & buff.crusade.stack < 10",
								["list_name"] = "finishers",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.vanguards_momentum.enabled",
								["action"] = "hammer_of_wrath",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 2 & talent.ashes_to_dust.enabled & ( cooldown.crusade.remains || cooldown.avenging_wrath.remains )",
								["action"] = "wake_of_ashes",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 3",
								["action"] = "blade_of_justice",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.judgment.up",
								["action"] = "judgment",
							}, -- [6]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.charges_fractional >= 1.75 & ( holy_power <= 2 || holy_power <= 3 & cooldown.blade_of_justice.remains > gcd.max * 2 || holy_power = 4 & cooldown.blade_of_justice.remains > gcd.max * 2 & cooldown.judgment.remains > gcd.max * 2 )",
								["action"] = "crusader_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.final_reckoning.enabled & ( cooldown.execution_sentence.remains <= gcd.max * 3 || cooldown.execution_sentence.remains > action_cooldown )",
								["action"] = "seraphim",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "finishers",
							}, -- [10]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power <= 4",
								["action"] = "arcane_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || consecration.up",
								["action"] = "exorcism",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.final_reckoning.enabled || cooldown.final_reckoning.remains <= gcd.max * 3 || cooldown.final_reckoning.remains > action_cooldown ) & ( ! talent.execution_sentence.enabled || cooldown.execution_sentence.remains <= gcd.max * 3 || cooldown.execution_sentence.remains > action_cooldown || talent.final_reckoning.enabled )",
								["action"] = "seraphim",
							}, -- [14]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [15]
						},
					},
				},
				["Preservation"] = {
					["builtIn"] = true,
					["date"] = 20230205,
					["author"] = "Hekili",
					["lists"] = {
						["default"] = {
							{
								["action"] = "quell",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "cauterizing_flame",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "unravel",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "deep_breath",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "fight_remains > 14 + cast_time",
								["empower_to"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "fight_remains > 8 + cast_time",
								["empower_to"] = 2,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "fight_remains > 2 + cast_time",
								["empower_to"] = 3,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "fire_breath",
								["criteria"] = "fight_remains > cast_time",
								["empower_to"] = 4,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "hover",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.essence_burst.up & ( ! moving || buff.hover.remains > cast_time )",
								["action"] = "disintegrate",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! moving || buff.hover.remains > cast_time",
								["action"] = "living_flame",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "moving & buff.hover.down",
								["action"] = "azure_strike",
							}, -- [14]
						},
						["precombat"] = {
							{
								["action"] = "blessing_of_the_bronze",
								["enabled"] = true,
							}, -- [1]
						},
					},
					["version"] = 20230205,
					["warnings"] = "Imported 2 action lists.\n",
					["profile"] = "actions.precombat+=/blessing_of_the_bronze\n\nactions+=/quell\nactions+=/cauterizing_flame\nactions+=/unravel\nactions+=/deep_breath\nactions+=/potion\nactions+=/use_items\nactions+=/fire_breath,empower_to=1,if=fight_remains>14+cast_time\nactions+=/fire_breath,empower_to=2,if=fight_remains>8+cast_time\nactions+=/fire_breath,empower_to=3,if=fight_remains>2+cast_time\nactions+=/fire_breath,empower_to=4,if=fight_remains>cast_time\nactions+=/hover,if=moving\nactions+=/disintegrate,if=buff.essence_burst.up&(!moving||buff.hover.remains>cast_time)\nactions+=/living_flame,if=!moving||buff.hover.remains>cast_time\nactions+=/azure_strike,if=moving&buff.hover.down",
					["spec"] = 1468,
				},
			},
		},
	},
}
