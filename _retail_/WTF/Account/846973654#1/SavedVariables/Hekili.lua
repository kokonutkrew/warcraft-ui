
HekiliDB = {
["namespaces"] = {
["LibDualSpec-1.0"] = {
},
},
["profileKeys"] = {
["Goldsquid - Area 52"] = "Default",
},
["profiles"] = {
["Default"] = {
["runOnce"] = {
["forceReloadClassDefaultOptions_20220306_269"] = true,
["forceReloadAllDefaultPriorities_20220228"] = true,
["forceEnableAllClassesOnceDueToBug_20220225"] = true,
["forceReloadClassDefaultOptions_20220306_268"] = true,
["updateMaxRefreshToNewSpecOptions_20220222"] = true,
["fixHavocPriorityVersion_20240805"] = true,
["resetAberrantPackageDates_20190728_1"] = true,
["forceReloadClassDefaultOptions_20220306_270"] = true,
["forceSpellFlashBrightness_20221030"] = true,
},
["packs"] = {
["Mistweaver"] = {
["builtIn"] = true,
["date"] = 20241105,
["spec"] = 270,
["desc"] = "Healer priorities are DPS-oriented only\n\n2024-11-06: Update Jadefire Stomp related talents\n\n2024-10-23: 11.0.5\n\n2024-09-28: Update for Teachings of the Monastery\n\n2024-07-30: The War Within",
["lists"] = {
["default"] = {
{
["action"] = "spear_hand_strike",
["enabled"] = true,
},
{
["action"] = "use_items",
["enabled"] = true,
},
{
["action"] = "blood_fury",
["enabled"] = true,
},
{
["action"] = "berserking",
["enabled"] = true,
},
{
["action"] = "lights_judgment",
["enabled"] = true,
},
{
["action"] = "fireblood",
["enabled"] = true,
},
{
["action"] = "ancestral_call",
["enabled"] = true,
},
{
["action"] = "bag_of_tricks",
["enabled"] = true,
},
{
["action"] = "potion",
["enabled"] = true,
},
{
["enabled"] = true,
["action"] = "run_action_list",
["strict"] = 1,
["criteria"] = "pet.chiji.up",
["list_name"] = "crane",
},
{
["enabled"] = true,
["criteria"] = "! settings.save_faeline || talent.awakened_jadefire.enabled & buff.awakened_jadefire.down || talent.jadefire_teachings.enabled & buff.jadefire_teachings.down",
["action"] = "jadefire_stomp",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "active_enemies >= 3",
["list_name"] = "aoe",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "active_enemies < 3",
["list_name"] = "st",
},
},
["precombat"] = {
{
["action"] = "potion",
["enabled"] = true,
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
},
["aoe"] = {
{
["enabled"] = true,
["criteria"] = "active_enemies <= 3",
["action"] = "thunder_focus_tea",
},
{
["enabled"] = true,
["criteria"] = "buff.zen_pulse.up",
["action"] = "vivify",
},
{
["enabled"] = true,
["criteria"] = "active_enemies <= 3 || settings.aoe_rsk",
["action"] = "rising_sun_kick",
},
{
["enabled"] = true,
["criteria"] = "talent.awakened_jadefire.enabled & buff.jadefire_stomp.up & buff.teachings_of_the_monastery.stack < 4 || buff.teachings_of_the_monastery.stack < 1",
["action"] = "tiger_palm",
},
{
["enabled"] = true,
["criteria"] = "cooldown.rising_sun_kick.remains > 2 * gcd.max & ( buff.teachings_of_the_monastery.stack > 3 )",
["action"] = "blackout_kick",
},
{
["action"] = "rushing_wind_kick",
["enabled"] = true,
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["action"] = "spinning_crane_kick",
["enabled"] = true,
},
},
["st"] = {
{
["action"] = "thunder_focus_tea",
["enabled"] = true,
},
{
["action"] = "rising_sun_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "talent.awakened_jadefire.enabled & buff.jadefire_stomp.up & buff.teachings_of_the_monastery.stack < 4 || buff.teachings_of_the_monastery.stack < 1",
["action"] = "tiger_palm",
},
{
["enabled"] = true,
["criteria"] = "( ( ! talent.awakened_jadefire.enabled || buff.jadefire_stomp.down ) & buff.teachings_of_the_monastery.up || buff.teachings_of_the_monastery.stack > 3 ) & cooldown.rising_sun_kick.remains > 2 * gcd.max",
["action"] = "blackout_kick",
},
{
["action"] = "rushing_wind_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "settings.single_zen_pulse & buff.zen_pulse.up",
["action"] = "vivify",
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["action"] = "tiger_palm",
["enabled"] = true,
},
},
["crane"] = {
{
["enabled"] = true,
["criteria"] = "time_to_max_charges <= gcd.max",
["action"] = "renewing_mist",
},
{
["enabled"] = true,
["criteria"] = "talent.ancient_teachings.enabled & buff.ancient_teachings.remains < gcd.max",
["action"] = "thunder_focus_tea",
},
{
["enabled"] = true,
["criteria"] = "talent.ancient_teachings.enabled & buff.ancient_teachings.remains < gcd.max",
["action"] = "essence_font",
},
{
["enabled"] = true,
["criteria"] = "talent.ancient_teachings.enabled & buff.ancient_teachings.remains < gcd.max",
["action"] = "jadefire_stomp",
},
{
["enabled"] = true,
["criteria"] = "buff.invoke_chiji.stack > 1",
["action"] = "enveloping_mist",
},
{
["action"] = "rising_sun_kick",
["enabled"] = true,
},
{
["action"] = "rushing_wind_kick",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "( ( ! talent.awakened_jadefire.enabled || buff.jadefire_stomp.down ) & buff.teachings_of_the_monastery.up || buff.teachings_of_the_monastery.stack > 3 ) & cooldown.rising_sun_kick.remains > 2 * gcd.max",
["action"] = "blackout_kick",
},
{
["enabled"] = true,
["criteria"] = "active_enemies > 3 || active_enemies > 1 & ! talent.ancient_concordance.enabled & ! talent.awakened_jadefire.enabled",
["action"] = "spinning_crane_kick",
},
{
["action"] = "blackout_kick",
["enabled"] = true,
},
{
["action"] = "tiger_palm",
["enabled"] = true,
},
},
},
["version"] = 20241105,
["warnings"] = "The import for 'default' required some automated changes.\nLine 11: Converted 'talent.awakened_jadefire' to 'talent.awakened_jadefire.enabled' (1x).\nLine 11: Converted 'talent.jadefire_teachings' to 'talent.jadefire_teachings.enabled' (1x).\n\nThe import for 'st' required some automated changes.\nLine 4: Converted 'talent.awakened_jadefire' to 'talent.awakened_jadefire.enabled' (1x).\n\nThe import for 'crane' required some automated changes.\nLine 2: Converted 'talent.ancient_teachings' to 'talent.ancient_teachings.enabled' (1x).\nLine 3: Unsupported action 'essence_font'.\nLine 3: Converted 'talent.ancient_teachings' to 'talent.ancient_teachings.enabled' (1x).\nLine 4: Converted 'talent.ancient_teachings' to 'talent.ancient_teachings.enabled' (1x).\nLine 8: Converted 'talent.awakened_jadefire' to 'talent.awakened_jadefire.enabled' (1x).\nLine 9: Converted 'talent.ancient_concordance' to 'talent.ancient_concordance.enabled' (1x).\nLine 9: Converted 'talent.awakened_jadefire' to 'talent.awakened_jadefire.enabled' (1x).\n\nImported 5 action lists.\n",
["author"] = "Aikanaka",
["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst\n\nactions+=/spear_hand_strike\nactions+=/use_items\nactions+=/blood_fury\nactions+=/berserking\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion\nactions+=/run_action_list,name=crane,strict=1,if=pet.chiji.up\nactions+=/jadefire_stomp,if=!settings.save_faeline||talent.awakened_jadefire&buff.awakened_jadefire.down||talent.jadefire_teachings&buff.jadefire_teachings.down\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>=3\nactions+=/call_action_list,name=st,strict=1,if=active_enemies<3\n\nactions.st+=/thunder_focus_tea\nactions.st+=/rising_sun_kick\nactions.st+=/tiger_palm,if=talent.awakened_jadefire.enabled&buff.jadefire_stomp.up&buff.teachings_of_the_monastery.stack<4||buff.teachings_of_the_monastery.stack<1\nactions.st+=/blackout_kick,if=((!talent.awakened_jadefire||buff.jadefire_stomp.down)&buff.teachings_of_the_monastery.up||buff.teachings_of_the_monastery.stack>3)&cooldown.rising_sun_kick.remains>2*gcd.max\nactions.st+=/rushing_wind_kick\nactions.st+=/vivify,if=settings.single_zen_pulse&buff.zen_pulse.up\nactions.st+=/chi_burst\nactions.st+=/tiger_palm\n\nactions.aoe+=/thunder_focus_tea,if=active_enemies<=3\nactions.aoe+=/vivify,if=buff.zen_pulse.up\nactions.aoe+=/rising_sun_kick,if=active_enemies<=3||settings.aoe_rsk\nactions.aoe+=/tiger_palm,if=talent.awakened_jadefire.enabled&buff.jadefire_stomp.up&buff.teachings_of_the_monastery.stack<4||buff.teachings_of_the_monastery.stack<1\nactions.aoe+=/blackout_kick,if=cooldown.rising_sun_kick.remains>2*gcd.max&(buff.teachings_of_the_monastery.stack>3)\nactions.aoe+=/rushing_wind_kick\nactions.aoe+=/chi_burst\nactions.aoe+=/spinning_crane_kick\n\nactions.crane+=/renewing_mist,if=time_to_max_charges<=gcd.max\nactions.crane+=/thunder_focus_tea,if=talent.ancient_teachings&buff.ancient_teachings.remains<gcd.max\nactions.crane+=/essence_font,if=talent.ancient_teachings&buff.ancient_teachings.remains<gcd.max\nactions.crane+=/jadefire_stomp,if=talent.ancient_teachings&buff.ancient_teachings.remains<gcd.max\nactions.crane+=/enveloping_mist,if=buff.invoke_chiji.stack>1\nactions.crane+=/rising_sun_kick\nactions.crane+=/rushing_wind_kick\nactions.crane+=/blackout_kick,if=((!talent.awakened_jadefire||buff.jadefire_stomp.down)&buff.teachings_of_the_monastery.up||buff.teachings_of_the_monastery.stack>3)&cooldown.rising_sun_kick.remains>2*gcd.max\nactions.crane+=/spinning_crane_kick,if=active_enemies>3||active_enemies>1&!talent.ancient_concordance&!talent.awakened_jadefire\nactions.crane+=/blackout_kick\nactions.crane+=/tiger_palm",
},
["Brewmaster"] = {
["source"] = "https://github.com/simulationcraft/simc/",
["builtIn"] = true,
["date"] = 20241021,
["author"] = "SimC",
["desc"] = "2024-10-21: Babyproof Blackout Combo\n\n2024-10-11: Aspect of Harmony accumulator and SimC update\n\n2024-09-22: Consume Blackout Combo with Tiger Palm\n\n2024-09-05: Avoid double-CB\n\n2024-08-22: Avoid nonsensical Purifying Brews\n\n2024-07-26: The War Within",
["lists"] = {
["default"] = {
{
["enabled"] = true,
["criteria"] = "target.debuff.casting.react",
["action"] = "spear_hand_strike",
},
{
["action"] = "diffuse_magic",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "health.pct <= settings.vivify_percent & buff.vivacious_vivification.up",
["action"] = "vivify",
},
{
["enabled"] = true,
["criteria"] = "tanking & settings.purify_for_celestial & ( time_to_max_charges < gcd.max || buff.purified_chi.up & buff.purified_chi.remains < 1.5 * gcd.max ) || cooldown.celestial_brew.remains < 2 * gcd.max & charges_fractional > 1.5",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "tanking & buff.celestial_brew.down & ( ! talent.improved_celestial_brew.enabled || buff.purified_chi.up ) & ( ! settings.max_damage || buff.blackout_combo.down )",
["action"] = "celestial_brew",
},
{
["enabled"] = true,
["criteria"] = "group & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "solo & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp > 0 & stagger.pct >= settings.purify_stagger_currhp * 0.5",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "group & ( settings.max_damage & buff.blackout_combo.down ) & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "solo & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_maxhp > 0 & stagger.pct >= settings.purify_stagger_maxhp * 0.5",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "group & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 20",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "solo & ( ! settings.max_damage || buff.blackout_combo.down ) & settings.purify_stagger_currhp = 0 & settings.purify_stagger_maxhp = 0 & stagger.pct > 10",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "health.pct < 75 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & buff.fortifying_brew.down",
["action"] = "dampen_harm",
},
{
["enabled"] = true,
["criteria"] = "health.pct < 50 & incoming_damage_3s > health.max * ( 0.2 + ( 0.2 * group ) ) & ( buff.dampen_harm.down )",
["action"] = "fortifying_brew",
},
{
["action"] = "touch_of_death",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.gift_of_the_ox.stack > 4 & health.pct < settings.eh_percent",
["action"] = "expel_harm",
},
{
["action"] = "potion",
["enabled"] = true,
},
{
["action"] = "blood_fury",
["enabled"] = true,
},
{
["action"] = "berserking",
["enabled"] = true,
},
{
["action"] = "arcane_torrent",
["enabled"] = true,
},
{
["action"] = "lights_judgment",
["enabled"] = true,
},
{
["action"] = "fireblood",
["enabled"] = true,
},
{
["action"] = "ancestral_call",
["enabled"] = true,
},
{
["action"] = "bag_of_tricks",
["enabled"] = true,
},
{
["enabled"] = true,
["action"] = "trinket1",
["slot"] = "trinket1",
},
{
["enabled"] = true,
["action"] = "trinket2",
["slot"] = "trinket2",
},
{
["enabled"] = true,
["criteria"] = "energy < 40",
["action"] = "black_ox_brew",
},
{
["enabled"] = true,
["criteria"] = "( ! settings.max_damage || buff.blackout_combo.down ) & buff.aspect_of_harmony_accumulator.value > 0.3 * health.max & buff.weapons_of_order.up & ! dot.aspect_of_harmony_damage.ticking",
["action"] = "celestial_brew",
},
{
["enabled"] = true,
["criteria"] = "( ! settings.max_damage || buff.blackout_combo.down ) & buff.aspect_of_harmony_accumulator.value > 0.3 * health.max & ! talent.weapons_of_order.enabled & ! dot.aspect_of_harmony_damage.ticking",
["action"] = "celestial_brew",
},
{
["enabled"] = true,
["criteria"] = "( ! settings.max_damage || buff.blackout_combo.down ) & fight_remains < 20 & fight_remains > 14 & buff.aspect_of_harmony_accumulator.value > 0.2 * health.max",
["action"] = "celestial_brew",
},
{
["enabled"] = true,
["criteria"] = "( ! settings.max_damage || buff.blackout_combo.down ) & buff.aspect_of_harmony_accumulator.value > 0.3 * health.max & cooldown.weapons_of_order.remains > 20 & ! dot.aspect_of_harmony_damage.ticking",
["action"] = "celestial_brew",
},
{
["action"] = "blackout_kick",
["enabled"] = true,
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["action"] = "weapons_of_order",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "! talent.fluidity_of_motion.enabled",
["action"] = "rising_sun_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.blackout_combo.up",
["action"] = "tiger_palm",
},
{
["enabled"] = true,
["criteria"] = "talent.scalding_brew.enabled",
["action"] = "keg_smash",
},
{
["enabled"] = true,
["criteria"] = "talent.charred_passions.enabled & talent.scalding_brew.enabled & buff.charred_passions.up & buff.charred_passions.remains < 3 & dot.breath_of_fire.remains < 9 & active_enemies > 4",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "talent.fluidity_of_motion.enabled",
["action"] = "rising_sun_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.blackout_combo.down",
["action"] = "purifying_brew",
},
{
["enabled"] = true,
["criteria"] = "( buff.charred_passions.down & ( ! talent.scalding_brew.enabled || active_enemies < 5 ) ) || ! talent.charred_passions.enabled || ( dot.breath_of_fire.remains < 3 & talent.scalding_brew.enabled )",
["action"] = "breath_of_fire",
},
{
["action"] = "exploding_keg",
["enabled"] = true,
},
{
["action"] = "keg_smash",
["enabled"] = true,
},
{
["action"] = "rushing_jade_wind",
["enabled"] = true,
},
{
["action"] = "invoke_niuzao_the_black_ox",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "energy > 40 - cooldown.keg_smash.remains * energy.regen",
["action"] = "tiger_palm",
},
{
["enabled"] = true,
["criteria"] = "energy > 40 - cooldown.keg_smash.remains * energy.regen",
["action"] = "spinning_crane_kick",
},
},
["precombat"] = {
{
["action"] = "potion",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "talent.chi_burst.enabled",
["action"] = "chi_burst",
},
},
},
["version"] = 20241021,
["warnings"] = "The import for 'default' required some automated changes.\nLine 5: Converted 'talent.improved_celestial_brew' to 'talent.improved_celestial_brew.enabled' (1x).\n\nImported 2 action lists.\n",
["profile"] = "actions.precombat+=/potion\nactions.precombat+=/chi_burst,if=talent.chi_burst.enabled\n\nactions+=/spear_hand_strike,if=target.debuff.casting.react\nactions+=/diffuse_magic\nactions+=/vivify,if=health.pct<=settings.vivify_percent&buff.vivacious_vivification.up\nactions+=/purifying_brew,if=tanking&settings.purify_for_celestial&(time_to_max_charges<gcd.max||buff.purified_chi.up&buff.purified_chi.remains<1.5*gcd.max)||cooldown.celestial_brew.remains<2*gcd.max&charges_fractional>1.5\nactions+=/celestial_brew,if=tanking&buff.celestial_brew.down&(!talent.improved_celestial_brew||buff.purified_chi.up)&(!settings.max_damage||buff.blackout_combo.down)\n## actions+=/purifying_brew,line_cd=5,if=talent.improved_invoke_niuzao_the_black_ox&settings.purify_for_niuzao&pet.niuzao_the_black_ox.active\nactions+=/purifying_brew,if=group&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp\nactions+=/purifying_brew,if=solo&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp>0&stagger.pct>=settings.purify_stagger_currhp*0.5\nactions+=/purifying_brew,if=group&(settings.max_damage&buff.blackout_combo.down)&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp\nactions+=/purifying_brew,if=solo&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_maxhp>0&stagger.pct>=settings.purify_stagger_maxhp*0.5\nactions+=/purifying_brew,if=group&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>20\nactions+=/purifying_brew,if=solo&(!settings.max_damage||buff.blackout_combo.down)&settings.purify_stagger_currhp=0&settings.purify_stagger_maxhp=0&stagger.pct>10\nactions+=/dampen_harm,if=health.pct<75&incoming_damage_3s>health.max*(0.2+(0.2*group))&buff.fortifying_brew.down\nactions+=/fortifying_brew,if=health.pct<50&incoming_damage_3s>health.max*(0.2+(0.2*group))&(buff.dampen_harm.down)\nactions+=/touch_of_death\nactions+=/expel_harm,if=buff.gift_of_the_ox.stack>4&health.pct<settings.eh_percent\nactions+=/potion\nactions+=/blood_fury\nactions+=/berserking\nactions+=/arcane_torrent\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/black_ox_brew,if=energy<40\nactions+=/celestial_brew,if=(!settings.max_damage||buff.blackout_combo.down)&buff.aspect_of_harmony_accumulator.value>0.3*health.max&buff.weapons_of_order.up&!dot.aspect_of_harmony_damage.ticking\nactions+=/celestial_brew,if=(!settings.max_damage||buff.blackout_combo.down)&buff.aspect_of_harmony_accumulator.value>0.3*health.max&!talent.weapons_of_order.enabled&!dot.aspect_of_harmony_damage.ticking\nactions+=/celestial_brew,if=(!settings.max_damage||buff.blackout_combo.down)&fight_remains<20&fight_remains>14&buff.aspect_of_harmony_accumulator.value>0.2*health.max\nactions+=/celestial_brew,if=(!settings.max_damage||buff.blackout_combo.down)&buff.aspect_of_harmony_accumulator.value>0.3*health.max&cooldown.weapons_of_order.remains>20&!dot.aspect_of_harmony_damage.ticking\nactions+=/blackout_kick\nactions+=/chi_burst\nactions+=/weapons_of_order\nactions+=/rising_sun_kick,if=!talent.fluidity_of_motion.enabled\nactions+=/tiger_palm,if=buff.blackout_combo.up\nactions+=/keg_smash,if=talent.scalding_brew.enabled\nactions+=/spinning_crane_kick,if=talent.charred_passions.enabled&talent.scalding_brew.enabled&buff.charred_passions.up&buff.charred_passions.remains<3&dot.breath_of_fire.remains<9&active_enemies>4\nactions+=/rising_sun_kick,if=talent.fluidity_of_motion.enabled\nactions+=/purifying_brew,if=buff.blackout_combo.down\nactions+=/breath_of_fire,if=(buff.charred_passions.down&(!talent.scalding_brew.enabled||active_enemies<5))||!talent.charred_passions.enabled||(dot.breath_of_fire.remains<3&talent.scalding_brew.enabled)\nactions+=/exploding_keg\nactions+=/keg_smash\nactions+=/rushing_jade_wind\nactions+=/invoke_niuzao\nactions+=/tiger_palm,if=energy>40-cooldown.keg_smash.remains*energy.regen\nactions+=/spinning_crane_kick,if=energy>40-cooldown.keg_smash.remains*energy.regen",
["spec"] = 268,
},
["Windwalker"] = {
["source"] = "https://github.com/simulationcraft/simc/blob/thewrwithin/profiles/PreRaids/PR_Monk_Windwalker.simc",
["builtIn"] = true,
["date"] = 20240928.2,
["spec"] = 269,
["desc"] = "2024-09-28: SimC update, address SEF issue in-game vs. sims\n\n2024-09-24: Xuen fix\n\n2024-09-01, 09-22: SimC update\n\n2024-08-30: Allow Tiger Palm to break Hit Combo sometimes\n\n2024-08-29: SimC update\n\n2024-08-25: Relax opener outside of boss fights\n\n2024-08-22: SimC update\n\n2024-07-26: The War Within",
["lists"] = {
["default_cleave"] = {
{
["enabled"] = true,
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
["description"] = "2-4 targets",
["criteria"] = "buff.pressure_point.up & active_enemies < 4 & cooldown.fists_of_fury.remains > 4",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.stack = 2 & active_enemies > 3",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "( energy > 55 & talent.inner_peace.enabled || energy > 60 & ! talent.inner_peace.enabled ) & combo_strike & chi.max - chi >= 2 & buff.teachings_of_the_monastery.stack < buff.teachings_of_the_monastery.max_stack & ( talent.energy_burst.enabled & ! buff.bok_proc.up || ! talent.energy_burst.enabled ) & ! buff.ordered_elements.up || ( talent.energy_burst.enabled & ! buff.bok_proc.up || ! talent.energy_burst.enabled ) & ! buff.ordered_elements.up & ! cooldown.fists_of_fury.remains & chi < 3 || ( prev.strike_of_the_windlord || cooldown.strike_of_the_windlord.remains ) & cooldown.celestial_conduit.remains < 2 & buff.ordered_elements.up & chi < 5 & combo_strike || ( ! buff.heart_of_the_jade_serpent_cdr.up || ! buff.heart_of_the_jade_serpent_cdr_celestial.up ) & combo_strike & chi.deficit >= 2 & ! buff.ordered_elements.up",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["action"] = "touch_of_death",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.storm_earth_and_fire.up & cooldown.strike_of_the_windlord.remains & ( talent.xuens_bond.enabled || ! talent.xuens_bond.enabled & buff.invokers_delight.up ) || boss & fight_remains < 15",
["action"] = "celestial_conduit",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! pet.xuen_the_white_tiger.active & prev.tiger_palm & time < 5 || buff.heart_of_the_jade_serpent_cdr_celestial.up & buff.pressure_point.up",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.heart_of_the_jade_serpent_cdr_celestial.up",
["action"] = "fists_of_fury",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.heart_of_the_jade_serpent_cdr_celestial.up",
["action"] = "whirling_dragon_punch",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "talent.gale_force.enabled & buff.invokers_delight.up & ( buff.bloodlust.up || cooldown.celestial_conduit.remains & ! buff.heart_of_the_jade_serpent_cdr_celestial.up )",
["action"] = "strike_of_the_windlord",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.power_infusion.up & buff.bloodlust.up",
["action"] = "fists_of_fury",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.power_infusion.up & buff.bloodlust.up & active_enemies < 3",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.teachings_of_the_monastery.stack = 8 & ( active_enemies < 3 || talent.shadowboxing_treads.enabled )",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! talent.revolving_whirl.enabled || talent.revolving_whirl.enabled & buff.dance_of_chiji.stack < 2 & active_enemies > 2 || active_enemies < 3",
["action"] = "whirling_dragon_punch",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "time > 5 & ( cooldown.invoke_xuen_the_white_tiger.remains > 15 || talent.flurry_strikes.enabled )",
["action"] = "strike_of_the_windlord",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.the_emperors_capacitor.stack > 19 & combo_strike & talent.power_of_the_thunder_king.enabled",
["action"] = "crackling_jade_lightning",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.stack = 2",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled & active_enemies < 5 & buff.wisdom_of_the_wall_flurry.up & active_enemies < 4",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "fists_of_fury",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled & active_enemies < 5 & buff.wisdom_of_the_wall_flurry.up",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up & buff.chi_energy.stack > 29",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "chi > 4 & ( active_enemies < 3 || talent.glory_of_the_dawn.enabled ) || chi > 2 & energy > 50 & ( active_enemies < 3 || talent.glory_of_the_dawn.enabled ) || cooldown.fists_of_fury.remains > 2 & ( active_enemies < 3 || talent.glory_of_the_dawn.enabled )",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.teachings_of_the_monastery.stack = 4 & ! talent.knowledge_of_the_broken_temple.enabled & talent.shadowboxing_treads.enabled & active_enemies < 3",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & talent.crane_vortex.enabled & active_enemies > 2",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled & active_enemies < 5",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & chi.deficit >= 2 & ( ! buff.ordered_elements.up || energy.time_to_max <= gcd.max * 3 )",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & cooldown.fists_of_fury.remains & buff.teachings_of_the_monastery.stack > 3 & cooldown.rising_sun_kick.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "talent.singularly_focused_jade.enabled || talent.jadefire_harmony.enabled",
["action"] = "jadefire_stomp",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & cooldown.fists_of_fury.remains & ( buff.teachings_of_the_monastery.stack > 3 || buff.ordered_elements.up ) & ( talent.shadowboxing_treads.enabled || buff.bok_proc.up || buff.ordered_elements.up )",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & ! buff.ordered_elements.up & talent.crane_vortex.enabled & active_enemies > 2 & chi > 4",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! buff.ordered_elements.up",
["action"] = "chi_burst",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & ( buff.ordered_elements.up || buff.bok_proc.up & chi.deficit >= 1 & talent.energy_burst.enabled ) & cooldown.fists_of_fury.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & cooldown.fists_of_fury.remains & ( chi > 2 || energy > 60 || buff.bok_proc.up )",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "jadefire_stomp",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & chi.deficit >= 1",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & talent.hit_combo.enabled",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.ordered_elements.up & ! talent.hit_combo.enabled & cooldown.fists_of_fury.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! combo_strike & chi < 3 & ! cooldown.fists_of_fury.remains",
["action"] = "tiger_palm",
},
},
["aoe_opener"] = {
{
["enabled"] = true,
["action"] = "tiger_palm",
["cycle_targets"] = 1,
["description"] = "Hekili: Modified to check Hit Combo since you will go pack-to-pack in dungeons (vs. single-encounter sims).",
["criteria"] = "chi < 6 & ( combo_strike || ! talent.hit_combo.enabled )",
},
},
["precombat"] = {
{
["enabled"] = true,
["name"] = "imperfect_ascendancy_serum",
["action"] = "imperfect_ascendancy_serum",
},
},
["default"] = {
{
["enabled"] = true,
["criteria"] = "target.debuff.casting.react",
["action"] = "spear_hand_strike",
},
{
["enabled"] = true,
["criteria"] = "buff.storm_earth_and_fire.up & ( ! talent.invoke_xuen.enabled || pet.xuen_the_white_tiger.active ) || boss & fight_remains <= 30",
["action"] = "potion",
["description"] = "Potion",
},
{
["enabled"] = true,
["op"] = "set",
["action"] = "variable",
["value"] = "false",
["var_name"] = "has_external_pi",
["description"] = "Enable PI if available",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["description"] = "Use Trinkets",
["list_name"] = "trinkets",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["description"] = "Openers",
["strict"] = 1,
["criteria"] = "time < 3 & active_enemies > 2 & chi.deficit > 0",
["list_name"] = "aoe_opener",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "time < 4 & active_enemies < 3 & chi.deficit > 0",
["list_name"] = "normal_opener",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["description"] = "Use Cooldowns",
["strict"] = 1,
["criteria"] = "talent.storm_earth_and_fire.enabled",
["list_name"] = "cooldowns",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["description"] = "Default Priority",
["strict"] = 1,
["criteria"] = "active_enemies >= 5",
["list_name"] = "default_aoe",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["criteria"] = "active_enemies > 1 & ( ! boss || chi.deficit = 0 || time > 7 || ! talent.celestial_conduit.enabled ) & active_enemies < 5",
["list_name"] = "default_cleave",
},
{
["enabled"] = true,
["action"] = "call_action_list",
["strict"] = 1,
["criteria"] = "active_enemies < 2",
["list_name"] = "default_st",
},
},
["default_aoe"] = {
{
["enabled"] = true,
["action"] = "tiger_palm",
["cycle_targets"] = 1,
["description"] = ">=5 Targets",
["criteria"] = "( energy > 55 & talent.inner_peace.enabled || energy > 60 & ! talent.inner_peace.enabled ) & combo_strike & chi.max - chi >= 2 & buff.teachings_of_the_monastery.stack < buff.teachings_of_the_monastery.max_stack & ( talent.energy_burst.enabled & ! buff.bok_proc.up ) & ! buff.ordered_elements.up || ( talent.energy_burst.enabled & ! buff.bok_proc.up ) & ! buff.ordered_elements.up & ! cooldown.fists_of_fury.remains & chi < 3 || ( prev.strike_of_the_windlord || cooldown.strike_of_the_windlord.remains ) & cooldown.celestial_conduit.remains < 2 & buff.ordered_elements.up & chi < 5 & combo_strike",
},
{
["action"] = "touch_of_death",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.dance_of_chiji.stack = 2 & combo_strike",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.chi_energy.stack > 29 & cooldown.fists_of_fury.remains < 5",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.storm_earth_and_fire.up & cooldown.strike_of_the_windlord.remains & ( talent.xuens_bond.enabled || ! talent.xuens_bond.enabled & buff.invokers_delight.up ) || boss & fight_remains < 15",
["action"] = "celestial_conduit",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! talent.xuens_battlegear.enabled & ! cooldown.whirling_dragon_punch.remains & cooldown.fists_of_fury.remains > 1 & ( ! talent.revolving_whirl.enabled || talent.revolving_whirl.enabled & buff.dance_of_chiji.stack < 2 & active_enemies > 2 ) || ! buff.storm_earth_and_fire.up & buff.pressure_point.up",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! talent.revolving_whirl.enabled || talent.revolving_whirl.enabled & buff.dance_of_chiji.stack < 2 & active_enemies > 2",
["action"] = "whirling_dragon_punch",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.bok_proc.up & chi < 2 & talent.energy_burst.enabled & energy < 55",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "time > 5 & ( cooldown.invoke_xuen_the_white_tiger.remains > 15 || talent.flurry_strikes.enabled )",
["action"] = "strike_of_the_windlord",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.teachings_of_the_monastery.stack = 8 & talent.shadowboxing_treads.enabled",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.the_emperors_capacitor.stack > 19 & combo_strike & talent.power_of_the_thunder_king.enabled",
["action"] = "crackling_jade_lightning",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "fists_of_fury",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled & buff.wisdom_of_the_wall_flurry.up & chi < 6",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & chi > 5",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up & buff.chi_energy.stack > 29 & cooldown.fists_of_fury.remains < 5",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.pressure_point.up & cooldown.fists_of_fury.remains > 2",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up & spinning_crane_kick.max",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & talent.crane_vortex.enabled & active_enemies > 2 & spinning_crane_kick.max",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled & buff.ordered_elements.up",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & chi.deficit >= 2 & ( ! buff.ordered_elements.up || energy.time_to_max <= gcd.max * 3 )",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "talent.singularly_focused_jade.enabled || talent.jadefire_harmony.enabled",
["action"] = "jadefire_stomp",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & ! buff.ordered_elements.up & talent.crane_vortex.enabled & active_enemies > 2 & chi > 4 & spinning_crane_kick.max",
["action"] = "spinning_crane_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & cooldown.fists_of_fury.remains & ( buff.teachings_of_the_monastery.stack > 3 || buff.ordered_elements.up ) & ( talent.shadowboxing_treads.enabled || buff.bok_proc.up )",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & ! cooldown.fists_of_fury.remains & chi < 3",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & ( chi > 3 || energy > 55 )",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & ( buff.ordered_elements.up || buff.bok_proc.up & chi.deficit >= 1 & talent.energy_burst.enabled ) & cooldown.fists_of_fury.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & cooldown.fists_of_fury.remains & ( chi > 2 || energy > 60 || buff.bok_proc.up )",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["action"] = "jadefire_stomp",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & chi.deficit >= 1",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! buff.ordered_elements.up",
["action"] = "chi_burst",
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & talent.hit_combo.enabled & spinning_crane_kick.max",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.ordered_elements.up & ! talent.hit_combo.enabled & cooldown.fists_of_fury.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! combo_strike & chi < 3 & ! cooldown.fists_of_fury.remains",
["action"] = "tiger_palm",
},
},
["cooldowns"] = {
{
["enabled"] = true,
["criteria"] = "debuff.mark_of_the_crane.refreshable & ( fight_remains > 14 & boss || fight_remains > 22 ) & ! cooldown.invoke_xuen_the_white_tiger.remains & ( chi < 5 & ! talent.ordered_elements.enabled || chi < 3 ) & ( combo_strike || ! talent.hit_combo.enabled )",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "( ! boss & active_enemies = 1 & ( time < 10 || talent.xuens_bond.enabled & talent.celestial_conduit.enabled ) || boss || active_enemies > 1 ) & cooldown.storm_earth_and_fire.ready & ( fight_remains > 14 & boss || fight_remains > 22 ) & ( active_enemies > 2 || debuff.acclamation.up || ! talent.ordered_elements.enabled & time < 5 ) & ( chi > 2 & talent.ordered_elements.enabled || chi > 5 || chi > 3 & energy < 50 || energy < 50 & active_enemies = 1 || prev.tiger_palm & ! talent.ordered_elements.enabled & time < 5 ) || boss & fight_remains < 30",
["action"] = "invoke_xuen",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "( fight_remains > 14 & boss || fight_remains > 22 ) & ( active_enemies > 2 || cooldown.rising_sun_kick.remains || ! talent.ordered_elements.enabled ) & ( ( buff.invokers_delight.remains > 10 & ! buff.bloodlust.up || buff.bloodlust.up & cooldown.storm_earth_and_fire.full_recharge_time < 1 ) || cooldown.storm_earth_and_fire.full_recharge_time <= cooldown.invoke_xuen_the_white_tiger.true_remains & ! buff.bloodlust.up & ( active_enemies > 1 || cooldown.strike_of_the_windlord.remains < 2 & ( talent.flurry_strikes.enabled || buff.heart_of_the_jade_serpent.up ) ) & ( chi > 3 || chi > 1 & talent.ordered_elements.enabled ) || cooldown.storm_earth_and_fire.full_recharge_time < 10 & ( chi > 3 || chi > 1 & talent.ordered_elements.enabled ) ) || boss & fight_remains < 30 || prev.invoke_xuen_the_white_tiger || buff.invokers_delight.remains > 10 & ! boss & ( cooldown.rising_sun_kick.remains || ! talent.ordered_elements.enabled || active_enemies > 2 )",
["action"] = "storm_earth_and_fire",
["cycle_targets"] = 1,
},
{
["action"] = "touch_of_karma",
["enabled"] = true,
},
},
["trinkets"] = {
{
["enabled"] = true,
["name"] = "algethar_puzzle_box",
["action"] = "algethar_puzzle_box",
["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & ! buff.storm_earth_and_fire.up || boss & fight_remains < 25",
["description"] = "Use Power Infusion while Invoke Xuen, the White Tiger is active.",
},
{
["enabled"] = true,
["name"] = "erupting_spear_fragment",
["action"] = "erupting_spear_fragment",
["criteria"] = "buff.storm_earth_and_fire.up",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff & ! buff.storm_earth_and_fire.up & ! pet.xuen_the_white_tiger.active || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30 || boss & fight_remains < 5",
["action"] = "manic_grieftorch",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff & ! buff.storm_earth_and_fire.up & ! pet.xuen_the_white_tiger.active || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30 || boss & fight_remains < 10",
["action"] = "beacon_to_the_beyond",
},
{
["enabled"] = true,
["criteria"] = "cooldown.fists_of_fury.remains < 2 & cooldown.invoke_xuen_the_white_tiger.remains > 10 || boss & fight_remains < 12",
["action"] = "djaruun_pillar_of_the_elder_flame",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 10 || boss & fight_remains < 10",
["action"] = "dragonfire_bomb_dispenser",
},
{
["enabled"] = true,
["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & buff.storm_earth_and_fire.up || boss & fight_remains < 25",
["action"] = "trinket1",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30",
["action"] = "trinket1",
},
{
["enabled"] = true,
["criteria"] = "( pet.xuen_the_white_tiger.active || ! talent.invoke_xuen_the_white_tiger.enabled ) & buff.storm_earth_and_fire.up || boss & fight_remains < 25",
["action"] = "mydas_talisman",
},
{
["enabled"] = true,
["criteria"] = "! trinket.t1.has_use_buff & ! trinket.t2.has_use_buff || ( trinket.t1.has_use_buff || trinket.t2.has_use_buff ) & cooldown.invoke_xuen_the_white_tiger.remains > 30",
["action"] = "mydas_talisman",
},
},
["normal_opener"] = {
{
["enabled"] = true,
["action"] = "tiger_palm",
["cycle_targets"] = 1,
["description"] = "normal opener",
["criteria"] = "chi < 6 & ( combo_strike || ! talent.hit_combo.enabled )",
},
{
["enabled"] = true,
["criteria"] = "talent.ordered_elements.enabled",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
},
["default_st"] = {
{
["enabled"] = true,
["criteria"] = "buff.pressure_point.up || buff.ordered_elements.remains <= gcd.max * 3 & buff.storm_earth_and_fire.up",
["action"] = "rising_sun_kick",
["description"] = "1 target",
},
{
["enabled"] = true,
["criteria"] = "( energy > 55 & talent.inner_peace.enabled || energy > 60 & ! talent.inner_peace.enabled ) & combo_strike & chi.max - chi >= 2 & buff.teachings_of_the_monastery.stack < buff.teachings_of_the_monastery.max_stack & ( talent.energy_burst.enabled & ! buff.bok_proc.up || ! talent.energy_burst.enabled ) & ! buff.ordered_elements.up || ( talent.energy_burst.enabled & ! buff.bok_proc.up || ! talent.energy_burst.enabled ) & ! buff.ordered_elements.up & ! cooldown.fists_of_fury.remains & chi < 3 || ( prev.strike_of_the_windlord || cooldown.strike_of_the_windlord.remains ) & cooldown.celestial_conduit.remains < 2 & buff.ordered_elements.up & chi < 5 & combo_strike || ( ! buff.heart_of_the_jade_serpent_cdr.up || ! buff.heart_of_the_jade_serpent_cdr_celestial.up ) & combo_strike & chi.deficit >= 2 & ! buff.ordered_elements.up",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["action"] = "touch_of_death",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.invokers_delight.up & ! buff.storm_earth_and_fire.up & talent.ordered_elements.enabled",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.storm_earth_and_fire.up & ( ! talent.ordered_elements.enabled || buff.ordered_elements.up ) & cooldown.strike_of_the_windlord.remains & ( talent.xuens_bond.enabled || ! talent.xuens_bond.enabled & buff.invokers_delight.up ) || boss & fight_remains < 15",
["action"] = "celestial_conduit",
},
{
["enabled"] = true,
["criteria"] = "! pet.xuen_the_white_tiger.active & prev.tiger_palm & time < 5 || buff.storm_earth_and_fire.up & talent.ordered_elements.enabled",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "talent.gale_force.enabled & buff.invokers_delight.up & ( buff.bloodlust.up || cooldown.celestial_conduit.remains & ! buff.heart_of_the_jade_serpent_cdr_celestial.up )",
["action"] = "strike_of_the_windlord",
},
{
["enabled"] = true,
["criteria"] = "buff.power_infusion.up & buff.bloodlust.up",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.power_infusion.up & buff.bloodlust.up",
["action"] = "fists_of_fury",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.teachings_of_the_monastery.stack > 3 & buff.ordered_elements.up & cooldown.rising_sun_kick.remains > 1 & cooldown.fists_of_fury.remains > 2",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.dance_of_chiji.stack = 2 & combo_strike & buff.power_infusion.up & buff.bloodlust.up",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.power_infusion.up & buff.bloodlust.up",
["action"] = "whirling_dragon_punch",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled & buff.power_infusion.up & buff.bloodlust.up",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.teachings_of_the_monastery.stack > 4 & cooldown.rising_sun_kick.remains > 1 & cooldown.fists_of_fury.remains > 2",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "! buff.heart_of_the_jade_serpent_cdr_celestial.up & ! buff.dance_of_chiji.stack = 2 || buff.ordered_elements.up || talent.knowledge_of_the_broken_temple.enabled",
["action"] = "whirling_dragon_punch",
},
{
["enabled"] = true,
["criteria"] = "time > 5 & ( cooldown.invoke_xuen_the_white_tiger.remains > 15 || talent.flurry_strikes.enabled )",
["action"] = "strike_of_the_windlord",
},
{
["enabled"] = true,
["criteria"] = "chi > 4 || chi > 2 & energy > 50 || cooldown.fists_of_fury.remains > 2",
["action"] = "rising_sun_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled & buff.wisdom_of_the_wall_flurry.up",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & chi.deficit >= 2 & energy.time_to_max <= gcd.max * 3",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.teachings_of_the_monastery.stack > 7 & talent.memory_of_the_monastery.enabled & ! buff.memory_of_the_monastery.up & cooldown.fists_of_fury.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["action"] = "fists_of_fury",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "( buff.dance_of_chiji.stack = 2 || buff.dance_of_chiji.remains < 2 & buff.dance_of_chiji.up ) & combo_strike & ! buff.ordered_elements.up",
["action"] = "spinning_crane_kick",
},
{
["action"] = "whirling_dragon_punch",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "buff.teachings_of_the_monastery.stack = 4 & ! talent.knowledge_of_the_broken_temple.enabled & cooldown.rising_sun_kick.remains > 1 & cooldown.fists_of_fury.remains > 2",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.dance_of_chiji.stack = 2 & combo_strike",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & cooldown.rising_sun_kick.remains > 1 & cooldown.fists_of_fury.remains > 2",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.dance_of_chiji.up & ( buff.ordered_elements.up || energy.time_to_max >= gcd.max * 3 & talent.sequenced_strikes.enabled & talent.energy_burst.enabled || ! talent.sequenced_strikes.enabled || ! talent.energy_burst.enabled || buff.dance_of_chiji.remains <= gcd.max * 3 )",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & energy.time_to_max <= gcd.max * 3 & talent.flurry_strikes.enabled",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "talent.singularly_focused_jade.enabled || talent.jadefire_harmony.enabled",
["action"] = "jadefire_stomp",
},
{
["enabled"] = true,
["criteria"] = "! buff.ordered_elements.up",
["action"] = "chi_burst",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & ( buff.ordered_elements.up || buff.bok_proc.up & chi.deficit >= 1 & talent.energy_burst.enabled ) & cooldown.fists_of_fury.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "buff.the_emperors_capacitor.stack > 19 & ! buff.ordered_elements.up & combo_strike",
["action"] = "crackling_jade_lightning",
},
{
["enabled"] = true,
["criteria"] = "combo_strike & cooldown.fists_of_fury.remains & ( chi > 2 || energy > 60 || buff.bok_proc.up )",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["action"] = "jadefire_stomp",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & chi.deficit >= 1",
["action"] = "tiger_palm",
["cycle_targets"] = 1,
},
{
["action"] = "chi_burst",
["enabled"] = true,
},
{
["enabled"] = true,
["criteria"] = "combo_strike & buff.ordered_elements.up & talent.hit_combo.enabled",
["action"] = "spinning_crane_kick",
},
{
["enabled"] = true,
["criteria"] = "buff.ordered_elements.up & ! talent.hit_combo.enabled & cooldown.fists_of_fury.remains",
["action"] = "blackout_kick",
["cycle_targets"] = 1,
},
{
["enabled"] = true,
["criteria"] = "prev.tiger_palm & chi < 3 & ! cooldown.fists_of_fury.remains",
["action"] = "tiger_palm",
},
},
},
["version"] = 20240928.2,
["warnings"] = "The import for 'default_cleave' required some automated changes.\nLine 3: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 3: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 3: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 3: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 3: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 3: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 5: Converted 'talent.xuens_bond' to 'talent.xuens_bond.enabled' (1x).\nLine 5: Converted 'talent.xuens_bond' to 'talent.xuens_bond.enabled' (1x).\nLine 9: Converted 'talent.gale_force' to 'talent.gale_force.enabled' (1x).\nLine 12: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 13: Converted 'talent.revolving_whirl' to 'talent.revolving_whirl.enabled' (1x).\nLine 13: Converted 'talent.revolving_whirl' to 'talent.revolving_whirl.enabled' (1x).\nLine 14: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 15: Converted 'talent.power_of_the_thunder_king' to 'talent.power_of_the_thunder_king.enabled' (1x).\nLine 17: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 19: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 21: Converted 'talent.glory_of_the_dawn' to 'talent.glory_of_the_dawn.enabled' (1x).\nLine 21: Converted 'talent.glory_of_the_dawn' to 'talent.glory_of_the_dawn.enabled' (1x).\nLine 21: Converted 'talent.glory_of_the_dawn' to 'talent.glory_of_the_dawn.enabled' (1x).\nLine 22: Converted 'talent.knowledge_of_the_broken_temple' to 'talent.knowledge_of_the_broken_temple.enabled' (1x).\nLine 22: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 24: Converted 'talent.crane_vortex' to 'talent.crane_vortex.enabled' (1x).\nLine 25: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 28: Converted 'talent.singularly_focused_jade' to 'talent.singularly_focused_jade.enabled' (1x).\nLine 28: Converted 'talent.jadefire_harmony' to 'talent.jadefire_harmony.enabled' (1x).\nLine 29: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 30: Converted 'talent.crane_vortex' to 'talent.crane_vortex.enabled' (1x).\nLine 32: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 37: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\nLine 38: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\n\nThe import for 'aoe_opener' required some automated changes.\nLine 1: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\n\nThe import for 'default_st' required some automated changes.\nLine 2: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 2: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 2: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 2: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 2: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 2: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 4: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 5: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 5: Converted 'talent.xuens_bond' to 'talent.xuens_bond.enabled' (1x).\nLine 5: Converted 'talent.xuens_bond' to 'talent.xuens_bond.enabled' (1x).\nLine 6: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 7: Converted 'talent.gale_force' to 'talent.gale_force.enabled' (1x).\nLine 13: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 15: Converted 'talent.knowledge_of_the_broken_temple' to 'talent.knowledge_of_the_broken_temple.enabled' (1x).\nLine 16: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 18: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 20: Converted 'talent.memory_of_the_monastery' to 'talent.memory_of_the_monastery.enabled' (1x).\nLine 24: Converted 'talent.knowledge_of_the_broken_temple' to 'talent.knowledge_of_the_broken_temple.enabled' (1x).\nLine 27: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 28: Converted 'talent.sequenced_strikes' to 'talent.sequenced_strikes.enabled' (1x).\nLine 28: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 28: Converted 'talent.sequenced_strikes' to 'talent.sequenced_strikes.enabled' (1x).\nLine 28: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 29: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 30: Converted 'talent.singularly_focused_jade' to 'talent.singularly_focused_jade.enabled' (1x).\nLine 30: Converted 'talent.jadefire_harmony' to 'talent.jadefire_harmony.enabled' (1x).\nLine 32: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 38: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\nLine 39: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 2: Converted 'talent.invoke_xuen' to 'talent.invoke_xuen.enabled' (1x).\nLine 7: Converted 'talent.storm_earth_and_fire' to 'talent.storm_earth_and_fire.enabled' (1x).\nLine 9: Converted 'talent.celestial_conduit' to 'talent.celestial_conduit.enabled' (1x).\n\nThe import for 'cooldowns' required some automated changes.\nLine 1: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 1: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\nLine 2: Converted 'talent.xuens_bond' to 'talent.xuens_bond.enabled' (1x).\nLine 2: Converted 'talent.celestial_conduit' to 'talent.celestial_conduit.enabled' (1x).\nLine 2: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 2: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 2: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 3: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 3: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 3: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 3: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\nLine 3: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\n\nThe import for 'normal_opener' required some automated changes.\nLine 1: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\nLine 2: Converted 'talent.ordered_elements' to 'talent.ordered_elements.enabled' (1x).\n\nThe import for 'default_aoe' required some automated changes.\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 1: Converted 'talent.inner_peace' to 'talent.inner_peace.enabled' (1x).\nLine 1: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 1: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 5: Converted 'talent.xuens_bond' to 'talent.xuens_bond.enabled' (1x).\nLine 5: Converted 'talent.xuens_bond' to 'talent.xuens_bond.enabled' (1x).\nLine 6: Converted 'talent.xuens_battlegear' to 'talent.xuens_battlegear.enabled' (1x).\nLine 6: Converted 'talent.revolving_whirl' to 'talent.revolving_whirl.enabled' (1x).\nLine 6: Converted 'talent.revolving_whirl' to 'talent.revolving_whirl.enabled' (1x).\nLine 7: Converted 'talent.revolving_whirl' to 'talent.revolving_whirl.enabled' (1x).\nLine 7: Converted 'talent.revolving_whirl' to 'talent.revolving_whirl.enabled' (1x).\nLine 8: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 9: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 10: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 11: Converted 'talent.power_of_the_thunder_king' to 'talent.power_of_the_thunder_king.enabled' (1x).\nLine 13: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 18: Converted 'talent.crane_vortex' to 'talent.crane_vortex.enabled' (1x).\nLine 19: Converted 'talent.flurry_strikes' to 'talent.flurry_strikes.enabled' (1x).\nLine 21: Converted 'talent.singularly_focused_jade' to 'talent.singularly_focused_jade.enabled' (1x).\nLine 21: Converted 'talent.jadefire_harmony' to 'talent.jadefire_harmony.enabled' (1x).\nLine 22: Converted 'talent.crane_vortex' to 'talent.crane_vortex.enabled' (1x).\nLine 23: Converted 'talent.shadowboxing_treads' to 'talent.shadowboxing_treads.enabled' (1x).\nLine 26: Converted 'talent.energy_burst' to 'talent.energy_burst.enabled' (1x).\nLine 32: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\nLine 33: Converted 'talent.hit_combo' to 'talent.hit_combo.enabled' (1x).\n\nThe import for 'trinkets' required some automated changes.\nLine 1: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 3: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 3: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 4: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 4: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 7: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 8: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 8: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 8: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 8: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 9: Converted 'talent.invoke_xuen_the_white_tiger' to 'talent.invoke_xuen_the_white_tiger.enabled' (1x).\nLine 10: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 10: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 10: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 10: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\n\nThis profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 9 action lists.\n",
["author"] = "SimC",
["profile"] = "actions.precombat+=/use_item,name=imperfect_ascendancy_serum\n\nactions+=/spear_hand_strike,if=target.debuff.casting.react\n# Potion\nactions+=/potion,if=buff.storm_earth_and_fire.up&(!talent.invoke_xuen||pet.xuen_the_white_tiger.active)||boss&fight_remains<=30\n# Enable PI if available\nactions+=/variable,name=has_external_pi,value=false\n# Use Trinkets\nactions+=/call_action_list,name=trinkets\n# Openers\nactions+=/call_action_list,name=aoe_opener,strict=1,if=time<3&active_enemies>2&chi.deficit>0\nactions+=/call_action_list,name=normal_opener,strict=1,if=time<4&active_enemies<3&chi.deficit>0\n# Use Cooldowns\nactions+=/call_action_list,name=cooldowns,strict=1,if=talent.storm_earth_and_fire\n# Default Priority\nactions+=/call_action_list,name=default_aoe,strict=1,if=active_enemies>=5\nactions+=/call_action_list,name=default_cleave,if=active_enemies>1&(!boss||chi.deficit=0||time>7||!talent.celestial_conduit)&active_enemies<5\nactions+=/call_action_list,name=default_st,strict=1,if=active_enemies<2\n\n# Use Power Infusion while Invoke Xuen, the White Tiger is active.\nactions.trinkets+=/use_item,name=algethar_puzzle_box,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&!buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.trinkets+=/use_item,name=erupting_spear_fragment,if=buff.storm_earth_and_fire.up\nactions.trinkets+=/manic_grieftorch,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff&!buff.storm_earth_and_fire.up&!pet.xuen_the_white_tiger.active||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30||boss&fight_remains<5\nactions.trinkets+=/beacon_to_the_beyond,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff&!buff.storm_earth_and_fire.up&!pet.xuen_the_white_tiger.active||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30||boss&fight_remains<10\nactions.trinkets+=/djaruun_pillar_of_the_elder_flame,if=cooldown.fists_of_fury.remains<2&cooldown.invoke_xuen_the_white_tiger.remains>10||boss&fight_remains<12\nactions.trinkets+=/dragonfire_bomb_dispenser,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>10||boss&fight_remains<10\nactions.trinkets+=/trinket1,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.trinkets+=/trinket1,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30\nactions.trinkets+=/trinket2,if=(pet.xuen_the_white_tiger.active||!talent.invoke_xuen_the_white_tiger)&buff.storm_earth_and_fire.up||boss&fight_remains<25\nactions.trinkets+=/trinket2,if=!trinket.1.has_use_buff&!trinket.2.has_use_buff||(trinket.1.has_use_buff||trinket.2.has_use_buff)&cooldown.invoke_xuen_the_white_tiger.remains>30\n\nactions.cooldowns+=/tiger_palm,cycle_targets=1,if=debuff.mark_of_the_crane.refreshable&(fight_remains>14&boss||fight_remains>22)&!cooldown.invoke_xuen_the_white_tiger.remains&(chi<5&!talent.ordered_elements||chi<3)&(combo_strike||!talent.hit_combo)\nactions.cooldowns+=/invoke_xuen_the_white_tiger,cycle_targets=1,if=(!boss&active_enemies=1&(time<10||talent.xuens_bond&talent.celestial_conduit)||boss||active_enemies>1)&cooldown.storm_earth_and_fire.ready&(fight_remains>14&boss||fight_remains>22)&(active_enemies>2||debuff.acclamation.up||!talent.ordered_elements&time<5)&(chi>2&talent.ordered_elements||chi>5||chi>3&energy<50||energy<50&active_enemies=1||prev.tiger_palm&!talent.ordered_elements&time<5)||boss&fight_remains<30\nactions.cooldowns+=/storm_earth_and_fire,cycle_targets=1,if=(fight_remains>14&boss||fight_remains>22)&(active_enemies>2||cooldown.rising_sun_kick.remains||!talent.ordered_elements)&((buff.invokers_delight.remains>10&!buff.bloodlust.up||buff.bloodlust.up&cooldown.storm_earth_and_fire.full_recharge_time<1)||cooldown.storm_earth_and_fire.full_recharge_time<=cooldown.invoke_xuen_the_white_tiger.true_remains&!buff.bloodlust.up&(active_enemies>1||cooldown.strike_of_the_windlord.remains<2&(talent.flurry_strikes||buff.heart_of_the_jade_serpent.up))&(chi>3||chi>1&talent.ordered_elements)||cooldown.storm_earth_and_fire.full_recharge_time<10&(chi>3||chi>1&talent.ordered_elements))||boss&fight_remains<30||prev.invoke_xuen_the_white_tiger||buff.invokers_delight.remains>10&!boss&(cooldown.rising_sun_kick.remains||!talent.ordered_elements||active_enemies>2)\nactions.cooldowns+=/touch_of_karma\n\n## aoe opener\n# Hekili: Modified to check Hit Combo since you will go pack-to-pack in dungeons (vs. single-encounter sims).\nactions.aoe_opener+=/tiger_palm,cycle_targets=1,if=chi<6&(combo_strike||!talent.hit_combo)\n\n# normal opener\nactions.normal_opener+=/tiger_palm,cycle_targets=1,if=chi<6&(combo_strike||!talent.hit_combo)\nactions.normal_opener+=/rising_sun_kick,cycle_targets=1,if=talent.ordered_elements\n\n# >=5 Targets\nactions.default_aoe+=/tiger_palm,cycle_targets=1,if=(energy>55&talent.inner_peace||energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&(talent.energy_burst&!buff.bok_proc.up)&!buff.ordered_elements.up||(talent.energy_burst&!buff.bok_proc.up)&!buff.ordered_elements.up&!cooldown.fists_of_fury.remains&chi<3||(prev.strike_of_the_windlord||cooldown.strike_of_the_windlord.remains)&cooldown.celestial_conduit.remains<2&buff.ordered_elements.up&chi<5&combo_strike\nactions.default_aoe+=/touch_of_death\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=buff.dance_of_chiji.stack=2&combo_strike\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.chi_energy.stack>29&cooldown.fists_of_fury.remains<5\nactions.default_aoe+=/celestial_conduit,cycle_targets=1,if=buff.storm_earth_and_fire.up&cooldown.strike_of_the_windlord.remains&(talent.xuens_bond||!talent.xuens_bond&buff.invokers_delight.up)||boss&fight_remains<15\nactions.default_aoe+=/rising_sun_kick,,cycle_targets=1,if=!talent.xuens_battlegear&!cooldown.whirling_dragon_punch.remains&cooldown.fists_of_fury.remains>1&(!talent.revolving_whirl||talent.revolving_whirl&buff.dance_of_chiji.stack<2&active_enemies>2)||!buff.storm_earth_and_fire.up&buff.pressure_point.up\nactions.default_aoe+=/whirling_dragon_punch,cycle_targets=1,if=!talent.revolving_whirl||talent.revolving_whirl&buff.dance_of_chiji.stack<2&active_enemies>2\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.bok_proc.up&chi<2&talent.energy_burst&energy<55\nactions.default_aoe+=/strike_of_the_windlord,cycle_targets=1,if=time>5&(cooldown.invoke_xuen_the_white_tiger.remains>15||talent.flurry_strikes)\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=8&talent.shadowboxing_treads\nactions.default_aoe+=/crackling_jade_lightning,cycle_targets=1,if=buff.the_emperors_capacitor.stack>19&combo_strike&talent.power_of_the_thunder_king\nactions.default_aoe+=/fists_of_fury,cycle_targets=1\nactions.default_aoe+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.wisdom_of_the_wall_flurry.up&chi<6\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&chi>5\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.dance_of_chiji.up&buff.chi_energy.stack>29&cooldown.fists_of_fury.remains<5\nactions.default_aoe+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&cooldown.fists_of_fury.remains>2\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.dance_of_chiji.up&spinning_crane_kick.max\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&talent.crane_vortex&active_enemies>2&spinning_crane_kick.max\nactions.default_aoe+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.ordered_elements.up\nactions.default_aoe+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.deficit>=2&(!buff.ordered_elements.up||energy.time_to_max<=gcd.max*3)\nactions.default_aoe+=/jadefire_stomp,cycle_targets=1,if=talent.singularly_focused_jade||talent.jadefire_harmony\nactions.default_aoe+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&!buff.ordered_elements.up&talent.crane_vortex&active_enemies>2&chi>4&spinning_crane_kick.max\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains&(buff.teachings_of_the_monastery.stack>3||buff.ordered_elements.up)&(talent.shadowboxing_treads||buff.bok_proc.up)\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&!cooldown.fists_of_fury.remains&chi<3\nactions.default_aoe+=/spinning_crane_kick,if=combo_strike&(chi>3||energy>55)\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&(buff.ordered_elements.up||buff.bok_proc.up&chi.deficit>=1&talent.energy_burst)&cooldown.fists_of_fury.remains\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains&(chi>2||energy>60||buff.bok_proc.up)\nactions.default_aoe+=/jadefire_stomp,cycle_targets=1\nactions.default_aoe+=/tiger_palm,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1\nactions.default_aoe+=/chi_burst,if=!buff.ordered_elements.up\nactions.default_aoe+=/chi_burst\nactions.default_aoe+=/spinning_crane_kick,if=combo_strike&buff.ordered_elements.up&talent.hit_combo&spinning_crane_kick.max\nactions.default_aoe+=/blackout_kick,cycle_targets=1,if=buff.ordered_elements.up&!talent.hit_combo&cooldown.fists_of_fury.remains\nactions.default_aoe+=/tiger_palm,if=!combo_strike&chi<3&!cooldown.fists_of_fury.remains\n\n# 2-4 targets\nactions.default_cleave+=/rising_sun_kick,cycle_targets=1,if=buff.pressure_point.up&active_enemies<4&cooldown.fists_of_fury.remains>4\nactions.default_cleave+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.dance_of_chiji.stack=2&active_enemies>3\nactions.default_cleave+=/tiger_palm,cycle_targets=1,if=(energy>55&talent.inner_peace||energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&(talent.energy_burst&!buff.bok_proc.up||!talent.energy_burst)&!buff.ordered_elements.up||(talent.energy_burst&!buff.bok_proc.up||!talent.energy_burst)&!buff.ordered_elements.up&!cooldown.fists_of_fury.remains&chi<3||(prev.strike_of_the_windlord||cooldown.strike_of_the_windlord.remains)&cooldown.celestial_conduit.remains<2&buff.ordered_elements.up&chi<5&combo_strike||(!buff.heart_of_the_jade_serpent_cdr.up||!buff.heart_of_the_jade_serpent_cdr_celestial.up)&combo_strike&chi.deficit>=2&!buff.ordered_elements.up\nactions.default_cleave+=/touch_of_death\nactions.default_cleave+=/celestial_conduit,cycle_targets=1,if=buff.storm_earth_and_fire.up&cooldown.strike_of_the_windlord.remains&(talent.xuens_bond||!talent.xuens_bond&buff.invokers_delight.up)||boss&fight_remains<15\nactions.default_cleave+=/rising_sun_kick,cycle_targets=1,if=!pet.xuen_the_white_tiger.active&prev.tiger_palm&time<5||buff.heart_of_the_jade_serpent_cdr_celestial.up&buff.pressure_point.up\nactions.default_cleave+=/fists_of_fury,cycle_targets=1,if=buff.heart_of_the_jade_serpent_cdr_celestial.up\nactions.default_cleave+=/whirling_dragon_punch,cycle_targets=1,if=buff.heart_of_the_jade_serpent_cdr_celestial.up\nactions.default_cleave+=/strike_of_the_windlord,cycle_targets=1,if=talent.gale_force&buff.invokers_delight.up&(buff.bloodlust.up||cooldown.celestial_conduit.remains&!buff.heart_of_the_jade_serpent_cdr_celestial.up)\nactions.default_cleave+=/fists_of_fury,cycle_targets=1,if=buff.power_infusion.up&buff.bloodlust.up\nactions.default_cleave+=/rising_sun_kick,cycle_targets=1,if=buff.power_infusion.up&buff.bloodlust.up&active_enemies<3\nactions.default_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=8&(active_enemies<3||talent.shadowboxing_treads)\nactions.default_cleave+=/whirling_dragon_punch,cycle_targets=1,if=!talent.revolving_whirl||talent.revolving_whirl&buff.dance_of_chiji.stack<2&active_enemies>2||active_enemies<3\nactions.default_cleave+=/strike_of_the_windlord,cycle_targets=1,if=time>5&(cooldown.invoke_xuen_the_white_tiger.remains>15||talent.flurry_strikes)\nactions.default_cleave+=/crackling_jade_lightning,cycle_targets=1,if=buff.the_emperors_capacitor.stack>19&combo_strike&talent.power_of_the_thunder_king\nactions.default_cleave+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.dance_of_chiji.stack=2\nactions.default_cleave+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&active_enemies<5&buff.wisdom_of_the_wall_flurry.up&active_enemies<4\nactions.default_cleave+=/fists_of_fury,cycle_targets=1\nactions.default_cleave+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&active_enemies<5&buff.wisdom_of_the_wall_flurry.up\nactions.default_cleave+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.dance_of_chiji.up&buff.chi_energy.stack>29\nactions.default_cleave+=/rising_sun_kick,cycle_targets=1,if=chi>4&(active_enemies<3||talent.glory_of_the_dawn)||chi>2&energy>50&(active_enemies<3||talent.glory_of_the_dawn)||cooldown.fists_of_fury.remains>2&(active_enemies<3||talent.glory_of_the_dawn)\nactions.default_cleave+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=4&!talent.knowledge_of_the_broken_temple&talent.shadowboxing_treads&active_enemies<3\nactions.default_cleave+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.dance_of_chiji.up\nactions.default_cleave+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&talent.crane_vortex&active_enemies>2\nactions.default_cleave+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&active_enemies<5\nactions.default_cleave+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.deficit>=2&(!buff.ordered_elements.up||energy.time_to_max<=gcd.max*3)\nactions.default_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains&buff.teachings_of_the_monastery.stack>3&cooldown.rising_sun_kick.remains\nactions.default_cleave+=/jadefire_stomp,cycle_targets=1,if=talent.singularly_focused_jade||talent.jadefire_harmony\nactions.default_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains&(buff.teachings_of_the_monastery.stack>3||buff.ordered_elements.up)&(talent.shadowboxing_treads||buff.bok_proc.up||buff.ordered_elements.up)\nactions.default_cleave+=/spinning_crane_kick,cycle_targets=1,if=combo_strike&!buff.ordered_elements.up&talent.crane_vortex&active_enemies>2&chi>4\nactions.default_cleave+=/chi_burst,if=!buff.ordered_elements.up\nactions.default_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&(buff.ordered_elements.up||buff.bok_proc.up&chi.deficit>=1&talent.energy_burst)&cooldown.fists_of_fury.remains\nactions.default_cleave+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains&(chi>2||energy>60||buff.bok_proc.up)\nactions.default_cleave+=/jadefire_stomp,cycle_targets=1\nactions.default_cleave+=/tiger_palm,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1\nactions.default_cleave+=/chi_burst\nactions.default_cleave+=/spinning_crane_kick,if=combo_strike&buff.ordered_elements.up&talent.hit_combo\nactions.default_cleave+=/blackout_kick,cycle_targets=1,if=buff.ordered_elements.up&!talent.hit_combo&cooldown.fists_of_fury.remains\nactions.default_cleave+=/tiger_palm,if=!combo_strike&chi<3&!cooldown.fists_of_fury.remains\n\n# 1 target\nactions.default_st+=/rising_sun_kick,if=buff.pressure_point.up||buff.ordered_elements.remains<=gcd.max*3&buff.storm_earth_and_fire.up\nactions.default_st+=/tiger_palm,cycle_targets=1,if=(energy>55&talent.inner_peace||energy>60&!talent.inner_peace)&combo_strike&chi.max-chi>=2&buff.teachings_of_the_monastery.stack<buff.teachings_of_the_monastery.max_stack&(talent.energy_burst&!buff.bok_proc.up||!talent.energy_burst)&!buff.ordered_elements.up||(talent.energy_burst&!buff.bok_proc.up||!talent.energy_burst)&!buff.ordered_elements.up&!cooldown.fists_of_fury.remains&chi<3||(prev.strike_of_the_windlord||cooldown.strike_of_the_windlord.remains)&cooldown.celestial_conduit.remains<2&buff.ordered_elements.up&chi<5&combo_strike||(!buff.heart_of_the_jade_serpent_cdr.up||!buff.heart_of_the_jade_serpent_cdr_celestial.up)&combo_strike&chi.deficit>=2&!buff.ordered_elements.up\nactions.default_st+=/touch_of_death\nactions.default_st+=/rising_sun_kick,cycle_targets=1,if=buff.invokers_delight.up&!buff.storm_earth_and_fire.up&talent.ordered_elements\nactions.default_st+=/celestial_conduit,if=buff.storm_earth_and_fire.up&(!talent.ordered_elements||buff.ordered_elements.up)&cooldown.strike_of_the_windlord.remains&(talent.xuens_bond||!talent.xuens_bond&buff.invokers_delight.up)||boss&fight_remains<15\nactions.default_st+=/rising_sun_kick,cycle_targets=1,if=!pet.xuen_the_white_tiger.active&prev.tiger_palm&time<5||buff.storm_earth_and_fire.up&talent.ordered_elements\nactions.default_st+=/strike_of_the_windlord,if=talent.gale_force&buff.invokers_delight.up&(buff.bloodlust.up||cooldown.celestial_conduit.remains&!buff.heart_of_the_jade_serpent_cdr_celestial.up)\nactions.default_st+=/rising_sun_kick,cycle_targets=1,if=buff.power_infusion.up&buff.bloodlust.up\nactions.default_st+=/fists_of_fury,cycle_targets=1,if=buff.power_infusion.up&buff.bloodlust.up\nactions.default_st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack>3&buff.ordered_elements.up&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2\nactions.default_st+=/spinning_crane_kick,if=buff.dance_of_chiji.stack=2&combo_strike&buff.power_infusion.up&buff.bloodlust.up\nactions.default_st+=/whirling_dragon_punch,if=buff.power_infusion.up&buff.bloodlust.up\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.power_infusion.up&buff.bloodlust.up\nactions.default_st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack>4&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2\nactions.default_st+=/whirling_dragon_punch,if=!buff.heart_of_the_jade_serpent_cdr_celestial.up&!buff.dance_of_chiji.stack=2||buff.ordered_elements.up||talent.knowledge_of_the_broken_temple\nactions.default_st+=/strike_of_the_windlord,if=time>5&(cooldown.invoke_xuen_the_white_tiger.remains>15||talent.flurry_strikes)\nactions.default_st+=/rising_sun_kick,cycle_targets=1,if=chi>4||chi>2&energy>50||cooldown.fists_of_fury.remains>2\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes&buff.wisdom_of_the_wall_flurry.up\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&chi.deficit>=2&energy.time_to_max<=gcd.max*3\nactions.default_st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack>7&talent.memory_of_the_monastery&!buff.memory_of_the_monastery.up&cooldown.fists_of_fury.remains\nactions.default_st+=/fists_of_fury\nactions.default_st+=/spinning_crane_kick,if=(buff.dance_of_chiji.stack=2||buff.dance_of_chiji.remains<2&buff.dance_of_chiji.up)&combo_strike&!buff.ordered_elements.up\nactions.default_st+=/whirling_dragon_punch\nactions.default_st+=/blackout_kick,cycle_targets=1,if=buff.teachings_of_the_monastery.stack=4&!talent.knowledge_of_the_broken_temple&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2\nactions.default_st+=/spinning_crane_kick,if=buff.dance_of_chiji.stack=2&combo_strike\nactions.default_st+=/blackout_kick,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&cooldown.rising_sun_kick.remains>1&cooldown.fists_of_fury.remains>2\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes\nactions.default_st+=/spinning_crane_kick,if=combo_strike&buff.dance_of_chiji.up&(buff.ordered_elements.up||energy.time_to_max>=gcd.max*3&talent.sequenced_strikes&talent.energy_burst||!talent.sequenced_strikes||!talent.energy_burst||buff.dance_of_chiji.remains<=gcd.max*3)\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&energy.time_to_max<=gcd.max*3&talent.flurry_strikes\nactions.default_st+=/jadefire_stomp,if=talent.singularly_focused_jade||talent.jadefire_harmony\nactions.default_st+=/chi_burst,if=!buff.ordered_elements.up\nactions.default_st+=/blackout_kick,cycle_targets=1,if=combo_strike&(buff.ordered_elements.up||buff.bok_proc.up&chi.deficit>=1&talent.energy_burst)&cooldown.fists_of_fury.remains\nactions.default_st+=/crackling_jade_lightning,if=buff.the_emperors_capacitor.stack>19&!buff.ordered_elements.up&combo_strike\nactions.default_st+=/blackout_kick,cycle_targets=1,if=combo_strike&cooldown.fists_of_fury.remains&(chi>2||energy>60||buff.bok_proc.up)\nactions.default_st+=/jadefire_stomp\nactions.default_st+=/tiger_palm,cycle_targets=1,if=combo_strike&buff.ordered_elements.up&chi.deficit>=1\nactions.default_st+=/chi_burst\nactions.default_st+=/spinning_crane_kick,if=combo_strike&buff.ordered_elements.up&talent.hit_combo\nactions.default_st+=/blackout_kick,cycle_targets=1,if=buff.ordered_elements.up&!talent.hit_combo&cooldown.fists_of_fury.remains\nactions.default_st+=/tiger_palm,if=prev.tiger_palm&chi<3&!cooldown.fists_of_fury.remains",
},
},
["specs"] = {
[269] = {
["settings"] = {
["sef_one_charge"] = false,
["tok_damage"] = 1,
["check_wdp_range"] = false,
["allow_fsk"] = false,
["use_diffuse"] = false,
["check_sck_range"] = false,
},
},
[270] = {
["settings"] = {
["aoe_rsk"] = false,
["single_zen_pulse"] = false,
["save_faeline"] = false,
},
},
[268] = {
["settings"] = {
["bof_percent"] = 50,
["purify_for_celestial"] = true,
["max_damage"] = true,
["vivify_percent"] = 65,
["purify_for_niuzao"] = true,
["purify_stagger_maxhp"] = 6,
["eh_percent"] = 65,
["purify_stagger_currhp"] = 12,
},
},
},
},
},
}