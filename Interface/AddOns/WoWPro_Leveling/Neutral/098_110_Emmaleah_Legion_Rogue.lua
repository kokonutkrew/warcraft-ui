
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3675
-- Date: 2018-05-07 20:25
-- Who: Emmaleah
-- Log: Remove deprecated quest "hitting the books"

-- URL: http://wow-pro.com/node/3675/revisions/28749/view
-- Date: 2017-08-12 21:05
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3675/revisions/28706/view
-- Date: 2017-06-13 22:53
-- Who: Ludovicus_Maior
-- Log:  Darnassus

-- URL: http://wow-pro.com/node/3675/revisions/28687/view
-- Date: 2017-06-12 21:27
-- Who: Emmaleah
-- Log: Added rogue mount quest. It is different for Horde vs Alliance. scouted horde locations, but did not test as my horde rogue is still lvl 100.

-- URL: http://wow-pro.com/node/3675/revisions/28663/view
-- Date: 2017-05-02 05:57
-- Who: Emmaleah
-- Log: Added Legionfall Champion quest chain

-- URL: http://wow-pro.com/node/3675/revisions/28609/view
-- Date: 2017-03-26 01:15
-- Who: Emmaleah
-- Log: missed ";" after 43501 ... 7 times... :(

-- URL: http://wow-pro.com/node/3675/revisions/28593/view
-- Date: 2017-03-23 19:33
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3675/revisions/28535/view
-- Date: 2017-03-21 19:20
-- Who: Emmaleah
-- Log: Guide finished! added all the missing order hall and rogue campaign quests.  (Other than the "power within" chain, which is post campaign.)

-- URL: http://wow-pro.com/node/3675/revisions/28471/view
-- Date: 2017-03-16 22:41
-- Who: Ludovicus_Maior
-- Log: Added PREs; syntax correction.

-- URL: http://wow-pro.com/node/3675/revisions/28266/view
-- Date: 2017-03-04 19:10
-- Who: Blanckaert
-- Log: Fix QID 44448 PRE ; + switch

-- URL: http://wow-pro.com/node/3675/revisions/28233/view
-- Date: 2017-01-10 21:23
-- Who: Blanckaert
-- Log: Added: Obliterum Quest Chain

-- URL: http://wow-pro.com/node/3675/revisions/27768/view
-- Date: 2016-09-14 09:28
-- Who: Emmaleah
-- Log: C In the Blink of an Eye|QO|2| changed to |Z|Dalaran@DeadwindPass
--	fixed Jump to Stormheim for alliance/horde

-- URL: http://wow-pro.com/node/3675/revisions/27641/view
-- Date: 2016-08-30 21:46
-- Who: Ludovicus_Maior
-- Log: Change default zone to The Hall of Shadows@Dalaran70

-- URL: http://wow-pro.com/node/3675/revisions/27573/view
-- Date: 2016-08-20 00:38
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionRogue', 'Leveling', 'The Hall of Shadows@Dalaran70', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Rogue Order Hall')
WoWPro:GuideLevels(guide,98, 110, 103.745)
WoWPro:GuideNextGuide(guide, 'Blanc_Suramar')
WoWPro:GuideClassSpecific(guide, 'Rogue')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Rogue")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
