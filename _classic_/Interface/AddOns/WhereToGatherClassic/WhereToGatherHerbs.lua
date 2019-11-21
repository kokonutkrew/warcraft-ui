local addonName, namespace = ...

local function getHerbsZone(itemId)
	local sherbZone = ""
	
	--Vanilla
	if itemId == "13467" then --Icecap
		sherbZone = "Gathered in: Winterspring."
	elseif itemId == "13466" then --Sorrowmoss
		sherbZone = "Gathered in: Swamp of Sorrows."
	elseif itemId == "13465" then --Silversage
		sherbZone = "Gathered in: Winterspring."
	elseif itemId == "13468" then --Black Lotus
		sherbZone = "Gathered in: Eastern Plaguelands,\nBlasted Lands & Silithus."
	elseif itemId == "13463" then --Dreamfoil
		sherbZone = "Gathered in: Blasted Lands,\nSilithus & Felwood."
	elseif itemId == "13464" then --Golden Sansam
		sherbZone = "Gathered in: Swamp of Sorrows\n& Felwood."
	elseif itemId == "8846" then --Gromsblood
		sherbZone = "Gathered in: Felwood."
	elseif itemId == "8845" then --Ghost Mushroom
		sherbZone = "Gathered in: Un'Goro Crater\n& Zangarmarsh."
	elseif itemId == "8839" then --Blindweed
		sherbZone = "Gathered in: Feralas."
	elseif itemId == "8838" then --Sungrass
		sherbZone = "Gathered in: Eastern Plaguelands,\nThousand Needles & Badlands."
	elseif itemId == "8836" then --Arthas' Tear
		sherbZone = "Gathered in: Western Plaguelands\n& Eastern Plaguelands."
	elseif itemId == "8831" then --Purple Lotus
		sherbZone = "Gathered in: Felwood."
	elseif itemId == "4625" then --Firebloom
		sherbZone = "Gathered in: Tanaris,\nSearing Gorge & Burning Steppes."
	elseif itemId == "8153" then --Wildvine
		sherbZone = "Gathered in: Felwood."
	elseif itemId == "3819" then --Dragon's Teeth
		sherbZone = "Gathered in: Badlands."
	elseif itemId == "3358" then --Khadgar's Whisker
		sherbZone = "Gathered in: Western Plaguelands,\nEastern Plaguelands & Feralas."
	elseif itemId == "3821" then --Goldthorn
		sherbZone = "Gathered in: Arathi Highlands,\nThe Hinterlands & Dustwallow Marsh."
	elseif itemId == "3818" then --Fadeleaf
		sherbZone = "Gathered in: Feralas\n& The Cape of Stranglethorn."
	elseif itemId == "3357" then --Liferoot
		sherbZone = "Gathered in: Western Plaguelands\n& Eastern Plaguelands."
	elseif itemId == "3356" then --Kingsblood
		sherbZone = "Gathered in: Northern Stranglethorn,\nWetlands & Western Plaguelands."
	elseif itemId == "3369" then --Grave Moss
		sherbZone = "Gathered in: Duskwood & Razorfen Downs."
	elseif itemId == "2453" then --Bruiseweed
		sherbZone = "Gathered in: Northern Stranglethorn,\nDuskwood & Redridge Mountains."
	elseif itemId == "3820" then --Stranglekelp
		sherbZone = "Gathered in: Stranglethorn Vale,\nWetlands & Tanaris."
	elseif itemId == "2450" then --Briarthorn
		sherbZone = "Gathered in: Hillsbrad Foothills,\nDuskwood & Azshara."
	elseif itemId == "2452" then --Swiftthistle
		sherbZone = "Gathered whilst picking: Briarthorn & Mageroyal."
	elseif itemId == "785" then --Mageroyal
		sherbZone = "Gathered in: Hillsbrad Foothills,\nDarkshore & Silverpine."
	elseif itemId == "2449" then --Earthroot
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "765" then --Silverleaf
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "2447" then --Peacebloom
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "3355" then --Wild Steelbloom
		sherbZone = "Gathered in: Stonetalon Mountains,\nNorthern Stranglethorn & Ashenvale."
	end
	return sherbZone
end

namespace.herbsName = getHerbsZone