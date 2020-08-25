local addonName, namespace = ...

local function getClothZone(itemId)
	local sClothZone = ""
	
	
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