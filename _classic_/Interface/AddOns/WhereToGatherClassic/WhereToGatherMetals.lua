local addonName, namespace = ...

local function getMetalsZone(itemId)
	local smetalsZone = ""
	
	--Cataclysm
	if itemId == "52183" then --Pyrite
		smetalsZone = "Gathered in:\nTwilight Highlands\nUldum\nTol Barad."
	elseif itemId == "52185" then --Elementium
		smetalsZone = "Gathered in:\nDeepholm\nTwilight Highlands."
	elseif itemId == "53038" then --Obsidium
		smetalsZone = "Gathered in:\nDeepholm\nMount Hyjal."
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
		smetalsZone = "Smelted by Miners using:\n2 Pyrite Ore.\nTransmuted by Alchemists using:\nElementium Bar & Volatile Earth"
	end
	
	--WotLK
	if itemId == "36912" then --Saronite Ore
		smetalsZone = "Gathered in:\nIcecrown\nStorm Peaks\nSholazar Basin\nWintergrasp"
	elseif itemId == "36909" then --Cobalt Ore
		smetalsZone = "Gathered in:\nHowling Fjord\nBorean Tundra\nDragonblight\nZul'Drak\nGrizzly Hills"
	elseif itemId == "36910" then --Titanium Ore
		smetalsZone = "Gathered in:\nIcecrown\nStorm Peaks\nSholazar Basin\nWintergrasp"
	elseif itemId == "36916" then --Cobalt bar
		smetalsZone = "Smelted by Miners (350) using:\n1 Cobalt Ore"
	elseif itemId == "36913" then --Saronite Bar
		smetalsZone = "Smelted by Miners (400) using:\n2 Saronite Ore"
	elseif itemId == "41163" then --Titanium Bar
		smetalsZone = "Smelted by Miners (450) using:\n2 Titanium Ore\nTransmuted by Alchemists using:\n8 Saronite Bar"
	elseif itemId == "37663" then --Titansteel Bar
		smetalsZone = "Smelted by Miners (450) using:\n3 Titanium Bar\n1 Eternal Fire\n1 Eternal Earth\n1 Eternal Shadow"
	end
	
	--TBC
	if itemId == "23426" then --Khorium
		smetalsZone = "Gathered in:\nNagrand\nBlade's Edge Mountains\nNetherstorm\nShadowmoon Valley"
	elseif itemId == "23427" then --Eternium Ore
		smetalsZone = "Gathered whilst mining:\nKhorium\nAdamantite\nFel Iron"
	elseif itemId == "23425" then --Adamantite Ore
		smetalsZone = "Gathered in:\nNagrand\nBlade's Edge Mountains\nNetherstorm\nShadowmoon Valley"
	elseif itemId == "23424" then --Fel Iron
		smetalsZone = "Gathered across Outland.\nMost common in:\nHellfire Peninsula\nZangarmarsh\nNagrand"
	--The Burning Crusade Bars
	elseif itemId == "23447" then --Eternium
		smetalsZone = "Smelted by Miners (350) using:\n2 Eternium Ore"
	elseif itemId == "23449" then --Khorium
		smetalsZone = "Smelted by Miners (375) using:\n2 Khorium Ore"
	elseif itemId == "35128" then --Hardened Khorium
		smetalsZone = "Smelted by Miners (375) using:\n3 Khorium Bar\n1 Hardened Adamantite Bar"
	elseif itemId == "23446" then --Adamantite Bar
		smetalsZone = "Smelted by Miners (325) using:\n2 Adamantite Ore"
	elseif itemId == "23448" then --Felsteel Bar
		smetalsZone = "Smelted by Miners (350) using:\n3 Fel Iron Bars\n2 Eternium Bars"
	elseif itemId == "23445" then --Fel Iron
		smetalsZone = "Smelted by Miners (300) using:\n2 Fel Iron Ore"
	elseif itemId == "23573" then --Hardened Adamantite
		smetalsZone = "Smelted by Miners (375) using:\n10 Adamantite Bar"
	end
	
	--Vanilla Ore
	if itemId == "11370" then --Dark Iron
		smetalsZone = "Gathered in:\nBurning Steppes\nSearing Gorge"
	elseif itemId == "3858" then --Mithril
		smetalsZone = "Gathered in:\nHinterlands\nTanaris\nDesolace\nBadlands"
	elseif itemId == "10620" then --Thorium
		smetalsZone = "Gathered in:\nWinterspring,\nEastern Plaguelands\nAzshara\nUn'Goro"
	elseif itemId == "7911" then --Truesilver
		smetalsZone = "Gathered in:\nFelwood\nWinterspring"
	elseif itemId == "2772" then --Iron
		smetalsZone = "Gathered in:\nArathi Highlands\n Desolace\nStranglethorn Vale"
	elseif itemId == "2776" then --Gold
		smetalsZone = "Gathered in:\nBadlands\nTanaris\nFelwood\nStranglethorn Vale"
	elseif itemId == "2771" then --Tin
		smetalsZone = "Gathered in:\nHillsbrad Foothills\nRedridge Mountains\n Thousand Needles\nThe Barrens"
	elseif itemId == "2775" then --Silver
		smetalsZone = "Gathered in:\nArathi Highlands\nThe Barrens\n Thousand Needles"
	elseif itemId == "2770" then --Copper
		smetalsZone = "Gathered in:\nThe Barrens\nStarting Zones\nDarkshore"
	elseif itemId == "3858" then --Elementium Ingot
		smetalsZone = "Dropped by Blackwing Technician\nin Blackwing Lair"
	--Vanilla Bars
	elseif itemId == "17771" then --Enchanted Elementium
		smetalsZone = "Smelted by Miners using:\n1 Elementium Ingot\n10 Arcanite Bars\n1 Fiery Core\n3 Elemental Flux"
	elseif itemId == "12655" then --Enchanted Thorium
		smetalsZone = "Created by Enchanters using:\n1 Thorium Bar\n3 Rich Illusion Dust"
	elseif itemId == "12360" then --Arcanite
		smetalsZone = "Transmuted by Alchemists using:\n1 Thorium Bar\n1 Arcane Crystal"
	elseif itemId == "11371" then --Dark Iron
		smetalsZone = "Smelted by Miners using:\n8 Dark Iron Ore"
	elseif itemId == "12359" then --Thorium
		smetalsZone = "Smelted by Miners using:\n1 Thorium Ore"
	elseif itemId == "6037" then --Truesilver
		smetalsZone = "Smelted by Miners using:\n1 Truesilver Ore"
	elseif itemId == "3860" then --Mithril
		smetalsZone = "Smelted by Miners using:\n1 Mithril Ore"
	elseif itemId == "3859" then --Steel
		smetalsZone = "Smelted by Miners using:\n1 Iron Bar\n1 Coal"
	elseif itemId == "3577" then --Gold
		smetalsZone = "Smelted by Miners using:\n1 Gold Ore"
	elseif itemId == "3575" then --Iron
		smetalsZone = "Smelted by Miners using:\n1 Iron Ore"
	elseif itemId == "2841" then --Bronze
		smetalsZone = "Smelted by Miners using:\n1Bronze Bar\n1 Tin Bar"
	elseif itemId == "3576" then --Tin
		smetalsZone = "Smelted by Miners using:\n1 Tin Ore"
	elseif itemId == "2842" then --Silver
		smetalsZone = "Smelted by Miners using:\n1 Silver Ore"
	elseif itemId == "2840" then --Copper
		smetalsZone = "Smelted by Miners using:\n1 Copper Ore"
	--Vanilla Others
	elseif itemId == "17203" then --Sulfuron Ingot
		smetalsZone = "Dropped by Golemagg the Incinerator.\nFound in Molten Core."
	elseif itemId == "12809" then --Guardian Stone
		smetalsZone = "Dropped by Stone Guardians\nFound in Un'Goro Crater."
	elseif itemId == "18567" then --Elemental Flux
		smetalsZone = "Sold by Blacksmith Suppliers."
	elseif itemId == "12644" then --Dense Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n4 Dense Stone."
	elseif itemId == "12365" then --Dense Stone
		smetalsZone = "Gathered from Thorium Veins."
	elseif itemId == "7912" then --Solid Stone
		smetalsZone = "Gathered from Mithril Deposits."
	elseif itemId == "7966" then --Solid Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n4 Solid Stone"
	elseif itemId == "3486" then --Heavy Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n3 Heavy Stone"
	elseif itemId == "2838" then --Heavy Stone
		smetalsZone = "Gathered from Iron Deposits."
	elseif itemId == "3478" then --Coarse Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n2 Coarse Stone"
	elseif itemId == "2836" then --Coarse Stone
		smetalsZone = "Gathered from Tin\nMithril\nTruesilver Deposits."
	elseif itemId == "3470" then --Rough Grinding
		smetalsZone = "Crafted by Blacksmiths using:\n2 Rough Stone"
	elseif itemId == "2835" then --Rough Stone
		smetalsZone = "Gathered from Copper Veins."
	elseif itemId == "22202" then --Small Obsidian Shard
		smetalsZone = "Gathered in:\nTemple of Ahn'Qiraj Raid."
	elseif itemId == "22203" then --Large Obsidian Shard
		smetalsZone = "Gathered in:\nTemple of Ahn'Qiraj Raid."
	end
	
	return smetalsZone
end

namespace.metalsName = getMetalsZone