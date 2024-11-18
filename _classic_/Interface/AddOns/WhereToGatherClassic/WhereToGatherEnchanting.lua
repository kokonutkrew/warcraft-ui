local addonName, namespace = ...

local function getEnchZone(itemId)
	local getEnchZone = ""
	
	--Cataclysm
	if itemId == "52722" then --Maelstrom
		getEnchZone = "Gathered by disenchanting\nCataclysm Epic items."
	elseif itemId == "52555" then --Hypnotic Dust
		getEnchZone = "Gathered by disenchanting\nCataclysm Uncommon items."
	elseif itemId == "52719" then --Greater Celestial Essence
		getEnchZone = "Gathered by disenchanting\nCataclysm Uncommon items."
	elseif itemId == "52721" then --Heavenly Shard
		getEnchZone = "Gathered by disenchanting\nCataclysm Rare items."
	elseif itemId == "65358" then --Elementium Rod
		getEnchZone = "Crafted by Blacksmiths (425) using\n15 Elementium Bar"
	elseif itemId == "52718" then --Lesser Celestial Essence
		getEnchZone = "Gathered by disenchanting\nCataclysm Uncommon items."
	elseif itemId == "52723" then --Runed Elementium Rod
		getEnchZone = "Crafted by Enchanters (515) using\n1 Runed Titanium Rod\n10 Hypnotic Dust\n6 Greater Celestial Essence\n6 Heavenly Shard\n1 Elementium Rod"
	elseif itemId == "52720" then --Small Heavenly Shard
		getEnchZone = "Gathered by disenchanting\nCataclysm Rare items."
	end
	
	--WotLK
	if itemId == "34055" then --Greater Cosmic Essence
		getEnchZone = "Gathered by disenchanting\nlevel 75-80 Northrend items\nCan be created by using 3 Lesser Cosmic Essence"
	elseif itemId == "34054" then --Infinite Dust
		getEnchZone = "Gathered by disenchanting\n Northrend Uncommon items."
	elseif itemId == "34052" then --Dream Shard
		getEnchZone = "Gathered by disenchanting\n Northrend Rare items."
	elseif itemId == "34057" then --Abyss Shard
		getEnchZone = "Gathered by disenchanting\n Northrend Epic items."
	elseif itemId == "44452" then --Runed Titanium Rod
		getEnchZone = "Crafted by Enchanters (425) using\n1 Titanium Rod\n40 Infinite Dust\n12 Greater Cosmic Essence\n8 Dream Shard\n1 Runed Eternium Rod"
	elseif itemId == "41745" then --Titanium Rod
		getEnchZone = "Crated by Blacksmiths (520) using\n2 Saronite Bar\n1 Titanium Bar"
	elseif itemId == "34053" then --Small Dream Shard
		getEnchZone = "Gathered by disenchanting\n low level Northrend Rare items.\nSmall chance to gather from green items."
	elseif itemId == "34056" then --Lesser Cosmic Essence
		getEnchZone = "Gathered by disenchanting\nlevel 68-74 Northrend items"
	end
	
	--TBC
	if itemId == "25843" then --Fel Iron Rod
		getEnchZone = "Crafted by Blacksmiths (300) using\n6 Fel Iron Bar"
	elseif itemId == "22461" then --Runed Fel Iron Rod
		getEnchZone = "Crafted by Enchanters (300) using\n1 Fel Iron Rod\n4 Greater Eternal Essence\n6 Large Brilliant Shard\n1 Runed Arcanite Rod"
	elseif itemId == "22445" then --Arcane Dust
		getEnchZone = "Gathered by disenchanting\nlevel 57-68 Outland items."
	elseif itemId == "25844" then --Adamantite Rod
		getEnchZone = "Crafted by Blacksmiths (350) using\n10 Adamantite Bar"
	elseif itemId == "22462" then --Runed Adamantite Rod
		getEnchZone = "Crafted by Enchanters (350) using\n1 Adamantite Rod\n8 Greater Planar Essence\n8 Large Prismatic Shard\n1 Primal Might\n1 Runed Arcanite Rod"
	elseif itemId == "22449" then --Large Prismatic Shard
		getEnchZone = "Gathered by disenchanting\nlevel 65-70 Outland Rare items."
	elseif itemId == "22448" then --Small Prismatic Shard
		getEnchZone = "Gathered by disenchanting\nlevel 58-64 Outland Rare items."
	elseif itemId == "22446" then --Greater Planar Essence
		getEnchZone = "Gathered by disenchanting\nlevel 64-70 Outland items."
	elseif itemId == "22447" then --Lesser Planar Essence
		getEnchZone = "Gathered by disenchanting\nlevel 58-63 Outland items."
	elseif itemId == "22450" then --Void Crystal
		getEnchZone = "Gathered by disenchanting\nlevel 70 Outland Epic items."
	elseif itemId == "22463" then --Runed Eternium Rod
		getEnchZone = "Crafted by Enchanters (375) using\n1 Eternium Rod\n12 Greater Planar Essence\n2 Void Crystal\n4 Primal Might\n1 Runed Adamantite Rod"
	elseif itemId == "25845" then --Eternium Rod
		getEnchZone = "Crafted by Blacksmiths (375) using\n4 Eternium Bar"
	end
	
	
	--Vanilla
	
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