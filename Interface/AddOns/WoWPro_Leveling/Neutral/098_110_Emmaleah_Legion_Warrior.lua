
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3677
-- Date: 2018-05-07 20:28
-- Who: Emmaleah
-- Log: Remove deprecated quest "hitting the books"

-- URL: http://wow-pro.com/node/3677/revisions/28751/view
-- Date: 2017-08-12 21:07
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3677/revisions/28596/view
-- Date: 2017-03-23 19:35
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3677/revisions/28474/view
-- Date: 2017-03-16 22:50
-- Who: Ludovicus_Maior
-- Log: Added a PRE; syntax corrections.

-- URL: http://wow-pro.com/node/3677/revisions/28368/view
-- Date: 2017-03-14 20:42
-- Who: Blanckaert
-- Log: added a few quests from 3/14

-- URL: http://wow-pro.com/node/3677/revisions/28262/view
-- Date: 2017-03-04 18:58
-- Who: Blanckaert
-- Log: fix the QID 44448 using ; instead of +, some other quests added for warrior...  (Cheated and cut and pasted whole guide again)

-- URL: http://wow-pro.com/node/3677/revisions/28250/view
-- Date: 2017-01-31 01:06
-- Who: Blanckaert
-- Log: I dont know what I edited etc.. so I just replaced whole guide. 

-- URL: http://wow-pro.com/node/3677/revisions/28236/view
-- Date: 2017-01-10 21:27
-- Who: Blanckaert
-- Log: Added: Obliterum Quests, adjusted location for quests: 44337, 43888, 44255

-- URL: http://wow-pro.com/node/3677/revisions/28185/view
-- Date: 2016-12-28 23:52
-- Who: Blanckaert
-- Log: added some Warrior quests, QIDs 42110, 42202, 42204, 43585, 43975

-- URL: http://wow-pro.com/node/3677/revisions/28160/view
-- Date: 2016-12-16 08:59
-- Who: Emmaleah
-- Log: added Cameljon's changes and the Light's heart questlines (but did not update coords that are inside the order hall yet - just a note that they need updated)

-- URL: http://wow-pro.com/node/3677/revisions/28065/view
-- Date: 2016-11-29 06:11
-- Who: Blanckaert
-- Log: copied light heart from DK file, tweeked to Warrior.

-- URL: http://wow-pro.com/node/3677/revisions/27916/view
-- Date: 2016-10-15 00:20
-- Who: Emmaleah
-- Log: more quests - thanks B.

-- URL: http://wow-pro.com/node/3677/revisions/27913/view
-- Date: 2016-10-14 03:24
-- Who: Emmaleah
-- Log: lvl 101 quests (partial) per Blanckaert 

-- URL: http://wow-pro.com/node/3677/revisions/27795/view
-- Date: 2016-09-15 03:15
-- Who: Emmaleah
-- Log: changes noted. per Blankaert. (except I used name instead of #.

-- URL: http://wow-pro.com/node/3677/revisions/27646/view
-- Date: 2016-09-14 09:37
-- Who: Emmaleah
-- Log: Updated Jump to Stormheim for alliance/horde
--	Updated C In the Blink of an Eye|QO|2| to |Z|Dalaran@DeadwindPass|

-- URL: http://wow-pro.com/node/3677/revisions/27575/view
-- Date: 2016-08-20 00:52
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionWarrior', 'Leveling', 'ValhallasWarriorOrderHome', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Warrior Order Hall')
WoWPro:GuideLevels(guide,98, 110, 98.0)
WoWPro:GuideNextGuide(guide, 'EmmAzsuna')
WoWPro:GuideClassSpecific(guide, 'Warrior')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Warrior")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
