local addonName, namespace = ...

local function getClothZone(itemId)
	local sClothZone = ""
	
	--Cataclysm
	if itemId == "53010" then --Embersilk Cloth
		sClothZone = "Dropped by humanoids in Cataclysm zones"
	elseif itemId == "53643" then --Bolt of Embersilk Cloth
		sClothZone = "Created by Tailors (440) using:\n5 Embersilk Cloth"
	elseif itemId == "54440" then --Dreamcloth
		sClothZone = "Crafted by Tailors (525) using:\n8 Bolt of Embersilk Cloth\n& Either\n30 of a single Volatile Element\nor 4 Chaos Orb"
	end
	
	
	--WotLK
	if itemId == "41593" then --Ebonweave
		sClothZone = "Crafted by Tailors (415) using:\n1 Bolt of Imbued Frostweave\n2 Eternal Shadow"
	elseif itemId == "42253" then --Iceweb Spider Silk
		sClothZone = "Dropped by spiders in Northrend.\nRecommended zones:\nStorm Peaks or Zul'Drak"
	elseif itemId == "41594" then --Moonshroud
		sClothZone = "Created by Tailors (415) using:\n1 Bolt of Imbued Frostweave\n2 Eternal Life"
	elseif itemId == "41595" then --Spellweave
		sClothZone = "Created by Tailors (415) using:\n1 Bolt of Imbued Frostweave\n2 Eternal Fire"
	elseif itemId == "41510" then --Bolt of Frostweave
		sClothZone = "Created by Tailors (350) using:\n5 Frostweave Cloth"
	elseif itemId == "33470" then --Frostweave Cloth
		sClothZone = "Dropped by level 68-80 humanoids in Northrend"
	elseif itemId == "41511" then --Bolt of Imbued Frostweave
		sClothZone = "Created by Tailors (400) using:\n2 Bolt of Frostweave\n2 Infinite Dust"
	end
	
	--TBC
	if itemId == "24271" then --Spellcloth
		sClothZone = "Crafted by Tailors (350) using:\n1 Bolt of Imbued Netherweave\n1 Primal Mana\n1 Primal Fire\nCreation has a 4 day cooldown"
	elseif itemId == "21842" then --Bolt of Imbued Netherweave
		sClothZone = "Crafted by Tailors (325) using:\n3 Bolt of Netherweave\n2 Arcane Dust"
	elseif itemId == "21881" then --Netherweb Spider Silk
		sClothZone = "Dropped by spiders in Terokkar Forest"
	elseif itemId == "21845" then --Primal Mooncloth
		sClothZone = "Created by Tailors (350) using:\n1 Bolt of Imbued Netherweave\n1 Primal Life\n1 Primal Water\nCreation has a 4 day cooldown"
	elseif itemId == "24272" then --Shadowcloth
		sClothZone = "Created by Tailors (350) using:\n1 Bolt of Imbued Netherweave\n1 Primal Shadow\n1 Primal Fire\nCreation has a 4 day cooldown"
	elseif itemId == "21840" then --Bolt of Netherweave
		sClothZone = "Created by Tailors (300) using:\n6 Netherweave Cloth"
	elseif itemId == "21877" then --Netherweave Cloth
		sClothZone = "Dropped by level 58-70 humanoids in Outland"
	elseif itemId == "21844" then --Bolt of Soulcloth
		sClothZone = "Created by Tailors (345) using:\n1 Bolt of Netherweave\n8 Soul Essence"
	end
	--Vanilla
	
	if itemId == "2589" then --Linen Cloth
		sClothZone = "Dropped by level\n5-20 humanoids."
	elseif itemId == "2592" then --Wool Cloth
		sClothZone = "Dropped by level\n15-35 humanoids."
	elseif itemId == "4306" then --Silk Cloth
		sClothZone = "Dropped by level\n25-45 humanoids."
	elseif itemId == "4338" then --Mageweave Cloth
		sClothZone = "Dropped by level\n35-55 humanoids."
	elseif itemId == "14256" then --Felcloth
		sClothZone = "Dropped by Satyr\nin Felwood."
	elseif itemId == "14047" then --Runecloth
		sClothZone = "Dropped by level\n45-60 humanoids."
	elseif itemId == "14342" then --Mooncloth
		sClothZone = "Crafted by Tailors using:\n2 Felcloth"
	elseif itemId == "3182" then --Spider's Silk
		sClothZone = "Dropped by spiders in:\nDuskwood\nStonetalon Mountains"
	elseif itemId == "10285" then --Shadow Silk
		sClothZone = "Dropped by spiders in:\nDustwallow Marsh"
	elseif itemId == "14227" then --Ironweb Spider's Silk
		sClothZone = "Dropped by spiders in:\nSearing Gorge\nBlackrock Spire"
	elseif itemId == "4337" then --Thick Spider's Silk
		sClothZone = "Dropped by spiders in:\nDustwallow Marsh\nEastern Plaguelands"
	end
	
	return sClothZone
end


namespace.clothName = getClothZone