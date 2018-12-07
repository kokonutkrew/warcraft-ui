
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/horde_war_campaign
-- Date: 2018-07-10 10:35
-- Who: Emmaleah
-- Log: war campaign - first 2 footholds. still need Tiragarde. Took all the stuff that was here and moved to Intro guide for prepatch.

-- URL: http://wow-pro.com/node/3761/revisions/29389/view
-- Date: 2018-07-03 02:49
-- Who: Emmaleah
-- Log: Oops, missed editting title

-- URL: http://wow-pro.com/node/3761/revisions/29385/view
-- Date: 2018-07-03 02:48
-- Who: Emmaleah
-- Log: changed guide registration to be war campaign

-- URL: http://wow-pro.com/node/3761/revisions/29302/view
-- Date: 2018-05-13 05:51
-- Who: Emmaleah
-- Log: Many note updates, add more guide registration icon, and autoswitch, fixed up J steps to reflect correct guide. Note that coords in Orgrimmar need updated as they changed with the last patch.

-- URL: http://wow-pro.com/node/3761/revisions/29300/view
-- Date: 2018-05-12 17:55
-- Who: Ludovicus_Maior
-- Log: Use a real nil in GuideNextGuide()

-- URL: http://wow-pro.com/node/3761/revisions/29274/view
-- Date: 2018-05-08 21:54
-- Who: Emmaleah
-- Log: First Draft.

local guide = WoWPro:RegisterGuide('EmmHWarCampaign', 'Leveling', 'Zandalar', 'Emmaleah', 'Horde')
WoWPro:GuideLevels(guide,110, 110)
WoWPro:GuideNextGuide(guide, nil)
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ACH",12555)
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
