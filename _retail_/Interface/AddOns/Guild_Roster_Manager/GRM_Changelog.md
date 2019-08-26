**VERSION 8.2R1.61 DATE: June 26th, 2019**

*Unanticipated bug that only affects some people on the 8.2 update changes of patch R.160 release)


**VERSION 8.2R1.60 DATE: June 26th, 2019**

*UPDATED FOR 8.2 COMPATIBILITY!!! Sorry for the delay. Forgot 8.2 was around the corner.*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Cleaned up the in-game backups a bit... they were just too bloated to offer 4 points with 2 auto. The amount of memory being used on just backups was huge, especially since it has limited usability and is not really a true file backup, just a restore point for your guild.

* QoL2: Backups have been cleaned up and are now a hybrid scrollframe

* QoL3: The positioning of the text has been shifted down ever so slightly on the old /guildroster to enable mouseover buttons

*Note - there are a few things I am working on that I did not have time to get to as getting 8.2 compatibility out there was priority, but I know the tooltip scaling is an issue when opening the audit window, and I actually am rectifying this, but don't expect me to have that til probably this weekend as I am rebuilding the Audi window differently and it is a bit of work. This issue does not resolve the problem @Nightdragon#2207 is facing either, which has proven to be far more complex of an issue than I initially realized. This is an issue that won't affect most people, but with his 17 guilds, 1000 members each, and 30,000+ log lines on each of the guilds, it is a massive amount of data and kind of an extreme edge case I am trying to resolve as Lua is reaching some internal limits on how the saved data is stored and how Blizz reimports it (funn enough, Lua 5.2 resolves this automatically, but it is not what Blizz uses, so I kind of have to come up with a "hacky" solution. Eventually...*



**VERSION 8.1.5R1.59 DATE: June 19th, 2019**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Italian translation is once again nearly 100% completed, I just added a few extra lines, but it is amazing how much work is done here. Thank you again @Nihal6#8125 (discord) for all your hard work on this Italian transaltion!

* QoL2: Cleaned up the tooltips and blocked actions for more obvious controls on global settings for the join date formatting and adding.

* QoL3: Changing the guildInfo g5^ global settings should now inform you without needing to reload.

* QoL4: Player can disable the GRM mouseover window on the old roster with a checkbox. I will likely include the same feature for the community frame soon, but for now the old roster mouseover can be disabled.

![Mouseover Frame Can Be enabled or disabled on old roster](https://i.imgur.com/NtmKkao.jpg)

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Players should now be able to load the addon without issue. Before it was errneously creating a macro but would crash out if at 18 cap on personal.

* BUG2: The CTRL-CLICK on the event log and the audit window should now properly bring up the player window or the search

* BUG3: Some other misc. things I won't bother reporting since I am out of time and trying to get this update out before I am busy the remainder of the day lol

* GRM keybind Macro will now be properly placed in the general, not the character specific


**VERSION 8.1.5R1.58 DATE: June 17th, 2019**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Player Roster mouseover window now works again on the old Roster accessible with /guildroster or /groster

* QoL2: I have implemented an automatic hot-key macro to access the old roster. Just hit **CTRL-J** on your keyboard to bring it up. Of note, that "J" corresponds to the hotkey to bring up the communities interface, so if you have it set to a different key it will be "CTRL-YOURKEY"

* QoL3: The interface button to click on the bottom right of the default interface to bring up the community frame, you can now hold the CTRL key when clicking it to bring up the old guild roster interface instead.

* QoL4: The new BFA tooltip on the communities roster is now visible on the old guild roster as well.

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed a bug in relation to loading the guild recuitment addon frames .


**VERSION 8.1.5R1.57 DATE: June 14th, 2019**

*Nothing really **new**, just a cleanup of the previous release with a few QoL improvements. Of note, the main audit window is going to be revamped next, but I wanted to get this release out for the bugs*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Improved Scrolling controls on both the core log as well as the advanced Join date audit tool

*	- Holding CTRL while scrolling = 3x speed

*	- Holding CTRL-SHFT while scrolling = 12x speed (this is the core new thing, but many didn't seem to know you can do the others)

*	- Holding SHFT will jump you instantly to top or bottom

* QoL2: Tooltip added to the core log over them, rather than wrapping the lines, you now have a tooltip to show the whole thing. **This tooltip can be disabled by using the log tools button on bottom left of log.**

* QoL3: Click to drag anywhere is now less janky on the advanced Join Date audit tool, the event tab, and the banned tab

* QoL4: You need to CTRL-Click the users names on the main audit window now, rather than click. I found myself accidentally opening the player windows when trying to drag the window. No more!


**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Log search should work properly again!

* BUG2: Main log should now scroll properly in all cases, as well as maintain proper sorting and positioning whilst filtering.

* BUG3: Lua error resolved when trying to mousewheel scroll on the Join Date audit tool and the main log's windows when they did not have a full page of items to display.

* BUG4: Main log should no longer go crazy and rebuild copies of all fontstrings if you change the language or font size in the options.

* BUG5: New Changes/Old Log brackets when logging in to changes should be consistent now.

* BUG6: The Log tool to clear lines within a selected range is once again working properly, and even more clean in its implementation, I might add.

* BUG7: Fixed a Lua error where the scan for changes was not working properly on new players - this was reported by many people on discord.

* BUG8: Addon should no longer merge 2 join dates erroneously to designated note. Oops!

* BUG9: Namechange should properly state their former name now, not their class. Another Oops!

* BUG10: Fixed a bug where string name coloring was not properly getting removed on the calendar adds for bdays or anniversaries. This also caused some calendar checks to thinkn it had not been added.

* BUG11: Recruitment window should now trigger their frames properly


**VERSION 8.1.5R1.56 DATE: June 7th, 2019**

*Long time between patches. Lots involved with this one behind the scenes. RL was a bit busy as well. Enjoy!*

***NEW FEATURES***

**Advanced Join Date Audit Tool**

![JD Audit Tool](https://i.imgur.com/nn1ZyXN.jpg)

**Note:** This particular feature developed somewhat spontaneously and was not entirely planned. I had noticed some issues due to incorrect date reporting to the player notes with the auto-tagging, and the resulting sync info being inconsistent. Let me give you an example. If a player joins the guild while you are not online, the event is logged server side in the Blizzard built-in guild event log. This log only contains the last 100 events. Well, in a large guild the log reach > 100 events in less than a day. Thus, the addon has no idea the **REAL** date the player say, joined the guild. As such, the way the addon compensates for this is it sets the join date as the day you logged on. However, on the back end, the addon does not store that date for sync purposes because it is what I would call untrustworthy sync data. What can happen is maybe you had another officer that did get the accurate information and they were logged on and determined the true join date, and thus when you next sync with them, you sync the proper date. However, previously, the addon was still adding the join date to the default not location you had chosen (typically officer). Thus, if the player who has the accurate sync information logged the event, but did not have the setting enabled to add the join date note, but you did, you now added the incorrect date to the note, whilst you ended up syncing the proper date. You now have mismatched dates, often by only a single day.

The goal of this tool was to be able to easily guild-wide rectify this. However, I built it in a way to go over it more carefully, with the ability to modify a single player, multiple players with the Shift-key selection, or the entire guild. I ended up adding some additional features as well that can be useful tools for people that wish to import their join dates from the notes as well. Of note, THIS WAS NOT SIMPLE work. Just this tool was > 2000 lines of code, not that the number really matters, just as a representation of the effort put into such a niche tool makes little sense beyond my own amusement. Believe me, building in parsing compatibility for 18 different note formats was a bit of a pain, but really, I tried to build this with the easiest and simplest user experience that could be had. I also got distracted and used this as my template to build my first custom hybrid scroll frame. You'll notice how smooth it is in scrolling

**JD AUDIT TOOL FEATURES**

* Automatically mass fix GRM save dates by using parsed notes. It will fully scan the public, officer, and custom notes and you have the option to either import those dates to GRM, or the other way around, export the GRM saved dates and fix the notes.

* This maintenance on the join dates can be done guild wide or it can be done with a custom selection of names. Just click the names you wish to modify and it will highlight them. Shift-click to select all names between 2. I recommend being careful with this and doing a sample selection first before feeling more comfortable with the tool.

* Cleanup all notes so that the join date is ONLY in the default settings location. This tool will inform you not only about date mismatches, but if you have the join date listed in multiple notes and it will give you the ability to purge the date from the other notes automatically whilst setting/keeping the join date only in the proper default note location

* Ability to mass export all the join dates to the default note as well.

* Ability to import all join dates from the note into GRM. This supports 18 different note formats (including all 15 optional formats in GRM), as well as the Joined or Rejoined headers.

* Be aware, to save on the complexity of the addon and the bloat, this will only successfully parse the dates if they are listed at the beginning of a note. Exameple "Joined: 05 Aug '18" or "05 Aug '18" will be detected, but "John's friend - "05 Aug '18" will not be parsed properly. While this one example is easy to support, the fact that I decided to build parsing support for, so far, 18 different date formats was a lot of tedious work and to then scan for the start point has so much variability to all of them that I decided to save myself the hassle and just make it so the addon will only detect dates if at beginning of note. This can easily be modified by juse changing the position of your note.

* If there is a date format you wish me to include support for I am willing to consider it. I have considered possibly supporting "custom" headers, like "Joined" or "Rejoined" and "CustomTag" but I did not build that yet.

* Tooltip helpers are added for this tool to help you find entries in the log, bring up their player window and so on.

* The link to it is found on on the audit page, at the bottom of the join date column.

*Final Note on the Advanced JD Audit Tool - Use with caution. It mass modifies player notes. That cannot be undone since they store server side.*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: HYBRID SCROLL FRAMES!!! As a lot of people know, this is the superior way to truly do scroll frames. I suppose I never had imagined scrolling frames getting so absurdly large, not thinking long term, but when 
@Xulu#1278 (discord) got on my case about them and when @Nightdragon#2207 (discord) mentioned how he has like 30,000 logged event entries in a single guild, of a 17 guild community, and with Xulu expressing his passion for it I finally relented. I basically didn't want to bother with it for various reasons, but one is I wanted to build a template system to make it more reusable. I ended up doing just that with the new JD Audit tool and I was able to reuse the template, for the most part, for the core log. This is not entirely true as the core log is a bit more complex due to the variety of different string heigts due to wrapping and multi-lines so I had to modify it slightly.

* QOL2: MORE SLASH COMMANDS! They are now expanded to support all GRM window tabs. Example */grm users* or */grm events* or /grm options (or opt) are all supported and will bring them up with a simple slash command. If it sounds right, it probably works. Please feel free to recommend additional slash commands. They are quite simple to implement and I am a believer of the command line.

* QoL3: Addon no longer auto-adds join dates if it is not found in the event log, to improve accuracy.

* QoL4: The addon will now attempt to add the join date to the note properly, if enabled, even if something is already there. Before it just ignored adding the note. Now, it will ensure it's not already there, then merge the existing note with the date, and if it fits, it will join them and add it.

* QoL5: NEW GLOBAL SETTING! Players can now add a +/- sign to the end of g5^X to force global use of the "Joined:" and "Rejoined:" headers. Example "g5^1+" means that the default join date will be added to the officer note like "Joined: 06 Jun '19" or "g5^1-" will just be "06 Jun '19" - forcing consistency among all officers.

* QoL6: Lots of code cleanup on the backend in some places I hadn't touched since the first days of coding lol.

* QoL7: GRM Core window is now draggable no matter where you click, on all tabs (it didn't work on the log and the audit window, you had to click near top bar previously)

* QoL8: A more clear notification is given if the player's own rank changes, thus triggering a sync check, if permissions open up to sync with someone else new data. The triggered sync should only occur when the addon user's own rank has moved up. The addon will inform you *why* it is triggering this. Before it just did it.

* QoL9: The "(main)" on the side alt grouping details window is now properly *below* the main, not above, keeping position consistent with the alt listings.

* QoL10: Player should no longer erroneously get "(NG)" tag on the "(player) has logged in" system message in chat after shortly logging in. This would occur due to the GRM database not being fully loaded yet, but the System message listener already being initialized. Now it waits to modify the incoming system messages in the chat window with the tags until GRM is fully loaded and ready in the background.

* QoL11: The FrameStrate of the core GRM frame is now set to MEDIUM, to reflect most frames in WOW so you can click other flames and have them come to the front without it permanently being set on top. 

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed an issue that seems to affect a small % of the community on previous large update preventing them from fully updating properly.

* BUG2: Fixed an issue with tooltip scaling carrying over to non-addon tooltips. If GRM didn't auto-show on logon, and you selected the roster, typed /GRM the tooltip size would shrink small. Fixed!

* BUG3: Fixed an issue that could cause sync to fail (line 2313 error a few had reported).

* BUG4: Fixed an issue that could cause some reporting to never occor to the log in regars to a player rejoining the guild

* BUG5: Fixed an issue where class coloring was not being implemented properly on the promotion announcement entries of someone who just joined the guild and were promoted since before your last login.

* BUG6: Fixed some other minor misc. bugs, both cosmetic and on the back end I won't bore evryone with as they were likely not too noticeable.

* BUG7: Fixed an issue that could cause a clubID error if it never loaded properly when someone joins the guild.

* BUG8: Fixed an issue where leap year dates on non-leap years (Feb 29th) would be instead listed at Feb 1st, when they should have been listed at March 1st.


**VERSION 8.1.5R1.55 DATE: April 19th, 2019**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Added player tooltip mouseover compatibility for any other addons that utilize the guild community frame player tooltip (like Raider.io) - universal compatibility for all.

* QoL2: /grm audit and /grm ban slashcommands that bring up their respective windows is now available.

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed an issue where some people's database might not load properly initially.

* BUG2: Fixed an issue that could cause some sync data to be lost or never sent

* BUG3: Misc. tweaks here and there...


**VERSION 8.1.5R1.54 DATE: April 18th, 2019**

*Minor patch update that could prevent some player's addon from loading the database properly and updating. This would only affect few people, but needed to be addressed as I didn't see the error until a report*


**VERSION 8.1.5R1.53 DATE: April 17th, 2019**

*Minor efficiency update on the database that seemed to stall on some people's PCs. Should complete a little less resource intensive now*


**VERSION 8.1.5R1.52 DATE: April 17th, 2019**

* QoL1: Adding some infrastructur for adding in custom easter eggs I wish to add

* BUG1: Fixed an issue that could cause sync to error out if at the tail end of a sync when triggered again

* BUG2: Some misc. issues with the new sync process have been corrected

* BUG3: Fixed an issue that led to some repeated join date spreading, and also cleaned up the repeats.


**VERSION 8.1.5R1.51 DATE: April 12th, 2019**

* Fixed 2 misc. bugs related to previous patch that were quickly reported :D

**VERSION 8.1.5R1.50 DATE: April 12th, 2019**

*NOTE: One of the reasons I was hesitant to go down the rabbit hole that was this patch is I just knew it was going to take a lot of effort to put out, so I avoided focusing on some things to focus on others. It was something I had always wanted to revisit, and while the updates are not fully 100% implemented in all aspects, and while there is some work still to do, we are at a significantly improved position. The delay with this patch is because I got lured into finally getting it over with, got seduced by how much easier the implementation seemed at first, then once I was past the point of no return found about 50 tentacles of the code all over the pladce that I had to deal with to get it working consistently and flawlessly.*

***NEW FEATURES***

***SYNC SYSTEM OVERHAUL***

* Sync system has been significantly updated and in some places, completely rewritten. The entire pre-check algorithm has been rebuilt and some of the sharing methods are far more efficient now. This will become obvious very quickly. Thanks @Xulu#1278 for some suggestions here.

* Theoretically, this rewrite should be the final nail in the coffin to the occasional disconnect bug that has plagued some people inconsistently.

* The addon will now report *what* information was sync'd. I think I will expand this further, but it is better than "x items updated"

* The addon now states if a sync is even necessary or not and no longer syncs without it being necessary. Be aware, while it may state "No Updates" on your end, the person you sync'd with received some info from you, or else no sync would have occurred.

* Of note, if alt data needs to be shared, while still significantly improved, this is a bit more tedious an implementation and you may find that the other areas that sync ligning fast, in a matter of 2 or 3 seconds, maye find the alt system taking just a tiny bit longer. This will be rectified further probably in the next update.

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: "g1^" global setting is returning in modified form! Use it to control which timestamp format is universally used in the guild. Add "g1^1" to the guildInfo, anywhere, to force all players. Example g1^1 = default. or g1^15 = the last selection in the timestamp format dropdown window.

* QoL2: Sort the ban list by clicking on the headers

* QoL3: Sort the alt details window (the shift-click alt window) by clicking the column headers as well

* QoL4: Addon settings are now stored automatically and sync'd after every manually change of the settings rather than only on closing the window, which could create problems if you modify settings and logoff without closing GRM window which used to be the trigger.

* QoL5: The Add Ban window no longer auto-hides if you swap windows to look at say, the Log.

* QoL6: The ban list should now re-check the GUID returns more consistently when looking at it to determine if the player has left the server

* QoL7: Patch code is in the process of being re-written, with initial foundation set and this major patch implementing the new tools. This is to prevent the code-bloat occurring on the patches now that many fixes have come and gone.

* QoL8: Rebuilt some aspects of the database to be more consistently alligned between the 2 clients.

**--------------**
**BUGS AND BUGS!**
**--------------**

*Note - Many many bug fixes, so I will just report them in no particular of what was a bigger issue.

* Bug1: Fixed an issue that seems to have popped up in 8.1.5 in relation to some calendar bug reporting on some addons.

* Bug2: Fixed an issue that allowed players using special characters to type more than the 75 character limit in the ban note.

* Bug3: Fixed an issue with the ban reasons that allowed player to overshoot the char count limit and slimmed the reasons that did.

* Bug4: Fixed an issue where a returning player's join/promo dates could overwrite other's in a sync, which is not noticeable for players that login frequently, but let's say a player takes 6 months off the game, comes back, another guildie has rejoined since then. This could occur for people who had not logged on in a very long time with GRM outdated data.

* Bug5: Birthdates should now properly sync in all cases. Found an issue here that could prevent it from occurring. This includes when you remove a birthdate, for conformity.

* Bug6: Cleans up error related to mass copying of birthdate across the guild. This cleans that error up.

* Bug7: New toons and alts of yours that join the guild should no longer write-over addon options settings with defaults and should properly sync to the already existing settings now.

* Bug8: Fixed an issue where sync would re-trigger 1 more time than as necessary on a new build.

* Bug9: Fixed major issue with syncing alts properly that was also not obvious but could end up in some alts taking multiple syncs to get tagged properly rather than on first time.

* Bug10: Fixed an isse that could occur with players returning to the guild that possibly could cause the addon to crash due to a previous bug when they left so it never recorded the date they left. The addon cannot recover that info, but it will now at least say "Date Left: Unknown" in its place, when before it would Lua error out and crash. This may have gone unnoticed as it would not break the addon completely so you'd only see it with Lua error reporting tools.

* Bug11: Fixed an issue that could prevent custom notes from sync properly on the first attempt, thus often in a subsquent sync you will see it say it was updated, but it didn't happen initially. It should now be consistent.

* Bug12: Fixed a major database flaw that could be restored using old old backups. Surprised this one was never found but I found it as I was creating some integrity tests of the database. It would only potentially affect you if you had a very old back as my update forgot to account for the backup data.

* Bug13: Fixed an issue if clicking the minimap early and it has not initialized the database fully yet.

* Bug14: Made it so the addon sync process would not trigger until the exact moment the database updates have been fully processes and the players that left and joining players have all been analyzed and updated. This is only necessary for mega guilds that kick hundreds at a time.

* Bug15: Fixed double copying of dates to the custom note that could occur if multiple officers online at same time

* Bug16: Fixed several other misc. Lua errors that I don't think are necessary to report here.


**VERSION 8.1.5R1.46 DATE: March 16th, 2019**

* BUG1: One more fix for the night! Sync Users should now display properly with people with older versions of the addon.


**VERSION 8.1.5R1.45 DATE: March 16th, 2019**

*I felt a bit off my groove for a couple of weeks. Things feel a bit better now. This focused almost solely on the reported issues when I was gone, as well as some other misc. things that came as a result of those distractions.*


**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Italian localization is back to 100%!!! Thank you @Nihal6#8125

* QoL2: Guild namechange log entry now properly is timestamped in the log

* QoL3: Tooltips for alts should no longer show whilst moused over the date selection dropdown menus.


**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed a bug that could occur if still processing people that are no longer in the guild whilst sync triggers

* BUG2: Fixed an issue that could cause bans to not sync properly due to a nil value that should have been an empty string. Source eliminated, cleanup fixed. This bug likely affected a lot of people that utilized the ban list frequently

* BUG3: Fixed a slight UI bug when syncing some live join date changes.

* BUG4: Fixed some issues with regards to alt lists having doubles do to some super weird edge case circumstance that was kind of fun to diagnose and solve

* BUG5: Fixed an issue that resolves a copy bug when a player server transfers and the server shows a temporary double copy of them on occasion. Seems rare, but reported 2 times now happening.

* BUG6: Added potential fix during the sync process where when it starts syncing ban list (maybe half way through the process), a player may disconnect due to breaking throttling limits. If this doesn't resolve it then it is some other part of sync process causing it and I will need to hands on it with people.


**VERSION 8.1.0R1.44 DATE: February 22nd, 2019**

*BUG1: The log is NOW properly fixed... I had everything working but commented out the fix for just this one issue. Oops!


**VERSION 8.1.0R1.43 DATE: February 22nd, 2019**

***NOTE*** *Pending Features not quite yet ready* - I wanted to mention them as there has been a lot of discussion in discord on them, but the note searching and the mass-kick macro tool are being worked on they just weren't quite ready for release and I think I need to get this out asap.

**--------------**
**QUALITY OF LIFE**
**--------------**

*Even MORE Ban feature improvements!*

* QOL1: Adding a ban, name autocomplete. As you type, a selection of name matches will now be given as suggested selections. They will pool both the current and former guildies names together for selection. Just start typing to match!

* QoL2: Added a word count as you type in the "Reason for the ban" portion, so you know how many characters you have to use.

* QOL3: The addon will now tell you when adding someone to the ban list if it is still possible to pull their data from the server, otherwise they will be flagged with "Unable to identify."

* QOL4: "Unable to Identify" flags added to ban roster for players who may no longer be on the server. This will allow you to cleanup your ban lists a little.

* QOL5: The addon will now collect any missing GUID data tags from players that left the guild pre-8.0, before data was readily available. I have a somewhat tricky way I collect GUIDs from players who are offline. This also helps me determine if the player still exists.

* QOL6: If adding a ban of a player who left the guild before GRM was installed, or maybe was never even in the guild, it will collect their metadata as much as possible from the server and build a profile behind the scenes. The ban system will also auto-correct any mistakes you make, such as class selection, when creating the ban.

* QOL7: The addon will now tell you when adding someone to the ban list if it is still possible to pull their data from the server

* QOL8: Lots of behind the scenes details. Hard to explain, but the process is better.


**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed a major issue that could cause search to not work due to finding nil values in the log. This was a HUGE potential bug that is now quashed and cleaned up. Hard to understate this.

* BUG2: Search should now work properly in all instances when using apostrophes in the search box.

* BUG3: Fixed an error that could occur when a player rejoined, it was trying to report a nil line. You may have noticed the lack of reporting of rejoins the last 2 weeks.

* BUG4: Sync throttle was modified slightly to alleviate growing concerns about disconnects that seem to have recently popped up after long being quashed. I confirmed the bulk sync feature was nerf'd by Blizz as well in that short time window. This caused me to have to make some slight changes and possibly had some ripple effects. We'll see how it goes but I suspect things will be better now.

* BUG5: The alt details window should now properly reset to the top of the list when showing when clicking on each player's alt lists from the Calendar invite lists.

* BUG6: Minor visual bug on the word count cap to send messages to players that join guild as well as the backspace not registering count changes on guild recruitment custom message character count.

* BUG7: Fixed an issue where the ban list drop-down selection of classes would not re-localize when changing languages.

* BUG8: Noticed a small edge case that could cause a player to be left on friends list evne on cleanup when it was supposed to be a quick add > scan > remove only.


**VERSION 8.1.0R1.42 DATE: February 6th, 2019**

***NOTE*** *Nothing too new here, just some minor bug fixes for some minor inconveniences as I work on a few other major things in the background. Wanted to at least get this out there!*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: French translation fully updated - TY @Enkh and Italian is like 99% complete. TY @Nihal6

* QOL2: The extra alt details window that can popout on the side with a shift-click will no longer go off screen if your game resolution is not wide enough, or scale is high. It will no overlap on the left. This is a rough stop-gap as I am actually building a new "snapping" and draggable window interface that will make it easier to place the frames around the window. We'll see what happens, but now this is a useful feature for those whose frame went off screen

* QOL3: The tooltip of the community/guild frame should no longer trigger through other frames and will now only show if there are no other windows on top of it.

* QOL4: When closing the side window to select how you want to sync all join dates, it no longer closes ALL windows, forcing you to reopen mouseover frame.

* QOL5: Noticed the Rejoins and rejoin bans were reporting in the log on separate log entry lines. This is now all on one line properly, which makes more sense. This only affects new log entries, not retroactive ones, for now.

* QOL6: Fixed some of the coloring as well to be more consistent with what they are doing. 

* QOL7: Custom notes as "additional notes" now show properly without being a jumped mess of words when a player rejoins the guild.

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Promotion/demotion changes were not always reporting to the log properly if the player hadn't logged on since you last checked.This was a simple modification I did last update I forgot to remove.

* BUG2: Promotion date was still saying "Unknown" in cases where it should not have been on player mouseover. This has been automatically corrected. 

* BUG3: Inactive Returns were previously not being removed from the guild when filtered to just them, and using line number X through Y selection removal tool. This is now fixed.

* BUG4: Disabling or Enabling the reporting of when a player levels, to the log, is now working properly.

* BUG5: The timestamp formatting for Promotion/demotion log entries should now properly match the selected format of your choosing.

* BUG6: Fixed a bug where it would report a player's guild anniversary as "0 years" away on the same day they joined the guild. oops :D

* BUG7: Fixed a Lua error that could occur when a player first joins a guild whilst they had GRM installed and had just left a previous guild.

* BUG8: Fixed Lua error that could occur when setting a player's birthdate and syncing the info live to another currently online player. The data sync'd but the name didn't carry over properly for log msg in some cases.

* BUG9: Fixed an error where if you changed the birthdate of the player by adding them to an alt grouping, which auto-changed the bday to the "main," and it was not removing the old event date from the add to calendar window automatically like it should have


**VERSION 8.1.0R1.41 DATE: January 28th, 2019**

**NOTE!*** *Going down the list. It's funny... it always seems like I am taking 2 steps forward and 1 back in thbe progress. I am continually moving forward, but there's always something to distract me. The good thing is the side distractions, requests, bug fixes are all taking us step by step to a better addon.*

***NEW FEATURES***

* The player can now auto-focus the search box everytime the Log is opened, if they so choose. This is turned OFF by default. It skips the first time if set to load on logon.

* French Translation is complete (aside from my 1.41 updates which he did not have access to yet)! Thank @Enkh!!! Seriously, so much work

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: Due to some challenges in building metadata profiles of people who have left the guild, in the back and forth callbacks, delays in receiving info, a ban list could take 2 syncs. One, to sync most data, but if bans existed of players not in the guild, the other person who maybe was not in the guild when those profiles existed needs to create metadata profiles for them. this requires additional talk, and considering the delay, this could interrupt sync protocols. As such, after building the metadata profiles a subsequent sync would need to be done to complete the build for all ban list data to update. Now, the addon will determine the number of metadata profiles created of previous guildies, build them, then re-trigger a call, if necessary, for info, all automatically.

* QOL2: Italian translation has been updated and is current again (aside from 1.41 updates no one had yet). Ty @Nihal6

* QOL3: Noticed some inconsistencies in the Ban log reporting messages from sync vs live which should now use the same messages on both sides of the addon to addon comms.

* QOL4: The ban list log entries moving forward will now properly report on a single line. Previously they had the Ban info and the Reason as separate entries into the log. This is fixed now.

* QOL5:	If a player is no longer in the guild, they are removed from any upcoming events que.

* QOL6: Alt details now sorts by default the time since Last Online, rather than alphabetically (with main still at the top) -- interestingly, I wrote some code here to sort levels and ranks, but I didn't have time to build front end interface. I need ot think of how I want to implement it in a nice QoL way. Until then, default sorting by last online now!

* QOL7: Extra alt Details frame now closes alone with the ESC key rather than both windows.

* QOL8: The addon now states who the player's Main was when they are removed or leave the guild - this is only half-implemented. It seems I am not fully tracking alt/main data as good as I should once they leave the guild when I should store a snapshot of it at the time they are kicked or leave. Instead it is an unreliable tool. I will need to build the tools for this to expand on the feature. Until then, you have this small thing.

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed a major bug with the sync system not functioning properly and causing a lua error on some received data. The root cause was squashed and was actually quite a bit more complicated than I anticipated. This is the bug most were getting. The rabbit hole was deep lol

* BUG2: All words should properly localize now when swapping languages on the new Level Options changes.

* BUG3: Fixed a minor bug with the ban list sync system that might occur in certain circumstances. The root cause of this was also found and squashed.

* BUG4: Fixed Lua error that could occur if hitting enter on the Level filter entry when no level is selected.


**VERSION 8.1.0R1.40 DATE: January 21st, 2019** 

*Small typo fix on something was meant to be deleted*


**VERSION 8.1.0R1.39 DATE: January 21st, 2019** 

(Happy MLK Day to the USA users!)

***NOTE!*** - *I am currently in the process of just going down my to-do list, knocking out many things that were on the back burner. I am also trying to implement simple requests as they come as well as some bug fixing as priority as they come as well. As the addon grows, the complexity grows as well in adding features because there's just more and more tentacles to consider. For example, this update I managed to include the implementation of "who" banned a player, but this required a significant amount of work as the sync algorithm for the ban system, to maximize efficiency in packing in those 255 character size comm messages, as well as obeying throttle rules, is rather complex, and then to throw in a new piece of info into the mix, to carry over through several different channels not only required me to modify it slightly, I had to then add new parsing mechanisms on the other end because previously it assumed it was the end of the string, now I had to rewrite it to see this as the end of it. I had to expand array sizes, I had to build an entire front end feature to consider this. My point is that it seems "simple" for some features, like adding something as simple as the name of the player that originally set the ban on another, which in retrospect I probably should have originally included, but it took me a solid dozen hours+ of coding work just for this one simple feature, and testing to make sure it was solid. The good thing is this patch, since I dove into the ban system, sad that Blizzard didn't implement their own banning system in 8.1, I basically went all out in it too with some long overdue work on it. As a hobby project this is fun, but I do only have so many free hours in the day. I just figured I would let you guys know why maybe some things seem so simple but they actually take me a bit of time*

***NEW FEATURES***

* FEATURE1: The person who first added the ban will now be noted on mouseover of each of the bans. This cannot be retroactive, so it will say "unknown" for all existing bans. If you EDIT the ban and save it, your name will overwrite the person that set the ban as the most recent person to modify it is the one that is important.

* FEATURE2: More refined level filter options! Ability to set it to set milestones, and you can refine to which expansion cap milestones only if you want. Of note, if you have it set to announce when they hit say, 60, and you login and they went from 55 to 65, it will say in the log that they hit their 60 milestone, and are now currently at 65. It will only announce their highest milestone.

**-----**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: Player can now choose to set the log to only report an inactive return if ALL alts in that grouping are inactive. If at least one is active it won't report.

* QOL2: Rewrote the scannign algorithm to be about 95% more efficient. Yes, that is correct. Some major improvements as I hadn't revisited it in quite some time and it got me rethinking some efficiency angles and doing unnecessary work if they hadn't logged on since last check.

* QOL3: If there are currently people banned that are still in the guild, the guild tab will show a count as well as a tooltip warning to give you a heads up, in case you missed the log entry.

* QOL4: On the General Options - tooltip scale will actually adjust in size with the slider now so you can easily see.

* QOL5: Removing a ban from a player the text should now properly be class color coded of the player's names.

* QOL6: More obvious steps in adding or editing a ban

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: BAN LIST should now properly sync in all cases! 

* BUG1: One caveat, in some edge cases it might take 2 syncs to build it all because if it is a new guildie using GRM, they have to create metadata profiles from scratch for players they may have never encountered and are no longer in the guild, so what happens is they first create a blank profile, then they tell the person sending the ban information that they do not have a profile of the player yet so the player then forwards the known metadata on to build the profile properly and THEN and only then can a proper ban be established. The problem is these back and forth comms are not instant, and for me to avoid things like latency bugs, almost like a TCP protocol where you wait for a callback, rather than UDP, then it takes some seconds. Due to my lack of desire to create separate trees for qued up ban data to que up these lists, if the callback isn't fast enough it just builds the profiles without acknowledging the given ban data yet, though the subsequent sync should then work. This only applies to people wwho just installed GRM in your guild, for the most part.

* BUG2: Ban List should now properly sync ban list edits (this also was previously inconsistent)

* BUG3: Ban List should now properly sync the "ban all alts" option as well when this is chose LIVE with 2 people online at the same time. Before it seems it would sync the one name, so the player setting the ban would ban all the alts properly, but the sync'd guildie would only receive a message to ban just the one intial toon, not the alts

* BUG4: Ban List should now properly merge if a person had some bans but were too low rank and then brought up to a higher ban sync ok rank.

* BUG5: Fixed an issue that can cause some translation spam when editing a ban the first time after logging in telling you player's class was wrong as well.

* BUG6: Fixed a Lua error issue that could occur when clicking minimap too soon after login. This apparently was only partially resolved before. It wasn't major, as it didn't break anything, just error'd before finished configuring.


**VERSION 8.1.0R1.38 DATE: January 9th, 2019**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: All nearly 800 lines of translation work for ITALIAN is completed. TY @Nihal6
* QOL2: GRM sync message will be more obvious if /grm sync slash command failed to kickstart sync process properly

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed a bug that will only affect people who have never used the addon before from dumb mistake I made in 1.37 update!

**VERSION 8.1.0R1.37 DATE: January 6th, 2019**

***NEW FEATURES***

*"CHANGES" and "Old Log" headers will now be visible the first time you view the log on logging in to make it more obvious the extent of changes since last login.*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: g8^ purge functionality removed from the addon. After careful consideration, it just seems like too much power for guild leader to control other's data and I hate it exists now. So, removing.

* QOL2: GRM sync message will be more obvious if /grm sync slash command failed to kickstart sync process properly

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed an issue causing a Lua error in syncing the custom note, as well as an issue with sync disconnects in relation to this bug.

* BUG2: Fixed an issue that could cause the ctrl-shift-click of the log to remove the incorrect entry, though it was the same message (like X promoted to Y rank)- This is very edge case and likely no one even noticed lol

**VERSION 8.1.0R1.36 DATE: January 3rd, 2019**

*Forgot to add English Localizations to all languages, so if you used any language but English you likely got spammed with missing key errors*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: Added the online / totalMember count to the roster tab. For some reason Blizz makes this only visible on the chat window. I find it useful on roster tab too.

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed a bug that seemed to be related to the new year and would have only popped up on Jan 1st and on. It likely would have stopped yuour addon from picking up new changes as it would break the scan until then.

* BUG2: Fixed an issue with large custom notes, as they were not splitting and sending backend comms properly if too large. The very large comms should now properly sync

* BUG3: Events were being announced on the calendar as dungeon events due to a change in the calendar in 8.0 that I didn't notice til now. They should now properly announce as a "OTHER" event for birthdays and anniversaries.

* BUG4: Resolved an issue that could make the main tagging not work properly if a person opens the calendar before the addon is fully loaded behind the scenes. Opening the calendar is fine, it just had an out of order check that should have been done sooner.



**VERSION 8.1.0R1.35 DATE: December 31st 2018**

*Minor update. Mostly some bug fixes. 1 new global configuration using guildInfo

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: New Global Setting! - g5^X can be added to the guild info to designate the location of the Join dates. g5^1 = officer note, 2 = public, 3 = custom

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed a bug that could allow the guild leader to purge their own data on accident using the g8+ tag! Oops!

* BUG2: Fixed a localization bug that would spam you about not knowing the key for a birthday translation.

* BUG3: Fixed a bug that could allow in some cases multiple copies of smae name to be added to alt list if spammed from a sync error (older version bug spaming backend comms to new version)

* BUG4: In relation to the previous bug, Cleans up broken alt lists that were broken from an older patch (some may have never noticed some groupings were broken)

* BUG5: Fixed a bug that could cause Lua error shortly after logging in if system message triggers, like "Player has gone offline" before it is configured properly.

* BUG6: Ban list "guild info" configuration of the global settings allowed the player to contradict allowed settings, with ban list restriction more loose than global.

* BUG7: Fixed an issue where the event announcing could be set to > 28 days (up to 98 days in advance). I wrote it to only scan 1 month in advance, not more, and thus to keep it clean I default it to 28 days in advnce as max announcement. This setting defaults to 14, but if you had it < 28, it will be reset down to max 28 and will no longer be editable a greater length of time than 4 weeks in advance.


**VERSION 8.1.0R1.34 DATE: December 16th 2018**

*Moderate update. Some bug fixes. Some bugs would be game-breaking for some players, and would not affect others. Thus, this needed to be pushed out asap!. A few other tweaks as well*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QOL1: Alt names listed as the main should not be shrunk tiny anymore.

* QOL2: Added tooltip message that you can "Right click to edit" the dates...

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed an issue that can prevent alt list from showing.

* BUG2: If more than 10 names were on the event calendar a Lua error could occur selecting wrong player info.

* BUG3: Accidentally included a spam message in the guild sync spam on birthday updates being shared.

* BUG4: Not all upcoming events were being announced if they were the next month (particularly from December to January). This is fixed. You may get a bunch of new announcements to report to the calendar.

* BUG5: Blizzard made some backend changes to the calendar, so I had to adjust the way it checked if events were already added. If it is already posted on the calendar it will not appear on your events list with a suggestion to add it to the calendar needlessly. Thus, if one player or officer in the guild adds it to the calendar, then all other players will have the option removed as it will no longer be necessary to add it. You will still have a log announcement of it and it should appear in the guild chat community stream the first time you look at it after it has been added.


**VERSION 8.0.1R1.33 DATE: December 15th 2018**

*NOTE! The !note feature has been removed. One, it was mostly redundant, since Blizzard introduced the ability for people to edit their own notes only. But two, in 8.1 Blizz broke it anyway and it can no longer be used. Blizz "protected" all chat streams now, from guilds and communities, since they are now stored. Apparently this was in an effort to prevent addon developers from attempting to use custom channels as exotic database storage (which I was funny enough, considering lol). The downside is it KILLS the feature.*

***NEW FEATURES***

**BIRTHDAYS**

* *That's right! You can now input players birthdays. They are linked to the alt grouping. I have made this as simple as possible and automatic to use. Here are some details:*

* 1) Completely optional. You can disable this in the settings. Both the ability to store birthdays as well as even see it in the options are configurable.

* 2) The date is linked to the alt grouping as it is assumed that the birthday will be the same for all players in the grouping as it is based on RL birthdays

* 3) This linking will be automatic. If an alt does not have a birthday set, but is added to a grouping of alts that does, then I will auto-set the birthday. All the nuances of this are extremely tedious to iron out to automate this all. Example, what if two toons not grouped have different dates set, but you try to add one to the other, which date takes priorty? Well, I look at if one is listed as main. Well, what if neither are. What if both are? What if one player is part of a group of alts, with no one listed as main, and no birthday, but then you add one player who is a main and already has a date? Does it override all the others? What if not a main, but it has a date? What if the large grouping has a date set, but the main does not? You can begin to see how there can be a large divere group of things to consider. I ironed out every last one to automate this for the smartest efficiency.

* 4) It only stores the day and the month. I avoid allowing the addon users to ask for the year. I do this on purpose. Some people don't feel comfortable giving their age. Not that it is likely a big deal for 95% of the community, but this spares you leaders the awkwardness of bothering with asking. It is not necessary anyway, just the day and the month is important.

* 5) These birthday events will auto-trigger to be added to the calendar as they approach as well. I HIGHLY recommend having the box checked to only announce the "mains"

* 6) Data is completely syncable and sharable. This also takes advantage of a new algorithm I am implementeing a little here and there for sync efficiency. It takes a while so one thing at a time. It is speedy, but is still extra, new data.

**GUILD REP**

* *Yup! For some reason it is hard to determine player's guild rep now without opening the /groster old window. It will now be visible and properly colored based on rank in the top right for each player. It is fully localized*

* 1) This also is completely optional, and you can disable it in the new UI panel of the options.

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: While not necessarily obvious to the user, I place this as number 1 because of the extensive backend cleanup on the process of scanning the database for events to announce to be added to calendar. I also converted the database from the use of strings in many areas to ints, thus removing the need of any string parsing when checking events. This is enormously more efficient now.

* QoL2: Cleaned up a bit of the Alt alignment, some auto controlling the font size to fit, even if a player bumps font size to 125% (in some fonts this may make the "main" alt seem a bit small.

* QoL3: A bit cleaner backend method on detecting player rank permissions in chat. The older method was a bit tedious, but it was necessary after the odd changes in patch 7.3. Well, 8.1 reverted a few of those and they are actually easier to use now and better than ever before! Sometimes they get things right!

* QoL4: Custom note sync rank filter tooltip is more obvious now what it is and how it is unique for that toon only.

* QoL5: ESC key used a bit more logically and cleanly when jumping through frames you had open.

**--------------**
**BUGS AND BUGS!**
**--------------**

* BUG1: Fixed an issue that could cause disconnects in some circumstances during a sync. I am not certain this fixes ALL issues for all players, but this definitely will resolve it for many that possibly had issues.

* BUG2: Tightened the sync process a bit further as well to prevent a bulk sync that overlaps or I should say, comes to close to the server throttle cutoff. This will likely help some people who had disconnects.

* BUG3: Sync disconnect fix 3! Additional protections added to people with low FPS when first logging in to prevent a bulk sync, or throttle down to match FPS a bit (interestingly FPS does affect throttle rate).

* BUG4: Fixed an issue that can cause a protection error when trying to mass invite people from the guild recruitment window with GuildInvite lua script. Blizzard seems to have protected it so it cannot be looped, it can only run once per click without tainting. As such I have implemented the macro strategy, where I create a premade macro with all the /ginvite (name) on each line, and with a simple hot-key press it mass invites, if you wish.

* BUG5: Fixed a rejoin bug issue where if a player quits the guild, deletes a toon, makes a new toon with the same name, it counts it as a rejoin. It should now properly only rely on GUID data, not name comparisons. Oops!

* BUG6: Found some issues that could cause problems for people whose database had been upgraded/converted after a long time of not updating the addon, and then they used the backup recoverty tool.

* Bug7: Fixed some bugs around updating from VERY old versions of the addon.

* Bug8: Fixed an issue where the "Anniversary!" was not translating properly in some circumstances on non-English versions of the addon.

* Bug9: Fixed an issue that good mingle alt groups incorrectly when adding one from two groups listed with a main, from a toon that was not a main in the grouping.

* Bug10: Addon should no longer randomly announce "XXX player is already listed as an alt" erroneously.

* Bug11: Fixed an issue with ban list syncing. - It only addresses one issue, however, this is still bugged and doesn't always sync the ban lists properly.



**VERSION 8.0.1R1.32 DATE: November 22nd 2018**

*Note! There are some big changes in the works in a couple of areas, this is taking me a bit of time, but it is in regards to the core log. I've decided to implement a hybridscrollframe and also make the log more dynamic, less static. This has a lot of tentacles in the code to deal with so it is taking me a while. In the meantime I pushed out a rather critical update for a major disconnect bug and some minor features*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Functionality has been expanded in the ability to FORCE and unify settings. The player can now force set the sync rank for ban lists and custom notes as well. 

* QoL2: Freeing up character space in the officer note, the Guild Info will now house the leader control tags to force settings. Example, g2^9 is not going to be placed into the guild info tab to work.

* QoL2: The addon will auto copy over your existing tags when you first login and configure this automatically for you.

* QoL3: The +GRM1 has been normalized to g1^+. If you used GRM1, then the addon will auto-convert the format, as well as copy it to the proper Guild Info tab.

* QoL4: Some formatting fixed that could occur in some cases with the alt list making them appear unalligned.

**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1: Major disconnect bug has been fixed that could occur if a player reloads and tries to auto-sync, with certain addons installed. This compatibility was hard to detect. It is now resolved in a new way so as to preserve compatibility with all addons. It might not kick them on logging in, but on a reload it would. Not anymore!

* Bug2: Manually moving the minimap icon could cause an error for new users. This is now resolved.

* Bug3: "Show main tag on all" in the settings was not showing it checked, even if enabled. This is now resolved.

* Bug4: Players that tried to manually trigger a sync with a /grm sync would often find it doesn't trigger without a 2nd attempt. Fixed!


**VERSION 8.0.1R1.31 DATE: November 2nd 2018**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Added the additional Main Tagging option to show the main tag on ALL toons, including the main, not just the alts

**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1: Accidentally included debug version of the addon's syunc, so you might have gotten a bit of spam in chat...

* Bug2: Players that were new to the addon that decided to manually move the minimap icon would get a lua error. I only updated this to build old databses, not add to new. Ooops!

* Bug3: Minimap position is something NOT sync'd between alts. This is intentional as on some alts people use different addons, so the one setting unique between toons is alts. The new Custom "drag anywhere" minimap button option should now properly reflect this.

* Bug4: Fixed an issue that could cause a Lua error in regards to minimap position when swapping between alts as well.


**VERSION 8.0.1R1.30 DATE: November 1st 2018**

**--------------**
**QUALITY OF LIFE**
**--------------**

*No major new features. Lots of bug fixing and quality of life adjustments for players, with some request implementations. Thank you for your patience!*

* QoL1: Syncing is less stuttery when syncing massive alt lists. There was some spaghetti code I had written a long time ago I had not revisited. OMG, it was rebuilding the entire database in a deep array copy every second lol. This could d/c at least some people, or make the game unbearable during the sync. Stutter removed!

* QoL2: The side box to input the name, when adding an alt, is now a scrollable list with up to 30 matches, to make those hard to match names easier to see. I can up the max limit, just let me know if 30 is good enough.

* QoL3: Sync is now disabled from triggering when a player /reloads -- there is no real need to trigger a sync on reload, on when logging in the first time.

* QoL4: Main/Alt tagging is now more obvious in chat, and it is also now in the System messages for when a player comes online or goes offline.

* QoL5: MOTD is now visible just by mousing over the GRM minimap button.

* QoL6: MINIMAP button can now be moved ANYWHERE (for you people that use those addons that make the map a non-sphere lol)

* QoL7: The optional message when sending a guild invite that can be included at the guild recruit window now makes it obvious you need to hit ENTER to save the message first.

* QoL8: I had built an optional DEBUG sync file for those with disconnect issues. Please ask me on discord and I will link you so we can diagnose the problem.

* QoL9: Slight optimization on just the Join Date sync information. This is just me doing a broad mass test right now on some minimal changes to my algorithm that will improve efficiency and make it a bit more lean and faster. If all seems good I will expand it to the rest of the sync data.


**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1: Syncing settings of NEW players that first get configured was not working at all. In fact, it was screwing things up! If you logged on a new alt for the first time this addon installed, not only would it not sync right, it would then overwrite all of your alts you had previously configured with default settings again. HOW ANNOYING!!! Fixed...

* Bug2: Audit Log should now properly sort the Promo dates when sorting ascending or descending.

* Bug3: Fixed miscellaneous bug that caused error in some rare cases when loading CommunityFrame for the 1st time.

* Bug4: Portuguese Client should no longer spam adding friends in the system messages as they are properly filtered now.

* Bug5: Korean client was completely broken due to inability to parse creation date. This addon will now work for them perfectly.

* Bug6: A similar but different parsing error in the early configuration of the addon was affecting Mandarin Chinese and Taiwanese clients. This is now resolved and they should work properly...

*Yes, I am really debugging and testing on all 11 supported client languages.*


**VERSION 8.0.1R1.29 DATE: October 13th 2018**

**--------------**
**NEW FEATURE**
**--------------**

***Improvements to the Guild Recruitment Window***

* Player can now INVITE ALL with one button and it will invite all the players currently online

* Player can now include a guild custom message that is sent to the player when they are invited to the guild. The message can be customized up to 255 characters, or not used at all

***"KICK ALL ALTS" has returned in pseudo form!***

* When kicking a player from the guild, you now have the option to remove all of their alts nearly automatically as well

* The way this works is the addon will build a macro for you that auto-populates all of the alt names into with a /gremove altName1

* Then, it keybinds the macro to "CTRL-SHIFT-K" - This allows you to access this guild kick macro without needing it on a toolbar (A message will remind you of keybind)

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Guild Leader can now force rank restrictions logic with "g2^x" note in either the PUBLIC or OFFICER note. If it is in public, it mandates sync restriction settings guild-wide. If in officer, it only forces officer settings.

* QoL2: Cleaned up some of the UI interactions a bit. Might not be too noticeable, but they are overall better in some areas.

**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1: Fixed an issue related to guild sync where in some cases data would not be shared.

* Bug2: Fixed an issue where there are two copies of a player in the database from an old error if a player has not updated in a long time, fixed that, and ultimately fixed the audit log from being inaccurate on "number of incompletes"

* Bug3: The addon will no longer freeze WOW if you search the log with mature filter enabled.

* Bug4: Mature Language filter shouldn't cause repeat spam on note changes over and over again anymore if player has it enabled

* Bug5: Fixed a bug that could cause a lua error on Log tools line selection for mass deletion.


**VERSION 8.0.1R1.28 DATE: September 22nd, 2018**

***NOTE:** Long delay since last major patch was in relation to a recent job promotion at work resulting in a bit more workflow, as well as the BFA launch. I finally have a bit of a work breather, so I hammered this out. I know I didn't get everything, but I got a lot!"

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Player can now set the Custom Note as a destination for auto-joinDate adding.

* QoL2: Player now has the option to set the kick recommendation to only recommend if ALL alts in a grouping have been offline past the deadline (enabled by default)

* QoL3: Log will now display the player's public and officer notes when they leave the guild. You can toggle this on and off in the settings (under scan options)

* QoL4: The Guild recruit window now has a mass purge button that allows you to mass remove ALL guild applicants with one button (with confirmation protection)

* QoL5: Guild Leader can now set Officer note to force all officers to mandated sync restriction rank (This clearly only works for officers, as they are the only that can read the officer note)

* QoL5: -- Use "g2^X" with X being the rank index. 0 = Guild Leader, 9 = Lowest initiate rank.

* QoL5: -- So, if the GL has 2 officer ranks and wants to restrict to that, it is 0 = GL, 1 = officerRank1, 2 = OfficerRank2, thus g2^2 = officer rank and above.

* QoL6: Added a couple of tooltips that are Guild Leader only, for their own use, with instruction on how to use officer note settings (they only appear if not utilized)

* QoL7: Add alt auto-complete names as you type are now shifted more to the left so longer names don't bleed over the edge.

* QoL8: Hard reset button added in the help options... same thing as /grm hardreset. DO NOT USE unless desperate to do full reset account wide of all addon datra.

**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1:	Calendar invite list should scroll properly now.

* Bug2: Calendar Date player modified should now properly be displayed in the tooltip of the calendar as well.

* Bug3:	Fixed 2 different issues that could lead to disconnect when syncing. BUT, I likely will need testers since many are disconnecting immediately.

* Bug4: Whispers were not working for some people who set their whispers to their own separate window. This has been resolved.

* Bug5: Fixed issue where Empty Officer notes were reported to the log as being added Thus "" was added was showing. (This may need some more testing)

* Bug6: Mouseover window should no longer spazz out while looking at guild professions window!

* Bug7: Fixed an issue that was causing syncing of settings among alts wrong.

* Bug8: Fixed a bug that could cause people who haven't updated in a long time to be unable to load the addon properly

* Bug9: Fixed an error that could prevent a player from updating their settings properly in 1.27

* Bug10: Fixed a bug that could cause a lua error if clicking the minimap icon too soon after logon. TY @TimeDrawsNigh

* Bug11: Player should no longer lose focus in ANY situation when typing in the calendar note windows.

* Bug12: Fixed issue on the Promotion date not showing properly in the tooltip and audit log, whilst the mouseover window did. @RedEvil11

* Bug13: System messages must be enabled for this addon to work. A source of problem for several players were those who had them disabled

* Bug13: -- The addon now properly informs them of this status and disables from moving forward until they are re-enabled, without causing error.

* Bug14: Main tag should properly show in all cases now when adding alts

* Bug15: Players with more than 12 alts could end up with misaligned alt lists. The width/wordwrap settings are now correct.



**VERSION 8.0.1R1.27 DATE: August 13th, 2018**

*MINOR UPDATE*

* Blizz made it so players can now edit their own note, even without being an officer. The addon now supports this.

* You can now toggle the public, officer, and custom note borders to be on or off in the general options.


**VERSION 8.0.1R1.26 DATE: August 8th, 2018**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Export log will now include the numbered lines if you wish.

* QoL2: Officer/Public/Custom note cleaned up a bit more to my liking... no need for the antiquated Blizz box

* QoL3: Officer/public notes should now update instantly if looking at Blizz's player details frame that pops out on clicking on the player. Before you had to click on it again to refresh. I force it now.

* QoL4: Cleaned up some custom note sync UX stuff. A little cleaner.

* QoL5: Blizz's StreamViewMarker is a little flawed and inconsistent on when we really want to scrollback in unread messages. I thus created my own tag.

* QoL6: Added right-click suggestion in tooltip on the mouseover alt names and player name, as many do not seem to know you can right click them for additional options, like setting as main.

**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1: Fixed an issue with retroactive !note tagging where it would scan past MORE than just the unread. Warning, you will need to logout at least once for this to trigger accurately.

* Bug2: Blizz finally fixed the CHAT_MSG_WHISPER and CHAT_MSG_GUILD properly, whcih broke my 1.25 workaround. But that's ok. It's proper now!

* Bug3: Fixed an issue with new players joining the guild where sometimes info wasn't saving accurate on first pass.

* Bug4: Add Alt should be working properly again in all cases

* Bug5: Fixed an issue that would allow new mouseover windows to popup, even though the member detail Blizz side frame was up.

* Bug6: Audit window should now properly auto-update as changes are made in ALL cases without needing to open/close the window.

* Bug7: Fixed an issue with auto-complete on the Add Alt when clicking the name instead of hitting enter.

* Bug8: Fixed an issue when syncing custom notes, shouldn't error out now, which might have crashed your sync.

* Bug9: Fixed an issue where in some cases a lua erorr could occur in showing the player promotion history on mouseover.


**VERSION 8.0.1R1.25 DATE: July 29th, 2018**

**--------------**
**NEW FEATURE**
**--------------**

*The **!note** tagging can now be done by any player in the guild, whether an officer with GRM installed is online or not. What now happens is when an officer logs on with GRM installed, they will scan the previous history of unread messages (up to 250 missed messages), and if it sees any !note messages, it will verify that they were added or not. Then, it will update those public notes that have been missed, retroactively.*

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Community frame scrolling for mouseover popup window - Keep the mouse cursor stationary, but use the mousewheel to scrool and you may have noticed that the player window did not update (not mine or Blizz's tooltip), only when you manually moved the mouse over each button.

* QoL1: Now, the names will updated on a static scroll. 

* QoL2: In relation to this, I noticed that Blizz's player tooltip seemed to work fine on mouseover with the Community window "CHAT" tab, but not the "ROSTER" tab, so on the guild community, I have fixed it, and the tooltip should now be working properly (I will remove my code if Blizz ever fixes it)

* QoL2: I have also made it so Blizz's tooltip behaves like mine behaves, where it will auto-update if the mouse is stationary and you just use scrollwheel. I have also Class colorized the name in the tooltip

* QoL3: I have figured out a reasonable way to make it so when a player joins the guild, I can build their metadata profile nearly immediately (2 seconds or less), so their mouseover works well right away. You have no idea how decidedly complicated this was considering the server call only provided me updated player data on the backend once per 10 seconds minimum, so often massive delay. No More! This is actually partially due thanks to new CommunityFrame data stream.

* QoL4: Calendar main/alt tagging should no longer reset and disappear and so on on the Calendar invite windows - it was a little buggy before, and now it should be without issue

* QoL5: Added a <NG> tag in the calendar invites... it will show over players who are invited to your event but are "Not Guildies" -- if you can think of a better tag, please let me know.

* QoL6: Added the [M] brackets format to choose from now in the main tag formatting options. Also, I made it so the tag is standardized for both main/alt formatting, and the proper format will now also show in the calendars, not just the guildied chat

**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1: Major behind the scenes bug fix for some players who were unable to load up addon (where they logon and window pops up but all tabs are blank)

* Bug2: Main Tags are working again on all realms, including MERGED realms. "CHAT_MSG_GUILD" is still broken on Blizz's end so I had to add a new guid check to pull full details)

* Bug3: Fixed an issuere where the "Time since Promotion" mouseover info would report the player as having joined 17 years ago (there might be some edge cases here I haven't thought of, so please report if you see the "17 years ago" bug.

* Bug4: Fixed an issue that could cause Lua erros in conflict with other addons through addon to addon chat.


**VERSION 8.0.1R1.24 DATE: July 23rd, 2018**

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Fixed some Audit Log column and fontstring allignment issues I didn't even notice until using non-English.

* QoL2: ElvUI AddOnSkins has been fully updated, and their author accepted and merged my file for their official next release (not sure when that will be)

* QoL2: I will post the file in Discord, so PM if you want it, or you can wait til their next release.

**--------------**
**BUGS AND BUGS!**
**--------------**

* Bug1: The Audit log should now properly be working again when you select the "Only show incomplete guildies" option!

* Bug2: Calendar Invite lists should work properly now, show proper alt/main tags, allow the right click context menu, and you should be able to click players with alts to see their side alt grouping window.

* Bug3: Calendar tooltips have been brought back and are working again... This was far more annoying and tedious a problem that would seem obvious :D

* Bug4: Fixed a Lua bug that could occur if you have version 1.23 and interacting with older versions of the addon (it didn't break anything, but Lua bug is annoying)

* Bug5: Fixed a translation spam error for those using non-English option when setting promo/join dates manually.

* Bug6: Possible fix for some people whose database is crashing completely on load...


**VERSION 8.0.1R1.23 DATE: July 21st, 2018**

**--------------**
**NEW FEATURE**
**--------------**

* Guild Leader can now add "-GRM1" or "+GRM1" to enable or disable, guild-wide, the !note adding ability. 

* If an officer in the game logs in, they scan the officer note, and they will adhere to the restrictions of the GL's officer note, allowing the GL to control Officer settings. This will be expanded in the future

* RUSSIAN now included, about 50%+ translated so far. TY @OldCold on discord for this massive undertaking and help

* ITALIAN AND GERMAN 99% translated as well, special shout out to @Nehry for the German and @Nihal6 for the Italian

* Note: French Translation is underway... if you have any time to volunteer help, or wish to have a language added, please let me know!

**--------------**
**QUALITY OF LIFE**
**--------------**

* QoL1: Guild Recruitment Frame can now be shown without having to open the entire communities and roster frame with /grm recruit (also improved UX over default)

* QoL1: Or just click on the hyperlink when someone is ONLINE and requesting to join the guild

* Qol2: !note tagging is now compatible with Identity2 and Name2Chat addons.

* QoL4: Option to enable or disable the !note adding can be set, and even controlled guild-wide.

**--------------**
**BUGS AND BUGS!**
**--------------**

* Fixed a HUGE bug that would make x-realm guilds mouseover not work right for all players... This was due to Blizz finally fixing the whispering and name-server tagging properly

* Calendar bug that would cause a LOT of problems... like endlessly looping sync requests, Lua errors... unable to add anniversaries to calendar, etc. FIXED

* Player should now properly see the buttons and config of the guild recruitment window

* Lua errors resolved in many instances where configuration load order was out of sync.

* Fixed an issue that could cause player to disconnect when in the middle of a Data sync and opening the Communities window for the first time, at the same time.


**VERSION 8.0.1R1.22 DATE: July 20th, 2018**

**--------------**
**NEW FEATURE**
**--------------**

**PUBLIC NOTE TAGGING FOR NON OFFICERS**

*In patch 8.0 Blizz changed the permission and officer system of guilds. They also made it so only officers can edit public notes. You are not even able to edit just your own. This resolves that*

* Type "!note" in guild chat, and anything you type after it will be auto-set to your public note by any officer that is online with the addon installed.

* Example:  **!note ilvl 300 MM Hunter - Eng/Alch**

* If I type this into guild chat, if an officer is online with GRM installed, they will then set my public note appropriately.

**--------------**
**QUALITY OF LIFE**
**--------------**

* Character count on MOTD and Guild info are now viewable again

**--------------**
**BUGS AND BUGS!**
**--------------**

* Alt grouping window on the Calendar events invite list should now close properly when closing calendar event

* Recruit window should now properly open its window.

* Request to join recruit window the top right buttons are now properly alligned.

* Guild window should now pop up appropriately when selecting player's names through things like the audit/events windows.

* Mouseover frame window flash should no longer occur when a non-guild community window is currently the focus.


**VERSION 8.0.1R1.21 DATE: July 17th, 2018**

*Massive changes had to occur to get this addon compatible with 8.0 changes. I am not sure many will appreciate the amount of effort that went in to make this happen. But, considering the extent of the updates, changes, and the addition of new features, I am certain there may be bumps along the way. Please report them ASAP so I can get them fixed quickly! Thank you!*

**--------------**
**NEW FEATURES**
**--------------**

* **SYNC ALGORITHM UPDATED FOR NEW EXPANSION!**

* - That's right, the sync algorithm has been updated to take advantage of the ability to do a bulk dump of data at 1.28MB/s within the 5-20 sec window after logging on. After that, it is rethrottled down to just over 4KB/s, which is an internal limit by Blizz.

* - This allows on first login to do a bulk sync and even complete an entire 1000 member sync within within 2-3 seconds of starting.

* - Of note, /reload does not reset the bulk data, on a full relog reopens it to the player. Throttle controls are smarter now as well, and even take into consideration Blizz's limitation of data comms on low FPS systems.

* **ALT GROUPING WINDOW**

* - On the player mouseover popup window, if you mouseover the player alts, hold SHIFT to popup a side panel with a grouping of alts with more exact data one them. Release shift for it to disappear

* - Shift-Click to keep the window open.

* **CALENDAR EVENT MAIN/ALT TAGGING**

* When looking at the invite list in a calendar, it will now show who the main/alt is for a player. The alt grouping window is also integrated for more info if you click on their name.

* **INFINITE SCROLLING**

* - While I have been a little hesitant to implement a hybrid scrollframe, I decided to keep the log from clogging the window too much, I implemented "infinite scrolling" algorithm on the main guild log, and the audit window. This should provide a smoother experience now for mega guilds.

* **AUTO MAIN TAGGING WHEN PLAYER JOINS**

* - If a player joins, while you are online, it checks the unique accounts counter, then tags the player automatically as "main" if the counter goes up, knowing it is an alt.

* - Of note, this is not always reliable, as the unique accounts is not always accurate and won't show it was a new person, even if it was, but in many instances it will work. This ONLY works live, not for players that joined when you were not online.

* - Also, there is a delay where it can take up to 10 seconds for the server to provide updated "unique account" info, so wait a few seconds on their join.

* **REQUEST TO JOIN RECRUIT WINDOW MANAGEMENT**

* - If a player request to join the guild and is currently ONLINE, the reporting is now cleanear.

* - The recruitment window now has the ability to navigate easier from one Online player to the next for invite. It will auto scroll to the first invite, and then you have next or previous buttons to continue

* - New option to Auto-popup the Recruitment window if a player comes online (or to popup once out of combat), and autoscroll to player name position


**--------------**
**QUALITY OF LIFE**
**--------------**

QoL1: Audit Log now shows the dates of the players join/promotions, rather than just "Ok"

QoL2: Audit Log each column can now be sorted, ascending/descending, by dates, etc...

QoL3: NameChange detection is now 100% flawless in BFA - due to the inclusion of GUID tags of players, namechange detection is easy to check

QoL4: In extension to this, rejoins are now flawless. This addon will absolutely now detect if a player quits the guild, namechanges outside of the guild, and rejoins the guild, it will now properly report they are rejoining the guild AND they namechanged. Great for people that get banned and think they can get back in with a name change (of note, GUID is reset on server transfer, so if they transfer back it won't detect)

QoL5: DateTime format has been added in the format "2018-07-17"

QoL6: Tooltips should now properly updated when hitting the ESC key, like on the events window panel.

QoL7: Ban List, Users, and Events windows should now have their columns properly alligned.

QoL8: Default scan time has been changed, for new players, from 10 to 30 seconds, to prevent spamminess. 

QoL9: Default BFA position of the memberdetailframe was poorly placed over the side tabs. This fixes that.

QoL10: Lots and lots of code optimization on the backend thanks to some major code changes by Blizz. This addon fully takes advantage of them.

**--------------**
**BUGS AND BUGS!**
**--------------**

*In no specific order of important, as they ALL are improtant to me!*

* Bug1: Fixed Lua error that could occur on some people's event calendar when trying to ignore the anniversary event.

* Bug2: Count should now properly display when syncing... before it was counting "mains" as a sync count, even if there were no updates.

* Bug3: Fixed an issue where player names were not saving properly if added manually through the Ban list, and the first character was a special character.

* Bug4: Fixed issue where Ban list was saying there was a localization bug when trying to edit a ban.

* Bug5: Player settings should now properly sync between alts as in some cases this was not working for some people.

* Bug6: Guild Log button frame strata on the roster window should now be appropriately matched.

* Bug7: Fixed a major bug that made it not possible to add certain players to the ban list if you were in a guild that had a large number of people who had left the guild. This would ONLY be an issue for mega guilds.

* Bug8: Fixed an error related to a conflict with the chat-chat plugin for ElvUI

* Bug9: Fixed a bug that was causing the calendar "Mass Invite" window to close

* Bug 10: Fixed a bug for players using 24hr time notation instead of 12hr clock that could cause their join/promo dates to be Jan 1st, 2001

* Bug 11: Friends lists should now be properly cleaned up if you disconnect or logoff in the middle of an Online check of the Request to join players... where you log within that 1 second window before removing them.

* Bug 12: When banning a person and all their alts... the ban "reason" was not carrying over to the alts properly. It now is.



**VERSION 7.3.5R1.1530 DATE: June 4th, 2018**

*Prepping for some big updates in BFA... so please, be patient and I will make sure we are rolling good for some big improvements. Looks like guilds being integrated into communities too so that will require a significant rework of things as well!*

**QUALITY OF LIFE**

* QoL1: For new players that join the guild, adding join date to officer/public note is turned off for people that install this addon going forward. It is an optional feature that needs to be manually engaged.

* QoL2: Previously, when a player left the guild it wiped some data I deemed unnecessary and only stored things like dates and so on. It did not store the alt lists. I have no idea how I logically deduced that was a good idea lol. So, while the alt list is reset if they rejoin, as necessity, you now have access to their previous alts when they left the guild, thus if you choose to ban the player after they left, you will now be given the option to ban all their alts as well. This unfortunately cannot be retroactive.

* QoL3: Ban List management even more streamlined. When a player types in a name it autoformats the name, then if on tabbing or moving to another box, if it finds the player in the guild or in the LeftPlayers list, it auto populates their class and auto-formats the name for adding.

* QoL4: Count now included on the number of items added sync'd.

* QoL5: Status on being able or not to add events to guild calendar has been added to the window.

**BUG FIXES**

* BUG1: Tooltip was once again, erroneously scaling ALL game tooltips when it should have just been scaling this addon's only. This would make smaller fonts like in ElvUI really difficult for some people. This is now once again FIXED. Oops!

* BUG2: Major bug fix for broken databases that never fully converted right for people that maybe haven't updated in a very long time. Thanks @chay on Discord for letting me use your database to debug this one.

* BUG3: Due to some formatting issues and non-precise user input error protections, the addon will now re-analyze the entire database and properly format any player's names that were manually added to the ban list, so they can properly be detected if they rejoin the guild.

* BUG4: Addon Settings were not properly syncing between alts, if you had that setting selected, at least not always. It is now wrapped properly and should work now. The first toon you logon to, verify their settings, and then from there the settings should sync properly.

* BUG5: Rejoin data "time passed" since they left the guild should now be accurate.


**VERSION 7.3.5R1.1520 DATE: May 27th, 2018**

*Got a little busy with RL and a promotion at work, so understand if the updates haven't been quite as speedily. I still am doing a little here and there, of course!*

**QUALITY OF LIFE**

* QoL1: Italian translation is now included! Thank you so much @Nihal6

* QoL2: When exporting the log, it should now obey the filters too, it won't export the entire log, just what you see based on your filters.

* QoL3: On manually adding players to the ban list, it scans if the player has "alts" and automatically asks you if you would like to ban all of their alts as well. This was previously possible when banning players in the guild, but now, on manually adding a guild ban it will check

* QoL4: Players now have the ability to EDIT bans.

* QoL5: Ban player interface a bit more user friendly and higher quality. Better tab or shift-tab for navigation, even up/down arrow use on the dropdown menu if you prefer.

* QoL6: Added some tooltips for some buttons, if they are localized in a language with a very long phrase, the scaling might get too small, thus tooltips on button mouseover should help clarify some more.


**BUG FIXES

* Bug1: Fixed a bug that could occure when a player is not in the guild then joins the guild, triggering scan for update.

* Bug2: Fixed a bug that could cause the player to lose keyboard focus when trying to edit calendar event.

* Bug3: On some occasions the guild ranks were not properly setting their indexes due to ranks being added or removed. This could cause serious sync issues downstream, as well as log spam. Fixed!

* Bug4: Fixed an issue with the German translation where ti would spam you saying you didn't have a string translated.


**VERSION 7.3.5R1.1510 DATE: May 2nd, 2018**

**MINOR FEATURE UPDATE**

* *GERMAN IS NOW FULLY LOCALIZED*

* Custom Note is a bit more accessible with the ability to have line breaks

* Hit enter, go to next line. Added Confirm and cancel buttons. Better control of Custom note display as a result.

**QUALITY OF LIFE**

* QoL1: Added ability to change timestamp format to your preference.

* QoL2: Furthermore, player can choose between the 24hr clock or the 12hr clock for log reporting times

* QoL3: "Time as Member" is now included in the log entries when a player leaves the guild, but only if it was known how long they were a member. If their join date was never configured this will be ignored.

* QoL4: "Time as Member" now included in the mouseover tooltip on the Member join date. 

* QoL5: "Join Date" button is now properly alligned, I just never noticed since I use the English version...

* QoL6: Auto font Scaling is now included for many buttons so they don't overlap out of bounds of their frames. This is necessary for some languages, like German, with very long words.

* QoL7: Add Alt button slightly increased in size, mainly to accomodate other languages, but it is also just cleaner, easier to click.

* QoL8: Added tooltips for mouseover of the options sub-tabs as some non-English words were too big to fit reasonably.

* QoL9: All promotion dates are now cleaned up, as some, due to an old bug now eliminated, had the 12:01am timestamp visible.

* QoL10: Events Frame cleaned up a little bit in preparation of pending new features

* QoL11: Ability to click the player's name in the events tab and bring up their player window (with tooltip over the names now)

* QoL12: Pressing escape in the events window now de-selects a player rather than closes the whole window, or closes the window if no player selected

* QoL13: Option to enable/disable the "fade" when moving between tabs

**BUG FIXES**

* Bug1: Bug on load for some people who haven't updated > 6 months

* Bug2: Localization issue fixed for not properly updating anything with a number

* Bug3: Fixed a very old bug where it was not giving the exact day properly on the recommend to kick a player who has been offline X number of months. The logic has been completely updated to even support with exactness on leapyear checks too. Before it was just a close estimate. Not it is 100% precise.

* Bug4: Fixed an issue where the custom note was not updating the log immediately upon the change.

* Bug5: The friends list spam on occasion would still happen. This was kind of wonky because even with delay checks and so on, sometimes the server would not detect a change and get a callback for a few moments, but there was no specific event to listen to to wait for the callback, so I had to ballpark it. Well, you get a lag-spike and you might get spammed. I figured a protection workaround to prevent the "added to friends" spam if you have a lot of people on the guild request to join page

* Bug6: Potential bug fix for the mass-custom note spam syncing - needs testing.

* Bug7: Not yet translated count now visible again when selecting which language you want.

* Bug8: The GRM tabs were not localizing on the language change, they are now.

* Bug9: "Time passed since..." player left the guild, was not online, etc... should now be exact to the day and was reporting wrong before.


**VERSION 7.3.5R1.1501 DATE: April 22nd, 2018**

*Fixed a bug that seems to affect SOME people, not all, causing the addon to fail to properly load*


**VERSION 7.3.5R1.1500 DATE: April 22nd, 2018**

**QUALITY OF LIFE**

* QoL1: Tooltip added to audit window over the "Unique accounts" to make it more clear that the server is not always accurate on these details, and hopefully Blizz fixes that.

* QoL2: For NEW users only, not retroactive, the base rank in the guild is now the default on the player details, like alt/main, etc... The reason is that now that ban lists, and custom notes and so on all have their own threshold filters and as such, with much tigher sync controls existing, it makes since for players to share data with each other by default. I say this as it seems 9/10 players that install the addon NEVER bother with trying to change any default configurations, thus they end up not sharing anything. This was originally only heavily restricted by default due to an imperfect process with less filters.

**BUGS**

* BUG1: Players were unable to click player alt names to bring up their details, in the list. It should work again.

* BUG2: Custom Note spam was only partially previous resolved. If you cleaned up your notes using '/run GRM.ClearCustomNoteMatches("Matching Text")' then if the OTHER person in the guild did not, you would proceed to immediately resync and receive all of those notes again. So, unless ALL players in the guild used the tool, you would just keep getting the data. This now ensures that a proper timestamp gate is in place to prevent accepting outdated data.

* BUG3: Fixed an issue with compatibility with backups for guilds players haven't logged into in a LONG time with OLD databases...

* BUG4: Fixed an issue where the backup tab wouldn't load any info for some players.

* BUG5: Removed chat spam when removing lines from the log... accidentally left debug chat msg from last patch

* BUG6: If the player had rank restrictions saved at say, the lowest rank, then the GM removed the number of ranks in the guild from 9 to 8, the player would need to manually reconfigure the sync in the settings. Now, it is done automatically if the ranks have been modified or deleted, it will push to the next equivalent "lowest" rank when it would previously bug out.

* BUG7: If the player had returned from inactivity within the last 60 minutes, the addon was waiting until they were at least offline again for 1 hr.

* BUG8: Fixed a HUGE issue where people that had used the "sync alt join dates" feature was not properly reporting all anniversary dates as they arrived, especially if you had it unchecked to limit to only the main, and in some cases it would only report one player, not even necessarily the main.

* BUG9: If the player checks the box to ONLY display "main" anniversary dates now, the event log should properly update to only show the main anniversaries.

* BUG10: It was checking the scan every 10 seconds regardless of the time interval on scan settings. Oops!

* BUG11: Fixed an issue where if a player joins the guild it could trigger a parallel scan, wasting resources, potentially causing double report conflicts

* BUG12: Fixed a significant issue where a double report of a promotion/demotion change could go to the log.

* BUG13: I found one more instance where names added to friends list to check online status, then removed, were still announcing to chat. This is removed now. I have extensively tested it now.

* BUG14: Fixed a bug when updating a VERY old version of the database it would fail as it was not considering the old guildName format.

***FINAL NOTE***
*I am working on a larger feature right now but it's taking me a lot of time, more than I had available. Also, my allergies have been impossible this week, greatly limiting how much time I could look at a computer screen comfortably. Seriously, my left eye in paticular was so bad for 2 days that it was nearly swollen shut from allergies and only Zyrtec is "sort of" helping (typical for this time of the year for me). So, I spent a lot of time off the PC. But, it's coming! Oh and, I got a little distracted with a new side project that is absurdly useless, but I want it. You'll see when it's ready.*


**VERSION 7.3.5R1.1492 DATE: April 13th, 2018**

*Fixed an issue for people that had a bug that seemed to effect people with guilds with rather old databases in the background that were trying to be converted...


**VERSION 7.3.5R1.1491 DATE: April 13th, 2018**

**MAJOR DATABASE LOOKUP CHANGE**

*Recently it has come to my attention that there is a flaw in the API call to Blizz's server to obtain the "Guild Creation Date" - For some reason, a few weeks back when the daylight savings change hit, all of a sudden a few guilds started reporting that they lost their data, except in the backups they now had 2 guilds, both of which being 1 day off. Thus, it seems likely that Blizz did not consider, accurately, timezone translations perfectly, and as a programmer myself, I find this kind of understandable. So, it is likely that guilds that were created within maybe 1hr of the day change likely might experience this issue where all of a sudden the API call from the server is reporting your guild as being created 1 day different. You can see the info yourself with a /ginfo*

*Well, I could just easily look into it and find guilds with the same name and parse out the dates and see ones 1 day apart, and then fix that, but ultimately I wanted a better solution to this issue, one with no exceptions or edge cases. Thus, I managed to discover some buried API, undocumented on any of the unofficial programming sites, on how I could get the server the guild was created on. You see, if I can just tag the server to the guild, that would be the best way to identify guilds uniquely, when before I tied their name to their creation date. This presented a problem since on merged realm guilds there did not seem to be a way to determine which server the guild was made on. Fortunately, I figured out a solution and even better, it is going to process and re-convert all of your databases to be compatible with this new info all behind the scenes. It also changes the way database queries occur.*

*This was a rather complicated process because I now have to consider the old databases that have not been upgraded yet, and have to deal with managing backup information from guilds you have not logged into to parse the server they originated on. So, it took a bit of conditional coding to get it just right, but I did a bit of testing with it and I am satisfied with the result. Thankfully, in 5 months when the next daylight savings happens again, guilds won't be SOL on their data again as their guild creation date shifts 1 day again.*

**QUALITY OF LIFE**

* QoL1: There is now a hyperlink to click when a player comes online, and is requesting to join the guild. Before the hyperlink only existed when it reported initially how many requested to join, even if all were offline. Now, it re-gives you the link when someone logs on.

* QoL2: Tooltip in the options Backup tab now properly scales, and now includes the guildaname in the mouseover tooltip, in case the name-server is so large it is cut off

* QoL3: Guild namechange report in the log is a bit cleaner now.

**BUG FIXES**

* Bug1: Fixed an issue where when adding an alt, instead of epoch timestamping the event, it leaves a boolean. This went unnoticed and is likely responsible for some lua erors during sync

* Bug2: Fixed a MAJOR issue where the "Auto" backup did not save the data properly, particularly for the logs. Manual backup data is finem but the auto-backups had to be reset, sadly. This was NOT an easy choice, but the previous database break was so bad it probably wasnt' worth the effort to retrofit them.

* Bug3: Public/officer notes, for a player with a massive font, should now stay within their boxes.

* Bug4: Noticed an instance where sync could send a message it was starting, then failed for whatever reason, and never re-triggered to check again, thus you end up hanging for a while wondering what happened.

* Bug5: In the options, the edit box to change the number of days to be notified in advance of an event to add to the calendar is now working again.


**VERSION 7.3.5R1.1483 DATE: April 11th, 2018**

**BUG FIX**

*I accidentally had sync disabled on the backend and forgot to restore it for release after testing... So all of your addons would not be able to sync at all. Major OOPS!*


**VERSION 7.3.5R1.1482 DATE: April 11th, 2018**

*NOTE: Due to an error that affected some players in the previous update, where the custom note was added to every player in the guild, I have included a tool here to modify that*

Type this out in chat:

> /run GRM.ClearCustomNoteMatches("YourText")

> "YourText" can be any identifying string to match your custom note. BE SPECIFIC! It is case sensitive. Make sure it is unique to the spammed one.
 

**BUG FIXES**

* Bug1: Sync bug that could occur when trying to sync the alt data, which would ultimately crash the sync. This has been in there a long time. I am surprised it hasn't been noticed til now, but it's critical

* Bug2: Custom note should no longer be copied to ever player (only affected some people)

* Bug3: Tooltips should now ONLY scale within this addon, not affect others.

* Bug4: When doing a '/grm clearguild' in some cases lua errors could occur when refreshing the audit frame

* Bug5: Edge case bug involving sync and when someone has removed and added alts to the same name a LOT of times.

* Bug6: Namechange bug should now be fixed and not englessly spam (though needs better real-time testing)

* Bug7: On deactivating the Roster scan in the options, it should now properly interrupt and deactivate the current scan.


**Quality of Life**

* QoL1: The log now reports the player IF they were promoted when they join the guild. In other words, if someone joins the guild, they may be quickly promoted before you have logged in to log it and now the addon will correctly state they were promoted rather than just log their new rank as their base rank.

* QoL2: Add Alt window should now say "Shift-click" not "shift-mouseover"

* QoL3: Custom note should now properly resert visually in ALL cases when canceling the edit with the ESC key, or any reason

* QoL4: Custom Note window is now correctly alligned

* QoL5: Tooltips for THIS ADDON ONLY can now have their size manually adjusted in the options

* QoL6: All options dropdown boxes are cleaner now.



**VERSION 7.3.5R1.1481 DATE: April 6th, 2018**

**BUG FIX**

* Found an instance where it can crash and get Lua errors because it was incorrectly indexing the new custom note in an array.


**VERSION 7.3.5R1.1480 DATE: April 6th, 2018**

**NEW FEATURE: Custom Note**

* 150 character limit on note rather than the tiny default 31.

* Ability to sync the custom note with guildies

* Custom note sync restrictions can be made per character in the guild, or overall

* Ability to disable custom note sync bother overall, or on a per character basis.

* Details WHO made the modification, and the date of the note edit on mouseover.

**QUALITY OF LIFE**

* Huge overhauls of the "Sync" tab in the Options, with many helpful tooltips and coloring to make sync restrictions and controls more clear

* Sync messages are now a bit more clear as in some cases they were not if one-way syncs were occurring, where the player would send data to all, but restrict incoming to threshold

* The main log search box, if typing too fast it could disconnect a player trying to rebuild the log too many times in a second. There are now protections in place to prevent this for you speed typers!

* Officer and Public notes should now be displayed in the log when new players join the guild. Previously they were filtered out as to avoid spamming the log with join dates. However, if a person had joined the log when the addon user was offline, modified a useful note, it would not announce it in the log. It now will report ALL public/officer notes with exception to the "Joined:" ones

* Dropdown menus for date editing, as well as much of them in the Options controls have been modified, cleaned up, and made more symmetrical for aesthetics. The side buttons are removed, and you now can just click the menu.

* The dropdown menus for date editing in the player window should now properly close with the ESC key rather than closing the whole player window.

* The note/officer note edit boxes should now properly resert if you were editing them and click another player, preventing accidental overwriting of older notes.

* Anniversary announcements in the log now include the timestamp, as well as class colored player names.

* While building the sync feature for the custom note I noticed a few places of the sync process that could be optimized better. Yay (prob won't be really noticeable for most)!

**BUG FIXES**

* CRITICAL BUG!!! Load bug preventing players from loading anything but an empty frame, is now resolved.

* Removing and restoring backups should now work for ALL language clients, not just English.

* Players requestion to join the guild will now properly say "OFFLINE" if they log off after being tagged as online.

* For the final time, for REAL this time lol... Add or Remove friend spam should not be visible and players should not be left on your friends list.

* The addon will no longer try to add more to friends list for online status check they are already at the 100 friends cap. If a player has 25 people requesting to join the guild, but only 10 free spots, it will stop at telling you 10 players online status, with a one-time recommendation to free up your non-battletag friends list, but will no longer try to add more than 100 friends ot the list. They will now say "Unknown"

* Audit Frame tooltip was not properly hiding.

* "Guild Recruits" hyperlink in the text, reporting players who are requesting to join the guild, should now work with ElvUI

* In some cases sync was not full restricting outgoing data, even if the player had it sync restricted. This only applied to the join/promo dates, and alt/main lists, not ban lists

* Also, rank filtering is now a bit cleaner on the backend as a result of digging deep into all of thus.

* Adding events to the calendar should once again sync properly live.

* Fixed an issue whre sync could just hange and do nothing.

* "Show on Logon" checkbox's clickable range was too far to the right and overriding the other checkbox.

* If a player had auto-sync disabled and typed /grm sync for a one-time sync, in some cases it would not properly re-disable and would then be open to continue syncing with other players.

* On resetting an individual player's info, in some cases the alt removed data could linger and mess things up. Lua errors should no longer appear.\

*FINAL NOTE: I didn't get to everything I wanted to. There is still SO much work to be done! This patch was a fairly significant time-sink for me. All of the reports are definitely noted. Some things I did not resolve as of yet. Thank you for your patience!*


**VERSION 7.3.5R1.1472 DATE: March 29th, 2018**

*The addon would not work for NEW users after last update. This is now fixed*

**VERSION 7.3.5R1.1471 DATE: March 29th, 2018**

*Shift click was not working properly on the audit frame...*

**VERSION 7.3.5R1.147 DATE: March 29th, 2018**

**BUG FIXES**

* Bug1: The Allignment Lua error that is crashing the scan, preventing any new information from updating and being saved, is now resolved.

* Bug1: Number of guildies not showing up in the raid window should now properly show again.

* Bug3: Names should no longer be errneously added to the friends list.

**QUALITY OF LIFE**
 
* QoL1: In the AUDIT window, players can now shift-ctrl-click a name for it to auto-search the log for any events concerning them.



**VERSION 7.3.5R1.1461 DATE: March 24th, 2018**

**ADDON BREAKING BUG FIX**

*Ya, your addons should load properly now... Wow, silly bug!*


**VERSION 7.3.5R1.146 DATE: March 24th, 2018**

**NEW FEATURE**

* Feature1: Custom Font Selection!

* Feature2: Font size slider controls! (For minimal adjustment)

**QUALITY OF LIFE**

* QoL1: Red lettering of the line numbers on line selection in the Log tools should now show or clear properly in all circumstances one is viewing the log

* QoL2: Refactored a bit of the load order of the code, and avoided double-processing some of the code upon reloading issues when they don't need to be. It's minimal, but it could shave off a bit of extra processing power use.

***BUG FIXES**

* Bug1: Player friends list should no longer spam the player when people are requesting to join the guild

* Bug2: Names should no longer accidentally be left on the friends list.

* Bug3: More SYNC protections... A major guild introduced me to a new load error gap in protections on double-syncing. It was a flaw in the code that occasionally could trigger a player syncing to disconnect. This resolves it.

* Bug4: Spam message "player not found" should no longer trigger erroneously.


**VERSION 7.3.5R1.145 DATE: March 21st, 2018**

**NEW FEATURE**

*Guild requests window now displays if the person is ONLINE or OFFLINE. Seriously, it is so annoying not knowing if the person requesting to join your guild is online or not. Now you know!*

* Feature1: Notifications now added for when a person requesting to join the guild comes ONLINE. No need to keep checking, just wait til you are notified!

**CRITICAL BUG FIX**

* Bug1: Major sync bug that could cause people to disconnect if there are 3+ people trying to sync at the same time. It would not happen every time, but I found a hole in the gate that has now been fixed.

* Bug2: Some names the custom "Add Ban" window was not accepting even though they are valid. It should be good now.


**VERSION 7.3.5R1.144 DATE: March 19th, 2018**

**MAJOR BUG FIX**

*It has come to my attention that the last update, while significant, also broke a few things... this patch rectifies that, particularly the one that makes the addon not useable lol*

* Bug1: Upon logging in, the player will get a blank addon window, but nothing else, and nothing is tracked. This is due to the frame generating, then all addon logic crashing before being loaded. This should be resolved automatically now.

* Bug2: Fonts were automatically getting changed, due to an oversight. They should not auto-be changed now unless you are swapping to an acryllic or Asian language to support those characters.

* Bug3: Minimap stopped saving its position. This should properly be working again.

* Bug4: Shift-Click on adding a name to the alt-add frame was closing the window IF you had the memberdetailframe (one with promot/demote/kick buttons) open. That side window does need to be hidden due to some taint issues in me not being able to override default in-game click actions, so I just hide it while you shift-click, but the add alt window should no longer disappear.

*I should note, I did a lot of behind-the-scenes pruning and cleanup of the code as well. This might not be noticeable to you, but it is noticeable to your CPU!*


**VERSION 7.3.5R1.143 DATE: March 16th, 2018**

**NEW FEATURES**

*The Log has been updated with quite a lot of new features, all for the goal of allowing you the flexibility to manage it far more than previously.*

***INCLUDED LOG FEATURES:***

* Log EXPORT is now possible! Just copy and paste into another document.

* Numbered Lines is now an option you can toggle on and off

* The ability to purge any range of lines in the log. For example, if you want to delete line 150 to 180, you can! It will also take into consideration your filters, so if you want to remove just those pesky leveling entries, just custom search for "Leveled" and then clear whatever range of lines you'd like.

* Ctrl-Shift-Click mouseover single line removal is now a toggleable feature.

*NOTE: I have determined that the smart/infinite scrolling is just not really that necessary anymore with these new log controls, even though I had plans to add it.*

**QUALITY OF LIFE**

* QOL1: Language Selection is now possible from the general settings menu. Of note, most languages have very minimal localization work done. A counter is given to display how much translated work needs to be done. Any help is welcome.

* QOL2: Ability to add non-Blizz Client languages as well. Have a request? Let me know and I can add ANY language now with my new system.

* QOL3: Sync chat spam should be cleaned up a little. It was overly spamming as of a recent update.

* QOL4: Player is now capable of Shift-Clicking the player window alts list names to copy them now as well, not just the roster window

* QOL5: On promotion Date editing/adding, you could sometimes click through the dropdown menu to the button behind it. This is no longer possible.

**BUG FIXES**

* Bug1: ColorSelection in the options is now compatible with ElvUI, ColorpickerPlus (this also fixes tabbing and selection) and doesn't overwrite their superior color-selection frames



**VERSION 7.3.5R1.142 DATE: March 11th, 2018**

**NEW FEATURES**

* Feature 1: You can now choose the format of the <M> main tagging between 4 (as of now) different versions. Please submit other suggestions.

* Feature 2: You can now choose which color, manually, based on RGB values or the color select wheel, for what you would like that main tag to look like.

* Feature 3: The Color Select window now universally, for anything you wish to use it in the game, has manual RGB values. Before these did not exist and are unique to this addon.

**QUALITY OF LIFE**

* QoL1: The Color Picker Window is now moveable (before it was static and stuck in place in the center of the screen)

**BUG FIXES**

* Bug1: The search box in the Log was not resetting properly if you tabbed off it or closed and opened the window, but the log was still resetting. The whole process should now work appropriately

* Bug2: The Autobackup of the database time-interval would default to once per day if a person "Reset to Defaults" all of the addon settings. It was supposed to default to once per week, or 7 days.


**VERSION 7.3.5R1.141 DATE: March 9th, 2018**

**FEATURES**

* Feature 1: The LOG is now SEARCHABLE!!! (With a count now on the log of how many entries visible)

* Feature 2: Player SYNC now has a new option! You are now able to choose to share your data with the whole guild, so all players can take advantage of it, yet restrict incoming data to a rank threshold, or to keep it how it has been.

*Of note... coming features include an option to export the log, as well as smarter scrolling with partial log loading (like 200 lines at a time until you scroll far enough it will load more)*

**Quality of Life**

* QoL1: When Player is hitting ESC key and both the mouseover window and the core addon "log" window are up, it should now more cleanly and properly close each window sequentually.



**VERSION 7.3.5R1.140 DATE: March 8th, 2018**

**BUG FIXES**

* MAJOR BUG!!! Major issue with the backup database. You can read the explanation in the chat on update. It makes me sad, but backup database needs to be wiped due to a massive critical flaw in build design. Very much apologize for this but it should be good now.

* Bug2: Fixed an issue where some settings were not saving properly, like hiding the minimap.

* Bug3: Backup window, the Number of Guildies display was misaligned and should now be properly spaced.


**VERSION 7.3.5R1.139 DATE: March 7th, 2018**

**Quality of Life**

* QoL1: New tooltip on the backup window when mousing over the guild. Option now included to purge that guild from your database. This is necessary for people who are using up memory for guilds they are no longer in and so on.


**VERSION 7.3.5R1.138 DATE: March 6th, 2018**

* BugFix1: Fixed an issue that could cause 2 syncs to occur at the same time which could cause a disconnect for a player. Doesn't happen often, but with many using addon there is a chance the timing could be just right to erroneously trigger it.

Note... lots being worked on, this is just a minor update to resolve this bug.


**VERSION 7.3.5R1.137 DATE: February 28th, 2018**

**NEW FEATURE: Auto-Backup**

*The addon will now auto-backup your guild data. Of course, you can manually back it up as well. The auto-backup can be set to a custom interval and it will keep a max of 2 unique auto-backup points per guild. It defaults to backup every 7 days.*

**QUALITY OF LIFE**

* QoL1: Ability to "Check All" has now been included in the Log filter options

* QoL2: ElvUI "AddOnSkins" plugin has been updated to include the backup frames as well

**BUG FIXES**

* Bug1: Backup was indexed wrong and was skipping over a guild. In other words, if you were in 5 different guilds, it would only show 4 in the backup window.

* Bug2: If the player had not logged into an old guild in a log time, to update the "Creation Date", the backup frames will now say "Unknown" - Log into that guild to update that info.

* Bug3: Guild namechange was not transferring all of the data properly under the new name. It now should properly detect and transfer the data.

* Bug4: Misc. Lua errors here and there have been quashed. TY for reporting!!!


**VERSION 7.3.5R1.136 DATE: February 23rd, 2018**

***NEW FEATURE***

*Guild Database Backups! That's right, scan through every single guild, on all of your toons account wide and add, delete, or load backups! It backs up everything, including the log.

**Things Not Yet Implemented, but soon Will be**

* Ability to do account wide backup...

* Ability to reset all data with one button

* Safety confirmation to ensure you want to restore from that save point.

* Auto-save point...

*Of note, the backend is already written for most of this, just need front-end implementation. Just been very busy in RL. Getting there.

* Bug1: Guild Namechange detection should now work properly with the new data change check as well...



**VERSION 7.3.5R1.135 DATE: February 20th, 2018**

**BUG FIX**

* Bug1: If you ever cleared your log since patch 1.130 you broke the database. Well, I broke your database because I messed up some code! This fixes your database so you can once again see your log lol

* Bug2: Lua error was crashing sync. Fixed!


**VERSION 7.3.5R1.134 DATE: February 13th, 2018**

* Quick fix for major flaw in previous release that crashes the TimestampToEpoch function, thus making sync and data log save impossible for many players...

**VERSION 7.3.5R1.133 DATE: February 13th, 2018**

* Fixed major database issue in regards to the guild creation date. This will resolve some of those issues.

**VERSION 7.3.5R1.132 DATE: February 12th, 2018**

* Fixed an issue when mousing over player alts names that could occur in a lua error

* Fixed an issue when removing an alt from the guild. Due to previous issues, if a player had been removed from the guild, but it crashed in the process, alt data might still be lingering in the bakcground. This can cause the gkick/left reporting to no longer work as it would result in a check against a null database. This cleans up the old database and resolves that issue.


**VERSION 7.3.5R1.131 DATE: February 11th, 2018**

* Bug1: Fixed a Lua error in regards to join/promo dates that I introduced this last patch in relation to the GRM.TimestampToEpoch() function

* Bug2: Several non-English clients were not parsing the guild creation dates properly. This has resolved that issue for ALL languages

**VERSION 7.3.5R1.130 DATE: February 10th, 2018**

*The Bug Squashing Update!!! And many other Quality of Life improvements. Of note, I have a major FEATURE release coming soon, I just couldn't get it done in time.*

**QUALITY OF LIFE**

* QoL1: The Log will now state the correct date the player joined the guild, was promoted, demoted, or left/quit the guild. If it is unable to find the date because this happened before is visible in the log, it will default to current day, but sync will not take precedence on that.

* QoL2: Added timestamps to the log when promotions/demotions occur whilst online

* QoL3: Hide the minimap with a CTRL-SHFT-CLICK action

* QoL4: Minimap should now properly save its position

* QoL5: On Logon, the left/kicked player info was still spamming the chat window. It should just post to the log now, though it may take a few extra seconds to properly update and receive all the left player info

* QoL6: Plugin for ElvUI "AddonSkins" is now fully updated, with a couple fixes to some overlapping frames.

* QoL7: Addon minimap position will now be unique to each player, whilst all the other addon settings will be shared. Before it was adjusting the minimap position on all alts in guild.

* QoL8: Namechange now properly class colorizes the names in the log.

* QoL9: The Log now sorts the newly joined guildies in a cluster of all those who were able to be determined who invited them.

* QoL10: Timestamp in the public/officer note should also reflect the accurate date they joined now.

* QoL11: It now says "Unknown" in the Ban List if the player was added to the ban list, yet was never in the guild, thus never had a previous rank

* QoL12: Sync throttle speed is being reset due to some issues that crashed people's sync speed to a painfully slow 10%. New logic added to protect universally against all backend comms. This eliminates the need to listen for specific addons and cross talk and instead looks at the global pool of messages as to control the throttle from being disconnected tighter.

* QoL13: New debugging utility: If you get disconnected... log back in with addon on, maybe sync disabled, and type: /run GRM.DebugLog(number)  -- the number being the number of lines of info you wish to see. This is mainly for addon dev use, so I will not include it in the help or slash commands.


**BUG FIX**

* Bug1: "Show on Logon" UNCHECKED should no longer bug out the window. Previously, if left unchecked, it would overlap all the options panel frames.

* Bug2: Join Dates should now sync properly, as before there was an issue with current date being added as the join date, then overlappy all sync info erroneously.

* Bug3: Players no longer show the <M> on their own toon online in chat, as they know their own.

* Bug4: Sync addon settings should now properly be disabled by default. This caused a lot of problematic resetting and syncing of settings when logging on different alts. It works properly now, but you may need to review some of your settings.

* Bug5: Right click on the minimap, if not in a guild, should no longer error out.

* Bug6: Minimap should now properly save its position between sessions.

* Bug7: Addon window was not properly loading on logon if player had a check in the box to load. It would take FOREVER! It is better now :)

* Bug8: The ESCAPE key now properly exits the officer/public note, or closes the player Info window, rather than exiting the core GRM window first.

* Bug9: Addon settings should now properly sync when a new alt of yours joins the guild, to the settings of your alts already in the guild, if they have the setting checked to sync.

* Bug10: Players using the Greenwall addon likely saw a decreasing speed of their sync process over time. This was due to a bug. Watching for Greenwall is also no longer necessary as the addon now catches all backend crosstalk between addons.

* Bug11: Fixed a MAJOR bug that affected like less than 0.1% of the population lol. If the player was a member of the same guild, same exact spelling, same faction, but on different servers, it could mess up and load the wrong database. this is now resolved. This required an extensive rework in how the database managed the guild, as well as mapping their "creation dates" and tagging them now, to differntiate them. This still did not differentiate them enough, as an even further edge case the player could be in a guild on different servers that were both created on the same day. Thus, in such a case, I dug even deeper and enabled a full database scan to find the matching guild the player belonged to.



**VERSION 7.3.5R1.129 DATE: January 30th, 2018**

**BUG FIX**

* For some guilds the promo dates were causing a Localization Key error, not finding it, due to a parsing error. This cleans up your database.

*Note, due to the nature of this bug, this will also automatically set to only sync with those with latest update, to prevent a reversion of syncing with bad data. PLEASE ENCOURAGE THEM TO UPDATE ASAP!!!*


**VERSION 7.3.5R1.128 DATE: January 28th, 2018**

**Minor Fix**

* The public and officer note would clear the ability to edit/add them after a few seconds. This was causing some minor errors, but also made it hard to change notes. VERY ANNOYING! This was a new bug added in 1.126 and a slight oversight.

**VERSION 7.3.5R1.127 DATE: January 28th, 2018**

*Minor Update*

* Cleaned up some settings info... fixed it to also be version 7.3.5 not 7.3.2

**VERSION 7.3.5R1.126 DATE: January 28th, 2018**

***HUGE USER EXPERIENCE UPDATE***

*Note: There is still a TON to do, but I knocked out a huge amount of busy features in this update that have just been piling up.*

**NEW FEATURES**

* New1: Players can now sync alt dates with the click of a button! Rather than choose each alt manually to set the date, you can choose to sync in 3 ways: To the alt with the earliest join date, to the main, to the currently selected player

* New2: Minimap Button has been added! Just right-click and drag where you want it!!! (or hide it)

**QUALITY OF LIFE**

QoL1: AddAlt "autocomplete" is now significantly smarter. It will not just alphabetize it, but will do partial word matches to names, it color codes the names to their class, and if they are already grouped as an alt/main it indicates it with <A> or <M> tags

QoL2: Options Window has been a bit overhauled, with sub-tabs for each category. While they are mostly "empty" now, there is a lot of room for further customization as needed as more features are added without getting too cluttered.

QoL3: Players can now Globally sync the addon "settings" among all their alts within the same guild just by putting a check in the box. This syncs per client, so multiboxers will need to check the box for each account.

QoL4: Right-Click the sync speed slider to reset it back to 100%

QoL5: Scroll slider bars now function properly, the way the built in roster does. Clicking them now only moves the bar incrementally rather than jumping the bar to the position of the cursor.

QoL6: The core player detail window now just moves out to the side without hiding when the user clicks on a roster name to bring out the promote/demote/kick window

QoL7: The player no longer displays the main tagging on their own toons, since it is assumed the player knows their own alts!

QoL8: The audit window now has a new button allowing "unknown" to be included in the "complete/incomplete" filter

QoL9: Add an informative note to the "Add to Calender Events" tab, if the player does not have guild permission to add events to the calendar, the addon now informs them of it.

QoL10: ElvUI cleaned up a bit further, addressing a few minor allignment updates, as well as some compatibility issues. Merge request has been sent to addon dev.

QoL11: Several, and I mean several misc little things here and there... from allignment, to tiny bugs, to lots of time sucking things worked on I won't mention in their entirety.

**BUG FIXES**

Bug1: Sync should no longer trigger twice back to back when a player with the addon installed joins a guild

Bug2: Broken settings was the cause of an issue in regards to players that try to open the addon window and it was crashing... This has been resolved. For some players they may need to do a one-time /grm hardreset. But, the issue should not return. This will be noticeable as it will cause some alts they log into to crash the game, whilst some others it is just fine. This is 100% related to an old update that failed to consider a couple of factors upon updating some deprecated features, thus breaking their addon in certain eventual circumstances. This has been fixed.

Bug3: Fixed issue with the hex color code being added to Anniversary event description on the calendar add events.

Bug4: Fixed an issue where if a player is automatically removed from the Events list because the time of the event has passed without the player adding to calendar or removing from the list, it could error in certain circumstances.

Bug5: Fixed an issue where sync message was stating the wrong person was adding an event to the calendar.


**VERSION 7.3.2R1.125 DATE: January 13th, 2018**

***MAJOR ANNOUNCEMENT***

*Full Localization templates are now in the addon folder under "locales." I need any help that you can in getting this work translated. It's a lot of work and I don't expect any 1 person to do it all for any specific language. But, any bit that you can add, I will make sure you get the credit and I will incorporate it. Instructions are in each of the Lua files. I wrote my own, 100% in-house localization script, that is significantly leaner than using a publicly available library, like Ace. This also allowed me to customize it a bit for this addon. This was a significant job to put together these templates. Now, all we need is the remainder of the translation work done. Please just upload the file link and send it to me on Discord for any work that you have done. THANK YOU!!!*

**NEW FEATURES**

* New1: The player in chat will be tagged with their "main's" name. If they are on their main or their main/alt status has never been configured it won't show anything, but if they are a main or an alt, this will mark them as such :D - This affects guild/officer/party/raid/instance/whisper chat from guildies

* New2: Throttle Control slider in the options. Some people might have some sync/disconnect issues. If you find yourself disconnecting, it can be for a variety of reasons. Try throttling the sync speed back a little and see if that resolves it.

**QUALITY OF LIFE**

* QoL1: The addon no longer spams your chat window with the updates when logging in. It will inform you of live updates, of course, but you can always just look at the log for the mass of changes when logging in.

* QoL2: The DEL key now properly updates the character count on the note/officer note, MOTD, and guild info edit boxes.

* QoL3: On selecting the MOTD, you now will auto-highlight the whole text. I know, it's minor, but I don't have to click and hit ctrl-A anymore :D

* QoL4: Player names should now properly match ALL log messages to their class color, as well as sync messages, and nearly all aspects of the addon.

* QoL5: On the backend UI Globals are now finally 100% cleaned up into nice and neat, fast, tables. Keeping down on the global code clutter.

* QoL6: Ban List player ranks should now allign properly

* QoL7: New Lua class to hold specific update/player patch data. Cleaner, easier to debug.

**BUG FIXES**

* BugFix1: "Reset Defaults" button should now properly work. I must've broken it recently lol

* BugFix2: Somewhat huge bug I noticed that could cause players to end up with a lot of repeat player copies. It seemed to only affect x-realm guilds. So, I did 2 things. I resolved this bug so it will not repeat, and I wrote a script that will parse through your database and clean it all up if it affected you. So, you don't have to do anything. yay!

* BugFix3: More misc. Lua reports on some edge cases here and there.


**VERSION 7.3.2R1.124 DATE: January 2nd, 2018**

*HAPPY NEW YEAR!!!!!*

**NEW FEATURES**

* New1: If a player leaves the guild, and they transferred from the server, the addon will now inform you that the player is no longer on the server, in the log. Thanks @Polgara for the suggestion!

* New2: There are 2 new buttons on the Audit tab to set ALL incomplete promo/join dates to "unknown" (or undo the process)


**QUALITY OF LIFE**

* QoL1: Mouseover distance to the right of the chat/log filters, should now only trigger over the checkbox. They used to be very far wide right.

* QoL2: The Ban List will now display the players that are banned that are still in the guild at the TOP of the list, rather than the bottom.

* QoL3: Sync Messages stating that sync is starting should no longer display if everyone else with the addon online at the moment is not compatible to sync with, be it rank permissions or other reasons.

* QoL4: The Addon Users tab now states "Their rank too low" if another player's rank is below your threshold, as before the "Rank too low" some thought it was referring to their own rank.

* QoL5: Promoted/demoted messages are now cleaner and more concise for merged realm guilds.

* QoL6: Event Calendar Manager Buttons are now in the proper position.

* QoL7: "Unique Accounts" number is now fully localized so ALL non-English clients will be able to see this number

* QoL8: Cleaned up some allignment issues with ElvUI AddonSkins (and pushed new updates to the addon dev as well to incorporate)

* QoL9: New HardReset slash command /grm hardreset  -- This will not just wipe the saved data, it purges all, including settings, to be as if addon was just installed day 1. Be cautious. No warning on use. Mostly for quick emergency reset just in case.

* QoL10: If player is in a mega guild that uses "GreenWall" to share comms between all guilds, that use a signigicant amount of backend comms that goes to that internal server cap that can disconnect you, especially if many people chatting in gchat at same time. This addon now detects if the player has that addon loaded, and adjusts the comms appropriately to take into account the extra cross talk.


**BUG FIXES**

* Bug1: UI Bug where if player clicked "alt" name on the list of alts, you'd get overlapping frames if editing/adding a join/promo date

* Bug2: Noticed if reporting a namechange, if it couldn't identify which player was the namechange, it would reuse that for all namechangers. This would not be noticeable in most cases, but if you logged on and 2 or more namechanges happened in the guild, it would trigger the bug spam in the log, hence I never noticed it til recently.

* Bug3: Fixed an issue where non-English clients the player window would appear empty when looking at Guild Roster professions window.

* Bug4: Fixed major bug that avoids Lua error and the addon crashing out when a player joins a guild with addon installed

* Bug5: Fixed several other misc. Lua errors that have been reported and are mostly circumstantial cases. Thankfully we are knocking them out. Thank you!


**VERSION 7.3.2R1.123 DATE: December 23, 2017**

***BUGFIXES***
*Ya, my 330am release of my last update I somehow was half-asleept and pushed the update, but a few things in it I forgot to merge, I jsut thought I coded them and merged them. Nope! Sync likely would fail for many as a result. Not anymore!*


**VERSION 7.3.2R1.122 DATE: December 23, 2017**

**Continuing Updates on the Audit Log**

**FEATURE UPDATES**

* NEW "Unknown" feature - Don't know their join or promo date? Set it as unknown. Of note, this data does not yet sync.

* The unknown tag will feature in the audit window as a goldish orange

* New checkbox in the Audit Window for filtering so you can choose to see only incomplete guildies

* Additional useful info in Audit window: Num of unique accounts reflected next to number of mains

**QUALITY OF LIFE**

* Frame sizing has been adjusted slightly to be more how it was originally, as this larger frame just feels a bit bulky, right?

**BUG FIXES**

* Bug Fix1: Fixed a circumstance where Lua error could occur when syncing alt data

* Bug Fix2: Fixed circumstance where Lua error could crash sync on join date syncs in some circumstances.

*NOTE: I have heard reports of "double" reporting in the log, or reporting of something be removed and then re-added. I am still investigating this. I have a suspicion what is happening, but I have been having trouble recreating it. I will have this fixed sometime soon.*


**VERSION 7.3.2R1.121**

**Minor Bug fix** -- for players with very long server names, they would wrap the text and form a 2nd line, messing the allignment on the Audit Frame. This is fixed.

**VERSION 7.3.2R1.120**

**BUG FIX!!!**

*Ya, notice your screen is locking up momentarily after sync starts? Oops! I accidentally a code and made it so you were refreshing those new audit frames for every sync data sent lol. Ya, that'll crash your game. It is good now.*


**VERSION 7.3.2R1.119**

***TWO BIG UPDATES!!!***

**UPDATE 1: Guild Audit**

*Players can now open the audit tab and it will give an accounting of everyone in the entire guild, whether they have their join date/rank promo date/main or alt status determined. To take it a step further, the player can click on their name, if they are missing info, and it will immediately open up the player window where you can add the info together. It updates on the fly*

**UPDATE 2: UI Redesign**

*Tab system for the main roster window. Many other misc. features added as well, like some more mouseover tooltips on add events to calendar window and user sync info.*

**QUALITY OF LIFE**

* QOL1: Minimum Level filter now included on the leveling spam.

* QOL2: On scrolling, hold CONTROL down to scroll super fast. Hold SHIFT to immediately go to top or bottom

* QOL3: Class color coding of the player's names now added everywhere as well.

* QOL4: Online/AFK/Offline status now updates live on the player frame

* QOL5: /grm or /roster both work for slash commands now.

* QOL6: Added compatibility for ElvUI "AddOnSkins" plugin and committed it to the addon dev.

* QOL7: The Right-Click notification system, for player status updates, is now far more efficient and runs independently of the Scan for changes check (as some players may disable it, yet still want to be notified if someone comes back from being AFK).

**BUG FIXES** (so many!)

* Bug Fix1: If Officer/Player note was changed, it was incorrectly reporting it changed from a number.

* Bug Fix2: Major alt-sync issue where if you removed a player listed as an alt, then sync'd with another player they would all reappear! woops! lol

* Bug Fix3: Sync issue if the "syncLeader" behind the scenes goes offline, after having already received the data from another player, whilst in the brief moment of parsing it out, if that player goes offline, the other player would wait indefinitely for callback and ignore all other comms, never completing sync or retrying with another player. This is resolved!

* Bug Fix4: The Log should now properly appear on logon if you have it set to only appear with changes.

* Bug Fix5: Resetting Defaults in the Options should now properly reactive scanning for roster changes

**FINAL NOTE**

*Yes, still tons to do. I REALLY wanted to get a minimap button out with this release, but I just didn't have time. Several other requests from you guys, just know that I have them written down. Please stay on my case about them all! Shoutout to AddOnSkins dev for merging my gitlab commits so quickly for his addon as well.*

**VERSION 7.3.2R1.118**

* Bug Fix1: If guild had more than 250 members, addon would fail to report and build profiles for any new members or acknowledge leaving members properly

**VERSION 7.3.2R1.117 - DATE: 13 Dec, 2017**

* Bug Fix1: Lua error would occur if addon was suggesting player to be removed from guild due to inactivity. New bug introduced when I removed the stutter. Oops!

* Quality of Life: If the mouse was stationary, but you scrolled up and down in the log, the player window would not update until you actually moved the mouse. Now it does.


**VERSION 7.3.2R1.116 - DATE: 12 Dec, 2017**

***STUTTER ISSUE FIX***

* Stutter issue is now resolved on mega guilds. Tested on 950+ member guild with no more noticeable stutter, I mean, like 99% reduced.

* Fix minor reporting issue on changes that could delay the report until the next loop'd scan.


**VERSION 7.3.2R1.115 - DATE: 11 Dec, 2017**

***EVEN MORE DISCONNECT AND LUA FIXES LOL***

***STUTTER ON SCAN FOR MEGA GUILDS ABOUT 95% REMOVED***

*Well, I guess the massive sync speed update is not without hiccups. I just KNEW things were not going to be ready yet, even though testing on my end said it was good. So many things...*

* Sync should not properly not disconnect you lol.

* Lua error fixed on nil value (it was sending a blank message due to conditional error)

* Ban list sync particularly was having some issues. This is cleaned up now. This was more of a pain than people realize. Here is why. Let's say you are new to the guild, and you want ban list sync'd to you. Well, you don't have metadata profiles built on missing players because they were not in the guild when you were. However, if they rejoin the guild, since they are on the ban list, you need to rebuild their profile with old info, thus you too can trigger active monitoring of erroneous invites. This is problematic though since you don't want a bare template. So, addon checks if the sync person on ban list is in your leftPlayer database, and then if not, it syncs their metadata to you. Well, getting this all to sync right, particularly with my new sync method, was an absolute pain in the... you know. It should now be smoothed out properly. I hope!


**VERSION 7.3.2R1.114 - DATE: 11 Dec, 2017**

***ANNOYING DISCONNECTS FIXED***

* Sorry guys, the isssue did not present itself for myself and my smaller guild, but it did in larger, with the new speed sync changes. This should not kick you anymore, I hope. /crossFingers


* Accidentally included my debugging version - FIXED!


**VERSION 7.3.2R1.113 - DATE: 10 Dec, 2017**

* Accidentally included my debugging version - FIXED!


**VERSION 7.3.2R1.112 - DATE: 10 Dec, 2017**

***HUGE NEW FEATURE***

***Massively Increased Sync Speeds:** First off... WARNING! This will not sync well with others and will send them a lot of Lua errors if you do not have the check in the box to only sync with current addon users. Just a warning. Yes, it is still not instant, and unfortunately, it never can be. The reason is that Blizz limits messages across the server in comms that cna be no larger than 254 characters. If you do them too fast, you get disconnected. If you try to send a comm 255 characters or higher, you will disconnect. So, I have no choice but to throttle the speed of them. Now, the new sync method is I fully pack every single comm to capacity by putting them altogether in a giant string, and splitting up the comms with obvious markers for breaks in data and characters and so on. So, I jam pack each string and comm to its full capacity then unpack the data on the other end. It takes a bit more computational power (albeit minimally), but the time savings are massive and worth it.*

* 8x-10x sync speed increase. It really is faster!

**NEW FEATURES**

* Clickable link notification now if a player requests to join guild (opens recruit window)

* New Option to only "Show on Logon" if there have been changes.

**QUALITY OF LIFE**

* Message Headers with "-----" have been removed for allignment purposes. Looks cleaner now

* Adding player to ban list is a little smoother

* SyncInfo window fonts allign properly with all scaling/resolutions.

**BUG FIXES**

* Addon had allignment issues with ElvUI's "AddOnSkins" plugin. Built compatibility and sent it to addon dev. It will be implemented soon.


**VERSION 7.3.2R1.111 - DATE: 2 Dec, 2017**

*Note: I have a lot of little misc fixes here and there that I forgot to record as I was knocking them off the "to-do" list, so I will just mention a couple I remember*

***QUALITY OF LIFE***

* QOL1: Officer and Public Note changes now report on a single line to the log for all future changes

* QOL2: To avoid chat spam, player requests to join the guild now tell you how many requests there are rather then displaying all requests

* QOL3: Slash command '/roster recruit' will be used to open the window that shows how many recruits there are.


**BUG FIXES**

* Bug Fix1: Sometimes it would erroneously report a player Coming back from being offline, even though they never returned. This is now fixed.


**VERSION 7.3.2R1.110 - DATE: 24 Nov, 2017**

***MAJOR SYNC ISSUE BUG FIX***

*Ok, I won't get into the technical details, but suffice it to say a few updates back I kind of went in and did some behind-the-scenes updates, optimizing the process, improving some speed aspects of the sync, making the process leaner and so on. I also apparently broke it some aspects of it lol. This was not an easy fix. This was pretty gritty actually, largely because of how much extra work I need to do to actually get a dynamic, retroactive sync working, with this much data, within the limits of this API, and within the limits of throttled server comms by Blizz, all while doing it in a way that is seemless and invisible to the addon user. Welp, ya, I broke a few things without realizing it and I believe I have them working now. Yay!*

* *Of note, I have not yet tested this beyond 5 accounts syncing in a large guild, and it seemed fine. I will need people to report back and if there are issues, so we can get them resolved ASAP!!!*

**QUALITY OF LIFE**

* Player's full name-servername appear in the log when they leave or are kicked from the guild (for you xrealm people!)

* Furthermore, the class is now apparent in the log for the leaving player and any remaining alts

* Ability to clear just the guild data with '/roster resetguild' or from the options

* Options slash command buttons are much more obvious.

**BUG FIXES**

* Everyone appeared online in previous update. Silly bug! Status should now display accurately.

* Again, sync issues should hopefully be resolved now. I have not done a lot of testing, but I have done some. I will need reports.

*Final Note: Not a ton of major updates here, though I am working on a large project. My focus was 100% spent on resolving the sync issue for people. Thank you for your support in reporting issues and patience for me getting them fixed!*


**VERSION 7.3.2R1.109 - DATE: 19 Nov, 2017**

* OOPS! Uploaded sync.lua file with the sync helpers still in it (my test version). You would be getting a ton of sync spam as it transmitted data. This is hidden now and should not be scene lol


**VERSION 7.3.2R1.108 - DATE: 18 Nov, 2017**

*Very important Sync bug fix that I broke in a recent update*

* Bug Fix1: Sync would only work with 2 players in any guild larger than 50ish memebrs. If more than 1 person was online with the addon installed, it would fail endlessly and keep retrying. How annoying! Simple fix really, It just made the mistake of testing my new error checks worked properly in a guild that was too small and not a larger guild which faces throttle sync issues across the server.


**VERSION 7.3.2R1.107 - DATE: 15 Nov, 2017**

*I was trying to get another big project finished, but it's just not quite ready. I will have more time this weekend to work on it. So, very minor fix here since this is an annoying bug.*

**BUG FIXES**

* Bug Fix1: If a player had the "Add Join Date" to public/officer note disabled, it would report to the log that the note was changed, but then it would report the note was removed because it would scan the data and show it never actually was. This should no longer do it.


**VERSION 7.3.2R1.106 - DATE: 12 Nov, 2017**

**Minor Feature**

* Ability to add "Join Date" to either the officer OR public note, in the options window. It will auto-default to public note if you use certain addons (like "epgp")

**QUALITY OF LIFE**

* More live updating frames. For example, the zone timer will now update live the time passed.

* New slash command to bring up the ban list:  /roster ban or banlist

* Buttons now more properly alligned in the options window.

**BUG BIXES**

* Bug Fix1: Issue with namechange detection for very rare cases when players have literally all the same information (same class, lvl, achievement pts, guild rank, guiild rep, same notes), this event actually occurred and got reported to me. Now, the addon will detect if more than 1 player matches for namechange and handle it.


**VERSION 7.3.2R1.105 - DATE: 10 Nov, 2017**

**BUG FIX**

* One minor quick fix... if you tried to remove a ban from a player, you'd get a Lua error and frames would not update. FIXED!


**VERSION 7.3.2R1.104 - DATE: 10 Nov, 2017**

**NEW FEATURE**

*Player can now take advantage of manually adding a player to the ban list, not just when gkicking someone. This had a TON of things that needed to happen behind the scenes, so what might seem like such a simple feature on the front end was immensely time-consuming.Huge sub-project really due to the auto-generation of a manually added metadata profile and so on.*

**QUALITY OF LIFE**

* Addon now detects the "EPGP" addon and will automatically disable the adding of join dates to officer notes with the user needing to manually go into the settings. It is an immensely popular addon, so this helps avoid any officer note conflicts.

* Ban List sync tweaked a bit for some more edge cases I discovered.

* Modularized a bit of the UI loading to improve performance. It's already quick, but now it's quicker.


**VERSION 7.3.2R1.103 - DATE: 7 Nov, 2017**

**NEW FEATURE**

*"Ban all alts too" has now returned, sort of. While you no longer can gkick them all with the click of a button, as you could in pre-7.3, you now have the option to ban all of the alts of the player as well, so when you gkick the one player, it also bans all their alts. They immediately show up in the ban list as "still in guild" so you know who to still kick (plus the given reason will all be the same)*

**BUG FIXES**

* Bug Fix1: Sync is working again! I broke it without realizing it for like 90% of guilds out there. Oops lol

* Bug Fix2: Sometimes ban list could erroneously purge a name from it. Well that's not good! This shouldn't happen anymore.

* Bug Fix3: Blizz made another stealth change, so I had to adjust the "click on alt name" feature. It no longer attempts to scroll the roster to position of player.


**VERSION 7.3.2R1.102 - DATE: 5 Nov, 2017**

* Bug Fix1: Server Sync would not work if you had a server name that included a hyphen (like EU "Azjol-Nerub"), as it didn't parse properly. Fixed!

* Bug Fix2: Some even tighter controls on sync, if a player's sync fails (like if a player logs off in the middle), or for any reason, it will re-evaluate the sync leadership structure, as well as the que. It will even determine the cause of sync failure, even notify you if player is offline now, and so on.


**VERSION 7.3.2R1.101 - DATE: 30 Oct, 2017**

**QUALITY OF LIFE**

* QOL 1: SyncInfo window now states a "helper" if you have sync disabled in the options or not.

* QOL 2: Addon will now trigger a re-sync automatically after doing a full reset (/roster clearall), rather than needing to manually

* QOL 3: Sync sometimes could fail in certain occasions. Not a big deal as it would reset itself the next time someone logs with addon installed, or you /reload. However, in some edge cases you could get stuck in sync limbo, never acknowlodging it failed. This could happen say, if a player logged off in the middle of a sync in certain cases. Not always, just some circumstances. The addon is now significantly smarter at how to handle resync on failure, as well as checking things like online status of the players and so on.

* QOL 4: Reset Defaults button is now included in the OPTIONS panel.

**BUG FIXES**

* Bug Fix1: Slight modification to the font system for localization support in a more streamlined, server-side deciding way

* Bug Fix2: Lua error could occur on first login due to guildName loading order for ban list. Minor issue, just needed to load proper order, onshow



**VERSION 7.3.2R1.100 - DATE: 27 Oct, 2017**

***HUGE UPDATE*** *Note: You need to encourage your guildies to upgrade to latest version or else ban list will not sync. I'd even highly recommend in the options restricting sync to only people who have latest version. Some people with really old version might get hit with a Lua error or two as they try to talk to your addon. Again, encourage people to upgrade. It's worth it!*

**NEW FEATURE 1:** *Localization Framework has been built*

* Fonts have all been implemented for ALL languages, including support for Russian, Korean, Mandarin (Both Chinese and Taiwanese). No more "???"

* Some translations have already been implemented that I manually did on my own, just pulling from the built-in scripts. I am not going to focus on the full localization as of yet, this is more quality of life starting.

* This also resolves many issues for people using non-English clients and should provide and overall better user experience.


**NEW FEATURE 2:** *Sync'd Ban List*

* Custom Rank restriction on the Ban List. It seems like it would be prudent to allow widespread sync on general guild info, like alts and so on, but have tighter restrictions on who can modify the ban list. I personally have guild-wide sync, but officer only ban list permissions.

* Full retroactive Ban SYNC. So, new officer? They will be sync'd with up-to-date list, including all people who were banned prior to them even joining the guild, as long as someone with addon stored the info originally and sync'd the data.

* Ban List Custom UI window - shows name, rank when banned, and the date of the ban.

* Ability to remove people from ban list.

* Live frame updates, on both sync and live changes. No need to open and close window to refresh it.

* Note: the "Add" to ban list feature is not quite ready and is significantly more work than one might realize. So, until then... button will not do anything.

* So much is going on behind the scenes to get this all working together properly. A significant amount of effort had to be put into ensuring it is error free and an overall good, simple, user experience.

**QUALITY OF LIFE**

* QOL 1: Options Menu Changed a bit. A little bit cleaner, a little bit more logical, like the display options or clearLog are now always visible

* QOL 2: Buttons added to options menu slash commands that accomplish the same thing.

* QOL 3: Minor Localization progress has been made. Initially it was just down to lay a foundation for future work and to bring in proper fonts.

**BUG FIXES**

* Bug Fix1: Addon should now properly trigger a data sync shortly after joining a guild.

* Bug Fix2: OMG, WTF BLIZZ!!! Blizz just introdued a NEW bug that reintroduced "taint" on the gkick window. I have a feature where you click on an alt name and it not only opens that profile, but it opens the Guild Roster Slider to the correct position as well. Blizz just made it so manipulating the slider in the code will now block you from being able to gkick players again. WTF BLIZZ. I just don't get it. So, I am keeping the clicking on alts feature, but removing the Roster move-to positioning. Silly, silly Blizz for doing this.

* Bug Fix3: Addon will now properly register when a player joins the guild, asap. So, even if you have it set to only do a roster change scan once every 15 min, if a new player joins, the addon will register that update asap, then continue where it left off in the timer.

* Bug Fix4: Lua error could occur on occasion, often shortly after logging, in regards to the "SyncInfo" table it was populating, of all guildies with addon. This "should" be resolved now.

* Bug Fix5: And about a dozen other minor things here and there not worth mentioning...



**VERSION 7.3.0R1.099 - DATE: 10 Oct, 2017**

*Quick Bug Fix patch!!!*

* Bug Fix1: Fixed an issue if there is only 1 player online, the mouseover window will not popup again.

* Bug Fix2: Lua error could occur in certain circumstances in reference to the new guild addon user feature of last patch. Oops! no more...

* Bug Fix3: Lua error could occur in certain circumstances when syncing "alt" information. This was a coding typo. Fixed!

* Bug Fix4: Newer versions now do a better job of filter REALLY old versions of this addon, as if you didn't you could get spammed with Lua errors until guildie updated their addon.


**VERSION 7.3.0R1.098 - DATE: 9 Oct, 2017**

***NEW FEATURE:** New window that gives details on ALL players in guild that have addon installed. It tells you if sync is "ok!" with that player, and if it is not, it gives you the reason as to why, be it they have sync disabled, they are filtering out your rank, or you theirs, or even their addon is outdated and you are restricting sync of players with outdated addons (as per options). It will tell you ALL players in guild if they have addon. Furthermore, it will auto-update itself if opened, on receiving new data, like if a player logs off, it will remove them from the list, or if a player changes their sync settings/restrictions, it will update on the fly to you. All automatic!*

* Feature: Player now has the option to restrict anniversary reporting to only players listed as "main." Avoid getting spammed with all of someone's alt anniversaries too! Completely optional.

* Feature Fix: Finally, after some serious finesse and tedious finagling to try to hammer out my way around how much Blizz broke in 7.3, I finally worked out a solution on the "Shift-Click" to copy a player's name. Also, it will no longer just wipe out the whole text or chat box, it will just insert the name at the cursor. Exception is the "Add Alt" window it will clear and put in the entire name-server representation on shift-mouseover.

* Bug Fix1: Found a bug where the guild could false report that it name-changed.

* Bug Fix2: /roster clearall didn't reset the player alt auto-add feature, so if you wiped everything, it would still no longer re-add yourself and alts to a grouping on login automatically. This is fixed.


**VERSION 7.3.0R1.097 - DATE: 5 Oct, 2017**

* Feature: On mouseover, if you hold shift, it will now copy the player's name to any window the cursor is in, be it chat box, WIM, or even to add the altName rather than type it. Shift-mouseover. Of note, click is not possible due to 7.3 taint issues with anything to do with the Click() API action.

* Bug Fix1: Huge error fixed that "could" hit anyone not using the English client. It didn't in all cases, but if you had the Roster window open, and you had it set to the "Player Status" dropdown, not the "Guild Status" it could error. Fixed!

* Bug Fix2: If 2 players with same name in the guild, but different servers in merged realm, error could occur in some instances I found. This once again resolves them.


**VERSION 7.3.0R1.096 - DATE: 3 Oct, 2017**

***OPTIONS** panel has been largely redone. It's organized a little better. There is some open space, but I do have some additional options planned out to be added so I left room for them. They are just not quite ready for release.

* Feature: Slash command '/roster scan' will now trigger a one-time manual scan, even if the player has scanning disabled.

* Feature: Slash command '/roster sync' will now trigger a one-time manual sync, even if the player has sync disabled.

* Feature: Option to restrict sync only with players who have your version of the addon or higher. 

* QOL: Options menu mostly redone. Makes more sense know. Slash commands included. There is some open space atm, but to be added with future additions I have pending.

* Bug Fix1: '/roster scan' could at times fail to do anything. It should work now, unless there is no one online to sync with...

* Bug Fix2: Adding someone to list of alts could in some cases remove the "main" status of an alt. This now properly preserves alt/main grouping.

* Bug Fix3: Enhanced the code a bit, cleaned it up. Found a few misc. bugs here and there that don't need reporting now.



**VERSION 7.3.0R1.095 - DATE: 28 Sep, 2017**

* Bug Fix1: Sync bug that could cause disconnects is hopefully now resolved. TY @MCFUser175484 for helping me out in your guild to isolate this one.

* Bug Fix2: Which led to other bug fixes, like Sync Queing players was not working properly. If more than one person logged in or reloaded at the same time, it would still attempt to sync with ALL players at same time. This could cause disconnect as well.

* Bug Fix3: If the sync failed, it should retry with next person in que, but in some circumstances it was getting stuck in perpetual loop with players stuck in que not syncing.

* NOTE: Players that are in the middle of syncing that enter a loading screen the sync will fail. There is no API for another player to know that the other player is on loading screen, thus I can't que the data to wait til they are off it when sharing info. For live updating this is not an issue, but in batch sending data, the sync will fail. Just be aware.

* Yes, definitely working on some others major features, but these were just so game-breaking for some players they were necessary to fix. 



**VERSION 7.3.0R1.094 - DATE: 18 Sep, 2017**

* QOL: Mouseover added on the player status part to make it more obvious how to set notifications on status changes.

* Bug Fix1: Sync is working again. I completely broke it somehow like a coding noob! I was optimizing the sync speeds and over-confidently didn't test it apparently. I might've been half asleep.

* Bug Fix2: Promote/demote bug that could occur. It could even error out and false positive claim you changed your rank name lol. Hopefully fixed now :D


**VERSION 7.3.0R1.093 - DATE: 16 Sep, 2017**

***Main Feature:** Players will now auto-add themselves to their own alt list as they login to each of their toons. Note, you need to login to each one at least one time. The game is incapable of knowing who is your alts retroactively. Please login to each one!*

* QOL: When a player joins the guild, even if someone has it set to only scan for changes 10 min+ for example, it will still immediately build a new player profile. Note, Blizz server callback will take 15 seconds or less due to server call restrictions... It depends on when you last called the server.

* QOL: Addon now detects if a player's own rank is changed, triggering a resync if permission allows it, as rank change might open up more sync data. It also will live update your roster frames options permissions without needing to close/reopen the log window to refresh it

* QOL: Ban frames are now much cleaner post 7.3 changes that messed them up. They are closer now than ever to pre-patch 7.3.

* QOL: All UI frames are now updated on the fly for any changes. No need to close and reopen to refresh. This includes sync data received.

* Bug Fix1: Patch 7.3 broke a few things, including the way I can parse and receive data from the server. Very annoying. This reintroduced a merged-realm bug if player's had same name but different servers. This is now resolved :D

* Bug Fix2: Options button "Announce Events" was not funcitoning properly and you could not disable it, it also was not properly hiding the subsequent button to add events to calendar if disabled.

* Bug Fix3: When updating the timing interval to scan for changes, it now should properly update to new time interval immediately, not on 2nd pass.

* Bug Fix4: Code optimized a bit behind the scenes, in a few places...


**VERSION 7.3.0R1.091 - DATE: 10 Sep, 2017**

***NOTE: This sync overhaul is significant enough that you cannot sync retroactively. YOUR GUILDIES MUST UPGRADE TO LATEST VERSION TO SYNC WITH YOU!!! Recommend them to update.***

*Somewhat massive overhaul to sync system for efficiency, allowing slightly faster process. Furthermore, apparently there is a hard-cap on the number of backend server comm "prefixes" that can be used before crashing the account. This would not normally be an issue, but if the player is using a lot of addons that take up the limited use space, you could hit it, like DBM, Mythic key addons, and so on, coupled with this one, it could disconnect you on sync. I have stripped out 35 sync prefixes down to just 1 and buried the keywords as strings, and I just parse them out on receiving the sync message. A little extra processing power, albeit minimally, but will interact with the server and other addons much much better.*

* QOL: '/roster sync' will now trigger sync manually. Though it's pretty good at doing it automatically, but for whoever wants to.

* QOL: Sync start/stop notifications, even interrupted ones, are a bit more obvious now.

* QOL: On the "Add Event" window, for events, or in this case, bdays, the date is now listed in the window when you select it, before adding to the calendar.

* Bug Fix1: OMG, rank promotions/demotions screwed up the player's rank index. I had to rewrite some of the logic in recording the promotion/demotion changes due to 7.3 changes, and I had to collect the data slightly differently. Blizz is inconsistent in how it represents the ranks. Often they are represent as 0 - 9 or 1-10 (with guild leader rank index being 0 or 1). This inconsistency carries over to several API and the server and juggling them all sometimes I forget which is which. Unfortunately, I made the mistake which puts all ranks 1 index off if you change them... /clearall will fix your ranks, just make sure someone has your data to sync with em.

* Bug Fix2: Tigter sync data controls to ensure uncorrupted transfers.



**VERSION 7.3.0R1.09 - DATE: 9 Sep, 2017**

*Promote/Demote/Kick are now protected functions and an addon cannot do anything with them. As such I have integrated the built-in UI to do it. When you wish to kick or promote/demote a player, just click on their actual roster name in the list and it will hide the addon window and show Blizz's frames. Getting the "taint" to go away with patch 7.3 was brutally annoying and I had to do some rather inefficient shenannigans in the code behind the scenes to parse the data as :Click() to force a server call of the data taints the frams, sadly. At least it is working now*

* Bug Fix1: Kicking members from the guild should no longer be a problem. Due to 7.3 restrictions, it will now need to be done manually. Just click on the players and you will be able to remove them. Banning is fixed as well.

* Bug Fix2: Lua error could occur on occasion when clicking on one of the alt names.

* Bug Fix3: Sync issues could occur with players who had ranks in the guild with the exact same name. Rankindex is used in all cases now instead. I honestly didn't even know you could name ranks the exact same title.

* Bug Fix4: Problem with promote/demote I introduced last update. Newer method is more efficient and listens for chat emote event when player changes another's rank, so as not to wait for server update.

* Bug Fix5: In relation, occasionally the addon would say the incorrect person was promoting/demoting/kicking someone. This is now resolved.

* Bug Fix6: If a player was listed as a "main" and they added an alt to their list, but the alt was previously listed as main, then you would have 2xmains in a grouping. This caused interesting errors, though rarely encountered. No more!



**VERSION 7.3.0R1.087 - DATE: 6 Sep, 2017**

* Bug Fix1: I think I finally fully ironed out the gkick/ban issues due to 7.3 changes. Please let me know. I have had all my officers report it as working now, and 2 other guilds I know using it I beta tested first and they said no issues, so I HOPE we are good from here on out lol. 7.3 = #sadface

* Bug Fix2: OOPS!!! I accidentally broke reporting to you and the log if a player leaves or kicks the guild. Minor typo introduced and now fixed...

* Bug Fix3: Accidentally a word and the confirm popup window autohides in last patch! Seriously, you would not even be able to put on a BOE piece of gear. Stupid gamebreaking 1 line typo fixed lol

* Bug Fix4: A couple other misc. bugs fixed. This is a fairly minor patch as I really wanted to get this out there and fixed


**VERSION 7.3.0R1.086 - DATE: 5 Sep, 2017**
*Thank you for many suggestions and bug reporting. Keep em coming! So much to do!*

* **FEATURE:** Names on alt-list, if you click, you will jump to that alt's Roster profile window. I just want to add, this was not a simple feature to add and required a bit more behind the scenes than one would imagine. The code came out efficient and wonderful however. One of the more "fun" side projects to code.

* QOL: Scanning for changes can now be disabled if you so choose (maybe turn it off if you have bad internet connection?) - This was requested feature

* QOL: Scan for changes frequency can now be manually adjusted from the default interval of every 10 seconds.

* Bug Fix1: If adding a Friends' list Note, the roster window would hide it, making it impossible to add friend note if Guild Roster window was open. It no longer hides the note box.

* Bug Fix2: It is now vastly more reliable in stating WHO promoted/demoted/kicked a player.

* Bug Fix3: The database now instantly reports those changes when player does them without the need of waiting for scan. #Efficiency

* Bug Fix4: Fixed an annoying Lua error that could occur at times if player dies. This was a weird edge case I never noticed since I mostly just sit in a city coding than playing lol

* Bug Fix5: If player tried to disable sync before syncframes were initialized, it would error. Fixed!

* Bug Fix6: Tons of UI quality control done. Many many many behind-the-scenes stuff I won't mention here because tedious and too numerous. The point is that there is an evolution of the user experience here and progress continues to be made with this very active project.

*Final Note: I wrote 2 other custom addons I haven't released, but mainly for my own enjoyment, this past week, which distracted me a bit from pushing a new release quicker. Thank you again for all of your support and I hope that I can continue to increase the quality and build the desired features that are not currently missing. I have a HUGE list of things on my "to-do" list. It is no small project though. I am already over 12,000 lines of code for this beast, 100% built from the ground-up by myself, and the features I want to add and are in the pipeling would likely add another 5000-8000 lines more, plus not all lines of code are created equal in the amount of effort to write. Just know it's a lot of work, and since this is not my day job, just a side hobby, I can't put any realistic timetable. Just know I am working on things in a priority chain as of now.*


**VERSION 7.3.0R1.085 - DATE: 31 Aug, 2017**

*WTF!!! Blizz removed SO much more guild API functionality than I realized and broke a ton of things... These workarounds are not easy. Blizz completely broke my gkicking abilities, so I have had to hack around and get one working. This was for more of a pain than you would realize as it was not simple and straightforward like it should be. Blizz REALLY borked some stuff*

* Notice: Mass kicking a toon w/all alts is no longer possible with in-game API. Sadly, you will not be able to one-click remove a player with all their alts. This was a lovely feature, but Blizz removed the ability to use Lua or even macros to remove players. You HAVE to manually remove each one in-game from now on. Super annoying...

* Fixed gkicking and banning. Note, I don't know what Blizz did, but it seems to work like 75% of the time, not 100%. I don't know why. I haven't been able to trace why and I spent 4hrs working on it tonight. Seriously, if you gkick/ban someone, if it doesn't work the first time, try a 2nd time and it should work. It USUALLY works, but for some odd reason, Blizz's removal of API functions, using their own built-in API, it has broken something..


**VERSION 7.3.0R1.081 - DATE: 29 Aug, 2017**

*UPDATED FOR PATCH 7.3 COMPATIBILITY*

* Bug Fix1: Blizz decided to remove some backend API functionality on rank promotion/demotion. This kills many guild leader addons!!! I stitched in Blizz's default rank dropdown into the UI as API is no longer available and is protected function. Player should now be able to promote/demote players again.


**VERSION 7.3.0R1.08 - DATE: 29 Aug, 2017**

*UPDATED FOR PATCH 7.3 COMPATIBILITY*

* Note: Oddly, Blizz changed GuildControlSetRank() API function to now a protected function. Not sure why, but it limits ability to pull info on guild rank restrictions and so on... Minor issue, but could potentially cause issues for guilds who have a rank with guild chat restricted. Prob rare case usage.

* Bug Fix1: Error could occur in some cases when parsing through the guild event log to find out WHO did promotions/demotions and so on if server did not provide full info. 


**VERSION 7.2.5R1.075 - DATE: 27 Aug, 2017**

* Bug Fix1: Sync issue that could cause, in certain cases, sync to indefinitely loop and never complete. You'd get all join/promo sync fine, but it would only sync the first 50 alt changes lol OOPS!


**VERSION 7.2.5R1.071 - DATE: 25 Aug, 2017**

* QoL: Options now greyed out and unchecked if player does not have rank access to them.

* Bug Fix1: If a player did not have access to being able to add events to calendar, it would cause an error.

* Bug Fix2: HUGE issue that would cause certain servers with odd names (like Area52), to not sync properly. Works now!

* Bug Fix3: A couple behind-the-scenes fixes that smooth a couple of reported issues out. Complicated so I won't go into much detail here.



**VERSION 7.2.5R1.062 - DATE: 24 Aug, 2017**

***Note** - This is a quick, minor update to fix something real fast. I have other things I am working on, but this is so annoying I decided I wanted to get it out right away*

* Bug Fix1: Quick fix on shift-click names to add as alts. I typo'd a line and it was previously closing window than adding name



**VERSION 7.2.5R1.06 - DATE: 21 Aug, 2017**

*Note: R1.05 was a very small closed beta with a few people, so will be skipped here*

* FEATURE: Notifications! Player can right-click the "status" of player, like AFK, and set notification when no longer

* FEATURE: Player can set to be notified when players login or logoff (more noticeable than Blizz default one)

* FEATURE: Unlimited number of players can be monitored. Of note, they are wiped on each relog, not permanent.

* QOL: Version Check Incorporated. This is not backwards compatible with older version, but from R1.06 and on, player will receive notification if they have outdated addon if others in guild have newer version

* QOL: All future addon users, SYNC is now on by default (though ranks will need to be opened for more than GL)

* Bug Fix1: Addon now takes into consideration guilds with disciplinary ranks that restrict guild chat. This is critical as it can destroy comms and this will resolve a couple of odd bugs.

* Bug Fix2: On rank changes, the addon now takes into consideration rank pre-reqs, like having authenticator and does not attempt to change rank if server will not yet allow.




**VERSION 7.2.5R1.04 - DATE: 15 Aug, 2017**

* QOL: Players full name w/server now viewable on mouseover

* QOL: Name w/server mouseover on alts lits too!

* QOL: ALT CAP REMOVED!!!

* QOL: Player's with more than 12 alts now will have a scrollable alt window!

* QOL: Sync now states when it completes

* Bug Fix1: REMOVE button no longer shows on players of equal or higher rank

* Bug Fix2: Fixed UI bug where it shows promotion/demotion changes, even if player cannot.

* Bug Fix3: Adding event to calendar, description date previously was showing current date, not event date.

* Bug Fix4: Lua error could occur from other addons sharing guild comm channel. Now filters properly.

* Bug Fix5: Shift-clicking roster name now properly places player name where cursor is, not wiping all.


**VERSION 7.2.5R1.03 - DATE: 6 Aug, 2017**

* Bug Fix1: Shift-clicking roster names was wonky on adding alt. It works properly now.

* Bug Fix2: Mousing over names, then shift click if no editbox was focus would cause a Lua error.

* Bug Fix3: Issue where wrong player being selected invisibly in the background, but UI showed proper, thus

* Bug Fix3: behind the scenes it was pulling mismatched data from server on mouseover player at times. No more!

* Bug Fix4: Join Date could get overwritten on new player joining, thus rewriting join date for SYNC as current date

* Bug Fix4: rather than the date they actually joined, or when another player said they joined. This should sync the

* Bug Fix4: the data properly now and not override the correct info.

* Bug Fix5: On a player joining the guild, you could get this error where it would add an officer note as joined on current date, then it would overwrite

* Bug Fix5: it as it pulled the real officer note and spam the log as if it were a change. This annoyingly did it on all new joins

* Bug Fix5: if the player logged in at any date AFTER the player joined originally, if the officer note was tagged. How annoyingly spammy! Fixed

* Bug Fix6: Fixed a Width issue on the Year date on drop-down select that should no longer be an issue for people using non-widescreen resolutions.

* Bug Fix7: Sync on large guilds will now be a bit slower, but it seems it was spamming and disconnecting people even at the previous throttled rate

* Bug Fix7: The new Throttle rate is literally 25% the speed of the previous sync rate. Fortunately it all happens in the background so its not noticeable, just be 

* Bug Fix7: aware Sync will not update within seconds on LARGE guilds, but actually, a couple of minutes to prevent disconnect due to Blizz comm limits.

* Bug Fix7: Please report back if disconnects are gone. ALL in your guild will need to upgrade to current version to prevent disconnects.


**VERSION 7.2.5R1.02 - DATE: 24 July, 2017**

* Bug Fix1: Dynamic and retroactive sync did not work on any realm that had more than one word in the name, like "Burning Legion" or "Area 52"

* Bug Fix1: Never noticed string handling on comms since I tested on single word realm.

* Bug Fix2: Syncing could crash on MEGA guilds! In my 250+ guild, I never noticed any disconnects, but in larger guilds, too much data would be sent 

* Bug Fix2: across the server and would disconnect the player. Now, based on amount of info/size of guild, data packet is controlled to prevent disconnect.

* Bug Fix2: For some larger guilds, sync may no longer take 2-3 seconds for larger guilds. 500 to 1000 member guilds will take anywhere from 15-40 seconds, depending on 

* Bug Fix2: how much alt data needs to sync too. I want to speed it up, but Blizz has internel limits to prevent server spamming. Don't worry, it all happens in background.

* QOL:	Shift-Click player name in the roster and it will add it to anywhere your cursor has focus. It is universally compatible with any frame or addon.


**VERSION 7.2.5R1.00 - DATE: 21 July, 2017**

* Bug Fix1: If a promotion/Demotion was made, there would be a delay on register, which could cause an error when trying to populate the Rank promotion history

* Bug Fix1: Promotions and Demotions now a registered immediately!

* Bug Fix2: Noticed an issue where you could get double spam on reporting changes of public/officer note. This is resolved.

* QOL: Some minor behind-the-scenes tweaking lowered the fingerprint in a couple places. Extremely minimal.


**VERSION 7.2.5Beta_5_R1 - DATE: 20 July, 2017**

* **FEATURE:** SYNCING!!! Seriously, this addon will not sync the player data on rank, promotions, alts/main, and so on, both live and retroactively

*As a quick side note, this was NOT an easy job. Building a resource sensitive dynamic syncing algorithm in Lua, that could retroactively sync changes with guildies, be them online or not at the time was an enormous job. I actually didn't want to do it at first because I saw the scope of the task at hand and didn't want to do it. But, I did it... I think it was worth it!*

* Tons of updates, fixes, QoL features included, many minor, some big. Since this is a massive huge release, let's just consider it a fresh start from here!



**VERSION 7.2.5b500 - DATE: 19 Jun, 2017**

* **FEATURE:** Player zone is now displayed in playerwindow, along with the time duration they have been in the zone. Of note, the player cannot know how long they were in that zone prior to logging, so the time is reset upon logging, but from there on, any zone changes are automatically swept up with timer started for each online player. I am finding it extremely useful for things like not having to ask a player if they just got into that BG, or shouting out when they are in a long arena match, and so on.

* QOL: Fixed some text scaling issues. Ooo, ugly text on some machines. Normalizes all to same static font. Should not be weird now. Let me know if I missed any!

* QOL: Code Cleaned up a little more in a couple of places, which makes it even leaner with less server calls.

* QOL: Wrote some new methods for checking how much time has elapsed from given event, both from epoch time, and from a string timestamp. Much cleaner reporting now.

* QOL: Rearranged the positioning of the Day/Month dropdown as I think it makes more sense to have the month first.

* Bug Fix1: Issue with "mobile" players using armory app, it would screw up alt management. Text name parsed correctly from mobile icon now.

* Bug Fix2: Addon could fail in some circumstances if a player quit the guild and was linked as an alt. Not anymore!



**VERSION 7.2.5b450 - DATE: 19 Jun, 2017**

*Lots of misc. quality of life fixes here. Went through a few requests and got them added, and also worked a little more on the backend on a few things I am working on in a future update.

* Feature: On Mouseover of promotion date, it now includes "how long" a player has been at the promoted rank.

* QOL: Tooltips are now scaled down a little. They were almost obnoxiously large, imo.

* QOL: Note and officer note boxes are better designed. Word wrapping/spacing/etc... Just better

* Bug Fix1: Serious issue with timestamps I had not noticed, as server time was my local time. Apparently I was pulling local, not server, and not realizing it. This could cause issues with people playing in different time-zones than server time... potentially. Resolved

* Bug Fix2: Some issues related to the timstamp problem had to be resolved.

* Bug FixX: There was actually a LOT of behind-the-scenes labor on this one. Much more than you would realized, but there were just so many "little" things not worth mentioning here, but minor QoL stuff I made sure was taken care of.


**VERSION 7.2.5b410 - DATE: 18 Jun, 2017**

* BUG FIX!!! If a player was returning from inactity, I typo'd a bug, but didn't notice it until I was put under the circumstance of a guildie inactive returning. TY @k1ck3r for poinint this out!


**VERSION 7.2.5b400 - DATE: 17 Jun, 2017**

* TONS of work went into this update, even if on the front end the additions seem minimal. In the long run, it will have been worth it for you guys, but also for me as a developer. I won't get into it more. Just know that the x-realm solution was not as easy as I'd hoped because I had to dig into all of my frames and change the approach to how I pulled data. The good thing is it gave me the opportunity to go back and refactor much of my code and it is significantly more efficient now! One downside is your alt/main data needed to be reset. Sorry!*

* **MAJOR FEATURE:** The addon is now compatible with x-realm guilds and should successfully be able to handle multiple people of the same name in a guild, but of different servers. This was a surprisingly HUGE amount of work, even though the solution seemed rather simple. Please let me know if it is working. You MAY need to do a '/roster clearall' and reset your data if you are in a x-realm guild, but I am hoping the addon just sees it as a new person joining the guild. Please let me know how it works as I have not tested it.

*Additionally...*

* Feature: Chat message filtering options now provided for all events.

* Feature: Example, you can now disable leveling notifications to the chat window.

* QOL: Options Panel now opens and closes in a significantly better, and faster, transition

* QOL: Mousing over the roster at times felt a little "sluggish." I sped it up a little.

* QOL: The position you place the Roster Event Log is now saved between sessions.

* QOL: '/roster reset' will reset the window back to its original, centered position.

* QOL: Some text styling has changed, like "PROMOTED" is now "Promoted" and so on...

* Bug Fix1: Log events tracking now should ONLY trigger when updated from the server.

* Bug Fix1: Before, it could do a check before server returned data, thus you would get generic message rather than full details on who did what.

* Bug Fix2: "Clearing" the Rank Promotion history, the "Date Promoted?" button was not returning to proper position.

* Bug Fix3: "Guild Log" button will now seat properly if frame is dragged over it.

* Bug Fix4: Demoting from Main to alt would bug out due to a code typo I introduced last patch and didn't notice. FIXED


**VERSION 7.2.5b300 - DATE: 15 Jun, 2017**

*There was some confusion that was 100% my fault. This IS a BETA release. I mistakenly set it as release. I apologize for that rather serious distinction. As such, it should be noted that THIS IS A MASSIVE RELEASE! HUGE UPDATES!!! Sadly, due to major overhaul of data management and data merging techniques, far more efficient now, it was not backwards compatible. SO SORRY!*

* **MAJOR FEATURE:** Guild data is now stored per faction, and per guild. Are you in a guild that has the same name on both Alliance and Horde side? This should no longer have any issues... Seemless loading as you hop between toons and guilds and factions.


* Bug fix1: Officer Note Editbox was broken last patch. OOPS! Re-fixed

* Bug fix2: Fixed error that *could* happen if player loads addon not in guild, but then joins one. Caused various weird problems. FIXED

* Bug fix3: Namechange detection could error and report incorrectly under various conditions. Tightened to 100% detection.

* Bug fix4: Officer note change spam fixed! Such an annoying bug! Sorry about that one!

* Bug fix5: No merge merge issues!

* QOL: Slash command '/roster' should now open your Log window Properly

* QOL: Grey out options that do not pertain to player if they do not have permissions.

* QOL: Proper error message if player tries to add invalid alt name.

* QOL: Add Event Frame now updates live if events trigger and window is open

* MISC1: Player now can see if a player is on the mobile chat with "Is Mobile" indication

* MISC2: Add Event Calendar now restricts the player to adding 1 event to calendar per 5 seconds, due to internal Blizz server limit.

* MISC3: Several more things being tracked in the background... to be implemented in future patch 

* MISC4: And several other minor things not worth mentioning...


**VERSION 1.02 - DATE: 13 Jun, 2017**

* Feature1: You can now right click player name in main window for additional options

* Feature2: You can now reset an individual's saved data, if needed.

* Feature3: Better main/alt management - ability to set player as main, even without alts

* Feature3: This allows any subsequent alts added to auto-be tagged as "alt" instad of main. Minor QoL.

* Bug fix1: TAINT issues have been resolved (by building my own Dropdowns) - HUGE JOB

* Buf fix1: You no longer should be unable to enter a BG without disabling addon, for example!

* Bug fix2: Scaling issue (yes, not ALL scaling issues are resolved yet)

**VERSION: 1.01 - DATE: 11 Jun, 2017**

* Bug fix: On player namechange detection, it now changes the name in the alts lists as well!


**VERSION: 1.00 - DATE: 11 Jun, 2017**

* Initial Release