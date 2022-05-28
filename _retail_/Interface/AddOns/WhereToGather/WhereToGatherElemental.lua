local addonName, namespace = ...

local function getElementalZone(itemId)
	local sElementalZone = ""
	
	--Shadowlands
	if itemId == "178787" then --Orboreal Shard
		sElementalZone = "Purchase from crafting vendors in Oribos."
	--Battle for Azeroth
	elseif itemId == "162461" then --Sanguicell
		sElementalZone = "Gathered from Battle for Azeroth raid bosses."
	elseif itemId == "152668" then --Expulsom
		sElementalZone = "Gathered from the Scrapper.\nTransmuted by Alchemists using:\n10 Akunda's Bite\n10 Winter's Kiss\n3 Anchor Weed"
	elseif itemId == "162460" then --Hydrocore
		sElementalZone = "Gathered from end bosses of Battle for Azeroth Mythic dungeons."
	elseif itemId == "163203" then --Hypersentitive azeritometer
		sElementalZone = "Sold by Blacksmith suppliers."
	--Legion
	elseif itemId == "124124" then --Blood of Sargeras
		sElementalZone = "Gathered from The Broken Isles.\nCan be found gathering ores, herbs, skins, or in a container."
	elseif itemId == "151568" then --Primal Sargerite
		sElementalZone = "Gathered from Argus.\nCan be found gathering ores, herbs, skins, or in a container."
	elseif itemId == "124122" then --Leyfire
		sElementalZone = ""
	elseif itemId == "124123" then --Demonfire
		sElementalZone = ""
	--Warlords
	elseif itemId == "113261" then --Sorc Fire
		sElementalZone = "Gathered from daily trade skill cooldowns.\nAlchemy, Blacksmithing, Enchanting & Engineering."
	elseif itemId == "113262" then --Sorc Water
		sElementalZone = "Gathered from daily trade skill cooldowns.\nAlchemy, Inscription, Leatherworking & Tailoring."
	elseif itemId == "113263" then --Sorc Earth
		sElementalZone = "Gathered from daily trade skill cooldowns.\nBlacksmithing, Inscription, Jewelcrafting & Leatherworking."
	elseif itemId == "113264" then --Sorc Air
		sElementalZone = "Gathered from daily trade skill cooldowns.\nEnchanting, Engineering, Jewelcrafting & Tailoring."
	elseif itemId == "120945" then --Primal Spirit
		sElementalZone = "Gathered from Draenor.\nCan be found gathering ores, herbs, skins, looting or in a container."

	end
	
	return sElementalZone
end


namespace.elementalName = getElementalZone