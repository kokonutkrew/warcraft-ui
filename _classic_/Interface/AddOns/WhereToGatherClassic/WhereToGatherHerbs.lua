local addonName, namespace = ...

local function getHerbsZone(itemId)
	local sherbZone = ""
	
	--Vanilla
	if itemId == "13467" then --Icecap
		sherbZone = "Gathered in: Winterspring."
	elseif itemId == "13466" then --Plaguebloom
		sherbZone = "Gathered in:\nFelwood\nEastern & Western Plaguelands"
	elseif itemId == "13465" then --Mountain Silversage
		sherbZone = "Gathered in:\nWinterspring\nEastern Plaguelands"
	elseif itemId == "13465" then --Silversage
		sherbZone = "Gathered in: Winterspring."
	elseif itemId == "13468" then --Black Lotus
		sherbZone = "Gathered in:\nWinterspring\nEastern Plaguelands\nBlasted Lands\nSilithus"
	elseif itemId == "13463" then --Dreamfoil
		sherbZone = "Gathered in:\nEastern Plaguelands\nAzshara\nUn'Goro"
	elseif itemId == "13464" then --Golden Sansam
		sherbZone = "Gathered in:\nAzshara\nUn'Goro Crater"
	elseif itemId == "8846" then --Gromsblood
		sherbZone = "Gathered in:\nFelwood\nBlasted Lands\nDesolace"
	elseif itemId == "8845" then --Ghost Mushroom
		sherbZone = "Gathered in:\nHinterlands\nMaraudon"
	elseif itemId == "8839" then --Blindweed
		sherbZone = "Gathered in:\nSwamp of Sorrows"
	elseif itemId == "8838" then --Sungrass
		sherbZone = "Gathered in:\nFeralas\nAzshara\nHinterlands"
	elseif itemId == "8836" then --Arthas' Tears
		sherbZone = "Gathered in:\nEastern & Western Plaguelands"
	elseif itemId == "8831" then --Purple Lotus
		sherbZone = "Gathered in:\nAzshara\nHinterlands\nFeralas"
	elseif itemId == "4625" then --Firebloom
		sherbZone = "Gathered in:\nTanaris\nSearing Gorge"
	elseif itemId == "8153" then --Wildvine
		sherbZone = "Gathered whilst picking:\nPurple Lotus"
	elseif itemId == "3358" then --Khadgar's Whisker
		sherbZone = "Gathered in:\nFeralas\nStranglethorn Vale"
	elseif itemId == "3821" then --Goldthorn
		sherbZone = "Gathered in:\nStranglethorn\nFeralas\nArathi Highlands"
	elseif itemId == "3818" then --Fadeleaf
		sherbZone = "Gathered in:\nDustwallow Marsh\nStranglethorn Vale"
	elseif itemId == "3357" then --Liferoot
		sherbZone = "Gathered in:\nStranglethorn Vale\nDustwallow Marsh\nWetlands"
	elseif itemId == "3356" then --Kingsblood
		sherbZone = "Gathered in:\nStranglethorn Vale\nWetlands\nStonetalon Mountains"
	elseif itemId == "3369" then --Grave Moss
		sherbZone = "Gathered in:\nDesolace\nDuskwood"
	elseif itemId == "2453" then --Bruiseweed
		sherbZone = "Gathered in:\nThe Barrens\nStonetalon Mountains\nHillsbrad"
	elseif itemId == "3820" then --Stranglekelp
		sherbZone = "Gathered in:\nStranglethorn Vale\nWetlands\nAshenvale"
	elseif itemId == "2450" then --Briarthorn
		sherbZone = "Gathered in:\nThe Barrens\nDuskwood\nSilverpine Forest"
	elseif itemId == "2452" then --Swiftthistle
		sherbZone = "Gathered whilst picking:\nBriarthorn\nMageroyal"
	elseif itemId == "785" then --Mageroyal
		sherbZone = "Gathered in:\nThe Barrens\nWestfall\nSilverpine Forest"
	elseif itemId == "2449" then --Earthroot
		sherbZone = "Gathered in:\nTeldrassil\nTirisfal Glades\nDun Morogh"
	elseif itemId == "765" then --Silverleaf
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "2447" then --Peacebloom
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "3355" then --Wild Steelbloom
		sherbZone = "Gathered in:\nStonetalon Mountains\nStranglethorn Vale\nArathi Highlands"
	elseif itemId == "3819" then --Wintersbite
		sherbZone = "Gathered in: Alterac Mountains"
	end
	return sherbZone
end

namespace.herbsName = getHerbsZone