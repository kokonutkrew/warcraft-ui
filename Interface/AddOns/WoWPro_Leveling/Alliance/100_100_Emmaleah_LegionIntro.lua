
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/legion_intro_guidealliance
-- Date: 2018-02-19 23:17
-- Who: Ludovicus_Maior
-- Log: Upload Grail corrections to PRE/LEAD tags

-- URL: http://wow-pro.com/node/3662/revisions/28640/view
-- Date: 2017-04-08 16:55
-- Who: Fluclo

-- URL: http://wow-pro.com/node/3662/revisions/28639/view
-- Date: 2017-04-08 16:34
-- Who: Fluclo
-- Log: Added Non Combat tag and Chat icon where appropriate

-- URL: http://wow-pro.com/node/3662/revisions/27764/view
-- Date: 2016-09-14 08:52
-- Who: Emmaleah
-- Log: Added Jump to Demon Hunter Guide, added Icon File

-- URL: http://wow-pro.com/node/3662/revisions/27676/view
-- Date: 2016-09-01 23:17
-- Who: Ludovicus_Maior
-- Log: Dalaran is in DeadwindPass!

-- URL: http://wow-pro.com/node/3662/revisions/27642/view
-- Date: 2016-08-31 03:20
-- Who: Emmaleah
-- Log: Updated to |Z|Broken Shore|

-- URL: http://wow-pro.com/node/3662/revisions/27568/view
-- Date: 2016-08-20 00:25
-- Who: Emmaleah
-- Log: Split out the intro by factions and each class to their own guides. I am however unable to edit the title to reflect this in now alliance guide.

-- URL: http://wow-pro.com/node/3662/revisions/27540/view
-- Date: 2016-08-09 04:22
-- Who: Emmaleah
-- Log: updated zone names to match in zone table, (instead of name shown on map) - few missing. [Trueshot Lodge, The Dreamgrove, Lair of the Beast, maybe some others I missed...]

-- URL: http://wow-pro.com/node/3662/revisions/27538/view
-- Date: 2016-08-08 09:12
-- Who: Emmaleah
-- Log: Remove Duplicate |N| in Druid class hall section

-- URL: http://wow-pro.com/node/3662/revisions/27537/view
-- Date: 2016-08-08 09:06
-- Who: Emmaleah
-- Log: removed PRE tags from all but "A" type steps. A Few other consistency tweaks.

-- URL: http://wow-pro.com/node/3662/revisions/27530/view
-- Date: 2016-08-07 11:26
-- Who: Emmaleah
-- Log: edit page header, also changed guide level to 98 since WoWhead says that is the minimum level for the quests.

-- URL: http://wow-pro.com/node/3662/revisions/27529/view
-- Date: 2016-08-07 11:21
-- Who: Emmaleah
-- Log: Added Monks and Mages. Added Guide Name registration, added J (end) steps for each zone.  Add QID's to Scenario steps, Many tweaks to spelling/language and coordinates.  There are a few (25 by my count) missed or blank coordinates. Many of the map names I am not certain of as TomTom wont map them.  It is what recorder filled in, but it gives error about bad |Z|tag.

-- URL: http://wow-pro.com/node/3662/revisions/27520/view
-- Date: 2016-08-02 19:52
-- Who: Emmaleah
-- Log: getting the formatting correct (and that misspelling from 7/31 changes is shaman)

-- URL: http://wow-pro.com/node/3662/revisions/27519/view
-- Date: 2016-08-02 19:41
-- Who: Emmaleah
-- Log: fixing page address in header

-- URL: http://wow-pro.com/node/3662/revisions/27518/view
-- Date: 2016-08-02 19:40
-- Who: Emmaleah
-- Log: Lack of revision control was bugging me more and more, so moved to wiki page.
--	7/31 changes added sganab
--	8/2 changes added druid, 
--	-alphabetized classes, and specs within classes
--	-changed Scenario C steps to have QID tag instead of ACTIVE tag

local guide = WoWPro:RegisterGuide('EmmLegionIntro_A', 'Leveling', 'Dalaran@Dalaran70', 'Emmaleah', 'Alliance')
WoWPro:GuideName(guide, 'Alliance Legion Intro')
WoWPro:GuideLevels(guide,98, 98, 98.0)
WoWPro:GuideNextGuide(guide, nil)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\Achievements_Zone_BrokenShore")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
