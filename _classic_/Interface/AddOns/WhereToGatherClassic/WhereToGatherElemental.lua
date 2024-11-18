local addonName, namespace = ...

local function getElementalZone(itemId)
	local sElementalZone = ""
	
	if itemId == "52329" then --Volatile Life
		sElementalZone = "Gathered while collecting\nHerbs by Herbalists"
	elseif itemId == "52325" then --Volatile Fire
		sElementalZone = "Gathered from Fire Elementals\nFished from fishing pools in lava"
	elseif itemId == "52328" then --Volatile Air
		sElementalZone = "Gathered from Air Elementals"
	elseif itemId == "52326" then --Volatile Water
		sElementalZone = "Gathered from Water Elementals\nFished from fishing pools in water"
	elseif itemId == "52327" then --Volatile Earth
		sElementalZone = "Gathered from Earth Elementals\nGathered while mining"
	end
	
	--WotLK
	if itemId == "35625" then --Eternal Life
		sElementalZone = "Created by combining 10 Crystallized Life\nCan also be transmuted by Alchemists\nfrom Eternal Shadow or Fire"
	elseif itemId == "37704" then --Crystallized Life
		sElementalZone = "Gathered from Plant Creatures and Herbs in Northrend\nRecommended zones:\nHowling Fjord or Wintergrasp"
	elseif itemId == "36860" then --Eternal Fire
		sElementalZone = "Created by combining 10 Crystallized Fire\nCan also be transmuted by Alchemists\nfrom Eternal Life or Water"
	elseif itemId == "37702" then --Crystallized Fire
		sElementalZone = "Gathered from Fire Revenants in Northrend\nEngineers can gather from Clouds\nRecommended zones:\nStorm Peaks or Wintergrasp"
	elseif itemId == "35622" then --Eternal Water
		sElementalZone = "Created by combining 10 Crystallized Water\nCan also be transmuted by Alchemists\nfrom Eternal Fire or Air"
	elseif itemId == "37705" then --Crystallized Water
		sElementalZone = "Gathered from Water Revenants or Fishing in Northrend\nEngineers can gather from Clouds\nRecommended zones:\nBorean Tundra or Wintergrasp"
	elseif itemId == "35627" then --Eternal Shadow
		sElementalZone = "Created by combining 10 Crystallized Shadow\nCan also be transmuted by Alchemists\nfrom Eternal Life or Earth"
	elseif itemId == "37703" then --Crystallized Shadow
		sElementalZone = "Gathered from Death Revenants or Mining Saronite in Northrend\nRecommended zones:\nDragonblight or Wintergrasp"
	elseif itemId == "35623" then --Eternal Air
		sElementalZone = "Created by combining 10 Crystallized Air\nCan also be transmuted by Alchemists\nfrom Eternal Earth or Water"
	elseif itemId == "37700" then --Crystallized Air
		sElementalZone = "Gathered from Air Revenants in Northrend\nEngineers can gather from Clouds\nRecommended zones:\nBorean Tundra or Zul'Drak"
	elseif itemId == "35624" then --Eternal Earth
		sElementalZone = "Created by combining 10 Crystallized Earth\nCan also be transmuted by Alchemists\nfrom Eternal Shadow or Air"
	elseif itemId == "37701" then --Crystallized Earth
		sElementalZone = "Gathered from Earth Revenants or Mining in Northrend\nRecommended zones:\nSholazar Basin or Wintergrasp"
	elseif itemId == "40248" then --Eternal Might
		sElementalZone = "Created by Alchemists using:\n1 Eternal Air\n1 Eternal Water\n1 Eternal Fire\n1 Eternal Earth"
	end
	
	--TBC
	if itemId == "23571" then --Primal Might
		sElementalZone = "Transmuted by Alchemists (350) using:\n1 Primal Earth\n1 Primal Water\n1 Primal Air\n1 Primal Fire\n1 Primal Mana\nCrafting has a daily cooldown."
	elseif itemId == "22574" then --Mote of Fire
		sElementalZone = "Gathered from Fire Elementals in Outland\nRecommended zones:\nNagrand & Shadowmoon Valley"
	elseif itemId == "21884" then --Primal Fire
		sElementalZone = "Created by combining 10 Mote of Fire\nCan also be transmuted by Alchemists\nfrom Primal Mana or Air"
	elseif itemId == "22576" then --Mote of Mana
		sElementalZone = "Gathered from Arcane Creatures.\nRecommended zone:\nNetherstorm"
	elseif itemId == "22457" then --Primal Mana
		sElementalZone = "Created by combining 10 Mote of Mana\nCan also be transmuted by Alchemists\nfrom Primal Fire"
	elseif itemId == "22578" then --Mote of Water
		sElementalZone = "Gathered from Water Elementals in Outland\nRecommended zone:\nNagrand"
	elseif itemId == "21885" then --Primal Water
		sElementalZone = "Created by combining 10 Mote of Water\nCan also be transmuted by Alchemists\nfrom Primal Earth or Shadow"
	elseif itemId == "22572" then --Mote of Air
		sElementalZone = "Gathered from Air Elementals in Outland\nRecommended zone:\nNagrand"
	elseif itemId == "22451" then --Primal Air
		sElementalZone = "Created by combining 10 Mote of Air\nCan also be transmuted by Alchemists\nfrom Primal Water"
	elseif itemId == "22577" then --Mote of Shadow
		sElementalZone = "Gathered from Void Creatures in Outland\nRecommended zone:\nHellfire Peninsula"
	elseif itemId == "22456" then --Primal Shadow
		sElementalZone = "Created by combining 10 Mote of Shadow\nCan also be transmuted by Alchemists\nfrom Primal Water"
	elseif itemId == "22575" then --Mote of Life
		sElementalZone = "Gathered from Plant Creatures in Outland\nRecommended zone:\nZangarmarsh"
	elseif itemId == "21886" then --Primal Life
		sElementalZone = "Created by combining 10 Mote of Life\nCan also be transmuted by Alchemists\nfrom Primal Earth"
	elseif itemId == "22573" then --Mote of Earth
		sElementalZone = "Gathered from Earth Elementals in Outland\nRecommended zone:\nNagrand"
	elseif itemId == "22452" then --Primal Earth
		sElementalZone = "Created by combining 10 Mote of Earth\nCan also be transmuted by Alchemists\nfrom Primal Life or Fire"
	elseif itemId == "30183" then --Nether Vortex
		sElementalZone = "Dropped in:\nSerpentshrine Cavern\nTempest Keep\nCan be purchased with 15 Badge of Justice"
	end
	
	--Vanilla
	if itemId == "7068" then --Elemental Fire
		sElementalZone = "Gathered from Fire Elementals.\nRecommended zone: Arathi Highlands."
	elseif itemId == "10286" then --Heart of the Wild
		sElementalZone = "Gathered from Bog Beasts.\nRecommended zone: Un'Goro Crater."
	elseif itemId == "7067" then --Elemental Earth
		sElementalZone = "Gathered from Earth Elementals.\nRecommended zone: Badlands."
	elseif itemId == "7070" then --Elemental Water
		sElementalZone = "Gathered from Water Elementals.\nRecommended zone: Arathi Highlands."
	elseif itemId == "7080" then --Essence of Water
		sElementalZone = "Gathered from elite Water Elementals.\nRare Drop."
	elseif itemId == "7078" then --Essence of Fire
		sElementalZone = "Gathered from elite Fire Elementals.\nRare Drop."
	elseif itemId == "7069" then --Elemental Air
		sElementalZone = "Gathered from Air Elementals.\nRecommended zone: Arathi Highlands."
	elseif itemId == "7075" then --Core of Earth
		sElementalZone = "Gathered from Earth Elementals.\nRecommended zone: Badlands"
	elseif itemId == "7082" then --Essence of Air
		sElementalZone = "Gathered from elite Air Elementals.\nRare Drop."
	elseif itemId == "7972" then --Ichor of Undeath
		sElementalZone = "Gathered from Undead.\nRecommended zone: Western Plaguelands"
	elseif itemId == "7079" then --Globe of Water
		sElementalZone = "Gathered from Water Elementals.\nRecommended zone: Feralas"
	elseif itemId == "12808" then --Essence of Undeath
		sElementalZone = "Gathered from elite Undead.\nRecommended zone: Stratholme."
	elseif itemId == "12803" then --Living Essence
		sElementalZone = "Gathered from Bog Beasts.\nRare Drop."
	elseif itemId == "7077" then --Heart of Fire
		sElementalZone = "Gathered from Fire Elementals.\nRecommended zone: Searing Gorge."
	elseif itemId == "7076" then --Essence of Earth
		sElementalZone = "Gathered from elite Earth Elementals.\nRare Drop"
	elseif itemId == "7081" then --Breath of Wind
		sElementalZone = "Gathered from Air Elementals."
	end
	
	return sElementalZone
end


namespace.elementalName = getElementalZone