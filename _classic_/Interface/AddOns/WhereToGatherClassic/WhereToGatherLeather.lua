local addonName, namespace = ...

local function getLeatherZone(itemId)
	local sleatherZone = ""

	--Vanilla
	if itemId == "15410" then --Scale of Onyxia
		sleatherZone = "Gathered from Onyxia in Onyxia's Lair."
	elseif itemId == "17012" then --Core Leather
		sleatherZone = "Gathered from Core Hounds in Molten Core."
	elseif itemId == "15414" then --
		sleatherZone = "Gathered from Chromaggus in Blackwing Lair."
	elseif itemId == "15408" then --Heavy Scorpid Scale
		sleatherZone = "Gathered from Scorpids in Silithus."
	elseif itemId == "12810" then --Enchanted Leather
		sleatherZone = "Crafted by Enchanters using:\n1 Rugged Leather\n3 Greater Eternal Essence"
	elseif itemId == "15416" then --Black Dragonscale
		sleatherZone = "Gathered from Black Dragonkin in Blackwing Lair."
	elseif itemId == "8171" then --Rugged Hide
		sleatherZone = "Gathered from beasts level 51-60.\nMost common: Winterspring & Un'Goro Crater."
	elseif itemId == "15407" then --Cured Rugged Hide
		sleatherZone = "Crafted by Leatherworkers using:\n1 Rugged Hide\n1 Deeprock Salt"
	elseif itemId == "15412" then --Green Dragonscale
		sleatherZone = "Gathered from Green Dragonkin in Sunken Temple."
	elseif itemId == "8170" then --Rugged Leather
		sleatherZone = "Gathered from beasts level 51-60.\nMost common: Winterspring & Un'Goro Crater."
	elseif itemId == "15417" then --Devilsaur Leather
		sleatherZone = "Gathered from Devilsaur in Un'Goro Crater."
	elseif itemId == "15419" then --Warbear leather
		sleatherZone = "Gathered from Bears in:\nWinterspring & Blasted Lands."
	elseif itemId == "15415" then --Blue Dragonscale
		sleatherZone = "Gathered from Azurous in Winterspring."
	elseif itemId == "8154" then --Scorpid Scale
		sleatherZone = "Gathered from Scorpids in Tanaris."
	elseif itemId == "8165" then --Worn Dragonscale
		sleatherZone = "Gathered from dragonkin in Sunken Temple."
	elseif itemId == "8168" then --jet Black Feather
		sleatherZone = "Drop from Bonepicker Felfeeder in Blasted Lands."
	elseif itemId == "4304" then --Thick Leather
		sleatherZone = "Gathered from beasts level 45-50.\nMost common: Badlands & Burning Steppes."
	elseif itemId == "8169" then --Thick Leather
		sleatherZone = "Gathered from beasts level 40-60.\nMost common: Felwood & Eastern Plaguelands."
	elseif itemId == "8172" then --Cured Thick Hide
		sleatherZone = "Crafted by Leatherworkers using:\n1 Thick Hide\n1 Deeprock Salt"
	elseif itemId == "5785" then --Thick Murloc Scale
		sleatherZone = "Dropped by Murlocs.\nMost common in: Northern Stranglethorn & Wetlands."
	elseif itemId == "8167" then --Turtle Scale
		sleatherZone = "Gathered from Turtles.\nMost common in: The Hinterlands & Swamp of Sorrows."
	elseif itemId == "4234" then --Heavy Leather
		sleatherZone = "Gathered from levels 30-50 creatures."
	elseif itemId == "4235" then --Heavy Hide
		sleatherZone = "Gathered from levels 30-50 creatures."
	elseif itemId == "4236" then --Cured Heavy Hide
		sleatherZone = "Created by Leatherworkers using:\n1 Heavy Hide\n3 Salt"
	elseif itemId == "4461" then --Raptor Hide
		sleatherZone = "Gathered from Raptors in:\nNorthern Stranglethorn & Dustwallow Marsh"
	elseif itemId == "2319" then --Medium Leather
		sleatherZone = "Gathered from level 20-40 creatures."
	elseif itemId == "4232" then --Medium Hide
		sleatherZone = "Gathered from level 20-40 creatures."
	elseif itemId == "4233" then --Cured Medium Hide
		sleatherZone = "Created by Leatherworkers using:\n1 Medium Hide\n1 Salt"
	elseif itemId == "5784" then --Slimy Murloc Scale
		sleatherZone = "Dropped by low level Murlocs.\nMost common: Westfall & Blackfathom Deeps."
	elseif itemId == "5082" then --Thin Kodo Leather
		sleatherZone = "Dropped by Kodos.\nFound in: Mulgore & Northern Barrens."
	elseif itemId == "2934" then --Ruined Leather Scraps
		sleatherZone = "Gathered from level 1-10 creatures.\nMost common in starting zones."
	elseif itemId == "6470" then --Deviate scale
		sleatherZone = "Gathered from Deviate creatures.\nFound in: Wailing Caverns & Northern Barrens."
	elseif itemId == "6471" then --Perfect Deviate Scale
		sleatherZone = "Gathered from Deviate creatures.\nFound in: Wailing Caverns & Northern Barrens."
	elseif itemId == "7286" then --Black Whelp Scale
		sleatherZone = "Gathered from Ebon Whelps in Wetlands."
	elseif itemId == "7392" then --Green Whelp Scale
		sleatherZone = "Gathered from Noxious Whelps in Feralas."
	elseif itemId == "2318" then --Light Leather
		sleatherZone = "Gathered from level 10-20 creatures.\nMost common in starting zones."
	elseif itemId == "783" then --Light Hide
		sleatherZone = "Gathered from level 10-20 creatures.\nMost common in starting zones."
	elseif itemId == "4231" then --Cured Light Hide
		sleatherZone = "Crafted by Leatherworkers using:\n1 Light Hide\n1 Salt"
	elseif itemId == "4289" then --Cured Light Hide
		sleatherZone = "Sold by trade goods vendors."
	end
	
	return sleatherZone
end


namespace.leatherName = getLeatherZone