local addonName, namespace = ...

local function getEnchZone(itemId)
	local getEnchZone = ""
	
	if itemId == "10940" then --Strange Dust
		getEnchZone = "Gathered by disenchanting\nlevel 3-20 items."
	elseif itemId == "11083" then --Soul Dust
		getEnchZone = "Gathered by disenchanting\nlevel 20-30 items."
	elseif itemId == "11137" then --Vision Dust
		getEnchZone = "Gathered by disenchanting\nlevel 30-40 items."
	elseif itemId == "11176" then --Dream Dust
		getEnchZone = "Gathered by disenchanting\nlevel 40-50 items."
	elseif itemId == "16204" then --Illusion Dust
		getEnchZone = "Gathered by disenchanting\nlevel 50-60 items."
	
	elseif itemId == "10938" then --Lesser Magic Essence
		getEnchZone = "Gathered by disenchanting\nlevel 3-15 items."
	elseif itemId == "10939" then --Greater Magic Essence
		getEnchZone = "Gathered by disenchanting\nlevel 10-25 items."
	elseif itemId == "10998" then --Lesser Astral Essence
		getEnchZone = "Gathered by disenchanting\nlevel 15-20 items."
	elseif itemId == "11082" then --Greater Astral Essence
		getEnchZone = "Gathered by disenchanting\nlevel 20-25 items."
	elseif itemId == "11134" then --Lesser Mystic Essence
		getEnchZone = "Gathered by disenchanting\nlevel 25-30 items."
	elseif itemId == "11135" then --Greater Mystic Essence
		getEnchZone = "Gathered by disenchanting\nlevel 30-40 items."
	elseif itemId == "11135" then --Greater Mystic Essence
		getEnchZone = "Gathered by disenchanting\nlevel 30-40 items."
	elseif itemId == "11174" then --Lesser Nether Essence
		getEnchZone = "Gathered by disenchanting\nlevel 35-40 items."
	elseif itemId == "11175" then --Greater Nether Essence
		getEnchZone = "Gathered by disenchanting\nlevel 40-45 items."
	elseif itemId == "16202" then --Lesser Eternal Essence
		getEnchZone = "Gathered by disenchanting\nlevel 45-50 items."
	elseif itemId == "16203" then --Greater Eternal Essence
		getEnchZone = "Gathered by disenchanting\nlevel 50-60 items."
	
	elseif itemId == "10978" then --Small Glimmering Shard
		getEnchZone = "Gathered by disenchanting\nlevel 15-20 Rare items."
	elseif itemId == "11084" then --Large Glimmering Shard
		getEnchZone = "Gathered by disenchanting\nlevel 20-30 items."
	elseif itemId == "11138" then --Small Glowing Shard
		getEnchZone = "Gathered by disenchanting\nlevel 25-30 Rare items."
	elseif itemId == "11139" then --Large Glowing Shard
		getEnchZone = "Gathered by disenchanting\nlevel 30-40 items."
	elseif itemId == "11177" then --Small Radiant Shard
		getEnchZone = "Gathered by disenchanting\nlevel 35-40 Rare items."
	elseif itemId == "11178" then --Large Radiant Shard
		getEnchZone = "Gathered by disenchanting\nlevel 40-45 Rare items."	
	elseif itemId == "14343" then --Small Brilliant Shard
		getEnchZone = "Gathered by disenchanting\nlevel 45-50 Rare items."
	elseif itemId == "14344" then --Large Brilliant Shard
		getEnchZone = "Gathered by disenchanting\nlevel 51-60 Rare items."
	
	end
	
	return getEnchZone
end


namespace.enchName = getEnchZone