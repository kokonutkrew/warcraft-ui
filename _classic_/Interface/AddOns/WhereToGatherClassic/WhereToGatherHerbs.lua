local addonName, namespace = ...

local function getHerbsZone(itemId)
	local sherbZone = ""
	
	--Cataclysm
	if itemId == "52988" then --Whiptail
		sherbZone = "Gathered in:\nUldum\nTol Barad"
	elseif itemId == "52986" then --Heartblossom
		sherbZone = "Gathered in:\nDeepholm"
	elseif itemId == "52985" then --Azshara's Veil
		sherbZone = "Gathered near sea water in:\nTwilight Highlands,\nUldum\nTol Barad"	
	elseif itemId == "52984" then --Stormvine
		sherbZone = "Gathered in:\nVashj'ir\nMount Hyjal"
	elseif itemId == "52983" then --Cinderbloom
		sherbZone = "Gathered in:\nDeepholm,\nTwilight Highlands\nMount Hyjal"
	elseif itemId == "52987" then --Twilight Jasmine
		sherbZone = "Gathered in:\nTwilight Highlands"
	end
	
	--WotLK
	if itemId == "36905" then --Lichbloom
		sherbZone = "Gathered in:\nStorm Peaks\nIcecrown"
	elseif itemId == "36906" then --Icethorn
		sherbZone = "Gathered in:\nStorm Peaks\nIcecrown"
	elseif itemId == "36908" then --Frost Lotus
		sherbZone = "Gathered across Northrend"
	elseif itemId == "36903" then --Adder's Tongue
		sherbZone = "Gathered in:\nSholazar Basin"
	elseif itemId == "39970" then --Fire Leaf
		sherbZone = "Gathered in:\nBorean Tundra"
	elseif itemId == "36904" then --Tiger Lily
		sherbZone = "Gathered in:\nSholazar Basin\nGrizzly Hills\nHowling Fjord"
	elseif itemId == "36907" then --Talandra's Rose
		sherbZone = "Gathered in:\nZul'Drak"
	elseif itemId == "36901" then --Goldclover
		sherbZone = "Gathered in:\nGrizzly Hills\nHowling Fjord\nBorean Tundra"
	elseif itemId == "37921" then --Deadnettle
		sherbZone = "Gathered whilst picking:\nTiger Lily\nGoldclover\nTalandra's Rose"
	end
	
	--TBC
	if itemId == "22794" then --Fel Lotus
		sherbZone = "Gathered whilst picking the herbs of Outland"
	elseif itemId == "22791" then --Netherbloom
		sherbZone = "Gathered in:\nNetherstorm"
	elseif itemId == "22792" then --Nightmare Vine
		sherbZone = "Gathered in:\nShadowmoon Valley"
	elseif itemId == "22793" then --Mana Thistle
		sherbZone = "Gathered in:\nTerokkar Forest\nIsle of Quel'Danas"
	elseif itemId == "22790" then --Ancient Lichen
		sherbZone = "Gathered in:\nAuchindoun\nCoilfang Reservoir instances"
	elseif itemId == "22788" then --Flame Cap
		sherbZone = "Gathered in:\nZangarmarsh"
	elseif itemId == "22787" then --Ragveil
		sherbZone = "Gathered in:\nZangarmarsh"
	elseif itemId == "22785" then --Felweed
		sherbZone = "Gathered in:\nNagrand\nHellfire Peninsula"
	elseif itemId == "22789" then --Terocone
		sherbZone = "Gathered in:\nTerrokar Forest\nShadowmoon Valley"
	elseif itemId == "22786" then --Dreaming Glory
		sherbZone = "Gathered in:\nNagrand\nTerokkar Forest\nBlade's Edge Mountains"
	end
	
	--Vanilla
	if itemId == "13467" then --Icecap
		sherbZone = "Gathered in:\nWinterspring"
	elseif itemId == "13466" then --Sorrowmoss
		sherbZone = "Gathered in:\nSwamp of Sorrows"
	elseif itemId == "13465" then --Silversage
		sherbZone = "Gathered in:\nWinterspring"
	elseif itemId == "13468" then --Black Lotus
		sherbZone = "Gathered in:\nEastern Plaguelands\nBlasted Lands\nSilithus"
	elseif itemId == "13463" then --Dreamfoil
		sherbZone = "Gathered in:\nBlasted Lands\nSilithus\nFelwood"
	elseif itemId == "13464" then --Golden Sansam
		sherbZone = "Gathered in:\nSwamp of Sorrows\nFelwood"
	elseif itemId == "8846" then --Gromsblood
		sherbZone = "Gathered in:\nFelwood"
	elseif itemId == "8845" then --Ghost Mushroom
		sherbZone = "Gathered in:\nUn'Goro Crater\nZangarmarsh"
	elseif itemId == "8839" then --Blindweed
		sherbZone = "Gathered in:\nFeralas"
	elseif itemId == "8838" then --Sungrass
		sherbZone = "Gathered in:\nEastern Plaguelands\nThousand Needles\nBadlands"
	elseif itemId == "8836" then --Arthas' Tear
		sherbZone = "Gathered in:\nWestern Plaguelands\nEastern Plaguelands"
	elseif itemId == "8831" then --Purple Lotus
		sherbZone = "Gathered in:\nFelwood"
	elseif itemId == "4625" then --Firebloom
		sherbZone = "Gathered in:\nTanaris\nSearing Gorge\nBurning Steppes"
	elseif itemId == "8153" then --Wildvine
		sherbZone = "Gathered in:\nFelwood"
	elseif itemId == "3819" then --Dragon's Teeth
		sherbZone = "Gathered in:\nBadlands"
	elseif itemId == "3358" then --Khadgar's Whisker
		sherbZone = "Gathered in:\nWestern Plaguelands\nEastern Plaguelands\nFeralas"
	elseif itemId == "3821" then --Goldthorn
		sherbZone = "Gathered in:\nArathi Highlands\nThe Hinterlands\nDustwallow Marsh"
	elseif itemId == "3818" then --Fadeleaf
		sherbZone = "Gathered in:\nFeralas\nThe Cape of Stranglethorn"
	elseif itemId == "3357" then --Liferoot
		sherbZone = "Gathered in:\nWestern Plaguelands\nEastern Plaguelands"
	elseif itemId == "3356" then --Kingsblood
		sherbZone = "Gathered in:\nNorthern Stranglethorn\nWetlands\nWestern Plaguelands"
	elseif itemId == "3369" then --Grave Moss
		sherbZone = "Gathered in:\nDuskwood\nRazorfen Downs"
	elseif itemId == "2453" then --Bruiseweed
		sherbZone = "Gathered in:\nNorthern Stranglethorn\nDuskwood\nRedridge Mountains"
	elseif itemId == "3820" then --Stranglekelp
		sherbZone = "Gathered in:\nStranglethorn Vale\nWetlands\nTanaris"
	elseif itemId == "2450" then --Briarthorn
		sherbZone = "Gathered in:\nHillsbrad Foothills\nDuskwood\nAzshara"
	elseif itemId == "2452" then --Swiftthistle
		sherbZone = "Gathered whilst picking:\nBriarthorn\nMageroyal"
	elseif itemId == "785" then --Mageroyal
		sherbZone = "Gathered in:\nHillsbrad Foothills\nDarkshore\nSilverpine"
	elseif itemId == "2449" then --Earthroot
		sherbZone = "Gathered in:\nStarting Zones"
	elseif itemId == "765" then --Silverleaf
		sherbZone = "Gathered in:\nStarting Zones"
	elseif itemId == "2447" then --Peacebloom
		sherbZone = "Gathered in:\nStarting Zones"
	elseif itemId == "3355" then --Wild Steelbloom
		sherbZone = "Gathered in:\nStonetalon Mountains\nNorthern Stranglethorn\nAshenvale"
	end
	return sherbZone
end

namespace.herbsName = getHerbsZone