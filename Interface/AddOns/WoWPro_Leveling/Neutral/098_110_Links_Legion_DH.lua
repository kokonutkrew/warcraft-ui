
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/demon_hunter_artifact_and_class_hall
-- Date: 2018-07-21 02:00
-- Who: Chromaflo
-- Log: Making changes to the Quest Jump-Capable to work again with the waypoints. Added the scenario The Invasion of Niskara. Changing some of the |Z| Tags to the new Map_ID System of Blizzard. And some minor changes of a few coordinates.

-- URL: http://wow-pro.com/node/3685/revisions/28806/view
-- Date: 2017-10-16 11:23
-- Who: Ludovicus_Maior
-- Log: play through on 108 DH.

-- URL: http://wow-pro.com/node/3685/revisions/28805/view
-- Date: 2017-10-15 20:16
-- Who: Ludovicus_Maior
-- Log: Added a draft of the level 110 order hall quests.  No scenario info yet.

-- URL: http://wow-pro.com/node/3685/revisions/28753/view
-- Date: 2017-08-12 21:10
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3685/revisions/28597/view
-- Date: 2017-03-23 19:36
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3685/revisions/28539/view
-- Date: 2017-03-21 22:42
-- Who: Ludovicus_Maior
-- Log: Fixes to [Confrontation at the Black Temple]

-- URL: http://wow-pro.com/node/3685/revisions/28530/view
-- Date: 2017-03-17 22:41
-- Who: Ludovicus_Maior
-- Log: Prep for [Working With the Wardens]

-- URL: http://wow-pro.com/node/3685/revisions/28529/view
-- Date: 2017-03-17 18:56
-- Who: Ludovicus_Maior
-- Log: Fill in [Leader of the Illidari] questline.

-- URL: http://wow-pro.com/node/3685/revisions/28476/view
-- Date: 2017-03-16 22:52
-- Who: Ludovicus_Maior
-- Log: Added PREs.

-- URL: http://wow-pro.com/node/3685/revisions/28222/view
-- Date: 2017-03-04 18:50
-- Who: Blanckaert
-- Log: add the Obliterum forge chain, and the part about Light's heart, need DH coords for turnin.

-- URL: http://wow-pro.com/node/3685/revisions/28046/view
-- Date: 2016-11-23 04:25
-- Who: Blanckaert
-- Log: condensed to just one C step, per Emma suggestion. QID 42731

-- URL: http://wow-pro.com/node/3685/revisions/28035/view
-- Date: 2016-11-21 15:40
-- Who: Blanckaert
-- Log: Adjusted end lvl to 109, added Hall quests to end of guide -- INCOMPLETE, need some testing with Kayn chosen (I chose Altruis)

-- URL: http://wow-pro.com/node/3685/revisions/27853/view
-- Date: 2016-09-28 22:15
-- Who: Ludovicus_Maior
-- Log: More Altruis quids.

-- URL: http://wow-pro.com/node/3685/revisions/27765/view
-- Date: 2016-09-14 09:05
-- Who: Emmaleah
-- Log: changed 2 instances of Dalaran to Dalaran@Dalaran70 (C/T 41119)
--	Added class Icon registration
--	Fixed Jump to Stormheim/Alliance/Horde

-- URL: http://wow-pro.com/node/3685/revisions/27761/view
-- Date: 2016-09-14 02:35
-- Who: Ludovicus_Maior

-- URL: http://wow-pro.com/node/3685/revisions/27760/view
-- Date: 2016-09-14 02:35
-- Who: Ludovicus_Maior
-- Log: Transplant

local guide = WoWPro:RegisterGuide('LinksDHArtCH100100', 'Leveling', 'DemonHunterOrderHallTerrain', 'Linkslegend5', 'Neutral')
WoWPro:GuideLevels(guide,100, 109)
WoWPro:GuideName(guide, 'Demon Hunter Order Hall')
WoWPro:GuideClassSpecific(guide,"DemonHunter")
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_DemonHunter")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
