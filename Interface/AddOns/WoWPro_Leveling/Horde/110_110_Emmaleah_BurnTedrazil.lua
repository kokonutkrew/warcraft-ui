
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/bfa_prepatch_horde
-- Date: 2018-08-01 10:13
-- Who: Emmaleah
-- Log: Changes per Grail and playthru on Live 7/31/18

-- URL: http://wow-pro.com/node/3770/revisions/29446/view
-- Date: 2018-07-24 18:30
-- Who: Emmaleah
-- Log: updated some comments now that the chain is live. Deleted the commented out -deprecated- quest "change in leadership"

-- URL: http://wow-pro.com/node/3770/revisions/29431/view
-- Date: 2018-07-16 19:44
-- Who: Emmaleah
-- Log: corrected syntax NewGuideLevels. Changed notes where I think break will be for each week. Will update when it happens.

-- URL: http://wow-pro.com/node/3770/revisions/29426/view
-- Date: 2018-07-15 04:46
-- Who: Emmaleah
-- Log: add sort level

-- URL: http://wow-pro.com/node/3770/revisions/29422/view
-- Date: 2018-07-14 23:01
-- Who: Emmaleah
-- Log: changes as of 7/14/18 hopefully what goes live 7/17/18

-- URL: http://wow-pro.com/node/3770/revisions/29405/view
-- Date: 2018-07-08 05:36
-- Who: Emmaleah
-- Log: Play thru as of build .26970

-- URL: http://wow-pro.com/node/3770/revisions/29404/view
-- Date: 2018-07-08 01:28
-- Who: Emmaleah
-- Log: 2nd part of burning of teldrassil

-- URL: http://wow-pro.com/node/3770/revisions/29403/view
-- Date: 2018-07-07 22:35
-- Who: STrek
-- Log: added a Turn in and a quest Accept step (see comment) + changed map coords for a R step (see comments)

-- URL: http://wow-pro.com/node/3770/revisions/29398/view
-- Date: 2018-07-05 23:04
-- Who: Ludovicus_Maior
-- Log: Add WoWPro:GuideQuestTriggers()

-- URL: http://wow-pro.com/node/3770/revisions/29395/view
-- Date: 2018-07-03 19:53
-- Who: Ludovicus_Maior
-- Log: guide name tweaks

-- URL: http://wow-pro.com/node/3770/revisions/29369/view
-- Date: 2018-07-03 02:50
-- Who: Emmaleah
-- Log: first draft from PTR. Prepatch

-- URL: http://wow-pro.com/node/3770/revisions/29324/view
-- Date: 2018-05-25 20:21
-- Who: Emmaleah
-- Log: blank stub

local guide = WoWPro:RegisterGuide('BurnTedrazilEmmaleah', 'Leveling', 'Darkshore', 'Emmaleah', 'Horde')
WoWPro:NewGuideLevels(guide,110, 110, 110.5)
WoWPro:GuideName(guide,'Battle for Azeroth Intro')
WoWPro:GuideNextGuide(guide, 'EmmHWarCampaign')
WoWPro:GuideSteps(guide, function()
WoWPro:GuideQuestTriggers(guide, 50476,53372,51443)
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
