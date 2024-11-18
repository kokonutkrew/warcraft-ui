local addonName, namespace = ...

local function getInscriptionZone(itemId)
	local sInscripZone = ""
	
	--Cataclysm
	if itemId == "86004" then --Blackfallow Ink
		sInscripZone = "Crafted by Scribes using:\n2 Ashen Pigment"
	elseif itemId == "86005" then --inferno Ink
		sInscripZone = "Crafted by Scribes using:\n2 Burning Embers"
	end
	
	--WotLK
	if itemId == "43126" then --Ink of the Sea
		sInscripZone = "Crafted by Scribes using:\n2 Azure Pigment"
	elseif itemId == "43127" then --Snowfall Ink
		sInscripZone = "Crafted by Scribes using:\n2 Icy Pigment"
	end
	
	--TBC
	if itemId == "43124" then --Ethereal Ink
		sInscripZone = "Crafted by Scribes using:\n2 Nether Pigment"
	elseif itemId == "43125" then --Darkfire Ink
		sInscripZone = "Crafted by Scribes using:\n1 Ebon Pigment"
	end
	
	--Vanilla
	if itemId == "39469" then --Moonglow Ink
		sInscripZone = "Crafted by Scribes (35) using:\n2 Alabaster Pigment"
	elseif itemId == "37101" then --Ivory Ink
		sInscripZone = "Crafted by Scribes using:\n1 Alabaster Pigment"
	elseif itemId == "39774" then --Midnight Ink
		sInscripZone = "Crafted by Scribes using:\n2 Dusky Pigment"
	elseif itemId == "43116" then --Lion's Ink
		sInscripZone = "Crafted by Scribes using:\n2 Golden Pigment"
	elseif itemId == "43117" then --Dawnstar Ink
		sInscripZone = "Crafted by Scribes using:\n1 Burnt Pigment"
	elseif itemId == "43118" then --Jadefire Ink
		sInscripZone = "Crafted by Scribes using:\n2 Emerald Pigment"
	elseif itemId == "43119" then --Royal Ink
		sInscripZone = "Crafted by Scribes using:\n1 Indigo Pigment"
	elseif itemId == "43120" then --Celestial Ink
		sInscripZone = "Crafted by Scribes using:\n2 Violet Pigment"
	elseif itemId == "43121" then --Fiery Ink
		sInscripZone = "Crafted by Scribes using:\n1 Ruby Pigment"
	elseif itemId == "43122" then --Shimmering Ink
		sInscripZone = "Crafted by Scribes using:\n2 Silvery Pigment"
	elseif itemId == "43123" then --Ink of the Sky
		sInscripZone = "Crafted by Scribes using:\n1 Sapphire Pigment"
	end
	
	return sInscripZone
end


namespace.inscriptionName = getInscriptionZone