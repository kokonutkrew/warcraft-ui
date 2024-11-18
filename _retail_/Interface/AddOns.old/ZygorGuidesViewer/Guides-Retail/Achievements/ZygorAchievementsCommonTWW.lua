local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("AchievementsCTWW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\The War Within Achievements\Hallowfall\Exploration\\Biblo Archivist",{
author="support@zygorguides.com",
description="Locate all the hidden lore books in Hallowfall.",
achieveid={40622},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Click the Lore Book
Collect _500 Dishes Using Cave Fish and Mushrooms_ |achieve 40622/2 |goto Hallowfall/0 43.90,49.97
|tip On the table, bottom floor.
step
Click the Lore Book
Collect _The Big Book of Arathi Idioms_ |achieve 40622/1 |goto Hallowfall/0 48.11,39.56
|tip On the side table, back left corner.
step
Click the Lore Book
Collect _Palawltar's Codex of Dimensional Structure_ |achieve 40622/6 |goto Hallowfall/0 48.75,64.71
|tip In the bookshelf on the back wall.
step
Click the Lore Book
Collect _Lightspark Sky Academy Gradebook_ |achieve 40622/11 |goto Hallowfall/0 52.63,59.99
|tip On the desk, bottom floor.
step
Click the Lore Book
Collect _Beledar - The Emperor's Vision_ |achieve 40622/10 |goto Hallowfall/0 56.56,65.18
|tip In the Captain's cabin, on his desk, on the ship.
step
Click the Lore Book
Collect _From the Depths They Come_ |achieve 40622/5 |goto Hallowfall/0 57.79,51.77
|tip On the ground, at the water line.
step
Click the Lore Book
Collect _The Song of Renilash_ |achieve 40622/9 |goto Hallowfall/0 70.21,56.85
|tip Inside the pavilion tent, upon the altar.
step
Click the Lore Book
Collect _Care and Feeding of the Imperial Lynx_ |achieve 40622/3 |goto Hallowfall/0 69.36,43.98
|tip Inside the house, on the floor directly to the right as you enter.
step
Click the Lore Book
Collect _Light's Gambit Playbook_ |achieve 40622/4 |goto Hallowfall/0 68.69,41.42
|tip On the bridge.
step
Click the Lore Book
Collect _Shadow Curfew Guidelines_ |achieve 40622/7 |goto Hallowfall/0 64.21,28.09
|tip In the house, on the table against the back wall.
step
Click the Lore Book
Collect _Shadow Curfew Journal_ |achieve 40622/8 |goto Hallowfall/0 59.81,22.11
|tip Inside the ruins of the cabin.
step
Enter the building |goto Hallowfall/0 40.12,51.37
talk Ryfus Sacredpyr##221630 |goto Hallowfall/0 40.00,51.00
|tip Inside the building.
Tell him _"Ask your question."
Tell him _"That the Cosmos consisted of monopole elemental phase spaces."
Tell him _"Patience and respect."
Tell him _"Seek shelter and light. Have plans, have backup plans. Find joy while sheltering."
Tell him _"The third fleet."
Tell him _"The remains of gods."
Tell him _"From the letters of Mereldar."
Click Here to Continue |confirm |next |or
'|complete hastoy(225659) |or
step
click Small Chest
|tip Its a tiny chest on the table next to Ryfus.
collect Arathi Book Collection##225659 |goto Hallowfall/0 40.02,51.17 |or
'|complete hastoy(225659) |or
step
use Arathi Book Collection##225659
toy Arathi Book Collection##225659
]])
