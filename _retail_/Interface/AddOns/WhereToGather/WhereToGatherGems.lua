local addonName, namespace = ...

local function getGemZone(itemId)
	local sgemZone = ""
	
	--Shadowlands
	if itemId == "173108" --Oriblase
	or itemId == "173109" --Angerseye
	or itemId == "173110" then--Umbryl
		sgemZone = "Gathered from prospecting Shadowlands ore."
	elseif itemId == "173170" then --Essence of Rebirth
		sgemZone = "Gathered from prospecting Shadowlands ore.\nMost common in Phaedrum Ore."
	elseif itemId == "173171" then --Essence of Torment
		sgemZone = "Gathered from prospecting Shadowlands ore.\nMost common in Sinvyr Ore."
	elseif itemId == "173172" then --Essence of Servitude
		sgemZone = "Gathered from prospecting Shadowlands ore.\nMost common in Oxxein Ore."
	elseif itemId == "173173" then --Essence of Valor
		sgemZone = "Gathered from prospecting Shadowlands ore.\nMost common in Solenium Ore."
	elseif itemId == "173168" then --Laestrite Setting
		sgemZone = "Sold by Shadowlands Jewelcrafting vendors."
	--Battle for Azeroth
	elseif itemid == "168188" --Sage Agate
	or itemId == "168189" --Dark Opal
	or itemId == "168190" --Lava Lazuli
	or itemId == "168191" --Sea Currant
	or itemId == "168192" --Sand Spinel
	or itemId == "168193" --Azsharine
	or itemId == "168635" then --Leviathan's Eye
		sgemZone = "Gathered from prospecting:\n- Osmenite Ore"
	elseif itemId == "153705" --Kyanite
	or itemId == "153704" --Viridium
	or itemId == "153703" --Solstone
	or itemId == "153700" --Golden Beryl
	or itemId == "153702" --Kubline
	or itemId == "153701" --Rubelite
	or itemId == "154125" --Rotal Quartz
	or itemId == "154124" --Laribole
	or itemId == "154123" --Amerblaze
	or itemId == "154122" --Tidal Amethyst
	or itemId == "154121" --Scarlet Diamond
	or itemId == "154120" --Owlseye
	or itemId == "153706"	then --Kraken's Eye
		sgemZone = "Gathered from prospecting:\n- Monelite Ore\n- Storm Silver Ore\n- Platinum Ore"
	elseif itemId == "130173" --Deep Amber
	or itemId == "130174" --Azsunite
	or itemId == "130175" --Chaotic Spinel
	or itemId == "130176" --Skystone
	or itemId == "130177" --Queen's Opal
	--Rares
	or itemId == "130178" --Furystone
	or itemId == "130180" --Dawnlight
	or itemId == "130181" --Pandemonite
	or itemId == "130182" --Maelstrom Sapphire
	or itemId == "130183" --Shadowruby
	or itemId == "130179" then --Eye of Prophecy
		sgemZone = "Gathered from prospecting:\n- Leystone Ore\n- Felslate"
	--Epic
	elseif itemId == "151718" --Argulite
	or itemId == "151719" --Lightsphene
	or itemId == "151579" --Labradorite
	or itemId == "151722" --Florid Malachite
	or itemId == "151721" --Hesselian 
	or itemId == "151720" then --Chemirine
		sgemZone = "Gathered from prospecting:\n- Empyrium"
	end
	
	return sgemZone
end


namespace.gemName = getGemZone