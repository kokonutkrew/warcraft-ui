local addonName, namespace = ...

local function getElementalZone(itemId)
	local sElementalZone = ""
	
	if itemId == "7068" then --Elemental Fire
		sElementalZone = "Gathered from Fire Elementals.\nRecommended zone: Arathi Highlands."
	elseif itemId == "10286" then --Heart of the Wild
		sElementalZone = "Gathered from Bog Beasts.\nRecommended zone: Un'Goro Crater."
	elseif itemId == "7067" then --Elemental Earth
		sElementalZone = "Gathered from Earth Elementals.\nRecommended zone: Badlands."
	elseif itemId == "7070" then --Elemental Water
		sElementalZone = "Gathered from Water Elementals.\nRecommended zone: Arathi Highlands."
	elseif itemId == "7080" then --Essence of Water
		sElementalZone = "Gathered from elite Water Elementals.\nRare Drop."
	elseif itemId == "7078" then --Essence of Fire
		sElementalZone = "Gathered from elite Fire Elementals.\nRare Drop."
	elseif itemId == "7069" then --Elemental Air
		sElementalZone = "Gathered from Air Elementals.\nRecommended zone: Arathi Highlands."
	elseif itemId == "7075" then --Core of Earth
		sElementalZone = "Gathered from Earth Elementals.\nRecommended zone: Badlands"
	elseif itemId == "7082" then --Essence of Air
		sElementalZone = "Gathered from elite Air Elementals.\nRare Drop."
	elseif itemId == "7972" then --Ichor of Undeath
		sElementalZone = "Gathered from Undead.\nRecommended zone: Western Plaguelands"
	elseif itemId == "7079" then --Globe of Water
		sElementalZone = "Gathered from Water Elementals.\nRecommended zone: Feralas"
	elseif itemId == "12808" then --Essence of Undeath
		sElementalZone = "Gathered from elite Undead.\nRecommended zone: Stratholme."
	elseif itemId == "12803" then --Living Essence
		sElementalZone = "Gathered from Bog Beasts.\nRare Drop."
	elseif itemId == "7077" then --Heart of Fire
		sElementalZone = "Gathered from Fire Elementals.\nRecommended zone: Searing Gorge."
	elseif itemId == "7076" then --Essence of Earth
		sElementalZone = "Gathered from elite Earth Elementals.\nRare Drop"
	elseif itemId == "7081" then --Breath of Wind
		sElementalZone = "Gathered from Air Elementals."
	end
	
	return sElementalZone
end


namespace.elementalName = getElementalZone