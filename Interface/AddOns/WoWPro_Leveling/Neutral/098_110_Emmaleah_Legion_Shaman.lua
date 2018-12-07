
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3676
-- Date: 2017-03-23 19:33
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3676/revisions/28472/view
-- Date: 2017-03-16 22:42
-- Who: Ludovicus_Maior
-- Log: Syntax correction.

-- URL: http://wow-pro.com/node/3676/revisions/28267/view
-- Date: 2017-03-04 19:10
-- Who: Blanckaert
-- Log: Fix QID 44448 PRE ; + switch

-- URL: http://wow-pro.com/node/3676/revisions/28234/view
-- Date: 2017-01-10 21:24
-- Who: Blanckaert
-- Log: Added: Obliterum Quest Chain

-- URL: http://wow-pro.com/node/3676/revisions/27769/view
-- Date: 2016-09-14 09:31
-- Who: Emmaleah
-- Log: Fixed Jump to Stormheim for Alliance/Horde
--	C In the Blink of an Eye|QO|2 changed to |Z|Dalaran@DeadwindPass|

-- URL: http://wow-pro.com/node/3676/revisions/27649/view
-- Date: 2016-08-30 22:33
-- Who: Ludovicus_Maior
-- Log: Zone tweaks

-- URL: http://wow-pro.com/node/3676/revisions/27574/view
-- Date: 2016-08-20 00:41
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionShaman', 'Leveling', 'MaelstromShaman', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Shaman Order Hall')
WoWPro:GuideLevels(guide,98, 110, 98.0)
WoWPro:GuideNextGuide(guide, 'EmmAzsuna')
WoWPro:GuideClassSpecific(guide, 'Shaman')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Shaman")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
