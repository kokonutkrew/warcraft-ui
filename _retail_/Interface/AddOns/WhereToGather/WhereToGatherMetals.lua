local addonName, namespace = ...

local function getMetalsZone(itemId)
	local smetalsZone = ""
	--Shadowlands
	if itemId == "171428" then --Shadowghast Ingot
		smetalsZone = "Smelted by Blacksmiths (50) using:\n - 1 Solenium, Sinvyr, Phaedrum & Oxxein Ore\n - 4 Luminous Flux\nTransmuted by Alchemists (165) using:\n - 10 Ground Death Blossom\n- Ground Nightshade"
	elseif itemId == "171833" then --Elethium Ore
		smetalsZone = "Gathered across The Shadowlands. Rare."
	elseif itemId == "171829" then --Solenium Ore
		smetalsZone = "Gathered in: Bastion."
	elseif itemId == "171828" then --Laestrite Ore
		smetalsZone = "Gathered across The Shadowlands, except The Maw."
	elseif itemId == "171830" then --Oxxein Ore
		smetalsZone = "Gathered in: Maldraxxus."
	elseif itemId == "171831" then --Phaedrum Ore
		smetalsZone = "Gathered in: Ardenweald."
	elseif itemId == "171832" then --Sinvyr Ore
		smetalsZone = "Gathered in: Revendreth."
	elseif itemId == "171841" then --Shaded Stone
		smetalsZone = "Chance to gather when mining Elethium Deposits."
	elseif itemId == "171840" then --Porous Stone
		smetalsZone = "Chance to gather when mining:\n - Laestrite\n - Solenium\n - Oxxein\n - Sinvyr\n - Phaedrum"
	elseif itemId == "171839" then --Elethium Nugget
		smetalsZone = "Gathered across The Shadowlands. Rare."
	elseif itemId == "171838" then --Sinvyr Nugget
		smetalsZone = "Gathered across Revendreth."
	elseif itemId == "171834" then --Laestrite Nugget
		smetalsZone = "Gathered across The Shadowlands, except The Maw."
	elseif itemId == "171835" then --Solenium Nugget
		smetalsZone = "Gathered across Bastion."
	elseif itemId == "171837" then --Phaedrum Nugget
		smetalsZone = "Gathered across Ardenweald."
	elseif itemId == "171836" then --Oxxein Nugget
		smetalsZone = "Gathered across Maldraxxus."
	elseif itemId == "172437" then --Enchanted Elethium Bar
		smetalsZone = "Crafted by Enchanters (115) using:\n - 2 Elethium Ore\n - 1 Soul Dust"
	--Battle for Azeroth
	elseif itemId == "152513" then --Platinum Ore
		smetalsZone = "Gathered across Zandalar & Kul'tiras. Rare."
	elseif itemId == "152579" then --Storm Silver Ore
		smetalsZone = "Gathered across Zandalar & Kul'tiras. Uncommon."
	elseif itemId == "152512" then --Monelite
		smetalsZone = "Gathered across Zandalar & Kul'tiras. Common."
	elseif itemId == "168185" then--Osmenite Ore
		smetalsZone = "Gathered across Nazjatar."
	--Legion Ore
	elseif itemId == "151564" then --Empyrium
		smetalsZone = "Gathered across Argus."
	elseif itemId == "124444" then --Infernal Brimstone
		smetalsZone = "Gathered from a World Quest on The Broken Isles."
	elseif itemId == "123919" then --Felslate
		smetalsZone = "Gathered across The Broken Isles."
	elseif itemId == "123918" then --Leystone
		smetalsZone = "Gathered across The Broken Isles."
	--Legion Bars
	elseif itemId == "124461" then --Demonsteel Bar
		smetalsZone = "Smelted by Blacksmiths using:\n- Leystone Ore\n- 2 Felslate"
	--Warlords of Draenor Ore
	elseif itemId == "109118" then --Blackrock Ore
		smetalsZone = "Gathered across Draenor Most common in: Nagrand & Talador."
	elseif itemId == "109119" then --True Iron Ore
		smetalsZone = "Gathered across Draenor Most common in: Nagrand & Talador."
	--Warlords of Draenor Bars
	elseif itemId == "108257" then --Truesteel Bar
		smetalsZone = "Smelted by Blacksmiths using:\n- 20 True Iron\n- 10 Blackrock"
	--Mists of Pandaria Ore
	elseif itemId == "72093" then --Kyparite
		smetalsZone = "Gathered in: Dread Wastes & Townlong Steppes."
	elseif itemId == "72092" then --Ghost Iron Ore
		smetalsZone = "Gathered across Pandaria."
	elseif itemId == "72103" then --White Trillium
		smetalsZone = "Gathered across Pandaria. Most common in: Dread Wastes & Townlong Steppes."
	elseif itemId == "72094" then --Black Trillium
		smetalsZone = "Gathered across Pandaria. Most common in: Dread Wastes & Townlong Steppes."
	--Mists of Pandaria Bars
	elseif itemId == "72096" then --Ghost Iron Bar
		smetalsZone = "Smelted by Miners using:\n- 2 Ghost Iron Ore"
	elseif itemId == "72095" then --Trillium Bar
		smetalsZone = "Smelted by Miners using 2 Black & 2 White Trillium.\nTransmuted by Alchemists using 10 Ghost Iron Ore."
	elseif itemId == "72104" then --Living Steel
		smetalsZone = "Transmuted by Alchemists using:\n- 3 Trillium Bars\n- 3 Spirit of Harmony"
	--Cataclysm Ore
	elseif itemId == "52183" then --Pyrite
		smetalsZone = "Gathered in: Twilight Highlands, Uldum & Tol Barad."
	elseif itemId == "52185" then --Elementium
		smetalsZone = "Gathered in: Deepholm & Twilight Highlands."
	elseif itemId == "53038" then --Obsidium
		smetalsZone = "Gathered in: Deepholm & Mount Hyjal."
	--Cataclysm Bars
	elseif itemId == "54849" then --Obsidium
		smetalsZone = "Smelted by Miners using:\n- 2 Obsidium Ore"
	elseif itemId == "65365" then --Folded Obsidium
		smetalsZone = "Created by Blacksmiths using:\n- 2 Obsidium Bars"
	elseif itemId == "53039" then --Hardened Elementium Bar
		smetalsZone = "Smelted by Miners using:\n- 10 Elementium Bars\n- 4 Volatile Earth"
	elseif itemId == "52186" then --Elementium Bar
		smetalsZone = "Smelted by Miners using:\n- 2 Elementium Ore"
	elseif itemId == "58480" then --Truegold
		smetalsZone = "Transmuted by Alchemists using:\n- 3 Pyrite Bars\n- 10 Volatile Fire, Air & Water"
	elseif itemId == "51950" then --Pyrium
		smetalsZone = "Smelted by Miners using: 2 Pyrite Ore.\nTransmuted by Alchemists using: Elementium Bar & Volatile Earth"
	--Wrath of the Lich King Ore
	elseif itemId == "36910" then --Titanium
		smetalsZone = "Gathered in: Icecrown, The Storm Peaks, Sholazar Basin & Wintergrasp."
	elseif itemId == "36909" then --Cobalt Ore
		smetalsZone = "Gathered in: Zul'Drak, Howling Fjord & Borean Tundra."
	elseif itemId == "36912" then --Saronite
		smetalsZone = "Gathered in: Icecrown, Sholazar Basin & The Storm Peaks."
	--Wrath of the Lich King Bars
	elseif itemId == "37663" then --Titansteel Bar
		smetalsZone = "Smelted by Miners using:\n- 3 Titanium Bars\n- 1 Eternal Fire, Earth & Shadow"
	elseif itemId == "41163" then --Titanium
		smetalsZone = "Smelted by Miners using: 2 Titanium Ore\nTransmuted by Alchemists using: 8 Saronite Bars"
	elseif itemId == "36913" then --Saronite Bar
		smetalsZone = "Smelted by Miners using:\n- 2 Saronite Ore."
	elseif itemId == "36916" then --Cobalt Bar
		smetalsZone = "Smelted by Miners using:\n- 1 Cobalt Ore"
	--The Burning Crusade Ore
	elseif itemId == "23426" then --Khorium
		smetalsZone = "Gathered in: Nagrand, Blade's Edge Mountains, Netherstorm &Shadowmoon Valley(Outland)."
	elseif itemId == "23427" then --Eternium Ore
		smetalsZone = "Gathered whilst mining Khorium, Adamantite & Fel Iron."
	elseif itemId == "23425" then --Adamantite Ore
		smetalsZone = "Gathered in: Nagrand, Blade's Edge Mountains, Netherstorm &Shadowmoon Valley(Outland)."
	elseif itemId == "23424" then --Fel Iron
		smetalsZone = "Gathered across Outland. Most common in: Hellfire Peninsula, Zangarmarsh & Nagrand."
	--The Burning Crusade Bars
	elseif itemId == "23447" then --Eternium
		smetalsZone = "Smelted by Miners using: 2 Eternium Ore."
	elseif itemId == "23449" then --Khorium
		smetalsZone = "Smelted by Miners using: 2 Khorium Ore."
	elseif itemId == "35128" then --Hardened Khorium
		smetalsZone = "Smelted by Miners using:\n- 3 Khorium Bars\n- 1 Hardened Adamantite Bar."
	elseif itemId == "23446" then --Adamantite Bar
		smetalsZone = "Smelted by Miners using: 2 Adamantite Ore."
	elseif itemId == "23448" then --Felsteel Bar
		smetalsZone = "Smelted by Miners using:\n- 3 Fel Iron Bars\n- 2 Eternium Bars."
	elseif itemId == "23445" then --Fel Iron
		smetalsZone = "Smelted by Miners using: 2 Fel Iron Ore."
	elseif itemId == "23573" then --Hardened Adamantite
		smetalsZone = "Smelted by Miners using: 10 Adamantite Bars."
	--Vanilla Ore
	elseif itemId == "11370" then --Dark Iron
		smetalsZone = "Gathered in: Molten Core & Blackrock Depths."
	elseif itemId == "3858" then --Mithril
		smetalsZone = "Gathered in: Thousand Needles, Badlands & Searing Gorge."
	elseif itemId == "10620" then --Thorium
		smetalsZone = "Gathered in: Winterspring, Silithus & Un'Goro Crater."
	elseif itemId == "7911" then --Truesilver
		smetalsZone = "Gathered in: Winterspring, Thousand Needles & Burning Steppes."
	elseif itemId == "2772" then --Iron
		smetalsZone = "Gathered in: Feralas, Descolace & Western Plaguelands."
	elseif itemId == "2776" then --Gold
		smetalsZone = "Gathered in: Thousand Needles, Feralas & Eastern Plaguelands."
	elseif itemId == "2771" then --Tin
		smetalsZone = "Gathered in: Hillsbrad Foothills, Ashenvale & Northern Stranglethorn."
	elseif itemId == "2775" then --Silver
		smetalsZone = "Gathered in: Feralas, Northern Stranglethorn & Hillsbrad Foothills."
	elseif itemId == "2770" then --Copper
		smetalsZone = "Gathered in: Starting Zones, Darkshore & Northern Barrens."
	--Vanilla Bars
	elseif itemId == "17771" then --Enchanted Elementium
		smetalsZone = "Smelted by Miners using:\n- 1 Elementium Ingot\n- 10 Arcanite Bars\n1 Fiery Core\n- 3 Elemental Flux"
	elseif itemId == "12655" then --Enchanted Thorium
		smetalsZone = "Smelted by Miners using:\n- 1 Thorium Bar\n- 3 Rich Illusion Dust"
	elseif itemId == "12360" then --Arcanite
		smetalsZone = "Transmuted by Alchemists using:\n- 1 Thorium Bar\n- 1 Arcane Crystal"
	elseif itemId == "11371" then --Dark Iron
		smetalsZone = "Smelted by Miners using:\n- 8 Dark Iron Ore"
	elseif itemId == "12359" then --Thorium
		smetalsZone = "Smelted by Miners using:\n- 1 Thorium Ore"
	elseif itemId == "6037" then --Truesilver
		smetalsZone = "Smelted by Miners using:\n- 1 Truesilver Ore"
	elseif itemId == "3860" then --Mithril
		smetalsZone = "Smelted by Miners using:\n- 1 Mithril Ore"
	elseif itemId == "3859" then --Steel
		smetalsZone = "Smelted by Miners using:\n- 1 Iron Bar\n- 1 Coal"
	elseif itemId == "3577" then --Gold
		smetalsZone = "Smelted by Miners using:\n- 1 Gold Ore"
	elseif itemId == "3575" then --Iron
		smetalsZone = "Smelted by Miners using:\n- 1 Iron Ore"
	elseif itemId == "2841" then --Bronze
		smetalsZone = "Smelted by Miners using:\n- 1Bronze Bar\n- 1 Tin Bar"
	elseif itemId == "3576" then --Tin
		smetalsZone = "Smelted by Miners using:\n- 1 Tin Ore"
	elseif itemId == "2842" then --Silver
		smetalsZone = "Smelted by Miners using:\n- 1 Silver Ore"
	elseif itemId == "2840" then --Copper
		smetalsZone = "Smelted by Miners using:\n- 1 Copper Ore"
	--Vanilla Others
	elseif itemId == "17203" then --Sulfuron Ingot
		smetalsZone = "Dropped by Golemagg the Incinerator. Found in Molten Core."
	elseif itemId == "12809" then --Guardian Stone
		smetalsZone = "Dropped by Stone Guardians Found in Un'Goro Crater."
	elseif itemId == "18567" then --Elemental Flux
		smetalsZone = "Sold by Blacksmith Suppliers."
	elseif itemId == "12644" then --Dense Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n- 4 Dense Stone."
	elseif itemId == "12365" then --Dense Stone
		smetalsZone = "Gathered from Thorium Veins."
	elseif itemId == "7912" then --Solid Stone
		smetalsZone = "Gathered from Mithril Deposits."
	elseif itemId == "7966" then --Solid Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n- 4 Solid Stone"
	elseif itemId == "3486" then --Heavy Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n- 3 Heavy Stone"
	elseif itemId == "2838" then --Heavy Stone
		smetalsZone = "Gathered from Iron Deposits."
	elseif itemId == "3478" then --Coarse Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n- 2 Coarse Stone"
	elseif itemId == "2836" then --Coarse Stone
		smetalsZone = "Gathered from Tin, Mithril & Truesilver Deposits."
	elseif itemId == "3470" then --Rough Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n- 2 Rough Stone"
	elseif itemId == "2835" then --Rough Stone
		smetalsZone = "Gathered from Copper Veins."
	elseif itemId == "22202" then --Small Obsidian Shard
		smetalsZone = "Gathered in: Temple of Ahn'Qiraj Raid."
	elseif itemId == "22203" then --Large Obsidian Shard
		smetalsZone = "Gathered in: Temple of Ahn'Qiraj Raid."
	end
	
	return smetalsZone
end

namespace.metalsName = getMetalsZone