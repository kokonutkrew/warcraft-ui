
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3671
-- Date: 2017-08-12 21:01
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3671/revisions/28649/view
-- Date: 2017-04-23 21:47
-- Who: Ludovicus_Maior
-- Log: Add missing ACTIVE|44479| on Ravencrest's Legacy

-- URL: http://wow-pro.com/node/3671/revisions/28617/view
-- Date: 2017-03-28 22:02
-- Who: Ludovicus_Maior
-- Log: Fix crystal ball cooords.

-- URL: http://wow-pro.com/node/3671/revisions/28589/view
-- Date: 2017-03-23 19:29
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3671/revisions/28538/view
-- Date: 2017-03-21 22:40
-- Who: Ludovicus_Maior
-- Log: Played [An Unexpected Visitor] through [Following In His Footsteps]. Changed level on [Recruiting Apprentices]

-- URL: http://wow-pro.com/node/3671/revisions/28467/view
-- Date: 2017-03-16 22:29
-- Who: Ludovicus_Maior
-- Log: Added PREs; syntax corrections.

-- URL: http://wow-pro.com/node/3671/revisions/28367/view
-- Date: 2017-03-14 20:40
-- Who: Blanckaert
-- Log: fixed a bad coord of 883. to 83., and added some quests added 3/14

-- URL: http://wow-pro.com/node/3671/revisions/28276/view
-- Date: 2017-03-05 18:32
-- Who: Ludovicus_Maior
-- Log: Coord corrections for [Rise, Champions] quests.

-- URL: http://wow-pro.com/node/3671/revisions/28259/view
-- Date: 2017-03-04 18:52
-- Who: Blanckaert
-- Log: fixed ; + switch on QID 44448

-- URL: http://wow-pro.com/node/3671/revisions/28228/view
-- Date: 2017-01-10 21:09
-- Who: Blanckaert
-- Log: Added: Obliterum Quest Chain

-- URL: http://wow-pro.com/node/3671/revisions/28118/view
-- Date: 2016-12-08 02:59
-- Who: Blanckaert
-- Log: added PRE according to Ludo's new code, plus notes about PRE told about but not put in place.

-- URL: http://wow-pro.com/node/3671/revisions/28062/view
-- Date: 2016-11-29 00:27
-- Who: Blanckaert
-- Log: changes QID# 44098 to LVL 104, per comment from Discord:cameljon

-- URL: http://wow-pro.com/node/3671/revisions/28061/view
-- Date: 2016-11-29 00:22
-- Who: Blanckaert
-- Log: added an active tag to a treasure chest that is avail during a quest/scenario

-- URL: http://wow-pro.com/node/3671/revisions/27904/view
-- Date: 2016-10-13 18:57
-- Who: tubera
-- Log: Fix a few coordinates; QOs and a typo

-- URL: http://wow-pro.com/node/3671/revisions/27878/view
-- Date: 2016-10-05 08:11
-- Who: Emmaleah
-- Log: Remove dup |N| on F Ravencrest's Legacy

-- URL: http://wow-pro.com/node/3671/revisions/27863/view
-- Date: 2016-10-02 22:31
-- Who: Emmaleah
-- Log: Blanckaert sent me more pieces to Mage line.

-- URL: http://wow-pro.com/node/3671/revisions/27851/view
-- Date: 2016-09-28 22:03
-- Who: Ludovicus_Maior
-- Log:  The Guardian's Library@MageClassShrine

-- URL: http://wow-pro.com/node/3671/revisions/27850/view
-- Date: 2016-09-28 22:00
-- Who: Ludovicus_Maior
-- Log: ARCANE playthrough.  Note updated zones, Emmaleah!

-- URL: http://wow-pro.com/node/3671/revisions/27847/view
-- Date: 2016-09-28 08:03
-- Who: Emmaleah
-- Log: correct errors found by guide checker; mostly Z tag mageclasshall s/b mageclassshrine

-- URL: http://wow-pro.com/node/3671/revisions/27677/view
-- Date: 2016-09-21 07:56
-- Who: Emmaleah
-- Log: Changed C In the Blink of an Eye|QO|2| to Dalaran@DeadwindPass

-- URL: http://wow-pro.com/node/3671/revisions/27643/view
-- Date: 2016-08-30 21:55
-- Who: Ludovicus_Maior
-- Log: 153958.0310 ~ WoWPro: Step C [Slay Balaadur.] has a bad ¦Z¦RAzsunaArtifact¦ tag.
--	153958.0311 ~ WoWPro: 124:Unknown tag ¦To Meryl Felstorm.¦ in [T The Mage Hunter¦QID¦42479¦M¦56.57,33.95¦Z¦N¦To Meryl Felstorm.¦].
--	153958.0312 ~ WoWPro: Step T [The Mage Hunter] has a bad ¦Z¦N¦ tag.

-- URL: http://wow-pro.com/node/3671/revisions/27593/view
-- Date: 2016-08-30 19:29
-- Who: Emmaleah
-- Log: 'nil' vs nil

-- URL: http://wow-pro.com/node/3671/revisions/27569/view
-- Date: 2016-08-20 00:28
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionMage', 'Leveling', 'MageClassShrine', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Mage Order Hall')
WoWPro:GuideLevels(guide,98, 110, 98.0)
WoWPro:GuideNextGuide(guide, nil)
WoWPro:GuideClassSpecific(guide, 'Mage')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Mage")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
