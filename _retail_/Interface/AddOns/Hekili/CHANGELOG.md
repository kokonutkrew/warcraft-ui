# Hekili

## [v11.1.0-1.0.13](https://github.com/Hekili/hekili/tree/v11.1.0-1.0.13) (2025-03-25)
[Full Changelog](https://github.com/Hekili/hekili/compare/v11.1.0-1.0.12...v11.1.0-1.0.13) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Merge pull request #4622 from syrifgit/syrif-evoker  
    Dev APL Update (Flames are now shapeable) + Cleanup  
- Merge pull request #4620 from syrifgit/Rogue-Fixes  
    Subtlety APL Update + Cleanup  
- Merge pull request #4623 from syrifgit/syrif-dk  
    FDK APL Tweak - time\_to\_die  
- Merge pull request #4624 from syrifgit/syrif-priest  
    Register Totems  
- Merge pull request #4592 from syrifgit/shaman  
    Elemental Sham: Ele Equilibrium support + Cleanup  
- registertotems spacing  
- Register Totems  
    Convert all remaining specs to the new call, fix spacing.  
- Tweaks  
- active\_enemies  
- FDK APL Tweak - time\_to\_die  
- target\_ifs  
- replace variable, fix symbols  
- Update RogueOutlaw.lua  
- Update EvokerDevastation.lua  
- Review Notes  
- Merge pull request #4619 from syrifgit/syrif-druid  
    Balance Druids don't like tanking  
- Merge pull request #4616 from syrifgit/syrif-hunter  
    Survival: Tip of the Spear Override, minor tweaks  
- Merge pull request #4615 from syrifgit/tier-sets  
    Tier sets  
- Merge pull request #4621 from syrifgit/syrif-dk  
    DPS DKs: APLs, cleanup  
- Merge pull request #4614 from johnnylam88/feat/target-dummies  
    feat: allow target dummy casts to be fake-interrupted and fake-reflected  
- Merge pull request #4612 from syrifgit/syrif-registrations  
    Don't skip 1 piece of peoples tier  
- Merge pull request #4611 from syrifgit/syrif-priest  
    Shadow APL + Empowered Filler Fix  
- Merge pull request #4604 from syrifgit/syrif-monk  
    WW Settings  
- Merge pull request #4595 from syrifgit/Patch-Notes-March-25  
    Patch Notes - March 25th  
- syntax  
- Dev APL Update + Cleanup  
    - APL Sync (yay flameshaper)  
    - Add new metatable to support SimC expression `release.dot_duration`  
    - Fix `fire_breath` dot duration formula  
    - `engulf_damage` copy to support SimC expression  
    - whitespace, trailing commas  
    - Re-register gear under 1 call  
- DPS DKs: APLs, cleanup  
    - APL Sync  
    - Whitespace, trailing commas  
    - Reregister gear  
- Subtlety APL Update + Cleanup  
    - Sync APL  
    - Whitespace, trailing commas  
    - Remove deprecated stuff (Marked for death, duplicate state expressions)  
    - Re-register gear under 1 call  
- Balance Druids don't like tanking  
    Let them bark at their skin.  
- Update HunterSurvival.lua  
- Update HunterSurvival.lua  
- Override tip of the spear stacks  
    After discussion with Thyminde, override the stack counter when wildfirebomb is in flight  
- Remove manual DH registration  
    No longer needed  
- update mt\_set\_bonuses to account for differences across specs  
- Undo import translation  
- Update Options.lua  
- Update Classes.lua  
- More review notes + APL Update  
- Merge remote-tracking branch 'upstream/thewarwithin' into shaman  
- Outlaw Pack string  
- Don't skip 1 piece of peoples tier  
- Shadow APL + Empowered Filler Fix  
- Update MonkWindwalker.lua  
- Corrections to item IDs  
    some IDs which changed since initial PTR  
- Standardize APL Expressions To Match Our Internal Code  
    All of our tier sets are registered as "tww2" but the APL writers dont love us.  
    Example:  
    Enhance: `set_bonus.tww2_4pc`  
    Marksmanship Hunter: `set_bonus.thewarwithin_season_2_4pc`  
    BM Hunter: `set_bonus.tww2>=2`  
- feat: pretend that all casts by target dummies are reflectable  
    Flag casts by target dummies as reflectable so that people can practice  
    using Spell Reflect at target dummies.  
- feat: pretend that all casts by target dummies are interruptible  
    Re-flag casts by target dummies as interruptible so that people can  
    practice using their interrupts at target dummies.  
- feat: support `state.target.is_dummy` to test for a target dummy  
- feat: add database of known target dummies  
- Merge pull request #4603 from syrifgit/Rogue-Fixes  
    Outlaw APL Update  
- Merge pull request #4601 from syrifgit/chat-cmd  
    Chat Command Update  
- settings not setting  
- WW Settings - Dynamic toggles are now opt-in  
- Outlaw APL Update  
- Update ShamanElemental.lua  
- Merge remote-tracking branch 'upstream/thewarwithin' into chat-cmd  
- Chat commands cleaned up  
- /hek fix pack works now  
- Merge pull request #4597 from syrifgit/syrif-hunter  
    Hunter APL sync  
- Merge pull request #4596 from syrifgit/syrif-dk  
    Unholy DK APL Sync  
- Merge pull request #4598 from ctroller/monk-apl  
    Windwalker Monk APL Sync  
- Update Options.lua  
- Merge remote-tracking branch 'upstream/thewarwithin' into chat-cmd  
- Windwalker Monk APL Sync  
- Marksman APL  
- Survival APL  
- Unholy DK APL  
- Patch Notes  
- Review notes  
    - Change back to `bit.band`, but check `> 0` instead of `== 1`  
    - eeSchools table  
    - `elemental_equilibrium.state` is now based on things that can be determined with `query_time`  
    - `register_damage()` suggestion accepted  
    - just use `query_time` instead of `now`  
- Elemental Equilibrium support  
- testing phase  
