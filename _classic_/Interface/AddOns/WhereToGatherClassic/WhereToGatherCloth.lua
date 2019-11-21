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
	end
	
	return sClothZone
end


namespace.clothName = getClothZone