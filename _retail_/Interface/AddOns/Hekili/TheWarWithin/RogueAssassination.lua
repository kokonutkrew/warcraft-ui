-- RogueAssassination.lua
-- October 2024

if UnitClassBase( "player" ) ~= "ROGUE" then return end

local addon, ns = ...
local Hekili = _G[ addon ]
local class, state = Hekili.Class, Hekili.State
local PTR = ns.PTR
local GetUnitChargedPowerPoints = GetUnitChargedPowerPoints
local strformat, wipe, max = string.format, table.wipe, math.max
local UA_GetPlayerAuraBySpellID = C_UnitAuras.GetPlayerAuraBySpellID


local orderedPairs = ns.orderedPairs

local spec = Hekili:NewSpecialization( 259 )

spec:RegisterResource( Enum.PowerType.ComboPoints )

spec:RegisterResource( Enum.PowerType.Energy, {
    garrote_vim = {
        talent = "venomous_wounds",
        aura = "garrote",
        debuff = true,

        last = function ()
            local app = state.debuff.garrote.last_tick
            local exp = state.debuff.garrote.expires
            local tick = state.debuff.garrote.tick_time
            local t = state.query_time

            return min( exp, app + ( floor( ( t - app ) / tick ) * tick ) )
        end,

        stop = function ()
            return state.debuff.poisoned.down or state.active_dot.garrote == 0
        end,

        interval = function ()
            return state.debuff.garrote.tick_time
        end,

        value = function () return state.poisoned_garrotes * 8 end
    },
    rupture_vim = {
        talent = "venomous_wounds",
        aura = "rupture",
        debuff = true,

        last = function ()
            local app = state.debuff.rupture.last_tick
            local exp = state.debuff.rupture.expires
            local tick = state.debuff.rupture.tick_time
            local t = state.query_time

            return min( exp, app + ( floor( ( t - app ) / tick ) * tick ) )
        end,

        stop = function ()
            return state.debuff.poisoned.down or state.active_dot.rupture == 0
        end,

        interval = function ()
            return state.debuff.rupture.tick_time
        end,

        value = function () return state.poisoned_ruptures * 8 end
    },
    nothing_personal = {
        aura = "nothing_personal_regen",

        last = function ()
            local app = state.buff.nothing_personal_regen.applied
            local exp = state.buff.nothing_personal_regen.expires
            local tick = state.buff.nothing_personal_regen.tick_time
            local t = state.query_time

            return min( exp, app + ( floor( ( t - app ) / tick ) * tick ) )
        end,

        stop = function ()
            return state.buff.nothing_personal_regen.down
        end,

        interval = function ()
            return state.buff.nothing_personal_regen.tick_time
        end,

        value = 4
    }
} )


-- Talents
spec:RegisterTalents( {
    -- Rogue
    acrobatic_strikes      = {  90752, 455143, 1 }, -- Auto-attacks increase auto-attack damage and movement speed by 1.0% for 3 sec, stacking up to 10%.
    airborne_irritant      = {  90741, 200733, 1 }, -- Blind has 50% reduced cooldown, 70% reduced duration, and applies to all nearby enemies.
    alacrity               = {  90751, 193539, 2 }, -- Your finishing moves have a 5% chance per combo point to grant 1% Haste for 15 sec, stacking up to 5 times.
    atrophic_poison        = {  90763, 381637, 1 }, -- Coats your weapons with a Non-Lethal Poison that lasts for 1 |4hour:hrs;. Each strike has a 21% chance of poisoning the enemy, reducing their damage by 3.6% for 10 sec.
    blackjack              = {  90686, 379005, 1 }, -- Enemies have 30% reduced damage and healing for 6 sec after Blind or Sap's effect on them ends.
    blind                  = {  90684,   2094, 1 }, -- Blinds the target, causing it to wander disoriented for 1 min. Damage will interrupt the effect. Limit 1.
    cheat_death            = {  90742,  31230, 1 }, -- Fatal attacks instead reduce you to 7% of your maximum health. For 3 sec afterward, you take 85% reduced damage. Cannot trigger more often than once per 6 min.
    cloak_of_shadows       = {  90697,  31224, 1 }, -- Provides a moment of magic immunity, instantly removing all harmful spell effects. The cloak lingers, causing you to resist harmful spells for 5 sec.
    cold_blood             = {  90748, 382245, 1 }, -- Increases the critical strike chance of your next damaging ability by 100%.
    deadened_nerves        = {  90743, 231719, 1 }, -- Physical damage taken reduced by 5%.
    deadly_precision       = {  90760, 381542, 1 }, -- Increases the critical strike chance of your attacks that generate combo points by 5%.
    deeper_stratagem       = {  90750, 193531, 1 }, -- Gain 1 additional max combo point. Your finishing moves that consume more than 5 combo points have increased effects, and your finishing moves deal 5% increased damage.
    echoing_reprimand      = {  90638, 470669, 1 }, -- After consuming a supercharged combo point, your next Mutilate also strikes the target with an Echoing Reprimand dealing 20,557 Physical damage.
    elusiveness            = {  90742,  79008, 1 }, -- Evasion also reduces damage taken by 20%, and Feint also reduces non-area-of-effect damage taken by 20%.
    evasion                = {  90764,   5277, 1 }, -- Increases your dodge chance by 100% for 10 sec.
    featherfoot            = {  94563, 423683, 1 }, -- Sprint increases movement speed by an additional 30% and has 4 sec increased duration.
    fleet_footed           = {  90762, 378813, 1 }, -- Movement speed increased by 15%.
    forced_induction       = {  90638, 470668, 1 }, -- Increase the bonus granted when a damaging finishing move consumes a supercharged combo point by 1.
    gouge                  = {  90741,   1776, 1 }, -- Gouges the eyes of an enemy target, incapacitating for 4 sec. Damage will interrupt the effect. Must be in front of your target. Awards 1 combo point.
    graceful_guile         = {  94562, 423647, 1 }, -- Feint has 1 additional charge.
    improved_ambush        = {  90692, 381620, 1 }, -- Ambush generates 1 additional combo point.
    improved_sprint        = {  90746, 231691, 1 }, -- Reduces the cooldown of Sprint by 60 sec.
    improved_wound_poison  = {  90637, 319066, 1 }, -- Wound Poison can now stack 2 additional times.
    iron_stomach           = {  90744, 193546, 1 }, -- Increases the healing you receive from Crimson Vial, healing potions, and healthstones by 25%.
    leeching_poison        = {  90758, 280716, 1 }, -- Adds a Leeching effect to your Lethal poisons, granting you 7% Leech.
    lethality              = {  90749, 382238, 2 }, -- Critical strike chance increased by 1%. Critical strike damage bonus of your attacks that generate combo points increased by 10%.
    master_poisoner        = {  90636, 378436, 1 }, -- Increases the non-damaging effects of your weapon poisons by 20%.
    nimble_fingers         = {  90745, 378427, 1 }, -- Energy cost of Feint and Crimson Vial reduced by 10.
    numbing_poison         = {  90763,   5761, 1 }, -- Coats your weapons with a Non-Lethal Poison that lasts for 1 |4hour:hrs;. Each strike has a 21% chance of poisoning the enemy, clouding their mind and slowing their attack and casting speed by 18% for 10 sec.
    recuperator            = {  90640, 378996, 1 }, -- Slice and Dice heals you for up to 1% of your maximum health per 3 sec.
    rushed_setup           = {  90754, 378803, 1 }, -- The Energy costs of Kidney Shot, Cheap Shot, Sap, and Distract are reduced by 20%.
    shadowheart            = { 101714, 455131, 1 }, -- Leech increased by 2% while Stealthed.
    shadowrunner           = {  90687, 378807, 1 }, -- While Stealth or Shadow Dance is active, you move 20% faster.
    shiv                   = {  90740,   5938, 1 }, -- Attack with your poisoned blades, dealing 66,434 Physical damage, dispelling all enrage effects and applying a concentrated form of your active Non-Lethal poison. Your Nature and Bleed damage done to the target is increased by 30% for 8 sec. Awards 1 combo point.
    soothing_darkness      = {  90691, 393970, 1 }, -- You are healed for 30% of your maximum health over 6 sec after activating Vanish.
    stillshroud            = {  94561, 423662, 1 }, -- Shroud of Concealment has 50% reduced cooldown.
    subterfuge             = {  90688, 108208, 2 }, -- Abilities requiring Stealth can be used for 3 sec after Stealth breaks. Combat benefits requiring Stealth persist for an additional 3 sec after Stealth breaks.
    supercharger           = {  90639, 470347, 2 }, -- Shiv supercharges 1 combo point. Damaging finishing moves consume a supercharged combo point to function as if they spent 2 additional combo points.
    superior_mixture       = {  94567, 423701, 1 }, -- Crippling Poison reduces movement speed by an additional 10%.
    thistle_tea            = {  90756, 381623, 1 }, -- Restore 100 Energy. Mastery increased by 13.6% for 6 sec. When your Energy is reduced below 30, drink a Thistle Tea.
    thrill_seeking         = {  90695, 394931, 1 }, -- Shadowstep has 1 additional charge.
    tight_spender          = {  90692, 381621, 1 }, -- Energy cost of finishing moves reduced by 6%.
    tricks_of_the_trade    = {  90686,  57934, 1 }, -- Redirects all threat you cause to the targeted party or raid member, beginning with your next damaging attack within the next 30 sec and lasting 6 sec.
    unbreakable_stride     = {  90747, 400804, 1 }, -- Reduces the duration of movement slowing effects 30%.
    vigor                  = {  90759,  14983, 2 }, -- Increases your maximum Energy by 50 and Energy regeneration by 5%.
    virulent_poisons       = {  90760, 381543, 1 }, -- Increases the damage of your weapon poisons by 10%.
    without_a_trace        = { 101713, 382513, 1 }, -- Vanish has 1 additional charge.

    -- Assassination
    amplifying_poison      = {  90621, 381664, 1 }, -- Coats your weapons with a Lethal Poison that lasts for 1 |4hour:hrs;. Each strike has a 21% chance to poison the enemy, dealing 2,339 Nature damage and applying Amplifying Poison for 12 sec. Envenom can consume 10 stacks of Amplifying Poison to deal 35% increased damage. Max 20 stacks.
    arterial_precision     = {  90784, 400783, 1 }, -- Shiv strikes 4 additional nearby enemies and increases your Bleed damage done to affected targets by 30% for 8 sec.
    blindside              = {  90786, 328085, 1 }, -- Ambush and Mutilate have a 15% chance to make your next Ambush free and usable without Stealth. Chance increased to 30% if the target is under 35% health.
    bloody_mess            = {  90625, 381626, 1 }, -- Garrote and Rupture damage increased by 15%.
    caustic_spatter        = {  94556, 421975, 1 }, -- Using Mutilate on a target afflicted by your Rupture and Deadly Poison applies Caustic Spatter for 10 sec. Limit 1. Caustic Spatter causes 40% of your Poison damage dealt to splash onto other nearby enemies, reduced beyond 5 targets.
    crimson_tempest        = {  90632, 121411, 1 }, -- Finishing move that slashes all enemies within 10 yards, causing victims to bleed. Lasts longer per combo point. Deals extra damage when multiple enemies are afflicted, increasing by 20% per target, up to 100%. Deals reduced damage beyond 5 targets. 1 point : 39,269 over 6 sec 2 points: 49,648 over 8 sec 3 points: 60,027 over 10 sec 4 points: 70,406 over 12 sec 5 points: 80,786 over 14 sec 6 points: 91,165 over 16 sec 7 points: 101,544 over 18 sec
    dashing_scoundrel      = {  90766, 381797, 1 }, -- Envenom's effect also increases the critical strike chance of your weapon poisons by 5%, and their critical strikes generate 1 Energy.
    deadly_poison          = {  90783,   2823, 1 }, -- Coats your weapons with a Lethal Poison that lasts for 1 |4hour:hrs;. Each strike has a 21% chance to poison the enemy for 25,032 Nature damage over 12 sec. Subsequent poison applications will instantly deal 2,339 Nature damage.
    deathmark              = {  90769, 360194, 1 }, -- Carve a deathmark into an enemy, dealing 97,008 Bleed damage over 16 sec. While marked your Garrote, Rupture, and Lethal poisons applied to the target are duplicated, dealing 100% of normal damage.
    doomblade              = {  90777, 381673, 1 }, -- Mutilate deals an additional 20% Bleed damage over 8 sec.
    dragontempered_blades  = {  94553, 381801, 1 }, -- You may apply 1 additional Lethal and Non-Lethal Poison to your weapons, but they have 30% less application chance.
    fatal_concoction       = {  90626, 392384, 1 }, -- Increases the damage of your weapon poisons by 10%.
    flying_daggers         = {  94554, 381631, 1 }, -- Fan of Knives has its radius increased to 12 yds, deals 15% more damage, and an additional 15% when striking 5 or more targets.
    improved_garrote       = {  90780, 381632, 1 }, -- Garrote deals 50% increased damage and has no cooldown when used from Stealth and for 12 sec after breaking Stealth.
    improved_poisons       = {  90634, 381624, 1 }, -- Increases the application chance of your weapon poisons by 5%.
    improved_shiv          = {  90628, 319032, 1 }, -- Shiv now also increases your Nature damage done against the target by 30% for 8 sec.
    indiscriminate_carnage = {  90774, 381802, 1 }, -- Garrote and Rupture apply to 2 additional nearby enemies when used from Stealth and for 12 sec after breaking Stealth.
    intent_to_kill         = {  94555, 381630, 1 }, -- Shadowstep's cooldown is reduced by 33% when used on a target afflicted by your Garrote.
    internal_bleeding      = {  94556, 381627, 1 }, -- Kidney Shot and Rupture also apply Internal Bleeding, dealing up to 36,373 Bleed damage over 6 sec, based on combo points spent.
    iron_wire              = {  94555, 196861, 1 }, -- Garrote silences the target for 5 sec when used from Stealth. Enemies silenced by Garrote deal 15% reduced damage for 5 sec.
    kingsbane              = {  94552, 385627, 1 }, -- Release a lethal poison from your weapons and inject it into your target, dealing 55,959 Nature damage instantly and an additional 48,216 Nature damage over 14 sec. Each time you apply a Lethal Poison to a target affected by Kingsbane, Kingsbane damage increases by 20%, up to 1,000%. Awards 1 combo point.
    lethal_dose            = {  90624, 381640, 2 }, -- Your weapon poisons, Nature damage over time, and Bleed abilities deal 1% increased damage to targets for each weapon poison, Nature damage over time, and Bleed effect on them.
    lightweight_shiv       = {  90633, 394983, 1 }, -- Shiv deals 100% increased damage and has 1 additional charge.
    master_assassin        = {  90623, 255989, 1 }, -- Critical strike chance increased by 25% while Stealthed and for 12 sec after breaking Stealth.
    path_of_blood          = {  94536, 423054, 1 }, -- Increases maximum Energy by 100.
    poison_bomb            = {  90767, 255544, 2 }, -- Envenom has a 4% chance per combo point spent to smash a vial of poison at the target's location, creating a pool of acidic death that deals 36,419 Nature damage over 2 sec to all enemies within it.
    rapid_injection        = {  94557, 455072, 1 }, -- Envenom's effect increases the damage of Envenom by 10%.
    sanguine_blades        = {  90779, 200806, 1 }, -- While above 50% of maximum Energy your Garrote, Rupture, and Crimson Tempest consume 2 Energy to duplicate 30% of any damage dealt.
    sanguine_stratagem     = {  94554, 457512, 1 }, -- Gain 1 additional max combo point. Your finishing moves that consume more than 5 combo points have increased effects, and your finishing moves deal 5% increased damage.
    scent_of_blood         = {  90775, 381799, 2 }, -- Each enemy afflicted by your Rupture increases your Agility by 2%, up to a maximum of 20%.
    seal_fate              = {  90757,  14190, 1 }, -- Critical strikes with attacks that generate combo points grant an additional combo point per critical strike.
    serrated_bone_spikes   = {  90622, 455352, 1 }, -- Prepare a Serrated Bone Spike every 30 sec, stacking up to 3. Rupture spends a stack to embed a bone spike in its target.  Serrated Bone Spike: Deals 30,356 Physical damage and 4,138 Bleed damage every 2.4 sec until the target dies or leaves combat. Refunds a stack when the target dies. Awards 1 combo point plus 1 additional per active bone spike.
    shrouded_suffocation   = {  90776, 385478, 1 }, -- Garrote damage increased by 20%. Garrote generates 2 additional combo points when used from Stealth.
    sudden_demise          = {  94551, 423136, 1 }, -- Bleed damage increased by 10%. Targets below 35% health instantly bleed out and take fatal damage when the remaining Bleed damage you would deal to them exceeds 150% of their remaining health.
    systemic_failure       = {  90771, 381652, 1 }, -- Garrote increases the damage of Ambush and Mutilate on the target by 20%.
    thrown_precision       = {  90630, 381629, 1 }, -- Fan of Knives has 10% increased critical strike chance and its critical strikes always apply your weapon poisons.
    tiny_toxic_blade       = {  90770, 381800, 1 }, -- Shiv deals 200% increased damage and no longer costs Energy.
    twist_the_knife        = {  90768, 381669, 1 }, -- Envenom duration increased by 2 sec. Envenom can now overlap 2 times.
    venomous_wounds        = {  90635,  79134, 1 }, -- You regain 8 Energy each time your Garrote or Rupture deal Bleed damage to a poisoned target. If an enemy dies while afflicted by your Rupture, you regain energy based on its remaining duration.
    vicious_venoms         = {  90772, 381634, 2 }, -- Ambush and Mutilate cost 5 more Energy and deal 35% additional damage as Nature.
    zoldyck_recipe         = {  90785, 381798, 2 }, -- Your Poisons and Bleeds deal 15% increased damage to targets below 35% health.

    -- Deathstalker
    bait_and_switch        = {  95106, 457034, 1 }, -- Evasion reduces magical damage taken by 20%. Cloak of Shadows reduces physical damage taken by 20%.
    clear_the_witnesses    = {  95110, 457053, 1 }, -- Your next Fan of Knives after applying Deathstalker's Mark deals an additional 23,752 Plague damage and generates 1 additional combo point.
    corrupt_the_blood      = {  95108, 457066, 1 }, -- Rupture deals an additional 593 Plague damage each time it deals damage, stacking up to 10 times. Rupture duration increased by 3 sec.
    darkest_night          = {  95142, 457058, 1 }, -- When you consume the final Deathstalker's Mark from a target or your target dies, gain 40 Energy and your next Envenom cast with maximum combo points is guaranteed to critically strike, deals 60% additional damage, and applies 3 stacks of Deathstalker's Mark to the target.
    deathstalkers_mark     = {  95136, 457052, 1, "deathstalker" }, -- Ambush from Stealth applies 3 stacks of Deathstalker's Mark to your target. When you spend 5 or more combo points on attacks against a Marked target you consume an application of Deathstalker's Mark, dealing 28,502 Plague damage and increasing the damage of your next Ambush or Mutilate by 50%. You may only have one target Marked at a time.
    ethereal_cloak         = {  95106, 457022, 1 }, -- Cloak of Shadows duration increased by 2 sec.
    fatal_intent           = {  95135, 461980, 1 }, -- Your damaging abilities against enemies above 20% health have a very high chance to apply Fatal Intent. When an enemy falls below 20% health, Fatal Intent inflicts 5,341 Plague damage per stack.
    follow_the_blood       = {  95131, 457068, 1 }, -- Fan of Knives and Crimson Tempest deal 30% additional damage while 2 or more enemies are afflicted with Rupture.
    hunt_them_down         = {  95132, 457054, 1 }, -- Auto-attacks against Marked targets deal an additional 5,938 Plague damage.
    lingering_darkness     = {  95109, 457056, 1 }, -- After Deathmark expires, gain 30 sec of 30% increased Nature damage.
    momentum_of_despair    = {  95131, 457067, 1 }, -- If you have critically struck with Fan of Knives, increase the critical strike chance of Fan of Knives and Crimson Tempest by 15% and critical strike damage by 32% for 12 sec.
    shadewalker            = {  95123, 457057, 1 }, -- Each time you consume a stack of Deathstalker's Mark, reduce the cooldown of Shadowstep by 3 sec.
    shroud_of_night        = {  95123, 457063, 1 }, -- Shroud of Concealment duration increased by 5 sec.
    singular_focus         = {  95117, 457055, 1 }, -- Damage dealt to targets other than your Marked target deals 5% Plague damage to your Marked target.
    symbolic_victory       = {  95109, 457062, 1 }, -- Shiv additionally increases the damage of your next Envenom by 18%.

    -- Fatebound
    chosens_revelry        = {  95138, 454300, 1 }, -- Leech increased by 0.5% for each time your Fatebound Coin has flipped the same face in a row.
    deal_fate              = {  95107, 454419, 1 }, -- Mutilate, Ambush, and Fan of Knives generate 1 additional combo point when they trigger Seal Fate.
    deaths_arrival         = {  95130, 454433, 1 }, -- Shadowstep may be used a second time within 3 sec with no cooldown, but its total cooldown is increased by 5 sec.
    delivered_doom         = {  95119, 454426, 1 }, -- Damage dealt when your Fatebound Coin flips tails is increased by 30% if there are no other enemies near the target. Each additional nearby enemy reduces this bonus by 6%.
    destiny_defined        = {  95114, 454435, 1 }, -- Weapon poisons have 5% increased application chance and your Fatebound Coins flipped have an additional 5% chance to match the same face as the last flip.
    double_jeopardy        = {  95129, 454430, 1 }, -- Your first Fatebound Coin flip after breaking Stealth flips two coins that are guaranteed to match the same outcome.
    edge_case              = {  95139, 453457, 1 }, -- Activating Deathmark flips a Fatebound Coin and causes it to land on its edge, counting as both Heads and Tails.
    fate_intertwined       = {  95120, 454429, 1 }, -- Fate Intertwined duplicates 30% of Envenom critical strike damage as Cosmic to 2 additional nearby enemies. If there are no additional nearby targets, duplicate 30% to the primary target instead.
    fateful_ending         = {  95127, 454428, 1 }, -- When your Fatebound Coin flips the same face for the seventh time in a row, keep the lucky coin to gain 7% Agility until you leave combat for 10 seconds. If you already have a lucky coin, it instead deals 85,507 Cosmic damage to your target.
    hand_of_fate           = {  95125, 452536, 1, "fatebound" }, -- Flip a Fatebound Coin each time a finishing move consumes 5 or more combo points. Heads increases the damage of your attacks by 10%, lasting 15 sec or until you flip Tails. Tails deals 42,753 Cosmic damage to your target. For each time the same face is flipped in a row, Heads increases damage by an additional 2% and Tails increases its damage by 10%.
    inevitabile_end        = {  95114, 454434, 1 }, -- Cold Blood now benefits the next two abilities but only applies to Envenom. Fatebound Coins flipped by these abilities are guaranteed to match the same outcome as the last flip.
    inevitable_end         = {  95114, 454434, 1 }, -- Cold Blood now benefits the next two abilities but only applies to Envenom. Fatebound Coins flipped by these abilities are guaranteed to match the same outcome as the last flip.
    inexorable_march       = {  95130, 454432, 1 }, -- You cannot be slowed below 70% of normal movement speed while your Fatebound Coin flips have an active streak of at least 2 flips matching the same face.
    mean_streak            = {  95122, 453428, 1 }, -- Fatebound Coins flipped by Envenom multiple times in a row are 33% more likely to match the same face as the last flip.
    tempted_fate           = {  95138, 454286, 1 }, -- You have a chance equal to your critical strike chance to absorb 10% of any damage taken, up to a maximum chance of 40%.
} )


-- PvP Talents
spec:RegisterPvpTalents( {
    control_is_king    = 5530, -- (354406)
    creeping_venom     =  141, -- (354895)
    dagger_in_the_dark = 5550, -- (198675)
    death_from_above   = 3479, -- (269513) Finishing move that empowers your weapons with energy to perform a deadly attack.; You leap into the air and $?s32645[Envenom]?s2098[Dispatch][Eviscerate] your target on the way back down, with such force that it has a $269512s2% stronger effect.
    dismantle          = 5405, -- (207777) Disarm the enemy, preventing the use of any weapons or shield for 5 sec.
    hemotoxin          =  830, -- (354124)
    maneuverability    = 3448, -- (197000)
    smoke_bomb         = 3480, -- (212182) Creates a cloud of thick smoke in an 8 yard radius around the Rogue for 5 sec. Enemies are unable to target into or out of the smoke cloud.
    system_shock       =  147, -- (198145)
    thick_as_thieves   = 5408, -- (221622)
    veil_of_midnight   = 5517, -- (198952)
} )


spec:RegisterStateExpr( "cp_max_spend", function ()
    return combo_points.max
end )

spec:RegisterStateExpr( "effective_combo_points", function ()
    local c = combo_points.current or 0

    if c > 0 and buff.supercharged_combo_points.up then
        c = c + ( talent.forced_induction.enabled and 3 or 2 )
    end

    return c
end )


local stealth = {
    normal = { "stealth" },
    vanish = { "vanish" },
    subterfuge = { "subterfuge" },
    shadow_dance = { "shadow_dance" },
    shadowmeld = { "shadowmeld" },
    sepsis = { "sepsis_buff" },

    improved_garrote = { "improved_garrote_aura", "improved_garrote", "sepsis_buff" },

    basic = { "stealth", "vanish" },
    mantle = { "stealth", "vanish" },
    rogue = { "stealth", "vanish", "subterfuge", "shadow_dance" },
    ambush = { "stealth", "vanish", "subterfuge", "shadow_dance", "sepsis_buff" },

    all = { "stealth", "vanish", "shadowmeld", "subterfuge", "shadow_dance", "sepsis_buff", "improved_garrote_aura", "improved_garrote" },
}


spec:RegisterStateTable( "stealthed", setmetatable( {}, {
    __index = function( t, k )
        local kRemains = k == "remains" and "all" or k:match( "^(.+)_remains$" )

        if kRemains then
            local category = stealth[ kRemains ]
            if not category then return 0 end

            local remains = 0
            for _, aura in ipairs( category ) do
                remains = max( remains, buff[ aura ].remains )
            end

            return remains
        end

        local category = stealth[ k ]
        if not category then return false end

        for _, aura in ipairs( category ) do
            if buff[ aura ].up then return true end
        end

        return false
    end,
} ) )


spec:RegisterStateExpr( "master_assassin_remains", function ()
    if buff.master_assassin_any.up then return buff.master_assassin_any.remains end
    return 0
end )

spec:RegisterStateExpr( "indiscriminate_carnage_remains", function ()
    if not talent.indiscriminate_carnage.enabled then return 0 end
    return buff.indiscriminate_carnage_any.remains
end )

local stealth_dropped = 0

local function isStealthed()
    return ( UA_GetPlayerAuraBySpellID( 1784 ) or UA_GetPlayerAuraBySpellID( 115191 ) or UA_GetPlayerAuraBySpellID( 115192 ) or UA_GetPlayerAuraBySpellID( 11327 ) or GetTime() - stealth_dropped < 0.2 )
end

local calculate_multiplier = setfenv( function( spellID )
    local mult = 1

    if spellID == 703 and talent.improved_garrote.enabled and ( UA_GetPlayerAuraBySpellID( 375939 ) or UA_GetPlayerAuraBySpellID( 347037 ) or UA_GetPlayerAuraBySpellID( 392401 ) or UA_GetPlayerAuraBySpellID( 392403 ) ) then
        mult = mult * 1.5
    end

    return mult
end, state )


-- Bleed Modifiers
local tracked_bleeds = {}

local function NewBleed( key, spellID )
    tracked_bleeds[ key ] = {
        id = spellID,
        rate = {},
        last_tick = {},
        haste = {}
    }

    tracked_bleeds[ spellID ] = tracked_bleeds[ key ]
end

local function ApplyBleed( key, target )
    local bleed = tracked_bleeds[ key ]

    bleed.rate[ target ]         = 1
    bleed.last_tick[ target ]    = GetTime()
    bleed.haste[ target ]        = 100 + GetHaste()
end

local function UpdateBleedTick( key, target, time )
    local bleed = tracked_bleeds[ key ]

    if not bleed.rate[ target ] then return end

    bleed.last_tick[ target ] = time or GetTime()
end

local function RemoveBleed( key, target )
    local bleed = tracked_bleeds[ key ]

    bleed.rate[ target ]         = nil
    bleed.last_tick[ target ]    = nil
    bleed.haste[ target ]        = nil
end

NewBleed( "garrote", 703 )
NewBleed( "garrote_deathmark", 360830 )
NewBleed( "rupture", 1943 )
NewBleed( "rupture_deathmark", 360826 )
NewBleed( "crimson_tempest", 121411 )
NewBleed( "internal_bleeding", 154904 )

NewBleed( "deadly_poison_dot", 2823 )
NewBleed( "deadly_poison_dot_deathmark", 394324 )
NewBleed( "sepsis", 328305 )
NewBleed( "serrated_bone_spike", 324073 )

local application_events = {
    SPELL_AURA_APPLIED      = true,
    SPELL_AURA_APPLIED_DOSE = true,
    SPELL_AURA_REFRESH      = true,
}

local removal_events = {
    SPELL_AURA_REMOVED      = true,
    SPELL_AURA_BROKEN       = true,
    SPELL_AURA_BROKEN_SPELL = true,
}

local stealth_spells = {
    [1784  ] = true,
    [115191] = true,
}

local tick_events = {
    SPELL_PERIODIC_DAMAGE   = true,
}

local death_events = {
    UNIT_DIED               = true,
    UNIT_DESTROYED          = true,
    UNIT_DISSIPATES         = true,
    PARTY_KILL              = true,
    SPELL_INSTAKILL         = true,
}

spec:RegisterCombatLogEvent( function( _, subtype, _,  sourceGUID, sourceName, _, _, destGUID, destName, destFlags, _, spellID, spellName )
    if sourceGUID == state.GUID then
        if removal_events[ subtype ] then
            if stealth_spells[ spellID ] then
                stealth_dropped = GetTime()
                return
            end
        end

        if tracked_bleeds[ spellID ] then
            if application_events[ subtype ] then
                -- TODO:  Modernize basic debuff tracking and snapshotting.
                ns.saveDebuffModifier( spellID, calculate_multiplier( spellID ) )
                ns.trackDebuff( spellID, destGUID, GetTime(), true )

                ApplyBleed( spellID, destGUID )
                return
            end

            if tick_events[ subtype ] then
                UpdateBleedTick( spellID, destGUID, GetTime() )
                return
            end

            if removal_events[ subtype ] then
                RemoveBleed( spellID, destGUID )
                return
            end
        end

    end

    if death_events[ subtype ] then
        --[[ TODO: Deal with annoying Training Dummy resets.

        RemoveBleed( "garrote", destGUID )
        RemoveBleed( "rupture", destGUID )
        RemoveBleed( "crimson_tempest", destGUID )
        RemoveBleed( "internal_bleeding", destGUID )

        RemoveBleed( "deadly_poison_dot", destGUID )
        RemoveBleed( "sepsis", destGUID )
        RemoveBleed( "serrated_bone_spike", destGUID ) ]]
    end
end, false )


local energySpent = 0

local ENERGY = Enum.PowerType.Energy
local lastEnergy = -1

spec:RegisterUnitEvent( "UNIT_POWER_FREQUENT", "player", nil, function( event, unit, powerType )
    if powerType == "ENERGY" then
        local current = UnitPower( "player", ENERGY )

        if current < lastEnergy then
            energySpent = ( energySpent + lastEnergy - current ) % 30
        end

        lastEnergy = current
        return
    elseif powerType == "COMBO_POINTS" then
        Hekili:ForceUpdate( powerType, true )
    end
end )

spec:RegisterCycle( function ()
    if this_action == "marked_for_death" then
        if cycle_enemies == 1 or active_dot.marked_for_death >= cycle_enemies then return end -- As far as we can tell, MfD is on everything we care about, so we don't cycle.
        if debuff.marked_for_death.up then return "cycle" end -- If current target already has MfD, cycle.
        if target.time_to_die > 3 + Hekili:GetLowestTTD() and active_dot.marked_for_death == 0 then return "cycle" end -- If our target isn't lowest TTD, and we don't have to worry that the lowest TTD target is already MfD'd, cycle.
    end
end )

spec:RegisterStateExpr( "energy_spent", function ()
    return energySpent
end )

spec:RegisterHook( "spend", function( amt, resource )
    if resource == "energy" and amt > 0 then
        if legendary.duskwalkers_patch.enabled and cooldown.vendetta.remains > 0 then
            energy_spent = energy_spent + amt
            local reduction = floor( energy_spent / 30 )
            energy_spent = energy_spent % 30

            if reduction > 0 then
                reduceCooldown( "vendetta", reduction )
            end
        end

        if talent.thistle_tea.enabled and energy.current < 30 and cooldown.thistle_tea.charges > 0 then
            spendCharges( "thistle_tea", 1 )
            gain( 100, "energy" )
            applyBuff( "thistle_tea" )
        end
    end

    if set_bonus.tier31_4pc > 0 and resource == "energy" and amt > 9 then
        addStack( "natureblight", 6, floor( amt / 10 ) )
    end

    if resource == "combo_points" then
        if buff.flagellation_buff.up then
            if legendary.obedience.enabled then
                reduceCooldown( "flagellation", amt )
            end

            if debuff.flagellation.up then
                stat.mod_haste_pct = stat.mod_haste_pct + amt
            end
        end

        if amt > 4 and debuff.deathstalkers_mark.up then
            removeDebuffStack( "target", "deathstalkers_mark" )
            if debuff.deathstalkers_mark.down and talent.darkest_night.enabled then
                    gain( 40, "energy" )
                    applyBuff( "darkest_night" )
                end
            applyBuff( "deathstalkers_mark_buff" )
        end
    end
end )

spec:RegisterStateExpr( "poison_chance", function ()
    return ( 0.3 + ( talent.destiny_defined.enabled and 0.05 or 0 ) + ( talent.improved_poisons.enabled and 0.05 or 0 ) ) * ( talent.dragontempered_blades.enabled and 0.7 or 1 )
end )

spec:RegisterStateExpr( "persistent_multiplier", function ()
    if not this_action then return 1 end
    if this_action == "garrote" and buff.improved_garrote_any.up then return 1.5 end
    return 1
end )

-- Enemies with either Deadly Poison or Wound Poison applied.
spec:RegisterStateExpr( "poisoned_enemies", function ()
    return ns.countUnitsWithDebuffs( "deadly_poison_dot", "wound_poison_dot", "amplifying_poison_dot" )
end )

spec:RegisterStateExpr( "poison_remains", function ()
    return debuff.lethal_poison.remains
end )


local valid_bleeds = { "garrote", "internal_bleeding", "rupture", "crimson_tempest", "mutilated_flesh", "serrated_bone_spike" }

-- Count of bleeds on targets.
spec:RegisterStateExpr( "bleeds", function ()
    local n = 0

    for _, aura in pairs( valid_bleeds ) do
        if debuff[ aura ].up then
            n = n + 1
        end
    end

    return n
end )

-- Count of bleeds on all poisoned (Deadly/Wound) targets.
spec:RegisterStateExpr( "poisoned_bleeds", function ()
    return ns.conditionalDebuffCount( "deadly_poison_dot", "wound_poison_dot", "amplifying_poison_dot", "garrote", "internal_bleeding", "rupture" )
end )


-- Count of Garrotes on all poisoned (Deadly/Wound) targets.
spec:RegisterStateExpr( "poisoned_garrotes", function ()
    return ns.conditionalDebuffCount( "deadly_poison_dot", "wound_poison_dot", "amplifying_poison_dot", "garrote" )
end )

-- Count of Ruptures on all poisoned (Deadly/Wound) targets.
spec:RegisterStateExpr( "poisoned_ruptures", function ()
    return ns.conditionalDebuffCount( "deadly_poison_dot", "wound_poison_dot", "amplifying_poison_dot", "rupture" )
end )


spec:RegisterStateExpr( "ss_buffed", function ()
    return false
end )

spec:RegisterStateExpr( "non_ss_buffed_targets", function ()
    return active_enemies
    --[[ local count = ( debuff.garrote.down or not debuff.garrote.exsanguinated ) and 1 or 0

    for guid, counted in ns.iterateTargets() do
        if guid ~= target.unit and counted and ( not ns.actorHasDebuff( guid, 703 ) or not ssG[ guid ] ) then
            count = count + 1
        end
    end

    return count ]]
end )

spec:RegisterStateExpr( "ss_buffed_targets_above_pandemic", function ()
    --[[ if not debuff.garrote.refreshable and debuff.garrote.ss_buffed then
        return 1
    end ]]
    return 0
end )



spec:RegisterStateExpr( "pmultiplier", function ()
    if not this_action or this_action == "variable" then return 0 end

    local a = class.abilities[ this_action ]
    if not a then return 0 end

    local aura = a.aura or this_action
    if not aura then return 0 end

    if debuff[ aura ] and debuff[ aura ].up then
        return debuff[ aura ].pmultiplier or 1
    end

    return 0
end )

spec:RegisterStateExpr( "improved_garrote_remains", function()
    if buff.improved_garrote_buff.up then
        if buff.shadow_dance.up then return buff.shadow_dance.remains + spec.auras.improved_garrote.duration end
        return buff.improved_garrote_any.remains
    end
    return 0
end )

spec:RegisterStateExpr( "priority_rotation", function ()
    return toggle.funnel
end )


local ExpireSepsis = setfenv( function ()
    applyBuff( "sepsis_buff" )

    if legendary.toxic_onslaught.enabled then
        applyBuff( "adrenaline_rush", 10 )
        applyBuff( "shadow_blades", 10 )
    end
end, state )


-- Tier 31
spec:RegisterGear( "tier31", 207234, 207235, 207236, 207237, 207239, 217208, 217210, 217206, 217207, 217209 )
-- 422905: Rogue Assassination 10.2 Class Set 2pc
-- Each 10 energy you spend grants Natureblight, granting 1.0% attack speed and 1.0% Nature Damage for 6 sec. Multiple instances of Natureblight may overlap, up to 12.
-- TODO: Each application is actually individual, so I should track this differently.
spec:RegisterAura( "natureblight", {
    id = 426568,
    duration = 6,
    max_stack = 12
} )

-- Tier 30
spec:RegisterGear( "tier30", 202500, 202498, 202497, 202496, 202495 )
spec:RegisterAuras( {
    poisoned_edges = {
        id = 409587,
        duration = 30,
        max_stack = 1
    }
} )

local ExpireDeathmarkT30 = setfenv( function ()
    applyBuff( "poisoned_edges" )
end, state )


-- Tier Set
spec:RegisterGear( "tier29", 200372, 200374, 200369, 200371, 200373 )
spec:RegisterAura( "septic_wounds", {
    id = 394845,
    duration = 8,
    max_stack = 5
} )


local kingsbaneReady = false

spec:RegisterHook( "reset_precast", function ()
    -- Supercharged Combo Point handling
    local cPoints = GetUnitChargedPowerPoints( "player" )
    if talent.supercharger.enabled and cPoints then
        local charged = 0
        for _, point in pairs( cPoints ) do
            charged = charged + 1
        end
        if charged > 0 then applyBuff( "supercharged_combo_points", nil, charged ) end
    end

    if covenant.night_fae and debuff.sepsis.up then
        state:QueueAuraExpiration( "sepsis", ExpireSepsis, debuff.sepsis.expires )
    end

    if set_bonus.tier30_4pc > 0 and debuff.deathmark.up then
        state:QueueAuraExpiration( "deathmark", ExpireDeathmarkT30, debuff.deathmark.expires )
    end

    class.abilities.apply_poison = class.abilities[ action.apply_poison_actual.next_poison ]

    if buff.cold_blood.up then setCooldown( "cold_blood", action.cold_blood.cooldown ) end

    if buff.vanish.up then applyBuff( "stealth" ) end
    -- Pad Improved Garrote's expiry in order to avoid ruining your snapshot.
    if buff.improved_garrote.up then buff.improved_garrote.expires = buff.improved_garrote.expires - 0.05 end

    if not kingsbaneReady then
        rawset( buff, "kingsbane", buff.kingsbane_buff )
        rawset( debuff, "kingsbane", debuff.kingsbane_dot )
        kingsbaneReady = true
    end

    if talent.indiscriminate_carnage.enabled and buff.stealth.up then
        applyBuff( "indiscriminate_carnage_aura", 3600 )
        removeBuff( "indiscriminate_carnage" )
    end

    if talent.master_assassin.enabled and buff.stealth.up then
        applyBuff( "master_assassin_aura", 3600 )
        removeBuff( "master_assasin" )
    end

    if Hekili.ActiveDebug then Hekili:Debug( "Energy Cap in %.2f -- Enemies: %d, Bleeds: %d, P. Bleeds: %d, P. Garrotes: %d, P. Ruptures: %d", energy.time_to_max, active_enemies, bleeds, poisoned_bleeds, poisoned_garrotes, poisoned_ruptures ) end
end )

-- We need to break stealth when we start combat from an ability.
spec:RegisterHook( "runHandler", function( ability )
    local a = class.abilities[ ability ]

    if stealthed.mantle and ( not a or a.startsCombat ) then
        if talent.master_assassin.enabled then
            removeBuff( "master_assassin_aura" )
            applyBuff( "master_assassin" )
        end

        if talent.improved_garrote.enabled then
            removeBuff( "improved_garrote_aura" )
            applyBuff( "improved_garrote" )
        end

        if talent.indiscriminate_carnage.enabled then
            removeBuff( "indiscriminate_carnage_aura" )
            applyBuff( "indiscriminate_carnage" )
        end

        if legendary.mark_of_the_master_assassin.enabled and stealthed.mantle then
            applyBuff( "master_assassins_mark", 4 )
        end

        if buff.stealth.up then
            setCooldown( "stealth", 2 )
            removeBuff( "stealth" )
            if talent.subterfuge.enabled then applyBuff( "subterfuge" ) end
        end

        if buff.shadowmeld.up then removeBuff( "shadowmeld" ) end
        if buff.vanish.up then removeBuff( "vanish" ) end
    end

    if buff.cold_blood.up and ( ability == "envenom" or not talent.inevitable_end.enabled ) and ( not a or a.startsCombat ) then
        removeStack( "cold_blood" )
    end

    class.abilities.apply_poison = class.abilities[ action.apply_poison_actual.next_poison ]
end )


-- Auras
spec:RegisterAuras( {
    acrobatic_strikes = {
        id = 455144,
        duration = 3,
        max_stack = 10
    },
    -- Talent: Each strike has a chance of inflicting Nature damage and applying Amplification. Envenom consumes Amplification to deal increased damage.
    -- https://wowhead.com/beta/spell=381664
    alacrity = {
        id = 193538,
        duration = 15,
        max_stack = 5,
    },
    amplifying_poison = {
        id = 381664,
        duration = 3600,
        max_stack = 1
    },
    -- Talent: Envenom consumes stacks to amplify its damage.
    -- https://wowhead.com/beta/spell=383414
    amplifying_poison_dot = {
        id = 383414,
        duration = 12,
        max_stack = 20
    },
    amplifying_poison_dot_deathmark = {
        id = 394328,
        duration = 12,
        max_stack = 20,
    },
    -- Talent: Each strike has a chance of poisoning the enemy, reducing their damage by ${$392388s1*-1}.1% for $392388d.
    -- https://wowhead.com/beta/spell=381637
    atrophic_poison = {
        id = 381637,
        duration = 3600,
        max_stack = 1
    },
    -- Talent: Damage reduced by ${$W1*-1}.1%.
    -- https://wowhead.com/beta/spell=392388
    atrophic_poison_dot = {
        id = 392388,
        duration = 10,
        type = "Magic",
        max_stack = 1,
    },
    audacity = {
        id = 386270,
        duration = 10,
        max_stack = 1,
    },
    -- Talent: $w1% reduced damage and healing.
    -- https://wowhead.com/beta/spell=394119
    blackjack = {
        id = 394119,
        duration = 6,
        max_stack = 1
    },
    -- Attacks striking up to $s3 additional nearby enemies.
    -- https://wowhead.com/beta/spell=319606
    blade_flurry = {
        id = 319606,
        duration = 12,
        max_stack = 1,
        copy = 13877
    },
    -- Talent: Disoriented.
    -- https://wowhead.com/beta/spell=2094
    blind = {
        id = 2094,
        duration = function() return 60 * ( talent.airborne_irritant.enabled and 0.7 or 1 ) end,
        mechanic = "disorient",
        type = "Ranged",
        max_stack = 1
    },
    blindside = {
        id = 121153,
        duration = 10,
        max_stack = 1,
    },
    -- Real RtB buffs.
    broadside = {
        id = 193356,
        duration = 30,
    },
    caustic_spatter = {
        id = 421976,
        duration = 10,
        max_stack = 1
    },
    -- Stunned.
    -- https://wowhead.com/beta/spell=1833
    cheap_shot = {
        id = 1833,
        duration = 4,
        mechanic = "stun",
        max_stack = 1
    },
    -- You have recently escaped certain death.  You will not be so lucky a second time.
    -- https://wowhead.com/beta/spell=45181
    cheated_death = {
        id = 45181,
        duration = 360,
        max_stack = 1
    },
    -- All damage taken reduced by $s1%.
    -- https://wowhead.com/beta/spell=45182
    cheating_death = {
        id = 45182,
        duration = 3,
        max_stack = 1
    },
    clear_the_witnesses = {
        id = 457178,
        duration = 12,
        max_stack = 1
    },
    -- Talent: Resisting all harmful spells.
    -- https://wowhead.com/beta/spell=31224
    cloak_of_shadows = {
        id = 31224,
        duration = 5,
        max_stack = 1
    },
    -- Talent: Critical strike chance of your next damaging ability increased by $s1%.
    -- https://wowhead.com/beta/spell=382245
    cold_blood = {
        id = function() return talent.inevitable_end.enabled and not state.spec.subtlety and 456330 or 382245 end,
        duration = 3600,
        max_stack = function() return talent.inevitable_end.enabled and not state.spec.subtlety and 2 or 1 end,
        onRemove = function()
            setCooldown( "cold_blood", action.cold_blood.cooldown )
        end,
        copy = { 382245, 456330 }
    },
    crimson_tempest = {
        id = 121411,
        duration = function () return 4 + ( 2 * effective_combo_points ) end,
        max_stack = 1,
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.crimson_tempest.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.crimson_tempest.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.crimson_tempest.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    -- Healing for ${$W1}.2% of maximum health every $t1 sec.
    -- https://wowhead.com/beta/spell=354494
    crimson_vial = {
        id = 354494,
        duration = 4,
        type = "Magic",
        max_stack = 1,
        copy = { 212198, 185311 }
    },
    -- Each strike has a chance of poisoning the enemy, slowing movement speed by $3409s1% for $3409d.
    -- https://wowhead.com/beta/spell=3408
    crippling_poison = {
        id = 3408,
        duration = 3600,
        max_stack = 1
    },
    -- Movement slowed by $s1%.
    -- https://wowhead.com/beta/spell=3409
    crippling_poison_dot = {
        id = 3409,
        duration = 12,
        mechanic = "snare",
        type = "Magic",
        max_stack = 1
    },
    -- Movement speed slowed by $s1%.
    -- https://wowhead.com/beta/spell=115196
    crippling_poison_snare = {
        id = 115196,
        duration = 5,
        mechanic = "snare",
        max_stack = 1
    },
    darkest_night = {
        id = 457280,
        duration = 30,
        max_stack = 1
    },
    -- Each strike has a chance of causing the target to suffer Nature damage every $2818t1 sec for $2818d. Subsequent poison applications deal instant Nature damage.
    -- https://wowhead.com/beta/spell=2823
    deadly_poison = {
        id = 2823,
        duration = 3600,
        max_stack = 1
    },
    -- Talent: Suffering $w1 Nature damage every $t1 seconds.
    -- https://wowhead.com/beta/spell=394324
    deadly_poison_dot = {
        id = 2818,
        duration = function () return 12 * haste end,
        max_stack = 1,
        copy = 394324,
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.deadly_poison_dot.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.deadly_poison_dot.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.deadly_poison_dot.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    deadly_poison_dot_deathmark = {
        id = 394324,
        duration = function () return 12 * haste end,
        max_stack = 1,
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.deadly_poison_dot_deathmark.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.deadly_poison_dot_deathmark.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.deadly_poison_dot_deathmark.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    -- Talent: Bleeding for $w damage every $t sec. Duplicating $@auracaster's Garrote, Rupture, and Lethal poisons applied.
    -- https://wowhead.com/beta/spell=360194
    deathmark = {
        id = 360194,
        duration = 16,
        tick_time = 2,
        mechanic = "bleed",
        max_stack = 1
    },
    deathstalkers_mark_buff = {
        id = 457160,
        duration = 12,
        max_stack = 3 -- ?
    },
    deathstalkers_mark = {
        id = 457129,
        duration = 60,
        max_stack = 3,
        copy = "deathstalkers_mark_debuff"
    },
    -- Detecting certain creatures.
    -- https://wowhead.com/beta/spell=56814
    detection = {
        id = 56814,
        duration = 30,
        max_stack = 1
    },
    edge_case = {
        -- not a real buff, need to emulate behavior based on finisher casts.
        duration = 30,
        max_stack = 1
    },
    -- Poison application chance increased by $s2%.$?s340081[  Poison critical strikes generate $340426s1 Energy.][]
    -- https://wowhead.com/beta/spell=32645
    envenom = {
        id = 32645,
        duration = function () return ( effective_combo_points ) + ( 2 * talent.twist_the_knife.rank ) end,
        tick_time = 5,
        type = "Poison",
        max_stack = function () return 1 + ( talent.twist_the_knife.enabled and 1 or 0 ) end,
    },
    -- Talent: Dodge chance increased by ${$w1/2}%.$?a344363[ Dodging an attack while Evasion is active will trigger Mastery: Main Gauche.][]
    -- https://wowhead.com/beta/spell=5277
    evasion = {
        id = 5277,
        duration = 10,
        max_stack = 1
    },
    -- Movement speed increased by $w1%.
    -- https://wowhead.com/beta/spell=331868
    fancy_footwork = {
        id = 331868,
        duration = 6,
        max_stack = 1
    },
    fatebound_coin_heads = {
        id = 452923,
        duration = 15,
        max_stack = 10
    },
    fatebound_coin_tails = {
        id = 452917,
        duration = 15,
        max_stack = 10
    },
    fatebound_lucky_coin = {
        id = 452562,
        duration = 15,
        max_stack = 10
    },
    -- Talent: Damage taken from area-of-effect attacks reduced by $s1%$?$w2!=0[ and all other damage taken reduced by $w2%.  ][.]
    -- https://wowhead.com/beta/spell=1966
    feint = {
        id = 1966,
        duration = 6,
        max_stack = 1
    },
    finality_rupture = {
        id = 385951,
        duration = 30,
        max_stack = 1,
    },
    -- Talent: $w1% of armor is ignored by the attacking Rogue.
    -- https://wowhead.com/beta/spell=316220
    find_weakness = {
        id = 316220,
        duration = 10,
        max_stack = 1
    },
    flagellation = {
        id = 323654,
        duration = 12,
        max_stack = 30
    },
    flagellation_buff = {
        id = 384631,
        duration = 12,
        max_stack = 30
    },
    flagellation_persist = {
        id = 394758,
        duration = 12,
        max_stack = 30,
        copy = 345569,
    },



    garrote = {
        id = 703,
        duration = 18,
        max_stack = 1,
        ss_buffed = false,
        meta = {
            duration = function( t ) return t.up and ( 18 * haste ) or class.auras.garrote.duration end,
            last_tick = function( t ) return t.up and ( tracked_bleeds.garrote.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.garrote.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.garrote.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    garrote_deathmark = {
        id = 360830,
        duration = 18,
        max_stack = 1,
        ss_buffed = false,
        meta = {
            duration = function( t ) return t.up and ( 18 * haste ) or class.auras.garrote_deathmark.duration end,
            last_tick = function( t ) return t.up and ( tracked_bleeds.garrote_deathmark.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.garrote_deathmark.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.garrote_deathmark.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    -- Silenced.
    -- https://wowhead.com/beta/spell=1330
    garrote_silence = {
        id = 1330,
        duration = function () return talent.iron_wire.enabled and 6 or 3 end,
        mechanic = "silence",
        max_stack = 1
    },
    -- Your finishing moves cost no Energy.
    -- TODO: Does Goremaw's Bite track by value or by stacks?
    goremaws_bite = {
        id = 426593,
        duration = 30,
        max_stack = 3,

        -- Affected by:
        -- shadow_blades[121471] #3: { 'type': APPLY_AURA, 'subtype': ADD_FLAT_MODIFIER_BY_LABEL, 'points': 6.0, 'target': TARGET_UNIT_CASTER, 'modifies': EFFECT_1_VALUE, }
    },
    -- Talent: Incapacitated.
    -- https://wowhead.com/beta/spell=1776
    gouge = {
        id = 1776,
        duration = 4,
        mechanic = "incapacitate",
        max_stack = 1
    },
    improved_garrote = {
        id = 392401,
        duration = function() return combat and ( 6 + 3 * talent.subterfuge.rank ) or 3600 end,
        max_stack = 1,
        copy = "improved_garrote_buff"
    },
    improved_garrote_aura = {
        id = 392403,
        duration = 3600,
        max_stack = 1,
    },
    improved_garrote_any = {
        alias = { "improved_garrote_aura", "improved_garrote" },
        aliasMode = "longest",
        aliasType = "buff",
        duration = function() return combat and ( 6 + 3 * talent.subterfuge.rank ) or 3600 end,
        max_stack = 1,
    },
    -- Talent: Your next Garrote and Rupture apply to $s1 nearby targets.
    -- https://wowhead.com/beta/spell=381802
    indiscriminate_carnage = {
        id = 385747,
        duration = function() return 6 + 3 * talent.subterfuge.rank end,
        max_stack = 1,
    },
    indiscriminate_carnage_aura = {
        id = 385754,
        duration = 3600,
        max_stack = 1,
    },
    indiscriminate_carnage_any = {
        alias = { "indiscriminate_carnage_aura", "indiscriminate_carnage" },
        aliasMode = "longest",
        aliasType = "buff",
        duration = 3600,
        max_stack = 1
    },
    -- Each strike has a chance of poisoning the enemy, inflicting $315585s1 Nature damage.
    -- https://wowhead.com/beta/spell=315584
    instant_poison = {
        id = 315584,
        duration = 3600,
        max_stack = 1
    },
    internal_bleeding = {
        id = 154953,
        duration = 6,
        max_stack = 1,
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.internal_bleeding.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.internal_bleeding.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod 
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.internal_bleeding.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    -- Talent: Damage done reduced by $s1%.
    -- https://wowhead.com/beta/spell=256148
    iron_wire = {
        id = 256148,
        duration = 8,
        max_stack = 1
    },
    -- Stunned.
    -- https://wowhead.com/beta/spell=408
    kidney_shot = {
        id = 408,
        duration = function() return ( 3 + effective_combo_points ) end,
        mechanic = "stun",
        max_stack = 1
    },
    -- Talent: Kingsbane damage increased by $s1%.
    -- https://wowhead.com/beta/spell=394095
    kingsbane_buff = {
        id = 394095,
        duration = 20,
        max_stack = 50,
        copy = 192853
    },
    -- Talent: Suffering $w4 Nature damage every $t4 sec.
    -- https://wowhead.com/beta/spell=385627
    kingsbane_dot = {
        id = 385627,
        duration = 14,
        max_stack = 1,
        copy = "kingsbane"
    },
    -- Movement-impairing effects suppressed.
    -- https://wowhead.com/beta/spell=197003
    maneuverability = {
        id = 197003,
        duration = 4,
        max_stack = 1
    },
    --[[ Talent: Marked for death, taking extra damage from @auracaster's finishing moves. Cooldown resets upon death.
    -- https://wowhead.com/beta/spell=137619
    marked_for_death = {
        id = 137619,
        duration = 15,
        max_stack = 1
    }, ]]
    -- Talent: Critical strike chance increased by $w1%.
    -- https://wowhead.com/beta/spell=256735
    master_assassin = {
        id = 256735,
        duration = function() return 6 + 3 * talent.subterfuge.rank end,
        max_stack = 1,
    },
    master_assassin_aura = {
        duration = 3600,
        max_stack = 1
    },
    -- Damage dealt increased by $w1%.
    -- https://wowhead.com/beta/spell=31665
    master_of_subtlety = {
        id = 31665,
        duration = 3600,
        max_stack = 1
    },
    momentum_of_despair = {
        id = 457115,
        duration = 12,
        max_stack = 1
    },
    -- Bleeding for $w1 damage every $t sec.
    -- https://wowhead.com/beta/spell=381672
    mutilated_flesh = {
        id = 381672,
        duration = 6,
        tick_time = 3,
        mechanic = "bleed",
        max_stack = 1,
        copy = 340431
    },
    -- Suffering $w1 Nature damage every $t1 sec.
    -- https://wowhead.com/beta/spell=286581
    nothing_personal = {
        id = 286581,
        duration = 20,
        tick_time = 2,
        type = "Magic",
        max_stack = 1,
    },
    nothing_personal_regen = {
        id = 289467,
        duration = 20,
        tick_time = 2,
        max_stack = 1,
    },
    -- Coats your weapons with a Non-Lethal Poison that lasts for 1 |4hour:hrs;. Each strike has a 30% chance of poisoning the enemy, clouding their mind and slowing their attack and casting speed by 15% for 10 sec.
    numbing_poison = {
        id = 5761,
        duration = 3600,
        max_stack = 1,
    },
    -- Talent: Attack and casting speed slowed by $s1%.
    -- https://wowhead.com/beta/spell=5760
    numbing_poison_dot = {
        id = 5760,
        duration = 10,
        max_stack = 1
    },
    -- Bleeding for $w1 damage every $t1 sec.
    -- https://wowhead.com/beta/spell=360826
    rupture = {
        id = 1943,
        duration = function () return ( 4 * ( 1 + effective_combo_points ) ) + ( talent.corrupt_the_blood.enabled and 3 or 0 ) end,
        tick_time = function() return 2 * haste end,
        mechanic = "bleed",
        max_stack = 1,
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.rupture.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.rupture.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.rupture.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    rupture_deathmark = {
        id = 360826,
        duration = function () return 4 * ( 1 + effective_combo_points ) end,
        tick_time =  haste,
        mechanic = "bleed",
        max_stack = 1,
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.rupture_deathmark.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t )
                if t.down then return haste * 2 end
                local hasteMod = tracked_bleeds.rupture_deathmark.haste[ target.unit ]
                hasteMod = 2 * ( hasteMod and ( 100 / hasteMod ) or haste )
                return hasteMod
            end,
            haste_pct = function( t ) return ( 100 / haste ) end,
            haste_pct_next_tick = function( t ) return t.up and ( tracked_bleeds.rupture_deathmark.haste[ target.unit ] or ( 100 / haste ) ) or 0 end,
        },
    },
    -- Talent: Incapacitated.$?$w2!=0[  Damage taken increased by $w2%.][]
    -- https://wowhead.com/beta/spell=6770
    sap = {
        id = 6770,
        duration = 60,
        mechanic = "sap",
        max_stack = 1
    },
    -- Talent: Your Ruptures are increasing your Agility by $w1%.
    -- https://wowhead.com/beta/spell=394080
    scent_of_blood = {
        id = 394080,
        duration = 24,
        max_stack = 20
    },
    -- Talent: Suffering $w1 Nature damage every $t1 sec, and $394026s1 when the poison ends.
    -- https://wowhead.com/beta/spell=385408
    sepsis = {
        id = 385408,
        duration = 10,
        tick_time = 1,
        max_stack = 1,
        copy = { 328305, 375936 },
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.sepsis.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t ) return t.up and ( haste * 2 ) or ( haste * 2 ) end,
        },
    },
    sepsis_buff = {
        id = 375939,
        duration = 10,
        max_stack = 1,
        copy = 347037
    },
    serrated_bone_spike_charges = {
        id = 455366,
        duration = 3600,
        max_stack = 3
    },
    -- Bleeding for $w1 every $t1 sec.
    -- https://wowhead.com/beta/spell=394036
    serrated_bone_spike_dot = {
        id = 394036,
        duration = 3600,
        tick_time = 3,
        max_stack = 1,
        meta = {
            last_tick = function( t ) return t.up and ( tracked_bleeds.serrated_bone_spike.last_tick[ target.unit ] or t.applied ) or 0 end,
            tick_time = function( t ) return t.up and ( haste * 2 ) or ( haste * 2 ) end,
        },
        copy = { "serrated_bone_spike_dot", 324073 }
    },
    -- Attacks deal $w1% additional damage as Shadow and combo point generating attacks generate full combo points.
    -- https://wowhead.com/beta/spell=121471
    shadow_blades = {
        id = 121471,
        duration = 20,
        max_stack = 1
    },
    -- Talent: Access to Stealth abilities.$?$w3!=0[  Movement speed increased by $w3%.][]$?$w4!=0[  Damage increased by $w4%.][]
    -- https://wowhead.com/beta/spell=185422
    shadow_dance = {
        id = 185422,
        duration = function() return 6 + talent.improved_shadow_dance.rank * 2 + buff.first_dance.up and 4 or 0 end,
        max_stack = 1,
        copy = 185313
    },
    -- Combo points stored.
    -- TODO: Is the # of points stored as a stack or value?
    shadow_techniques = {
        id = 196911,
        duration = 3600,
        max_stack = 1,

        -- Affected by:
        -- deeper_stratagem[193531] #5: { 'type': APPLY_AURA, 'subtype': ADD_FLAT_MODIFIER_BY_LABEL, 'points': 2.0, 'target': TARGET_UNIT_CASTER, 'modifies': MAX_STACKS, }
        -- improved_shadow_techniques[394023] #0: { 'type': APPLY_AURA, 'subtype': ADD_FLAT_MODIFIER, 'points': 3.0, 'target': TARGET_UNIT_CASTER, 'modifies': EFFECT_2_VALUE, }
        -- secret_stratagem[394320] #5: { 'type': APPLY_AURA, 'subtype': ADD_FLAT_MODIFIER_BY_LABEL, 'points': 2.0, 'target': TARGET_UNIT_CASTER, 'modifies': MAX_STACKS, }
    },
    -- Talent: Movement speed increased by $s2%.
    -- https://wowhead.com/beta/spell=36554
    shadowstep = {
        id = 36554,
        duration = 2,
        max_stack = 1
    },
    -- Energy cost of abilities reduced by $w1%.
    -- https://wowhead.com/beta/spell=112942
    shadow_focus = {
        id = 112942,
        duration = 3600,
        max_stack = 1
    },
    -- Movement speed slowed by $w1%.
    -- https://wowhead.com/beta/spell=206760
    shadows_grasp = {
        id = 206760,
        duration = 8,
        max_stack = 1
    },
    -- Shadowstrike deals $s2% increased damage and has $s1 yds increased range.
    -- https://wowhead.com/beta/spell=245623
    shadowstrike = {
        id = 245623,
        duration = 3600,
        max_stack = 1
    },
    -- Talent: $w1% increased Nature damage taken from $@auracaster.$?${$W2<0}[ Healing received reduced by $w2%.][]
    -- https://wowhead.com/beta/spell=319504
    shiv = {
        id = 319504,
        duration = 8,
        max_stack = 1
    },
    -- Concealing allies within $115834A1 yards in shadows.
    -- https://wowhead.com/beta/spell=114018
    shroud_of_concealment = {
        id = 114018,
        duration = 15,
        tick_time = 0.5,
        max_stack = 1
    },
    -- Concealed in shadows.
    -- https://wowhead.com/beta/spell=115834
    shroud_of_concealment_buff = {
        id = 115834,
        duration = 2,
        max_stack = 1
    },
    -- Attack speed increased by $w1%.
    -- https://wowhead.com/beta/spell=315496
    slice_and_dice = {
        id = 315496,
        duration = function () return 6 * ( 1 + effective_combo_points ) end,
        max_stack = 1,
    },
    smoke_bomb = {
        id = 212182,
        duration = 5,
        max_stack = 1,
    },
    sprint = {
        id = 2983,
        duration = function() return ( 8 + ( talent.featherfoot.rank * 4 ) ) * ( pvptalent.maneuverability.enabled and 0.5 or 1 ) end,
        max_stack = 1,
    },
    -- Stealthed.
    -- https://wowhead.com/beta/spell=115191
    stealth = {
        id = 115191,
        duration = 3600,
        max_stack = 1,
        copy = 1784
    },
    subterfuge = {
        id = 115192,
        duration = function() return 3 * talent.subterfuge.rank end,
        max_stack = 1,
    },
    -- todo: Find a way to find a true buff / ID for this as a failsafe? Currently fully emulated.
    supercharged_combo_points = {
        duration = 3600,
        max_stack = function() return combo_points.max end,
        copy = { "supercharge", "supercharged", "supercharger" }
    },
    -- Damage done increased by 10%.
    -- https://wowhead.com/beta/spell= = {
    symbols_of_death = {
        id = 212283,
        duration = 10,
        max_stack = 1,
    },
    -- Movement speed increased by $w1%.
    terrifying_pace = {
        id = 428389,
        duration = 3.0,
        max_stack = 1,
    },
    -- Talent: Mastery increased by ${$w2*$mas}.1%.
    -- https://wowhead.com/beta/spell=381623
    thistle_tea = {
        id = 381623,
        duration = 6,
        type = "Magic",
        max_stack = 1
    },
    -- $s1% increased damage taken from poisons from the casting Rogue.
    -- https://wowhead.com/beta/spell=245389
    toxic_blade = {
        id = 245389,
        duration = 9,
        max_stack = 1
    },
    -- Talent: Threat redirected from Rogue.
    -- https://wowhead.com/beta/spell=57934
    tricks_of_the_trade_target = {
        id = 57934,
        duration = 30,
        max_stack = 1
    },
    -- Talent: All threat transferred from the Rogue to the target.  $?s221622[Damage increased by $221622m1%.][]
    -- https://wowhead.com/beta/spell=59628
    tricks_of_the_trade = {
        id = 59628,
        duration = 6,
        max_stack = 1
    },
    -- Improved stealth.$?$w3!=0[  Movement speed increased by $w3%.][]$?$w4!=0[  Damage increased by $w4%.][]
    -- https://wowhead.com/beta/spell=11327
    vanish = {
        id = 11327,
        duration = 3,
        max_stack = 1
    },
    -- Each strike has a chance of inflicting additional Nature damage to the victim and reducing all healing received for $8680d.
    -- https://wowhead.com/beta/spell=8679
    wound_poison = {
        id = 8679,
        duration = 3600,
        max_stack = 1
    },
    -- Healing effects reduced by $w2%.
    -- https://wowhead.com/beta/spell=8680
    wound_poison_debuff = {
        id = 8680,
        duration = 12,
        max_stack = 3,
        copy = { 394327, "wound_poison_dot" }
    },

    poisoned = {
        alias = { "amplifying_poison_dot", "amplifying_poison_dot_deathmark", "deadly_poison_dot", "deadly_poison_dot_deathmark", "kingsbane_dot", "sepsis", "wound_poison_dot" },
        aliasMode = "longest",
        aliasType = "debuff",
        duration = 3600,
    },
    lethal_poison = {
        alias = { "amplifying_poison", "deadly_poison", "wound_poison", "instant_poison" },
        aliasMode = "shortest",
        aliasType = "buff",
        duration = 3600
    },
    nonlethal_poison = {
        alias = { "atrophic_poison", "numbing_poison", "crippling_poison" },
        aliasMode = "shortest",
        aliasType = "buff",
        duration = 3600
    },

    -- PvP Talents
    creeping_venom = {
        id = 198097,
        duration = 4,
        max_stack = 18,
    },

    system_shock = {
        id = 198222,
        duration = 2,
    },

    -- Legendaries
    bloodfang = {
        id = 23581,
        duration = 6,
        max_stack = 1
    },

    master_assassins_mark = {
        id = 340094,
        duration = 4,
        max_stack = 1
    },

    master_assassin_any = {
        alias = { "master_assassin_aura", "master_assassin", "master_assassins_mark" },
        aliasMode = "longest",
        aliasType = "buff",
        duration = function() return 6 + 3 * talent.subterfuge.rank end
    }
} )


local BoneSpikes = setfenv( function( ruptureTargets )

    -- Locals / setup
    local maxEnemies = true_active_enemies
    local boneSpikeTargets = min( maxEnemies, buff.serrated_bone_spike_charges.stack, ruptureTargets ) -- Maximum spendable stacks for this cast
    local spikeComboPoints = 0
    removeStack( "serrated_bone_spike_charges", nil, boneSpikeTargets )

    -- Primary target
    if debuff.serrated_bone_spike_dot.down then applyDebuff( "target", "serrated_bone_spike_dot" ) end
    local embeddedSpikes = active_dot.serrated_bone_spike_dot
    spikeComboPoints = spikeComboPoints + 1 + embeddedSpikes
    boneSpikeTargets = boneSpikeTargets - 1

    -- Calculate this part of additional targets first in case we overflow, save calculations by breaking loop early
    spikeComboPoints = spikeComboPoints + ( embeddedSpikes * boneSpikeTargets )

    local loopBreak = combo_points.max
    -- Additional targets if there are any eligible stacks left to spend
    for i = 1, boneSpikeTargets do
        -- max 7 combo points, don't waste time calculating more
        if spikeComboPoints >= loopBreak then
            break
        end
        -- If it's realistic to spread this stack to a new enemy, only gain 1 and increment the dots, otherwise gain 2 with no increment
        if embeddedSpikes < maxEnemies then
            spikeComboPoints = spikeComboPoints + 1
            embeddedSpikes = embeddedSpikes + 1
        else spikeComboPoints = spikeComboPoints + 2 end

    end

    -- Increment real dot counter now that we are finised with the repetitive calculations /w local variables
    active_dot.serrated_bone_spike_dot = min(maxEnemies, embeddedSpikes)

    -- Gain the points
    gain( spikeComboPoints, "combo_points" )

end, state )

-- Abilities
spec:RegisterAbilities( {
    -- Ambush the target, causing $s1 Physical damage.$?s383281[    Has a $193315s3% chance to hit an additional time, making your next Pistol Shot half cost and double damage.][]    |cFFFFFFFFAwards $s2 combo $lpoint:points;$?s383281[ each time it strikes][].|r
    ambush = {
        id = 8676,
        cast = 0,
        cooldown = 0,
        gcd = "spell",

        spend = function()
            if buff.blindside.up then return 0 end
            return 50 + ( talent.vicious_venoms.rank * 5 )
        end,
        spendType = "energy",

        startsCombat = true,
        usable = function () return stealthed.ambush or buff.audacity.up or buff.blindside.up, "requires stealth or audacity/blindside/sepsis_buff" end,

        cp_gain = function ()
            return 2 + ( buff.broadside.up and 1 or 0 ) + talent.improved_ambush.rank + ( talent.seal_fate.enabled and buff.cold_blood.up and not talent.inevitable_end.enabled and 1 or 0 )
        end,

        handler = function ()
            gain( action.ambush.cp_gain, "combo_points" )

            if buff.blindside.up then removeBuff( "blindside" ) end
            if covenant.night_fae and buff.sepsis_buff.up then removeBuff( "sepsis_buff" ) end
            if buff.audacity.up then removeBuff( "audacity" ) end
            if buff.deathstalkers_mark_buff.up then removeBuff( "deathstalkers_mark_buff" ) end

            if stealthed.ambush and talent.deathstalkers_mark.enabled then
                applyDebuff( "target", "deathstalkers_mark", nil, 3 )
                if talent.clear_the_witnesses.enabled then applyBuff( "clear_the_witnesses" ) end
            end

            if talent.unseen_blade.enabled and debuff.unseen_blade.down then
                applyDebuff( "target", "fazed" )
                applyDebuff( "player", "unseen_blade" )
                if buff.escalating_blade.stack == 3 then
                    removeBuff( "escalating_blade" )
                    applyBuff( "coup_de_grace" )
                else
                    addStack( "escalating_blade" )
                end
            end

        end,

        bind = function()
            return buff.audacity.up and "sinister_strike" or nil
        end,

        copy = 430023
    },

    -- Talent: Coats your weapons with a Lethal Poison that lasts for 1 |4hour:hrs;. Each strike has a 40% chance to poison the enemy, dealing 75 Nature damage and applying Amplification for 12 sec. Envenom can consume 10 stacks of Amplification to deal 35% increased damage. Max 20 stacks.
    amplifying_poison = {
        id = 381664,
        cast = 1.5,
        cooldown = 0,
        gcd = "totem",
        school = "physical",

        talent = "amplifying_poison",
        startsCombat = false,
        essential = true,

        handler = function ()
            applyBuff( "amplifying_poison" )
        end,
    },

    -- Talent: Coats your weapons with a Non-Lethal Poison that lasts for $d. Each strike has a $h% chance of poisoning the enemy, reducing their damage by ${$392388s1*-1}.1% for $392388d.
    atrophic_poison = {
        id = 381637,
        cast = 1.5,
        cooldown = 0,
        gcd = "off",

        talent = "atrophic_poison",
        startsCombat = false,
        essential = true,

        readyTime = function() return buff.atrophic_poison.remains - 120 end,

        handler = function ()
            applyBuff( "atrophic_poison" )
        end,
    },

    -- Talent: Blinds the target, causing it to wander disoriented for $d. Damage will interrupt the effect. Limit 1.
    blind = {
        id = 2094,
        cast = 0,
        cooldown = function () return ( talent.blinding_powder.enabled and 90 or 120 ) * ( talent.airborne_irritant.enabled and 0.5 or 1 ) end,
        gcd = "spell",

        talent = "blind",
        startsCombat = true,

        toggle = "interrupts",

        handler = function ()
            applyDebuff( "target", "blind" )
        end,
    },

    -- Stuns the target for $d.    |cFFFFFFFFAwards $s2 combo $lpoint:points;.|r
    cheap_shot = {
        id = 1833,
        cast = 0,
        cooldown = 0,
        gcd = "spell",

        spend = function ()
            if talent.dirty_tricks.enabled then return 0 end
            return 40 * ( 1 + conduit.rushed_setup.mod * 0.01 ) * ( 1 - 0.2 * talent.rushed_setup.rank ) end,
        spendType = "energy",

        startsCombat = true,

        cycle = function ()
            if talent.prey_on_the_weak.enabled then return "prey_on_the_weak" end
        end,

        usable = function ()
            if target.is_boss then return false, "cheap_shot assumed unusable in boss fights" end
            return stealthed.all or buff.subterfuge.up, "not stealthed"
        end,

        nodebuff = "cheap_shot",

        cp_gain = function () return 1 + ( buff.shadow_blades.up and 1 or 0 ) + ( talent.seal_fate.enabled and buff.cold_blood.up and not talent.inevitable_end.enabled and 1 or 0 ) end,

        handler = function ()
            applyDebuff( "target", "cheap_shot", 4 )

            if covenant.night_fae and buff.sepsis_buff.up then removeBuff( "sepsis_buff" ) end

            if talent.prey_on_the_weak.enabled then
                applyDebuff( "target", "prey_on_the_weak" )
            end

            if pvptalent.control_is_king.enabled then
                applyBuff( "slice_and_dice" )
            end

            gain( action.cheap_shot.cp_gain, "combo_points" )
        end,
    },

    -- Talent: Provides a moment of magic immunity, instantly removing all harmful spell effects. The cloak lingers, causing you to resist harmful spells for $d.
    cloak_of_shadows = {
        id = 31224,
        cast = 0,
        cooldown = 120,
        gcd = "off",

        talent = "cloak_of_shadows",
        startsCombat = false,

        toggle = "interrupts",
        buff = "dispellable_magic",

        handler = function ()
            removeBuff( "dispellable_magic" )
            applyBuff( "cloak_of_shadows" )
        end,
    },

    -- Talent: Increases the critical strike chance of your next damaging ability by $s1%.
    cold_blood = {
        id = function() return talent.inevitable_end.enabled and not state.spec.subtlety and 456330 or 382245 end,
        known = 382245,
        cast = 0,
        cooldown = 45,
        gcd = "off",
        school = "physical",

        talent = "cold_blood",
        startsCombat = false,
        nobuff = "cold_blood",

        handler = function ()
            applyBuff( "cold_blood", nil, talent.inevitable_end.enabled and not state.spec.subtlety and 2 or nil )
        end,

        copy = { 382245, 456330 }
    },

    -- Drink an alchemical concoction that heals you for $?a354425&a193546[${$O1}.1][$o1]% of your maximum health over $d.
    crimson_vial = {
        id = 185311,
        cast = 0,
        cooldown = 30,
        gcd = "totem",
        school = "nature",

        spend = function () return 20 - ( 10 * talent.nimble_fingers.rank ) + conduit.nimble_fingers.mod end,
        spendType = "energy",

        startsCombat = false,
        texture = 1373904,

        handler = function ()
            applyBuff( "crimson_vial" )
        end,
    },

    -- Talent: Finishing move that slashes all enemies within 13 yards, dealing instant damage and causing victims to bleed for additional damage. Deals reduced damage beyond 8 targets. Lasts longer per combo point. 1 point : 325 plus 307 over 4 sec 2 points: 487 plus 460 over 6 sec 3 points: 650 plus 613 over 8 sec 4 points: 812 plus 767 over 10 sec 5 points: 975 plus 920 over 12 sec
    crimson_tempest = {
        id = 121411,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "physical",

        spend = function ()
            return 45 * ( 1 - 0.06 * talent.tight_spender.rank )
        end,
        spendType = "energy",

        talent = "crimson_tempest",
        startsCombat = true,
        aura = "crimson_tempest",
        cycle = "crimson_tempest",

        usable = function () return combo_points.current > 0, "requires combo points" end,

        handler = function ()
            applyDebuff( "target", "crimson_tempest", 4 + ( effective_combo_points * 2 ) )
            debuff.crimson_tempest.pmultiplier = persistent_multiplier

            spend( combo_points.current, "combo_points" )
            removeStack( "supercharged_combo_points" )

        end,
    },


    crippling_poison = {
        id = 3408,
        cast = 1.5,
        cooldown = 0,
        gcd = "spell",

        startsCombat = false,
        essential = true,
        texture = 132274,

        readyTime = function () return buff.crippling_poison.remains - 120 end,

        handler = function ()
            applyBuff( "crippling_poison" )
        end,
    },


    deadly_poison = {
        id = 2823,
        cast = 0,
        cooldown = 0,
        gcd = "spell",

        startsCombat = false,
        essential = true,
        texture = 132290,


        readyTime = function () return buff.deadly_poison.remains - 120 end,

        handler = function ()
            applyBuff( "deadly_poison" )
        end,
    },

    -- Talent: Carve a deathmark into an enemy, dealing 3,209 Bleed damage over 16 sec. While marked your Garrote, Rupture, and Lethal poisons applied to the target are duplicated, dealing 100% of normal damage.
    deathmark = {
        id = 360194,
        cast = 0,
        cooldown = 120,
        gcd = "totem",
        school = "physical",

        talent = "deathmark",
        startsCombat = true,

        toggle = "cooldowns",

        handler = function ()
            applyDebuff( "target", "deathmark" )
        end,
    },

    -- Throws a distraction, attracting the attention of all nearby monsters for $s1 seconds. Usable while stealthed.
    distract = {
        id = 1725,
        cast = 0,
        cooldown = 30,
        gcd = "totem",
        school = "physical",

        spend = function () return 30 * ( talent.rushed_setup.enabled and 0.8 or 1 ) * ( 1 + conduit.rushed_setup.mod * 0.01 ) end,
        spendType = "energy",

        startsCombat = false,
        texture = 132289,

        handler = function ()
        end,
    },


    -- Talent: Deal $s1 Arcane damage to an enemy, extracting their anima to Animacharge a combo point for $323558d.    Damaging finishing moves that consume the same number of combo points as your Animacharge function as if they consumed $s2 combo points.    |cFFFFFFFFAwards $s3 combo $lpoint:points;.|r
    echoing_reprimand = {
        id = 323547,
        cast = 0,
        cooldown = 45,
        gcd = "totem",
        school = "arcane",

        spend = 10,
        spendType = "energy",

        usable = function() return covenant.kyrian end,
        startsCombat = true,
        toggle = "cooldowns",

        cp_gain = function () return 2 + ( buff.shadow_blades.up and 1 or 0 ) + ( buff.broadside.up and 1 or 0 ) + ( talent.seal_fate.enabled and buff.cold_blood.up and not talent.inevitable_end.enabled and 1 or 0 ) end,

        handler = function ()
            -- Can't predict the Animacharge, unless you have the legendary.
            gain( action.echoing_reprimand.cp_gain, "combo_points" )
        end,

        copy = { 385616, 323547 },
    },

    -- Finishing move that drives your poisoned blades in deep, dealing instant Nature damage and increasing your poison application chance by 30%. Damage and duration increased per combo point. 1 point : 288 damage, 2 sec 2 points: 575 damage, 3 sec 3 points: 863 damage, 4 sec 4 points: 1,150 damage, 5 sec 5 points: 1,438 damage, 6 sec
    envenom = {
        id = 32645,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "nature",

        spend = function ()
            return 35 * ( 1 - 0.06 * talent.tight_spender.rank )
        end,
        spendType = "energy",

        startsCombat = true,

        usable = function () return combo_points.current > 0, "requires combo_points" end,

        handler = function ()
            if buff.darkest_night.up and combo_points.deficit == 0 then
                removeBuff( "darkest_night" )
                applyDebuff( "target", "deathstalkers_mark", nil, 3 )
                if talent.clear_the_witnesses.enabled then applyBuff( "clear_the_witnesses" ) end
            end

            if pvptalent.system_shock.enabled then
                if combo_points.current >= 5 and debuff.garrote.up and debuff.rupture.up and ( debuff.deadly_poison_dot.up or debuff.wound_poison_dot.up ) then
                    applyDebuff( "target", "system_shock", 2 )
                end
            end

            if pvptalent.creeping_venom.enabled then
                applyDebuff( "target", "creeping_venom" )
            end

            if level > 17 and buff.slice_and_dice.up then
                buff.slice_and_dice.expires = buff.slice_and_dice.expires + combo_points.current * 3
            else applyBuff( "slice_and_dice", combo_points.current * 3 ) end

            -- TODO: Manage async stacks
            addStack( "envenom" )
            spend( combo_points.current, "combo_points" )
            removeStack( "supercharged_combo_points" )
        end,
    },

-- Talent: Increases your dodge chance by ${$s1/2}% for $d.$?a344363[ Dodging an attack while Evasion is active will trigger Mastery: Main Gauche.][]
    evasion = {
        id = 5277,
        cast = 0,
        cooldown = 120,
        gcd = "off",
        school = "physical",

        talent = "evasion",
        startsCombat = false,

        toggle = "defensives",

        handler = function ()
            applyBuff( "evasion" )
        end,
    },

    -- Sprays knives at all enemies within 18 yards, dealing 544 Physical damage and applying your active poisons at their normal rate. Deals reduced damage beyond 8 targets. Awards 1 combo point.
    fan_of_knives = {
        id = 51723,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "physical",
        spend = 35,
        spendType = "energy",

        startsCombat = true,
        cycle = function () return buff.deadly_poison.up and "deadly_poison_dot" or buff.amplifying_poison.up and "amplifying_poison_dot" or nil end,

        cp_gain = function()
            local fanCP = buff.clear_the_witnesses.up and 2 or 1

            -- Predict crit gains
            if talent.seal_fate.enabled and settings.fok_critical_cp_prediction ~= "do_not_predict" then
                -- calculate the crit chance of Fan of Knives then estimate 
                fanCP = fanCP + max(0, floor( true_active_enemies * ( 0.01 * ( crit_pct_current + ( talent.deadly_precision.enabled and 5 or 0 ) + ( talent.thrown_precision.enabled and 5 or 0 ) + ( buff.momentum_of_despair.up and 10 or 0 ) + ( buff.master_assassin_any.up and 20 or 0 ) ) ) ) - ( settings.fok_critical_cp_prediction == "predict_conservatively" and 1 or 0 ) )

            end

            return fanCP
        end,

        handler = function ()
            gain( action.fan_of_knives.cp_gain, "combo_points" )
            removeBuff( "hidden_blades" )
            removeBuff( "clear_the_witnesses" )

            -- This is a rough estimation for AoE poison applications. If required, can be iterated on in the future if it needs to be referenced in an APL
            local newDeadlyPoisons = floor( poison_chance * max( 0, true_active_enemies - active_dot.deadly_poison_dot ) )

            if buff.deadly_poison.up then
                applyDebuff( "target", "deadly_poison_dot" )
                active_dot.deadly_poison_dot = min( active_enemies, active_dot.deadly_poison_dot + newDeadlyPoisons )
            end
            if buff.amplifying_poison.up then
                applyDebuff( "target", "amplifying_poison_dot" )
                active_dot.amplifying_poison_dot = min( active_enemies, active_dot.amplifying_poison_dot + newDeadlyPoisons )
            end
        end,
    },

    -- Talent: Performs an evasive maneuver, reducing damage taken from area-of-effect attacks by $s1% $?s79008[and all other damage taken by $s2% ][]for $d.
    feint = {
        id = 1966,
        cast = 0,
        cooldown = function() return 15 * ( pvptalent.thiefs_bargain.enabled and 0.667 or 1 ) end,
        charges = function() return talent.graceful_guile.enabled and 2 or nil end,
        recharge = function() return talent.graceful_guile.enabled and ( 15 * ( pvptalent.thiefs_bargain.enabled and 0.667 or 1 ) ) or nil end,
        gcd = "off",
        school = "physical",

        spend = function () return talent.nimble_fingers.enabled and 25 or 35 + conduit.nimble_fingers.mod end,
        spendType = "energy",

        startsCombat = false,
        texture = 132294,

        handler = function ()
            applyBuff( "feint" )
        end,
    },

    -- Garrote the enemy, causing 2,407 Bleed damage over 18 sec. Awards 1 combo point.
    garrote = {
        id = 703,
        cast = 0,
        cooldown = function () return buff.improved_garrote_any.up and 0 or 6 end,
        gcd = "totem",
        school = "physical",

        spend = 45,
        spendType = "energy",

        startsCombat = true,
        aura = "garrote",
        cycle = "garrote",

        usable = function ()
            if not debuff.garrote.refreshable and settings.max_garrote_spread > 0 and buff.indiscriminate_carnage_any.up then
                return ( active_dot.garrote < settings.max_garrote_spread ), strformat( "Active Garrotes [%d] >= Max Garrote Setting [%d]", active_dot.garrote, settings.max_garrote_spread )
            end
            return true
        end,

        cp_gain = function() return ( stealthed.rogue or stealthed.improved_garrote ) and talent.shrouded_suffocation.enabled and 3 or 1 end,

        handler = function ()
            applyDebuff( "target", "garrote" )
            debuff.garrote.pmultiplier = persistent_multiplier

            if debuff.deathmark.up then
                applyDebuff( "target", "garrote_deathmark" )
                debuff.garrote_deathmark.pmultiplier = persistent_multiplier
            end

            if buff.indiscriminate_carnage_any.up then
                active_dot.garrote = min( true_active_enemies, active_dot.garrote + 2 )
            end

            gain( action.garrote.cp_gain, "combo_points" )

            if stealthed.rogue then
                if talent.iron_wire.enabled then
                    applyDebuff( "target", "garrote_silence" )
                    applyDebuff( "target", "iron_wire" )
                end
                if azerite.shrouded_suffocation.enabled then
                    debuff.garrote.ss_buffed = true
                end
            end
        end,
    },

    -- Talent: Gouges the eyes of an enemy target, incapacitating for $d. Damage will interrupt the effect.    Must be in front of your target.    |cFFFFFFFFAwards $s2 combo $lpoint:points;.|r
    gouge = {
        id = 1776,
        cast = 0,
        cooldown = 25,
        gcd = "totem",
        school = "physical",

        spend = function () return talent.dirty_tricks.enabled and 0 or 25 end,
        spendType = "energy",

        talent = "gouge",
        startsCombat = true,

        cp_gain = function ()
            if buff.shadow_blades.up then return combo_points.max end
            return 1 + ( buff.broadside.up and 1 or 0 ) + ( talent.seal_fate.enabled and buff.cold_blood.up and not talent.inevitable_end.enabled and 1 or 0 )
        end,

        handler = function ()
            applyDebuff( "target", "gouge" )
            gain( action.gouge.cp_gain, "combo_points" )
        end,
    },

    instant_poison = {
        id = 315584,
        cast = 1.5,
        cooldown = 0,
        gcd = "spell",

        startsCombat = false,
        essential = true,
        texture = 132273,

        readyTime = function () return buff.instant_poison.remains - 120 end,

        handler = function ()
            applyBuff( "instant_poison" )
        end,
    },

    -- A quick kick that interrupts spellcasting and prevents any spell in that school from being cast for 5 sec.
    kick = {
        id = 1766,
        cast = 0,
        cooldown = 15,
        gcd = "off",
        school = "physical",

        startsCombat = true,

        toggle = "interrupts",

        debuff = "casting",
        readyTime = state.timeToInterrupt,

        handler = function ()
            interrupt()
        end
    },

    -- Finishing move that stuns the target$?a426588[ and creates shadow clones to stun all other nearby enemies][]. Lasts longer per combo point, up to 5:;    1 point  : 2 seconds;    2 points: 3 seconds;    3 points: 4 seconds;    4 points: 5 seconds;    5 points: 6 seconds
    kidney_shot = {
        id = 408,
        cast = 0,
        cooldown = 30,
        gcd = "spell",

        spend = function ()
            if buff.goremaws_bite.up then return 0 end
            return ( talent.rushed_setup.enabled and 20 or 25 ) * ( talent.stunning_secret.enabled and 2 or 1 ) * ( 1 - 0.06 * talent.tight_spender.rank ) * ( 1 + conduit.rushed_setup.mod * 0.01 )
        end,
        spendType = "energy",

        startsCombat = true,
        aura = "internal_bleeding",
        cycle = "internal_bleeding",

        usable = function ()
            if target.is_boss then return false, "kidney_shot assumed unusable in boss fights" end
            return combo_points.current > 0, "requires combo points"
        end,

        handler = function ()
            applyDebuff( "target", "kidney_shot", 1 + combo_points.current )
            if talent.alacrity.rank > 1 and effective_combo_points > 9 then addStack( "alacrity" ) end
            if talent.internal_bleeding.enabled then
                applyDebuff( "target", "internal_bleeding" )
                debuff.internal_bleeding.pmultiplier = persistent_multiplier
            end

            if pvptalent.control_is_king.enabled then
                gain( 10 * combo_points.current, "energy" )
            end

            spend( combo_points.current, "combo_points" )
        end,
    },

    -- Talent: Release a lethal poison from your weapons and inject it into your target, dealing 1,770 Nature damage instantly and an additional 1,648 Nature damage over 14 sec. Each time you apply a Lethal Poison to a target affected by Kingsbane, Kingsbane damage increases by 20%. Awards 1 combo point.
    kingsbane = {
        id = 385627,
        cast = 0,
        cooldown = 60,
        gcd = "totem",
        school = "nature",

        spend = 35,
        spendType = "energy",

        talent = "kingsbane",
        startsCombat = false,

        cp_gain = 1,

        handler = function ()
            removeBuff( "kingsbane" )
            applyDebuff( "target", "kingsbane_dot" )
            gain( action.kingsbane.cp_gain, "combo_points" )
        end,
    },

    --[[ Talent: Marks the target, instantly generating 5 combo points. Cooldown reset if the target dies within 1 min.
    -- TODO:  MfD cooldown for Subtlety is different?
    marked_for_death = {
        id = 137619,
        cast = 0,
        cooldown = 40,
        gcd = "off",
        school = "physical",

        talent = "marked_for_death",
        startsCombat = false,
        texture = 236364,

        toggle = "cooldowns",

        usable = function ()
            return combo_points.current <= settings.mfd_points, "combo_point (" .. combo_points.current .. ") > user preference (" .. settings.mfd_points .. ")"
        end,

        cp_gain = function () return 7 end,

        handler = function ()
            gain( action.marked_for_death.cp_gain, "combo_points" )
        end,
    }, ]]

    -- Attack with both weapons, dealing a total of 649 Physical damage. Awards 2 combo points.
    mutilate = {
        id = 1329,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "physical",

        spend = function()
            return 50 + ( talent.vicious_venoms.rank * 5 )
        end,
        spendType = "energy",

        startsCombat = true,
        texture = 132304,

        handler = function ()
            gain( 2, "combo_points" )
            if talent.caustic_spatter.enabled and dot.rupture.ticking and dot.deadly_poison_dot.ticking then
                applyDebuff( "target", "caustic_spatter" )
                active_dot.caustic_spatter = 1
            end


            if talent.doomblade.enabled or legendary.doomblade.enabled then
                applyDebuff( "target", "mutilated_flesh" )
            end
        end,
    },

    -- Throws a poison-coated knife, dealing 171 damage and applying your active Lethal and Non-Lethal Poisons. Awards 1 combo point.
    poisoned_knife = {
        id = 185565,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "physical",

        spend = 40,
        spendType = "energy",

        startsCombat = true,

        handler = function ()
        end,
    },

    -- Coats your weapons with a Non-Lethal Poison that lasts for 1 hour.  Each strike has a 30% chance of poisoning the enemy, clouding their mind and slowing their attack and casting speed by 15% for 10 sec.
    numbing_poison = {
        id = 5761,
        cast = 1,
        cooldown = 0,
        gcd = "spell",

        startsCombat = false,
        essential = true,
        texture = 136066,

        readyTime = function () return buff.numbing_poison.remains - 120 end,

        handler = function ()
            applyBuff( "numbing_poison" )
        end,
    },

    -- Pick the target's pocket.
    pick_pocket = {
        id = 921,
        cast = 0,
        cooldown = 0.5,
        gcd = "off",

        startsCombat = true,
        texture = 133644,

        handler = function ()
        end,
    },

    -- Finishing move that tears open the target, dealing Bleed damage over time. Lasts longer per combo point. 1 point : 1,250 over 8 sec 2 points: 1,876 over 12 sec 3 points: 2,501 over 16 sec 4 points: 3,126 over 20 sec 5 points: 3,752 over 24 sec
    rupture = {
        id = 1943,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "physical",

        spend = function()
            if buff.goremaws_bite.up then return 0 end
            return 25 * ( 1 - 0.06 * talent.tight_spender.rank )
        end,
        spendType = "energy",

        startsCombat = true,
        aura = "rupture",
        cycle = "rupture",

        usable = function ()
            if combo_points.current == 0 then return false, "requires combo_points" end
            if ( settings.rupture_duration or 0 ) > 0 and target.time_to_die < ( settings.rupture_duration or 0 ) then return false, "target will die within " .. ( settings.rupture_duration or 0 ) .. " seconds" end
            return true
        end,

        used_for_danse = function()
            if not state.spec.subtlety or not talent.danse_macabre.enabled or buff.shadow_dance.down then return false end
            return danse_macabre_tracker.rupture
        end,

        handler = function ()
            --- Shared functionality
            debuff.rupture.pmultiplier = persistent_multiplier
            applyDebuff( "target", "rupture" )

            spend( combo_points.current, "combo_points" )
            if talent.supercharger.enabled then removeStack( "supercharged_combo_points" ) end

            --- Assassination Rogue specific
            if debuff.deathmark.up then
                applyDebuff( "target", "rupture_deathmark" )
                debuff.rupture_deathmark.pmultiplier = persistent_multiplier
            end
            
            local ruptureTargets = min( true_active_enemies, buff.indiscriminate_carnage_any.up and 3 or 1 )
            if ruptureTargets > 1 then active_dot.rupture = min( true_active_enemies, active_dot.rupture + ( ruptureTargets - 1 ) ) end -- Primary target is already handle, so -1
            if buff.serrated_bone_spike_charges.up then BoneSpikes( ruptureTargets ) end

            if talent.scent_of_blood.enabled or azerite.scent_of_blood.enabled then
                applyBuff( "scent_of_blood", dot.rupture.remains, active_dot.rupture * ( 2 * talent.scent_of_blood.rank ) )
            end

            --- Subtlety Rogue specific
            if state.spec.subtlety then
                if buff.masterful_finish.up then removeBuff( "masterful_finish" ) end
                if buff.finality_rupture.up then removeBuff( "finality_rupture" )
                elseif talent.finality.enabled then applyBuff( "finality_rupture" ) end
                removeStack( "goremaws_bite" )
            end

        end,
    },


    sap = {
        id = 6770,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "physical",

        spend = function () return ( talent.dirty_tricks.enabled and 0 or 35 ) * ( 1 + conduit.rushed_setup.mod * 0.01 ) end,
        spendType = "energy",

        startsCombat = false,

        handler = function ()
            applyDebuff( "target", "sap" )
        end,
    },

    -- Talent: Infect the target's blood, dealing $o1 Nature damage over $d. If the target survives its full duration, they suffer an additional $328306s1 damage and you gain $s6 use of any Stealth ability for $347037d.    Cooldown reduced by $s3 sec if Sepsis does not last its full duration.    |cFFFFFFFFAwards $s7 combo $lpoint:points;.|r
    sepsis = {
        id = 328305,
        cast = 0,
        cooldown = 90,
        gcd = "totem",
        school = "nature",

        spend = 25,
        spendType = "energy",

        startsCombat = true,
        usable = function() return covenant.night_fae end,
        toggle = "cooldowns",

        cp_gain = function()
            if buff.shadow_blades.up then return 7 end
            return 1 + ( talent.seal_fate.enabled and buff.cold_blood.up and not talent.inevitable_end.enabled and 1 or 0 ) + ( buff.broadside.up and 1 or 0 )
        end,

        handler = function ()
            applyBuff( "sepsis_buff" )
            applyDebuff( "target", "sepsis" )
            gain( action.sepsis.cp_gain, "combo_points" )
        end,

        copy = { 385408, 328305 }
    },

    -- Step through the shadows to appear behind your target and gain 70% increased movement speed for 2 sec. If you already know Shadowstep, instead gain 1 additional charge of Shadowstep.
    shadowstep = {
        id = 36554,
        cast = 0,
        charges = function()
            if talent.shadowstep.enabled and talent.shadowstep_2.enabled then return 2 end
        end,
        cooldown = function() return 30 * ( 1 - 0.333 * talent.intent_to_kill.rank ) end,
        recharge = function()
            if talent.shadowstep.enabled and talent.shadowstep_2.enabled then return 30 * ( 1 - 0.333 * talent.intent_to_kill.rank ) end
        end,
        gcd = "off",

        talent = "shadowstep",
        startsCombat = false,
        texture = 132303,

        handler = function ()
            applyBuff( "shadowstep" )
            setDistance( 5 )
        end,
    },

    -- Talent: Attack with your poisoned blades, dealing 319 Physical damage, dispelling all enrage effects and applying a concentrated form of your active Non-Lethal poison. Your Nature damage done against the target is increased by 20% for 8 sec. Awards 1 combo point.
    shiv = {
        id = 5938,
        cast = 0,
        charges = function()
            if talent.lightweight_shiv.enabled then return 2 end
        end,
        cooldown = 25,
        recharge = function()
            if talent.lightweight_shiv.enabled then return 25 end
        end,
        gcd = "totem",
        school = "physical",

        spend = function () return ( talent.tiny_toxic_blade.enabled or legendary.tiny_toxic_blade.enabled ) and 0 or 30 end,
        spendType = "energy",

        talent = "shiv",
        startsCombat = true,

        cp_gain = function () return 1 + ( buff.shadow_blades.up and 6 or 0 ) + ( buff.broadside.up and 1 or 0 ) end,

        handler = function ()
            gain( action.shiv.cp_gain, "combo_points" )
            removeDebuff( "target", "dispellable_enrage" )
            if talent.improved_shiv.enabled then applyDebuff( "target", "shiv" ) end
            if talent.supercharger.enabled then addStack( "supercharged_combo_points", nil, talent.supercharger.rank ) end
        end,
    },

    -- Extend a cloak that shrouds party and raid members within 30 yards in shadows, providing stealth for 15 sec.
    shroud_of_concealment = {
        id = 114018,
        cast = 0,
        cooldown = function() return talent.stillshroud.enabled and 180 or 360 end,
        gcd = "totem",
        school = "physical",

        startsCombat = false,

        toggle = "interrupts",

        usable = function() return stealthed.all, "requires stealth" end,
        handler = function ()
            applyBuff( "shroud_of_concealment" )
        end,
    },

    -- Finishing move that consumes combo points to increase attack speed by 50%. Lasts longer per combo point. 1 point : 12 seconds 2 points: 18 seconds 3 points: 24 seconds 4 points: 30 seconds 5 points: 36 seconds
    slice_and_dice = {
        id = 315496,
        cast = 0,
        cooldown = 0,
        gcd = "totem",
        school = "physical",

        spend = function()
            if buff.goremaws_bite.up then return 0 end
            return 25 * ( 1 - 0.06 * talent.tight_spender.rank )
        end,
        spendType = "energy",

        startsCombat = false,
        texture = 132306,

        usable = function() return combo_points.current > 0, "requires combo points" end,

        handler = function ()
            removeStack( "goremaws_bite" )
            if talent.alacrity.rank > 1 and effective_combo_points > 9 then addStack( "alacrity" ) end
            applyBuff( "slice_and_dice" )
            spend( combo_points.current, "combo_points" )

            if talent.underhanded_upper_hand.enabled then
                if buff.blade_flurry.up then buff.slice_and_dice.expires = buff.slice_and_dice.expires + buff.blade_flurry.remains end
            end
        end,
    },

    -- Increases your movement speed by 70% for 8 sec. Usable while stealthed.
    sprint = {
        id = 2983,
        cast = 0,
        cooldown = function () return 120 * ( talent.improved_sprint.enabled and 0.5 or 1 ) * ( pvptalent.maneuverability.enabled and 0.5 or 1 ) end,
        gcd = "off",

        startsCombat = false,
        texture = 132307,

        toggle = "interrupts",

        handler = function ()
            applyBuff( "sprint" )
        end,
    },

    -- Conceals you in the shadows until cancelled, allowing you to stalk enemies without being seen.
    stealth = {
        id = 1784,
        cast = 0,
        cooldown = 2,
        gcd = "off",
        school = "physical",

        startsCombat = false,
        texture = 132320,

        usable = function ()
            if time > 0 then return false, "cannot stealth in combat"
            elseif buff.stealth.up then return false, "already in stealth"
            elseif buff.vanish.up then return false, "already vanished" end
            return true
        end,

        handler = function ()
            applyBuff( "stealth" )

            if talent.crackshot.enabled then setCooldown( "between_the_eyes", 0 ) end

            if talent.improved_garrote.enabled then applyBuff( "improved_garrote_aura" ) end
            if talent.indiscriminate_carnage.enabled then applyBuff( "indiscriminate_carnage_aura" ) end
            if talent.master_assassin.enabled then applyBuff( "master_assassin_aura" ) end
            if talent.premeditation.enabled then applyBuff( "premeditation" ) end
            if talent.silent_storm.enabled then applyBuff( "silent_storm" ) end
            if talent.take_em_by_surprise.enabled and buff.take_em_by_surprise.down then
                applyBuff( "take_em_by_surprise" )
                stat.haste = state.haste + 0.1
            end

            if conduit.cloaked_in_shadows.enabled then applyBuff( "cloaked_in_shadows" ) end
            if conduit.fade_to_nothing.enabled then applyBuff( "fade_to_nothing" ) end
        end,

        copy = 115191
    },

    -- Talent: Restore 100 Energy. Mastery increased by 13.6% for 6 sec.
    thistle_tea = {
        id = 381623,
        cast = 0,
        charges = 3,
        cooldown = 60,
        recharge = 60,
        icd = 1,
        gcd = "off",
        school = "physical",

        spend = -100,
        spendType = "energy",

        talent = "thistle_tea",
        startsCombat = false,

        toggle = "cooldowns",

        handler = function ()
            applyBuff( "thistle_tea" )
        end,
    },

    -- Talent: Redirects all threat you cause to the targeted party or raid member, beginning with your next damaging attack within the next 30 sec and lasting 6 sec.
    tricks_of_the_trade = {
        id = 57934,
        cast = 0,
        cooldown = 30,
        gcd = "off",

        talent = "tricks_of_the_trade",
        startsCombat = false,

        usable = function() return group, "requires an ally" end,

        handler = function ()
            applyBuff( "tricks_of_the_trade" )
        end,
    },

    -- Allows you to vanish from sight, entering stealth while in combat. For the first 3 sec after vanishing, damage and harmful effects received will not break stealth. Also breaks movement impairing effects.
    vanish = {
        id = 1856,
        cast = 0,
        charges = function()
            if talent.without_a_trace.enabled then return 2 end
        end,
        cooldown = function() return 120 * ( pvptalent.thiefs_bargain.enabled and 0.667 or 1 ) end,
        recharge = function()
            if talent.without_a_trace.enabled then return 120 * ( pvptalent.thiefs_bargain.enabled and 0.667 or 1 ) end
        end,
        gcd = "off",

        startsCombat = false,
        texture = 132331,

        disabled = function ()
            if ( settings.solo_vanish and solo ) or group then return false end
            return true
        end,

        toggle = "cooldowns",

        readyTime = function ()
            local reserved = settings.vanish_charges_reserved or 0
            if reserved > 0 then
                local cd = cooldown.vanish
                return ( 1 + reserved - cd.charges_fractional ) * cd.recharge
            end
        end,

        handler = function ()
            applyBuff( "vanish" )
            applyBuff( "stealth" )
            if talent.crackshot.enabled then setCooldown( "between_the_eyes", 0 ) end

            if talent.improved_garrote.enabled then applyBuff( "improved_garrote" ) end
            if talent.invigorating_shadowdust.enabled then
                for name, cd in pairs( cooldown ) do
                    if cd.remains > 0 then reduceCooldown( name, 10 * talent.invigorating_shadowdust.rank ) end
                end
            end
            if talent.premeditation.enabled then applyBuff( "premeditation" ) end
            if talent.silent_storm.enabled then applyBuff( "silent_storm" ) end
            if talent.soothing_darkness.enabled then applyBuff( "soothing_darkness" ) end
            if talent.take_em_by_surprise.enabled and buff.take_em_by_surprise.down then
                applyBuff( "take_em_by_surprise" )
                stat.haste = state.haste + 0.1
            end

            if conduit.cloaked_in_shadows.enabled then applyBuff( "cloaked_in_shadows" ) end
            if conduit.fade_to_nothing.enabled then applyBuff( "fade_to_nothing" ) end
        end,
    },


    wound_poison = {
        id = 8679,
        cast = 1.5,
        cooldown = 0,
        gcd = "spell",

        startsCombat = false,
        essential = true,
        texture = 134197,

        readyTime = function () return buff.wound_poison.remains - 120 end,

        handler = function ()
            applyBuff( "wound_poison" )
        end,
    },

    -- TODO: Dragontempered Blades allows for 2 Lethal Poisons and 2 Non-Lethal Poisons.
    apply_poison_actual = {
        name = "|cff00ccff[" .. _G.MINIMAP_TRACKING_VENDOR_POISON .. "]|r",
        cast = 1.5,
        cooldown = 0,
        gcd = "spell",

        startsCombat = false,
        essential = true,

        next_poison = function()
            if buff.lethal_poison.down or talent.dragontempered_blades.enabled and buff.lethal_poison.stack < 2 then
                if talent.amplifying_poison.enabled and buff.amplifying_poison.down then return "amplifying_poison"
                elseif action.deadly_poison.known and buff.deadly_poison.down then return "deadly_poison"
                elseif action.instant_poison.known and buff.instant_poison.down then return "instant_poison"
                elseif action.wound_poison.known and buff.wound_poison.down then return "wound_poison" end

            elseif buff.nonlethal_poison.down or talent.dragontempered_blades.enabled and buff.nonlethal_poison.stack < 2 then
                if talent.atrophic_poison.enabled and buff.atrophic_poison.down then return "atrophic_poison"
                elseif action.numbing_poison.known and buff.numbing_poison.down then return "numbing_poison"
                elseif action.crippling_poison.known and buff.crippling_poison.down then return "crippling_poison" end

            end

            return "apply_poison_actual"
        end,

        texture = function ()
            local np = action.apply_poison_actual.next_poison
            if np == "apply_poison_actual" then return 136242 end
            return action[ np ].texture
        end,

        bind = function ()
            return action.apply_poison_actual.next_poison
        end,

        readyTime = function ()
            if action.apply_poison_actual.next_poison ~= "apply_poison_actual" then return 0 end
            return 0.01 + min( buff.lethal_poison.remains, buff.nonlethal_poison.remains )
        end,

        handler = function ()
            applyBuff( action.apply_poison_actual.next_poison )
        end,

        copy = "apply_poison"
    },
} )


spec:RegisterRanges( "pick_pocket", "sinister_strike", "blind", "shadowstep" )

spec:RegisterOptions( {
    enabled = true,

    aoe = 3,
    cycle = false,

    nameplates = true,
    nameplateRange = 10,
    rangeFilter = false,

    canFunnel = true,
    funnel = false,

    damage = true,
    damageExpiration = 6,

    potion = "tempered_potion",

    package = "Assassination",
} )


spec:RegisterSetting( "priority_rotation", false, {
    name = "Assassination Rogue is able to do funnel damage. Head over to |cFFFFD100Toggles|r to learn how to turn the feature on and off. " ..
    "If funnel is enabled, the default priority will change slightly to do priority damage to a mob.\n\n",
    desc = "",
    type = "description",
    fontSize = "medium",
    width = "full"
} )

--[[spec:RegisterSetting( "envenom_pool_5_points", true, {
    name = "Pool for |T132287:0|t Envenom at 5 Combo Points",
    desc = "If checked, pooling Energy for |T132287:0|t Envenom may be recommended over |T132304:0|t Mutilate filler at 5+ Combo Points.\n\n" ..
        "The default priority would pool at 6+ Combo Points, but guides recommend pooling at 5+.",
    type = "toggle",
    width = "full"
} )

spec:RegisterStateExpr( "envenom_at_5cp", function ()
    if buff.darkest_night.up then return 0 end -- Bypass with Darkest Night to ensure pooling to CP cap.
    return settings.envenom_pool_5_points and 1 or 0
end )--]]

spec:RegisterSetting( "fok_critical_cp_prediction", "predict", {
    name = strformat( "%s Critical Combo Point Prediction", Hekili:GetSpellLinkWithTexture( 51723 ) ),  -- Fan of Knives
    desc = strformat( "%sThis setting controls how %s predicts critical strikes for combo point generation.%s " ..
                      "|n|n%sThis option only works if the %s talent is selected.%s\n\n" ..
                      "|cFF00FF00• Predict:|r Assumes a certain number of critical hits will occur based on your current critical strike chance and number of nearby enemies.\n\n" ..
                      "|cFF00FF00• Predict Conservatively:|r The predicted number of combo points is reduced by 1 in order to prevent more jarring rotation changes from unlucky critical strikes.\n\n" ..
                      "|cFF00FF00• Do Not Predict:|r Disables critical prediction, using only guaranteed combo points from casting %s.",
                      "|cFFFFD100", Hekili:GetSpellLinkWithTexture( 51723 ), "|r",
                      "|cFFFF0000", Hekili:GetSpellLinkWithTexture( 14190 ), "|r",
                      Hekili:GetSpellLinkWithTexture( 51723 )
    ),
    type = "select",
    values = {
        ["predict"] = "Predict",
        ["predict_conservatively"] = "Predict Conservatively",
        ["do_not_predict"] = "Do Not Predict"
    },
    width = 1.5,
} )

spec:RegisterSetting( "envenom_pool_pct", 0, {
    name = strformat( "Minimum Energy %% for %s", Hekili:GetSpellLinkWithTexture( 32645 ) ),
    desc = strformat( "If set above 0, %s will ONLY be used when you have at least this percentage of your Energy.", Hekili:GetSpellLinkWithTexture( 32645 ) ),
    type = "range",
    min = 0,
    max = 100,
    step = 1,
    width = 1.5
} )

spec:RegisterStateExpr( "envenom_pool_deficit", function ()
    return energy.max * ( ( 100 - ( settings.envenom_pool_pct or 100 ) ) / 100 )
end )

-- Not currently used, but could be investigated as per review comments on PR #4133
--[[spec:RegisterSetting( "dot_threshold", 7, {
    name = "Remaining Time |cff4ec9b0DoT|r Threshold",
    desc = "If set above 0, the |cff4ec9b0DoT|r priority will not be used if your enemy or enemies will not survive longer than the specified time.",
    type = "range",
    min = 0,
    max = 10,
    step = 0.1,
    width = 1.5
} )--]]

--[[spec:RegisterSetting( "mfd_points", 3, {
    name = "|T236340:0|t |cff4ec9b0Marked for Death|r Combo Points",
    desc = "The addon will only recommend |T236364:0|t |cff4ec9b0Marked for Death|r when you have the specified number of combo points or fewer.",
    type = "range",
    min = 0,
    max = 5,
    step = 1,
    width = "full"
} )--]]

spec:RegisterSetting( "vanish_charges_reserved", 0, {
    name = strformat( "Reserve %s Charges", Hekili:GetSpellLinkWithTexture( 1856 ) ),
    desc = strformat( "If set above zero, %s will not be recommended if it would leave you with fewer than this number of (fractional) charges.", Hekili:GetSpellLinkWithTexture( 1856 ) ),
    type = "range",
    min = 0,
    max = 2,
    step = 0.1,
    width = 1.5
} )

spec:RegisterSetting( "solo_vanish", true, {
    name = strformat( "Allow %s When Solo", Hekili:GetSpellLinkWithTexture( 1856 ) ),  -- Vanish
    desc = strformat( "If enabled, %s can be recommended even when you are alone, |cFFFF0000which may reset combat|r.", Hekili:GetSpellLinkWithTexture( 1856 ) ),
    type = "toggle",
    width = "full"
} )

spec:RegisterSetting( "allow_shadowmeld", nil, {
    name = strformat( "Allow %s", Hekili:GetSpellLinkWithTexture( 58984 ) ),  -- Shadowmeld
    desc = strformat( "If checked, %s can be recommended for Night Elves when its conditions are met.  Your stealth-based abilities can be used in Shadowmeld, even if your action bar does not change. " ..
                      "%s can only be recommended in boss fights or when you are in a group (to avoid resetting combat).",
                      Hekili:GetSpellLinkWithTexture( 58984 ), Hekili:GetSpellLinkWithTexture( 58984 ) ),
    type = "toggle",
    width = "full",
    get = function () return not Hekili.DB.profile.specs[ 259 ].abilities.shadowmeld.disabled end,
    set = function ( _, val )
        Hekili.DB.profile.specs[ 259 ].abilities.shadowmeld.disabled = not val
    end,
} )

spec:RegisterSetting( "max_garrote_spread", 10, {
    name = strformat( "Maximum %s DoTs During %s", Hekili:GetSpellLinkWithTexture( 703 ), Hekili:GetSpellLinkWithTexture( 381802 ) ),
    desc = strformat( "This setting controls the maximum number of %s the priority will guide you to apply while the %s buff is active." ..
                      "|n|n|cFFFFD100Set to 0 for no limit.|r\n\n" ..
                      "|cFF00FF00Maximum:|r This number will be used as the maximum number of %s, and can go as high as 20.",
                      Hekili:GetSpellLinkWithTexture( 703 ), Hekili:GetSpellLinkWithTexture( 381802 ),
                      Hekili:GetSpellLinkWithTexture( 703 )
    ),
    type = "range",
    min = 0,
    max = 20,
    step = 1,
    width = "full"
} )


spec:RegisterPack( "Assassination", 20241102.1, [[Hekili:v3ZAZTTrs(BrvQIH02sMKsYpYjQuo2j7zVNtsf5BZ3eeejOeorcWfau2Alv63(1DppWmd6zainLZU5HLmXGEMUN(D3ZWZhD(No)SzXvjN)RJho(OrJgo(Grhp(OHV(8ZQUBvY5NTkE6nXxb)sw8s4pFtzzCzzAwCvAEg(07wKhpdHsz(6IPWiUUQAv5p88NFvA11RV8GP5lFEz6Y1lO3yAr88k8Vp95NF2LRtxu9(SZVKzjmC0HJp)S41vxNxC(zNLU8TaKtNnlrm8KYPNFgo89hnA)HJ)HhU4xZF4IL5fjpCX04YQ0SRE4IZYE3)1dx8PpNeFZdx8(3(WhE4dIxz4(hocELFkPQkP4HlkxVAvEr1dxmph(BRltkkF4IpFnaWzW)NLdpjjl(YfaSRIlUkb(7LFoE1kAs2hMN7ksNBc9XVeG(hHLbcDffdwy5ffjtrYG1Gh9ShUa)5XWlHikSewH0d9Gg(69h)k4H)soqGF4Iv55lOPMwU)C2Tjz5lHfmqVZxdRT3fxCtsj8l)A6vxd)awB1JkTeXQpNzb8J(bnzQjWH3YySJcTkhHu1)i520syzopDXIeJfOX4gEmGY4pFL8NV2lqF1(JXh(MflY)Cay(kbsycdyRVizr8xWnVKIRUd)RxLKH)4FUoTizzswvPfeq2OFwUrlyLEZV9ZMJyeoh)skaYYPWBhvgxTUG4RF4IBJlsPx1y8dFnT1cV0)lTKaA)8cCxGwN6b(sbdZNUgMX)mgqV)e2ktbPRfPLvLKSvvs8IQRtqbTFLKzfmKZo)NaHKPszryRlQirjhIYifPRep7mfaaCIgE55Nb7WrzjFPcHi8hJ9a24LxUU8Ah49MvRwau03LexDDzv8IBizMpcCEc(TuGV76yeFJHDmG8KpF(5NbVpisKgF(z7bCHjxUE(8dMzcIOLaeoy9QhUOhkRbVzf3aKRsAu9F4cCLEBs0SCUb)WftaEShU4(7F4cXekepIYqPJdizHlgGeGd9qakVo9wh0)JX3KG6nqEKQCevVf(nqb1Ti3hGBRliHO)o8NLxgNbpejgXihCw8cqvW1jtVXKGir2BuVGfoIyw9tQsNEdb9EAIiUepayPJtZGP5eGPJEk9SeHScqvrK8ipiPCuo4PwTbIKi0RIrfzviNkc8Am9S1xcyY81OLIASkz(8eXMdyg4Y8Ov5POq3fNoPwG5G6bvUkjBw00vTG0wOvnwdW8qflryMlnVW08fZIUCrE(m6Zj2GJ3okKIq0uTp()WVCvT9JDfjIWHL0egflNVOyqLKseskzakaxMIAFMO4m(6irVWdjQy9kqHiYbC30fjrcKTe1Vyt0(dX4QjAVpBwk(8LOJfWN)24IS4DhReHiPwZr0uXuefNDNIA1hTnmh0GETWgasdafvLGBciF4bewbKa1G3ZyMjBlkdcOyR8L1dOPfd5iq(CjHRMlFGudisaHpDjqmZJMLcZ(PWw4X4MWl9SjCvCrrEv7BcVF5QI8BXL6Ft8gOzwHAD00)FiOec)keKqJXw(mK5AA(6SQAVf6WUirInutnwqgwb(hwLUArkk5CIGlf)8(0)19TpBJbskbntcIHwqyGg(EgVRKtpFScM)hJe3PkjoU9Y9nOgWahJBRVYzBTM2PDc4Gu5wxKEflqFFKrosU3fARkv8paZ55qffXuCf02mpDk6CWPIv3tbS(HlEI2yF51f5RNbywjmj5tjjfLPWMS4vW)E2TXzPG)jmogz6GdR7qalk4Ze6caSMX)9FqWc9OpBQIP2vmrjrq((G6lH58lvfXrXlrXHZp7OJ95twaVSKyH9YuTCqRVZPFJws)ciamF9c0z1za3OJFv02ZCyixclNzrlwp9M7aDMPzQ9VVgnP9BaFeYGsM0fLhawrMEJaohBybXzSxNepZDSb9)Qvst5QcaMgBqkZk6TiJOJ6GsQ90SJoC5woLvpkEvtwdwnshbxRXmvYlQ0dzOxZq70b(eYnhJLzSbCw8Tm0RN56hzkkFu7IY9XDHKfluMBGn9SO85r3KbSqiV1pkatixqDIFPPqLtal(Culi)cjab6UJVL4quMZuc17mUJ)tI1i8ohPHwmxDWg2iPKFrC6SOKBrmlEgiVJobJGAylUqgEZdcM8ssVbTn66Qn)UuqcBh2jDCrZI(1ZL2wtieHIWkYzjnsHUPeeBmCxXWqo(TjKogRAmknXi5ZafSWoiiGet8dXOF7jFzfyDanj3ic2)c5J3fQ48W3E4qHZgtZliFfdLhgTd4wBeVLsO0S4LG8p4H9TiQHcsaf9Y0fPvKtyRlrcfm9f395RtWx4J6GU)BA)61K8GUw53LqjM6Wi3fH7XHCHrh9NtQsuiGoQV1zlskX8qQsuzMmrLify1UkOVDnY3N4sEQurOi1uXG0B2vrLyGqZkswuZS)eHFnQxWFCIWaFHr8dIWkzsuLIrwo1tJxxcrlcOCmMe7gASeYbUJsfbFLmRwmCX5WgqjMIIA1kILo(BlwNyM7oTUlh9GwzOQz4TemJe1tabbS5cMjfZMTB6uc10pTKJ7R91BWuR5KIm6ZQJz3zX5SS1q0ymBwEefiiProoxhzXBki2FWb)FVizAAjn0gkAJLJkALAqwiMhKOdg8Nqm6YTo03LYCWd)KLRaMr9wya)48INtJlPuGJORoZO8gTxG88Fob)ZiIlZpQXSlyAtXtEtTEIPLGxzLyg(3wBmHbei5J8YXqCwjZ6ql14ex842w98Sn4jLLn4vEujNwMx5iQsfVoCibCcKHd6x0(VuAiZOfuuoVmRoO8DPadJBfH8el46x5ufieoLw7sXIym3B8sd8QUQF(xbM9THb1nPwbiuVB9YvQsPGRX5cFdad7M0MlZlfjLJECKfV20RrfBLKP1xjm2TecclA6SYWLpJXc0hHxe0vcK(81LwPl63Ld3ynHSiuMYxawDb(FaYY0G4B1Iow6XZFbhMpFTOPjA(6I7A4VFrkTu1SxfX4plfPk5sWit5DztXnvHXgLKBPjQ4z14Azl8luVytkktk8z2OJazEArcH1Hv4zXp7PAAEIjZ1PM6CeVDGB7m(yOMmg2NkRka56PG2dbNm4MGV4pA3tOhd3Pn9kcwyrZtXaoHGP95u3)DYIvia(hQcMtmMubrb(Z4Y0PuvsjG0MZFkm1r7JBOxIN(WfFs8yHILXGN5Fs4cKqP8NtufYfCgC9vx704awPI30bkPnFBvT8KITn2JxeYVYUwWhDK(RxDtsYkScolkZPGolfvShJs7n5)Syhb1FzqdQRC1JweObRNw3iuIiu95z6gxFYTIsHEMqv7d76bGLgvA5J(Tn8l9d5DQ362A8QbjY1Q7evSeImqaLI4mrZum2kqu2rDIjdqGY3zevB7BThBxPTo8kWK)Yh)q29fVEydvFJ35dUNhUo1DJwp61HjgDqimqeb85utRrt2CnAFEUcLfJRqjrkqbQHvweJQ(F7VJEbnNYgxSPLgAGjZWSZHEKJ2cYMTi1U(AU7iBP(p7IYobZe40BIePdSxhIp)qdbAFW5jkBsBe0ABNEaTzlYpGBnG1dcGPmFPaDBjRx3T7ScBFr0R1m5oUoMK6bylKei2HXJn9Nb8gbOcqKL3Ku5pjvkMU3sCnFsm8GURa6GskXDbGVmkzj6FC(6fNFgyFb(05rxnDgzuYYT2n3FsKxBK2p22qBbk7zPfW9J4faddeYv0Q1)R)fiqFz(xcHjAfn(iUY1bdudyzVISbNuaH(aWmoRCzkMWZDWcXhKduaYLXZI(NRtsYW(PkJATzlxM8Z)ssJdvks3sE4dvlDM1ravSPGVXfOR)Ganydyge9XDrqCBRxUdOIbaEG8OSHSwFDAm6O8bpFP)U2X0tcf5bJapQCb2y5t80rE2nIxOL2qZivBzQgB4gHCehun(anbc7JI7y0PyX7TN)yEdYBlwR(H9anISxyezG3CRjmClBJFcOLvXvACTeS5aqOeLQPpyKPge5Na7MV2RwgAmJ3S93XF72FhXT)o6)a3FT3MglCMa8Vkg8LIZDc7W3skv93fgx)kG6MsoS1hZ76TRxGohsFGozMIJNXYlJRmttTakCwYT7KYmGxav8isSGIijcomwCYfktxUKOcP4GfZqPkhCGcfdpHUbiyCgCB3LjreOsx8r0jnd9Wx0YOg(14edqJkvREXFwgr7Fio4ezjjZWpM65k5lde1p9BV73(bGwwconsFc4oCzoaaiie4nkr)TrtMSn)t7iv)w8G9jHdfv4g8arlinEOvr8OXxNVRLXFjI6lTshkcfP)7cx6(3ksG1NVM03GXBaGlD5A80EuNmGFsMmaAwev8E66Ic45lUJZLI2jpICwAJ5gnxNtCD8iRljXmxfweI)mr2aisu6S6Wi)810X8yDHe7q5G1zYQ6FDALOpHnjmCoJ0o(2pOFrbuR5p9UC1a26ZAuklXRkf3wnTUj4oAiL(a0hUA(smqsCZbBeY60nSViLg1d7wi4r0ltAolRhyx8F3IVolVksEoUCfTfmPQSDwEn4B)mrvbK2lPnqbIX5zw77p7InhtKjf1KPkrbJNwTVI2WTxZjF6I0vrQd(bJJbTp5VCiTtBZqugND1AqfliUgd7p28eddWtGQ0mxFRxbUvhTifIjjQEtB0WnEzQYD5PAw4JL)ydwnX3MNolcmAslInpI)GfrMY5MiUi2Xbo2yTZnlQmpN6hJrBElJO1AAY9103f5KqRl9hQPc1mA8DYZgcP6XAWuARikPqOw2sXFtEeXlTrQrqYO)Q)vFYekYVADIa(HoUc4Z9M9OtXShbWSiDAffHNUkpGVurI)seE0ifhqsLLl9rKeFjF5jiiiWceJVSV46d)YQodeHGRzTAsv80Mh7InhzvvbeFfFbpheaZsXtIm9((dDvYwzNwZJj1cSEAAe4EXuSdsQYjxBOPHuD688vRxuMyo5ON2dnhi14kLr)FRNDfEEDDh7iZXEz8vuIRasj6uJ5iHxeBncYbFD4d6fd24frcNwDNGnwZrv(vxbcDZxNLLSWuAAvrAoqzVlcKaeUwTPU4RGuJiM0tUBDS0(KMI1Ns(EGKjgCL(qRsbi)pqay1cagHpEDCj6Qy1bXz3fnBvjFseAokQWomrHotxAbKJIlpe1JqxIfJHLwEag3usXLGE1YOlb7qi(5mDSJA7cbzClKFgQgh9Gl08wOAS0KtBJS2KO5HC0y28s028atMUseJb2ebKNnqyyN8JoEuW5ASjXUzZi42UqjaLhISorwlgk6t0gOOWognqax4gwG63ls2FkvJiqTdErleJl83r)QzEe4sqqLwLABNdTgMcqVI1wZPkN4C0xK6AbI5t6p8GJE6Wdo8jCKp0DS9hEWOJFIF31gSVyTR99DAEPXMyNpUA8hg63rKG6qLFtD4X4)QpR0OghuRB6ueWWE0kvBXvPVbkEgMnpW1LzIKQeVeg(87OageQQvrr)m5aO)pDzSO9VMHv67zIIXJj3bSyEW52nxNhxZ6zxvVo3Dm6Hy43KvWn1OG0yJzC6JL9bgN)bUfAwCqp80twH3H0fRsVxOQYPmTP2xEiN72EBSKRqTvKPwGTt5RNsSs0L9d6GT)DeEVWmIRQmjsCxJSXbqt1uMEZTsRzhAVFFL5OFBD(VbVO7JTddqXWfI03RBur1eXsnRpBiVvmmq1RybXPSMPOtCZGI0UCDv6cznVC9rEdbL8kqHj7dQryLtYgLNitK8V)UmJLO6VdFQQw7ShLECzrTXzDdju6DzRUvCeQiA4OPI5Ol9bW(M9kZYC0N71lXXby0Q40cUdpx11fG7hC9ESkZveh3IeGXaRQm4GrwsjGqk9h71EkW4s(Ywr7PuYlULdekHlLxynzcUzLXK7uBpabHA1C8tUeZNTipMQw)tKaFfn)Hlue9bYT5p5XI)SK4z6OoWpHsXrWTiTioZoSk9AnoboQh45gMWhF0Fb8kSzUYrc0jT80hk2X(jq5(SY0zjpV(MO5aWCM6c8Anwyq1liUeM0fjI526PNX5G8GUi4PsJ8LQ1HwJBJKJy2kETNs06CPkQPKwGYEMgWMZTg6cBRZh)u8L7)r5GTewEhXVIT9UW3lK5ESwoOluOGSutK3(fnYvxtmWtPFRx191N1)llsIfeuT7os3ag0Ykw4sVNtmq7wXR1O59Kf7rI10(PERhCHYB7hzDdw8NXPYIqACkEjdkoxEfF8nYWBK9DTZzYARs9rW(Uhr32oKqJ5rE9OdFm760cSHWOkfTLyiFry4uZGFXQQ2hh0RlUQleOc6AEn(nxFJHJgWsS8XMyWpOohiIdBSoUlnP5zghvxXrY9zsMfqyd4UQO2LuSvB2G(YsdwcMKkNNMW6UVAVPzYjTwT)VLXxPpQGAFHKT35(tTA0o5AtUSEBCwfagPv96GmTY(PORez8pxT8mogz2cBu6bCoH8unnvol85uKgvUU4wYzIf5iBI48e4RRry28KMmB2kMukyh21Ac2wgpERHW)BmIhxEr2vs38f(3YM2SN2KxeDuXymtoV8a)53p8(nlqRLkJg3WDVqziLtaSFlTQYer9Tu6GzQxzhiWJmUNFUXu1PVGeQUgOiO13KyxpzWk9iATavspez95zspxeATrIGmNgZOJjN(OUPB6akzBOdVXY1mxspmwigum27sq5PbMCKPnFcLNAyFG5fTts1BAMRqZZZ3lAjwGw0Rio0Ep)pehjUN)BcDg4Pd06GWzW5Qp5GH8onKOHLrhsbAV26CAZ5xEPEW5CNLWdrZdERmr3cM94hP9DYenYbCfMVtcx1Yw1EeKMLCBAf2Umy(cMzfAWwFQ0g0SzqDCncZnJSLBe3NTu00Ig124YZTSogaXjsvVXQpkfKdHyLwskOZJV(Uk(8Z(CCrgk(dEpJsGPlnUmH)E9E)3RV4zX()jN6EO1v5lfDpdWJNb84h8Wh(FOCzJxfTVnhwDf0J)E1Pxbj3wxwJFVWEU)bOi1Wa7p6ld0ZWH8ZGwrMdGB4sNl8Efp84Uq3CaDO78T6z5HpWqDfshBgP1dI7is6Sg94gFhjQ8h(jNPi8vfvxNjNsT7ohEUCECH(XpI0ipW(rGg5BM2n0Ox8xb03j7aV8rALZkIQ6lInti1N(p3tVNR6pFNUpxsGh47KwChO7jP8Tqaqlk7eKFRvn7rxrZBncha7)ALOJCR7WzWdp7wtt8aVDYkMLnq5i5MXk4rf2wJ27o4XIKY(sAZWXJE0K1zxJuW)B2kSHVnYgMW9KZOxH(oAnUBh7oaRb5R9as3tbsdqYmaR16UdW(2zKNVJnBVXJQhZoJWHXHRNt6Ocn76t5ax(Ix1kzu8YoTeSdO90WWTWPRB5TnJI2WCHEJ2TzLy2QzgsyBrAo(wbo7q6eWzAsQqCPgJ5rf8TcyMU)kKMGnDDVTGVdaMTpYyaUVX1P1VNMAJH23PPPHDODjRPpGVteQ8VY3Un4hzW3kG3wbQoUU3wW3ba)nIHSBtthfV84t4wBbL32o1AGBMHiplSVYG0845L4TzAJbh4hOrh64C42deotGVwKOJq)XZfLDkTXZC8vtB4ZbXMg21UocC6lgngaMANwChWMYN0CtK99eEIGeVPpePT(HlOV3WGNtxuztp)xhF8RXdGq(806UxU8aT7HpDYZnpdep8bUrOYe)ZW6smPrli9mQg7tSo(dp8HV7Hl20ZGqxMDjuQBbF5Sp6zPZN43YAV(753M(93hW8WPtcyZBqV9ArZSjS57d)VcKESjs3eVmq6MuK6fgdEDAacIbo7bLmbThC(7WsPx1X23VlKOMfjssJm7c59hFYpEmxd0tlOUEia4xoQwk7dF33PKgDgGvBM8m9JIktqmTuWcBClt1BpQ(B(V(0(aTS)6UYd0iJfkGFByu91FXgycC8QnqOv4X6ogWC2SzoCU0dKCgShKTthDmTk)2CU)9VK9FM9LR((bQjVIfN5wr4jJhC6poEiHJ70J0FBOs9flGeb8E7fC6eDPF9tfmnW0TZ0U)fOXzeqrCzBnK7VNTNnHp2Qs5dU)((oDMspUdD(jtgbdT(Me40j9pA4tpCiNcQ99D0EaiGDvrpRoQ4Kj4oSp018GnlX3Vg01)ezEALn30BNU4hMnpsZsi)YH7xt6CsA2(Jgg4Gr5FY0NcBlngNc7shd)3wbs5P9wzCszCTrBrEYl6Th7tXBXNnGtwlkzURF)97P)C5cQN(d0iDp2ZxthF36XyWeuZTloU6gs6n3xV)(G80UnEJuxJUtgfNRAHrvNw)8(79Fa1V)EpnOZPDy2HGn6WGKvfT9rklPIfQep18G3C6O2HIi8BZXzFeTrOAFCVpDYOJFk)fkutOqhKBZp35CBB(iRJPT09LhJMyU2dnyhPHqcF73kLx2tfplF90f6eDpQfDC6y6KxNzvpI7VpGQHjJLoq)nVVE7kM2a)CKa7fOXRp94EmnCDpxlh7X0M19APfR5EoZMcrD399HSlXJxCLQrPikI3NDBo(Ln9p)fGvmtFr(xVVBfRHaOP07eLiFLiKgjJBp)ZadDA281y6tqPE((FLek)AA2zx8upf4C2puVp3RzFpd6IggWhNANad1jZDJYtTylSe1sE1D0Sla0mnekz7pKHORzJWEYlg0GhUFDW1Unt5PtoEOqztJDipKdvGlpE9tSlvWOtDr6WEmnyCV(m9e8Ptocmb7p8f459yFTxWJ5AQitRd)KxmqeCFxA)3UXNOANJUnArFks0hRMbUNh)mMi5QZ3UgyTXIkx1gRpZOHzf(s0VLoh(0H9APJHpfLnTz)dYuJ807XNIZE89cSHlIntXZaTpe7MVG9miEsN0akO0yVqZqZdfnOGQxFJl6BmQUEMzXPPoT9vKJrcd5B83tESRtPbtYDUnNuU14q)JEAF5oAJ2Y5jhp4P1k8DYcdizoOx)98eKbFjD0w9BEg3v8cB73Xi10uPB3nDVH926xfA4oGKl4L3jFJLWHntT)MsHcmYuj8PtgB4GelY2vMIxqOYU6BDeoKrjvADOwfQ12kP098XM2b53h3VZq4WELSod2Vj7G93ZtgEeYy5gFzsGIQEjr99NVXjJ1YYmp9eCBjCwUXx3)gWXdaLiH0o9YVgTt8kN(3LneVBh1BuUPEniZ8R9IVMYYpQFFBess3P4iDuk)(71UjIet6liJEb998qGvV578KXT)w(jUdo9Oq(7vJ2IK1ayT11X0ZuxJuahL5fe1Kh97hkJuonR(YQs6J6)MFNpXqvvjJwhTIlVEVnW6T(HgzDv7nSNB8jWgl4cSKIQtINstJ(2DIiVB4f2uy0LhB951I1f4w3Q0I(YpIzDy7hv9vTGol4mIYJ23JNH8KDxsQJJ1UxYqDArAFNaPAZbEht5szvF)ERQ5t8CBmDYKXd4vXnQxtuTbUOUYmSS)0eLyEtXTTsRVhqC3v3TrmlclDRnwlI1qV9A0ik9cvtuqf9(993Ss980Mrdu2EzVdJ6ThFr54jquPZ)wEbe1fsRH29gxmrNeGEcC3n2ayZoU4dDKnm8EXyl9ry7tKtSVr3wqDxEsIWcFFnVoFmRnfLQ8b(DkK9AcsYVActbrylVFFcPDjK3UDBBvwkJT(U8zt09P0DzBC1(RURA4r5HVHzb(VQJmQIURna)jd7KXEYVRNSDpU5AdXk83LLlK97VlM0(XYo1Z(tRtR8iFPFV9fuZVWKAUA0Br8K22MdpFhDTZNNMFHAzvQaM83F4WE7Tb7VhAxnh1QywEKhueeOkVPjEYoLo(mGHfrAjaiVi9k8kmadVaG)uQrvHy6McMesv)QUtn664RzsuMplUBf6)a8HvfRL4OcQSpSbiskaCVcP(XGVexHS4PLuNaR7JeVJWeymLnj8wV)VaZ25CzDsIzZvZ4t81sZBBFbA5FTx(mQLEvDI6i7681O5vXG0zkERVI8HTtvaGn2Q1E10bQSD98y4KT2XbKLhpKhsdgy2nmnwBd6mjBCBKSX7ss2iRgd(F3izIi3A5lF)AkRQACuotiJXQODD((4NLyD4qg3OKXFV9FF6ZU6Q)E7NeI5MuU3s)fO)M8w6VX83KxY(7CEIJSrFP0JJnOz7p2TxBdCd5vkgdrv95kBdo9n8xd)WMDJItflzcAHlE(Umv6vEJjTbjryYQUzaQtAR1A2aRjDZX56A4)McXfsa166I4DASgvn1GC6BEhg4BEdhm2rebYPIswTqICJIIW3B7z5SivSBulK95essL2KKDFLZALHy3BJCU9vOEn2X7V7RWm4HXKPYdKdjq3Nyn94kafBqB7B7Cks4gmB0ahNdknya1CDQWHNv3qs7mUpFkLRxsImiBODwYRjIQTnwSA5W928f3UF3hZMo1gocXgmmCrl3qDHJpKHTzyK99YRukmvPta0xm1vLP6zp1FbhejqrNPG6Rymm9QQwddRX51yLHMdBp0jhy(C(PPoFiwEuyFVLbAdvfTRXd71xsB1b6y94jdLHlyN4yKrFGmNWyl1vs1RfnJlpgAezhVL7yYXJSKxZtZi2mkv4SiNd7UH5pELsn7XPtg5AxGw068EGR4L6SAt1AdhF9YUoPw8lrJscSnTSapIyTKRJO12Nv3Ty2IAAJTkK6JuPZa2qzTZe14bdsH6VdrUsFmqxAf6w4U41fuRT5kJVTORU9buO77TQfoMIkQy48yyGkpV1ymFX4JIZUdX7(gLHfmGwMqNgOYdOvqO(eW0ZF3ktlTe3inXmDeQSrhFVSZ911M(h06PqZu)HyrQ8vcXlJXYwDInIUhObu0LpEee7TB5O7hQFh0KytLCYz6eXmjz3qVSzgJnpzp3nh8FAu)OqnfW4WiFQ5zRW9Ou4Vu8iDPXQiOSM)hQJKZt9YMm6PJ1hliMRBs0mPPHsNtKaggO44OEgeRNIrXL1tXL9UMEcjQPBadS2v0)OJLXEkMuuF)C63Oj(xaEL5RPsct1cQ5Sy0UPenRU3nxSE6n3rDW5bbQ8BiDdT2VOtowQLlqhJo54bnWWYvyUhmOMknHgDGUUAaTkLYrlQypvh9Q7fvoPrLtinyS1UoRIAKA0zJOiDz8nFMH2ZbEYQtGS5DKp28G1(8hpAWUIJK4dXQHElTdP0NQKa2L7o)vV5eIIoou7(aMOaLDXPZIsULcTygW(NMDke5OnTuhmdrvB4MtxiAnWFFS6MMxnBKkB0xS(pKnHnnoOdngunxAi8Kr9jJaVk(oG4bmxXIwmaDtk5lqeFvMhgjgYZJp3X2i6YWtC4q62L(8))p]] )