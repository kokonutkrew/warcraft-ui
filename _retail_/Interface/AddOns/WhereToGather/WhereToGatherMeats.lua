local addonName, namespace = ...

local function getMeatZone(itemId)
	local smeatZone = ""
	
	--Shadowlands
	if itemId == "172053"  --Tenebrous Ribs
	or itemId == "179315"  --Shadowy Shank
	or itemId == "172052" then --Aethereal Meat
		smeatZone = "Gathered from all beasts across The Shadowlands."
	elseif itemId == "179314" then --Creeping Crawler Meat
		smeatZone = "Gathered from beasts in:\n - Ardenweald\n - Maldraxxus\n - Revendreth"
	elseif itemId == "172054" then --Raw Seraphic Wing
		smeatZone = "Gathered from beasts in:\n - Bastion\n - Maldraxxus"
	elseif itemId == "172055" then --Phantasmal Haunch
		smeatZone = "Gathered from beasts in:\n - Ardenweald\n - Maldraxxus"
	--Battle for Azeroth
	elseif itemId == "154898" then --Meaty Haunch
		smeatZone = "Gathered from all beasts across Zandalar & Kul'Tiras.\nCan be looted or skinned."
	elseif itemId == "152631" then --Briny Flesh
		smeatZone = "Gathered from beasts found near or in the Ocean. Can be looted or skinned.\nRecommended Zone: Tiragarde Sound"
	elseif itemId == "154897" then --Stringy Loins
		smeatZone = "Gathered from beasts across Zandalar & Kul'Tiras. Can be looted or skinned.\nMost common from flying creatures. Recommended Zone: Drustvar or Vol'dun"
	elseif itemId == "154899" then --Thick Paleo Steak
		smeatZone = "Gathered from larger beasts across Zandalar & Kul'Tiras. Can be looted or skinned.\nRecommended Zone: Zuldazar"
	elseif itemId == "163782" then --Cursed Haunch
		smeatZone = "Gathered from hexed beasts in Drustvar."
	elseif itemId == "168303" --Rubbery Flank
	or itemId == "168645" then--Moist Fillet
		smeatZone = "Gathered from beasts across Nazjatar."
	end
	
	return smeatZone
end


namespace.meatName = getMeatZone