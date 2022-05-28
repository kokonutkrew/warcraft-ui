local addonName, namespace = ...

local function getEnchZone(itemId)
	local getEnchZone = ""
	--Shadowlands
	if itemId == "172232" then --Eternal Crystal
		getEnchZone = "Gathered from disenchanting Epic quality Shadowlands items."
	elseif itemId == "172231" then --Sacred Shard
		getEnchZone = "Gathered from disenchanting Rare quality Shadowlands items.\nEnchanters can obtain from shattering an Eternal Crystal."
	elseif itemId == "172230" then --Soul Dust
		getEnchZone = "Gathered from disenchanting Uncommon quality Shadowlands items.\nEnchanters can obtain from shattering a Sacred Shard"
	--Battle for Azeroth
	elseif itemId == "152877" then --Veiled Crystal
		getEnchZone = "Gathered from disenchanting Epic quality Battle for Azeroth items."
	elseif itemId == "152876" then --Umbra Shard
		getEnchZone = "Gathered from disenchanting Rare quality Battle for Azeroth items."
	elseif itemId == "152875" then --Gloom Dust
		getEnchZone = "Gathered from disenchanting Uncommon quality Battle for Azeroth items."
	--Legion
	elseif itemId == "124442" then --Chaos Crystal
		getEnchZone = "Gathered from disenchanting Epic quality Legion items."
	elseif itemId == "124441" then --Leylight Shard
		getEnchZone = "Gathered from disenchanting Rare quality Legion items."
	elseif itemId == "124440" then --Arkhana
		getEnchZone = "Gathered from disenchanting Uncommon quality Legion items."
	elseif itemId == "156930" then --Rich Illusion Dust
		getEnchZone = "Gathered from disenchanting Uncommon quality Legion items."
	end
	
	return getEnchZone
end


namespace.enchName = getEnchZone