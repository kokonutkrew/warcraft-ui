
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/source_code_krasarang_wilds_horde
-- Date: 2018-03-06 01:24
-- Who: Ludovicus_EditBot
-- Log: Level strip

-- URL: http://wow-pro.com/node/3489/revisions/29118/view
-- Date: 2018-02-22 23:33
-- Who: Ludovicus_EditBot
-- Log: Upload Grail corrections to PRE/LEAD/QO tags

-- URL: http://wow-pro.com/node/3489/revisions/28941/view
-- Date: 2018-01-17 00:35
-- Who: Ludovicus
-- Log: New Levels

-- URL: http://wow-pro.com/node/3489/revisions/28455/view
-- Date: 2017-03-16 17:05
-- Who: Ludovicus_Maior
-- Log: Added PREs

-- URL: http://wow-pro.com/node/3489/revisions/26435/view
-- Date: 2014-06-02 14:11
-- Who: Ludovicus_Maior
-- Log: Set Levels

-- URL: http://wow-pro.com/node/3489/revisions/26304/view
-- Date: 2014-05-26 01:24
-- Who: Ludovicus_Maior
-- Log: Added guide type.

-- URL: http://wow-pro.com/node/3489/revisions/26112/view
-- Date: 2014-05-18 22:45
-- Who: Ludovicus_Maior
-- Log: Icon

-- URL: http://wow-pro.com/node/3489/revisions/25998/view
-- Date: 2014-05-16 20:26
-- Who: Ludovicus_Maior
-- Log: Register Update

-- URL: http://wow-pro.com/node/3489/revisions/25823/view
-- Date: 2013-11-27 21:00
-- Who: Ludovicus_Maior
-- Log: Added missing CN tag

-- URL: http://wow-pro.com/node/3489/revisions/25819/view
-- Date: 2013-11-27 17:22
-- Who: Ludovicus_Maior
-- Log: Added the missing end) and got rid of the extra Change Log section.

-- URL: http://wow-pro.com/node/3489/revisions/25812/view
-- Date: 2013-11-21 03:42
-- Who: Emmaleah
-- Log: removed coord from F Zhu's watch.  We don't particularly care where you are flying from afterall.

-- URL: http://wow-pro.com/node/3489/revisions/25808/view
-- Date: 2013-11-21 00:10
-- Who: Emmaleah
-- Log: I lost my internet connection, so most of my edits vanished,  and the last save only had the last few.  Hopefully I redid them all correctly.

-- URL: http://wow-pro.com/node/3489/revisions/25807/view
-- Date: 2013-11-20 23:21
-- Who: Emmaleah
-- Log: Added |CHAT| tags, corrected a few typos, clarified some instructions (|N|)

-- URL: http://wow-pro.com/node/3489/revisions/25762/view
-- Date: 2013-09-17 14:18
-- Who: Fluclo
-- Log: Fix QID on initial step, and added Level step at beginning of guide.

-- URL: http://wow-pro.com/node/3489/revisions/25732/view
-- Date: 2013-06-24 18:47
-- Who: Twists
-- Log: Update coordinates

-- URL: http://wow-pro.com/node/3489/revisions/25731/view
-- Date: 2013-06-24 18:46
-- Who: Twists
-- Log: Fixed { in mapping and || for a QID

-- URL: http://wow-pro.com/node/3489/revisions/25709/view
-- Date: 2013-06-18 00:40
-- Who: Ludovicus_Maior
-- Log: Bad X coordinate S, 1/1 in guide EmmKra8788, line [C Materia Medica].
--	Bad X coordinate US, 1/1 in guide EmmKra8788, line [C Materia Medica].

-- URL: http://wow-pro.com/node/3489/revisions/25465/view
-- Date: 2013-01-13 19:10
-- Who: Ludovicus_Maior
-- Log: Added C* tags

-- URL: http://wow-pro.com/node/3489/revisions/25313/view
-- Date: 2013-01-09 22:41
-- Who: Ludovicus_Maior
-- Log: Added CS and CN tag

-- URL: http://wow-pro.com/node/3489/revisions/25199/view
-- Date: 2012-11-11 00:44
-- Who: Emmaleah
-- Log: missed a missing |

-- URL: http://wow-pro.com/node/3489/revisions/25198/view
-- Date: 2012-11-11 00:33
-- Who: Emmaleah
-- Log: Emmaleah 10 Nov 2012 - Added "one time" treasure items.

-- URL: http://wow-pro.com/node/3489/revisions/25123/view
-- Date: 2012-10-07 23:14
-- Who: Ludovicus_Maior
-- Log: Merged https://github.com/Emmaleah/WoW-Pro-Guides/blob/master/WoWPro_Leveling/Horde/87_88_Emmaleah_KrasarangWilds.lua and tweaks by Ludo

-- URL: http://wow-pro.com/node/3489/revisions/25056/view
-- Date: 2012-08-28 19:16
-- Who: Ludovicus_Maior
-- Log: Correct URLS

-- URL: http://wow-pro.com/node/3489/revisions/25055/view
-- Date: 2012-08-28 19:14
-- Who: Ludovicus_Maior
-- Log: Submitted by Emmaleah on Sat, 2012-08-18 15:07. 

local guide = WoWPro:RegisterGuide('EmmKra8788', "Leveling", 'Krasarang Wilds', 'Emmaleah', 'Horde')
WoWPro:GuideLevels(guide,86,87,86.0091)
WoWPro:NewGuideLevels(guide,81,90)
WoWPro:GuideNextGuide(guide, 'EmmKun8889')
WoWPro:GuideIcon(guide,"ACH",6975)
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
