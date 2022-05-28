local addonName, namespace = ...

local function getClothZone(itemId)
	local sClothZone = ""
	--Shadowlands
	if itemId == "173204" then --Lightless Silk
		sClothZone = "Gathered from humanoids across The Shadowlands. Rare."
	elseif itemId == "172439" then --Enchanted Lightless Silk
		sClothZone = "Created by Enchanters (115) using:\n - 2 Lightless Silk\n - 1 Soul Dust"
	elseif itemId == "173202" then --Shrouded Cloth
		sClothZone = "Gathered from humanoids across The Shadowlands."
	--Battle for Azeroth
	elseif itemId == "159959" then --Nylon Thread
		sClothZone = "Sold by trade goods vendors."
		--These are listed as leather for some reason
	elseif itemId == "152577" then --Deep Sea Satin
		sClothZone = "Gathered from humanoids near the waters of Zandalar & Kul'Tiras."
	elseif itemId == "152576" then --Tidespray Linen
		sClothZone = "Gathered from humanoids across Zandalar & Kul'Tiras."
	elseif itemId == "158378" then --Embroidered Deep Sea Satin
		sClothZone = "Created by Tailors using:\n- 1 Deep Sea Satin\n- 1 Tidespray Linen\n- 5 Nylon Thread"
	elseif itemId == "167738" then --Gilded Seaweave
		sClothZone = "Gathered from humanoids across Nazjatar."
	--Legion
	elseif itemId == "127004" then --Imbued Silkweave
		sClothZone = "Crafted by Tailors using:\n- 3 Arkhana\n- 10 Shal'dorei Silk"
	elseif itemId == "124437" then --Shal'dorei Silk
		sClothZone = "Dropped by humanoids across The Broken Isles."
	elseif itemId == "127037" then --Runic Catgut
		sClothZone = "Sold by trade goods vendors in Dalaran."
	elseif itemId == "127681" then --Sharp Spritehorn
		sClothZone = "Sold by trade goods vendors in Dalaran."
	elseif itemId == "151567" then --Lightweave Cloth
		sClothZone = "Gathered across Argus"
	elseif itemId == "146710" then --Bolt of Shadowcloth
		sClothZone = "Reward from Armorcrafter's Commendation requires the Nether Disruptor on the Broken Shore."
	elseif itemId == "146711" then --Bolt of Starweave
		sClothZone = "Reward from Armorcrafter's Commendation requires the Nether Disruptor on the Broken Shore."
	--Warlords of Draenor
	elseif itemId == "111556" then --Hexweave Cloth
		sClothZone = "Crafted by Tailors using:\n- 20 Sumptuous Fur\n- 10 Gorgrond Flytrap"
	elseif itemId == "111557" then --Sumptuous Fur
		sClothZone = "Dropped by humanoids across Draenor."
	--Mists of Pandaria
	elseif itemId == "" then --
		sClothZone = ""
	end
	
	return sClothZone
end


namespace.clothName = getClothZone