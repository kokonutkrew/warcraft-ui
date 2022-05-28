local addonName, namespace = ...

local function getAlchemyZone(itemId)
	local salchZone = ""
	
	if itemId == "180457" then --Shadestone
		salchZone = "Transmuted by Alchemists using:\n - 5 Ground Death Blossom\n - 2 Ground Vigil's Touch\n - 2 Ground Widowbloom\n - 2 Ground Marrowroot\n - 2 Ground Rising Glory"
	elseif itemId == "171287" then --Ground Death Blossom
		salchZone = "Created by Alchemists (15) using:\n - 2 Death Blossom"
	elseif itemId == "171292" then --Ground Nightshade
		salchZone = "Created by Alchemists (75) using:\n - 2 Nightshade"
	elseif itemId == "171289" then --Ground Widowbloom
		salchZone = "Created by Alchemists (105) using:\n - 2 Widowbloom"
	elseif itemId == "171288" then --Ground Vigil's Touch
		salchZone = "Created by Alchemists (80) using:\n - 2 Vigil's Touch"
	elseif itemId == "171291" then --Ground Rising Glory
		salchZone = "Created by Alchemists (20) using:\n - 2 Rising Glory"
	elseif itemId == "171290" then --Ground Marrowroot
		salchZone = "Created by Alchemists (45) using:\n - 2 Marrowroot"
	end
	
	return salchZone
end


namespace.alchemyName = getAlchemyZone