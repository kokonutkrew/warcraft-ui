local addonName, namespace = ...

local function getOtherZone(itemId)
	local sotherZone = ""
	
	--Shadowlands
	if itemId == "172058"  --Smuggled Azerothian Produce
	or itemId == "172059"  --Rich Grazer Milk
	or itemId == "172057"  --Inconceivably Aged Vinegar
	or itemId == "172056"  --Medley of Transplanar Spices
	or itemId == "178786"  --Lusterwheat Flour
	or itemId == "175111" then --Marrow Larva
		sotherZone = "Sold by Shadowlands Cooking suppliers."
	--Battle for Azeroth
	elseif itemId == "158186" then --Distilled Water
		sotherZone = "Sold by Inscription suppliers."
	elseif itemId == "39354" then --Light Parchment
		sotherZone = "Sold by Inscription suppliers."
	elseif itemId == "158205" then --Acacia Powder
		sotherZone = "Sold by Inscription suppliers."
	elseif itemId == "160398" --Choral Honey
	or itemId == "160399"  --Wild Flour
	or itemId == "160400" --Foosaka
	or itemId == "160709" --Fresh Potato
	or itemId == "160710" -- Wild Berries
	or itemId == "160712" then --Powdered Sugar
		sotherZone = "Sold by Battle for Azeroth Cooking suppliers."
	elseif itemId == "166846" then --Spare Parts
		sotherZone = "Gathered on Mechagon."
	end
	
	return sotherZone
end

namespace.otherName = getOtherZone