local addonName, namespace = ...

local function getFishZone(itemId)
	local sFishZone = ""
	if itemId == "173037" then --Elysian Thade
		sFishZone = "Gathered from pools across The Shadowlands, except The Maw"
	elseif itemId == "173036" then --Spinefin Piranha
		sFishZone = "Gathered from pools in: Revendreth."
	elseif itemId == "173035" then --Pocked Bonefish
		sFishZone = "Gathered from pools in: Maldraxxus."
	elseif itemId == "173033" then --Iridescent Amberjack
		sFishZone = "Gathered from pools in: Ardenweald."
	elseif itemId == "173032" then --Lost Sole
		sFishZone = "Gathered from pools in: Bastion."
	elseif itemId == "173034" then --Silvergill Pike
		sFishZone = "Gathered from pools in: Bastion."
	--Battle for Azeroth
	elseif itemId == "162515" then --Midnight Salmon
		sFishZone = "Gathered from pools across Zandalar & Kul'Tiras. More common at night."
	elseif itemId == "152549" then --Redtail Loach
		sFishZone = "Gathered from pools in areas of inland water across Zandalar."
	elseif itemId == "152548" then --Tiragarde Perch
		sFishZone = "Gathered from pools in areas of inland water across Kul'Tiras."
	elseif itemId == "152547" then --Great Sea Catfish
		sFishZone = "Gathered from pools in areas of inland water across Zandalar & Kul'tiras. Misleading name"
	elseif itemId == "152546" then --Lane Snapper
		sFishZone = "Gathered from pools along the coasts of Kul'Tiras."
	elseif itemId == "152544" then --Slimy Mackerel
		sFishZone = "Gathered from pools along the coasts of Zandalar."
	elseif itemId == "152543" then --Sand Shifter
		sFishZone = "Gathered from pools along the coasts of Zandalar."
	elseif itemId == "152545" then --Frenzied Fangtooth
		sFishZone = "Gathered from pools along the coasts of Kul'Tiras."
	elseif itemId == "160711" then --Aromatic Fish Oil
		sFishZone = "Gathered from any type of Battle for Azeroth Fish."
	elseif itemId == "167562" --Ionized Minnow
	or itemId == "168262" then --Sentry Fish
		sFishZone = "Gathered from pools across Mechagon."
	elseif itemId == "168646" --mauve Stinger
	or itemId == "168302" then --
		sFishZone = "Gathered from pools across Nazjatar."
	end
	
	return sFishZone
end


namespace.fishName = getFishZone