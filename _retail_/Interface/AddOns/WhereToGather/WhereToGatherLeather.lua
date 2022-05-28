local addonName, namespace = ...

local function getLeatherZone(itemId)
	local sleatherZone = ""
	--Shadowlands
	if itemId == "172438" then --Enchanted Heavy Callous Hide
		sleatherZone = "Created by Enchanters (115) using:\n - 2 Heavy Callous Hide\n - 1 Soul Dust"
	elseif itemId == "172097" then --Heavy Callous Hide
		sleatherZone = "Chance to gather when skinning high level beasts in The Shadowlands.\nCrafted by Leatherworkers (80) using:\n - 10 Callous Hide"
	elseif itemId == "172096" then --Heavy Desolate Leather
		sleatherZone = "Chance to gather when skinning mid-high level beasts in The Shadowlands.\nCrafted by Leatherworkers (70) using:\n - 10 Desolate Leather"
	elseif itemId == "172089" then --Desolate Leather
		sleatherZone = "Gathered when skinning across The Shadowlands."
	elseif itemId == "172094" then --Callous Hide
		sleatherZone = "Chance to gather when skinning across The Shadowlands."
	elseif itemId == "172092" then --Pallid Bone
		sleatherZone = "Gathered when skinning across The Shadowlands."
	elseif itemId == "177279" then --Gaunt Sinew
		sleatherZone = "Gathered when skinning across The Shadowlands."
	elseif itemId == "172333" then --Purified Leather
		sleatherZone = "Gathered in: Bastion."
	elseif itemId == "172331" then --Sinful Leather
		sleatherZone = "Gathered in: Revendreth."
	elseif itemId == "172090" then --Sorrowscale Fragment
		sleatherZone = "Gathered when skinning scaled creatures across The Shadowlands."
	elseif itemId == "172332" then --Necrotic Leather
		sleatherZone = "Gathered in: Maldraxxus."
	elseif itemId == "172330" then --Unseelie Leather
		sleatherZone = "Gathered in: Ardenweald."
	--Battle for Azeroth
	elseif itemId == "152542" then --Hardened Tempest Hide
		sleatherZone = "Crafted by Leatherworkers using:\n1 Tempest Hide\n1 Amber Tanning Oil"
	elseif itemId == "153051" then --Mistscale
		sleatherZone = "Gathered from scaled creatures in:\nVol'dun, Nazmir & Tiragarde Sound."
	elseif itemId == "154164" then --Blood-stained Bone
		sleatherZone = "Gathered when skinning beasts across Zandalar & Kul'Tiras."
	elseif itemId == "154722" then --Tempest Hide
		sleatherZone = "Gathered when skinning beasts across Zandalar & Kul'Tiras."
	elseif itemId == "152541" then --Coarse Leather
		sleatherZone = "Gathered from beasts across Zandalar & Kul'Tiras."
	elseif itemId == "153050" then --Shimmerscale
		sleatherZone = "Gathered from scaled creatures across Zandalar & Kul'Tiras."
	elseif itemId == "154165" then --Calcified Bone
		sleatherZone = "Gathered when skinning beasts across Zandalar & Kul'Tiras."
	elseif itemId == "168650" then --Cragscale
		sleatherZone = "Gathered when skinning scaled creatures across Nazjatar"
	elseif itemId == "168649" then --Dredged Leather
		sleatherZone = "Gathered when skinning beasts across Nazjatar"
	--Legion
	elseif itemId == "124116" then --Felhide
		sleatherZone = "Gathered from a World Quest\nin The Broken Isles"
	elseif itemId == "151566" then --Fiendish leather
		sleatherZone = "Gathered from Panthara & Vilefiend on Argus."
	elseif itemId == "124113" then --Stonehide
		sleatherZone = "Gathered from beasts of The Broken Isles"
	elseif itemId == "124115" then --Stormscale
		sleatherZone = "Gathered from scaled creatures of The Broken Isles"
	elseif itemId == "146712" then --Wisp-Touched Elderhide
		sleatherZone = "From Legendary Tanner's Kit, Broken Shore"
	elseif itemId == "146713" then --Prime Wardenscale
		sleatherZone = "From Legendary Wardenscale Supplies, Broken Shore"
	--Warlords of Draenor
	elseif itemId == "110609" then --Raw Beast Hide
		sleatherZone = "Gathered from the beasts of Draenor."
	elseif itemId == "110611" then --Burnished Leather
		sleatherZone = "Crafted by Leatherworkers using:\n20 Raw Beast Hide\n10 Gorgrond Flytrap"
	--Mists of Pandaria
	elseif itemId == "72163" then --Magnificent hide
		sleatherZone = "Crafted by Leatherworkers using: 50 Exotic Leather"
	elseif itemId == "98617" then --Hardened Magnificent Hide
		sleatherZone = "Crafted by Leatherworkers using: 2 Magnificent Hide"
	elseif itemId == "79101" then --Prismatic scale
		sleatherZone = "Gathered from the scaled creatures of Pandaria"
	elseif itemId == "72120" then --Exotic Leather
		sleatherZone = "Gathered from the beasts of Pandaria."
	--Cataclysm
	elseif itemId == "52980" then --Pristine Hide
		sleatherZone = "Purchased from Leatherwork Suppliers: 10 Savage Leather"
	elseif itemId == "52979" then --Blackened Dragonscale
		sleatherZone = "Gathered from dragonkin in: Twilight Highlands & Deepholm"
	elseif itemId == "52982" then --Deepsea Scale
		sleatherZone = "Gathered from sea creatures in: Vashj'ir"
	elseif itemId == "56516" then --Heavy Savage Leather
		sleatherZone = "Crafted by Leatherworkers using: 5 Savage Leather"
	elseif itemId == "52976" then --Savage Leather
		sleatherZone = "Gathered from beasts of Cataclysm."
	--Wrath of the Lich King
	elseif itemId == "38425" then --Heavy Borean
		sleatherZone = "Crafted by Leatherworkers using: 6 Borean Leather"
	elseif itemId == "44128" then --Arctic Fur
		sleatherZone = "Gathered from beasts across Northrend.\nPurchased from Leatherwork Suppliers: 10 Heavy Borean Leather"
	elseif itemId == "38557" then --Icy Dragonscale
		sleatherZone = "Gathered from dragonkin across Northrend."
	elseif itemId == "38561" then --Jormungar Scale
		sleatherZone = "Gathered from Jormungar in: The Storm Peaks"
	elseif itemId == "33568" then --Borean Leather
		sleatherZone = "Gathered from beasts across Northrend."
	elseif itemId == "38558" then --Nerubian Chitin
		sleatherZone = "Gathered from Nerubians across Northrend."
	--The Burning Crusade
	elseif itemId == "25707" then --Fel Hide
		sleatherZone = "Gathered from low level creatures in: Hellfire Peninsula & Terokkar Forest."
	elseif itemId == "23793" then --Heavy Knothide Leather
		sleatherZone = "Crafted by Leatherworkers using:\n5 Knothide Leather"
	elseif itemId == "21887" then --Knothide Leather
		sleatherZone = "Gathered from high level creatures in: Shadowmoon Valley(Outland), Netherstorm & Blade's Edge Mountains."
	elseif itemId == "25699" then --Crystal Infused
		sleatherZone = "Gathered from: Flayers in Shadowmoon Valley(Outland) and Basilisks in Blade's Edge Mountains"
	elseif itemId == "25700" then --Fel Scales
		sleatherZone = "Gathered from scaled creatures across Outland."
	elseif itemId == "25708" then --Thick Clefthoof
		sleatherZone = "Gathered from Clefthoof in Nagrand(Outland)."
	elseif itemId == "29539" then --Cobra Scales
		sleatherZone = "Gathered from snakes in: Shadowmoon Valley(Outland)"
	elseif itemId == "29547" then --Wind Scales
		sleatherZone = "Gathered from Wind Serpents in: Blade's Edge Mountains"
	elseif itemId == "29548" then --Nether Dragonscales
		sleatherZone = "Gathered from Netherdrakes in: Shadowmoon Valley(Outland) & Blade's Edge Mountains"
	--Vanilla
	elseif itemId == "15410" then --Scale of Onyxia
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
		sleatherZone = "Gathered from beasts level 51-60. Most common: Winterspring & Un'Goro Crater."
	elseif itemId == "15407" then --Cured Rugged Hide
		sleatherZone = "Crafted by Leatherworkers using:\n1 Rugged Hide\n1 Deeprock Salt"
	elseif itemId == "15412" then --Green Dragonscale
		sleatherZone = "Gathered from Green Dragonkin in Sunken Temple."
	elseif itemId == "8170" then --Rugged Leather
		sleatherZone = "Gathered from beasts level 51-60. Most common: Winterspring & Un'Goro Crater."
	elseif itemId == "15417" then --Devilsaur Leather
		sleatherZone = "Gathered from Devilsaur in Un'Goro Crater."
	elseif itemId == "15419" then --Warbear leather
		sleatherZone = "Gathered from Bears in: Winterspring & Blasted Lands."
	elseif itemId == "15415" then --Blue Dragonscale
		sleatherZone = "Gathered from Azurous in Winterspring."
	elseif itemId == "8154" then --Scorpid Scale
		sleatherZone = "Gathered from Scorpids in Tanaris."
	elseif itemId == "8165" then --Worn Dragonscale
		sleatherZone = "Gathered from dragonkin in Sunken Temple."
	elseif itemId == "8168" then --jet Black Feather
		sleatherZone = "Drop from Bonepicker Felfeeder in Blasted Lands."
	elseif itemId == "4304" then --Thick Leather
		sleatherZone = "Gathered from beasts level 45-50. Most common: Badlands & Burning Steppes."
	elseif itemId == "8169" then --Thick Leather
		sleatherZone = "Gathered from beasts level 40-60. Most common: Felwood & Eastern Plaguelands."
	elseif itemId == "8172" then --Cured Thick Hide
		sleatherZone = "Crafted by Leatherworkers using:\n1 Thick Hide\n1 Deeprock Salt"
	elseif itemId == "5785" then --Thick Murloc Scale
		sleatherZone = "Dropped by Murlocs. Most common in: Northern Stranglethorn & Wetlands."
	elseif itemId == "8167" then --Turtle Scale
		sleatherZone = "Gathered from Turtles. Most common in: The Hinterlands & Swamp of Sorrows."
	elseif itemId == "4234" then --Heavy Leather
		sleatherZone = "Gathered from levels 30-50 creatures."
	elseif itemId == "4235" then --Heavy Hide
		sleatherZone = "Gathered from levels 30-50 creatures."
	elseif itemId == "4236" then --Cured Heavy Hide
		sleatherZone = "Created by Leatherworkers using:\n1 Heavy Hide\n3 Salt"
	elseif itemId == "4461" then --Raptor Hide
		sleatherZone = "Gathered from Raptors in: Northern Stranglethorn & Dustwallow Marsh"
	elseif itemId == "2319" then --Medium Leather
		sleatherZone = "Gathered from level 20-40 creatures."
	elseif itemId == "4232" then --Medium Hide
		sleatherZone = "Gathered from level 20-40 creatures."
	elseif itemId == "4233" then --Cured Medium Hide
		sleatherZone = "Created by Leatherworkers using:\n1 Medium Hide\n1 Salt"
	elseif itemId == "5784" then --Slimy Murloc Scale
		sleatherZone = "Dropped by low level Murlocs. Most common: Westfall & Blackfathom Deeps."
	elseif itemId == "5082" then --Thin Kodo Leather
		sleatherZone = "Dropped by Kodos. Found in: Mulgore & Northern Barrens."
	elseif itemId == "2934" then --Ruined Leather Scraps
		sleatherZone = "Gathered from level 1-10 creatures. Most common in starting zones."
	elseif itemId == "6470" then --Deviate scale
		sleatherZone = "Gathered from Deviate creatures. Found in: Wailing Caverns & Northern Barrens."
	elseif itemId == "6471" then --Perfect Deviate Scale
		sleatherZone = "Gathered from Deviate creatures. Found in: Wailing Caverns & Northern Barrens."
	elseif itemId == "7286" then --Black Whelp Scale
		sleatherZone = "Gathered from Ebon Whelps in Wetlands."
	elseif itemId == "7392" then --Green Whelp Scale
		sleatherZone = "Gathered from Noxious Whelps in Feralas."
	elseif itemId == "2318" then --Light Leather
		sleatherZone = "Gathered from level 10-20 creatures. Most common in starting zones."
	elseif itemId == "783" then --Light Hide
		sleatherZone = "Gathered from level 10-20 creatures. Most common in starting zones."
	elseif itemId == "4231" then --Cured Light Hide
		sleatherZone = "Crafted by Leatherworkers using:\n1 Light Hide\n1 Salt"
	elseif itemId == "4289" then --Cured Light Hide
		sleatherZone = "Sold by trade goods vendors."
	end
	
	return sleatherZone
end


namespace.leatherName = getLeatherZone