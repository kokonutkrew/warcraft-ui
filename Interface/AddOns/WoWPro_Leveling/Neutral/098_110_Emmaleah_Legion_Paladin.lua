
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3673
-- Date: 2017-08-12 21:03
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3673/revisions/28682/view
-- Date: 2017-06-08 07:09
-- Who: Emmaleah
-- Log: Adding several missing "QID|46083|"

-- URL: http://wow-pro.com/node/3673/revisions/28681/view
-- Date: 2017-06-07 19:57
-- Who: Emmaleah
-- Log: added class mount quest.

-- URL: http://wow-pro.com/node/3673/revisions/28655/view
-- Date: 2017-04-23 23:14
-- Who: Ludovicus_Maior
-- Log: Bad Coords 66.77.53.45

-- URL: http://wow-pro.com/node/3673/revisions/28652/view
-- Date: 2017-04-23 22:50
-- Who: Ludovicus_Maior
-- Log: Correct bad coord 66.77.53.45

-- URL: http://wow-pro.com/node/3673/revisions/28646/view
-- Date: 2017-04-13 11:24
-- Who: Emmaleah
-- Log: added champions of legionfall

-- URL: http://wow-pro.com/node/3673/revisions/28591/view
-- Date: 2017-03-23 19:30
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3673/revisions/28501/view
-- Date: 2017-03-17 09:58
-- Who: Blanckaert
-- Log: copied and replaced guide, forgot to mark where I made changes.  Added Ludo's correction, minor adds of active tags, corrections of Names for P or F steps, etc.

-- URL: http://wow-pro.com/node/3673/revisions/28469/view
-- Date: 2017-03-16 22:38
-- Who: Ludovicus_Maior
-- Log: Added PRE; syntax correction.

-- URL: http://wow-pro.com/node/3673/revisions/28369/view
-- Date: 2017-03-14 20:52
-- Who: Blanckaert
-- Log: added the quests that came out on 3/14, did a REPLACE of the guide, because I forgot which lines I changed.

-- URL: http://wow-pro.com/node/3673/revisions/28265/view
-- Date: 2017-03-04 19:09
-- Who: Blanckaert
-- Log: Fix QID 44448 PRE ; + switch

-- URL: http://wow-pro.com/node/3673/revisions/28231/view
-- Date: 2017-01-10 21:19
-- Who: Blanckaert
-- Log: Added: Obliterum Quest Chain

-- URL: http://wow-pro.com/node/3673/revisions/28048/view
-- Date: 2016-11-23 08:40
-- Who: Emmaleah
-- Log: added wall of text Note to beginning.

-- URL: http://wow-pro.com/node/3673/revisions/28019/view
-- Date: 2016-11-15 10:25
-- Who: Emmaleah
-- Log: Add Awakenings (first 110 Light's Heart Quest), correct coords on C An unseen path (2nd 110 Light's Heart Quest)

-- URL: http://wow-pro.com/node/3673/revisions/27993/view
-- Date: 2016-11-06 22:20
-- Who: Ludovicus_Maior
-- Log: Z|Stormwind City| !

-- URL: http://wow-pro.com/node/3673/revisions/27983/view
-- Date: 2016-11-05 10:19
-- Who: Emmaleah
-- Log: Add The Power within.

-- URL: http://wow-pro.com/node/3673/revisions/27975/view
-- Date: 2016-11-04 05:43
-- Who: Emmaleah
-- Log: Add a missing |M| in A 43785

-- URL: http://wow-pro.com/node/3673/revisions/27971/view
-- Date: 2016-11-01 09:40
-- Who: Emmaleah
-- Log: Next step in Light's Heart (go do 80 dungeons) and finish up class hall campaign.

-- URL: http://wow-pro.com/node/3673/revisions/27948/view
-- Date: 2016-10-22 06:58
-- Who: Emmaleah
-- Log: Add next two Quests from Lights Heart (In my father's house/Destiny Unfulfilled)

-- URL: http://wow-pro.com/node/3673/revisions/27917/view
-- Date: 2016-10-15 01:02
-- Who: Emmaleah
-- Log: Improvements in the Light's Heart questline - particularly in Black Rook Hold Scenario.

-- URL: http://wow-pro.com/node/3673/revisions/27756/view
-- Date: 2016-10-04 10:08
-- Who: Emmaleah
-- Log: |NA| to the fel lexicon, corrected misspelling of Delas name. Added next few quests from Light's Heart (thru Ravencrest's Legacy.

-- URL: http://wow-pro.com/node/3673/revisions/27737/view
-- Date: 2016-09-11 06:16
-- Who: Emmaleah
-- Log: correct typo T A Falling Star s/b QID44257

-- URL: http://wow-pro.com/node/3673/revisions/27732/view
-- Date: 2016-09-10 04:33
-- Who: Emmaleah
-- Log: Order Hall guide done for all quests prior to lvl 110. Added lots of ACTIVE/PRE tags so hopefully it flows correctly.

-- URL: http://wow-pro.com/node/3673/revisions/27723/view
-- Date: 2016-09-08 07:26
-- Who: Emmaleah
-- Log: Most (all?) chapter 1 order hall campaign added.  Flow for 2nd or 3rd artifact refined.

-- URL: http://wow-pro.com/node/3673/revisions/27688/view
-- Date: 2016-09-04 13:12
-- Who: Emmaleah
-- Log: Now goes thru picking up your 2nd artifact.

-- URL: http://wow-pro.com/node/3673/revisions/27571/view
-- Date: 2016-08-30 18:22
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionPaladin', 'Leveling', '23/20', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Paladin Order Hall')
WoWPro:GuideLevels(guide,98, 110, 98.0)
WoWPro:GuideNextGuide(guide, nil)
WoWPro:GuideClassSpecific(guide, "Paladin")
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Paladin")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
