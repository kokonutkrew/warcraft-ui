local addonName, namespace = ...

local function getGemZone(itemId)
	local sGemZone = ""
	
	--Cata
	if itemId == "52182" --Jasper
	or itemId == "52177" --Carnelian
	or itemId == "52179" --Alicite
	or itemId == "52181" --Hessonite
	or itemId == "52180" --Nightstone
	or itemId == "52178" then --Zephyrite
		sGemZone = "Gathered by prospecting Cataclysm ores.\nCan also be gathered while mining"
	elseif itemId == "52190" then --Interno Ruby
		sGemZone = "Gathered by prospecting Cataclysm ores.\nAlchemists can transmute using:\n3 Carnelian\n3 Heartblossom"
	elseif itemId == "52192" then --Dream Emerald
		sGemZone = "Gathered by prospecting Cataclysm ores.\nAlchemists can transmute using:\n3 Jasper\n3 Stormvine"
	elseif itemId == "52191" then--Ocean Sapphire
		sGemZone = "Gathered by prospecting Cataclysm ores.\nAlchemists can transmute using:\n3 Zephyrite\n 3 Azshara's Veil"
	elseif itemId == "52195" then--Amber Jewel
		sGemZone = "Gathered by prospecting Cataclysm ores.\nAlchemists can transmute using:\n3 Alicite\n3 Whiptail"
	elseif itemId == "52194" then--Demonseye
		sGemZone = "Gathered by prospecting Cataclysm ores.\nAlchemists can transmute using:\n3 Nightstone\n3 Twilight Jasmine"
	elseif itemId == "52193" then --Ember Topaz
		sGemZone = "Gathered by prospecting Cataclysm ores.\nAlchemists can transmute using:\n3 Hessonite\n3 Cinderbloom"
	elseif itemId == "71806" --Lightstone
	or itemId == "71808" --Lava Coral
	or itemId == "71807" --Deepholm Iolite
	or itemId == "71809" --Shadow Spinel
	or itemId == "71810" --Elven Peridot
	or itemId == "71805" then --Queens Garnet
		sGemZone = "Gathered from Crystaline Geode, purchased with\nMote of Darkness in Dragon Soul raid"
	end
	
	--WotLK
	if itemId == "36917" --Bloodstone
	or itemId == "36923" --Chalcedony
	or itemId == "36932" --Dark Jade
	or itemId == "36929" --Huge Citrine
	or itemId == "36926" --Shadow Crystal
	or itemId == "36920" then--Sun Crystal
		sGemZone = "Gathered by prospecting Northrend ores.\nCan also be gathered while mining."
	elseif itemId == "36921" --Autumn's Glow
	or itemId == "36933" --Forest Emerald
	or itemId == "36930" --Monarch Topaz
	or itemId == "36918" --Scarlet Ruby
	or itemId == "36924" --Sky Sapphire
	or itemId == "36927" then--Twilight Opal
		sGemZone = "Gathered by prospecting Northrend ores.\nCan also be gathered while mining."
	elseif itemId == "36931" then --Ametrine
		sGemZone = "Gathered by prospecting Titanium Ore.\nPurchasable with Emblems of Heroism or Honor\nAlchemists can transmute using:\n1 Monarch Topaz\n1 Eternal Shadow"
	elseif itemId == "36919" then --Cardinal Ruby
		sGemZone = "Gathered by prospecting Titanium Ore.\nPurchasable with Emblems of Heroism or Honor\nAlchemists can transmute using:\n1 Scarlet Ruby\n1 Eternal Fire"
	elseif itemId == "36928" then --Dreadstone
		sGemZone = "Gathered by prospecting Titanium Ore.\nPurchasable with Emblems of Heroism or Honor\nAlchemists can transmute using:\n1 Twilight Opal\n1 Eternal Shadow"
	elseif itemId == "36934" then --Eye of Zul
		sGemZone = "Gathered by prospecting Titanium Ore.\nPurchasable with Emblems of Heroism or Honor\nAlchemists can transmute using:\n3 Forest Emerald"
	elseif itemId == "36922" then --King's Amber
		sGemZone = "Gathered by prospecting Titanium Ore.\nPurchasable with Emblems of Heroism or Honor\nAlchemists can transmute using:\n1 Autumn's Glow\n1 Eternal Life"
	elseif itemId == "36925" then--
		sGemZone = "Gathered by prospecting Titanium Ore.\nPurchasable with Emblems of Heroism or Honor\nAlchemists can transmute using:\n1 Sky Sapphire\n1 Eternal Air"
	end
	
	--TBC
	if itemId == "23107" --Shadow Draenite
	or itemId == "23117" --Azure Moonstone
	or itemId == "23077" --Blood garnet
	or itemId == "23079" --Deep peridot
	or itemId == "21929" --Flame Spessarite
	or itemId == "23112" then--Golden Draenite
		sGemZone = "Gathered by prospecting Outland ores.\nCan also be gathered while mining."
	elseif itemId == "31079" then--Mecurial Adamantite
		sGemZone = "Crafted by Jewelcrafters using:\n4 Adamantite Powder\n1 Primal Earth"
	elseif itemId == "23438" --Star of Elune
	or itemId == "23440" --Dawn Stone
	or itemId == "23437" --Talasite
	or itemId == "23436" --Living Ruby
	or itemId == "23441" --Nightseye
	or itemId == "23439" then--Noble Topaz
		sGemZone = "Gathered by prospecting Outland ores.\nSlightly higher chance from Adamantite Ore.\nCan also be gathered while mining."
	elseif itemId == "24243" then --Adamantite Powder
		sGemZone = "Gathered when prospecting Adamantite Ore."
	end
		
	return sGemZone
end


namespace.gemName = getGemZone