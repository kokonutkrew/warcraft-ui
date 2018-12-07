
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3679
-- Date: 2018-07-29 06:39
-- Who: Emmaleah
-- Log: Warlock Guide final thru getting class mount on Broken Shore.  Does not deal with artifact appearance quests and such.

-- URL: http://wow-pro.com/node/3679/revisions/29420/view
-- Date: 2018-07-12 20:27
-- Who: Emmaleah
-- Log: lots of corrections to pre lvl 110 part of guide. Added A falling star quest line (how was that missing?!)

-- URL: http://wow-pro.com/node/3679/revisions/29268/view
-- Date: 2018-05-07 20:26
-- Who: Emmaleah
-- Log: Remove deprecated quest "hitting the books"

-- URL: http://wow-pro.com/node/3679/revisions/28803/view
-- Date: 2017-10-07 19:58
-- Who: Ludovicus_Maior
-- Log: Tag fix for ACTIVE/QID

-- URL: http://wow-pro.com/node/3679/revisions/28750/view
-- Date: 2017-08-12 21:07
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3679/revisions/28654/view
-- Date: 2017-04-23 23:13
-- Who: Ludovicus_Maior
-- Log: Dup QO in P Orgrimmar¦QID¦44480¦

-- URL: http://wow-pro.com/node/3679/revisions/28631/view
-- Date: 2017-04-05 02:57
-- Who: Blanckaert
-- Log: finished playing through quests.. minor adjustments, added or corrected coords.

-- URL: http://wow-pro.com/node/3679/revisions/28626/view
-- Date: 2017-04-03 03:54
-- Who: Blanckaert
-- Log: Replaced Warlock Guide, some of class hall quest just typed from Wowhead, not played through, or forgotten to record when I played through.  PREs, Quest names might be wrong, Coords are guesses.

-- URL: http://wow-pro.com/node/3679/revisions/28595/view
-- Date: 2017-03-23 19:34
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3679/revisions/28473/view
-- Date: 2017-03-16 22:44
-- Who: Ludovicus_Maior
-- Log: Syntax corrections.

-- URL: http://wow-pro.com/node/3679/revisions/28235/view
-- Date: 2017-01-10 21:24
-- Who: Blanckaert
-- Log: Added: Obliterum Quest Chain

-- URL: http://wow-pro.com/node/3679/revisions/27854/view
-- Date: 2016-09-28 22:18
-- Who: Ludovicus_Maior
-- Log: Playthrough on AFFLICTION and DEMONOLOGY

-- URL: http://wow-pro.com/node/3679/revisions/27770/view
-- Date: 2016-09-14 09:34
-- Who: Emmaleah
-- Log: Update Jump to Stormheim for Alliance/Horde
--	Update C In the Blink of an Eye|QO|2 to Dalaran@DeadwindPass

-- URL: http://wow-pro.com/node/3679/revisions/27662/view
-- Date: 2016-08-31 03:18
-- Who: Emmaleah
-- Log: Per Tubera's post. PRE Tag on A The New Blood, and N tag correction for U Return to Dalaran|QID|40712|
--	As to scenario steps, I think its still a bit rocky.  I know I made some mistakes in formatting (which have hopefully all been fixed now) because I had never made a guide that used scenario steps before. 

-- URL: http://wow-pro.com/node/3679/revisions/27645/view
-- Date: 2016-08-30 22:15
-- Who: Ludovicus_Maior
-- Log: Corrected Zones

-- URL: http://wow-pro.com/node/3679/revisions/27577/view
-- Date: 2016-08-20 00:56
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionWarlock', 'Leveling', 'WarlockClassShrine', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Warlock Order Hall')
WoWPro:GuideLevels(guide,98, 110, 103.702)
WoWPro:GuideNextGuide(guide, 'EmmAzsuna')
WoWPro:GuideClassSpecific(guide, 'Warlock')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Warlock")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
