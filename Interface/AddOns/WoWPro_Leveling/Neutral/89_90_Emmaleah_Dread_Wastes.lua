
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://www.wow-pro.com/License.

-- URL: http://wow-pro.com/wiki/source_code_dread_wastes_neutral
-- Date: 2018-02-23 01:31
-- Who: Ludovicus_EditBot
-- Log: Upload Grail corrections to PRE/LEAD/QO tags

-- URL: http://wow-pro.com/node/3493/revisions/28939/view
-- Date: 2018-01-17 00:34
-- Who: Ludovicus
-- Log: New Levels

-- URL: http://wow-pro.com/node/3493/revisions/28495/view
-- Date: 2017-03-17 00:31
-- Who: Ludovicus_Maior
-- Log: Added PREs

-- URL: http://wow-pro.com/node/3493/revisions/26892/view
-- Date: 2014-11-08 00:54
-- Who: Emmaleah
-- Log: fix 2 N tags in two steps and reword note for Kill Warlord Gurthan

-- URL: http://wow-pro.com/node/3493/revisions/26582/view
-- Date: 2014-07-19 17:07
-- Who: Ludovicus_Maior
-- Log: Adj mean-level

-- URL: http://wow-pro.com/node/3493/revisions/26407/view
-- Date: 2014-05-30 15:18
-- Who: Ludovicus_Maior

-- URL: http://wow-pro.com/node/3493/revisions/26387/view
-- Date: 2014-05-29 22:34
-- Who: Ludovicus_Maior
-- Log: Added mean level. End Level corrected from 90 to 89.

-- URL: http://wow-pro.com/node/3493/revisions/26307/view
-- Date: 2014-05-26 01:27
-- Who: Ludovicus_Maior
-- Log: Added guide type.

-- URL: http://wow-pro.com/node/3493/revisions/26115/view
-- Date: 2014-05-18 22:53
-- Who: Ludovicus_Maior
-- Log: Icon

-- URL: http://wow-pro.com/node/3493/revisions/26048/view
-- Date: 2014-05-17 18:59
-- Who: Ludovicus_Maior

-- URL: http://wow-pro.com/node/3493/revisions/25753/view
-- Date: 2013-09-10 23:27
-- Who: Ludovicus_Maior
-- Log: Moved T [Relics of the Swarm] and corrected C to A for [Skeer the Bloodseeker].

-- URL: http://wow-pro.com/node/3493/revisions/25697/view
-- Date: 2013-06-04 23:37
-- Who: Ludovicus_Maior
-- Log: Added redirects to the dalies at REP thresholds for special quests.
--	Conditionalized special item steps, so you don't see them once you go past them.  Added |T| tags and jiggered the flow and coords as I played through.

-- URL: http://wow-pro.com/node/3493/revisions/25688/view
-- Date: 2013-05-28 12:16
-- Who: Ludovicus_Maior
-- Log: Removed extra CC that was preventing "R Soggy's Gamble|" from autocompleting.

-- URL: http://wow-pro.com/node/3493/revisions/25613/view
-- Date: 2013-05-09 22:14
-- Who: Ludovicus_Maior
-- Log: Played through and corrected things!

-- URL: http://wow-pro.com/node/3493/revisions/25562/view
-- Date: 2013-03-23 18:24
-- Who: Ludovicus_Maior
-- Log: quest 31069's name [Bound with Shade] does not match Grail's database [Bound With Shade].

-- URL: http://wow-pro.com/node/3493/revisions/25360/view
-- Date: 2013-01-12 18:39
-- Who: Ludovicus_Maior
-- Log: Added a CS and CN tag

-- URL: http://wow-pro.com/node/3493/revisions/25304/view
-- Date: 2013-01-09 22:25
-- Who: Ludovicus_Maior
-- Log: Added CS tag

-- URL: http://wow-pro.com/node/3493/revisions/25216/view
-- Date: 2012-11-27 00:48
-- Who: Emmaleah
-- Log: -- Date: 2012-11-26
--	-- Who: Emmaleah
--	-- Log: added in lost one time items (some as comments, some as l steps with a CC tag that I hope will allow them to autocomplete.  made too many changes to list -- to allow things to autocomplete (adding QO's to K steps),add S, NC, CC tags, etc. Changed the dailies from Rank 3 and took out the A steps with a note about them instead. (since the daily they get is random)

-- URL: http://wow-pro.com/node/3493/revisions/25075/view
-- Date: 2012-09-15 21:47
-- Who: Laotseu
-- Log: Dread Wastes using an Alliance toon. I've added the zone Daily as |RANK|3| quests. I think we need a PRELVL tag to be able to filter steps that can only be done if the toon are at a certain level (the reverse of the LVL tag).

-- URL: http://wow-pro.com/node/3493/revisions/25072/view
-- Date: 2012-09-15 20:03
-- Who: Ludovicus_Maior
-- Log: Corrected URLs

-- URL: http://wow-pro.com/node/3493/revisions/25071/view
-- Date: 2012-09-15 20:02
-- Who: Ludovicus_Maior
-- Log: Initial version from Emmaleah

local guide = WoWPro:RegisterGuide('EmmDre8990', "Leveling", 'Dread Wastes', 'Emmaleah', 'Neutral')
WoWPro:GuideLevels(guide,87,89,88.9643)
WoWPro:NewGuideLevels(guide,84,90)
WoWPro:GuideNextGuide(guide, 'WayKlaxxi')
WoWPro:GuideIcon(guide,"ACH",6978)
WoWPro:GuideSteps(guide, function()
return [[
N Download Full Version for More Guides!|QID|999999|N|Looks like you are using a trial version of WoW-Pro Guides! Our Full Version is still 100% FREE, but you'll need to download it from our website at www.wow-pro.com .|
]]

end)
