local addonName, namespace = ...

local function getInscriptionZone(itemId)
	local sInscripZone = ""
	--Shadowlands
	if itemId == "175970" then --Tranquil Ink
		sInscripZone = "Crafted by Scribes using:\n - 1 Tranquil Pigment\n - 1 Aerated Water \n - 1 Rune Etched Vial"
	elseif itemId == "175788" then --Tranquil Pigment
		sInscripZone = "Gathered by milling all herbs from The Shadowlands."
	elseif itemId == "173059" then --Luminous Ink
		sInscripZone = "Crafted by Scribes using:\n - 1 Luminous Pigment\n - 1 Aerated Water \n - 1 Rune Etched Vial"
	elseif itemId == "173057" then --Luminous Pigment
		sInscripZone = "Gathered by milling all herbs from The Shadowlands."
	elseif itemId == "173058" then --Umbral Ink
		sInscripZone = "Crafted by Scribes using:\n - 1 Umbral Pigment\n - 1 Aerated Water \n - 1 Rune Etched Vial"
	elseif itemId == "173056" then --Umbral Pigment
		sInscripZone = "Gathered by milling all herbs from The Shadowlands."
	--Battle for Azeroth
	elseif itemId == "158187" then --Ultramarine Ink
		sInscripZone = "Crafted by Scribes using:\n1 Distilled Water\n1 Ultramarine Pigment"
	elseif itemId == "153635" then --Ultramarine Pigment
		sInscripZone = "Gathered by milling the herbs of Zandalar & Kul'Tiras."
	elseif itemId == "158188" then --Crimson Ink
		sInscripZone = "Crafted by Scribes using:\n1 Distilled Water\n1 Crimson Pigment"
	elseif itemId == "153636" then --Crimson Pigment
		sInscripZone = "Gathered by milling the herbs of Zandalar & Kul'Tiras."
	elseif itemId == "158189" then --Viridescent Ink
		sInscripZone = "Crafted by Scribes using:\n1 Distilled Water\n1 Acacia Powder\n1 Viridescent Pigment"
	elseif itemId == "153669" then --Viridescent Pigment
		sInscripZone = "Gathered rarely by milling the herbs of Zandalar & Kul'Tiras."
	elseif itemId == "168663" then --Maroon Ink
		sInscripZone = "Crafted by Scribes using:\n1 Distilled Water\n1 Maroon Pigment"
	elseif itemId == "168662" then --Maroon Pigment
		sInscripZone = "Gathered by milling Zin'anthid."
	--Legion
	elseif itemId == "129034" then --Sallow Pigment
		sInscripZone = "Gathered by milling the herbs of The Broken Isles."
	elseif itemId == "129032" then --Roseate Pigment
		sInscripZone = "Gathered by milling the herbs of The Broken Isles."
	end
	
	return sInscripZone
end


namespace.inscriptionName = getInscriptionZone