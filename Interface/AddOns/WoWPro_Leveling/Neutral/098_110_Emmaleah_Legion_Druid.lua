
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3669
-- Date: 2018-05-07 20:16
-- Who: Emmaleah
-- Log: Remove deprecated quest "hitting the books"

-- URL: http://wow-pro.com/node/3669/revisions/28754/view
-- Date: 2017-08-12 21:19
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3669/revisions/28653/view
-- Date: 2017-04-23 22:52
-- Who: Ludovicus_Maior
-- Log: Missing N tag for  Malorne's blessing

-- URL: http://wow-pro.com/node/3669/revisions/28638/view
-- Date: 2017-04-07 21:58
-- Who: Emmaleah

-- URL: http://wow-pro.com/node/3669/revisions/28637/view
-- Date: 2017-04-07 21:58
-- Who: Emmaleah
-- Log: Probably one ACTIVE tag per line is sufficient :). Also, the Zen'kiki quest is in the guide at the top. (right after first go use your mission board quest), which is when he shows up, changed PRE for it because I think I had it wrong.

-- URL: http://wow-pro.com/node/3669/revisions/28636/view
-- Date: 2017-04-06 23:26
-- Who: Ludovicus_Maior
-- Log: Tweaks

-- URL: http://wow-pro.com/node/3669/revisions/28629/view
-- Date: 2017-04-04 10:48
-- Who: Emmaleah
-- Log: Finished guild campaign. Obliturum chain needs removed, but I was past that point in the guide when 7.2 was released. So... while I think it all goes away replaced with the one new quest. I am not certain.

-- URL: http://wow-pro.com/node/3669/revisions/28587/view
-- Date: 2017-03-23 19:26
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3669/revisions/28465/view
-- Date: 2017-03-16 22:25
-- Who: Ludovicus_Maior
-- Log: Added a PRE.

-- URL: http://wow-pro.com/node/3669/revisions/28224/view
-- Date: 2017-03-04 19:07
-- Who: Blanckaert
-- Log: Added: Obliterum Forge Chain, loc of Light's heart not known.

-- URL: http://wow-pro.com/node/3669/revisions/27849/view
-- Date: 2016-09-28 21:50
-- Who: Ludovicus_Maior
-- Log: Guardian edits

-- URL: http://wow-pro.com/node/3669/revisions/27827/view
-- Date: 2016-09-20 03:21
-- Who: Ludovicus_Maior
-- Log: play-through as resto

-- URL: http://wow-pro.com/node/3669/revisions/27818/view
-- Date: 2016-09-19 22:08
-- Who: Ludovicus_Maior
-- Log: EmeraldDreamway Cleanup on aisle 4!

-- URL: http://wow-pro.com/node/3669/revisions/27815/view
-- Date: 2016-09-18 16:31
-- Who: Ludovicus_Maior
-- Log: Zone changes

-- URL: http://wow-pro.com/node/3669/revisions/27809/view
-- Date: 2016-09-17 21:30
-- Who: Ludovicus_Maior
-- Log: Fixes for RESTORATION

-- URL: http://wow-pro.com/node/3669/revisions/27744/view
-- Date: 2016-09-14 09:09
-- Who: Emmaleah
-- Log: Changed C In the blink of an eye from Dalaran@Dalaran70 to Dalaran@DeadwindPass
--	Fixed Jump to Stormheim Alliance/Horde as separate lines

-- URL: http://wow-pro.com/node/3669/revisions/27654/view
-- Date: 2016-08-30 23:09
-- Who: Ludovicus_Maior
-- Log: |N| tag trouble

-- URL: http://wow-pro.com/node/3669/revisions/27653/view
-- Date: 2016-08-30 23:07
-- Who: Ludovicus_Maior
-- Log: Zone updates.

-- URL: http://wow-pro.com/node/3669/revisions/27592/view
-- Date: 2016-08-22 23:23
-- Who: Ludovicus_Maior
-- Log: 'nil' vs nil

-- URL: http://wow-pro.com/node/3669/revisions/27566/view
-- Date: 2016-08-20 00:14
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionDruid', 'Leveling', 'TheDreamgrove', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Druid Order Hall')
WoWPro:GuideLevels(guide,98, 110, 103.076)
WoWPro:GuideNextGuide(guide, Blanc_Suramar)
WoWPro:GuideClassSpecific(guide,"Druid")
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Druid")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
