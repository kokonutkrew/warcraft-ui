
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/source_code_townlong_steppes_neutral
-- Date: 2018-02-23 01:37
-- Who: Ludovicus_EditBot
-- Log: Upload Grail corrections to PRE/LEAD/QO tags

-- URL: http://wow-pro.com/node/3492/revisions/28938/view
-- Date: 2018-01-17 00:34
-- Who: Ludovicus
-- Log: New Levels

-- URL: http://wow-pro.com/node/3492/revisions/28496/view
-- Date: 2017-03-17 00:32
-- Who: Ludovicus_Maior
-- Log: Added PREs

-- URL: http://wow-pro.com/node/3492/revisions/26754/view
-- Date: 2014-10-23 07:32
-- Who: Emmaleah
-- Log: Change N Abadoned Crate of Goods to an A step and added to the Note.

-- URL: http://wow-pro.com/node/3492/revisions/26433/view
-- Date: 2014-06-02 14:03
-- Who: Ludovicus_Maior
-- Log: Reset levels

-- URL: http://wow-pro.com/node/3492/revisions/26396/view
-- Date: 2014-05-30 12:07
-- Who: Ludovicus_Maior
-- Log: Level adjustment

-- URL: http://wow-pro.com/node/3492/revisions/26360/view
-- Date: 2014-05-27 21:02
-- Who: Ludovicus_Maior
-- Log: Start Level corrected from 89 to 0.

-- URL: http://wow-pro.com/node/3492/revisions/26306/view
-- Date: 2014-05-26 01:26
-- Who: Ludovicus_Maior
-- Log: Added guide type.

-- URL: http://wow-pro.com/node/3492/revisions/26114/view
-- Date: 2014-05-18 22:50
-- Who: Ludovicus_Maior
-- Log: Icon

-- URL: http://wow-pro.com/node/3492/revisions/26047/view
-- Date: 2014-05-17 18:58
-- Who: Ludovicus_Maior

-- URL: http://wow-pro.com/node/3492/revisions/25689/view
-- Date: 2013-05-28 12:19
-- Who: Ludovicus_Maior
-- Log: Corrected coords, quids, and some extra CC's that were preventing R step completion.

-- URL: http://wow-pro.com/node/3492/revisions/25612/view
-- Date: 2013-05-09 22:11
-- Who: Ludovicus_Maior
-- Log: Corrected T|Kill Voress'thalik|

-- URL: http://wow-pro.com/node/3492/revisions/25519/view
-- Date: 2013-02-06 20:15
-- Who: Ludovicus_Maior
-- Log: Coord fixes through  Rensai's Watchpost.

-- URL: http://wow-pro.com/node/3492/revisions/25406/view
-- Date: 2013-01-13 01:26
-- Who: Ludovicus_Maior
-- Log: Added a CS tag

-- URL: http://wow-pro.com/node/3492/revisions/25201/view
-- Date: 2012-11-11 03:04
-- Who: Ludovicus_Maior
-- Log: Hatred's Vice Cooord Corrections.

-- URL: http://wow-pro.com/node/3492/revisions/25194/view
-- Date: 2012-11-10 01:59
-- Who: JamesL85
-- Log: C step for The Taking of Dusklight had a 4 in front of the QID.  Also changed the T step coords.

-- URL: http://wow-pro.com/node/3492/revisions/25193/view
-- Date: 2012-11-10 01:33
-- Who: JamesL85
-- Log: Changed the R step for Dusklight Bridge.  They were set to the coords for the previous A step.

-- URL: http://wow-pro.com/node/3492/revisions/25151/view
-- Date: 2012-10-22 20:10
-- Who: Ludovicus_Maior
-- Log: Merged https://github.com/Emmaleah/WoW-Pro-Guides/blob/master/WoWPro_Leveling/Neutral/89_90_Emmaleah_Townlong_Steppes.lua on 10/22/2012 14:09 EST.

-- URL: http://wow-pro.com/node/3492/revisions/25086/view
-- Date: 2012-09-25 00:51
-- Who: Ludovicus_Maior

-- URL: http://wow-pro.com/node/3492/revisions/25081/view
-- Date: 2012-09-24 22:46
-- Who: Ludovicus_Maior
-- Log: Merged https://github.com/Emmaleah/WoW-Pro-Guides/blob/b143e2b68171017e6df091ec22315a977a43e4c6/WoWPro_Leveling/Neutral/89_90_Emmaleah_Townlong_Steppes.lua

-- URL: http://wow-pro.com/node/3492/revisions/25070/view
-- Date: 2012-09-15 20:00
-- Who: Ludovicus_Maior
-- Log: Applied https://github.com/Laotseu/WoW-Pro-Guides/blob/master/WoWPro_Leveling/Neutral/89_90_Emmaleah_TownlongSteppes.lua

-- URL: http://wow-pro.com/node/3492/revisions/25069/view
-- Date: 2012-09-15 19:57
-- Who: Ludovicus_Maior
-- Log: Corrected URLs.

-- URL: http://wow-pro.com/node/3492/revisions/25068/view
-- Date: 2012-09-15 19:56
-- Who: Ludovicus_Maior
-- Log: Original from Emmaleah

local guide = WoWPro:RegisterGuide('EmmTow8990', "Leveling", 'Townlong Steppes', 'Emmaleah', 'Neutral')
WoWPro:GuideLevels(guide,88,90,88.0139)
WoWPro:NewGuideLevels(guide,83,90)
WoWPro:GuideNextGuide(guide, 'EmmDre8990|EmmDre8990')
WoWPro:GuideIcon(guide,"ACH",6977)
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
