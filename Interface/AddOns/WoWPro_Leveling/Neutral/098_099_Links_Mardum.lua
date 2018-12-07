
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/demon_hunter_starter_source_code
-- Date: 2017-03-17 01:23
-- Who: Ludovicus_Maior
-- Log: Added missing MardumtheShatteredAbyss

-- URL: http://wow-pro.com/node/3656/revisions/28475/view
-- Date: 2017-03-16 22:51
-- Who: Ludovicus_Maior
-- Log: Added PREs; syntax corrections.

-- URL: http://wow-pro.com/node/3656/revisions/28463/view
-- Date: 2017-03-16 22:21
-- Who: Ludovicus_Maior
-- Log: Added PREs.

-- URL: http://wow-pro.com/node/3656/revisions/27763/view
-- Date: 2016-09-14 02:36
-- Who: Ludovicus_Maior
-- Log: Deleted duplicate CH

-- URL: http://wow-pro.com/node/3656/revisions/27752/view
-- Date: 2016-09-13 18:26
-- Who: Ludovicus_Maior
-- Log: Add proper name to LinksDHArtCH100100

-- URL: http://wow-pro.com/node/3656/revisions/27547/view
-- Date: 2016-08-11 11:23
-- Who: Emmaleah

-- URL: http://wow-pro.com/node/3656/revisions/27546/view
-- Date: 2016-08-11 11:20
-- Who: Emmaleah
-- Log: fix typo "clikcking" corrected Izal's gender, added ClassSpecific Registration to the 3rd (Orgrimmar) guide

-- URL: http://wow-pro.com/node/3656/revisions/27545/view
-- Date: 2016-08-10 06:54
-- Who: Emmaleah
-- Log: Changes only made to the Mardum (1st) guide. Added Item Tags, added NC tags, deleted NC tags so the CHAT tags would show. 

-- URL: http://wow-pro.com/node/3656/revisions/27543/view
-- Date: 2016-08-10 04:34
-- Who: Ludovicus_Maior
-- Log: Added Blue items and tweaked for Live instead of Beta.
--	Added support for Vengance DH.

-- URL: http://wow-pro.com/node/3656/revisions/27480/view
-- Date: 2016-07-30 16:02
-- Who: Ludovicus_Maior
-- Log: Zone tweaks

-- URL: http://wow-pro.com/node/3656/revisions/27459/view
-- Date: 2016-07-01 02:22
-- Who: Ludovicus_Maior
-- Log: Just the usual tweaks.

-- URL: http://wow-pro.com/node/3656/revisions/27458/view
-- Date: 2016-06-30 23:25
-- Who: Ludovicus_Maior
-- Log: Add class restriction and icons.

-- URL: http://wow-pro.com/node/3656/revisions/27456/view
-- Date: 2016-06-28 05:32
-- Who: Linkslegend5
-- Log: Finished the DH rough draft, with the Artifact and Class Hall, it ends with picking a zone to start. Only has the DPS spec Artifact, but the recorder didn't get those steps (due to a scenario issue).

-- URL: http://wow-pro.com/node/3656/revisions/27455/view
-- Date: 2016-06-28 02:02
-- Who: Ludovicus_Maior
-- Log: Tweaks

-- URL: http://wow-pro.com/node/3656/revisions/27454/view
-- Date: 2016-06-28 00:37
-- Who: Linkslegend5
-- Log: Added Vault of the Warden, the next step after Mardum.

-- URL: http://wow-pro.com/node/3656/revisions/27453/view
-- Date: 2016-06-28 00:34
-- Who: Linkslegend5
-- Log: Wow-Pro Recording of Mardum, the Shattered Abyss.

-- URL: http://wow-pro.com/node/3656/revisions/27449/view
-- Date: 2016-06-28 00:05
-- Who: Ludovicus_Maior
-- Log: Initial blank

local guide = WoWPro:RegisterGuide('LinksMardum098099', 'Leveling', 'MardumtheShatteredAbyss', 'Linkslegend5', 'Neutral')
WoWPro:GuideLevels(guide,98, 99, 98.0)
WoWPro:GuideNextGuide(guide, 'LinksVault099100')
WoWPro:GuideName(guide, "Demon Hunter - Mardum")
WoWPro:GuideClassSpecific(guide,"DemonHunter")
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_DemonHunter")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
