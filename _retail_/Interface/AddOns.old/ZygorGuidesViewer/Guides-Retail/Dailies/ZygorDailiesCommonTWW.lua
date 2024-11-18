local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DailiesCTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Azj'Kahet Weekly Pacts",{
author="support@zygorguides.com",
description="This guide will assist you in completing the weekly pact quest for The Weaver, The General, and The Vizier.",
startlevel=80,
patch='110002',
},[[
step
Reach Renown Level 3 with The Severed Threads |complete factionrenown(2600) >= 3 |q 84681 |future
|tip Complete daily quests, weekly quests, and zone quests in Azj-Kahet to gain renown.
step
talk Widow Arak'nai##207471
accept Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.73,43.83
|only if not completedq(84682)
step
talk Bobbin##224734
Tell it _"Tell me about making a Pact with the Weaver."_ |gossip 124125
Learn of the Weaver's Pact |q 84682/1 |goto Azj-Kahet/0 56.37,43.33
|only if not completedq(84682)
step
talk Tulumun##224733
Tell him _"Tell me about making a Pact with the Vizier."_ |gossip 124127
Learn of the Vizier's Pact |q 84682/3 |goto Azj-Kahet/0 56.20,42.24
|only if not completedq(84682)
step
talk Anub'okki##224729
Tell him _"Tell me about making a Pact with the General."_ |gossip 124123
Learn of the General's Pact |q 84682/2 |goto Azj-Kahet/0 55.88,42.13
|only if not completedq(84682)
step
talk Y'tekhi##220867
Tell him _"Choose a member of the Severed Threads to forge a Pact with."_ |gossip 124129
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Forge a Pact |q 84682/4 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
talk Y'tekhi##220867
turnin Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
label "Accept_Weekly_Pact_Quest"
talk Y'tekhi##220867
accept Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Y'tekhi##220867
Tell her _"Choose a member of the Severed Threads to renew your Pact with."_ |gossip 122838
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Choose a Pact |q 80592/1 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Y'tekhi##220867
turnin Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Y'tekhi##220867
|autoacceptany 80672,80671,80670
Accept the Weekly Pact Quest |complete haveq(80672,80671,80670) or completedq(80672,80671,80670) |goto Azj-Kahet/0 55.33,41.22
step
Complete Activities in Azj-Kahet |q 80672/1 |goto Azj-Kahet/0 55.33,41.22
|tip Complete world quests to contribute 20% for each one.
|tip You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.
|only if haveq(80672) or completedq(80672)
step
Complete Activities in Azj-Kahet |q 80671/1 |goto Azj-Kahet/0 55.33,41.22
|tip Complete world quests to contribute 20% for each one.
|tip You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.
|only if haveq(80671) or completedq(80671)
step
Complete Activities in Azj-Kahet |q 80670/1 |goto Azj-Kahet/0 55.33,41.22
|tip Complete world quests to contribute 20% for each one.
|tip You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.
|only if haveq(80670) or completedq(80670)
step
talk Tulumun##224733
turnin Hand of the Vizier##80672 |goto Azj-Kahet/0 56.20,42.24
|only if haveq(80672) or completedq(80672)
step
talk Anub'okki##224729
turnin Blade of the General##80671 |goto Azj-Kahet/0 55.89,42.14
|only if haveq(80671) or completedq(80671)
step
talk Bobbin##224734
turnin Eyes of the Weaver##80670 |goto Azj-Kahet/0 56.37,43.33
|only if haveq(80670) or completedq(80670)
step
You have completed the weekly pact quest in Azj-Kahet
|tip You can forge another pact at the next weekly reset.
|tip This guide will automatically reset when a new pact can be made.
'|complete not haveq(80672,80671,80670) and not completedq(80672,80671,80670) |next "Accept_Weekly_Pact_Quest"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Azj'Kahet World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in the Azj'Kahet.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2255,2256,2213,2216},
patch='110002',
},[[
step
talk Widow Arak'nai##207471
accept Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.73,43.83
|only if not completedq(84682)
step
talk Bobbin##224734
Tell it _"Tell me about making a Pact with the Weaver."_ |gossip 124125
Learn of the Weaver's Pact |q 84682/1 |goto Azj-Kahet/0 56.37,43.33
|only if not completedq(84682)
step
talk Tulumun##224733
Tell him _"Tell me about making a Pact with the Vizier."_ |gossip 124127
Learn of the Vizier's Pact |q 84682/3 |goto Azj-Kahet/0 56.20,42.24
|only if not completedq(84682)
step
talk Anub'okki##224729
Tell him _"Tell me about making a Pact with the General."_ |gossip 124123
Learn of the General's Pact |q 84682/2 |goto Azj-Kahet/0 55.88,42.13
|only if not completedq(84682)
step
talk Y'tekhi##220867
Tell him _"Choose a member of the Severed Threads to forge a Pact with."_ |gossip 124129
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Forge a Pact |q 84682/4 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
talk Y'tekhi##220867
turnin Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
talk Y'tekhi##220867
accept Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Y'tekhi##220867
Tell her _"Choose a member of the Severed Threads to renew your Pact with."_ |gossip 122838 |noautogossip
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Choose a Pact |q 80592/1 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Y'tekhi##220867
turnin Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-78974
accept Beetle-Minded##78974 |goto Azj-Kahet/0 73.02,81.53
|tip You will accept this quest automatically.
|polish
stickystart "Fill_Food_Troughs"
step
clicknpc Stagshell Water Trough##214424+
|tip They look like long wooden boxes on the ground around this area.
Fill #4# Water Troughs |q 78974/1 |goto Azj-Kahet/0 73.02,81.53
step
label "Fill_Food_Troughs"
clicknpc Stagshell Food Trough##214412+
|tip They look like long wooden boxes on the ground around this area.
Fill #4# Food Troughs |q 78974/2 |goto Azj-Kahet/0 73.02,81.53
|next "TWW_World_Quest_Emissaries"
step
label quest-82526
accept Bug Them##82526 |goto Nerub'ar/1 68.93,40.61
|tip You will accept this quest automatically.
step
click Insectformant+
|tip They look like transluscent yellow bugs clinging to objects around this area.
|tip They appear on your minimap as yellow dots.
Place #6# Bugs |q 82526/1 |goto Nerub'ar/1 68.93,40.61
|next "TWW_World_Quest_Emissaries"
step
label quest-82364
accept Documenting Discordance##82364 |goto Azj-Kahet/1 61.53,75.98
|tip You will accept this quest automatically.
step
clicknpc Shrouded Skysilk##223809
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Shrouded Skysilk |q 82364/1 |goto Azj-Kahet/1 61.53,75.98
step
Take Pictures of Discordance |q 82364/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-82533
accept Dye! Dye Dye!##82533 |goto Azj-Kahet/0 73.71,41.27
|tip Up on the hanging platform.
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Spinneret Scuttler##221852,Violet Alchemist##222117,Carmine Alchemist##222124,Cerulean Alchemist##225177,Spinneret Silkbearer##221939,Cupric Alchemist##222121,Gaudy Web-Vandal##224567,Cupric Alchemist##225178,Cerulean Alchemist##222114,Ochre Alchemist##222123,Gaudy Web-Vandal##225179
Slay #15# Dyeworks Laborers |q 82533/1 |goto Azj-Kahet/0 73.71,41.27
|next "TWW_World_Quest_Emissaries"
step
label quest-83718
accept Eggstraction##83718 |goto Azj-Kahet/0 79.79,79.96
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 83718/1 |goto Azj-Kahet/0 79.79,79.96
step
click Handhold
Find a Handhold on the Cliff |q 83718/2 |goto Azj-Kahet/0 79.81,79.97
step
click Swarmite Egg+
|tip They look like large eggs trapped in webs on the rock face.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid {o}Agitated Swarmites{} that will lower your grip.
Collect #7# Swarmite Eggs |q 83718/3 |goto Azj-Kahet/0 79.89,79.98
|next "TWW_World_Quest_Emissaries"
step
label quest-82481
accept Enforcer Extermination##82481 |goto Azj-Kahet/0 55.97,54.98
|tip You will accept this quest automatically.
step
Kill Pale Wavelasher enemies around this area |kill Webwarden Enforcer##223361,Pale Weavelasher Apprentice##223364,Pale Weavelasher Grunt##223363
Slay #12# Pale Wavelashers |q 82481/1 |goto Azj-Kahet/0 55.97,54.98
|next "TWW_World_Quest_Emissaries"
step
label quest-82536
accept Exfiltration Operation##82536 |goto Nerub'ar/1 58.37,66.49
|tip You will accept this quest automatically.
|polish
step
clicknpc Conscripted Ascendant##225660+
Free #12# Conscripted Ascendants |q 82536/1 |goto Nerub'ar/1 58.37,66.49
|next "TWW_World_Quest_Emissaries"
step
label quest-82524
accept Exterminate##82524 |goto Azj-Kahet/0 62.69,28.88
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Kaheti Threadmancer##214939,Kaheti Skirmisher##214940,Kaheti Overseer##214941,Dependable Skitterling##222153
Slay #15# Nerubians |q 82524/1 |goto Azj-Kahet/0 62.69,28.88
|next "TWW_World_Quest_Emissaries"
step
label quest-82324
accept Grub Run##82324 |goto Azj-Kahet/0 39.28,40.92
|tip You will accept this quest automatically.
|polish
step
clicknpc Razormouth Grub##223671+
|tip They look like purple worms with teeth and spikes inside the caves around this area.
|tip Avoid filling your Tremorsense bar by periodically stopping and letting it lower.
|tip A full bar will spawn enemies that attack you.
Gather #10# Razormouth Grubs |q 82324/1 |goto Azj-Kahet/0 39.28,40.92
|next "TWW_World_Quest_Emissaries"
step
label quest-79722
accept Gutter Work##79722 |goto Azj-Kahet/0 57.45,68.48
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Adolchomper##217724,Gutter Scarfer##217717,Drooling Salamuncher##217720,Gutter Gorger##217718
|tip You can find more underwater nearby.
|tip Loot the corpses for various quest items.
Scavenge the Salien Gutters |q 79722/1 |goto Azj-Kahet/0 56.09,69.94
|next "TWW_World_Quest_Emissaries"
step
label quest-82468
accept Let Them Win##82468 |goto Azj-Kahet/0 29.26,41.97
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Skitterling##217991,Slam Scavenger##217997,Kaheti Silksinger##215711,Kaheti Preysnatcher##215170
|tip You can also fly through gold rings in the air to gain the Holy Lance buff.
|tip While you have this buff, you can fly through mines floating in the air to detonate them safely.
|tip Hitting a mine without the buff will dismount you.
Turn the Battle Against the Nerubians |q 82468/1 |goto Azj-Kahet/0 29.26,41.97
|next "TWW_World_Quest_Emissaries"
step
label quest-82297
accept One Hungry Worm##82297 |goto Azj-Kahet/0 53.09,31.58
|tip You will accept this quest automatically.
step
clicknpc Zaedu##223406
Defeat Zaedu in a Pet Battle |q 82297/1 |goto Azj-Kahet/0 53.09,31.58
|next "TWW_World_Quest_Emissaries"
step
label quest-82363
accept Opposing Forces##82363 |goto Azj-Kahet/0 43.31,21.80
|tip You will accept this quest automatically.
step
clicknpc Shrouded Skysilk
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Shrouded Skysilk |q 82363/1 |goto Azj-Kahet/0 43.31,21.80
step
Take Pictures of Nerubian Forces |q 82363/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-82521
accept Pawns of Dark Masters##82521 |goto Azj-Kahet/1 64.81,82.38
|tip You will accept this quest automatically.
step
click Black Blood Extractor
|tip They look like large machines drawing blood from growths on the ground around this area.
|tip This will allow you to see Discordant Creatures.
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
Kill enemies around this area |kill Discordant Skitterling##223116,Tentacle Slime##220656
Slay Discordant Creatures |q 82521/1 |goto Azj-Kahet/1 64.81,82.38
|next "TWW_World_Quest_Emissaries"
step
label quest-81824
accept Skyrider Racing - City of Threads Twist##81824 |goto Nerub'ar/1 27.01,7.92
|tip High up on the rocks.
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219564
Tell her _"I'd like to try the course."_ |gossip 121287 |noautogossip
Prepare for the Race |havebuff Race Starting##439300 |goto Nerub'ar/1 27.01,7.92 |q 81824
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Nerub'ar/1 27.39,7.76 |q 81824
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81824/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81825
accept Skyrider Racing - Maddening Deep Dip##81825 |goto Azj-Kahet/0 77.92,79.65
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219565
Tell him _"I'd like to try the course."_ |gossip 121290 |noautogossip
Prepare for the Race |havebuff Race Starting##439301 |goto Azj-Kahet/0 77.92,79.65 |q 81825
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 77.90,79.78 |q 81825
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81825/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81829
accept Skyrider Racing - Pit Plunge##81829 |goto Azj-Kahet/0 23.81,48.35
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219569
Tell her _"I'd like to try the course."_ |gossip 121299 |noautogossip
Prepare for the Race |havebuff Race Starting##439304 |goto Azj-Kahet/0 23.81,48.35 |q 81829
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 23.92,48.49 |q 81829
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81829/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81828
accept Skyrider Racing - Rak-Ahat Rush##81828 |goto Azj-Kahet/0 71.34,36.36
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219568
Tell him _"I'd like to try the course."_ |gossip 121296 |noautogossip
Prepare for the Race |havebuff Race Starting##439303 |goto Azj-Kahet/0 71.34,36.36 |q 81828
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 71.47,36.44 |q 81828
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81828/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81831
accept Skyrider Racing - Siegehold Scuttle##81831 |goto Azj-Kahet/0 40.18,32.20
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219570
Tell her _"I'd like to try the course."_ |gossip 121281 |noautogossip
Prepare for the Race |havebuff Race Starting##439305 |goto Azj-Kahet/0 40.18,32.20 |q 81831
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 40.31,32.07 |q 81831
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81831/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81827
accept Skyrider Racing - The Weaver's Wing##81827 |goto Azj-Kahet/0 52.95,36.19
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219567
Tell her _"I'd like to try the course."_ |gossip 121293 |noautogossip
Prepare for the Race |havebuff Race Starting##439302 |goto Azj-Kahet/0 52.95,36.19 |q 81827
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 52.98,36.33 |q 81827
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81827/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-82387
accept Slay the Goo, Save the World##82332 |goto Azj-Kahet/1 65.21,82.54
|tip You will accept this quest automatically.
|polish
step
click Black Blood Extractor
|tip They look like large machines drawing blood from growths on the ground around this area.
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
Have 50 or More Stacks of Unseeming Shift |q 82387/1 |goto Azj-Kahet/1 65.21,82.54
step
kill Warped Sapling##220655 |q 82387/3 |goto Azj-Kahet/1 63.17,85.13
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
|tip This enemy is elite and may require a group.
step
kill 1 Aberrant Deepwalker##220653 |q 82387/4 |goto Azj-Kahet/1 65.34,88.16
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
|tip This enemy is elite and may require a group.
step
kill 1 Faceless One##223119 |q 82387/2 |goto Azj-Kahet/1 65.82,83.92
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
|tip This enemy is elite and may require a group.
|next "TWW_World_Quest_Emissaries"
step
label quest-82414
accept Special Assignment: A Pound of Cure##82414 |goto Azj-Kahet/0 64.58,6.87
|tip You will accept this quest automatically.
step
extraaction Roof Rockets##451852
|tip Use the ability on your screen to shoot a rocket at your target, dealing extra AoE damage.
clicknpc Arathi Prisoner##222119+
|tip They look like webbed NPCs on the ground around this area.
click Nerubian Burrow+
|tip They look like large forming holes on the ground around this area.
|tip They will spawn an elite enemy.
Kill enemies around this area |kill Toxic Swarmite##222721,Sureki Raider##222677,Venomous Flyer##222722,Sureki Priestess##222688,Crimson Deathweaver##222692,kill Sureki Warrior##222693
Disrupt Arathi's End |q 82414/1 |goto Azj-Kahet/0 64.58,6.87
|next "TWW_World_Quest_Emissaries"
step
label quest-82531
accept Special Assignment: Bombs from Behind##82531 |goto Azj-Kahet/0 56.66,47.34
|tip You will accept this quest automatically.
step
clicknpc Stolen Skiff##226416
Appropriate a Skiff |q 82531/1 |goto Azj-Kahet/0 56.66,47.34
step
Slay Convoy Troops |q 82531/2 |goto Azj-Kahet/0 61.88,36.92
|tip Use the abilities on your vehicle bar to destroy the troops below.
|tip The first button drops bombs while the second button returns you to the platform.
|next "TWW_World_Quest_Emissaries"
step
label quest-79116
accept Spider Optics##79116 |goto Azj-Kahet/0 73.45,84.71
|tip You will accept this quest automatically.
stickystart "Rescue_Spiderlings"
stickystart "Kill_Silkweaver_Pillagers"
step
click Threadling Egg Sac+
|tip They look like small clusters of white eggs on the ground around this area.
Protect #5# Egg Sacs |q 79116/3 |goto Azj-Kahet/0 73.45,84.71
step
label "Rescue_Spiderlings"
click Spiderling Cage+
|tip They look like small wooden cages on the ground around this area.
Rescue #6# Spiderlings |q 79116/2 |goto Azj-Kahet/0 73.45,84.71
step
label "Kill_Silkweaver_Pillagers"
kill 6 Silkweaver Pillager##218104 |q 79116/1 |goto Azj-Kahet/0 73.45,84.71
|next "TWW_World_Quest_Emissaries"
step
label quest-79960
accept Taking it To Go##79960 |goto Azj-Kahet/0 79.47,76.74
|tip You will accept this quest automatically.
step
kill Vigilant Nestguard##218380+
use the Threadling Lure##216664
|tip Target the corpses of Vigilant Nestguards.
Collect #5# Vigilant Nestguard Corpses |q 79960/1 |goto Azj-Kahet/0 79.47,76.74
|next "TWW_World_Quest_Emissaries"
step
label quest-82266
accept Tower Washing Simulator##82266 |goto Nerub'ar/1 31.09,33.96
|tip You will accept this quest automatically.
step
clicknpc Stagnant Slime##223473+
|tip They look like dark blue blobs on the walls of the building.
Maintain the Royal Preservatory |q 82266/1 |goto Nerub'ar/1 31.09,33.96
|next "TWW_World_Quest_Emissaries"
step
label quest-78995
accept Truffle Shuffle##78995 |goto Azj-Kahet/0 70.02,77.86
|tip You will accept this quest automatically.
|polish
step
click Volatile Soil+
|tip They look like small piles of smoking dirt on the ground around this area.
click Volatile Kaheti Truffle+
|tip They look like clusters of mushrooms that spawn after overturning the soil.
Collect #5# Kaheti Truffles |q 78995/1 |goto Azj-Kahet/0 70.02,77.86
|next "TWW_World_Quest_Emissaries"
step
label quest-82332
accept Unassuming Delivery Spider##82332 |goto Nerub'ar/1 53.00,22.90
|tip You will accept this quest automatically.
|polish
step
Deliver Supplies |q 82332/1 |goto Nerub'ar/1 53.00,22.90
|tip Click various supply objects all over the city.
|tip They appear on your minimap as yellow dots.
|tip Once you pick them up, fly them to the building and walk near the NPC inside.
Deliver them in the building at [Nerub'ar/1 58.27,32.74]
|next "TWW_World_Quest_Emissaries"
step
label quest-79958
accept Worm Sign, Sealed, Delivered##79958 |goto Azj-Kahet/0 72.83,77.44
|tip You will accept this quest automatically.
step
click Worm Chow+
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 73.53,76.15 |count 1
step
click Worm Chow+
|tip Inside the cave.
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 73.19,74.94 |count 2
step
click Worm Chow+
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 71.83,78.18 |count 3
step
click Worm Chow+
|tip Inside the cave.
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 73.85,79.13 |count 4
|next "TWW_World_Quest_Emissaries"
step
label quest-79959
accept Wormcraft Rumble##79959 |goto Azj-Kahet/0 74.10,82.45
|tip You will accept this quest automatically.
step
kill Shyalude##223834 |q 79959/1 |goto Azj-Kahet/0 74.10,82.45
|next "TWW_World_Quest_Emissaries"
step
label quest-82295
accept Ziriak##82295 |goto Nerub'ar/0 61.29,36.96
|tip You will accept this quest automatically.
step
talk Ziriak##223442
Tell it _"Begin pet battle."_ |gossip 122403 |noautogossip
Defeat Ziriak in a Pet Battle |q 82295/1 |goto Nerub'ar/0 61.29,36.96
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Hallowfall World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in the Hallowfall.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2215},
patch='110002',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-82254
accept Aquacalypse##82254 |goto Hallowfall/0 46.33,14.95
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area |kill Drowned Arathi##213335,Droopfin##213716,Murkfin Ravager##213621,Murkfin Sciomancer##213619,Murkfin Depthstalker##213622
Slay #12# Kobyss Attackers |q 82254/1 |goto Hallowfall/0 46.33,14.95
|next "TWW_World_Quest_Emissaries"
step
label quest-82041
accept Beledar's Blessing##82041 |goto Hallowfall/0 24.40,61.01
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 82041/1 |goto Hallowfall/0 24.40,61.01
step
click Handhold
Find a Handhold on the Cliff |q 82041/2 |goto Hallowfall/0 24.43,61.02
step
click Radiant Cluster+
|tip They look like large gold crystals on the rock face.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid Stinging Swarms that will lower your grip.
Collect #7# Radiant Clusters |q 82041/3 |goto Hallowfall/0 24.80,61.66
|next "TWW_World_Quest_Emissaries"
step
label quest-82257
accept Burrow Burial##82257 |goto Hallowfall/0 70.04,58.70
|tip You will accept this quest automatically.
|polish
step
click Nerubian Burrow##411984+
|tip They look like large piles of dirt on the ground around this area.
kill Dreadstrike Ambusher##217481+
|tip They spawn after destroying a brurrow.
Destroy #5# Nerubian Burrows |q 82257/1 |goto Hallowfall/0 70.04,58.70
|next "TWW_World_Quest_Emissaries"
step
label quest-82133
accept Documenting: Field Manual Edition##82133 |goto Hallowfall/0 39.88,74.73
|tip You will accept this quest automatically.
|polish
step
clicknpc Cataloger's Disc##222930
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Stealthed Cataloger's Disc |q 82133/1 |goto Hallowfall/0 39.88,74.73
step
Take Pictures of Discordance |q 82133/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-81862
accept Feline Frenzy##81862 |goto Hallowfall/0 41.98,58.11
|tip You will accept this quest automatically.
|polish
step
clicknpc Imperial Lynx##221712
Ride the Imperial Lynx |q 81862/1 |goto Hallowfall/0 41.98,58.11
step
Enrich the Lynx |q 81862/2 |goto Hallowfall/0 42.47,53.50
|tip Use the "Growl" and "Pounce" abilities to build your progress bar.
|tip If your Lynx stops, use "Shake" until it starts moving again.
|tip Run over red Lynx Treats all over Mereldar to gain more progress.
|next "TWW_World_Quest_Emissaries"
step
label quest-82259
accept Honoring our Fallen##82259 |goto Hallowfall/0 71.56,61.38
|tip You will accept this quest automatically.
|polish
step
click Fallen Defender+
|tip Tip they look like NPCs laying on the ground around this area.
Honor #6# Fallen Defenders |q 82259/1 |goto Hallowfall/0 71.56,61.38
|next "TWW_World_Quest_Emissaries"
step
label quest-82583
accept Igniting the Fire Within##82583 |goto Hallowfall/0 55.18,32.73
|tip You will accept this quest automatically.
step
click Torch
Light the Torch |q 82583/1 |goto Hallowfall/0 55.18,32.73
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 54.60,32.77 |count 1
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 53.68,33.01 |count 2
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 54.25,34.80 |count 3
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 55.41,34.40 |count 4
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 55.55,33.71 |count 5
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 56.16,33.63 |count 6
|next "TWW_World_Quest_Emissaries"
step
label quest-82206
accept Into Shadows##82206 |goto Hallowfall/0 49.40,50.04
|tip You will accept this quest automatically.
|polish
step
talk Venrie Flitter##223105
Select _"<Take the skiff out to fight the darkness.>"_ |gossip 122295
Talk to Venrie to Board the Skiff |q 82206/1 |goto Hallowfall/0 67.47,44.51
step
kill 20 Keening Shadows##223109 |q 82206/2 |goto Hallowfall/0 65.71,44.23
|tip Use the abilities on your vehicle bar.
|next "TWW_World_Quest_Emissaries"
step
label quest-82088
accept Kobyss Kibosh##82088 |goto Hallowfall/0 35.35,54.64
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area |kill Ragefin Carver##213400,Ragefin Shadowcaster##213405,Ragefin Executioner##213408,Grimslice##221551,Order of Night Adept##213401,Ragefin Necromancer##213406,Ragefin Carver##215652,Darkwater Tidecrusher##220621
Assist the Arathi in Driving Back the Kobyss |q 82088/1 |goto Hallowfall/0 35.35,54.64
|next "TWW_World_Quest_Emissaries"
step
label quest-82294
accept Miniature Army##82294 |goto Hallowfall/0 52.44,62.79
|tip You will accept this quest automatically.
step
talk Kyrie##223442
Tell her _"Begin pet battle."_ |gossip 122401 |noautogossip
Defeat Kyrie in a Pet Battle |q 82294/1 |goto Hallowfall/0 52.44,62.79
|next "TWW_World_Quest_Emissaries"
step
label quest-82582
accept Mired in Shadow##82582 |goto Hallowfall/0 74.86,52.90
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area |kill Fungal Infestor##216077,Bloatrot Stinger##216065
Clear the Shadowmire |q 82582/1 |goto Hallowfall/0 74.86,52.90
|next "TWW_World_Quest_Emissaries"
step
label quest-82120
accept Pool Cleaner##82120 |goto Hallowfall/0 49.40,50.04
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Hungering Slicer##215242,Hungering Necromage##215239,Drowned Arathi##225760
Slay #15# Kobyss |q 82120/1 |goto Hallowfall/0 49.40,50.04
|next "TWW_World_Quest_Emissaries"
step
label quest-81620
accept Recovery Job##81620 |goto Hallowfall/0 56.09,67.25
|tip You will accept this quest automatically.
step
click Arathi Crate+
|tip They look like large wooden boxes on the ground around this area.
|tip They appear on your minimap as yellow dots.
click Arathi Supplies##439338+
|tip They appear after you destroy Arathi Crates.
collect 8 Shipyard Tools##219357 |q 81620/1 |goto Hallowfall/0 56.09,67.25
|next "TWW_World_Quest_Emissaries"
step
label quest-82197
accept Reserve Rumpus##82197 |goto Hallowfall/0 41.64,52.21
|tip You will accept this quest automatically.
step
talk Arathi Reserve##215727+
Tell them _"Your general asked me to spar with you."_ |gossip 120333
Duel #8# Arathi Recruits |q 82197/1 |goto Hallowfall/0 41.64,52.21
|tip Defeat the recruits in combat.
|next "TWW_World_Quest_Emissaries"
step
label quest-81653
accept Shurrai, Atrocity of the Undersea##81653 |goto Hallowfall/0 45.17,17.80
|tip You will accept this quest automatically.
step
kill Shurrai##221224 |q 81653/1 |goto Hallowfall/0 45.17,17.80
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid the three {o}Dark Tide{} waves as they wash away {o}Briny Vomit{} pools. |grouprole EVERYONE
|tip Don't stand in pools on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill {o}Drowned Arathi{} quickly to deal heavy damage to Shurrai. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Anyone near a {o}Drowned Arathi{} when it dies will need healing. |grouprole HEALER
|tip {o}Abyssal Strike{} will cause healing on the tank to be absorbed in the amount of damage it caused |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Mitigate {o}Abyssal Strike{} whenever possible and prepare for a gap in healing after. |grouprole TANK
|next "TWW_World_Quest_Emissaries"
step
label quest-82258
accept Sieging Siege Weapons##82258 |goto Hallowfall/0 57.06,66.10
|tip You will accept this quest automatically.
step
click Blackpowder Barrel##411930+
|tip They look like large wooden barrels with metal hardware on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 5 Keg of Black Powder##213630 |q 82258/1 |goto Hallowfall/0 57.06,66.10
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.39,65.42 |count 1
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.62,66.18 |count 2
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.64,66.70 |count 3
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.68,67.40 |count 4
|next "TWW_World_Quest_Emissaries"
step
label quest-81815
accept Skyrider Racing - Dunelle's Detour##81815 |goto Hallowfall/0 72.78,38.42
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219557
Tell her _"I'd like to try the course."_ |gossip 121269 |noautogossip
Prepare for the Race |havebuff Race Starting##439277 |goto Hallowfall/0 72.78,38.42 |q 81815
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 72.72,38.49 |q 81815
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81815/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81818
accept Skyrider Racing - Light's Redoubt Descent##81818 |goto Hallowfall/0 41.43,67.25
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219559
Tell her _"I'd like to try the course."_ |gossip 121275 |noautogossip
Prepare for the Race |havebuff Race Starting##439281 |goto Hallowfall/0 41.43,67.25 |q 81818
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 41.38,67.13 |q 81818
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81818/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81822
accept Skyrider Racing - Mereldar Meander##81822 |goto Hallowfall/0 38.97,61.35
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219561
Tell her _"I'd like to try the course."_ |gossip 121281 |noautogossip
Prepare for the Race |havebuff Race Starting##439283 |goto Hallowfall/0 38.97,61.35 |q 81822
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 39.00,61.20 |q 81822
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81822/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81819
accept Skyrider Racing - Stillstone Slalom##81819 |goto Hallowfall/0 60.41,26.01
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219560
Tell him _"I'd like to try the course."_ |gossip 121278 |noautogossip
Prepare for the Race |havebuff Race Starting##439282 |goto Hallowfall/0 60.41,26.01 |q 81819
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 60.54,25.92 |q 81819
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81819/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81823
accept Skyrider Racing - Velhan's Venture##81823 |goto Hallowfall/0 54.13,17.41
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219562
Tell him _"I'd like to try the course."_ |gossip 121284 |noautogossip
Prepare for the Race |havebuff Race Starting##439284 |goto Hallowfall/0 54.13,17.41 |q 81823
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 54.03,17.40 |q 81823
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81823/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-82852
accept Special Assignment: Lynx Rescue##82852 |goto Hallowfall/0 67.96,63.56
|tip You will accept this quest automatically.
step
clicknpc Twinkle##226088
|tip If Twinkle is not here, look for another lynx nearby.
|tip It will appear on your minimap as a yellow dot.
Find and Befriend a Lost Lynx |q 82852/1 |goto Hallowfall/0 66.94,63.48
step
extraaction Crush Windpipe##453203
|tip Use the ability on-screen every time it's available to help kill the Nightmares.
kill 4 Vanishing Nightmare##224922 |q 82852/2 |goto Hallowfall/0 65.89,63.67
|next "TWW_World_Quest_Emissaries"
step
label quest-82787
accept Special Assignment: Rise of the Colossals##82787 |goto Hallowfall/0 63.47,8.56
|tip You will accept this quest automatically.
stickystart "Collect_Bleak_Chum"
step
click Frothing Waters+
|tip They look like large blue pools in the water off the coast around this area.
|tip A Bleak Chum is required each time you summon a Colossal.
Slay #3# Colossals |q 82787/2 |goto Hallowfall/0 63.47,8.56
|tip The enemy that spawns is random and elite.
|tip You may need a group for this.
|tip You can get credit for killing another player's Colossal and avoid farming Chum.
step
label "Collect_Bleak_Chum"
Kill Bleak enemies around this area |kill Bleak Claw-Eater##224749,Bleak Beastbreaker##224746,Bleak Flesh-Taker##224747,Bleak Seatamer##224745,Bleak Beak-Carver##224748
|tip These enemies are elite and may require a group.
collect 3 Bleak Chum##224183 |q 82787/1 |goto Hallowfall/0 64.07,8.80
|next "TWW_World_Quest_Emissaries"
step
label quest-81816
accept Skyrider Racing - Tenir's Traversal##81816 |goto Hallowfall/0 59.19,68.94
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219558
Tell him _"I'd like to try the course."_ |gossip 121272 |noautogossip
Prepare for the Race |havebuff Race Starting##439278 |goto Hallowfall/0 59.19,68.94 |q 81816
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 59.30,68.94 |q 81816
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81816/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-82586
accept Spore Ender##82586 |goto Hallowfall/0 61.05,62.34
|tip You will accept this quest automatically.
stickystart "Collect_Fragrant_Mirespores"
step
kill Darkcap Tain##226285 |q 82586/1 |goto Hallowfall/0 60.98,65.37
step
label "Collect_Fragrant_Mirespores"
Kill enemies around this area |kill Mirehat Fungalmancer##221362,Sludgeborn Shambler##220734,Mirehat Sporedancer##221363,Cultivated Mireshroom##221464,Cultivated Mireshroom##221366
collect 30 Fragrant Mirespores##225655 |q 82586/2 |goto Hallowfall/0 61.05,62.34
|next "TWW_World_Quest_Emissaries"
step
label quest-76586
accept Spreading The Light##76586 |goto Hallowfall/0 64.50,30.35
|tip You will accept this quest automatically.
step
collect Radiant Remnant##206350 |n
|tip They drop from enemies all over this area.
click Lesser Keyflame+
|tip They look like bowls with crystals in them.
|tip You need to contribue three Radiant Remnants to each Lesser Keyflame.
Activate #4# Lesser Keyflames |q 76586/1 |goto Hallowfall/0 64.50,30.35
|next "TWW_World_Quest_Emissaries"
step
label quest-82298
accept The Thing from the Swamp##82298 |goto Hallowfall/0 61.07,68.99
|tip You will accept this quest automatically.
step
clicknpc Guttergunk##223409
Defeat Guttergunk in a Pet Battle |q 82298/1 |goto Hallowfall/0 61.07,68.99
|next "TWW_World_Quest_Emissaries"
step
label quest-82585
accept With Great Pyre##82585 |goto Hallowfall/0 69.19,32.62
|tip You will accept this quest automatically.
|polish
step
use the Periapt of Pure Flame##225555
Wield the Gift of Pure Flame |q 82585/1 |goto Hallowfall/0 69.19,32.62
step
kill 6 Hollow Gigantobella##226065 |q 82585/1 |goto Hallowfall/0 69.19,32.62
|next "TWW_World_Quest_Emissaries"
step
label quest-82288
accept Work Hard, Play Hard##82288 |goto Hallowfall/0 41.94,55.44
|tip You will accept this quest automatically.
step
clicknpc Arathi Orphan##218493
|tip Hit one of the targets with a rock using the button on your vehicle bar.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 41.91,55.52 |count 1
step
talk Arathi Orphan##218493
Tell him _"I can play."_ |gossip 122374
|tip Walk along the fence without falling off around the front and to the side of the building.
|tip Click the orphan at the end of the fence.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 42.00,55.63 |count 2
Walk the fence to this spot [Hallowfall/0 41.70,55.29]
step
talk Arathi Orphan##218493
Tell him _"I can play."_ |gossip 121459
|tip Find the hiding orphan.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 41.83,55.26 |count 3
The orphan hides at [Hallowfall/0 41.65,54.54]
step
clicknpc Arathi Orphan##218493
Tell him _"I can play."_ |gossip 122367
|tip Use the abilities on your bar until the orphans "slay" you.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 42.02,55.43 |count 4
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Isle of Dorn World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in the Isle of Dorn.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2248,2339},
patch='110002',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-82470
accept Arcane Riddles##82470 |goto Isle of Dorn/0 29.94,52.48
|tip You will accept this quest automatically.
step
click Arcane Crystal
|tip Click blue orbs in pairs to switch their position and their respective lines.
|tip Uncross the lines so none of them overlap.
|tip Do this until you light up all of the lock symbols gold.
Fix the Flow of Magic |q 82470/1 |goto Isle of Dorn/0 29.94,52.48
|next "TWW_World_Quest_Emissaries"
step
label quest-81465
accept Artifacts Galore##81465 |goto Isle of Dorn/0 79.51,29.23
|tip You will accept this quest automatically.
step
click Titan Artifacts+
|tip They look like large white orbs on the ground around this area.
collect 7 Titan Artifact##218454 |q 81465/1 |goto Isle of Dorn/0 79.51,29.23
|next "TWW_World_Quest_Emissaries"
step
label quest-82448
accept Book It to the Library##82448 |goto Isle of Dorn/0 30.53,56.60
|tip You will accept this quest automatically.
|polish
stickystart "Collect_Lost_Tomes"
step
kill Babbling Book##223852 |q 82448/1 |goto Isle of Dorn/0 30.60,57.68
step
label "Collect_Lost_Tomes"
click Arcane Tome+
|tip They look like small books laying on the ground around this area.
|tip They appear on your minimap as yellow dots.
Collect #6# Lost Tomes |q 82448/2 |goto Isle of Dorn/0 30.53,56.60
|next "TWW_World_Quest_Emissaries"
step
label quest-82456
accept Chew On This##82456 |goto Isle of Dorn/0 52.69,56.96
|tip You will accept this quest automatically.
step
clicknpc Hungry Ramolith##225259
|tip They appear on your minimap as yellow dots.
Mount a Hungry Ramolith |q 82456/1 |goto Isle of Dorn/0 52.69,56.96
step
Consume #25# Scrumptious Grass |q 82456/2 |goto Isle of Dorn/0 52.69,56.96
|tip Run over the large stalks of highlighted grass all over this area.
|tip You will gain a brief speed boost for each one.
|next "TWW_World_Quest_Emissaries"
step
label quest-81854
accept Coreway Maintenance Request##81854 |goto Dornogal/0 39.89,58.17
|tip You will accept this quest automatically.
step
click Pile of Coal
Add Fuel |q 81854/1 |goto Dornogal/0 39.89,58.17
step
clicknpc Coreway Repair Rig##221659
Enter the Coreway Repair Rig |q 81854/2 |goto Isle of Dorn/0
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 37.93,57.32 |count 1
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 35.30,55.98 |count 2
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Jump to begin flying.
|tip Fly to the rubble pile.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 35.19,63.36 |count 3
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Jump to begin flying.
|tip Fly to the rubble pile.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 36.96,63.57 |count 4
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Jump to begin flying.
|tip Fly to the rubble pile.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
|next "TWW_World_Quest_Emissaries"
step
label quest-82658
accept Drop and Go##82658 |goto Isle of Dorn/0 46.16,62.08
|tip You will accept this quest automatically.
stickystart "Slay_Nerubians_82658"
step
Enter the cave |goto Isle of Dorn/0 46.16,62.08 < 10 |walk
click Opal-Mining Tools##449528+
|tip They look like wooden toolboxes on the ground inside the cave.
collect 6 Opal-Mining Tools##224074 |q 82658/1 |goto Isle of Dorn/0 47.23,61.31
step
label "Slay_Nerubians_82658"
Kill Nerubian enemies around this area |kill Nerubian Skirmisher##224150,Nerubian Webspinner##224149
|tip Inside the cave.
Slay #10# Nerubians |q 82658/2 |goto Isle of Dorn/0 47.23,61.31
|next "TWW_World_Quest_Emissaries"
step
label quest-82225
accept Excavation Extravaganza##82225 |goto Isle of Dorn/0 62.55,71.17
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area |kill Sargassum Guardian##212582,Quaking Rager##215359,Unbound Peblet##215363,Condensing Sprite##215362,Rising Tidebound##215361,Swarming Sandwhisper##215360,Sandres the Relicbearer##217534
click Titan Artifact+
|tip They look like half-buried large white orbs on the ground around this area.
Support the Excavation Efforts |q 82225/1 |goto Isle of Dorn/0 62.55,71.17
|next "TWW_World_Quest_Emissaries"
step
label quest-82234
accept A Floral Flair for Every Ram##82234 |goto Isle of Dorn/0 42.69,74.74
|tip You will accept this quest automatically.
stickystart "Collect_Crimson_Chargers"
step
click Amber Bloom+
|tip They look like clusters of yellow flowers on the ground around this area.
Collect #3# Amber Blooms |q 82234/2 |goto Isle of Dorn/0 42.69,74.74
step
label "Collect_Crimson_Chargers"
click Crimson Charger+
|tip They look like tall green plants on the ground around this area.
Collect #5# Crimson Charmers |q 82234/1 |goto Isle of Dorn/0 41.67,74.73
step
clicknpc Moss-Draped Ramolith##214945+
clicknpc Vinechewer Ramolith##214946+
Decorate #8# Rams |q 82234/3 |goto Isle of Dorn/0 42.83,74.58
|next "TWW_World_Quest_Emissaries"
step
label quest-81639
accept Book It to the Library##81639 |goto Isle of Dorn/0 75.88,37.23
|tip You will accept this quest automatically.
stickystart "Collect_Small_Glob_of_Honey"
stickystart "Kill_Faithful_of_Zirix"
step
Enter the cave |goto Isle of Dorn/0 75.12,38.59 < 15 |walk
kill Sazh'kel##221166 |q 81639/3 |goto Isle of Dorn/0 75.87,36.73
|tip Down in the lowest part of the cave.
step
label "Collect_Small_Glob_of_Honey"
click Spilled Fire honey##439463+
|tip They look like large yellow puddles on the ground inside and outside the cave.
collect 8 Small Glob of Honey##211811 |q 81639/2 |goto Isle of Dorn/0 75.88,37.23
step
label "Kill_Faithful_of_Zirix"
kill 10 Faithful of Zirix##216938 |q 81639/1 |goto Isle of Dorn/0 75.88,37.23
|tip Inside and outside the cave.
|next "TWW_World_Quest_Emissaries"
step
label quest-81710
accept Mead for the Catalog##81710 |goto Isle of Dorn/0 77.64,47.91
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Disc##221495
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Disc |q 81710/1 |goto Isle of Dorn/0 77.64,47.91
step
Take Pictures of Wildlife |q 81710/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-82455
accept No More Bread##82455 |goto Isle of Dorn/0 40.40,61.15
|tip You will accept this quest automatically.
step
kill Bloated Sea Gull##224018+
click Salty Bread+
|tip They look like small loaves of bread on the ground around this area.
click Sea Gull Egg+
|tip They look like small white eggs on the ground around this area.
Cut Back the Sea Gull Habitat |q 82455/1 |goto Isle of Dorn/0 40.40,61.15
|next "TWW_World_Quest_Emissaries"
step
label quest-82451
accept Preserving Plush Pals##82451 |goto Isle of Dorn/0 30.88,52.58
|tip You will accept this quest automatically.
step
click Singed Plush+
|tip They look like small blue elephants on the ground around the area.
Gather #8# Singed Plushes |q 82451/1 |goto Isle of Dorn/0 30.88,52.58
step
click Elekk Pile
Bring the Singed Plushes to Safety |q 82451/2 |goto Isle of Dorn/0 29.10,56.09
|next "TWW_World_Quest_Emissaries"
step
label quest-81512
accept Props and Incense##81512 |goto Isle of Dorn/0 66.96,56.53
|tip You will accept this quest automatically.
stickystart "Collect_Pristine_Horns"
step
click Ashenfold+
|tip They look like small patches of purple flowers on the ground around this area.
collect 6 Ashenfold##218740 |q 81512/2 |goto Isle of Dorn/0 66.96,56.53
step
label "Collect_Pristine_Horns"
kill Shalehorn Impaler##216970+
collect 2 Pristine Horn##218739 |q 81512/1 |goto Isle of Dorn/0 66.96,56.53
|next "TWW_World_Quest_Emissaries"
step
label quest-82237
accept Rising the Falls##82237 |goto Isle of Dorn/0 56.68,42.72
|tip You will accept this quest automatically.
|polish
step
click Climbing Gear
Acquire the Climbing Gear |q 82237/1 |goto Isle of Dorn/0 56.68,42.72
step
click Handhold
Find a Handhold on the Cliff |q 82237/2 |goto Isle of Dorn/0 56.60,42.73
step
click Ancient Celestite+
|tip They look like large blue crystals on the rock face.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid blue water running over stones that will lower your grip.
Collect #6# Sparkrubble Ore |q 82237/3 |goto Isle of Dorn/0 56.49,42.89
|next "TWW_World_Quest_Emissaries"
step
label quest-82291
accept Robot Rumble##82291 |goto Isle of Dorn/0 48.17,31.96
|tip You will accept this quest automatically.
step
clicknpc Awakened Custodian##223407
Defeat the Awakened Custodian in a Pet Battle |q 82291/1 |goto Isle of Dorn/0 48.17,31.96
|next "TWW_World_Quest_Emissaries"
step
label quest-82292
accept Rock Collector##82292 |goto Isle of Dorn/0 38.33,78.83
|tip You will accept this quest automatically.
step
talk Collector Dyna##223446
Tell her _"Begin pet battle."_ |gossip 122407 |noautogossip
Defeat Collector Dyna in a Pet Battle |q 82292/1 |goto Isle of Dorn/0 38.33,78.83
|next "TWW_World_Quest_Emissaries"
step
label quest-80295
accept Rocks, Water and Elemental Fodder##80295 |goto Isle of Dorn/0 71.34,52.40
|tip You will accept this quest automatically.
|polish
step
click Elemental Silt Mound##413246+
|tip They look like mounds of sand on the ground around this area.
Kill enemies around this area |kill Scornful Sandshoal##214662,Frenzied Tidecore##213699
collect 20 Living Coalesced Silt##217343 |q 80295/1 |goto Isle of Dorn/0 71.34,52.40
|next "TWW_World_Quest_Emissaries"
step
label quest-81803
accept Skyrider Racing - Basin Bypass##81803 |goto Isle of Dorn/0 53.49,64.21
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219547
Tell her _"I'd like to try the course."_ |gossip 121239 |noautogossip
Prepare for the Race |havebuff Race Starting##439235 |goto Isle of Dorn/0 53.49,64.21 |q 81803
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 53.48,64.35 |q 81803
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81803/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81799
accept Skyrider Racing - Dornogal Drift##81799 |goto Dornogal/0 42.99,15.49
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219542
Tell her _"I'd like to try the course."_ |gossip 121233 |noautogossip
Prepare for the Race |havebuff Race Starting##439233 |goto Dornogal/0 42.99,15.49 |q 81799
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Dornogal/0 43.33,15.85 |q 81799
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81799/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81806
accept Skyrider Racing - Orecreg's Doglegs##81806 |goto Isle of Dorn/0 32.93,74.83
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219550
Tell him _"I'd like to try the course."_ |gossip 121248 |noautogossip
Prepare for the Race |havebuff Race Starting##439239 |goto Isle of Dorn/0 32.93,74.83 |q 81806
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 33.00,74.80 |q 81806
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81806/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81802
accept Skyrider Racing - Storm's Watch Survey##81802 |goto Isle of Dorn/0 38.58,43.46
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219544
Tell him _"I'd like to try the course."_ |gossip 121236 |noautogossip
Prepare for the Race |havebuff Race Starting##439234 |goto Isle of Dorn/0 38.58,43.46 |q 81802
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 38.67,43.48 |q 81802
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81802/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81805
accept Skyrider Racing - Thunderhead Trail##81805 |goto Isle of Dorn/0 58.33,24.85
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219549
Tell her _"I'd like to try the course."_ |gossip 121245 |noautogossip
Prepare for the Race |havebuff Race Starting##439238 |goto Isle of Dorn/0 58.33,24.85 |q 81805
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 58.35,24.66 |q 81805
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81805/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81804
accept Skyrider Racing - The Wold Ways##81804 |goto Isle of Dorn/0 62.16,46.02
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219548
Tell him _"I'd like to try the course."_ |gossip 121242 |noautogossip
Prepare for the Race |havebuff Race Starting##439236 |goto Isle of Dorn/0 62.16,46.02 |q 81804
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 62.16,46.11 |q 81804
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81804/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81649
accept Special Assignment: Titanic Resurgence##81649 |goto Isle of Dorn/0 70.33,73.99
|tip You will accept this quest automatically.
|polish
step
talk Stormrook##221533
Tell him _"(Skyriding) I'll take the reins this time."_ |gossip 123532
_Or_
Tell him _"You steer, and I'll shoot."_ |gossip 121731
|tip The skyriding option will require you to fly, otherwise you will just need to shoot.
Obtain a Supercharged Stormrook |q 81649/2 |goto Isle of Dorn/0 70.20,71.80
step
kill Eroded Titan Construct##221205 |q 81649/1 |goto Isle of Dorn/0 70.33,73.99
|tip Avoid large red orbs in the air.
|tip Green orbs will renew your vigor if you are flying.
|tip If Skyriding, Whirling Surge will heal you, Surge Forward will shield you, and Skyward Ascent will deal damage.
|next "TWW_World_Quest_Emissaries"
step
label quest-81650
accept Special Assignment: Titanic Resurgence##81650 |goto Isle of Dorn/0 72.45,30.81
|tip You will accept this quest automatically.
step
talk Stormrook##221535
Tell him _"(Skyriding) I'll take the reins this time."_ |gossip 121732
_Or_
Tell him _"You steer, and I'll shoot."_ |gossip 121744
|tip The skyriding option will require you to fly, otherwise you will just need to shoot.
Obtain a Supercharged Stormrook |q 81650/2 |goto Isle of Dorn/0 72.45,30.81
step
kill Eroded Titan Construct##221213 |q 81650/1 |goto Isle of Dorn/0 73.86,30.20
|tip You can find the construct all over this area.
|tip Avoid large red orbs in the air.
|tip Green orbs will renew your vigor if you are flying.
|tip If Skyriding, Whirling Surge will heal you, Surge Forward will shield you, and Skyward Ascent will deal damage.
|next "TWW_World_Quest_Emissaries"
step
label quest-82355
accept Special Assignment: Cinderbee Surge##82355 |goto Isle of Dorn/0 72.07,37.54
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Amber Honeyslime##222846,Cinderbee Drone##215024,Cinderbee Forager##222976,Persistent Honeyslime##222843
|tip These enemies are elite and may require a group.
Subdue the Cinderbees |q 82355/1 |goto Isle of Dorn/0 72.07,37.54
|next "TWW_World_Quest_Emissaries"
step
label quest-81621
accept Tunnels Be Gone!##81621 |goto Isle of Dorn/0 62.83,44.78
|tip You will accept this quest automatically.
step
use the Explosive Sticks##219284
Destroy the Kobold Tunnel |q 81621/1 |goto Isle of Dorn/0 62.85,44.78 |count 1
step
use the Explosive Sticks##219284
Destroy the Kobold Tunnel |q 81621/1 |goto Isle of Dorn/0 63.54,44.35 |count 2
step
use the Explosive Sticks##219284
Destroy the Kobold Tunnel |q 81621/1 |goto Isle of Dorn/0 64.18,42.96Isle of Dorn/0 64.18,42.96 |count 3
|next "TWW_World_Quest_Emissaries"
step
label quest-81675
accept Water the Sheep##81675 |goto Dornogal/0 57.82,26.40
|tip You will accept this quest automatically.
stickystart "Punt_Pests"
step
clicknpc Parched Mosswool##221413+
use the Globe of Nourishment##219525
|tip Use it on Parched Mosswools around this area.
Water #8# Mosswool Sheep |q 81675/1 |goto Dornogal/0 57.82,26.40
step
label "Punt_Pests"
clicknpc Stone Borer##221425+
|tip They look like small snakes on the ground around this area.
Punt #10# Pests |q 81675/2 |goto Dornogal/0 57.82,26.40
|next "TWW_World_Quest_Emissaries"
step
label quest-81615
accept Wick Points##81615 |goto Isle of Dorn/0 63.48,42.78
|tip You will accept this quest automatically.
step
Kill Candlelit enemies around this area |kill Candlelit Big-Boomer##211546,Candlelit Blind-Hound##218213,Candlelit Lootsnatcher##213197,Candlelit Hexthrower##213685,Candlelit Ouchpatcher##214252
Slay #10# Kobolds |q 81615/1 |goto Isle of Dorn/0 63.48,42.78
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\The Ringing Deeps World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in the The Ringing Deeps.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2214},
patch='110002',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-82653
accept Aggregation of Horrors##82653 |goto The Ringing Deeps/0 65.03,84.53
|tip You will accept this quest automatically.
step
Escort #3# Breaker |q 82653/1 |goto The Ringing Deeps/0 65.03,84.53
|tip Kill enemies around the Point Breaker mobs and escort all 3 of them to the boss.
|tip When 3 of them are channeling, the shield will drop.
|tip A timer indicates the next Skardyn swarm.
step
kill Aggregation of Horrors##220999 |q 82653/2 |goto The Ringing Deeps/0 64.95,87.85
_EVERYONE:_ |grouprole EVERYONE
|tip Move quickly out of dark swirling areas on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip AoE {o}Fractured Skardyn{} following {o}Dark Awakening{} casts. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip {o}Voidquake{} deals heavy damage to everyone within 150 yards of the boss. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay in melee range at all times or {o}Annihilation Barrage{} will deal massive damage to everyone. |grouprole TANK
|tip Pick up {o}Fractured Skardyn{} following {o}Dark Awakening{} casts. |grouprole TANK
|next "TWW_World_Quest_Emissaries"
step
label quest-82552
accept All Worked Up##82552 |goto The Ringing Deeps/0 48.99,16.75
|tip You will accept this quest automatically.
step
click Broken Machinery
|tip They look like pillars shooting fireballs on the ground around this area.
Kill enemies around this area |kill Dogmatic Forgecaster##212884,Dogmatic Machine Speaker##212878,Earthenwork Ironstrider##213951,Dogmatic Soot-Seer##212876,High Speaker's Construct##219635
Thwart the Earthenworks Disruptions |q 82552/1 |goto The Ringing Deeps/0 47.74,19.62
|next "TWW_World_Quest_Emissaries"
step
label quest-82523
accept Candle Kingbreaker##82523 |goto The Ringing Deeps/0 64.37,32.75
|tip You will accept this quest automatically.
|polish
step
click Intriguing Scrap+
|tip They look like piles of junk and random objects on the ground around this area.
Kill enemies around this area |kill Waxtail Browbeater##213000,Waxtail Scavenger##212985,Domesticated Candlefly##213960,Waxtail Trapper##212987,Waxtail Outrider##213095
|tip You can also gain a large chunk of progress by flying through the golden rings in the air around this area.
Liberate the Warrens |q 82523/1 |goto The Ringing Deeps/0 64.37,32.75
|next "TWW_World_Quest_Emissaries"
step
label quest-82256
accept Capturing the Cataract's Creatures##82256 |goto The Ringing Deeps/0 52.90,47.58
|tip You will accept this quest automatically.
step
click Cataloger's Disc
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Stealthed Cataloger's Disc |q 82256/1 |goto The Ringing Deeps/0 52.90,47.58
step
Take Pictures of Discordance |q 82256/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-83715
accept Claimed Salvage##83715 |goto The Ringing Deeps/0 58.02,78.10
|tip You will accept this quest automatically.
stickystart "Slay_Goblins"
step
click Salvage Crate##455204+
|tip They look like small crates on the ground around this area.
collect 6 Ancient Titan Salvage##226020 |q 83715/2 |goto The Ringing Deeps/0 58.02,78.10
step
label "Slay_Goblins"
Kill enemies around this area |kill Overworked Cook##220744,Thirsty Salvager##220756,Weary Laborer##224759,Goblin Slain##227374
Slay #12# Goblins |q 83715/1 |goto The Ringing Deeps/0 58.02,78.10
|next "TWW_World_Quest_Emissaries"
step
label quest-81750
accept Cloud Farming##81750 |goto The Ringing Deeps/0 56.94,67.27
|tip You will accept this quest automatically.
step
Farm #30# Clouds |q 81750/1 |goto The Ringing Deeps/0 56.94,67.27
|tip Fly through the rings in the air around this area.
|tip Avoid purple orbs that stall your flight.
|next "TWW_World_Quest_Emissaries"
step
label quest-84429
accept Construct Containment##84429 |goto The Ringing Deeps/0 58.01,40.13
|tip You will accept this quest automatically.
step
kill Lava Laden Crystal Construct##226968 |q 84429/1 |goto The Ringing Deeps/0 58.01,40.13
|tip It runs all over the ruins.
|tip Skyride through it to stun it and use snare effects to keep it slowed as it tries to run.
|tip You can skyride through it until it has 9 stacks of the debuff before engaging.
|tip Use a crowd control effect often to ensure that the stacks do not fall off.
|next "TWW_World_Quest_Emissaries"
step
label quest-82580
accept Courier Mission: Ore Recovery##82580 |goto The Ringing Deeps/0 64.63,63.78
|tip You will accept this quest automatically.
step
click Ore Bucket
Pick Up an Ore Bucket |q 82580/1 |goto The Ringing Deeps/0 64.63,63.78
step
click Taelloch Ore+
|tip They look like sparkling clumps of stone near yellow crystals around this area.
extraaction Stabilize!##451372
|tip Do not use your mount.
|tip Use the ability on-screen to manage your stability.
|tip Initiate the cast within the smallest bar on the spell cast bar to get a speed boost.
|tip If you drop your ore, run around and pick up everything quickly.
Pick Up 10 Ore |havebuff 10 Carrying Ore##450692 |goto The Ringing Deeps/0 67.17,63.18
step
Follow the path up |goto The Ringing Deeps/0 65.15,63.80 < 15 |only if walking
extraaction Stabilize!##451372
|tip Do not use your mount.
|tip Use the ability on-screen to manage your stability.
|tip Initiate the cast within the smallest bar on the spell cast bar to get a speed boost.
|tip If you drop your ore, run around and pick up everything quickly.
Return #10# Ore |q 82580/2 |goto The Ringing Deeps/0 61.51,64.20
|next "TWW_World_Quest_Emissaries"
step
label quest-83930
accept Deworming Solution##83930 |goto The Ringing Deeps/0 58.19,37.98
|tip You will accept this quest automatically.
step
Kill Deeps enemies around this area |kill Deeps Larva##215733,Deeps Spitter##215735
Slay #12# Worms |q 83930/1 |goto The Ringing Deeps/0 58.19,37.98
You can find more inside the mine at [The Ringing Deeps/0 58.54,36.06]
|next "TWW_World_Quest_Emissaries"
step
label quest-83538
accept Excavation Liberation##83538 |goto The Ringing Deeps/0 61.66,87.38
|tip You will accept this quest automatically.
step
kill Invasive Hardhead##219163+
click Earthen Tool+
|tip They look like small pickaxes and hammers on the ground around this area.
|tip They appear on your minimap as yellow dots.
Defeat Hostile Creatures and Retrieve Earthen Tools |q 83538/1 |goto The Ringing Deeps/0 61.66,87.38
|next "TWW_World_Quest_Emissaries"
step
label quest-83537
accept Geothermal Gem Treatment##83537 |goto The Ringing Deeps/0 39.65,16.47
|tip You will accept this quest automatically.
step
Enter the cave |goto The Ringing Deeps/0 40.36,17.91 < 10 |walk
click Dull Gemstone+
|tip They look like large dull gray crystals on the ground inside the cave.
Collect #12# Dull Gems |q 83537/1 |goto The Ringing Deeps/0 39.65,16.47
step
extraaction Heat Treatment##456605
|tip Throw the gem in the lava.
|tip Stand still if a chain appears until the gem treats.
kill Gem-Jammed Slag Bubble##226969
|tip Kill the slag that spawns.
click Heat-treated Gemstone+
|tip They spawn after killing the slag.
Heat Treat #12# Gems |q 83537/2 |goto The Ringing Deeps/0 41.81,19.61
|next "TWW_World_Quest_Emissaries"
step
label quest-82300
accept Major Malfunction##82300 |goto The Ringing Deeps/0 66.85,58.09
|tip You will accept this quest automatically.
step
clicknpc Haywire Servobot##222535
Defeat Haywire Servobot in a Pet Battle |q 82300/1 |goto The Ringing Deeps/0 66.85,58.09
|next "TWW_World_Quest_Emissaries"
step
label quest-83079
accept Mineral Buildup##83079 |goto The Ringing Deeps/0 47.29,42.54
|tip You will accept this quest automatically.
step
kill 12 Mineral Deposit##225443 |q 83079/1 |goto The Ringing Deeps/0 47.29,42.54
|next "TWW_World_Quest_Emissaries"
step
label quest-81656
accept Nothing to Waste##81656 |goto The Ringing Deeps/0 58.82,52.07
|tip You will accept this quest automatically.
stickystart "Slay_Skardyn"
step
click Abandoned Tools+
|tip They look like small tool boxes on the ground around this area.
collect 6 Mining Tools##219468 |q 81656/2 |goto The Ringing Deeps/0 58.82,52.07
step
label "Slay_Skardyn"
Kill enemies around this area |kill Skardyn Reaver##215842,Skardyn Devastator##215844,Voidstone Behemoth##221307,Skardyn Degenerator##215843,Rampaging Blight##220273
Slay #12# Skardyn |q 81656/1 |goto The Ringing Deeps/0
|next "TWW_World_Quest_Emissaries"
step
label quest-82293
accept The Power of Friendship##82293 |goto The Ringing Deeps/0 61.58,37.60
|tip You will accept this quest automatically.
step
talk Friendhaver Grem##223444
Tell him _"Begin pet battle."_ |gossip 122405 |noautogossip
Defeat Friendhaver Grem in a Pet Battle |q 82293/1 |goto The Ringing Deeps/0 61.58,37.60
|next "TWW_World_Quest_Emissaries"
step
label quest-83101
accept Reaching for Resources##83101 |goto The Ringing Deeps/0 55.19,50.83
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 83101/1 |goto The Ringing Deeps/0 55.19,50.83
step
click Handhold
Find a Handhold on the Cliff |q 83101/2 |goto The Ringing Deeps/0 55.61,51.51
step
click Ancient Celestite+
|tip They look like large blue crystals on the rock face..
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid blue water running over stones that will lower your grip.
Collect #6# Ancient Celestite |q 83101/3 |goto The Ringing Deeps/0 55.61,51.51
|next "TWW_World_Quest_Emissaries"
step
label quest-82615
accept Reclaiming the Waterworks##82615 |goto The Ringing Deeps/0 44.69,44.97
|tip You will accept this quest automatically.
|polish
stickystart "Slay_Kobolds_82615"
stickystart "Kill_Waterworks_Brutes_82615"
step
click Chest of Dynamite##446357+
|tip They look like small wooden crates on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 4 Unstable Dynamite##223888 |q 82615
|tip You can also loot them from Kobolds.
step
click Kobold Tunnel+
|tip They look like mounds of dirt all over this area.
|tip They appear on your minimap as yellow dots.
Blow Up #4# Kobold Tunnels |q 82615/3 |goto The Ringing Deeps/0 44.69,44.97
step
label "Slay_Kobolds_82615"
Kill Waterworks enemies around this area |kill Waterworks Gem-snatcher##219789,Waterworks Opportunist##217249
Slay #12# Kobolds |q 82615/1 |goto The Ringing Deeps/0 44.69,44.97
step
label "Kill_Waterworks_Brutes_82615"
kill 4 Waterworks Brute##222979 |q 82615/2 |goto The Ringing Deeps/0 44.69,44.97
|next "TWW_World_Quest_Emissaries"
step
label quest-81767
accept Scrounge that Scrap!##81767 |goto The Ringing Deeps/0 71.44,42.56
|tip You will accept this quest automatically.
step
click Promising Scrap Pile+
|tip They look like large piles of wood, barrels, and tools on the ground around this area.
|tip They appear on your minimap as yellow dots.
Locate #6# Useful Scrap |q 81767/1 |goto The Ringing Deeps/0 71.44,42.56
|next "TWW_World_Quest_Emissaries"
step
label quest-81811
accept Skyrider Racing - Cataract River Cruise##81811 |goto The Ringing Deeps/0 52.47,46.86
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219554
Tell him _"I'd like to try the course."_ |gossip 121260 |noautogossip
Prepare for the Race |havebuff Race Starting##439261 |goto The Ringing Deeps/0 52.47,46.86 |q 81811
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 52.41,46.98 |q 81811
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81811/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81810
accept Skyrider Racing - Chittering Concourse##81810 |goto The Ringing Deeps/0 67.91,34.80
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219553
Tell her _"I'd like to try the course."_ |gossip 121257 |noautogossip
Prepare for the Race |havebuff Race Starting##439260 |goto The Ringing Deeps/0 67.91,34.80 |q 81810
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 67.89,34.99 |q 81810
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81810/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81807
accept Skyrider Racing - Earthenworks Weave##81807 |goto The Ringing Deeps/0 40.86,11.31
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219551
Tell her _"I'd like to try the course."_ |gossip 121251 |noautogossip
Prepare for the Race |havebuff Race Starting##439257 |goto The Ringing Deeps/0 40.86,11.31 |q 81807
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 40.91,11.20 |q 81807
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81807/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81813
accept Skyrider Racing - Opportunity Point Amble##81813 |goto The Ringing Deeps/0 63.56,75.13
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219556
Tell him _"I'd like to try the course."_ |gossip 121266 |noautogossip
Prepare for the Race |havebuff Race Starting##439263 |goto The Ringing Deeps/0 63.56,75.13 |q 81813
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 63.50,75.06 |q 81813
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81813/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81808
accept Skyrider Racing - Ringing Deeps Ramble##81808 |goto The Ringing Deeps/0 42.22,27.42
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219552
Tell her _"I'd like to try the course."_ |gossip 121233 |noautogossip
Prepare for the Race |havebuff Race Starting##439258 |goto The Ringing Deeps/0 42.22,27.42 |q 81808
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 42.31,27.77 |q 81808
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81808/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81812
accept Skyrider Racing - Taelloch Twist##81812 |goto The Ringing Deeps/0 66.64,68.68
|tip You will accept this quest automatically.
|polish
step
talk Bronze Timekeeper##219555
Tell her _"I'd like to try the course."_ |gossip 121263 |noautogossip
Prepare for the Race |havebuff Race Starting##439262 |goto The Ringing Deeps/0 66.64,68.68 |q 81812
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 66.62,68.57 |q 81812
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81812/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81691
accept Special Assignment: Shadows Below##81691 |goto The Ringing Deeps/0 68.32,52.04
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area |kill Shadow-hemmed Fog Beast##221663,Voracious Fog Beast##219446,Coalesced Shadeling##224788,Shadow-seized Loader##223866,Famished Fog Beast##219447,Deathspore Lashroom##221424
collect 12 Radiant Fuel Crystal##219522 |n
|tip Kill enemies and collect fuel crystals to refuel the drills.
|tip Each drill requires at least 5 crystals.
clicknpc Trapped Emergency Militia##223938+
|tip They look like NPCs trapped in shadow puddles.
|tip Grab them and run away, then collect the crystal they leave behind.
use the Radiant Fuel Crystal##219522
|tip Combine 3 smaller crystals into a radiant crystal.
Refuel #3# Drills |q 81691/2 |goto The Ringing Deeps/0 68.32,52.04
step
click Shadowseam |goto The Ringing Deeps/0 68.16,52.12
Teleport to Droughung |goto The Ringing Deeps/0 68.16,48.73 < 10 |c |noway |q 81691
step
kill Droghung##221316 |q 81691/3 |goto The Ringing Deeps/0 67.45,48.14
|tip Inside the cave.
|tip Don't stand in front of "Dread Fumes."
|tip Interrupt "Suffocating Smog."
step
click Portal to the Surface |goto The Ringing Deeps/0 67.18,48.54
Return to the Surface |goto The Ringing Deeps/0 68.26,52.14 < 10 |c |noway
|next "TWW_World_Quest_Emissaries"
step
label quest-83229
accept Special Assignment: When the Deeps Stir##83229 |goto The Ringing Deeps/0 52.24,10.78
|tip You will accept this quest automatically.
|polish
step
kill Awakened Flamecoil Serpent##225895 |q 83229/1 |goto The Ringing Deeps/0 50.23,11.89 |count 1
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
step
kill Awakened Volcanic Fury##225896 |q 83229/1 |goto The Ringing Deeps/0 49.57,9.64 |count 2
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
step
kill Awakened Colossus##225898 |q 83229/1 |goto The Ringing Deeps/0 53.07,16.50 |count 3
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
step
kill Awakened Sulfuric Devastator##225894 |q 83229/1 |goto The Ringing Deeps/0 56.74,10.06 |count 4
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
|next "TWW_World_Quest_Emissaries"
step
label quest-83080
accept Taelloch Cleanup##83080 |goto The Ringing Deeps/0 65.15,57.97
|tip You will accept this quest automatically.
|polish
step
click Earthen Memory Gem Fragment+
|tip They look like small pieces of gems on the ground around this area.
Kill enemies around this area |kill Voidtouched Speaker##223469,Cursed Miner##213565,Skardyn Husk##213566,Unstable Skardyn##223414,Corrupted Spellshaper##219302
Kill Skardyn and Collect Earthen Memory Gems |q 83080/1 |goto The Ringing Deeps/0 65.15,57.97
|next "TWW_World_Quest_Emissaries"
step
label quest-83028
accept Thieving Snufflers##83028 |goto The Ringing Deeps/0 52.71,34.90
|tip You will accept this quest automatically.
|polish
stickystart "Kill_Sweetsnuffler"
step
clicknpc Pilfered Cinderbrew##225339
Recover #6# Pilfered Cinderbrew |q 83028/1 |goto The Ringing Deeps/0 52.71,34.90
step
label "Kill_Sweetsnuffler"
kill 12 Sweetsnuffler##219799 |q 83028/2 |goto The Ringing Deeps/0 52.71,34.90
|next "TWW_World_Quest_Emissaries"
step
label quest-83048
accept Wayward Walkers##83048 |goto The Ringing Deeps/0 43.79,36.86
|tip You will accept this quest automatically.
|polish
step
clicknpc Lost Cogwalker##225375+
|tip They look like small walking robots around this area.
Return #8# Lost Cogwalkers |q 83048/1 |goto The Ringing Deeps/0 43.79,36.86
|next "TWW_World_Quest_Emissaries"
step
label quest-82519
accept You Go Take Candle##82519 |goto The Ringing Deeps/0 58.72,24.99
|tip You will accept this quest automatically.
step
click Flickerflame Candles##411755+
|tip They look like large bundles of candles on the ground around this area.
Kill Flickerflame enemies around this area |kill Flickerflame Sticker##212629,Flickerflame Candlekeeper##212524,Flickerflame Scrabbler##212515,Flickerflame Geomancer##212528,Flickerflame Enforcer##212548,Flickerflame Overseer##212542
collect 12 Flickerflame Candle##210878 |q 82519/1 |goto The Ringing Deeps/0 58.72,24.99
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Special Missions Locked",{
author="support@zygorguides.com",
startlevel=70,
areapoiid={7828,7823,7826,7827,7825,7886,7829},
patch='110002',
},[[
step
Complete Additional World Quests |complete false
|tip Special Assignments require a certain number of world quests be complete in the same zone before unlocking.
|tip Complete the number of world quests indicated on the special assignment icon before clicking it.
|tip If you complete the indicated number of quests but it still won't unlock, relogging should fix it.
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Theater Troupe",{
author="support@zygorguides.com",
startlevel=70,
areapoiid={8076,7901,7943,7899,8078,7900,8079,7902,8077,7654,8080,7941},
patch='110002',
},[[
step
talk Stage Manager Huberta##214296
accept Thespians at the Proscenium##79150 |goto Isle of Dorn/0 56.44,51.38
step
talk Architect Brokfor##217241
Tell him _"Huberta wants me to help you."_ |gossip 122494
Speak to Brokfor |q 79150/1 |goto The Proscenium/0 38.01,43.12
step
clicknpc Bushy Weeds##217456+
|tip They look like large green plants on the stairs around this area.
|tip Run away when you click them to pull them out.
Pull #6# Bushy Weeds |q 79150/2 |goto Isle of Dorn/0 56.44,49.31
step
talk Stage Manager Huberta##214296
turnin Thespians at the Proscenium##79150 |goto Isle of Dorn/0 56.44,51.38
accept The Grand Debut##79282 |goto Isle of Dorn/0 56.44,51.38
step
Complate the Theater Troupe Event |q 79282/1 |goto Isle of Dorn/0 56.45,50.56
step
talk Stage Manager Huberta##214296
turnin The Grand Debut##79282 |goto Isle of Dorn/0 56.44,51.38
step
label "Begin_Theater"
talk Stage Manager Huberta##214296
accept The Theater Troupe##83240 |goto Isle of Dorn/0 56.44,51.38
step
Wait for the Theater to Begin Assembling |scenariostart |goto Isle of Dorn/0 56.44,51.38
|tip The show starts at the top of every hour.
stickystart "Earn_Audience_Approval"
step
Wait for the play to start
|tip The activities will begin in 5 minutes!
Await the Curtain Call |scenariostage 1 |goto Isle of Dorn/0 56.44,51.38
|only if scenariostage(1)
step
talk Stage Manager Huberta##214296
Tell her _"(Begin Theater) Zaralanaz, reporting in for duty!"_ |gossip 120733
Speak with Stage Manager Huberta |scenariogoal 2/66128 |goto Isle of Dorn/0 56.44,51.38
|only if scenariostage(2)
step
clicknpc Nosy Mouse##215116
clicknpc Nosy Ferret##215115
Punt #8# Critters |scenariogoal 3/64669 |goto The Proscenium/0 32.34,59.86
|only if scenariostage(3)
step
click Playbill##417367+
|tip They look like large pieces of paper hanging from vertical surfaces around this area.
Hang #5# Playbills |scenariogoal 4/64800 |goto The Proscenium/0 49.74,33.88
|only if scenariostage(4)
step
click Wave Prop
click Wave Crash Prop
click Little Rock Prop
click Big Rock Prop
Paint #5# Ocean Scenery |scenariogoal 5/64806 |goto The Proscenium/0 55.15,59.24
|only if scenariostage(5)
step
click Stone Block+
|tip Click them each several times.
Carve #2# Masks |scenariogoal 6/64823 |goto The Proscenium/0 56.34,54.49
|only if scenariostage(6)
step
extraaction Break a Leg!##435494
Encourage #5# Players and Huberta to Break a Leg |scenariogoal 7/64675 |goto The Proscenium/0 48.57,56.31
|only if scenariostage(7)
step
click Discarded Theater Program##417347+
|tip They look like piles of paper on the ground around this area.
Collect #5# Discarded Theater Programs |scenariogoal 8/64797 |goto The Proscenium/0 43.20,35.49
|only if scenariostage(8)
step
click Blunted Weapon##419679+
|tip They look like spears, hammers, and axes on the ground around this area.
Collect #6# Blunted Weapons |scenariogoal 9/64883 |goto The Proscenium/0 29.18,43.72
|only if scenariostage(9)
step
click Set Piece##419732
Destroy the Set |scenariogoal 10/64918 |goto The Proscenium/0 49.29,58.68
|only if scenariostage(10)
step
click Lost Script Pages##419727+
|tip They look like piles of papers on the ground around this area.
Collect #5# Lost Script Pages |scenariogoal 11/64893 |goto The Proscenium/0 56.32,68.81
|DEVMSG CHECK PAGE COUNT!
|only if scenariostage(11)
step
talk Feuding Actor##216128
|tip Choose the following dialogue options for the male actor.
Ask him _"Have you ever performed before a crowd so big?"_ |gossip 120457
Ask him _"What if you were her mentor?"_ |gossip 120458
talk Feuding Actor##216127
|tip Choose the following dialogue options for the female actor.
Tell her _"Unbound like him are good at improv."_ |gossip 120454
Tell her _"Half of acting is reacting."_ |gossip 120455
Resolve the Actor Dispute |scenariostage 12 |goto The Proscenium/0 49.43,39.74
|only if scenariostage(12)
step
click Sprightly Wildflower##420113+
|tip They look like small flowers on the ground around this area.
Pick #5# Sprightly Wildflowers |scenariogoal 13/65044 |goto The Proscenium/0 52.44,74.69
|only if scenariostage(13)
step
Chase #8# Birds |scenariogoal 14/65232 |goto The Proscenium/0 43.30,45.03
|tip Run up the the various birds perched around this area.
|only if scenariostage(14)
step
click Scattered Mug##424353
|tip They look like small mugs on the ground all over this area.
Collect #6# Mugs |scenariogoal 15/66043 |goto The Proscenium/0 48.60,32.38
|only if scenariostage(15)
step
clicknpc Stampeding Shalehorn##215812+
|tip They run in a circle around this area.
|tip You can click several to stop them while you are shooing one.
Shoo #10# Stampeding Shalehorns |scenariogoal 16/64828 |goto The Proscenium/0 49.89,54.26
|only if scenariostage(16)
step
click Unpainted Ramolith Prop+
Paint #5# Ram Props |scenariogoal 17/66885 |goto The Proscenium/0 44.34,60.24
|only if scenariostage(17)
step
clicknpc Glitched Hologram##222107+
Fix #6# Holograms |scenariogoal 18/66044 |goto The Proscenium/0 49.92,53.75
|only if scenariostage(18)
step
click Costume Bundle##441667+
Collect #6# Costume Bundles |scenariogoal 19/66912 |goto The Proscenium/0 30.77,66.97
|only if scenariostage(19)
step
click Bush Prop+
click Big Rock Prop+
click Tree Prop
Paint #5# Forest Scenery |scenariogoal 20/66909 |goto The Proscenium/0 54.39,49.25
|only if scenariostage(20)
step
click Candles Prop+
click Minecart Prop
click Stalagmite Prop+
Paint #5# Underground Scenery |scenariogoal 21/67386 |goto The Proscenium/0 45.87,48.42
|only if scenariostage(21)
step
click Scuffed Titan Orb##441648
Repair #5# Scuffed Titan Orbs |scenariogoal 22/66910 |goto The Proscenium/0 42.75,54.37
|only if scenariostage(22)
step
Stage Coming Soon |scenariogoal 23/0
|DEVMSG STAGE 23
|only if scenariostage(23)
step
kill Brew-Addled Earthen##215911
Defeat as Many Drunken Earthen as Possible |scenariogoal 24/64891 |goto The Proscenium/0 44.21,32.95
|only if scenariostage(24)
step
kill Nerubian Disruptor##216356
Defeats as Many Nerubian Flyers as Possible |scenariogoal 25/65241 |goto The Proscenium/0 46.89,39.35
|only if scenariostage(25)
step
kill Proscenium Punk##215791+
Defeat as Many Kobolds as Possible |scenariogoal 26/64826 |goto The Proscenium/0 31.68,47.34
|only if scenariostage(26)
step
kill Disturbed Deepflayer##215773+
Defeat as Many Deepflayers as Possible |scenariogoal 27/64827 |goto The Proscenium/0 39.98,67.55
|only if scenariostage(27)
step
kill Fungarian Creepcap##218665
Defeat as Many Fungarians as Possible |scenariogoal 28/65018 |goto The Proscenium/0 37.25,63.53
|only if scenariostage(28)
step
kill Proscenium Puddlestomper##216072+
Defeat as Many Gorlocs as Possible |scenariogoal 29/65202 |goto The Proscenium/0 61.06,79.60
|only if scenariostage(29)
step
click Costume Chest##463803
|tip Grab a costume and wait for the main event to begin.
Reach the Center Stage |scenariogoal 30/66556 |goto The Proscenium/0 49.77,53.37
|only if scenariostage(30)
step
extraaction Roaring Cheer##436808
|tip Stand in at least one of the giant yellow circles around a general while spamming the ability on the screen.
|tip Try to stand in both for +10 to your audience approval for each cheer.
Cheer on the Generals |scenariogoal 31/66136 |goto The Proscenium/0 49.77,54.18
|only if scenariostage(31)
step
kill Earthen Contender##215989+
Defeated as Many Earthen Contenders as Possible |scenariogoal 32/65013 |goto The Proscenium/0 49.89,52.96
|only if scenariostage(32)
step
clicknpc Large Ramolith Prop##220998+
|tip These give +3 audience approval.
clicknpc Weight Bar Prop##215726+
|tip These give +5 audience approval.
Complete as Many Feats of Strength as Possible |scenariogoal 33/64812 |goto The Proscenium/0 46.98,53.51
|only if scenariostage(33)
step
kill General Emmerich##215371 |scenariogoal 34/69396 |goto The Proscenium/0 50.16,53.79
|tip Avoid standing in the area targeted by "Reave."
|only if scenariostage(34)
step
extraaction Throw Wood##443803
|tip Use the button on the screen that appears near wood piles to throw wood to the center of the stage.
Throw as Much Wood at the Ship as Possible |scenariogoal 35/66136 |goto The Proscenium/0 49.87,53.73
|only if scenariostage(35)
step
extraaction Wind Blast##443345
|tip Use the ability on your screen at the sails in the center of the theater.
Throw as much wind and water as possible |scenariogoal 36/65013 |goto The Proscenium/0 44.46,54.14
|only if scenariostage(36)
step
kill Rising Kelp##221062+
Defeat as Many Kelp Elementals as Possible |scenariogoal 37/64812 |goto The Proscenium/0 48.88,54.41
|only if scenariostage(37)
step
kill Wanderer Ida##220953 |scenariogoal 38/66617 |goto The Proscenium/0 50.49,52.03
|only if scenariostage(38)
step
extraaction Throw Flowers##432857
|tip Stand near a basket and throw the flowers repeatedly at the couple in the center.
Throw Flowers at the Earthen Couple |scenariogoal 39/66136 |goto The Proscenium/0 49.69,52.05
|only if scenariostage(39)
step
click Archival Lever##4398426+
click Archival Console##441736+
clicknpc Memory of Clodgran##222227+
Archive as Many Memories as Possible |scenariogoal 40/65013 |goto The Proscenium/0 46.21,59.68
|only if scenariostage(40)
step
click Sunbrush Flower##439835+
|tip They look like bushy flowers growing on the ground around this area.
Collect as Many Flowers as Possible |scenariogoal 41/64812 |goto The Proscenium/0 45.55,58.09
|only if scenariostage(41)
step
kill Overseer Roskarrag##221071 |scenariogoal 42/68672 |goto The Proscenium/0 49.59,54.28
|only if scenariostage(42)
stickystart "Eat_Food"
stickystart "Drink_Drinks"
step
extraaction Celebrate!##444674
|tip Spam the button on the screen to dance.
Dance All Night |scenariogoal 43/66136 |goto The Proscenium/0 45.61,54.79
|only if scenariostage(43)
step
label "Eat_Food"
click Shalescale Grouper##440870
|tip Click the grouper and other foods on the various tables.
Eat as Much Food as Possible |scenariogoal 43/66136 |goto The Proscenium/0 54.13,52.20
|only if scenariostage(43)
step
label "Drink_Drinks"
click Cinderbrew Mug##440861+
|tip On the various tables.
Drink as Many Drinks as You Can |scenariogoal 43/66136 |goto The Proscenium/0 54.44,55.39
|only if scenariostage(43)
step
Stay Away from the Orbs |scenariogoal 44/65013 |goto The Proscenium/0 43.61,53.37
|tip Run away from the orb that is chasing you until the stage ends.
|tip Use CC and slowing effects to make this task easier.
|only if scenariostage(44)
step
Kill Titan Orb enemies around this area |kill Colossal Titan Orb##221730,Titan Orb##221729
|tip Orbs will keep spawning until the stage ends.
Destroy as Many Orbs as Possible |scenariogoal 45/64812 |goto The Proscenium/0 49.53,55.04
|only if scenariostage(45)
step
clicknpc Dorn##221756
Begin Dragging Dorn |havebuff Towing Dorn##444721 |goto The Proscenium/0 49.06,45.51
|only if scenariostage(46)
step
Drag Dorn to the Portal |scenariogoal 46/66625 |goto The Proscenium/0 49.54,61.52
|tip Pull Dorn with other players to the portal
|only if scenariostage(46)
stickystart "Saddle_Cloudrooks"
stickystart "Gather_Cinderbrew"
step
extraaction Wave Goodbye##444062
Say Goodbye to as Many Civilians as Possible |scenariogoal 47/66136 |goto The Proscenium/0 43.93,53.18
|only if scenariostage(47)
step
label "Saddle_Cloudrooks"
clicknpc Cloudrook##221459+
Saddle as Many Cloudrooks as Possible |scenariogoal 47/66136 |goto The Proscenium/0 49.87,53.91
|only if scenariostage(47)
step
label "Gather_Cinderbrew"
click Cinderbrew Keg##423582+
|tip They look like large wood and metal kegs on the ground around this area.
Gather as Much Cinderbrew as Possible |scenariogoal 47/66136 |goto The Proscenium/0 51.97,48.18
|only if scenariostage(47)
step
kill Sparkfist Kobold##215789+
Protect the Adventuring Party from Kobolds |scenariogoal 48/65013 |goto The Proscenium/0 49.79,54.32
|only if scenariostage(48)
step
Stay Within the Light |scenariogoal 49/64812 |goto The Proscenium/0 50.32,57.51
|tip Run with the groups of NPCs, staying inside the yellow-dashed circles.
|tip Keep doing this until the next objective.
|only if scenariostage(49)
step
extraaction Flop##444478
|tip Use the ability on the to "Die Valiantly."
Die Valiantly at the Hands of the Nerubians |scenariogoal 50/66629 |goto The Proscenium/0 49.40,48.92
|only if scenariostage(50)
step
extraaction Throw Goblet##454572
|tip Throw them in the bucket.
Trhow #6# Goblets |scenariogoal 51/68238 |goto The Proscenium/0 49.60,45.41
|only if scenariostage(51)
step
Stage Coming Soon |scenariogoal 52/0
|DEVMSG STAGE 52
|only if scenariostage(52)
step
Stage Coming Soon |scenariogoal 53/0
|DEVMSG STAGE 53
|only if scenariostage(53)
step
click Cinderbrew Spill##453787+
Cleanse Cinderbrew Spills |scenariogoal 54/68292 |goto The Proscenium/0 38.02,49.86
|DEVMSG STAGE 54
|only if scenariostage(54)
step
click Ink Spill##453873+
|tip They look like large black puddles on the ground around this area.
Cleanse #3# Ink Spills |scenariogoal 55/68351 |goto The Proscenium/0 33.28,62.11
|only if scenariostage(55)
step
extraaction Sweeping##455216
|tip Use the ability on your screen to sweep up the stage area.
Sweep the Stage |scenariogoal 56/68291 |goto The Proscenium/0 49.33,52.63
|only if scenariostage(56)
step
extraaction Sweeping##455371
|tip Use the ability on your screen to sweep up the stage area.
Sweep the Stage |scenariogoal 57/68356 |goto The Proscenium/0 49.85,53.71
|only if scenariostage(57)
step
clicknpc Browsing Theatergoer##225622+
Inform #6# Browsing Theatergoers |scenariogoal 58/68120 |goto The Proscenium/0 30.10,51.52
|only if scenariostage(58)
step
clicknpc Bubble-Snatcher##225930
Punt #8# Critters |scenariogoal 59/68232 |goto The Proscenium/0 60.57,79.89
|only if scenariostage(59)
step
click Lucky Plant##453092
Touch the Lucky Plant |scenariogoal 60/68233 |goto The Proscenium/0 50.27,75.95
|only if scenariostage(60)
step
clicknpc Hungry Cloudrook##226153+
Feed #5# Cloudrooks |scenariogoal 61/68290 |goto The Proscenium/0 31.71,74.77
|only if scenariostage(61)
step
clicknpc Unsightly Root##225931+
|tip They look like wiggling roots on the ground around this area.
|tip Click them and run away to pull them.
Remove #6# Unsightly Roots |scenariogoal 62/68234 |goto The Proscenium/0 45.39,71.82
|only if scenariostage(62)
step
extraaction Dancing##454570
Dance at Center Stage |scenariogoal 63/68237 |goto The Proscenium/0 49.67,53.54
|only if scenariostage(63)
step
click Brigganthony the Raptor
Kiss Brigganthony the Raptor |scenariogoal 64/68235 |goto The Proscenium/0 51.72,79.02
|only if scenariostage(64)
step
extraaction Throw Tapestry##454574
|tip Use the ability on the screen to throw them to the arrows in the crowd.
Throw #6# Tapestries |scenariogoal 65/68239 |goto The Proscenium/0 50.11,45.55
|only if scenariostage(65)
step
clicknpc Queued Theatergoer##225974+
Distribute #7# Tickets |scenariogoal 66/68260 |goto The Proscenium/0 33.42,45.73
|only if scenariostage(66)
step
click Vase Prop##453878+
Collect #6# Vase Props |scenariogoal 67/68352 |goto The Proscenium/0 29.88,59.95
|only if scenariostage(67)
step
click Inky Paint##453875+
|tip They look like small bottles of paint on the ground around this area.
Collect #6# Inky Paints |scenariogoal 68/68359 |goto The Proscenium/0 34.19,62.31
|only if scenariostage(68)
step
clicknpc Greenhorn Extra##228307
kill Greenhorn Extra##228307
Train with #3# Greenhorn Actors |scenariogoal 69/69429 |goto The Proscenium/0 53.08,68.38
|only if scenariostage(69)
step
clicknpc Rabaan##228343
kill Rabaan##228343
Train with Rabaan |scenariogoal 70/69441 |goto The Proscenium/0 63.94,51.81
|only if scenariostage(70)
step
clicknpc Elma##228419
kill Elma##228419
Train with Elma |scenariogoal 71/69444 |goto The Proscenium/0 64.42,55.39
|only if scenariostage(71)
step
clicknpc Burkhalt##228671
kill Burkhalt##228671
Train with Burkhalt |scenariogoal 72/69497 |goto The Proscenium/0 61.96,55.75
|only if scenariostage(72)
step
click Empty Mead Chalice##459376+
|tip They look like large cups on the highest balcony around this area.
|tip They appear on your minimap as yellow dots.
Collect #6# Chalices |scenariogoal 73/69501 |goto The Proscenium/0 50.59,19.88
|only if scenariostage(73)
step
click Leftover Costume##461540+
|tip They look like pieces of white clothing on the ground around this area.
Clean #5# Actor's Areas |scenariogoal 74/69514 |goto The Proscenium/0 53.47,77.52
|only if scenariostage(74)
step
extraaction Bow##433684
|tip Spam the ability on the screen for extra audience approval.
Take a Bow |scenariogoal 75/64783 |goto The Proscenium/0 49.56,53.58
|only if scenariostage(75)
step
Finding New Stage... |complete true |next "Begin_Theater"
|only if inscenario()
step
label "Earn_Audience_Approval"
Earn #50# Audience Approval |q 83240/1 |goto Isle of Dorn/0 56.45,50.56
|only if haveq(83240) or completedq(83240)
step
Complete a Theater Troupe Play |q 83240/2 |goto Isle of Dorn/0 56.45,50.56
|only if haveq(83240) or completedq(83240)
step
talk Stage Manager Huberta##214296
turnin The Theater Troupe##83240 |goto Isle of Dorn/0 56.44,51.38
|only if haveq(83240) or completedq(83240)
step
Awaiting New Play... |complete true |next "Begin_Theater"
]])
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Awakening the Machine",{
author="support@zygorguides.com",
startlevel=70,
areapoiid=8063,
patch='110002',
},[[
step
talk Gnawbles##216164
accept Gearing Up for Trouble##83333 |goto The Ringing Deeps/0 47.66,35.29
step
clicknpc Speaker Kuldas##217128
|tip Click the {o}Begin Maintenance{} button.
Enter the Machine |scenariostart Awakening The Machine##2392 |goto The Ringing Deeps/0 47.50,32.03
step
talk Speaker Kuldas##210318
Select _"I'm ready to continue. <Start.>"_ |gossip 120555 |noautogossip
|tip You will need to defende Kuldas against enemies for 5 waves at a time.
|tip Each wave gets progressively more difficult.
|tip At the end of every five waves, you will be able to take a break as long as you need to prepare for the next.
Talk to Speaker Kuldas |scenariostage 1
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
Defend Speaker Kuldas |q 84631 |future
step
talk Speaker Kuldas##210318
|tip Take a short break to regain cooldowns and prepart for the next five waves.
|tip In addition to the previous mechanics, {o}Malfunctioning Pylons{} will spawn and channel blue beams on Kuldas.
|tip Kill them quickly before he takes too much damage.
Select _"I'm ready to continue.  <Start.>"_ |gossip 120555 |noautogossip
confirm |q 84632 |future
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706,Malfunctioning Pylon##229739
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
|tip Stand in the path of blue beams from {o}Malfunctioning Pylons{} to prevent them from hitting Kuldas.
|tip Stay away from Kuldas if {o}Volatile Magma{} surrounds you and avoid puddles it drops.
Defend Speaker Kuldas |q 84632 |future
step
talk Speaker Kuldas##210318
|tip Take a short break to regain cooldowns and prepart for the next five waves.
|tip In addition to the previous mechanics, {o}Medbots{} drop green items that will heal Kuldas when you walk over them.
|tip They do not de-spawn so avoid using them until Kuldas is missing health.
|tip {o}Nullbots{} will channel damage reduction on nearby enemies.
Select _"I'm ready to continue.  <Start.>"_ |gossip 120555 |noautogossip
confirm |q 84633 |future
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706,Malfunctioning Pylon##229739,Medbot##229769,Nullbot##229729
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
|tip Stand in the path of blue beams from {o}Malfunctioning Pylons{} to prevent them from hitting Kuldas.
|tip Stay away from Kuldas if {o}Volatile Magma{} surrounds you and avoid puddles it drops.
|tip {o}Nullbots{} will channel damage reduction on nearby enemies.
Defend Speaker Kuldas |q 84633 |future
step
talk Speaker Kuldas##210318
|tip Take a short break to regain cooldowns and prepart for the next five waves.
Select _"I'm ready to continue.  <Start.>"_ |gossip 120555 |noautogossip
Test |complete machinewave() >= 16
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706,Malfunctioning Pylon##229739,Medbot##229769,Nullbot##229729
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
|tip Stand in the path of blue beams from {o}Malfunctioning Pylons{} to prevent them from hitting Kuldas.
|tip Stay away from Kuldas if {o}Volatile Magma{} surrounds you and avoid puddles it drops.
|tip {o}Nullbots{} will channel damage reduction on nearby enemies.
Defend Speaker Kuldas |q 84634 |future
step
click Awakened Cache##465243
Loot the Awakened Cache |q 84642 |future |goto The Ringing Deeps/0 47.48,31.91
|only if completedq(84631)
step
click Awakened Cache##465242
Loot the Awakened Cache |q 84644 |future |goto The Ringing Deeps/0 47.54,32.02
|only if completedq(84632)
step
click Awakened Cache##465241
Loot the Awakened Cache |q 84646 |future |goto The Ringing Deeps/0 47.55,31.89
|only if completedq(84633)
step
click Awakened Cache##464938
Loot the Awakened Cache |q 84647 |future |goto The Ringing Deeps/0 47.54,31.96
|only if completedq(84634)
step
talk Gnawbles##216164
turnin Gearing Up for Trouble##83333 |goto The Ringing Deeps/0 47.66,35.29
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Daily Guides\\The War Within (70-80)\\Worldsoul Weekly Meta Quest",{
author="support@zygorguides.com",
startlevel=70,
patch='110002',
},[[
step
Complete Part of The War Within Campaign |complete completedq(84446,79573)
|tip You must unlock adventure mode to do these quests.
|tip Progress through The War Within Campaign guide to accomplish this.
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"
step
label "Begin_Weekly_Quest"
talk Faerin Lothar##223875
|autoacceptany 82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452
Accept a Weekly Quest |complete haveq(82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452) or completedq(82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452) |goto Dornogal/0 46.06,49.61
|tip Choose the weekly quest to would prefer completing.
|tip Pay attention to the difficulty indicated on dungeon weekly quests.
step
Complete the Ara-kara, City of Echoes Dungeon |q 82491/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes"
|only if haveq(82491) or completedq(82491)
step
Complete the Ara-kara, City of Echoes Dungeon |q 82494/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes"
|only if haveq(82494) or completedq(82494)
step
Complete the Ara-kara, City of Echoes Dungeon |q 82502/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes"
|only if haveq(82502) or completedq(82502)
step
Defeat #20# Cumulative Waves of Enemies in the Awakening Machine |q 82511/1
|loadguide "Daily Guides\\The War Within (70-80)\\Awakening the Machine"
|only if haveq(82511) or completedq(82511)
step
Complete the Cinderbrew Meadery Dungeon |q 82485/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery"
|only if haveq(82485) or completedq(82485)
step
Complete the Cinderbrew Meadery Dungeon |q 82495/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery"
|only if haveq(82495) or completedq(82495)
step
Complete the Cinderbrew Meadery Dungeon |q 82503/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery"
|only if haveq(82503) or completedq(82503)
step
Complete the City of Threads Dungeon |q 82492/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\City of Threads"
|only if haveq(82492) or completedq(82492)
step
Complete the City of Threads Dungeon |q 82496/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\City of Threads"
|only if haveq(82496) or completedq(82496)
step
Complete the City of Threads Dungeon |q 82504/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\City of Threads"
|only if haveq(82504) or completedq(82504)
step
Complete the Darkflame Cleft Dungeon |q 82488/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft"
|only if haveq(82488) or completedq(82488)
step
Complete the Darkflame Cleft Dungeon |q 82498/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft"
|only if haveq(82498) or completedq(82498)
step
Complete the Darkflame Cleft Dungeon |q 82506/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft"
|only if haveq(82506) or completedq(82506)
stickystart "Complete_World_Quests_in_Khaz_Algar"
step
Complete the Theatre Troupe Event |q 82453/1
|loadguide "Daily Guides\\The War Within (70-80)\\Theater Troupe"
|only if haveq(82453) or completedq(82453)
step
label "Complete_World_Quests_in_Khaz_Algar"
Earn #100# Participation |q 82453/2
|tip Complete activities in the Theatre Troupe event quickly to earch more participation.
|only if haveq(82453) or completedq(82453)
stickystart "Slay_Rares_82516"
step
Complete #5# Pact Rumors |q 82516/2 |goto Azj-Kahet/0 56.96,46.67
|tip Rumors from various Weaver NPCs the City of Threads grant progress for this objective.
|only if haveq(82516) or completedq(82516)
step
label "Slay_Rares_82516"
Slay #4# Rare Creatures in Khaz Algar |q 82516/3
|tip Click rare POI icons to load appropriate locations and kill rares across Khaz Algar.
|only if haveq(82516) or completedq(82516)
step
Complete the Nerub-ar Palace Raid |q 82509/1
|tip You must complete this raid on {o}LFR{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Raids\\Nerub-ar Palace"
|only if haveq(82509) or completedq(82509)
step
Complete the Nerub-ar Palace Raid |q 82659/1
|tip You must complete this raid on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Raids\\Nerub-ar Palace"
|only if haveq(82659) or completedq(82659)
step
Complete the Nerub-ar Palace Raid |q 82510/1
|tip You must complete this raid on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Raids\\Nerub-ar Palace"
|only if haveq(82510) or completedq(82510)
step
Complete the Priory of the Sacred Flame Dungeon |q 82490/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame"
|only if haveq(82490) or completedq(82490)
step
Complete the Priory of the Sacred Flame Dungeon |q 82499/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame"
|only if haveq(82499) or completedq(82499)
step
Complete the Priory of the Sacred Flame Dungeon |q 82507/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame"
|only if haveq(82507) or completedq(82507)
step
Earn Reputation Throughout Khaz Algar |q 82458/1
|tip Complete world quests and zone side quests to earn renown with Khaz Algar factions.
|only if haveq(82458) or completedq(82458)
stickystart "Discover_Worldsoul_Motes"
step
click Disturbed Dirt+
|tip These can be found all over Khaz Algar and look like piles of dirt on the ground.
|tip They are usually outlined in purple.
|tip You will often need to avoid AoE on the ground or kill an enemy that spawns after clicking them.
Dig #5# Disturbed Dirt |q 82482/1
|only if haveq(82482) or completedq(82482)
step
label "Discover_Worldsoul_Motes"
Discover #45# Worldsoul Motes |q 82482/2
|tip Fly through glowing multi-colored orbs floating in the air all over Khaz Algar.
|only if haveq(82482) or completedq(82482)
step
Complete Spreading the Light Objectives and Slay Rares in Khaz Algar |q 82483/1
|tip Complete Spreading the Light bonus objectives in Hallowfall.
|only if haveq(82483) or completedq(82483)
step
Complete The Dawnbreaker Dungeon |q 82489/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker"
|only if haveq(82489) or completedq(82489)
step
Complete The Dawnbreaker Dungeon |q 82493/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker"
|only if haveq(82493) or completedq(82493)
step
Complete The Dawnbreaker Dungeon |q 82501/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker"
|only if haveq(82501) or completedq(82501)
step
Complete The Rookery Dungeon |q 82486/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Rookery"
|only if haveq(82486) or completedq(82486)
step
Complete The Rookery Dungeon |q 82500/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Rookery"
|only if haveq(82500) or completedq(82500)
step
Complete The Rookery Dungeon |q 82508/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Rookery"
|only if haveq(82508) or completedq(82508)
step
Complete The Stonevault Dungeon |q 82487/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Stonevault"
|only if haveq(82487) or completedq(82487)
step
Complete The Stonevault Dungeon |q 82497/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Stonevault"
|only if haveq(82497) or completedq(82497)
step
Complete The Stonevault Dungeon |q 82505/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Stonevault"
|only if haveq(82505) or completedq(82505)
step
Slay a World Boss |q 82512/1
|tip Look for the world boss weekly quest in one of the four zones and click the icon to load the appropriate guide.
|only if haveq(82512) or completedq(82512)
step
Complete #6# World Quests in Khaz Algar |q 82452/1
|tip Click world quest icons in Khaz Algar zones to load the appropriate guide.
|tip Special Assignments require completion of the indicated number of world quests in that zone before they can be completed.
|only if haveq(82452) or completedq(82452)
step
talk Faerin Lothar##223875
turnin Worldsoul: Ara-Kara, City of Echoes##82502 |goto Dornogal/0 46.06,49.61 |only if haveq(82502) or completedq(82502)
turnin Worldsoul: Ara-Kara, City of Echoes##82491 |goto Dornogal/0 46.06,49.61 |only if haveq(82491) or completedq(82491)
turnin Worldsoul: Ara-Kara, City of Echoes##82494 |goto Dornogal/0 46.06,49.61 |only if haveq(82494) or completedq(82494)
turnin Worldsoul: Awakening Machine##82511 |goto Dornogal/0 46.06,49.61 |only if haveq(82511) or completedq(82511)
turnin Worldsoul: Cinderbrew Meadery##82485 |goto Dornogal/0 46.06,49.61 |only if haveq(82485) or completedq(82485)
turnin Worldsoul: Cinderbrew Meadery##82495 |goto Dornogal/0 46.06,49.61 |only if haveq(82495) or completedq(82495)
turnin Worldsoul: Cinderbrew Meadery##82503 |goto Dornogal/0 46.06,49.61 |only if haveq(82503) or completedq(82503)
turnin Worldsoul: City of Threads##82492 |goto Dornogal/0 46.06,49.61 |only if haveq(82492) or completedq(82492)
turnin Worldsoul: City of Threads##82496 |goto Dornogal/0 46.06,49.61 |only if haveq(82496) or completedq(82496)
turnin Worldsoul: City of Threads##82504 |goto Dornogal/0 46.06,49.61 |only if haveq(82504) or completedq(82504)
turnin Worldsoul: Darkflame Cleft##82488 |goto Dornogal/0 46.06,49.61 |only if haveq(82488) or completedq(82488)
turnin Worldsoul: Darkflame Cleft##82498 |goto Dornogal/0 46.06,49.61 |only if haveq(82498) or completedq(82498)
turnin Worldsoul: Darkflame Cleft##82506 |goto Dornogal/0 46.06,49.61 |only if haveq(82506) or completedq(82506)
turnin Worldsoul: Encore!##82453 |goto Dornogal/0 46.06,49.61 |only if haveq(82453) or completedq(82453)
turnin Worldsoul: Forging a Pact##82516 |goto Dornogal/0 46.06,49.61 |only if haveq(82516) or completedq(82516)
turnin Worldsoul: Nerub-ar Palace##82509 |goto Dornogal/0 46.06,49.61 |only if haveq(82509) or completedq(82509)
turnin Worldsoul: Nerub-ar Palace##82659 |goto Dornogal/0 46.06,49.61 |only if haveq(82659) or completedq(82659)
turnin Worldsoul: Nerub-ar Palace##82510 |goto Dornogal/0 46.06,49.61 |only if haveq(82510) or completedq(82510)
turnin Worldsoul: Priory of the Sacred Flame##82490 |goto Dornogal/0 46.06,49.61 |only if haveq(82490) or completedq(82490)
turnin Worldsoul: Priory of the Sacred Flame##82499 |goto Dornogal/0 46.06,49.61 |only if haveq(82499) or completedq(82499)
turnin Worldsoul: Priory of the Sacred Flame##82507 |goto Dornogal/0 46.06,49.61 |only if haveq(82507) or completedq(82507)
turnin Worldsoul: Renown##82458 |goto Dornogal/0 46.06,49.61 |only if haveq(82458) or completedq(82458)
turnin Worldsoul: Snuffling##82482 |goto Dornogal/0 46.06,49.61 |only if haveq(82482) or completedq(82482)
turnin Worldsoul: Spreading the Light##82483 |goto Dornogal/0 46.06,49.61 |only if haveq(82483) or completedq(82483)
turnin Worldsoul: The Dawnbreaker##82489 |goto Dornogal/0 46.06,49.61 |only if haveq(82489) or completedq(82489)
turnin Worldsoul: The Dawnbreaker##82493 |goto Dornogal/0 46.06,49.61 |only if haveq(82493) or completedq(82493)
turnin Worldsoul: The Dawnbreaker##82501 |goto Dornogal/0 46.06,49.61 |only if haveq(82501) or completedq(82501)
turnin Worldsoul: The Rookery##82486 |goto Dornogal/0 46.06,49.61 |only if haveq(82486) or completedq(82486)
turnin Worldsoul: The Rookery##82500 |goto Dornogal/0 46.06,49.61 |only if haveq(82500) or completedq(82500)
turnin Worldsoul: The Rookery##82508 |goto Dornogal/0 46.06,49.61 |only if haveq(82508) or completedq(82508)
turnin Worldsoul: The Stonevault##82487 |goto Dornogal/0 46.06,49.61 |only if haveq(82487) or completedq(82487)
turnin Worldsoul: The Stonevault##82497 |goto Dornogal/0 46.06,49.61 |only if haveq(82497) or completedq(82497)
turnin Worldsoul: The Stonevault##82505 |goto Dornogal/0 46.06,49.61 |only if haveq(82505) or completedq(82505)
turnin Worldsoul: World Boss##82512 |goto Dornogal/0 46.06,49.61 |only if haveq(82512) or completedq(82512)
turnin Worldsoul: World Quests##82452 |goto Dornogal/0 46.06,49.61 |only if haveq(82452) or completedq(82452)
|only if haveq(82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452) or completedq(82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452) or completedq(82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452) or completedq(82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452)
step
You have completed the weekly quest this week
|tip This guide will reset when another becomes available.
'|complete not completedq(82502,82491,82494,82511,82485,82495,82503,82492,82496,82504,82488,82498,82506,82453,82516,82509,82659,82510,82490,82499,82507,82458,82482,82483,82489,82493,82501,82486,82500,82508,82487,82497,82505,82512,82452) |next "Begin_Weekly_Quest"
]])
ZGV.BETAEND()
