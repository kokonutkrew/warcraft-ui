
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3776
-- Date: 2018-08-01 09:34
-- Who: Emmaleah
-- Log: corrections per Grail and play thru on live 7/31/18

-- URL: http://wow-pro.com/node/3776/revisions/29447/view
-- Date: 2018-07-24 20:24
-- Who: Emmaleah
-- Log: play thru on live 7/24/18. Minor note changes and fixed a few typos.

-- URL: http://wow-pro.com/node/3776/revisions/29435/view
-- Date: 2018-07-16 23:16
-- Who: Ludovicus_Maior
-- Log: sync headers

-- URL: http://wow-pro.com/node/3776/revisions/29433/view
-- Date: 2018-07-16 20:09
-- Who: Emmaleah
-- Log: fix NewGuideLevel. Added guide name function to registration. other minor wording changes.

-- URL: http://wow-pro.com/node/3776/revisions/29425/view
-- Date: 2018-07-15 04:44
-- Who: Emmaleah
-- Log: change sort level

-- URL: http://wow-pro.com/node/3776/revisions/29414/view
-- Date: 2018-07-08 21:22
-- Who: STrek
-- Log: Corrections made with a test run

-- URL: http://wow-pro.com/node/3776/revisions/29412/view
-- Date: 2018-07-08 15:11
-- Who: STrek
-- Log: added battle for Lordaeron by Emmaleah (from War Campaing)

-- URL: http://wow-pro.com/node/3776/revisions/29411/view
-- Date: 2018-07-08 13:05
-- Who: STrek
-- Log: changed zone to Azeroth and added zone tag were it was left out because of default zone

-- URL: http://wow-pro.com/node/3776/revisions/29410/view
-- Date: 2018-07-08 12:49
-- Who: STrek
-- Log: explanation note added at beginning to explain story order

-- URL: http://wow-pro.com/node/3776/revisions/29409/view
-- Date: 2018-07-08 12:43
-- Who: STrek
-- Log: changed name and title guide to better reflect this as the pre patch guide. Will also move in battle for lorderonn in this guide from War Campaign guide by Emmaleah

-- URL: http://wow-pro.com/node/3776/revisions/29402/view
-- Date: 2018-07-07 18:47
-- Who: STrek
-- Log: added part 2 from PTR

-- URL: http://wow-pro.com/node/3776/revisions/29401/view
-- Date: 2018-07-07 16:17
-- Who: STrek
-- Log: corrected a few errors that came up in a test run

-- URL: http://wow-pro.com/node/3776/revisions/29400/view
-- Date: 2018-07-07 13:10
-- Who: STrek
-- Log: added PRE - Non Combat - Sticky tags and some clean up

-- URL: http://wow-pro.com/node/3776/revisions/29399/view
-- Date: 2018-07-05 23:05
-- Who: Ludovicus_Maior
-- Log: Add WoWPro:GuideQuestTriggers()

-- URL: http://wow-pro.com/node/3776/revisions/29394/view
-- Date: 2018-07-03 19:36
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3776/revisions/29390/view
-- Date: 2018-07-03 02:53
-- Who: Emmaleah
-- Log: updated next guide

-- URL: http://wow-pro.com/node/3776/revisions/29367/view
-- Date: 2018-06-24 18:45
-- Who: STrek
-- Log: added rest of this guide

-- URL: http://wow-pro.com/node/3776/revisions/29366/view
-- Date: 2018-06-24 15:49
-- Who: STrek
-- Log: was wrong input format and few other minor changes

-- URL: http://wow-pro.com/node/3776/revisions/29365/view
-- Date: 2018-06-24 15:39
-- Who: STrek
-- Log: start pre patch guide

local guide = WoWPro:RegisterGuide('BurnTedrazilSTrek', 'Leveling', 'Azeroth', 'STrek', 'Alliance')
WoWPro:NewGuideLevels(guide,110, 110, 110.5)
WoWPro:GuideName(guide,'Battle for Azeroth Intro')
WoWPro:GuideNextGuide(guide, 'EmmAWarCampaign')
WoWPro:GuideQuestTriggers(guide, 52058)
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
