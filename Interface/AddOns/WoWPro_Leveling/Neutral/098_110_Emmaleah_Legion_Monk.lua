
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3672
-- Date: 2018-05-07 20:19
-- Who: Emmaleah
-- Log: Remove deprecated quest "hitting the books"

-- URL: http://wow-pro.com/node/3672/revisions/28746/view
-- Date: 2017-08-12 21:02
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3672/revisions/28664/view
-- Date: 2017-05-05 19:35
-- Who: Emmaleah
-- Log: removed dup z tag in C Chug it

-- URL: http://wow-pro.com/node/3672/revisions/28658/view
-- Date: 2017-04-29 03:12
-- Who: Emmaleah
-- Log: added questchain for extra follower

-- URL: http://wow-pro.com/node/3672/revisions/28590/view
-- Date: 2017-03-23 19:30
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3672/revisions/28468/view
-- Date: 2017-03-16 22:33
-- Who: Ludovicus_Maior
-- Log: Syntax corrections.

-- URL: http://wow-pro.com/node/3672/revisions/28273/view
-- Date: 2017-03-05 03:21
-- Who: Emmaleah
-- Log: Added the rest of the monk campaign. Guide complete until 7.2

-- URL: http://wow-pro.com/node/3672/revisions/28264/view
-- Date: 2017-03-04 19:08
-- Who: Blanckaert
-- Log: Fix QID 44448 PRE ; + switch

-- URL: http://wow-pro.com/node/3672/revisions/28245/view
-- Date: 2017-01-24 03:19
-- Who: Emmaleah
-- Log: missed a return  just before F Valdidall

-- URL: http://wow-pro.com/node/3672/revisions/28244/view
-- Date: 2017-01-23 20:23
-- Who: Emmaleah
-- Log: completed all order hall progression steps pre 110. (per wowhead).  Will update further when my monk reaches 110. Also added in the known 110 quests that are for all classes.  Some locations/npcs may be incorrect at this time for those quests.

-- URL: http://wow-pro.com/node/3672/revisions/28229/view
-- Date: 2017-01-10 21:11
-- Who: Blanckaert
-- Log: Added: Obliterum Quest Chain

-- URL: http://wow-pro.com/node/3672/revisions/27727/view
-- Date: 2016-09-09 22:15
-- Who: Emmaleah
-- Log: Correct QO order and T coordinates for 42187

-- URL: http://wow-pro.com/node/3672/revisions/27709/view
-- Date: 2016-09-07 03:43
-- Who: Emmaleah
-- Log: delete dup |QO|2 - C Into The Heavens|QID|40570|QO|2|

-- URL: http://wow-pro.com/node/3672/revisions/27679/view
-- Date: 2016-09-02 20:58
-- Who: Emmaleah
-- Log: Tweeks to zone names - can not get arrow to show in kun-lai. Interestingly, the blizzard minimap arrow doesn't show there either. - went thru the WW monk artifact on live, minor changes. Added J to Alliance/Horde Stormheim

-- URL: http://wow-pro.com/node/3672/revisions/27570/view
-- Date: 2016-08-20 00:30
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionMonk', 'Leveling', 'MonkOrderHallTheWanderingIsle', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Monk Order Hall')
WoWPro:GuideLevels(guide,98, 110, 98.0)
WoWPro:GuideNextGuide(guide, 'Blanc_Suramar')
WoWPro:GuideClassSpecific(guide, 'Monk')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Monk")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
