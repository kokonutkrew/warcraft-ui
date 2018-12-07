
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/node/3670
-- Date: 2018-05-07 20:17
-- Who: Emmaleah
-- Log: Remove deprecated quest "hitting the books"

-- URL: http://wow-pro.com/node/3670/revisions/28968/view
-- Date: 2018-02-04 17:52
-- Who: Ludovicus
-- Log: [Bite of the Beast] Waypoint correction by Jeremy Billones.

-- URL: http://wow-pro.com/node/3670/revisions/28752/view
-- Date: 2017-08-12 21:08
-- Who: Ludovicus_Maior
-- Log: Obliterum

-- URL: http://wow-pro.com/node/3670/revisions/28684/view
-- Date: 2017-06-11 07:23
-- Who: Emmaleah
-- Log: ;mount quest added 6/6/17

-- URL: http://wow-pro.com/node/3670/revisions/28661/view
-- Date: 2017-04-30 00:17
-- Who: Emmaleah
-- Log: missing |M|

-- URL: http://wow-pro.com/node/3670/revisions/28660/view
-- Date: 2017-04-29 03:15
-- Who: Emmaleah
-- Log: legionfall quest chain for new follower.

-- URL: http://wow-pro.com/node/3670/revisions/28588/view
-- Date: 2017-03-23 19:27
-- Who: Ludovicus_Maior
-- Log: Spelling

-- URL: http://wow-pro.com/node/3670/revisions/28466/view
-- Date: 2017-03-16 22:26
-- Who: Ludovicus_Maior
-- Log: Added a PRE; syntax change.

-- URL: http://wow-pro.com/node/3670/revisions/28257/view
-- Date: 2017-02-27 20:19
-- Who: Emmaleah
-- Log: Changed several PRE tags from "and" (;) to "or"(+) and a few vice versa.

-- URL: http://wow-pro.com/node/3670/revisions/28225/view
-- Date: 2017-01-10 21:04
-- Who: Blanckaert
-- Log: Added: Obliterum Chain

-- URL: http://wow-pro.com/node/3670/revisions/28217/view
-- Date: 2017-01-09 02:41
-- Who: Emmaleah
-- Log: correct formatting on QID|42659|SO|4:1/2

-- URL: http://wow-pro.com/node/3670/revisions/28162/view
-- Date: 2016-12-16 11:12
-- Who: Emmaleah
-- Log: update coord for Image of Kelec

-- URL: http://wow-pro.com/node/3670/revisions/28155/view
-- Date: 2016-12-15 06:38
-- Who: Emmaleah
-- Log: finishes class campaign/opening 3rd relic slot

-- URL: http://wow-pro.com/node/3670/revisions/27857/view
-- Date: 2016-09-29 17:39
-- Who: Ludovicus_Maior
-- Log: Add missing trailing |

-- URL: http://wow-pro.com/node/3670/revisions/27766/view
-- Date: 2016-09-14 09:12
-- Who: Emmaleah
-- Log: C In The Blink of an Eye changed to Dalaran@DeadwindPass (was Dalaran@Dalaran70)

-- URL: http://wow-pro.com/node/3670/revisions/27652/view
-- Date: 2016-08-30 22:58
-- Who: Ludovicus_Maior
-- Log: BrokenShore zone correction

-- URL: http://wow-pro.com/node/3670/revisions/27651/view
-- Date: 2016-08-30 22:57
-- Who: Ludovicus_Maior
-- Log: Default zone was wrong.

-- URL: http://wow-pro.com/node/3670/revisions/27567/view
-- Date: 2016-08-30 02:28
-- Who: Emmaleah

local guide = WoWPro:RegisterGuide('EmmLegionHunter', 'Leveling', 'TrueshotLodge', 'Emmaleah', 'Neutral')
WoWPro:GuideName(guide, 'Hunter Order Hall')
WoWPro:GuideLevels(guide,98, 110, 98.0)
WoWPro:GuideNextGuide(guide, nil)
WoWPro:GuideClassSpecific(guide, 'Hunter')
WoWPro:GuideAutoSwitch(guide)
WoWPro:GuideIcon(guide,"ICON","Interface\\ICONS\\ClassIcon_Hunter")
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]
end)
