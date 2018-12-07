
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/alliance_war_campaign
-- Date: 2018-07-15 04:43
-- Who: Emmaleah
-- Log: change sort level

-- URL: http://wow-pro.com/node/3760/revisions/29423/view
-- Date: 2018-07-14 23:05
-- Who: Emmaleah
-- Log: change zone name from ChamberOfHeart to Chamber Of Heart

-- URL: http://wow-pro.com/node/3760/revisions/29413/view
-- Date: 2018-07-08 15:16
-- Who: STrek
-- Log: comment battle for Lordaeron out (it has been copied to Pre-patch guide)

-- URL: http://wow-pro.com/node/3760/revisions/29384/view
-- Date: 2018-07-03 02:51
-- Who: Emmaleah
-- Log: changed guide registration to reflect this is the War Campaign Guide.

-- URL: http://wow-pro.com/node/3760/revisions/29359/view
-- Date: 2018-06-18 22:29
-- Who: Emmaleah
-- Log: More war campaign quests added. NOT FINISHED

-- URL: http://wow-pro.com/node/3760/revisions/29349/view
-- Date: 2018-06-07 18:14
-- Who: Emmaleah
-- Log: Fix J steps now that the names of the other guides are known.

-- URL: http://wow-pro.com/node/3760/revisions/29347/view
-- Date: 2018-06-06 17:41
-- Who: Emmaleah
-- Log: Updated for changes in June 1 build (8.0.1.26766)

-- URL: http://wow-pro.com/node/3760/revisions/29301/view
-- Date: 2018-05-13 02:18
-- Who: Emmaleah
-- Log: changed guide icon, changed zone name to Kul Tiras, added coords for infusing the heart, changed next guide to TBD

-- URL: http://wow-pro.com/node/3760/revisions/29292/view
-- Date: 2018-05-11 08:37
-- Who: STrek
-- Log: added quest "the war campaign" and The Warcache at the end. Quest log says 'before you leave.." so best do this before we go to our first zone of choose.

-- URL: http://wow-pro.com/node/3760/revisions/29287/view
-- Date: 2018-05-10 18:45
-- Who: STrek
-- Log: added following line:
--	C Infusing the Heart|QID|52428|Z|ChamberOfHeart|QO|1|N|Azerite wounds absorbed|
--	
--	Seems they added a step more to compelte the quest "Infusing the heart

-- URL: http://wow-pro.com/node/3760/revisions/29276/view
-- Date: 2018-05-09 22:35
-- Who: Ludovicus_Maior
-- Log: Fix [The Dark Lady] coordinate error.

-- URL: http://wow-pro.com/node/3760/revisions/29259/view
-- Date: 2018-05-06 22:13
-- Who: Emmaleah
-- Log: To correct syntax and the node #

-- URL: http://wow-pro.com/node/3760/revisions/29258/view
-- Date: 2018-05-06 21:52
-- Who: Emmaleah
-- Log: Draft 1 - Opening Scenario/quests for Alliance.  The zone numbers will need replaced with names when they are available.

local guide = WoWPro:RegisterGuide('EmmAWarCampaign', 'Leveling', 'Kul Tiras', 'Rajitazi', 'Alliance')
WoWPro:GuideLevels(guide,110, 110, 112)
WoWPro:GuideQuestTriggers(guide, 53370,51795)
WoWPro:GuideNextGuide(guide, 'TBD')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ACH",12593)
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
