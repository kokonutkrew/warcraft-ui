
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/source_code_icecrown_horde
-- Date: 2018-02-22 23:10
-- Who: Ludovicus_EditBot
-- Log: Upload Grail corrections to PRE/LEAD/QO tags

-- URL: http://wow-pro.com/node/3302/revisions/28925/view
-- Date: 2018-01-17 00:06
-- Who: Ludovicus
-- Log: New Levels

-- URL: http://wow-pro.com/node/3302/revisions/28579/view
-- Date: 2017-03-23 19:11
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3302/revisions/28451/view
-- Date: 2017-03-16 16:59
-- Who: Ludovicus_Maior
-- Log: Add PREs

-- URL: http://wow-pro.com/node/3302/revisions/28219/view
-- Date: 2017-01-10 20:19
-- Who: Ludovicus_Maior
-- Log: Removed spurious '1s' 

-- URL: http://wow-pro.com/node/3302/revisions/28152/view
-- Date: 2016-12-14 15:17
-- Who: tubera
-- Log:  N tags;Guide should be closer to today's standard again.

-- URL: http://wow-pro.com/node/3302/revisions/28151/view
-- Date: 2016-12-14 05:59
-- Who: tubera
-- Log: Almost done.

-- URL: http://wow-pro.com/node/3302/revisions/28088/view
-- Date: 2016-12-02 23:16
-- Who: tubera
-- Log:  overall cleanup.

-- URL: http://wow-pro.com/node/3302/revisions/28056/view
-- Date: 2016-11-27 14:57
-- Who: tubera
-- Log: More fixes (part 2). Stopped at The Flesh Giant Champion. (It was bugged, but apparently not always is, so I'll continue another time)

-- URL: http://wow-pro.com/node/3302/revisions/28033/view
-- Date: 2016-11-21 00:40
-- Who: tubera
-- Log: Add M/N/S/US; Fix QO; Part 1 until "? Blackwatch"

-- URL: http://wow-pro.com/node/3302/revisions/27785/view
-- Date: 2016-09-14 18:34
-- Who: Ludovicus_Maior
-- Log: Dalaran City@Dalaran

-- URL: http://wow-pro.com/node/3302/revisions/27168/view
-- Date: 2015-03-09 17:48
-- Who: Ludovicus_Maior
-- Log: Got rid of empty tags and empty |N|'s

-- URL: http://wow-pro.com/node/3302/revisions/26910/view
-- Date: 2014-11-08 05:10
-- Who: Emmaleah
-- Log: Re did Cult of the Damned and Volatility to put the L steps on separate lines. This guide is missing a log of waypoints.

-- URL: http://wow-pro.com/node/3302/revisions/26436/view
-- Date: 2014-06-02 14:51
-- Who: Ludovicus_Maior
-- Log: Set Levels

-- URL: http://wow-pro.com/node/3302/revisions/26292/view
-- Date: 2014-05-26 01:11
-- Who: Ludovicus_Maior
-- Log: Added guide type.

-- URL: http://wow-pro.com/node/3302/revisions/26164/view
-- Date: 2014-05-20 19:55
-- Who: Ludovicus_Maior
-- Log: Icon

-- URL: http://wow-pro.com/node/3302/revisions/26002/view
-- Date: 2014-05-16 20:31
-- Who: Ludovicus_Maior

-- URL: http://wow-pro.com/node/3302/revisions/25571/view
-- Date: 2013-03-23 18:53
-- Who: Ludovicus_Maior
-- Log: Many quest name corrections, a 2 QID corrections.

-- URL: http://wow-pro.com/node/3302/revisions/24347/view
-- Date: 2011-04-29 17:06
-- Who: Ludovicus_Maior
-- Log: Line 103 for step C Bad coord , Line 315 for step T has 3 M coords, Line 412 for step C Bad coord 1 at a ti, Line 519 for step C Bad coord  .....

-- URL: http://wow-pro.com/node/3302/revisions/24209/view
-- Date: 2011-04-05 23:13
-- Who: Ludovicus_Maior

-- URL: http://wow-pro.com/node/3302/revisions/23496/view
-- Date: 2010-12-03 22:43
-- Who: Jiyambi

-- URL: http://wow-pro.com/node/3302/revisions/23495/view
-- Date: 2010-12-03 22:37
-- Who: Jiyambi

local guide = WoWPro:RegisterGuide("ScoIce8080", "Leveling", "Icecrown", "Scoot", "Horde")
WoWPro:GuideLevels(guide,77,77,77)
WoWPro:NewGuideLevels(guide,67,80)
WoWPro:GuideNextGuide(guide, "AriVasH8082")
WoWPro:GuideIcon(guide,"ACH",4928)
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
