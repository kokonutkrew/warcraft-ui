local addonName, namespace = ...

local function getHerbsZone(itemId)
	local sherbZone = ""
	
	if itemId == "170554" then --Vigil's Torch
		sherbZone = "Gathered in: Ardenweald."
	elseif itemId == "168586" then --Rising Glory
		sherbZone = "Gathered in: Bastion."
	elseif itemId == "168589" then --Marrowroot
		sherbZone = "Gathered in: Maldraxxus."
	elseif itemId == "168583" then --Widowbloom
		sherbZone = "Gathered in: Revendreth."
	elseif itemId == "169701" then --Death Blossom
		sherbZone = "Gathered across The Shadowlands, except The Maw."
	elseif itemId == "171315" then --Nightshade
		sherbZone = "Gathered across The Shadowlands."
	--Battle for Azeroth Herbs
	elseif itemId == "152510" then --Anchor Weed
		sherbZone = "Gathered near the rivers of Zandalar & Kul'Tiras. Rare."
	elseif itemId == "152505" then --Riverbud
		sherbZone = "Gathered near the rivers of Zandalar & Kul'Tiras."
	elseif itemId == "152509" then --Siren's Pollen
		sherbZone = "Gathered on the trees of Zandalar & Kul'Tiras."
	elseif itemId == "152507" then --Akunda's Bite
		sherbZone = "Gathered in: Vol'dun."
	elseif itemId == "152508" then --Winter's Kiss
		sherbZone = "Gathered in snowy areas of Zandalar & Kul'Tiras."
	elseif itemId == "152511" then --Sea Stalk
		sherbZone = "Gathered along the coasts of Zandalar & Kul'Tiras."
	elseif itemId == "152506" then -- Star Moss
		sherbZone = "Gathered on the walls of structures of Zandalar & Kul'Tiras."
	elseif itemId == "168487" then --Zinanthid
		sherbZone = "Gathered across Nazjatar."
	--Legion Herbs
	elseif itemId == "124101" then --Aethril
		sherbZone = "Gathered in: Azsuna."
	elseif itemId == "124102" then --Dreamleaf
		sherbZone = "Gathered in: Val'sharah."
	elseif itemId == "124103" then --Foxflower
		sherbZone = "Gathered in: Highmountain."
	elseif itemId == "124104" then --Fjarnskaggl
		sherbZone = "Gathered in: Stormheim."
	elseif itemId == "124105" then --Starlight Rose
		sherbZone = "Gathered in: Suramar."
	elseif itemId == "124106" then --Felwort
		sherbZone = "Gathered from a world quest on The Broken Isles."
	elseif itemId == "151565" then --Astral Glory
		sherbZone = "Gathered across Argus."
	elseif itemId == "128304" then --Yseralline Seed
		sherbZone = "Gathered when picking the herbs of The Broken Isles"
	--Warlords of Draenor
	elseif itemId == "109126" then --Gorgrond Flytrap
		sherbZone = "Gathered in: Gorgrond, Spires of Arak & Garrisons."
	elseif itemId == "109127" then --Starflower
		sherbZone = "Gathered in: Shadowmoon Valley & Garrisons."
	elseif itemId == "109128" then --Nagrand Arrowbloom
		sherbZone = "Gathered in: Nagrand, Spires of Arak & Garrisons."
	elseif itemId == "109129" then --Talador Orchid
		sherbZone = "Gathered in: Talador, Spires of Arak & Garrisons."
	elseif itemId == "109124" then --Frostweed
		sherbZone = "Gathered in: Frostfire Ridge, Shadowmoon Valley & Garrisons."
	elseif itemId == "109125" then --Fireweed
		sherbZone = "Gathered in: Frostfire Ridge & Garrisons."
	elseif itemId == "116053" then --Draenic Seeds
		sherbZone = "Gathered when picking the herbs of Draenor."
	--Mists of Pandaria
	elseif itemId == "72238" then --Golden Lotus
		sherbZone = "Gathered across Pandaria."
	elseif itemId == "79011" then --Fools's Cap
		sherbZone = "Gathered in: Dread Wastes & Townlong Steppes."
	elseif itemId == "79010" then --Snow Lily
		sherbZone = "Gathered in: Kun-Lai Summit."
	elseif itemId == "72235" then --Silkweed
		sherbZone = "Gathered in: Valley of the Four Winds & Krasarang Wilds."
	elseif itemId == "72234" then --Green Tea Leaf
		sherbZone = "Gathered across Pandaria."
	elseif itemId == "72237" then --Rain Poppy
		sherbZone = "Gathered in: The Jade Forest."
	--Cataclysm
	elseif itemId == "52988" then --Whiptail
		sherbZone = "Gathered in: Uldum & Tol Barad."
	elseif itemId == "52986" then --Heartblossom
		sherbZone = "Gathered in: Deepholm."
	elseif itemId == "52985" then --Azshara's Veil
		sherbZone = "Gathered near sea water in: Twilight Highlands, Uldum & Tol Barad."	
	elseif itemId == "52984" then --Stormvine
		sherbZone = "Gathered in: Vashj'ir & Mount Hyjal."
	elseif itemId == "52983" then --Cinderbloom
		sherbZone = "Gathered in: Deepholm, Twilight Highlands & Mount Hyjal."
	--Wrath of the Lich King
	elseif itemId == "36905" then --Lichbloom
		sherbZone = "Gathered in: The Storm Peaks & Icecrown."
	elseif itemId == "36906" then --Icethorn
		sherbZone = "Gathered in: The Storm Peaks & Icecrown."
	elseif itemId == "36908" then --Frost Lotus
		sherbZone = "Gathered across Northrend."
	elseif itemId == "36903" then --Adder's Tongue
		sherbZone = "Gathered in: Sholazar Basin."
	elseif itemId == "39970" then --Fire Leaf
		sherbZone = "Gathered in: Borean Tundra."
	elseif itemId == "36904" then --Tiger Lily
		sherbZone = "Gathered in: Sholazar Basin, Grizzly Hills & Howling Fjord."
	elseif itemId == "36907" then --Talandra's Rose
		sherbZone = "Gathered in: Zul'Drak."
	elseif itemId == "36901" then --Goldclover
		sherbZone = "Gathered in: Grizzly Hills, Howling Fjord & Borean Tundra."
	elseif itemId == "37921" then --Deadnettle
		sherbZone = "Gathered whilst picking: Tiger Lily, Goldclover & Talandra's Rose."
	--The Burning Crusade
	elseif itemId == "22794" then --Fel Lotus
		sherbZone = "Gathered whilst picking the herbs of Outland."
	elseif itemId == "22791" then --Netherbloom
		sherbZone = "Gathered in: Netherstorm."
	elseif itemId == "22792" then --Nightmare Vine
		sherbZone = "Gathered in: Shadowmoon Valley(Outland) & Blade's Edge Mountains."
	elseif itemId == "22793" then --Mana Thistle
		sherbZone = "Gathered in: Terokkar Forest & Isle of Quel'Danas."
	elseif itemId == "22790" then --Ancient Lichen
		sherbZone = "Gathered in: Auchindoun & Coilfang Reservoir instances."
	elseif itemId == "22788" then --Flame Cap
		sherbZone = "Gathered in: Zangarmarsh."
	elseif itemId == "22787" then --Ragveil
		sherbZone = "Gathered in: Zangarmarsh."
	elseif itemId == "22785" then --Felweed
		sherbZone = "Gathered in: Nagrand & Hellfire Peninsula."
	elseif itemId == "22789" then --Terocone
		sherbZone = "Gathered in: Terrokar Forest."
	elseif itemId == "181271" then --Dreaming Glory
		sherbZone = "Gathered in: Nagrand, Terokkar Forest & Blade's Edge Mountains."
	--Vanilla
	elseif itemId == "13467" then --Icecap
		sherbZone = "Gathered in: Winterspring."
	elseif itemId == "13466" then --Sorrowmoss
		sherbZone = "Gathered in: Swamp of Sorrows."
	elseif itemId == "13465" then --Silversage
		sherbZone = "Gathered in: Winterspring."
	elseif itemId == "13468" then --Black Lotus
		sherbZone = "Gathered in: Eastern Plaguelands, Blasted Lands & Silithus."
	elseif itemId == "13463" then --Dreamfoil
		sherbZone = "Gathered in: Blasted Lands, Silithus & Felwood."
	elseif itemId == "13464" then --Golden Sansam
		sherbZone = "Gathered in: Swamp of Sorrows & Felwood."
	elseif itemId == "8846" then --Gromsblood
		sherbZone = "Gathered in: Felwood."
	elseif itemId == "8845" then --Ghost Mushroom
		sherbZone = "Gathered in: Un'Goro Crater & Zangarmarsh."
	elseif itemId == "8839" then --Blindweed
		sherbZone = "Gathered in: Feralas."
	elseif itemId == "8838" then --Sungrass
		sherbZone = "Gathered in: Eastern Plaguelands, Thousand Needles & Badlands."
	elseif itemId == "8836" then --Arthas' Tear
		sherbZone = "Gathered in: Western Plaguelands & Eastern Plaguelands."
	elseif itemId == "8831" then --Purple Lotus
		sherbZone = "Gathered in: Felwood."
	elseif itemId == "4625" then --Firebloom
		sherbZone = "Gathered in: Tanaris, Searing Gorge & Burning Steppes."
	elseif itemId == "8153" then --Wildvine
		sherbZone = "Gathered in: Felwood."
	elseif itemId == "3819" then --Dragon's Teeth
		sherbZone = "Gathered in: Badlands."
	elseif itemId == "3358" then --Khadgar's Whisker
		sherbZone = "Gathered in: Western Plaguelands, Eastern Plaguelands & Feralas."
	elseif itemId == "3821" then --Goldthorn
		sherbZone = "Gathered in: Arathi Highlands, The Hinterlands & Dustwallow Marsh."
	elseif itemId == "3818" then --Fadeleaf
		sherbZone = "Gathered in: Feralas & The Cape of Stranglethorn."
	elseif itemId == "3357" then --Liferoot
		sherbZone = "Gathered in: Western Plaguelands & Eastern Plaguelands."
	elseif itemId == "3356" then --Kingsblood
		sherbZone = "Gathered in: Northern Stranglethorn, Wetlands & Western Plaguelands."
	elseif itemId == "3369" then --Grave Moss
		sherbZone = "Gathered in: Duskwood & Razorfen Downs."
	elseif itemId == "2453" then --Bruiseweed
		sherbZone = "Gathered in: Northern Stranglethorn, Duskwood & Redridge Mountains."
	elseif itemId == "3820" then --Stranglekelp
		sherbZone = "Gathered in: Stranglethorn Vale, Wetlands & Tanaris."
	elseif itemId == "2450" then --Briarthorn
		sherbZone = "Gathered in: Hillsbrad Foothills, Duskwood & Azshara."
	elseif itemId == "2452" then --Swiftthistle
		sherbZone = "Gathered whilst picking: Briarthorn & Mageroyal."
	elseif itemId == "785" then --Mageroyal
		sherbZone = "Gathered in: Hillsbrad Foothills, Darkshore & Silverpine."
	elseif itemId == "2449" then --Earthroot
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "765" then --Silverleaf
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "2447" then --Peacebloom
		sherbZone = "Gathered in: Starting Zones."
	elseif itemId == "3355" then --Wild Steelbloom
		sherbZone = "Gathered in: Stonetalon Mountains, Northern Stranglethorn & Ashenvale."
	end
	return sherbZone
end

namespace.herbsName = getHerbsZone