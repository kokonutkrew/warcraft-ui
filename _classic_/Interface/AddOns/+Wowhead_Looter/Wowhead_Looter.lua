-----------------------------------------
--                                     --
--     W o w h e a d   L o o t e r     --
--                                     --
--                                     --
--    Patch: 2.5.2                     --
--    Updated: August 31, 2021         --
--    E-mail: feedback@wowhead.com     --
--                                     --
-----------------------------------------


local WL_NAME = "|cffffff7fWowhead Looter|r";
local WL_VERSION = 20502;
local WL_VERSION_PATCH = 0;
local WL_ADDONNAME, WL_ADDONTABLE = ...

-- Safeguard some Blizzard functions
local bzGetSpellInfo = GetSpellInfo;
local GetSpellInfo = function(id)
    local ret = {bzGetSpellInfo(id)}
    if (ret[1] == nil) then
        return 0;
    else
        return unpack(ret);
    end
end

local bzGetCurrencyInfo = GetCurrencyInfo;
local GetCurrencyInfo = function(id)
    if bzGetCurrencyInfo then
        return bzGetCurrencyInfo(id);
    end
    return nil;
end

-- SavedVariables
wlTime = GetServerTime();
wlVersion, wlUploaded, wlStats, wlExportData, wlRealmList = 0, 0, "", "", {};
wlAuction, wlEvent, wlItemSuffix, wlObject, wlProfile, wlUnit = {}, {}, {}, {}, {}, {};
wlItemDurability, wlItemBonuses = {}, {};
wlProfileData, wlTradeSkillDifficulty = {}, {};

-- SavedVariablesPerCharacter
wlSetting = {};
wlScans = {
    guid = nil,
    titles = "",
    timePlayedTotal = 0,
};
wlPetBlacklist = nil;
wlUIReloaded = nil;

-- Constants
local WL_FORGE_ID = 1685;
local WL_ANVIL_ID = 192628;
local WL_PING_MAX = 300;
local WL_SPELL_BLACKLIST = {
    [1] = true,     -- Word of Recall (OLD)
    [4] = true,     -- Word of Recall Other
    [1604] = true,  -- Dazed
    [15571] = true, -- Dazed
    [61394] = true, -- Frozen Wake (Glyph of Freezing Trap)
    [121308] = true, -- Disguise (Glyph of Disguise)
    [132951] = true,-- Flare
    [135299] = true, -- Ice Trap
    [135373] = true, -- Entrapment
};
local WL_LOOT_TOAST_BOSS = {
    [244164] = 121818, -- kazzak
    [244165] = 121820, -- azuregos
    [244166] = 121911, -- taerar
    [244182] = 121913, -- emeriss
    [244184] = 121821, -- lethon
    [244183] = 121912, -- ysondre
};
local WL_LOOT_TOAST_BAGS = {
    [142397] = 98134,     -- Heroic Cache of Treasures
    [143506] = 98095,     -- Brawler's Pet Supplies
    [143507] = 94207,     -- Fabled Pandaren Pet Supplies
    [143508] = 89125,     -- Sack of Pet Supplies
    [143509] = 93146,     -- Pandaren Spirit Pet Supplies
    [143510] = 93147,     -- Pandaren Spirit Pet Supplies
    [143511] = 93149,     -- Pandaren Spirit Pet Supplies
    [143512] = 93148,     -- Pandaren Spirit Pet Supplies
    [147598] = 104014,     -- Pouch of Timeless Coins
    [149222] = 105911,  -- Pouch of Enduring Wisdom
    [149223] = 105912,  -- Oversized Pouch of Enduring Wisdom
    [171513] = 116414,  -- Pet Supplies
    [175767] = 118697,  -- Big Bag of Pet Supplies
    [178508] = 120321,  -- Mystery Bag
    [181405] = 122535,  -- Traveler's Pet Supplies
    [243134] = 147384,  -- Legionfall Recompense
    -- broken shore token gear
    [240421] = 147223,  -- dauntless trinket
    [240414] = 147216,  -- dauntless hood
    [240146] = 147218,  -- dauntless shoulder
    [240412] = 147213,  -- dauntless tunic
    [240411] = 147212,  -- dauntless bracer
    [240418] = 147220,  -- dauntless ring
    [240420] = 147222,  -- dauntless cloak
    [240417] = 147219,  -- dauntless girdle
    [240419] = 147221,  -- dauntless choker
    [240415] = 147217,  -- dauntless leggings
    [240413] = 147214,  -- dauntless treads
    [240422] = 147215,  -- dauntless gauntlets
    [242864] = 147801,  -- Relinquished Trinket
    [242859] = 147796,  -- relinquished hood
    [243074] = 147837,  -- relinquished relic
    [242856] = 147793,  -- relinquished chestguard
    [242842] = 147786,  -- relinquihed bracers
    [242862] = 147799,  -- relinquished rings
    [242860] = 147797,  -- relinquished leggings
    [242863] = 147800,  -- relinquished spaulders
    [242858] = 147795,  -- relinquished gauntlets
    [242855] = 147792,  -- relinquished treads
    [242854] = 147791,  -- relinquished girdle
    [242861] = 147798,  -- relinquished necklace
    [242857] = 147794,  -- relinquished cloak
    [243127] = 146899,  -- highmountain supplies
    [243128] = 146901,  -- valarjar strongbox
    [243126] = 146897,  -- Farondis chest
    [243131] = 146898,  -- Dreamweaver Cache
    [243132] = 146900,  -- nightfallen cache
    [243133] = 146902,  -- warden supply kit
    [243135] = 147361,  -- legionfall chest

    -- argus tokens
    [254781] = 153214,  -- relinquished ring
    [254774] = 153209,  -- relinquished cloak
    [254780] = 153207,  -- relinquished boots
    [254776] = 153206,  -- relinquished bracers
    [254778] = 153205,  -- relinquished girdle
    [254782] = 153216,  -- relinquished trinket
    [254790] = 153064,  -- relinquished relic holy
    [254773] = 153215,  -- relinquished shoulders
    [254784] = 153213,  -- relinquished neck
    [254779] = 153212,  -- relinquished pants
    [254783] = 153211,  -- relinquished hood
    [254777] = 153210,  -- relinquished gauntlets
    [254785] = 153059,  -- relinquished relic arcane
    [254775] = 153208,  -- relinquished chestguard
    [254786] = 153060,  -- relinquished relic blood
    [254787] = 153061,  -- relinquished relic fel
    [254788] = 153062,  -- relinquished relic fire
    [254794] = 153068,  -- relinquished relic storm
    [254793] = 153067,  -- relinquished relic shadow
    [254792] = 153066,  -- relinquished relic life
    [254791] = 153065,  -- relinquished relic iron
    [254789] = 153063,  -- relinquished relic holy
    [254632] = 153140,  -- unsullied plate belt
    [252882] = 152733,  -- unsullied trinket
    [252883] = 152735,  -- unsullied ring
    [252894] = 152736,  -- unsullied necklace
    [254628] = 152737,  -- unsullied leather pants
    [252895] = 152738,  -- unsullied cloth hat
    [254634] = 152739,  -- unsullied leather gloves
    [252892] = 152740,  -- unsullied cloak
    [254641] = 152741,  -- unsullied mail cloak
    [252890] = 152742,  -- unsullied cloth cuffs
    [254626] = 152743,  -- unsullied plate sabatons
    [254631] = 152744,  -- unsullied mail girdle
    [254634] = 152739,  -- unsullied leather gloves
    [253033] = 152799,  -- unsullied relic
    [252891] = 153135,  -- unsullied cloth robes
    [254624] = 153136,  -- unsullied leather treads
    [254637] = 153137,  -- unsullied mail spaulders
    [254630] = 153138,  -- unsullied mail legguards
    [254646] = 153139,  -- unsullied leather headgear
    [252893] = 152734,  -- unsullied cloth mantle
    [252889] = 153141,  -- unsullied cloth mitts
    [254617] = 153142,  -- unsullied leather armbands
    [254642] = 153143,  -- unsullied plate breastplate
    [252884] = 153144,  -- unsullied cloth slippers
    [254638] = 153145,  -- unsullied leather spaulders
    [254629] = 153146,  -- unsullied plate greaves
    [254648] = 153147,  -- unsullied mail coif
    [254633] = 153148,  -- unsullied leather belt
    [254635] = 153149,  -- unsullied mail gloves
    [254622] = 153150,  -- unsullied plate vambraces
    [254645] = 153151,  -- unsullied leather tunic
    [254625] = 153152,  -- unsullied mail boots
    [254639] = 153153,  -- unsullied plate pauldrons
    [252886] = 153154,  -- unsullied cloth leggings
    [254649] = 153155,  -- unsullied plate helmet
    [252887] = 153156,  -- unsullied cloth sash
    [254636] = 153157,  -- unsullied plate gauntlets
    [254623] = 153158,  -- unsullied mail bracers

    -- 7.3 em boxes
    [254386] = 152652,  -- gilded trunk
    [253748] = 152923,  -- gleaming footlocker
    [253747] = 152922,  -- brittle krokul chest
    [254385] = 152650,  -- scuffed krokul cache


};

local WL_REP_MODS = {
    [GetSpellInfo(61849)] = {nil, 0.1},
    [GetSpellInfo(24705)] = {nil, 0.1},
    [GetSpellInfo(30754)] = {GetFactionInfoByID(609), 0.25},
    [GetSpellInfo(39953)] = {GetFactionInfoByID(935), 0.1},
    [GetSpellInfo(32098)] = {GetFactionInfoByID(946), 0.25},
    [GetSpellInfo(39913)] = {GetFactionInfoByID(947), 0.1},
    [GetSpellInfo(32096)] = {GetFactionInfoByID(947), 0.25},
    [GetSpellInfo(39911)] = {GetFactionInfoByID(946), 0.1},
    [GetSpellInfo(95987)] = {nil, 0.1},
    [GetSpellInfo(100951)] = {nil, 0.08},
    [GetSpellInfo(161780)] = {GetFactionInfoByID(1359), 1.0},
    [GetSpellInfo(150986)] = {nil, 0.1},
    [GetSpellInfo(136583)] = {nil, 0.1},
    [GetSpellInfo(46668)] = {nil, 0.1},
};
-- Map currency name to currency ID
local WL_CURRENCIES = {};
local WL_CURRENCIES_MAXID = 2400;
-- Random Dungeon IDs extracted from LFGDungeons.dbc
local WL_AREAID_TO_DUNGEONID = {
    [1] = {
        [887] = 463,
        [765] = 258,
        [704] = 258,
        [769] = 300,
        [528] = 261,
        [521] = 261,
        [964] = 788,
        [525] = 261,
        [876] = 463,
        [536] = 261,
        [750] = 258,
        [533] = 261,
        [732] = 259,
        [726] = 259,
        [728] = 259,
        [730] = 259,
        [984] = 788,
        [797] = 259,
        [798] = 259,
        [722] = 259,
        [534] = 261,
        [759] = 300,
        [761] = 258,
        [523] = 261,
        [874] = 258,
        [687] = 258,
        [1008] = 788,
        [691] = 258,
        [756] = 258,
        [753] = 300,
        [760] = 258,
        [699] = 258,
        [764] = 258,
        [767] = 300,
        [768] = 300,
        [993] = 788,
        [520] = 261,
        [522] = 261,
        [524] = 261,
        [526] = 261,
        [969] = 788,
        [530] = 261,
        [721] = 258,
        [723] = 259,
        [725] = 259,
        [680] = 258,
        [734] = 259,
        [877] = 463,
        [686] = 258,
        [987] = 788,
        [989] = 788,
        [898] = 258,
        [867] = 463,
        [995] = 788,
        [871] = 258,
        [747] = 300,
        [875] = 463,
        [688] = 258,
        [690] = 258,
        [692] = 258,
        [757] = 300,
        [885] = 463,
        [749] = 258,
    },
    [2] = {
        [756] = 301,
        [989] = 789,
        [757] = 301,
        [767] = 301,
        [820] = 301,
        [867] = 462,
        [759] = 301,
        [819] = 301,
        [1008] = 789,
        [993] = 789,
        [885] = 462,
        [898] = 462,
        [793] = 301,
        [871] = 462,
        [887] = 462,
        [964] = 789,
        [764] = 301,
        [874] = 462,
        [747] = 301,
        [781] = 301,
        [995] = 789,
        [875] = 462,
        [984] = 789,
        [969] = 789,
        [768] = 301,
        [753] = 301,
        [769] = 301,
        [816] = 301,
        [987] = 789,
        [877] = 462,
        [876] = 462,
    },
    [12] = {
        [878] = 493,
        [940] = 493,
        [912] = 493,
        [884] = 493,
        [880] = 493,
        [882] = 493,
        [920] = 493,
        [937] = 493,
        [939] = 493,
        [851] = 493,
        [883] = 493,
        [900] = 493,
        [911] = 493,
        [914] = 493,
        [906] = 493,
        [938] = 493,
    },
    [11] = {
        [938] = 641,
        [940] = 641,
        [900] = 641,
        [937] = 641,
        [939] = 641,
        [878] = 641,
    },
};
local WL_REP_DISCOUNT = {
    [5] = 0.05, -- Friend:   5%
    [6] = 0.10, -- Honored: 10%
    [7] = 0.15, -- Revered: 15%
    [8] = 0.20, -- Exalted: 20%
};
local WL_ZONE_EXCEPTION = {
    ["ShrineofSevenStars"]  = 905,
    ["ShrineofTwoMoons"]    = 903,
};
local WL_SALVAGE_ITEMS = {
    [168178] = 114116, -- Bag of Salvaged Goods
    [168179] = 114119, -- Crate of Salvage
    [168180] = 114120, -- Big Crate of Salvage
};
local WL_SPECIAL_CONTAINERS = {
    [50301] = true, -- Landro's Pet Box
    [54218] = true, -- Landro's Gift Box
    [97565] = true, -- Unclaimed Black Market Container
    [102137] = true, -- Unclaimed Black Market Container
    [104260] = true, -- Satchel of Savage Mysteries
    [105751] = true, -- Kor'kron Shaman's Treasure
    [110592] = true, -- Unclaimed Black Market Container
    [111598] = true, -- Gold Strongbox
    [111599] = true, -- Silver Strongbox
    [111600] = true, -- Bronze Strongbox
    [114634] = true, -- Icy Satchel of Helpful Goods
    [114641] = true, -- Icy Satchel of Helpful Goods
    [114648] = true, -- Scorched Satchel of Helpful Goods
    [114655] = true, -- Scorched Satchel of Helpful Goods
    [114662] = true, -- Tranquil Satchel of Helpful Goods
    [114669] = true, -- Tranquil Satchel of Helpful Goods
    [116980] = true, -- Invader's Forgotten Treasure
    [118065] = true, -- Gleaming Ashmaul Strongbox
    [118066] = true, -- Ashmaul Strongbox
    [118093] = true, -- Dented Ashmaul Strongbox
    [118094] = true, -- Dented Ashmaul Strongbox
    [118529] = true, -- Cache of Highmaul Treasures
    [118530] = true, -- Cache of Highmaul Treasures
    [118531] = true, -- Cache of Highmaul Treasures
    [119000] = true, -- Highmaul Lockbox
    [119032] = true, -- Challenger's Strongbox
    [119036] = true, -- Box of Storied Treasures
    [119037] = true, -- Supply of Storied Rarities
    [119040] = true, -- Cache of Mingled Treasures
    [119041] = true, -- Strongbox of Mysterious Treasures
    [119042] = true, -- Crate of Valuable Treasures
    [119043] = true, -- Trove of Smoldering Treasures
    [119330] = true, -- Steel Strongbox
    [120142] = true, -- Coliseum Champion's Spoils
    [120151] = true, -- Gleaming Ashmaul Strongbox
    [120184] = true, -- Ashmaul Strongbox
    [120319] = true, -- Invader's Damaged Cache
    [120320] = true, -- Invader's Abandoned Sack
    [120353] = true, -- Steel Strongbox
    [120354] = true, -- Gold Strongbox
    [120355] = true, -- Silver Strongbox
    [120356] = true, -- Bronze Strongbox
    [122163] = true, -- Routed Invader's Crate of Spoils
    [122241] = true, -- Bounty Payout
    [122242] = true, -- Relic Acquisition Compensatory Package
    [122478] = true, -- Scouting Report: Frostfire Ridge
    [122479] = true, -- Scouting Report: Shadowmoon Valley
    [122480] = true, -- Scouting Report: Gorgrond
    [122481] = true, -- Scouting Report: Talador
    [122482] = true, -- Scouting Report: Spires of Arak
    [122483] = true, -- Scouting Report: Nagrand
    [122484] = true, -- Blackrock Foundry Spoils
    [122485] = true, -- Blackrock Foundry Spoils
    [122486] = true, -- Blackrock Foundry Spoils
    [122579] = true, -- Rush Orders Ledger
    [122608] = true, -- Garrison Resource Shipment
    [122718] = true, -- Clinking Present
    [123857] = true, -- Runic Pouch
    [123858] = true, -- Follower Retraining Scroll Case
    [123975] = true, -- Greater Bounty Spoils
    [127853] = true, [127854] = true, [127855] = true, [128391] = true, -- iron horde caches (6.2 raid rewards)
    [126901] = true, [126906] = true, [126909] = true, [126914] = true, [126917] = true, [126918] = true, [126919] = true, [126920] = true, [126921] = true, [126922] = true, [126923] = true, [126924] = true, [126902] = true, [126907] = true, [126910] = true, [126915] = true, [127831] = true, [126903] = true, [126904] = true, [126905] = true, [126908] = true, [126911] = true, [126912] = true, [126913] = true, [126916] = true, [128213] = true, [128214] = true, [128215] = true, [128216] = true, -- Ashran and CM boxes
    [127751] = true, -- fel-touched-pet-supplies
    [128327] = true, -- small-pouch-of-coins
    [147384] = true,
    [147446] = true, -- brawler's footlocker
};

-- Speed optimizations
local CheckInteractDistance = CheckInteractDistance;
local DungeonUsesTerrainMap = DungeonUsesTerrainMap;
local GetCursorPosition = GetCursorPosition;
local GetFactionInfo = GetFactionInfo;
local GetInstanceInfo = GetInstanceInfo;
local GetItemCount = GetItemCount;
local GetItemInfo = GetItemInfo;
local GetLanguageByIndex = GetLanguageByIndex;
local GetLootSlotInfo = GetLootSlotInfo;
local GetLootSlotLink = GetLootSlotLink;
local GetMerchantItemCostInfo = GetMerchantItemCostInfo;
local GetMerchantItemCostItem = GetMerchantItemCostItem;
local GetMerchantItemInfo = GetMerchantItemInfo;
local GetMerchantItemLink = GetMerchantItemLink;
local GetNetStats = GetNetStats;
local GetNumDungeonMapLevels = GetNumDungeonMapLevels;
local GetNumLootItems = GetNumLootItems;
local GetNumPartyMembers = GetNumPartyMembers;
local GetNumQuestLeaderBoards = GetNumQuestLeaderBoards;
local GetNumQuestLogEntries = GetNumQuestLogEntries;
local GetNumRaidMembers = GetNumRaidMembers;

local GetPlayerMapPosition = function(unitToken)
    local uiMapID = C_Map.GetBestMapForUnit(unitToken) or WorldMapFrame:GetMapID();
    local location = nil;

    -- uiMapID can be nil after fresh teleports and map/instance changes.
    if uiMapID then
        location = C_Map.GetPlayerMapPosition(uiMapID, unitToken);
    end

    if not location then
        return 0, 0;
    end

    return C_Map.GetPlayerMapPosition(uiMapID, unitToken):GetXY();
end

local GetProgressText = GetProgressText;
local GetQuestID = GetQuestID;
local GetQuestLogLeaderBoard = GetQuestLogLeaderBoard;
local GetQuestLogPushable = GetQuestLogPushable;
local GetQuestLogSelection = GetQuestLogSelection;
local GetQuestLogTimeLeft = GetQuestLogTimeLeft;
local GetQuestLogTitle = GetQuestLogTitle;
local GetRealZoneText = GetRealZoneText;
local GetRewardText = GetRewardText;
local GetSpellInfo = GetSpellInfo;
local GetTradeSkillInfo = GetTradeSkillInfo;
local GetTradeSkillRecipeLink = GetTradeSkillRecipeLink;
local GetTrainerServiceCost = GetTrainerServiceCost;
local GetTrainerServiceInfo = GetTrainerServiceInfo;
local GetTrainerServiceSkillReq = GetTrainerServiceSkillReq;
local IsEquippedItem = IsEquippedItem;
local IsFishingLoot = IsFishingLoot;
local LootSlotIsCoin = LootSlotIsCoin;
local LootSlotIsCurrency = LootSlotIsCurrency;
local LootSlotIsItem = LootSlotIsItem;
local SelectQuestLogEntry = SelectQuestLogEntry;
local SendAddonMessage = C_ChatInfo.SendAddonMessage;
local UnitClass = UnitClass;
local UnitExists = UnitExists;
local UnitFactionGroup = UnitFactionGroup;
local UnitGUID = UnitGUID;
local UnitHealthMax = UnitHealthMax;
local UnitIsDead = UnitIsDead;
local UnitIsFriend = UnitIsFriend;
local UnitIsPlayer = UnitIsPlayer;
local UnitIsTapped = UnitIsTapped;
local UnitIsTappedByPlayer = UnitIsTappedByPlayer;
local UnitIsTapDenied = UnitIsTapDenied;
local UnitIsTrivial = UnitIsTrivial;
local UnitLevel = UnitLevel;
local UnitName = UnitName;
local UnitPlayerControlled = UnitPlayerControlled;
local UnitPowerMax = UnitPowerMax;
local UnitPowerType = UnitPowerType;
local UnitRace = UnitRace;
local UnitReaction = UnitReaction;
local UnitSex = UnitSex;
local floor, ceil, abs = floor, ceil, abs;
local format = format;
local pairs, ipairs = pairs, ipairs;
local type = type;
local select = select;
local tonumber = tonumber;
local tinsert, sort, wipe = tinsert, sort, wipe;
local bit_band, bit_bor = bit.band, bit.bor;
local match, gmatch = match, gmatch;
local find = find;
local sub, gsub = sub, gsub;
local lower = lower;
local time = time;

-- Local Variables
local wlTracker = {};
local wlNpcInfo = {};
local wlLootCooldown = {};
local wlFaction = {};
local wlCurrentMindControlTarget = nil;
local wlTimers = {};
local wlMsgCollected = "";
local wlPlayerCurrencies = {};
local wlLootedCurrenciesBlacklist = {};
local wlIsDrunk = false;
local wlId = nil;
local wlN = 0;
local wlEventId = 1;
local wlForgeSpells = {};
local wlAnvilSpells = {};
local wlRegisterCooldown = {};
local wlLootToastSourceId = nil;
local wlCurrentLootToastEventId = nil;
local wlQuestLog, wlQuestObjectives, wlCurrentQuestObj = {}, { {}, {} }, 1;
local wlSpellCastID = nil;
local wlTrackerClearedTime = 0;
local wlChatLootIsBlocked = false;
local wlLastShipmentContainer = nil;
local wlLockedID = nil;

-- Hooks
local wlDefaultGetQuestReward;
local wlDefaultChatFrame_DisplayTimePlayed;
local wlDefaultReloadUI;
local wlDefaultConsoleExec;

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--


function wlGetNextEventId()
    if not wlEvent or not wlEvent[wlId] or not wlEvent[wlId][wlN] or not wlEvent[wlId][wlN][wlEventId] then
        return wlEventId;
    else
        wlEventId = wlEventId + 1;
        return wlEventId;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_PLAYER_LOGIN(self)
    if wlVersion ~= WL_VERSION or wlUploaded ~= 0 then
        wlReset();
    end

    -- hunter pets after being tamed retain their NPC GUID until next relog
    -- reloadui however doesn't change a pet guid
    if not wlUIReloaded then
        wlPetBlacklist = nil;
    end

    wlUIReloaded = nil;

    wlHook();
    wlClearTracker("quest", "rep", "spell");

    local realmList = GetCVar("portal");

    wlRealmList[realmList or "nil"] = 1;

    wlId = wlConcat(wlSelectOne(1, UnitName("player")), GetRealmName());

    wlUpdateVariable(wlProfile, wlId, "init", {
        faction = UnitFactionGroup("player"),
        race = select(2, UnitRace("player")),
        class = select(2, UnitClass("player")),
        sex = UnitSex("player"),
        n = 0,
    });
    wlN = wlUpdateVariable(wlProfile, wlId, "n", "add", 1);

    wlUpdateVariable(wlEvent, wlId, wlN, wlGetNextEventId(), "set", {
        what = "login",
        date = wlConcat(wlGetDate()),
    });

    -- Restore settings
    if wlSetting.locMap then
        wlLocMapFrame:Show();
    end

    if wlSetting.locTooltip then
        wlLocTooltipFrame:Show();
    end

    if wlSetting.idTooltip then
        wlIdTooltipFrame:Show();
    end

    wlUpdateMiniMapButtonPosition(_G["wlMinimapButton"]);
    if wlSetting.minimap then
        wlMinimapButton:Show();
        _G["wlminimapCheckbox"]:SetChecked(true);
    elseif wlSetting.minimap == nil then
        wlMinimapButton:Show();
        _G["wlminimapCheckbox"]:SetChecked(true);
    else
        _G["wlminimapCheckbox"]:SetChecked(false);
    end

    _G["wllocMapCheckbox"]:SetChecked(wlSetting.locMap);
    _G["wllocTooltipCheckbox"]:SetChecked(wlSetting.locTooltip);
    _G["wlidTooltipCheckbox"]:SetChecked(wlSetting.idTooltip);

    -- If a field is "" in the upload, the server will not touch
    -- the database for that field.  (i.e. we didn't scan that data)
    -- If a field is "-1", it means we've scanned for the data, but
    -- there is none (i.e. they don't have any mounts, for example)
    -- The server will wipe any data it had, and replace it with nothing
    -- Otherwise, the field will contain ALL the pertinent data, so the
    -- server wipes what it had and replaces it with what's in the upload

    wlScans.guid = UnitGUID("player");
    wlScans.titles = wlScans.titles or "";
    wlScans.timePlayedTotal = wlScans.timePlayedTotal or 0;

    -- to make sure bag info is available
    wlTimers.itemDurability = wlGetTime() + 20000;

    -- load currencies
    for i=1, WL_CURRENCIES_MAXID do
        local currencyName = GetCurrencyInfo(i);
        if currencyName and currencyName ~= "" then
            WL_CURRENCIES[currencyName:lower()] = i;
        end
    end
    wlScanCurrencies();

    wlScanTitles();

    wlMessage(WL_LOADED:format(WL_NAME, WL_VERSION), true);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_PLAYER_LOGOUT(self)
    wlRefreshExportData();
    wlUnhook();
    wlRegisterStats();
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_ADDON_LOADED(self, name)
    if name == "+Wowhead_Looter" then
        wlTimers.autoCollect = wlGetTime() + 60000; -- 60 seconds timeout
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

-------------------------
-------------------------
--                     --
--   UNIT  FUNCTIONS   --
--                     --
-------------------------
-------------------------

-- UnitLevel("unit") returns wrong lvl if the player is drunk
local DRUNK_ITEM1, DRUNK_ITEM2, DRUNK_ITEM3, DRUNK_ITEM4 = DRUNK_MESSAGE_ITEM_SELF1:gsub("%%s", ".+"), DRUNK_MESSAGE_ITEM_SELF2:gsub("%%s", ".+"), DRUNK_MESSAGE_ITEM_SELF3:gsub("%%s", ".+"), DRUNK_MESSAGE_ITEM_SELF4:gsub("%%s", ".+");
function wlEvent_CHAT_MSG_SYSTEM(self, msg)
    if wlIsDrunk and (msg == DRUNK_MESSAGE_SELF1 or msg:match(DRUNK_ITEM1)) then
        wlIsDrunk = false;
    elseif not wlIsDrunk and (msg == DRUNK_MESSAGE_SELF2 or msg == DRUNK_MESSAGE_SELF3 or msg == DRUNK_MESSAGE_SELF4) then
        wlIsDrunk = true;
    elseif not wlIsDrunk and (msg:match(DRUNK_ITEM2) or msg:match(DRUNK_ITEM3) or msg:match(DRUNK_ITEM4)) then
        wlIsDrunk = true;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlUnitName(unit)
    local name = UnitName(unit);

    if wlIsValidName(name) then
        return name;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlPlayerCanHaveTap(unit)
    return not UnitIsTapDenied(unit);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlUnitGUID(unit)
    local name = wlUnitName(unit);
    local id, kind = wlParseGUID(UnitGUID(unit));

    if name and id and kind == "npc" then
        wlUpdateVariable(wlNpcInfo, name, "time", "set", wlGetTime());
        wlUpdateVariable(wlNpcInfo, name, "id", "set", id);
        wlUpdateVariable(wlNpcInfo, name, "isTrivial", "set", UnitIsTrivial(unit));
    end

    return id, kind;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_PLAYER_TARGET_CHANGED(self)

    if not UnitExists("target") or UnitPlayerControlled("target") or wlIsDrunk then
        return;
    end

    local id, kind = wlUnitGUID("target");

    if not id or kind ~= "npc" then
        return;
    end

    wlUpdateVariable(wlUnit, id, "init", {
        class = select(2, UnitClass("target")),
        isPvp = UnitIsPVP("target") and true or false,
    });

    if not wlUnit[id].class then
        wlUpdateVariable(wlUnit, id, "class", "set", select(2, UnitClass("target")));
        wlUpdateVariable(wlUnit, id, "isPvp", "set", UnitIsPVP("target") and true or false);
    end

    wlUpdateVariable(wlUnit, id, "sex", UnitSex("target"), "add", 1);

    if not wlUnit[id].faction then
        wlUnit[id].faction = wlUnitFaction("target");
    end

    wlUpdateVariable(wlUnit, id, "reaction", wlConcat(UnitLevel("player"), UnitFactionGroup("player"), UnitReaction("player", "target")), "init", wlGetTime());

    local dd, level = wlGetInstanceDifficulty(), UnitLevel("target");

    wlUpdateVariable(wlUnit, id, "spec", dd, level, "init", {
        health = UnitHealthMax("target"),
        powertype = UnitPowerType("target"),
        powermax = UnitPowerMax("target", powertype),
    });
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlUnitIsClose(unit)
    return CheckInteractDistance(unit, 1) and CheckInteractDistance(unit, 2) and CheckInteractDistance(unit, 3) and CheckInteractDistance(unit, 4);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRegisterUnitLocation(id, level)

    local now = wlGetTime();

    -- Clean cooldowns
    for k, v in pairs(wlRegisterCooldown) do
        if v < now - 30000 then -- 30 seconds
            wlRegisterCooldown[k] = nil;
        end
    end

    -- Check for CD
    if wlRegisterCooldown[id] then
        return;
    end

    -- Start CD
    wlRegisterCooldown[id] = now;

    local dd = wlGetInstanceDifficulty();
    local uiMapID = wlGetCurrentUiMapID();

    -- No location without a map/uiMap.
    if not uiMapID then
        return;
    end

    local zone, x, y, uiMapID = wlGetLocation();

    wlUpdateVariable(wlUnit, id, "spec", dd, level, "loc", zone, uiMapID, "init", { n = 0 });

    local i = wlGetLocationIndex(wlUnit[id].spec[dd][level].loc[zone][uiMapID], x, y, uiMapID, 5);
    if i then
        local n = wlUnit[id].spec[dd][level].loc[zone][uiMapID][i].n;

        wlUnit[id].spec[dd][level].loc[zone][uiMapID][i].x = floor((wlUnit[id].spec[dd][level].loc[zone][uiMapID][i].x * n + x) / (n + 1) + 0.5);
        wlUnit[id].spec[dd][level].loc[zone][uiMapID][i].y = floor((wlUnit[id].spec[dd][level].loc[zone][uiMapID][i].y * n + y) / (n + 1) + 0.5);
        wlUnit[id].spec[dd][level].loc[zone][uiMapID][i].n = n + 1;
    else
        i = wlUpdateVariable(wlUnit, id, "spec", dd, level, "loc", zone, uiMapID, "n", "add", 1);
        wlUpdateVariable(wlUnit, id, "spec", dd, level, "loc", zone, uiMapID, i, "set", {
            x = x,
            y = y,
            dl = uiMapID,
            n = 1,
        });
        if (IsInInstance()) then
            local name, iType, difficultyIndex, difficultyName, maxPlayers, dynamicDifficulty, isDynamic,
                instanceMapId, lfgId = GetInstanceInfo();
            wlUpdateVariable(wlUnit, id, "spec", dd, level, "loc", zone, uiMapID, i, "instance", "set", {
                name = name,
                iType = iType,
                difficultyIndex = difficultyIndex,
                difficultyName = difficultyName,
                maxPlayers = maxPlayers,
                dynamicDifficulty = dynamicDifficulty,
                isDynamic = isDynamic,
                instanceMapId = instanceMapId,
                lfgId = lfgId,
            });
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CHAT_MSG_MONSTER_SAY(self, text, name, language)
    wlRegisterUnitQuote(name, "say", language, text);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CHAT_MSG_MONSTER_WHISPER(self, text, name, language)
    wlRegisterUnitQuote(name, "whisper", language, text);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CHAT_MSG_MONSTER_YELL(self, text, name, language)
    wlRegisterUnitQuote(name, "yell", language, text);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlReplaceWord(word)
    if word == GetUnitName("player", false) or word == GetUnitName("player", true) then
        return "<name>";
    end
    if word == UnitClass("player") then
        return "<class>";
    end
end

local wlLanguage = nil;
function wlRegisterUnitQuote(name, how, language, text)
    -- Init
    text = text:gsub("(%w+-?%w*)", wlReplaceWord);

    if not wlLanguage then
        wlLanguage = {};

        for i=1, GetNumLanguages() do
            wlLanguage[GetLanguageByIndex(i)] = 1;
        end
    end

    -- language -> language known
    if (language ~= "" and not wlLanguage[language]) or not name or not wlNpcInfo[name] or not wlUnit[wlNpcInfo[name].id] then
        return;
    end

    wlUpdateVariable(wlUnit, wlNpcInfo[name].id, "quote", how, text, "set", language);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_GOSSIP_SHOW(self)
    wlEvent_BlockChatLoot(self);
    wlClearTracker("gossipNpc");
    local gossips = { GetGossipOptions() };

    for i=1, #gossips, 2 do
        if gossips[i + 1] ~= "gossip" then
            wlRegisterUnitGossip(gossips[i + 1]);
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_AUCTION_HOUSE_SHOW(self)
    wlEvent_BlockChatLoot(self);
    wlRegisterUnitGossip("auctioneer");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_BANKFRAME_OPENED(self)
    wlEvent_BlockChatLoot(self);
    wlRegisterUnitGossip("banker");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_BATTLEFIELDS_SHOW(self)
    wlRegisterUnitGossip("battlemaster");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CONFIRM_BINDER(self)
    wlRegisterUnitGossip("binder");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CONFIRM_TALENT_WIPE(self)
    wlRegisterUnitGossip("talentwiper");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_GOSSIP_ENTER_CODE(self, codeId)
    wlRegisterUnitGossip("code"..codeId);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_OPEN_TABARD_FRAME(self)
    wlRegisterUnitGossip("tabard");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_PET_STABLE_SHOW(self)
    wlRegisterUnitGossip("stable");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_TAXIMAP_OPENED(self)
    wlRegisterUnitGossip("taxi");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_GOSSIP_CONFIRM_CANCEL(self)
    wlTracker.gossipNpc = { wlUnitGUID("npc") };
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRegisterUnitGossip(gossip)
    if not gossip or gossip == "" then
        return;
    end

    local id, kind = wlUnitGUID("npc");

    if ((not id or not kind) and (gossip == "talentwiper" or gossip == "pettrainer")) then
        id, kind = unpack(wlTracker.gossipNpc);
    end

    if not id or kind ~= "npc" or not wlUnit[id] then
        return;
    end

    wlUpdateVariable(wlUnit, id, "gossip", gossip, "add", 1);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_PET_BAR_UPDATE(self)
    local id, kind = wlUnitGUID("pet");
    if wlCurrentMindControlTarget and wlCurrentMindControlTarget ~= id then
        wlCurrentMindControlTarget = nil;
    end

    if wlTracker.spell and wlTracker.spell.time and wlTracker.spell.action == "MindControl" and wlTracker.spell.event == "SUCCEEDED" then
        if id and kind == "npc" and wlUnit[id] and id == wlTracker.spell.id then
            wlCurrentMindControlTarget = id;
        end

        wlClearTracker("spell");
        wlTrackerClearedTime = wlGetTime();
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

-- fires whenever the player tames a new pet
function wlEvent_LOCALPLAYER_PET_RENAMED(self)
    local id, kind = wlUnitGUID("pet");
    wlPetBlacklist = nil;
    if not id or kind ~= "npc" then
        return;
    end
    wlPetBlacklist = id;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_MERCHANT_SHOW(self)
    wlEvent_BlockChatLoot(self);
    wlRegisterUnitGossip("vendor");
    wlEvent_MERCHANT_UPDATE(self);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_MERCHANT_UPDATE(self)

    local id, kind = wlUnitGUID("npc");

    if not id or kind ~= "npc" or not wlUnit[id] then
        return;
    end

    if CanMerchantRepair() then
        wlUpdateVariable(wlUnit, id, "canRepair", "init", 1);
    end

    local standing = select(2, wlUnitFaction("npc"));

    local merchantFilters = GetMerchantFilter and GetMerchantFilter();
    if (merchantFilters) then
        SetMerchantFilter(LE_LOOT_FILTER_ALL);
    end
    MerchantFrame_Update();

    local merchantItemList = {};
    local currencies = { GetMerchantCurrencies and GetMerchantCurrencies() };
    local numCurrencies = #currencies;
    local currencyInfos = {};
    for index = 1, numCurrencies do
        local cName, cCount, cIcon = GetCurrencyInfo(currencies[index]);
        currencyInfos[cName] = { currencies[index], cIcon };
    end

    for slot=1, GetMerchantNumItems() do
        local name, icon, price, stack, numAvailable, _, _, extendedCost = GetMerchantItemInfo(slot);
        local id, subId = wlParseItemLink(GetMerchantItemLink(slot));
        if (id ~= 0 or ((currencyInfos[name] ~= nil) and (currencyInfos[name][2] == icon))) then

            if (id == 0) then
                id = currencyInfos[name][1];
                subId = -2; -- this is a currency
            end

            price = wlGetFullCost(price, standing);

            if extendedCost then
                local personalRating, battlegroundRating = 0, 0;

                wlGameTooltip:ClearLines();
                wlGameTooltip:SetMerchantItem(slot);

                for i=2, wlGameTooltip:NumLines() do
                    local line = _G["wlGameTooltipTextLeft"..i];

                    if not line then
                        break;
                    end

                    local pts = wlParseString("^"..ITEM_REQ_ARENA_RATING.."$", line:GetText());
                    if pts then
                        personalRating = pts;
                        break;
                    end

                    local pts = wlParseString("^"..ITEM_REQ_ARENA_RATING_3V3.."$", line:GetText());
                    if pts then
                        personalRating = pts + 1000000; -- 3v3 or 5v5 flag
                        break;
                    end

                    local pts = wlParseString("^"..ITEM_REQ_ARENA_RATING_5V5.."$", line:GetText());
                    if pts then
                        personalRating = pts + 2000000; -- 5v5 flag
                        break;
                    end

                    if type(ITEM_REQ_ARENA_RATING_BG) == "string" and type(ITEM_REQ_ARENA_RATING_3V3_BG) == "string" then
                        local pts1, pts2 = wlParseString("^"..ITEM_REQ_ARENA_RATING_BG.."$", line:GetText());
                        if pts1 and pts2 then
                            personalRating = pts1;
                            battlegroundRating = pts2;
                            break;
                        end

                        local pts1, pts2 = wlParseString("^"..ITEM_REQ_ARENA_RATING_3V3_BG.."$", line:GetText());
                        if pts1 and pts2 then
                            personalRating = pts1 + 1000000; -- 3v3 or 5v5 flag
                            battlegroundRating = pts2;
                            break;
                        end
                    end
                end

                extendedCost = personalRating.."#"..battlegroundRating;

                local merchantCurrencies = {};

                for i=1, GetMerchantItemCostInfo(slot) do

                    local currencyId;
                    local texture, qty, link = GetMerchantItemCostItem(slot, i);

                    if link then
                        currencyId = wlParseItemLink(link);
                    end

                    if not currencyId or currencyId == 0 then
                        wlGameTooltip:ClearLines();
                        wlGameTooltip:SetMerchantCostItem(slot, i);

                        if not texture or type(texture) ~= "number" or not wlGameTooltipTextLeft1:GetText() or wlGameTooltipTextLeft1:GetText() == "" then
                            return; -- error
                        end

                        -- Create a unique ID using the icon name and the currency localized name
                        currencyId = texture.."<>"..wlGameTooltipTextLeft1:GetText();
                    end

                    tinsert(merchantCurrencies, { qty, currencyId });
                end

                sort(merchantCurrencies,function(l, r) return l[1] < r[1] end);

                for _, currency in ipairs(merchantCurrencies) do
                    extendedCost = extendedCost.."#"..currency[1].."<>"..currency[2];
                end

                price = wlConcat(price, extendedCost);
            end

            merchantItemList[wlConcat(id, subId, stack, price)] = numAvailable;
        end
    end

    for link, numAvailable in pairs(merchantItemList) do
        wlUpdateVariable(wlUnit, id, "merchant", link, "max", numAvailable);
    end

    if (merchantFilters) then
        SetMerchantFilter(merchantFilters);
    end
    MerchantFrame_Update();
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_TRAINER_SHOW(self)
    wlRegisterUnitGossip("trainer");

    local id, kind = wlUnitGUID("npc");

    if not id or kind ~= "npc" or not wlUnit[id] then
        return;
    end

    local oldIndex = GetTrainerSelectionIndex();

    -- GetTrainerSelectionIndex can return nil.
    if not oldIndex then
        return;
    end

    local fAvail, fUnavail, fUsed = GetTrainerServiceTypeFilter("available"), GetTrainerServiceTypeFilter("unavailable"), GetTrainerServiceTypeFilter("used");
    SetTrainerServiceTypeFilter("available", 1);
    SetTrainerServiceTypeFilter("unavailable", 1);
    SetTrainerServiceTypeFilter("used", 1);

    local standing = select(2, wlUnitFaction("npc"));
    local isTradeSkill = IsTradeskillTrainer();
    local spellId, skill, skillRank, cost, icon, itemId;

    for i=1, GetNumTrainerServices() do
        local spellName, spellSubText, _, _ = GetTrainerServiceInfo(i);
        local reqLevel = GetTrainerServiceLevelReq(i) or 0;

        if spellName then
            wlGameTooltip:SetOwner(UIParent, 'ANCHOR_NONE');
            wlGameTooltip:ClearLines();
            wlGameTooltip:SetTrainerService(i);
            spellId = select(2, wlGameTooltip:GetSpell());
            itemId = wlParseItemLink(select(2, wlGameTooltip:GetItem()));
            wlGameTooltip:Hide();
            icon = GetTrainerServiceIcon(i);

            if isTradeSkill then
                skill, skillRank = GetTrainerServiceSkillReq(i);
                skill, skillRank = skill or "", skillRank or 0;
            else
                skill, skillRank = "", 0;
            end

            cost = wlGetFullCost(wlSelectOne(1, GetTrainerServiceCost(i)), standing);

            wlUpdateVariable(wlUnit, id, "training", wlSelectOne(2, UnitClass("player")), wlConcat(spellId, skill, skillRank, reqLevel, cost, icon, spellName, spellSubText, itemId), "init", 1);
        end
    end

    SetTrainerServiceTypeFilter("available", fAvail and 1 or 0);
    SetTrainerServiceTypeFilter("unavailable", fUnavail and 1 or 0);
    SetTrainerServiceTypeFilter("used", fUsed and 1 or 0);

    if ClassTrainerFrame then
        ClassTrainerFrame.selectedService = oldIndex >= 1 and oldIndex or 1;
        SelectTrainerService(oldIndex >= 1 and oldIndex or 1);
        if (ClassTrainerFrame.scrollFrame) then
            ClassTrainerFrame.scrollFrame.scrollBar:SetValue((ClassTrainerFrame.selectedService-1)*CLASS_TRAINER_SKILL_HEIGHT);
        end
        ClassTrainerFrame_Update();
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CHAT_MSG_MONSTER_EMOTE(self, emote, name)
    if emote == WL_RUNSAWAY then
        if not name or not wlNpcInfo[name] or not wlUnit[wlNpcInfo[name].id] then
            return;
        end

        wlUpdateVariable(wlUnit, wlNpcInfo[name].id, "runsaway", "init", 1);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlCheckUnitForRep(guid, name)
    wlClearTracker("rep");

    local id, kind = wlParseGUID(guid);
    local now = wlGetTime();

    -- npc check
    if not id or id == 0 or kind ~= "npc" or not wlUnit[id] then
        return id, now;
    end

    -- critter check
    wlGameTooltip:ClearLines();
    wlGameTooltip:SetHyperlink("unit:"..guid);
    for line=2, wlGameTooltip:NumLines() do
        local creatureType = _G["wlGameTooltipTextLeft"..line]:GetText();
        if creatureType:match(WL_CRITTER) then
            return id, now;
        end
    end

    local uiMapID = wlGetCurrentUiMapID();
    local taskInfo = C_TaskQuest and C_TaskQuest.GetQuestsForPlayerByMapID(uiMapID);
    local numTaskPOIs = 0;
    if (taskInfo ~= nil) then
        numTaskPOIs = #taskInfo;
    end
    if numTaskPOIs > 0 then -- some bonus objectives reward rep
        return id, now;
    end

    if wlNpcInfo[name] and wlNpcInfo[name].id == id and wlIsValidInterval(wlNpcInfo[name].time, now, 15000) then
        wlTracker.rep.time = now;
        wlTracker.rep.id = id;
        wlTracker.rep.flags = wlNpcInfo[name].isTrivial and 1 or 0;
    end

    return id, now;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local WL_NPC_FLAGS = bit_bor(COMBATLOG_OBJECT_TYPE_NPC, COMBATLOG_OBJECT_TYPE_GUARDIAN);
local WL_NPC_CONTROL_FLAGS = bit_bor(COMBATLOG_OBJECT_CONTROL_NPC, COMBATLOG_OBJECT_AFFILIATION_OUTSIDER);
local WL_PET_FLAGS = bit_bor(COMBATLOG_OBJECT_TYPE_GUARDIAN, COMBATLOG_OBJECT_TYPE_PET);
local WL_PET_CONTROL_FLAGS = bit_bor(COMBATLOG_OBJECT_CONTROL_PLAYER, COMBATLOG_OBJECT_REACTION_FRIENDLY, COMBATLOG_OBJECT_AFFILIATION_MINE);
local WL_MINDCONTROL_FLAGS = bit_bor(COMBATLOG_OBJECT_TYPE_PET, COMBATLOG_OBJECT_CONTROL_PLAYER, COMBATLOG_OBJECT_REACTION_FRIENDLY, COMBATLOG_OBJECT_AFFILIATION_MINE);
local WL_PURE_NPC_FLAGS = bit_bor(COMBATLOG_OBJECT_TYPE_NPC, COMBATLOG_OBJECT_CONTROL_NPC, COMBATLOG_OBJECT_REACTION_HOSTILE, COMBATLOG_OBJECT_AFFILIATION_OUTSIDER);
local wlMostRecentEliteKilled = {};
local wlConsecutiveNpcKills = 0;

function wlEvent_COMBAT_LOG_EVENT_UNFILTERED()

    local timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, extraArg1, extraArg2, extraArg3, extraArg4, extraArg5, extraArg6, extraArg7, extraArg8, extraArg9, extraArg10 = CombatLogGetCurrentEventInfo();

    -- Only for certain events
    local spellId = extraArg1;
    local spellName = extraArg2;

    -- Extract Gas (Cloud)
    if event == "SPELL_CAST_SUCCESS" and spellId == 30427 and sourceGUID == UnitGUID("player") then
        wlClearTracker("spell");
        local now = wlGetTime();
        wlTrackerClearedTime = now;
        wlTracker.spell.time = now;
        wlTracker.spell.action = 30427;

    elseif event == "SPELL_CAST_START" or event == "SPELL_CAST_SUCCESS" or event == "SPELL_AURA_APPLIED" then
        local unitId, kind = wlParseGUID(sourceGUID);

        -- Spell ID is blacklisted
        if not spellId or WL_SPELL_BLACKLIST[spellId] then
            return;
        end

        -- npc check
        if not unitId or unitId == 0 or kind ~= "npc" then
            return;
        end

        if bit_band(WL_NPC_FLAGS, sourceFlags) ~= 0 and bit_band(WL_NPC_CONTROL_FLAGS, sourceFlags) == WL_NPC_CONTROL_FLAGS then

            wlUpdateVariable(wlUnit, unitId, "spec", wlGetInstanceDifficulty(), "spell", (spellId == 0 and spellName or spellId), "add", 1);

        elseif not wlCurrentMindControlTarget and bit_band(WL_PET_FLAGS, sourceFlags) ~= 0 and bit_band(WL_PET_CONTROL_FLAGS, sourceFlags) == WL_PET_CONTROL_FLAGS then

            -- spell_aura_applied is too dangerous for pets/guardians
            -- exit if the pet is a freshly tamed npc
            if event == "SPELL_AURA_APPLIED" or unitId == wlPetBlacklist then
                return;
            end

            local isBpet = false;
            if (bit_band(COMBATLOG_OBJECT_TYPE_PET, sourceFlags) == COMBATLOG_OBJECT_TYPE_PET) then
                isBpet = true;
                for i=1, NUM_PET_ACTION_SLOTS do
                    local petSpellName = GetPetActionInfo(i);
                    if petSpellName == spellName then
                        isBpet = false;
                        break;
                    end
                end
            end
            if (isBpet) then
                return;
            end

            wlUpdateVariable(wlUnit, unitId, "spec", wlGetInstanceDifficulty(), "spell", (spellId == 0 and spellName or spellId), "add", 1);

        elseif bit_band(WL_MINDCONTROL_FLAGS, sourceFlags) == WL_MINDCONTROL_FLAGS and wlCurrentMindControlTarget == unitId and wlUnit[unitId] then

            for i=1, NUM_PET_ACTION_SLOTS do
                local petSpellName, _, _, _, _, autoCastAllowed = GetPetActionInfo(i);

                if petSpellName == spellName then
                    wlUpdateVariable(wlUnit, unitId, "spec", wlGetInstanceDifficulty(), "mcspell", i, "init", wlConcat(spellId == 0 and spellName or spellId, autoCastAllowed or 0));
                    break;
                end
            end
        end

    elseif event == "UNIT_DISSIPATES" then
        -- Register cloud's location
        if wlTracker.spell.action == 30427 and wlIsValidInterval(wlTracker.spell.time or 0, wlGetTime(), 5000) then
            local unitId = wlParseGUID(destGUID);
            wlRegisterUnitLocation(unitId, 1);
            wlTrackerClearedTime = wlGetTime();
            wlClearTracker("spell");
        end

    elseif event == "UNIT_DIED" then -- or event == "UNIT_DESTROYED"
        local id, now = wlCheckUnitForRep(destGUID, destName);
        if bit_band(destFlags, WL_PURE_NPC_FLAGS) ~= WL_PURE_NPC_FLAGS then
            return;
        end
        -- counter to invalidate currency gains if more than 1 kill/sec
        if wlMostRecentEliteKilled.timeOfDeath and wlMostRecentEliteKilled.timeOfDeath + 1000 >= now then
            wlConsecutiveNpcKills = wlConsecutiveNpcKills + 1;
        else
            wlConsecutiveNpcKills = 0;
        end
        wlMostRecentEliteKilled = {
            ["guid"] = destGUID,
            ["id"] = id,
            ["timeOfDeath"] = now,
        };

    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--


----------------------------
----------------------------
--                        --
--   FACTION  FUNCTIONS   --
--                        --
----------------------------
----------------------------

function wlUpdateFaction()
    for i=1, GetNumFactions() do
        local name, _, standing, _, _, _, _, _, header, _, _, _, _, factionId = GetFactionInfo(i);
        if name and not header then
            wlFaction[name] = { standing = standing, id = factionId };
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlUnitFaction(unit)
    wlUpdateFaction();
    wlGameTooltip:ClearLines();
    wlGameTooltip:SetUnit(unit);

    for line=2, wlGameTooltip:NumLines() do
        local faction = _G["wlGameTooltipTextLeft"..line]:GetText();
        if wlFaction[faction] then
            return faction, wlFaction[faction].standing;
        end
    end

    return nil, nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--



---------------------------
---------------------------
--                       --
--   OBJECT  FUNCTIONS   --
--                       --
---------------------------
---------------------------

function wlEvent_ITEM_TEXT_BEGIN(self)
    local id, kind = wlUnitGUID("npc");

    if wlUnitName("npc") == ItemTextGetItem() and id and kind == "object" then
        wlRegisterObject(id);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_MAIL_SHOW(self)
    wlEvent_BlockChatLoot(self);
    local id, kind = wlUnitGUID("npc");
    if id and kind == "object" then
        wlRegisterObject(wlConcat("mail", id, "dummy"));
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRegisterObject(id)
    if not id then
        return;
    end

    local zone, x, y, uiMapID = wlGetLocation();

    if not uiMapID then
        return;
    end

    zone = wlConcat(wlGetInstanceDifficulty(), zone);

    wlUpdateVariable(wlObject, id, zone, uiMapID, "init", { n = 0 });

    local i = wlGetLocationIndex(wlObject[id][zone][uiMapID], x, y, uiMapID, 5);
    if i then
        local n = wlObject[id][zone][uiMapID][i].n;

        wlObject[id][zone][uiMapID][i].x = floor((wlObject[id][zone][uiMapID][i].x * n + x) / (n + 1) + 0.5);
        wlObject[id][zone][uiMapID][i].y = floor((wlObject[id][zone][uiMapID][i].y * n + y) / (n + 1) + 0.5);
        wlObject[id][zone][uiMapID][i].n = n + 1;
    else
        i = wlUpdateVariable(wlObject, id, zone, uiMapID, "n", "add", 1);
        wlUpdateVariable(wlObject, id, zone, uiMapID, i, "set", {
            x = x,
            y = y,
            dl = uiMapID,
            n = 1,
        });
        if (IsInInstance()) then
            local name, iType, difficultyIndex, difficultyName, maxPlayers, dynamicDifficulty, isDynamic,
                instanceMapId, lfgId = GetInstanceInfo();
            wlUpdateVariable(wlObject, id, zone, uiMapID, i, "instance", "set", {
                name = name,
                iType = iType,
                difficultyIndex = difficultyIndex,
                difficultyName = difficultyName,
                maxPlayers = maxPlayers,
                dynamicDifficulty = dynamicDifficulty,
                isDynamic = isDynamic,
                instanceMapId = instanceMapId,
                lfgId = lfgId,
            });
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

--------------------------
--------------------------
--                      --
--   QUEST  FUNCTIONS   --
--                      --
--------------------------
--------------------------

function wlEvent_UNIT_QUEST_LOG_CHANGED(self, unit)
    if unit ~= "player" then
        return;
    end
    self:RegisterEvent("QUEST_LOG_UPDATE");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_QUEST_LOG_UPDATE(self)
    self:UnregisterEvent("QUEST_LOG_UPDATE");

    if not wlEvent or not wlId or not wlEvent[wlId] or not wlN or not wlEvent[wlId][wlN] then
        return;
    end

    local eventId = wlGetNextEventId();

    local selectedQuest = GetQuestLogSelection();

    wlCurrentQuestObj = 3 - wlCurrentQuestObj; -- toggle: 1 <-> 2

    for k, _ in ipairs(wlQuestObjectives[wlCurrentQuestObj]) do
        wlQuestObjectives[wlCurrentQuestObj][k] = nil;
    end

    local foundQuests, numQuests, idx, objCounter = 0, select(2, GetNumQuestLogEntries()), 1, 0;
    while foundQuests <= numQuests do
        local title, isHeader, questId;
        local questLogTitle = { GetQuestLogTitle(idx) };
        if not questLogTitle[1] then
            break;
        end
        title       = questLogTitle[1];
        isHeader    = questLogTitle[4];
        questId     = questLogTitle[8];
        if not isHeader then
            SelectQuestLogEntry(idx);

            foundQuests = foundQuests + 1;

            wlUpdateVariable(wlQuestLog, foundQuests, "title", "set", title);
            wlQuestLog[foundQuests].id = questId;
            wlQuestLog[foundQuests].timer = ceil((GetQuestLogTimeLeft() or 0) / 15) * 15;
            wlQuestLog[foundQuests].sharable = GetQuestLogPushable() or 0;

            for objId=1, GetNumQuestLeaderBoards(idx) do
                local _, kind, done = GetQuestLogLeaderBoard(objId, idx);

                if kind == "event" then

                    objCounter = objCounter + 1;

                    wlUpdateVariable(wlQuestObjectives, wlCurrentQuestObj, objCounter, "questId", "set", questId);
                    wlQuestObjectives[wlCurrentQuestObj][objCounter].objId = objId;
                    wlQuestObjectives[wlCurrentQuestObj][objCounter].done = done;

                    local index = wlTableFind(wlQuestObjectives[3 - wlCurrentQuestObj], function(a, questId, objId) return a.questId == questId and a.objId == objId; end, questId, objId)
                    if index and done and wlQuestObjectives[3 - wlCurrentQuestObj][index].done ~= done then
                        wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);
                        wlEvent[wlId][wlN][eventId].what = "questStatus";
                        wlEvent[wlId][wlN][eventId][wlConcat(questId, objId, done)] = wlConcat(wlGetLocation(),wlGetCurrentUiMapID());
                    end
                end
            end
        end
        idx = idx + 1;
    end

    SelectQuestLogEntry(selectedQuest);

    if wlTracker.quest.time and wlTracker.quest.action == "accept" then
        local i = wlTableFind(wlQuestLog, function(a, v) return a.id and a.id == v; end, wlTracker.quest.id);
        if i and wlIsValidInterval(wlTracker.quest.time, wlGetTime(), 5000) then
            wlRegisterQuestAccept(i);
        end
    end

end


function wlEvent_QUEST_LOOT_RECEIVED(self, ...)

    local questId, actualRewardItemLink = ...;

    if not wlEvent or not wlId or not wlEvent[wlId] or not wlN or not wlEvent[wlId][wlN] then
        return;
    end

    if not wlTracker.quest or wlTracker.quest.id ~= questId or not actualRewardItemLink or not wlTracker.quest.rewardItemLinks then
        return;
    end

    local rewardItemId = wlParseItemLink(actualRewardItemLink);

    for i = 1, #wlTracker.quest.rewardItemLinks do
        local questRewardItemId = wlParseItemLink(wlTracker.quest.rewardItemLinks[i]);
        if (questRewardItemId == rewardItemId) then
            return;
        end
    end

    -- associate reward from quest with the actual item received
    local virtualRewardItemLink = wlTracker.quest.rewardItemLinks[1];   -- currently assume the first one
    local virtualRewardItemId = wlParseItemLink(virtualRewardItemLink);
    local eventId = wlGetNextEventId();
    wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);
    wlEvent[wlId][wlN][eventId].id = virtualRewardItemId;
    wlEvent[wlId][wlN][eventId].action = "Opening";
    wlEvent[wlId][wlN][eventId].kind = "item";
    wlEvent[wlId][wlN][eventId].what = "loot";
    wlEvent[wlId][wlN][eventId].dd = 0;
    wlEvent[wlId][wlN][eventId].flags = 0;
    wlEvent[wlId][wlN][eventId].isAoeLoot = 0;
    wlEvent[wlId][wlN][eventId].questId = questId;
    wlEvent[wlId][wlN][eventId].virtualRewardItemLink = virtualRewardItemLink;
    wlEvent[wlId][wlN][eventId].drop = { tostring(rewardItemId) .. "^1" };
    wlEvent[wlId][wlN][eventId].dropLink = { actualRewardItemLink };

end


--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetQuestItemLinks(typeName)

    local itemLinks = {};
    local nRewards = 0;

    if typeName == "reward" then
        nRewards = GetNumQuestRewards();
    elseif typeName == "choice" then
        nRewards = GetNumQuestChoices();
    else
        return nil;
    end

    for i = 1,nRewards do
        local itemLink = GetQuestItemLink(typeName, i);
        if (itemLink) then
            table.insert(itemLinks, itemLink);
        else
            break;
        end
    end

    if #itemLinks > 0 then
        return itemLinks;
    end

    return nil;
end

function wlGetQuestRewardCurrencies()

    if (not GetNumRewardCurrencies or not GetQuestCurrencyID) then
        return;
    end

    local nCurrencies = GetNumRewardCurrencies();

    if nCurrencies == 0 then
        return nil;
    end

    local currencies = {}

    for i = 1,nCurrencies do
        local id = GetQuestCurrencyID("reward", i);
        local name, _, qty, _ = GetQuestCurrencyInfo("reward", i);
        currencies[id] = qty;
    end

    return currencies;

end


--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_QUEST_DETAIL(self)
    wlClearTracker("quest");

    local name, id, kind = wlUnitName("questnpc"), wlUnitGUID("questnpc");
    if not name or not id then
        return;
    end

    if kind == "object" then
        wlRegisterObject(id);
    end

    wlTracker.quest.time = wlGetTime();
    wlTracker.quest.action = "accept";
    wlTracker.quest.id = GetQuestID();
    wlTracker.quest.targetname = name;
    wlTracker.quest.targetkind = kind;
    wlTracker.quest.targetid = id;

    -- ...Wait for the quest log refresh to register the quest
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_QUEST_PROGRESS(self)
    wlClearTracker("quest");

    wlTracker.quest.id = GetQuestID();
    wlTracker.quest.progress = wlGetSourceText(GetProgressText());

    wlTracker.quest.time = wlGetTime();
    wlTracker.quest.action = "progress";
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_QUEST_COMPLETE(self)
    if not wlTracker.quest then
        return;
    end
    if wlTracker.quest.action ~= "progress" or wlTracker.quest.id ~= GetQuestID() then
        wlClearTracker("quest"); -- Not the same quest

        wlTracker.quest.id = GetQuestID();
        wlTracker.quest.progress = "";
    end

    wlTracker.quest.rewardItemLinks = wlGetQuestItemLinks("reward");
    wlTracker.quest.choiceItemLinks = wlGetQuestItemLinks("choice");
    wlTracker.quest.rewardCurrencies = wlGetQuestRewardCurrencies();
    wlTracker.quest.complete = wlGetSourceText(GetRewardText());

    wlTracker.quest.time = wlGetTime();
    wlTracker.quest.action = "complete";
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetQuestReward(...) -- Turn-in
    local success, msg = pcall(wlRegisterQuestReturn);

    if not success then
        error(msg);
    end

    return wlDefaultGetQuestReward(...);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRegisterQuestAccept(index)
    if not wlEvent or not wlId or not wlEvent[wlId] or not wlN or not wlEvent[wlId][wlN] then
        return;
    end

    local eventId = wlGetNextEventId();

    wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);

    wlEvent[wlId][wlN][eventId].what = "quest";
    wlEvent[wlId][wlN][eventId].action = "accept";

    wlEvent[wlId][wlN][eventId].timer = wlQuestLog[index].timer;
    wlEvent[wlId][wlN][eventId].sharable = wlQuestLog[index].sharable;

    wlEvent[wlId][wlN][eventId].questid = wlTracker.quest.id;
    wlEvent[wlId][wlN][eventId].targetname = wlTracker.quest.targetname;
    wlEvent[wlId][wlN][eventId].targetkind = wlTracker.quest.targetkind;
    wlEvent[wlId][wlN][eventId].targetid = wlTracker.quest.targetid;

    wlClearTracker("quest");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRegisterQuestReturn()
    if not wlTracker.quest then
        return;
    end

    if wlTracker.quest.action ~= "complete" then
        return;
    end

    local name, id, kind = wlUnitName("questnpc"), wlUnitGUID("questnpc");

    if not name or not id then
        return;
    end

    if kind == "object" then
        wlRegisterObject(id);
    end

    if not wlEvent or not wlId or not wlEvent[wlId] or not wlN or not wlEvent[wlId][wlN] then
        return;
    end

    local eventId = wlGetNextEventId();

    wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);

    wlEvent[wlId][wlN][eventId].what = "quest";
    wlEvent[wlId][wlN][eventId].action = "turn-in";

    wlEvent[wlId][wlN][eventId].questid = wlTracker.quest.id;
    wlEvent[wlId][wlN][eventId].progress = wlTracker.quest.progress;
    wlEvent[wlId][wlN][eventId].complete = wlTracker.quest.complete;

    wlEvent[wlId][wlN][eventId].targetname = name;
    wlEvent[wlId][wlN][eventId].targetkind = kind;
    wlEvent[wlId][wlN][eventId].targetid = id;

    wlEvent[wlId][wlN][eventId].rewardItemLinks = wlTracker.quest.rewardItemLinks;
    wlEvent[wlId][wlN][eventId].choiceItemLinks = wlTracker.quest.choiceItemLinks;
    wlEvent[wlId][wlN][eventId].rewardCurrencies = wlTracker.quest.rewardCurrencies;
    wlEvent[wlId][wlN][eventId].playerLevel = UnitLevel("player");
    wlEvent[wlId][wlN][eventId].playerWarModeActive = UnitIsWarModeActive and UnitIsWarModeActive("player") or false;
    wlEvent[wlId][wlN][eventId].playerWarModeDesired = UnitIsWarModeDesired and UnitIsWarModeDesired("player") or false;
    wlEvent[wlId][wlN][eventId].playerWarModePhased = UnitIsWarModePhased and UnitIsWarModePhased("player") or false;

    wlTracker.quest.time = wlGetTime();
    wlTracker.quest.eventId = eventId;
    wlTracker.quest.action = "turn-in";
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

-- Localized string for matching reputation increase chat combat message
local WL_REP_INC = string.gsub(string.gsub(FACTION_STANDING_INCREASED, "(%%s)", "(.+)"), "(%%d)", "(%%d+)");

-- Localized string for matching reputation decrease chat combat message
local WL_REP_DEC = string.gsub(string.gsub(FACTION_STANDING_DECREASED, "(%%s)", "(.+)"), "(%%d)", "(%%d+)");

-- Event callback for CHAT_MSG_COMBAT_FACTION_CHANGE for gathering reputation changes
function wlEvent_CHAT_MSG_COMBAT_FACTION_CHANGE(self, msg)
    local _, _, factionName, amount = string.find(msg, WL_REP_INC);
    if (not factionName or not amount) then
        _, _, factionName, amount = string.find(msg, WL_REP_DEC);
        if (amount) then
            amount = -amount;
        end
    end

    if (not factionName or not amount) then
        return;
    end

    if (not wlFaction[factionName]) then
        wlUpdateFaction();
    end

    if wlIsValidInterval(wlTracker.quest.time or 0, wlGetTime(), 1000) and wlTracker.quest.action == "turn-in" then
        return; -- Quest reputation
    elseif not wlIsValidInterval(wlTracker.rep.time or 0, wlGetTime(), 1000) or not wlFaction[factionName] then
        return; -- Not kill reputation
    end

    local repMod = 1;
    if IsSpellKnown(20599) then -- Diplomacy
        repMod = repMod + 0.1;
    end
    if IsSpellKnown(170200) then -- Trading Pact
        repMod = repMod + 0.2;
    end
    for buffName, factMod in pairs(WL_REP_MODS) do
        if AuraUtil.FindAuraByName(buffName, "player") then
            if factionName == factMod[1] or factMod == nil then
                repMod = repMod + factMod[2];
            end
        end
    end

    amount = floor((amount/repMod) + 0.5);
    wlUpdateVariable(wlUnit, wlTracker.rep.id, "spec", wlGetInstanceDifficulty(), "rep", wlConcat(factionName, wlFaction[factionName].standing, amount, wlTracker.rep.flags, wlFaction[factionName].id), "add", 1);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetInstanceDifficulty()
    local _, instanceType, instanceDifficulty, _, maxPlayers, dynamicDifficulty = GetInstanceInfo();
    if instanceType == "party" then
        return -instanceDifficulty;
    elseif instanceType == "raid" then
        return instanceDifficulty;
    else
        return 0;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

-------------------------
-------------------------
--                     --
--   LOOT  FUNCTIONS   --
--                     --
-------------------------
-------------------------

local WL_NPC, WL_OBJECT, WL_ITEM, WL_ZONE = 1, 2, 4, 64;

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

--    ID = { spellName, sourceFlags, isLootSpell }
local wlSpells = {
    Disenchanting = { GetSpellInfo(13262) or "", WL_ITEM, 1 },
    Fishing = { GetSpellInfo(7620) or "", WL_ZONE, 1 },
    HerbGathering = { GetSpellInfo(2366) or "", WL_NPC + WL_OBJECT, 1 },
    Mining = { GetSpellInfo(2575) or "", WL_NPC + WL_OBJECT, 1 },
    Opening = { GetSpellInfo(3365) or "", WL_OBJECT, 2 },
    PickPocketing = { GetSpellInfo(921) or "", WL_NPC, 2 },
    Skinning = { GetSpellInfo(8613) or "", WL_NPC, 1 },
    MindControl = { GetSpellInfo(605) or "", WL_NPC, nil },
    -- Prospecting = { GetSpellInfo(31252) or "", WL_ITEM, 1 },
    -- Engineering = { GetSpellInfo(49383) or "", WL_NPC, 1 },
    -- Milling = { GetSpellInfo(51005) or "", WL_ITEM, 1 },
    -- Archaeology = { GetSpellInfo(73979) or "", WL_OBJECT, 1 },
    -- Logging = { GetSpellInfo(167895) or "", WL_OBJECT, nil },
    -- BeastLore = { GetSpellInfo(1462) or "", WL_NPC, nil },
    -- PickLocking = { GetSpellInfo(1804) or "", WL_OBJECT, 1 },
};

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlFindSpell(name)
    for k,v in pairs(wlSpells) do
        if name:match("^"..v[1]) then
            return k;
        end
    end

    return nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_UNIT_SPELLCAST_SENT(self, unit, target, spellCast, spell)
    if unit ~= "player" or wlSpellCastID then
        return;
    end

    local spellId = wlFindSpell(GetSpellInfo(spell));

    if spellId then

        wlClearTracker("spell");
        local now = wlGetTime();
        wlTrackerClearedTime = now;

        local npcName, npcUnit = GameTooltip:GetUnit();
        if not npcName and wlUnitName("target") == target then
            npcName, npcUnit = target, "target";
        end

        local itemName, itemLink = GameTooltip:GetItem();

        -- npc
        if bit_band(wlSpells[spellId][2], WL_NPC) ~= 0 and npcName and not itemName then

            local name, id = wlUnitName(npcUnit or ""), wlUnitGUID(npcUnit or "");

            if npcName ~= target or name ~= target or not id then
                return;
            end

            wlTracker.spell.kind = "npc";
            wlTracker.spell.id = id;
            wlTracker.spell.name = name;

        -- item
        elseif bit_band(wlSpells[spellId][2], WL_ITEM) ~= 0 then

            wlTracker.spell.kind = "item";

            if itemName and (target == nil or itemName == target) then
                wlTracker.spell.id = wlParseItemLink(itemLink);
                wlTracker.spell.name = itemName;

            elseif target and target ~= "" then
                wlTracker.spell.id = wlParseItemLink(wlSelectOne(2, GetItemInfo(target)));
                wlTracker.spell.name = target;

        else
            wlTracker.spell.id = nil;
            wlTracker.spell.name = nil;
        end

        -- object
        elseif bit_band(wlSpells[spellId][2], WL_OBJECT) ~= 0 and not npcName and not itemName then

            if target == "" then
                return;
            end

            local zone, x, y, uiMapID = wlGetLocation();

            wlTracker.spell.kind = "object";
            wlTracker.spell.name = target;
            wlTracker.spell.zone = zone;
            wlTracker.spell.x = x;
            wlTracker.spell.y = y;
            wlTracker.spell.dl = uiMapID;

        -- zone (fishing)
        elseif bit_band(wlSpells[spellId][2], WL_ZONE) ~= 0 and not npcName and not itemName then

            -- 8.0.1: target is nil for fishing now.
            --if target ~= "" then
            --    return;
            --end

            local zone, x, y, uiMapID = wlGetLocation();

            wlTracker.spell.kind = "zone";
            wlTracker.spell.zone = zone;
            wlTracker.spell.x = x;
            wlTracker.spell.y = y;
            wlTracker.spell.dl = uiMapID;

        else
            return;
        end

        wlTracker.spell.time = now;
        wlTracker.spell.event = "SENT";
        wlTracker.spell.action = spellId;

        -- associate unit_spellcast_* events
        wlSpellCastID = spell;
    end
end

-- This fires off for bonus rolls, and some boss loots that prompt a loot toast, in special events.
-- We only care about the spellId, thus the others are 'Throw away' variables because we don't
-- know what to do with them right now.
function wlEvent_SPELL_CONFIRMATION_PROMPT(self, spellId, a, b, c, d, e)
    if WL_LOOT_TOAST_BOSS[spellId] then
        local now = wlGetTime();
        wlClearTracker("spell");
        wlTrackerClearedTime = now;
        wlLootToastSourceId = spellId;
        wlCurrentLootToastEventId = nil;
        wlTimers.clearLootToastSource = now + 250;
        return;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_UNIT_SPELLCAST_SUCCEEDED(self, unit, spellCast, spellId)
    if unit ~= "player" then
        return;
    end

    wlSpellCastID = nil;

    if WL_LOOT_TOAST_BAGS[spellId] then
        local now = wlGetTime();
        wlClearTracker("spell");
        wlTrackerClearedTime = now;
        wlLootToastSourceId = WL_LOOT_TOAST_BAGS[spellId];
        wlCurrentLootToastEventId = nil;
        wlTimers.clearLootToastSource = now + 250;
        return;
    elseif WL_LOOT_TOAST_BOSS[spellId] then
        -- This should not be hit; however, this is "better safe than sorry" and does
        -- sometimes get hit by the OPENING spell
        local now = wlGetTime();
        wlClearTracker("spell");
        wlTrackerClearedTime = now;
        wlLootToastSourceId = spellId;
        wlCurrentLootToastEventId = nil;
        wlTimers.clearLootToastSource = now + 250;
        return;
    end

    if not wlChatLootIsBlocked and WL_SALVAGE_ITEMS[spellId] ~= nil then
        local now = wlGetTime();
        wlClearTracker("spell");
        wlTrackerClearedTime = now;
        wlTracker.spell.id = spellId;
        wlTracker.spell.time = now;
        wlTracker.spell.specialEventId = nil;
        wlTimers.clearSpecialLoot = now + 500;
        return;
    end

    if wlForgeSpells[spellId] then
        wlRegisterObject(WL_FORGE_ID);
    end
    if wlAnvilSpells[spellId] then
        wlRegisterObject(WL_ANVIL_ID);
    end

    if wlTracker.spell and wlTracker.spell.time and wlTracker.spell.event == "SENT" and wlTracker.spell.action == wlFindSpell(GetSpellInfo(spellId)) then
        wlTracker.spell.event = "SUCCEEDED";
        wlTracker.spell.time = wlGetTime();
        if wlTracker.spell.action == "Logging" and wlTracker.spell.name then -- save location here since that action won't trigger a loot frame
            wlRegisterObject(wlConcat(wlTracker.spell.action, "_", wlTracker.spell.name));
            wlClearTracker("spell");
            wlTrackerClearedTime = wlGetTime();
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_UNIT_SPELLCAST_FAILED(self, unit, spellCast, spellID)
    -- only reset wlTracker.spell if the 'failed' comes from an associated 'sent'
    if unit == "player" and wlSpellCastID == spellID then
        wlSpellCastID = nil;
        wlClearTracker("spell");
        wlTrackerClearedTime = wlGetTime();
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_SHOW_LOOT_TOAST(self, typeIdentifier, itemLink, quantity, specID, sex, isPersonal, lootSource)
    if not typeIdentifier or (typeIdentifier ~= "item" and typeIdentifier ~= "money" and typeIdentifier ~= "currency") then
        return;
    end

    if wlLootToastSourceId then
        if not wlEvent or not wlId or not wlEvent[wlId] or not wlN or not wlEvent[wlId][wlN] then
            return;
        end

        local _, _, mshome, msworld = GetNetStats();
        if mshome > WL_PING_MAX or msworld > WL_PING_MAX then
            return;
        end

        if not wlCurrentLootToastEventId then
            wlCurrentLootToastEventId = wlGetNextEventId();
        end
        local eventId = wlCurrentLootToastEventId;

        if WL_LOOT_TOAST_BOSS[wlLootToastSourceId] then
            wlTracker.spell.action = "Killing";
            wlTracker.spell.kind = "npc";
            wlTracker.spell.id = WL_LOOT_TOAST_BOSS[wlLootToastSourceId];
            wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);
            wlEvent[wlId][wlN][eventId].what = "loot";
            wlTableCopy(wlEvent[wlId][wlN][eventId], wlTracker.spell);
            wlEvent[wlId][wlN][eventId].dd = wlGetInstanceDifficulty();
            wlEvent[wlId][wlN][eventId].flags = 0;
        else
            wlTracker.spell.action = "Opening";
            wlTracker.spell.kind = "item";
            wlTracker.spell.id = wlLootToastSourceId;
            wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);
            wlEvent[wlId][wlN][eventId].what = "loot";
            wlTableCopy(wlEvent[wlId][wlN][eventId], wlTracker.spell);
            wlEvent[wlId][wlN][eventId].dd = wlGetInstanceDifficulty();
            wlEvent[wlId][wlN][eventId].flags = 0;
        end


        local typeId = nil;
        local currencyId = nil;
        if typeIdentifier == "item" then
            typeId = wlParseItemLink(itemLink);
        elseif typeIdentifier == "money" then
            typeId = "coin";
        elseif typeIdentifier == "currency" then
            typeId = "currency";
            currencyId = wlParseCurrencyLink(itemLink);
        end

        wlEvent[wlId][wlN][eventId]["drop"] = wlEvent[wlId][wlN][eventId]["drop"] or {};
        wlEvent[wlId][wlN][eventId].fromLootToast = 1;
        if typeId == "currency" then
            wlUpdateVariable(wlEvent, wlId, wlN, eventId, "drop", #wlEvent[wlId][wlN][eventId]["drop"] + 1, "set", wlConcat(typeId, quantity, currencyId));
        else
            wlUpdateVariable(wlEvent, wlId, wlN, eventId, "drop", #wlEvent[wlId][wlN][eventId]["drop"] + 1, "set", wlConcat(typeId, quantity));
        end

    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlBagItemOnUse(link, bag, slot)
    local now = wlGetTime();
    if wlIsValidInterval(wlTracker.spell.time or 0, now, 250) and wlTracker.spell.kind == "item" and wlTracker.spell.event == "SENT" then
        local id, _, _, _, _, _, _, name = wlParseItemLink(link);

        if (wlTracker.spell.id and wlTracker.spell.id ~= id) or (wlTracker.spell.name and wlTracker.spell.name ~= name) then
            return;
        end

        if not wlTracker.spell.id or not wlTracker.spell.name then
            wlTracker.spell.id = id;
            wlTracker.spell.name = name;
        end

        return;
    end

    if link and (not bag or not slot) then
        bag, slot = wlGuessBagAndSlot(link);
    end

    local id = wlParseItemLink(link);
    if bag and slot then
        local openable = select(6, GetContainerItemInfo(bag, slot));
        if openable then
            wlGameTooltip:ClearLines();
            wlGameTooltip:SetBagItem(bag, slot);
            for i=2, wlGameTooltip:NumLines() do
                local text = _G["wlGameTooltipTextLeft"..i]:GetText();
                if text == ITEM_OPENABLE then
                    wlClearTracker("spell");
                    wlTrackerClearedTime = now;
                    wlTracker.spell.time = now;
                    wlTracker.spell.event = "SUCCEEDED";
                    wlTracker.spell.action = "Opening";
                    wlTracker.spell.kind = "item";
                    wlTracker.spell.id = id;
                    wlTracker.spell.name = wlGameTooltipTextLeft1:GetText();
                    if not wlChatLootIsBlocked and WL_SPECIAL_CONTAINERS[id] then
                        wlTracker.spell.specialEventId = nil;
                        wlTimers.clearSpecialLoot = now + 500;
                    end
                    break;
                end
            end
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGuessBagAndSlot(link)
    local itemID = wlParseItemLink(link);
    for bag = NUM_BAG_FRAMES, 0, -1 do
        for slot=1, GetContainerNumSlots(bag) do
            if wlParseItemLink(GetContainerItemLink(bag, slot)) == itemID then
                return bag, slot;
            end
        end
    end
    return nil, nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetLockedID()
    -- an item becomes locked (grayed out) when it is being looted
    for bag = NUM_BAG_FRAMES, 0, -1 do
        for slot=1, GetContainerNumSlots(bag) do
            if select(3, GetContainerItemInfo(bag, slot)) then
                local link = GetContainerItemLink(bag, slot);
                return wlParseItemLink(link);
            end
        end
    end
    if wlLockedID ~= nil then
        local ret = wlLockedID;
        wlLockedID = nil;
        return ret;
    end
    return nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_LOOT_CLOSED(self)
    wlClearTracker("spell");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_LOOT_OPENED(self)

    if not wlEvent or not wlId or not wlEvent[wlId] or not wlN or not wlEvent[wlId][wlN] then
        return;
    end

    local _, _, mshome, msworld = GetNetStats();
    if mshome > WL_PING_MAX or msworld > WL_PING_MAX then
        wlClearTracker("spell");
        return;
    end

    wipe(wlLootedCurrenciesBlacklist);

    local now = wlGetTime();
    local eventId = wlGetNextEventId();
    local fromFishing = IsFishingLoot();

    -- Clean wlLootCooldown variable
    for k, v in pairs(wlLootCooldown) do
        if v < now - 300000 then -- 5min
            wlLootCooldown[k] = nil;
        end
    end

    if wlTracker.spell.time then

        if (not wlIsValidInterval(wlTracker.spell.time or 0, now, 1000) and not fromFishing) or wlTracker.spell.event ~= "SUCCEEDED" or not wlSpells[wlTracker.spell.action][3] then
            wlClearTracker("spell");
            return;
        end

        if fromFishing and wlTracker.spell.kind ~= "zone" then
            wlClearTracker("spell");
            return;
        end

        if wlTracker.spell.id then
            wlTracker.spell.name = nil;
        end

        if wlTracker.spell.kind == "item" then
            -- double check ID for bag items, we're never too sure
            local lockedID = wlGetLockedID();

            -- Check for disenchanting here and set the source of the loot (old spell cast target)
            if not wlTracker.spell.id and wlTracker.spell.action == "Disenchanting" then
                wlTracker.spell.id = lockedID;
                wlTracker.spell.name = nil;
            elseif not wlTracker.spell.id or lockedID ~= wlTracker.spell.id then
                wlClearTracker("spell");
                return;
            end

            if wlLootCooldown[wlTracker.spell.id] then
                wlClearTracker("spell");
                return;
            end
            wlLootCooldown[wlTracker.spell.id] = now;
        end

        wlTracker.spell.time = nil;
        wlTracker.spell.event = nil;

    elseif wlIsValidName(UnitName("target")) and wlPlayerCanHaveTap("target") and wlUnitIsClose("target") and UnitIsDead("target") and not UnitIsFriend("player", "target") and not fromFishing then
        if UnitIsPlayer("target") then
            -- not used
            -- wlTracker.spell.action = "Killing";
            -- wlTracker.spell.kind = "player";
            -- wlTracker.spell.id = wlConcat(wlSelectOne(2, UnitRace("target")), wlSelectOne(2, UnitClass("target")));
            return;

        elseif not UnitPlayerControlled("target") then

            -- let's make sure there are no interferences
            if wlTrackerClearedTime >= now - 2000 then
                return;
            end

            wlTracker.spell.action = "Killing";
            wlTracker.spell.kind = "npc";
            wlTracker.spell.id = wlUnitGUID("target");


        else -- pets
            return;
        end

    else
        return;
    end

    -- Loot cooldown
    if wlTracker.spell.action == "Killing" or (wlSpells[wlTracker.spell.action] and wlSpells[wlTracker.spell.action][3] == 1) then
        local guid = nil;

        if wlTracker.spell.kind == "npc" then
            guid = wlConcat(wlTracker.spell.action, UnitGUID("target"));
        elseif wlTracker.spell.kind == "object" then
            guid = wlConcat(wlTracker.spell.action, wlTracker.spell.zone, wlTracker.spell.name);
        end

        if wlLootCooldown[guid] then
            wlClearTracker("spell");
            return;
        end

        if wlIsInParty() then
            -- SendAddonMessage does not allow to send nil or "" as msg.
            -- Only send it if we got a valid 'guid'. This should not affect any data.
            if guid then
                SendAddonMessage("WL_LOOT_COOLDOWN", guid,
                        (wlIsInBattleground() and "BATTLEGROUND") or
                        IsInRaid() and "RAID" or "PARTY");
            end
        else
            wlEvent_CHAT_MSG_ADDON(self, "WL_LOOT_COOLDOWN", guid, "RAID", UnitName("player"));
        end
    end

    wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);
    wlEvent[wlId][wlN][eventId].what = "loot";
    wlTableCopy(wlEvent[wlId][wlN][eventId], wlTracker.spell);

    local instanceDiff = wlGetInstanceDifficulty();
    wlEvent[wlId][wlN][eventId].dd = instanceDiff;

    if wlEvent[wlId][wlN][eventId].zone ~= nil then
        wlEvent[wlId][wlN][eventId].uiMapID = wlGetCurrentUiMapID();
    end

    local flags = 0;
    local faction = UnitFactionGroup("player");
    if faction == "Alliance" then
        flags = flags + 1024;
    elseif faction == "Horde" then
        flags = flags + 2048;
    end

    wlEvent[wlId][wlN][eventId].flags = flags;

    local targetLoots = {};
    local aoeNpcs = {};
    local targetGUID = UnitGUID("target");
    local objectId = nil;

    local i = 1;
    local numLootItems = GetNumLootItems();
    for slot=1, numLootItems do
        local lootSources = { GetLootSourceInfo(slot) };

        local slotType = GetLootSlotType(slot);
        if slotType ~= LOOT_SLOT_NONE then
            local typeId = nil;
            local currencyId = nil;

            if slotType == LOOT_SLOT_ITEM then
                typeId = wlParseItemLink(GetLootSlotLink(slot));
                -- for sourceIndex = 1, #lootSources, 2 do
                --     print(("%s looted %d of %s"):format(wlParseGUID(lootSources[sourceIndex]), lootSources[sourceIndex + 1], GetItemInfo(itemId)));
                -- end
            elseif slotType == LOOT_SLOT_MONEY then
                typeId = "coin";
            elseif slotType == LOOT_SLOT_CURRENCY then
                local icon_file_name, currencyName, currencyQuantity, currencyRarity, currencyLocked = GetLootSlotInfo(slot);
                currencyId = WL_CURRENCIES[currencyName:lower()];

                typeId = "currency-" .. (currencyId or 0);

                tinsert(wlLootedCurrenciesBlacklist, {
                    ["currencyId"] = currencyId,
                    ["currencyQuantity"] = currencyQuantity,
                });
            end

            if typeId ~= nil then
                for sourceIndex = 1, #lootSources, 2 do
                    local qty = lootSources[sourceIndex + 1];
                    local aoeGUID = lootSources[sourceIndex];
                    if ((wlTracker.spell.action == "Killing" and targetGUID == aoeGUID) or wlTracker.spell.action ~= "Killing") then
                        if not targetLoots[typeId] then
                            targetLoots[typeId] = {};
                        end
                        targetLoots[typeId][1] = (targetLoots[typeId][1] or 0) + qty;
                        targetLoots[typeId][2] = (targetLoots[typeId][2] or 0) + wlSelectOne(3, GetLootSlotInfo(slot));
                        targetLoots[typeId][3] = (currencyId or 0);
                        if wlTracker.spell.kind == "object" then
                            local guidId, guidKind = wlParseGUID(aoeGUID);
                            if (guidKind == "object") then
                                objectId = guidId;
                            end
                        end
                    else
                        if not aoeNpcs[aoeGUID] then
                            aoeNpcs[aoeGUID] = {};
                        end
                        if not aoeNpcs[aoeGUID][typeId] then
                            aoeNpcs[aoeGUID][typeId] = {};
                        end
                        aoeNpcs[aoeGUID][typeId][1] = (aoeNpcs[aoeGUID][typeId][1] or 0) + qty;
                        aoeNpcs[aoeGUID][typeId][2] = (currencyId or 0);
                    end
                end
            end
        end
    end

    if objectId then
        wlEvent[wlId][wlN][eventId].id = objectId;
        wlRegisterObject(objectId);
    end

    local isAoeLoot = (next(aoeNpcs) ~= nil) and 1 or 0;
    wlEvent[wlId][wlN][eventId].isAoeLoot = isAoeLoot;

    if numLootItems == 0 then
        targetLoots["empty"] = { 0, 0, 0 };
    end

    for typeId, qtyInfo in pairs(targetLoots) do
        local qty = qtyInfo[1] or qtyInfo[2];
        local currencyId = qtyInfo[3];
        if currencyId > 0 then
            wlUpdateVariable(wlEvent, wlId, wlN, eventId, "drop", i, "set", wlConcat("currency", qty, currencyId));
        else
            wlUpdateVariable(wlEvent, wlId, wlN, eventId, "drop", i, "set", wlConcat(typeId, qty));
        end
        i = i + 1;
    end

    for aoeGUID, dropInfo in pairs(aoeNpcs) do
        -- Enclosing loop for wlLootCooldown purposes
        repeat
            local guidMsg = wlConcat(wlTracker.spell.action, aoeGUID);
            if wlLootCooldown[guidMsg] then
                -- wlClearTracker("spell");
                -- The next line jumps to the enclosing "for" loop
                -- Equivalent to "continue;"
                do break end;
            end
            if wlIsInParty() then
                SendAddonMessage("WL_LOOT_COOLDOWN", guidMsg,
                        (wlIsInBattleground() and "BATTLEGROUND") or
                        IsInRaid() and "RAID" or "PARTY");
            else
                wlEvent_CHAT_MSG_ADDON(self, "WL_LOOT_COOLDOWN", guidMsg, "RAID", UnitName("player"));
            end

            local unitId, unitKind = wlParseGUID(aoeGUID);
            if (unitKind ~= "npc") then
                unitId = nil;
            end
            local aoeEventId = wlGetNextEventId();
            local aoeCounter = 1;
            wlUpdateVariable(wlEvent, wlId, wlN, aoeEventId, "initArray", 0);
            wlEvent[wlId][wlN][aoeEventId].what = "loot";
            wlEvent[wlId][wlN][aoeEventId].isAoeLoot = isAoeLoot;
            wlTableCopy(wlEvent[wlId][wlN][aoeEventId], wlTracker.spell);
            wlEvent[wlId][wlN][aoeEventId].dd = instanceDiff;
            wlEvent[wlId][wlN][aoeEventId].flags = flags;
            wlEvent[wlId][wlN][aoeEventId].id = unitId;
            -- Add Drops
            for typeId, qty in pairs(dropInfo) do
                if qty[2] > 0 then -- Currency
                    wlUpdateVariable(wlEvent, wlId, wlN, aoeEventId, "drop", aoeCounter, "set", wlConcat("currency", qty[1], qty[2]));
                else -- Money or Item
                    wlUpdateVariable(wlEvent, wlId, wlN, aoeEventId, "drop", aoeCounter, "set", wlConcat(typeId, qty[1]));
                end
                aoeCounter = aoeCounter + 1;
            end
            -- End inner loop
            break;
        until true
    end

    -- wlDebugFrame:Show();
    -- wlPrint("-------------------------------");
    -- wlTablePrint(wlTracker.spell);
    -- wlTablePrint(wlEvent[wlId][wlN]);
    -- wlTablePrint(aoeNpcs);
    -- for slot=1, GetNumLootItems() do
    --     wlPrint("------GetLootSourceInfo(" .. slot .. ")------");
    --     wlPrint(GetLootSourceInfo(slot));
    -- end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_ITEM_LOCK_CHANGED(self, bag, slot)

    if not bag or not slot or not wlTracker.spell or not wlTracker.spell.id then
        return;
    end

    local itemLink = GetContainerItemLink(bag, slot);
    local itemID = wlParseItemLink(itemLink);

    if select(3, GetContainerItemInfo(bag, slot)) and wlTracker.spell.id == itemID then
        wlLockedID = itemID;
    end

end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_BlockChatLoot(self)
    wlClearTracker("spell");
    wlTrackerClearedTime = wlGetTime();
    wlChatLootIsBlocked = true;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_UnBlockChatLoot(self)
    wlChatLootIsBlocked = false;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--


local LOOT_ITEM_PUSHED_SELF = LOOT_ITEM_PUSHED_SELF:gsub("%%s", "(.+)");
local LOOT_ITEM_PUSHED_SELF_MULTIPLE = LOOT_ITEM_PUSHED_SELF_MULTIPLE:gsub("%%s", "(.+)");
LOOT_ITEM_PUSHED_SELF_MULTIPLE = LOOT_ITEM_PUSHED_SELF_MULTIPLE:gsub("%%d", "(%%d+)");
function wlEvent_CHAT_MSG_LOOT(self, msg, arg2, arg3, arg4, msgLootName)
    local now = wlGetTime();
    if not wlTracker.spell.id or not wlTracker.spell.time or not wlIsValidInterval(wlTracker.spell.time or 0, now, 500) then
        return;
    end

    if not WL_SALVAGE_ITEMS[wlTracker.spell.id] and not WL_SPECIAL_CONTAINERS[wlTracker.spell.id] then
        return;
    end

    local valid = true;
    if not wlEvent or not wlId or not wlEvent[wlId] or not wlN or not wlEvent[wlId][wlN] then
        valid = false;
    end

    local _, _, mshome, msworld = GetNetStats();
    if mshome > WL_PING_MAX or msworld > WL_PING_MAX then
        valid = false;
    end

    local found, _, link, qty = msg:find(LOOT_ITEM_PUSHED_SELF_MULTIPLE);
    if not found then
        qty, found, _, link = 1, msg:find(LOOT_ITEM_PUSHED_SELF);
    end
    local itemID = wlParseItemLink(link);
    qty = tonumber(qty);

    if valid and found and itemID and itemID > 0 and qty and qty > 0 then
        local eventId = wlTracker.spell.specialEventId;
        if not eventId then
            eventId = wlGetNextEventId();
            wlTracker.spell.action = "Opening";
            wlTracker.spell.specialEventId = eventId;
            wlTracker.spell.kind = "item";
            wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);
            wlEvent[wlId][wlN][eventId].what = "loot";
            wlTableCopy(wlEvent[wlId][wlN][eventId], wlTracker.spell);
            wlEvent[wlId][wlN][eventId].id = WL_SALVAGE_ITEMS[wlTracker.spell.id] and WL_SALVAGE_ITEMS[wlTracker.spell.id] or wlTracker.spell.id;
            wlEvent[wlId][wlN][eventId].dd = wlGetInstanceDifficulty();
            wlEvent[wlId][wlN][eventId].flags = 0;
        end
        wlEvent[wlId][wlN][eventId]["drop"] = wlEvent[wlId][wlN][eventId]["drop"] or {};
        wlUpdateVariable(wlEvent, wlId, wlN, eventId, "drop", #wlEvent[wlId][wlN][eventId]["drop"] + 1, "set", wlConcat(itemID, qty));
    else
        wlClearTracker("spell");
        wlTrackerClearedTime = now;
        wlTimers.clearSpecialLoot = nil;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CHAT_MSG_ADDON(self, id, msg, channel, source)
    if id == "WL_LOOT_COOLDOWN" and msg and msg ~= "" then
        wlLootCooldown[msg] = wlGetTime();
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlIsInParty()
    return GetNumSubgroupMembers() > 0 or GetNumGroupMembers() > 1;
end

function wlIsInBattleground()
    return UnitInBattleground("player") ~= nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--



----------------------------
----------------------------
--                        --
--   AUCTION  FUNCTIONS   --
--                        --
----------------------------
----------------------------

function wlPlaceAuctionBid(aType, aIndex, bid)
    local id, subId, enchant, socket1, socket2, socket3, socket4 = wlParseItemLink(GetAuctionItemLink(aType, aIndex));
    local count, _, _, _, _, _, _, buyoutPrice = select(3, GetAuctionItemInfo(aType, aIndex));

    if bid == buyoutPrice and id ~= 0 and enchant == 0 and socket1 == 0 and socket2 == 0 and socket3 == 0 and socket4 == 0 and count > 0 then
        -- checking for cross faction auction house
        local currentAreaId = C_Map.GetBestMapForUnit("player");

        -- 161 Tanaris
        -- 281 Winterspring
        -- 673 The Cape of Stranglethorn
        if currentAreaId == 161 or currentAreaId == 281 or currentAreaId == 673 then
            return;
        end
        local server = GetRealmName();
        local zone = wlGetLocation();
        wlUpdateVariable(wlAuction, server, zone, wlConcat(id, subId, floor(buyoutPrice / count)), "add", 1);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--



-------------------------------
-------------------------------
--                           --
--   COMPLETIST  FUNCTIONS   --
--                           --
-------------------------------
-------------------------------

function wlCollect(userInitiated)
    if (not userInitiated) and (UnitAffectingCombat("player") or InCombatLockdown()) then
        return;
    end

    wlQueryTimePlayed();

    wlScanTitles()
    wlGetTime();
    WL_ADDONTABLE.profileData.scan();

    wlTime = GetServerTime();

    if userInitiated then
        wlTimers.printCollected = wlGetTime() + 1000;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlAppendMsgCollected(value)
    if wlMsgCollected == "" then
        wlMsgCollected = value;
    elseif wlMsgCollected:match(value) then
    -- do nothing
    elseif not wlMsgCollected:match(WL_COLLECT_LASTSEP) then
        wlMsgCollected = value..WL_COLLECT_LASTSEP..wlMsgCollected;
    else
        wlMsgCollected = value..", "..wlMsgCollected;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local wlTimePlayed_SkipNext = false;
function wlChatFrame_DisplayTimePlayed(self, totalTime, ...)
    if wlTimePlayed_SkipNext then
        wlScans.timePlayedTotal = totalTime;
        wlTimePlayed_SkipNext = false;
    else
        wlDefaultChatFrame_DisplayTimePlayed(self, totalTime, ...);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetAddedCurrency(delta)
    for k, v in pairs(delta.changed) do
        if v > 0 then
            return k, v;
        end
    end
    for k, v in pairs(delta.added) do
        if v > 0 then
            return k, v;
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CURRENCY_DISPLAY_UPDATE(...)
    -- generate current list of owned currencies
    local delta = wlScanCurrencies();

    -- see if a boss awarded some currency
    -- don't clean up wlMostRecentEliteKilled here - this may get called several times w/ varying currency awards
    local now = wlGetTime();
    if wlMostRecentEliteKilled and wlMostRecentEliteKilled.id and wlMostRecentEliteKilled.timeOfDeath and wlConsecutiveNpcKills == 0 then
        if now <= (wlMostRecentEliteKilled.timeOfDeath + 1000) then -- 1 second to get currency reward from last elite killed
            local currencyId, currencyAmount = wlGetAddedCurrency(delta);

            -- make sure we have something to report
            if currencyId and currencyAmount then

                -- make sure there's no interference with looted currencies
                for _, lootedCurrencyInfo in ipairs(wlLootedCurrenciesBlacklist) do
                    if lootedCurrencyInfo.currencyId == currencyId and lootedCurrencyInfo.currencyQuantity == currencyAmount then
                        return;
                    end
                end

                local isInstance, instanceType = IsInInstance();
                if isInstance == 0 or (instanceType ~= "party" and instanceType ~= "raid") then
                    return;
                end

                -- make sure the player isn't capped
                local currencyName, currentQ, currencyIcon, currencyEarnedThisWeek, currencyEarnablePerWeek, currencyCap, currencyIsDiscovered = GetCurrencyInfo(currencyId);
                if currentQ == currencyCap or (currencyEarnablePerWeek ~= 0 and currencyEarnedThisWeek == currencyEarnablePerWeek) then
                    return;
                end

                -- check if the currency combo id+amount is a reward from the random dungeon
                if instanceType == "party" then
                    local uiMapID = C_Map.GetBestMapForUnit("player");
                    local areaId = C_Map.GetMapInfo(uiMapID);
                    local diff = wlSelectOne(3, GetInstanceInfo());
                    local dungeonGroupId = 0;
                    if WL_AREAID_TO_DUNGEONID[diff] then
                        dungeonGroupId = WL_AREAID_TO_DUNGEONID[diff][areaId.mapID] or 0;
                    end
                    if dungeonGroupId ~= 0 then
                        local _, _, _, _, _, numRewards = GetLFGDungeonRewards(dungeonGroupId);
                        for i=1, numRewards do
                            local name, currencyFileName, currencyQuantity = GetLFGDungeonRewardInfo(dungeonGroupId, i); -- 1 is the index of the currency if present
                            if name and currencyFileName then
                                name = name:lower();
                                if WL_CURRENCIES[name] and WL_CURRENCIES[name] == currencyId and currencyQuantity == currencyAmount then
                                    return;
                                end
                            end
                        end
                    else
                        return;
                    end
                end

                -- check if the player has wintergrasp buff which gives honor WoTlk Dungeons
                local buffName = AuraUtil.FindAuraByName(GetSpellInfo(57940), "player");
                if buffName and currencyId == 392 then
                    return;
                end

                if currencyId == 396 then
                    local valorMod = 1;
                    -- check if the player has the Valor of the Ancients buff (+50%)
                    if AuraUtil.FindAuraByName(GetSpellInfo(130609), "player") then
                        valorMod = valorMod + 0.5;
                    end
                    -- check if the player has the Heart of the Valorous buff (+100%)
                    if AuraUtil.FindAuraByName(GetSpellInfo(161795), "player") then
                        valorMod = valorMod + 1.0;
                    end
                    currencyAmount = floor((currencyAmount/valorMod) + 0.5);
                end

                local eventId = wlGetNextEventId();

                wlUpdateVariable(wlEvent, wlId, wlN, eventId, "initArray", 0);
                wlEvent[wlId][wlN][eventId].action = "Killing";
                wlEvent[wlId][wlN][eventId].kind = "npc";
                wlEvent[wlId][wlN][eventId].what = "reward";
                wlEvent[wlId][wlN][eventId].id = wlMostRecentEliteKilled.id;
                wlEvent[wlId][wlN][eventId].dd = wlGetInstanceDifficulty();

                -- Alliance or Horde
                local flags = 0;
                local faction = UnitFactionGroup("player");
                if faction == "Alliance" then
                    flags = flags + 1024;
                elseif faction == "Horde" then
                    flags = flags + 2048;
                end

                wlEvent[wlId][wlN][eventId].flags = flags;

                -- Add what kind of currency and how much there was
                wlUpdateVariable(wlEvent, wlId, wlN, eventId, "drop", 1, "set", wlConcat("currency", currencyAmount, currencyId));
            end
        end
    end

end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlScanCurrencies()

    local oldScannedCurrencies = wlPlayerCurrencies;
    if type(oldScannedCurrencies) ~= "table" then
        oldScannedCurrencies = {};
    end

    local scannedCurrencies = {};

    -- collect current currency information
    for k, currencyID in pairs(WL_CURRENCIES) do
        local localized_label, amount = GetCurrencyInfo(currencyID);
        if localized_label and "" ~= localized_label and k == localized_label:lower() and amount > 0 then
            scannedCurrencies[currencyID] = amount;
        end
    end

    -- build a profile currency string
    if next(scannedCurrencies) ~= nil then
        wlPlayerCurrencies = scannedCurrencies;
    else
        wlPlayerCurrencies = "-1";
    end

    -- generate the list of currency changes
    -- .changed => { currencyId = delta }
    -- .missing => { currencyId = 0 }
    -- .added => { currencyId = amount }
    -- first 'changed' and 'missing'
    local delta = {
        changed = {},
        missing = {},
        added = {},
    };
    for k, v in pairs(scannedCurrencies) do
        if oldScannedCurrencies[k] then -- possibly changed
            delta.changed[k] = v - oldScannedCurrencies[k];
        else -- added
            delta.added[k] = v;
        end
        oldScannedCurrencies[k] = nil;
    end
    -- missing
    for k, v in pairs(oldScannedCurrencies) do
        delta.missing[k] = 0;
    end

    return delta;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlQueryTimePlayed()
    -- Don't display time played in chat frame if not queried by player
    wlTimePlayed_SkipNext = true;
    RequestTimePlayed();
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local lastProfessionScan = 0;
function wlEvent_TRADE_SKILL_UPDATE(self, ...)
    -- When we scan the profession window, we'll fire more TRADE_SKILL_UPDATE events which we want to ignore.
    if time() - lastProfessionScan <= 0 then
        return;
    end
    lastProfessionScan = time();

    wlScanTradeSkillWindow(wlGrabTradeSkillDifficulty);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_CRAFT_UPDATE(self, ...)
    -- When we scan the profession window, we'll fire more CRAFT_UPDATE events which we want to ignore.
    if time() - lastProfessionScan <= 0 then
        return;
    end
    lastProfessionScan = time();

    wlScanCraftWindow(wlGrabTradeSkillDifficulty);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_TITLES_UPDATED(self, ...)
    wlScanTitles();
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

--- A callback for wlScanTradeSkillWindow. Records each skill's difficulty relative to current skill level.
-- @param uiType One of "tradeskill" or "craft" depending on which UI is shown
-- @param index The index for the currently examined ability
-- @param link An itemlink for what the current ability produces
function wlGrabTradeSkillDifficulty(uiType, index, link)
    local _, lineName, currentLevel, difficultyTerm, id;
    local isSpell;

    -- Handle all tradeskills except Enchanting
    if uiType == "tradeskill" then
        lineName, currentLevel = GetTradeSkillLine();
        _, difficultyTerm = GetTradeSkillInfo(index);
        id = wlParseItemLink(link);
    end

    -- Handle Enchanting (which we want), and skip Beast Training (which we don't want).
    if uiType == "craft" then
        lineName, currentLevel = GetCraftDisplaySkillLine();
        if lineName then
            _, _, difficultyTerm = GetCraftInfo(index);
            local found, _, spellId = link:find("^|%x+|Henchant:(.+)|h%[.+%]");
            if found then
                id = spellId;
                isSpell = true;
            else
                id = wlParseItemLink(link);
            end
        end
    end

    if id then
        if isSpell then
            id = 's' .. id;
        else
            id = 'i' .. id;
        end

        local tsd = wlTradeSkillDifficulty;

        tsd[lineName] = tsd[lineName] or {};
        tsd[lineName][id] = tsd[lineName][id] or {};
        tsd[lineName][id][difficultyTerm] = tsd[lineName][id][difficultyTerm] or {};
        local rec = tsd[lineName][id][difficultyTerm];

        if rec[1] then
            rec[1] = min(rec[1], currentLevel);
        else
            rec[1] = currentLevel;
        end
        if rec[2] then
            rec[2] = max(rec[2], currentLevel);
        else
            rec[2] = currentLevel;
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

--- Executes callback functions for each learned trade skill ability in the currently open tradeskill window.
-- @param ... Functions to call with the parameters: ("tradeskill", index, itemLink)
function wlScanTradeSkillWindow(...)
    -- do some sanity checking
    local parameterCount = select('#', ...);
    if parameterCount <= 0 then
        return;
    end
    for funcIndex = 1, parameterCount do
        if "function" ~= type(select(funcIndex, ...)) then
            return;
        end
    end

    local selectedSlot;
    if not GetTradeSkillInvSlotFilter(0) then
        -- Something other than "All Slots" is checked. Scan the options to find and remember which was checked.
        local optCount = select("#", GetTradeSkillInvSlots());
        for i=1, optCount, 1 do
            if GetTradeSkillInvSlotFilter(i) then
                selectedSlot = i;
            end
        end
        -- Check "All slots" at the top of the list.
        SetTradeSkillInvSlotFilter(0, 1, 1);
    end

    local selectedSubClass;
    if not GetTradeSkillSubClassFilter(0) then
        -- Something other than "All Subclasses" is checked. Scan the options to find and remember which was checked.
        local optCount = select("#", GetTradeSkillSubClasses());
        for i=1, optCount, 1 do
            if GetTradeSkillSubClassFilter(i) then
                selectedSubClass = i;
            end
        end
        -- Check "All subclasses" at the top of the list.
        SetTradeSkillSubClassFilter(0, 1, 1);
    end

    -- Remember which tradeskill headers were collapsed
    local collapsedIndexes = {}
    local numRecipes = GetNumTradeSkills();
    for i=1, numRecipes, 1 do
        local skillName, skillType, _, isExpanded = GetTradeSkillInfo(i);
        if skillType == "header" and not isExpanded then
            tinsert(collapsedIndexes, i);
        end
    end
    -- Expand all trade skill headers
    ExpandTradeSkillSubClass(0);

    -- Scan through all recipes, calling each callback for each recipe.
    local numRecipes = GetNumTradeSkills();
    for i=1, numRecipes, 1 do
        local skillName, skillType = GetTradeSkillInfo(i);
        if skillType ~= "header" then
            local recipeLink = GetTradeSkillItemLink(i);
            if recipeLink ~= nil then
                for funcIndex = 1, parameterCount do
                    select(funcIndex, ...)('tradeskill', i, recipeLink);
                end
            end
        end
    end

    -- Restore user preferences.
    local collapseCount = #collapsedIndexes;
    for i=1, collapseCount, 1 do
        CollapseTradeSkillSubClass(collapsedIndexes[i]);
    end
    if selectedSubClass then
        SetTradeSkillSubClassFilter(selectedSubClass, 1, 1);
    end
    if selectedSlot then
        SetTradeSkillInvSlotFilter(selectedSlot, 1, 1);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

--- Executes callback functions for each learned craft ability in the currently open craft window.
-- @param ... Functions to call with the parameters: ("craft", index, itemLink)
function wlScanCraftWindow(...)
    -- do some sanity checking
    local parameterCount = select('#', ...);
    if parameterCount <= 0 then
        return;
    end
    for funcIndex = 1, parameterCount do
        if "function" ~= type(select(funcIndex, ...)) then
            return;
        end
    end

    -- Remember which craft headers were collapsed
    local collapsedIndexes = {}
    local numRecipes = GetNumCrafts();
    for i=1, numRecipes, 1 do
        local skillName, _, skillType, _, isExpanded = GetCraftInfo(i);
        if skillType == "header" and not isExpanded then
            tinsert(collapsedIndexes, i);
        end
    end
    -- Expand all craft headers
    ExpandCraftSkillLine(0);

    -- Scan through all recipes, calling each callback for each recipe.
    local numRecipes = GetNumCrafts();
    for i=1, numRecipes, 1 do
        local skillName, _, skillType = GetCraftInfo(i);
        if skillType ~= "header" then
            local recipeLink = GetCraftItemLink(i);
            if recipeLink ~= nil then
                for funcIndex = 1, parameterCount do
                    select(funcIndex, ...)('craft', i, recipeLink);
                end
            end
        end
    end

    -- Restore user preferences.
    local collapseCount = #collapsedIndexes;
    for i=1, collapseCount, 1 do
        CollapseCraftSkillLine(collapsedIndexes[i]);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlScanTitles()

    if (not GetCurrentTitle) then
        return;
    end

    local ids = ""
    local titleTable = {}
    local titleTableIdx = #titleTable
    local currentTitle = GetCurrentTitle()
    for i=1, GetNumTitles() do
        if IsTitleKnown(i) then
            titleTableIdx = titleTableIdx + 1
            if (currentTitle == i) then
                titleTable[titleTableIdx] = i .. ':1'
            else
                titleTable[titleTableIdx] = i .. ':0'
            end
        end
    end

    ids = table.concat(titleTable,',')

    if ids ~= "" then
        wlScans.titles = ids;
        return true;
    else
        -- skip resetting titles, perhaps server didn't send them down yet. titles never go completely away.
        -- wlScans.titles = "-1";
        return false;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local wlEscapeLuaPattern;
do
    local matches = {
        ["^"] = "%^";
        ["$"] = "%$";
        ["("] = "%(";
        [")"] = "%)";
        ["%"] = "%%";
        ["."] = "%.";
        ["["] = "%[";
        ["]"] = "%]";
        ["*"] = "%*";
        ["+"] = "%+";
        ["-"] = "%-";
        ["?"] = "%?";
        ["\0"] = "%z";
    };
    wlEscapeLuaPattern = function(s)
        return (s:gsub(".", matches));
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRefreshExportData()
    local key = "who="..wlConcatToken(",", GetCVar("portal"), GetRealmName(), wlSelectOne(1, UnitName("player")), GetAccountExpansionLevel());
    local value = "&realmId="..wlGetPlayerRealmId().."&timePlayedTotal="..wlScans.timePlayedTotal.."&titles="..wlScans.titles;

    -- Only add the data to the wlExportData if the character is level 10 or above
    -- Data is still collected, just not uploaded until level 10
    if UnitLevel("player") > 10 then
        if wlExportData:find(wlEscapeLuaPattern(key)) then
            wlExportData = wlExportData:gsub(wlEscapeLuaPattern(key).."[^;]*", key..value); -- replace
        else
            wlExportData = wlExportData..key..value..";";
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetLocation()
    local zone = GetRealZoneText() or "";
    local uiMapID = C_Map.GetBestMapForUnit("player") or WorldMapFrame:GetMapID();
    local uiMapDetails = C_Map.GetMapInfo(uiMapID);

    if WL_ZONE_EXCEPTION[uiMapDetails.name] then
        uiMapID = WL_ZONE_EXCEPTION[uiMapDetails.name];
    end

    local x, y = GetPlayerMapPosition("player");

    if not x or not y then
        x, y = 0, 0;
    end

    return zone, floor(x * 1000 + 0.5), floor(y * 1000 + 0.5), uiMapID;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetLocationIndex(array, x, y, dl, delta)
    for i=1, array.n do
        if wlIsEqualValues(x, array[i].x, delta) and wlIsEqualValues(y, array[i].y, delta) and array[i].dl == dl then
            return i;
        end
    end

    return nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRound(n, p)
    local p = math.pow(10, p);
    return floor(n * p + 0.5) / p;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlClearTracker(...)
    for i=1, select("#", ...) do
        local n = wlSelectOne(i, ...);
        wlUpdateVariable(wlTracker, n, "time", "set", nil);

        for k, _ in pairs(wlTracker[n]) do
            wlTracker[n][k] = nil;
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEvent_ZONE_CHANGED()
    wlLocTooltipFrame_OnUpdate();
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

--------------------------
--------------------------
--                      --
--   FRAME  FUNCTIONS   --
--                      --
--------------------------
--------------------------

local wlEvents = {
    -- player
    PLAYER_LOGIN = wlEvent_PLAYER_LOGIN,
    PLAYER_LOGOUT = wlEvent_PLAYER_LOGOUT,
    ADDON_LOADED = wlEvent_ADDON_LOADED,
    CHAT_MSG_SYSTEM = wlEvent_CHAT_MSG_SYSTEM,

    -- npc
    PLAYER_TARGET_CHANGED = wlEvent_PLAYER_TARGET_CHANGED,
    CHAT_MSG_MONSTER_SAY = wlEvent_CHAT_MSG_MONSTER_SAY,
    CHAT_MSG_MONSTER_WHISPER = wlEvent_CHAT_MSG_MONSTER_WHISPER,
    CHAT_MSG_MONSTER_YELL = wlEvent_CHAT_MSG_MONSTER_YELL,
    CHAT_MSG_MONSTER_EMOTE = wlEvent_CHAT_MSG_MONSTER_EMOTE,
    GOSSIP_SHOW = wlEvent_GOSSIP_SHOW,
    AUCTION_HOUSE_SHOW = wlEvent_AUCTION_HOUSE_SHOW,
    BANKFRAME_OPENED = wlEvent_BANKFRAME_OPENED,
    BATTLEFIELDS_SHOW = wlEvent_BATTLEFIELDS_SHOW,
    CONFIRM_BINDER = wlEvent_CONFIRM_BINDER,
    CONFIRM_TALENT_WIPE = wlEvent_CONFIRM_TALENT_WIPE,
    GOSSIP_CONFIRM_CANCEL = wlEvent_GOSSIP_CONFIRM_CANCEL,
    GOSSIP_ENTER_CODE = wlEvent_GOSSIP_ENTER_CODE,
    OPEN_TABARD_FRAME = wlEvent_OPEN_TABARD_FRAME,
    PET_STABLE_SHOW = wlEvent_PET_STABLE_SHOW,
    TAXIMAP_OPENED = wlEvent_TAXIMAP_OPENED,
    PET_BAR_UPDATE = wlEvent_PET_BAR_UPDATE,
    LOCALPLAYER_PET_RENAMED = wlEvent_LOCALPLAYER_PET_RENAMED,
    MERCHANT_SHOW = wlEvent_MERCHANT_SHOW,
    MERCHANT_UPDATE = wlEvent_MERCHANT_UPDATE,
    TRAINER_SHOW = wlEvent_TRAINER_SHOW,
    COMBAT_LOG_EVENT_UNFILTERED = wlEvent_COMBAT_LOG_EVENT_UNFILTERED,
    UPDATE_MOUSEOVER_UNIT = wlEvent_UPDATE_MOUSEOVER_UNIT,

    -- drops
    LOOT_OPENED = wlEvent_LOOT_OPENED,
    LOOT_CLOSED = wlEvent_LOOT_CLOSED,
    SHOW_LOOT_TOAST = wlEvent_SHOW_LOOT_TOAST,
    SPELL_CONFIRMATION_PROMPT = wlEvent_SPELL_CONFIRMATION_PROMPT,
    CHAT_MSG_ADDON = wlEvent_CHAT_MSG_ADDON,
    CHAT_MSG_LOOT = wlEvent_CHAT_MSG_LOOT,
    UNIT_SPELLCAST_SENT = wlEvent_UNIT_SPELLCAST_SENT,
    UNIT_SPELLCAST_SUCCEEDED = wlEvent_UNIT_SPELLCAST_SUCCEEDED,
    UNIT_SPELLCAST_FAILED = wlEvent_UNIT_SPELLCAST_FAILED,
    UNIT_SPELLCAST_INTERRUPTED = wlEvent_UNIT_SPELLCAST_FAILED,
    UNIT_SPELLCAST_FAILED_QUIET = wlEvent_UNIT_SPELLCAST_FAILED,
    ITEM_LOCK_CHANGED = wlEvent_ITEM_LOCK_CHANGED,

    -- chat loot blocking
    AUCTION_HOUSE_CLOSED = wlEvent_UnBlockChatLoot,
    BANKFRAME_CLOSED = wlEvent_UnBlockChatLoot,
    GOSSIP_CLOSED = wlEvent_UnBlockChatLoot,
    MAIL_CLOSED = wlEvent_UnBlockChatLoot,
    MERCHANT_CLOSED = wlEvent_UnBlockChatLoot,
    GUILDBANKFRAME_CLOSED = wlEvent_UnBlockChatLoot,
    GUILDBANKFRAME_OPENED = wlEvent_BlockChatLoot,
    TRADE_CLOSED = wlEvent_UnBlockChatLoot,
    TRADE_SHOW = wlEvent_BlockChatLoot,

    -- object
    ITEM_TEXT_BEGIN = wlEvent_ITEM_TEXT_BEGIN,
    MAIL_SHOW = wlEvent_MAIL_SHOW,

    -- quest
    QUEST_DETAIL = wlEvent_QUEST_DETAIL,
    QUEST_PROGRESS = wlEvent_QUEST_PROGRESS,
    QUEST_COMPLETE = wlEvent_QUEST_COMPLETE,
    QUEST_LOG_UPDATE = wlEvent_QUEST_LOG_UPDATE,
    QUEST_LOOT_RECEIVED = wlEvent_QUEST_LOOT_RECEIVED,
    UNIT_QUEST_LOG_CHANGED = wlEvent_UNIT_QUEST_LOG_CHANGED,
    CHAT_MSG_COMBAT_FACTION_CHANGE = wlEvent_CHAT_MSG_COMBAT_FACTION_CHANGE,

    -- coords tooltip
    PLAYER_ENTERING_WORLD = wlEvent_ZONE_CHANGED,
    ZONE_CHANGED = wlEvent_ZONE_CHANGED,
    ZONE_CHANGED_NEW_AREA = wlEvent_ZONE_CHANGED,

    -- completist
    TRADE_SKILL_UPDATE = wlEvent_TRADE_SKILL_UPDATE,
    CRAFT_UPDATE = wlEvent_CRAFT_UPDATE,
    CURRENCY_DISPLAY_UPDATE = wlEvent_CURRENCY_DISPLAY_UPDATE,
    KNOWN_TITLES_UPDATE = wlEvent_TITLES_UPDATED,
};

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

-- Get a numeric client version number
function wlGetClientVersion()
    local version = GetBuildInfo();
    local major,minor,patch = strsplit(".", version);
    return ((10000*major) + (100*minor) + (patch));
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local wlMinimapShapes = {
    ["ROUND"] = {true, true, true, true},
    ["SQUARE"] = {false, false, false, false},
    ["CORNER-TOPLEFT"] = {false, false, false, true},
    ["CORNER-TOPRIGHT"] = {false, false, true, false},
    ["CORNER-BOTTOMLEFT"] = {false, true, false, false},
    ["CORNER-BOTTOMRIGHT"] = {true, false, false, false},
    ["SIDE-LEFT"] = {false, true, false, true},
    ["SIDE-RIGHT"] = {true, false, true, false},
    ["SIDE-TOP"] = {false, false, true, true},
    ["SIDE-BOTTOM"] = {true, true, false, false},
    ["TRICORNER-TOPLEFT"] = {false, true, true, true},
    ["TRICORNER-TOPRIGHT"] = {true, false, true, true},
    ["TRICORNER-BOTTOMLEFT"] = {true, true, false, true},
    ["TRICORNER-BOTTOMRIGHT"] = {true, true, true, false},
};
function wlUpdateMiniMapButtonPosition(button)
    local angle = math.rad(wlSetting and wlSetting.minimapPos or button.minimapPos or 225);
    local x, y, q = math.cos(angle), math.sin(angle), 1;
    if x < 0 then
        q = q + 1;
    end
    if y > 0 then
        q = q + 2;
    end
    local minimapShape = GetMinimapShape and GetMinimapShape() or "ROUND";
    local quadTable = wlMinimapShapes[minimapShape];
    if quadTable[q] then
        x, y = x*80, y*80;
    else
        local diagRadius = 103.13708498985; --math.sqrt(2*(80)^2)-10
        x = math.max(-80, math.min(x*diagRadius, 80));
        y = math.max(-80, math.min(y*diagRadius, 80));
    end
    button:SetPoint("CENTER", Minimap, "CENTER", x, y);
end

function wlMinimapButtonOnUpdate(self)
    local mx, my = Minimap:GetCenter();
    local px, py = GetCursorPosition();
    local scale = Minimap:GetEffectiveScale();
    px, py = px / scale, py / scale;
    if wlSetting then
        wlSetting.minimapPos = math.deg(math.atan2(py - my, px - mx)) % 360;
    else
        self.minimapPos = math.deg(math.atan2(py - my, px - mx)) % 360;
    end
    wlUpdateMiniMapButtonPosition(self);
end

function wlUpdateMinimapButtonCoord(self)
    local coords = {0, 1, 0, 1};
    local deltaX, deltaY = 0, 0;
    if not self:GetParent().isMouseDown then
        deltaX = (coords[2] - coords[1]) * 0.05;
        deltaY = (coords[4] - coords[3]) * 0.05;
    end
    self:SetTexCoord(coords[1] + deltaX, coords[2] - deltaX, coords[3] + deltaY, coords[4] - deltaY);
end

function wlMiniMapOnEnter(self, motion)
    if self.dragging then
        return;
    end
    GameTooltip:SetOwner(self, "ANCHOR_LEFT");
    GameTooltip:SetText(WL_NAME, 1, 1, 1);
    GameTooltip:AddLine(WL_OPTIONS_MINIMAP_CLICK, nil, nil, nil, 1);
    GameTooltip:Show();
end

function wlMiniMapOnLeave(self, motion)
    GameTooltip:Hide();
end

function wlMiniMapOnClick(self, button, down)
    if not InterfaceOptionsFrame:IsShown() then
        InterfaceOptionsFrame_OpenToCategory([[Wowhead Looter]]);
    else
        InterfaceOptionsFrame:Hide();
    end
end

function wlMiniMapOnDragStart(self, button)
    GameTooltip:Hide();
    self:LockHighlight();
    self.dragging = true;
    self.isMouseDown = true;
    self:SetScript("OnUpdate", wlMinimapButtonOnUpdate);
    self.icon:wlUpdateMinimapButtonCoord();
end

function wlMiniMapOnDragStop(self, button)
    self:SetScript("OnUpdate", nil);
    self:UnlockHighlight();
    self.dragging = false;
    self.isMouseDown = false;
    self.icon:wlUpdateMinimapButtonCoord();
end

function wlMiniMapOnMouseDown(self, button)
    self.isMouseDown = true;
    self.icon:wlUpdateMinimapButtonCoord();
end

function wlMiniMapOnMouseUp(self, button)
    self.isMouseDown = false;
    self.icon:wlUpdateMinimapButtonCoord();
end

function wlCreateFrames()
    local button = CreateFrame("Button", "wlMinimapButton", Minimap);
    button:SetFrameStrata("MEDIUM");
    button:SetWidth(31);
    button:SetHeight(31);
    button:SetFrameLevel(8);
    button:RegisterForClicks("anyUp");
    button:RegisterForDrag("LeftButton");
    button:SetHighlightTexture([[Interface\Minimap\UI-Minimap-ZoomButton-Highlight]]);
    local overlay = button:CreateTexture(nil, "OVERLAY");
    overlay:SetWidth(53);
    overlay:SetHeight(53);
    overlay:SetTexture([[Interface\Minimap\MiniMap-TrackingBorder]]);
    overlay:SetPoint("TOPLEFT");
    local background = button:CreateTexture(nil, "BACKGROUND");
    background:SetWidth(25); background:SetHeight(25);
    background:SetTexture([[Interface\Minimap\UI-Minimap-Background]]);
    background:SetPoint("TOPLEFT", 2, -4);
    local icon = button:CreateTexture(nil, "ARTWORK");
    icon:SetWidth(20); icon:SetHeight(20);
    icon:SetTexture([[Interface\AddOns\+Wowhead_Looter\minimap-button]]);
    icon:SetPoint("TOPLEFT", 6, -6);
    button.icon = icon;
    button.isMouseDown = false;

    icon.wlUpdateMinimapButtonCoord = wlUpdateMinimapButtonCoord;
    icon:wlUpdateMinimapButtonCoord();

    button:SetScript("OnEnter", wlMiniMapOnEnter);
    button:SetScript("OnLeave", wlMiniMapOnLeave);
    button:SetScript("OnClick", wlMiniMapOnClick);
    button:SetScript("OnDragStart", wlMiniMapOnDragStart);
    button:SetScript("OnDragStop", wlMiniMapOnDragStop);
    button:SetScript("OnMouseDown", wlMiniMapOnMouseDown);
    button:SetScript("OnMouseUp", wlMiniMapOnMouseUp);
    button:Hide();

    local panel = CreateFrame("Frame", "wlOptionsPanel", InterfaceOptionsFramePanelContainer);
    panel.name = "Wowhead Looter";

    local titlebar = CreateFrame("Frame", nil, panel);
    titlebar:SetPoint("TOPLEFT", panel, "TOPLEFT");
    titlebar:SetPoint("TOPRIGHT", panel, "TOPRIGHT");
    titlebar:SetHeight(70);
    titlebar.frameTitle = titlebar:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
    titlebar.frameTitle:SetJustifyH("CENTER");
    titlebar.frameTitle:SetPoint("TOP", titlebar, "TOP", 0, -20);
    titlebar.frameTitle:SetTextColor(1, 0, 0, 1);
    titlebar.frameTitle:SetText("|TInterface\\AddOns\\+Wowhead_Looter\\wowhead-logo-64:32:32:0:-3|t"..WL_NAME);
    titlebar.version = titlebar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall");
    titlebar.version:SetJustifyH("CENTER");
    titlebar.version:SetPoint("TOP", titlebar, "TOP", 0, -46);
    titlebar.version:SetText("v"..WL_VERSION);

    --[[local header = CreateFrame("Frame", nil, titlebar);
    header:SetHeight(18);
    header:SetPoint("TOPLEFT", titlebar, "BOTTOMLEFT");
    header:SetPoint("TOPRIGHT", titlebar, "BOTTOMRIGHT");
    header.label = header:CreateFontString(nil, "BACKGROUND", "GameFontNormal");
    header.label:SetPoint("TOP");
    header.label:SetPoint("BOTTOM");
    header.label:SetJustifyH("CENTER");
    header.label:SetText(WL_OPTIONS_COMPLETION_DATA);
    header.left = header:CreateTexture(nil, "BACKGROUND");
    header.left:SetHeight(8);
    header.left:SetPoint("LEFT", 10, 0);
    header.left:SetPoint("RIGHT", header.label, "LEFT", -5, 0);
    header.left:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header.left:SetTexCoord(0.81, 0.94, 0.5, 1);
    header.right = header:CreateTexture(nil, "BACKGROUND");
    header.right:SetHeight(8);
    header.right:SetPoint("RIGHT", -10, 0);
    header.right:SetPoint("LEFT", header.label, "RIGHT", 5, 0);
    header.right:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header.right:SetTexCoord(0.81, 0.94, 0.5, 1);
    header.left:SetPoint("RIGHT", header.label, "LEFT", -5, 0);]]

    --[[local completionButton = CreateFrame("Button", nil, header, "UIPanelButtonTemplate");
    completionButton:SetText(WL_OPTIONS_COLLECT);
    completionButton:SetWidth(140);
    completionButton:SetHeight(24);
    completionButton:SetPoint("TOP", header, "BOTTOM", 0, -10);
    completionButton:SetScript("OnClick", function(self, button, down)
        wlTimers["autoCollect"] = nil;
        wlCollect(true);
    end);]]

    local header2 = CreateFrame("Frame", nil, titlebar);
    header2:SetHeight(18);
    header2:SetPoint("TOPLEFT", titlebar, "BOTTOMLEFT");
    header2:SetPoint("TOPRIGHT", titlebar, "BOTTOMRIGHT");
    header2.label = header2:CreateFontString(nil, "BACKGROUND", "GameFontNormal");
    header2.label:SetPoint("TOP");
    header2.label:SetPoint("BOTTOM");
    header2.label:SetJustifyH("CENTER");
    header2.label:SetText(WL_OPTIONS_LOCATION);
    header2.left = header2:CreateTexture(nil, "BACKGROUND");
    header2.left:SetHeight(8);
    header2.left:SetPoint("LEFT", 10, 0);
    header2.left:SetPoint("RIGHT", header2.label, "LEFT", -5, 0);
    header2.left:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header2.left:SetTexCoord(0.81, 0.94, 0.5, 1);
    header2.right = header2:CreateTexture(nil, "BACKGROUND");
    header2.right:SetHeight(8);
    header2.right:SetPoint("RIGHT", -10, 0);
    header2.right:SetPoint("LEFT", header2.label, "RIGHT", 5, 0);
    header2.right:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header2.right:SetTexCoord(0.81, 0.94, 0.5, 1);
    header2.left:SetPoint("RIGHT", header2.label, "LEFT", -5, 0);

    local locationCheckbox = CreateFrame("CheckButton", "wllocTooltipCheckbox", header2, "InterfaceOptionsCheckButtonTemplate");
    _G[locationCheckbox:GetName().."Text"]:SetText(WL_OPTIONS_TOOLTIP);
    locationCheckbox.tooltipText = WL_DESC_LOCATION;
    locationCheckbox:SetPoint("TOPLEFT", header2, "BOTTOMLEFT", 10, -10);
    locationCheckbox:SetScript("OnClick", function(self, button, down)
        wlSetting.locTooltip = locationCheckbox:GetChecked() and true or false;
        if wlSetting.locTooltip then
            wlLocTooltipFrame:Show();
        else
            wlLocTooltipFrame:Hide();
        end
        wlMessage(("%s: %s"):format(WL_NAME, (WL_LOC_TOOLTIP):format(wlEnabledDisabled(wlSetting.locTooltip))), true);
    end);
    local locationCheckbox2 = CreateFrame("CheckButton", "wllocMapCheckbox", locationCheckbox, "InterfaceOptionsCheckButtonTemplate");
    _G[locationCheckbox2:GetName().."Text"]:SetText(WORLD_MAP);
    locationCheckbox2.tooltipText = WL_DESC_LOCATION_WORLDMAP;
    locationCheckbox2:SetPoint("LEFT", locationCheckbox:GetName().."Text", "RIGHT", 20, 0);
    locationCheckbox2:SetScript("OnClick", function(self, button, down)
        wlSetting.locMap = locationCheckbox2:GetChecked() and true or false;
        if wlSetting.locMap then
            wlLocMapFrame:Show();
        else
            wlLocMapFrame:Hide();
        end
        wlMessage(("%s: %s"):format(WL_NAME, (WL_LOC_MAP):format(wlEnabledDisabled(wlSetting.locMap))), true);
    end);
    local locationResetButton = CreateFrame("Button", "wlLocationResetButton", locationCheckbox, "UIPanelButtonTemplate");
    locationResetButton:SetText("Reset");
    locationResetButton.tooltipText = "|cffffd100"..WL_DESC_LOCATION_RESET.."|r";
    locationResetButton:SetWidth(80);
    locationResetButton:SetHeight(22);
    locationResetButton:SetPoint("TOPLEFT", locationCheckbox, "BOTTOMLEFT");
    locationResetButton:SetScript("OnClick", function(self, button, down)
        wlFrameReset(wlLocTooltipFrame);
    end);

    local header3 = CreateFrame("Frame", nil, header2);
    header3:SetHeight(18);
    header3:SetPoint("TOPLEFT", header2, "BOTTOMLEFT", 0, -70);
    header3:SetPoint("TOPRIGHT", header2, "BOTTOMRIGHT");
    header3.label = header3:CreateFontString(nil, "BACKGROUND", "GameFontNormal");
    header3.label:SetPoint("TOP");
    header3.label:SetPoint("BOTTOM");
    header3.label:SetJustifyH("CENTER");
    header3.label:SetText("Npc ID");
    header3.left = header3:CreateTexture(nil, "BACKGROUND");
    header3.left:SetHeight(8);
    header3.left:SetPoint("LEFT", 10, 0);
    header3.left:SetPoint("RIGHT", header3.label, "LEFT", -5, 0);
    header3.left:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header3.left:SetTexCoord(0.81, 0.94, 0.5, 1);
    header3.right = header3:CreateTexture(nil, "BACKGROUND");
    header3.right:SetHeight(8);
    header3.right:SetPoint("RIGHT", -10, 0);
    header3.right:SetPoint("LEFT", header3.label, "RIGHT", 5, 0);
    header3.right:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header3.right:SetTexCoord(0.81, 0.94, 0.5, 1);
    header3.left:SetPoint("RIGHT", header3.label, "LEFT", -5, 0);

    local npcCheckbox = CreateFrame("CheckButton", "wlidTooltipCheckbox", header3, "InterfaceOptionsCheckButtonTemplate");
    _G[npcCheckbox:GetName().."Text"]:SetText(WL_OPTIONS_TOOLTIP);
    npcCheckbox.tooltipText = WL_DESC_NPCID;
    npcCheckbox:SetPoint("TOPLEFT", header3, "BOTTOMLEFT", 10, -10);
    npcCheckbox:SetScript("OnClick", function(self, button, down)
        wlSetting.idTooltip = npcCheckbox:GetChecked() and true or false;
        if wlSetting.idTooltip then
            wlIdTooltipFrame:Show();
        else
            wlIdTooltipFrame:Hide();
        end
        wlMessage(("%s: %s"):format(WL_NAME, (WL_ID_TOOLTIP):format(wlEnabledDisabled(wlSetting.idTooltip))), true);
    end);
    local npcResetButton = CreateFrame("Button", "wlNpcResetButton", npcCheckbox, "UIPanelButtonTemplate");
    npcResetButton:SetText("Reset");
    npcResetButton.tooltipText = "|cffffd100"..WL_DESC_NPCID_RESET.."|r";
    npcResetButton:SetWidth(80);
    npcResetButton:SetHeight(22);
    npcResetButton:SetPoint("TOPLEFT", npcCheckbox, "BOTTOMLEFT");
    npcResetButton:SetScript("OnClick", function(self, button, down)
        wlFrameReset(wlIdTooltipFrame);
    end);

    local header4 = CreateFrame("Frame", nil, header3);
    header4:SetHeight(18);
    header4:SetPoint("TOPLEFT", header3, "BOTTOMLEFT", 0, -70);
    header4:SetPoint("TOPRIGHT", header3, "BOTTOMRIGHT");
    header4.label = header4:CreateFontString(nil, "BACKGROUND", "GameFontNormal");
    header4.label:SetPoint("TOP");
    header4.label:SetPoint("BOTTOM");
    header4.label:SetJustifyH("CENTER");
    header4.label:SetText(WL_OPTIONS_GENERAL);
    header4.left = header4:CreateTexture(nil, "BACKGROUND");
    header4.left:SetHeight(8);
    header4.left:SetPoint("LEFT", 10, 0);
    header4.left:SetPoint("RIGHT", header4.label, "LEFT", -5, 0);
    header4.left:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header4.left:SetTexCoord(0.81, 0.94, 0.5, 1);
    header4.right = header4:CreateTexture(nil, "BACKGROUND");
    header4.right:SetHeight(8);
    header4.right:SetPoint("RIGHT", -10, 0);
    header4.right:SetPoint("LEFT", header4.label, "RIGHT", 5, 0);
    header4.right:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border");
    header4.right:SetTexCoord(0.81, 0.94, 0.5, 1);
    header4.left:SetPoint("RIGHT", header4.label, "LEFT", -5, 0);

    local minimapCheckbox = CreateFrame("CheckButton", "wlminimapCheckbox", header4, "InterfaceOptionsCheckButtonTemplate");
    _G[minimapCheckbox:GetName().."Text"]:SetText(WL_OPTIONS_MINIMAP_SHOW);
    minimapCheckbox:SetPoint("TOPLEFT", header4, "BOTTOMLEFT", 10, -10);
    minimapCheckbox:SetScript("OnClick", function(self, button, down)
        wlSetting.minimap = minimapCheckbox:GetChecked() and true or false;
        if wlSetting.minimap then
            wlMinimapButton:Show();
        else
            wlMinimapButton:Hide();
        end
        wlMessage(("%s: %s"):format(WL_NAME, (WL_MINIMAP):format(wlEnabledDisabled(wlSetting.minimap))), true);
    end);

    local resetAllButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate");
    resetAllButton:SetText(WL_OPTIONS_RESET_ALL);
    resetAllButton:SetWidth(140);
    resetAllButton:SetHeight(24);
    resetAllButton:SetPoint("BOTTOMLEFT", panel, "BOTTOMLEFT", 10, 10);
    resetAllButton:SetScript("OnClick", function(self, button, down)
        StaticPopup_Show("WL_RESET_CONFIRM");
    end);

    InterfaceOptions_AddCategory(panel, true);

    local stuboptions = { Show = function() end, Hide = function() end };

    -- Temporary workaround for TBC Classic Beta
    if (not InterfaceOptionsFrameCategoriesTop) then
        InterfaceOptionsFrameCategoriesTop = stuboptions;
    end
    if (not InterfaceOptionsFrameAddOnsTop) then
        InterfaceOptionsFrameAddOnsTop = stuboptions;
    end
    if (not InterfaceOptionsFrameTab1TabSpacer) then
        InterfaceOptionsFrameTab1TabSpacer = stuboptions;
    end
    if (not InterfaceOptionsFrameTab2TabSpacer1) then
        InterfaceOptionsFrameTab2TabSpacer1 = stuboptions;
    end
    if (not InterfaceOptionsFrameTab2TabSpacer2) then
        InterfaceOptionsFrameTab2TabSpacer2 = stuboptions;
    end
end

function wl_OnLoad(self)
    CreateFrame("Frame", "wlUpdateFrame", UIParent);
    wlUpdateFrame:SetScript("OnUpdate", wl_OnUpdate);
    wlUpdateFrame:Show();

    wlCreateFrames();

    for event, _ in pairs(wlEvents) do
        local success, msg = pcall(self.RegisterEvent, self, event);
    end

    StaticPopupDialogs["WL_RESET_CONFIRM"] = {
        text = WL_RESET_CONFIRM_TEXT,
        button1 = YES,
        button2 = NO,
        OnAccept = function(self)
            wlReset();
            ReloadUI();
        end,
        timeout = 0,
        whileDead = 1,
        hideOnEscape = 1,
        showAlert = 1,
        OnShow = function(self)
            self:SetFrameStrata("FULLSCREEN_DIALOG");
            self:SetFrameLevel(99);
        end,
    };

    SlashCmdList["WOWHEAD_LOOTER"] = wlParseCommand;
    SLASH_WOWHEAD_LOOTER1 = "/wl";

    tinsert(UISpecialFrames, "wlDebugFrame");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wl_OnEvent(self, event, ...)
    if event and wlEvents[event] then
        wlEvents[event](self, ...);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local uploadReminder = false;
local wlTimeSinceLastUpdate = 0;
local WL_ONUPDATE_THROTTLE = 0.2;
function wl_OnUpdate(self, elapsed)
    wlTimeSinceLastUpdate = wlTimeSinceLastUpdate + elapsed;

    if wlTimeSinceLastUpdate >= WL_ONUPDATE_THROTTLE then

        local now = wlGetTime();

        for name, timeout in pairs(wlTimers) do
            if timeout and now - timeout >= 0 then
                wlTimers[name] = false; -- Clear timer

                if name == "autoCollect" then
                    wlCollect();

                elseif name == "clearLootToastSource" then
                    wlLootToastSourceId = nil;
                    wlCurrentLootToastEventId = nil;

                elseif name == "clearSpecialLoot" then
                    wlClearTracker("spell");
                    wlTrackerClearedTime = now;

                elseif name == "itemDurability" then
                    wlGetItemDurability();

                elseif name == "printCollected" then
                    if wlMsgCollected ~= "" then
                        wlMessage(("%s: %s"):format(WL_NAME, WL_COLLECT_MSG:format(wlMsgCollected)), true);
                        if not uploadReminder then
                            uploadReminder = true;
                            wlMessage(("%s: %s"):format(WL_NAME, WL_UPLOAD_REMINDER), true);
                        end
                        wlMsgCollected = "";
                    end
                end
            end
        end

        wlTimeSinceLastUpdate = 0;

        -- filter out unwanted NPC location collection
        if not UnitExists("target") or UnitPlayerControlled("target") or not wlPlayerCanHaveTap("target") or not wlUnitIsClose("target") or wlIsDrunk then
            return;
        end

        local id, kind = wlUnitGUID("target");

        if id and kind == "npc" then
            wlRegisterUnitLocation(id, UnitLevel("target"));
        end

    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlParseCommand(cmd)
    local param1, param2, param3 = cmd:lower():match("^([%S]+)%s*([%S]*)%s*(.*)$");
    param1, param2 = param1 or "", param2 or "";

    if param1 == "debug" then
        if param2 == "show" then
            wlDebugFrame:Show();
        elseif param2 == "hide" then
            wlDebugFrame:Hide();
        elseif param2 == "clear" then
            wlDebugEdit:SetText("");
        elseif param2 == "toggle" then
            if wlDebugFrame:IsShown() then
                wlDebugFrame:Hide();
            else
                wlDebugFrame:Show();
            end
        end

    elseif param1 == "loc" then
        if param2 == "map" then
            wlFrameToggle(wlLocMapFrame, WL_LOC_MAP, "locMap");
        elseif param2 == "tooltip" then
            wlFrameToggle(wlLocTooltipFrame, WL_LOC_TOOLTIP, "locTooltip");
        elseif param2 == "reset" then
            wlFrameReset(wlLocTooltipFrame);
        else
            local _, x, y = wlGetLocation();
            wlMessage(("%s: %s"):format(WL_NAME, WL_LOC:format(x / 10, y / 10)), true);
        end

    elseif param1 == "id" then
        if param2 == "reset" then
            wlFrameReset(wlIdTooltipFrame);
        else
            wlFrameToggle(wlIdTooltipFrame, WL_ID_TOOLTIP, "idTooltip");
        end

    --[[elseif param1:match("^collect$") then
        wlTimers["autoCollect"] = nil; -- Cancel auto-collect
        wlCollect(true);]]

    elseif param1:match("^reset$") then
        StaticPopup_Show("WL_RESET_CONFIRM");

    elseif param1:match("minimap") then
        wlFrameToggle(wlMinimapButton, WL_MINIMAP, "minimap");

    else -- Show help
        for _, msg in ipairs(WL_HELP) do
            wlMessage(msg:gsub("%%VERSION%%", WL_VERSION), true);
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlFrameToggle(frame, msg, savename)
    wlSetting[savename] = not wlSetting[savename];

    _G["wl"..savename.."Checkbox"]:SetChecked(wlSetting[savename]);

    if wlSetting[savename] then
        frame:Show();
    else
        frame:Hide();
    end

    wlMessage(("%s: %s"):format(WL_NAME, msg:format(wlEnabledDisabled(wlSetting[savename]))), true);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlFrameReset(frame)
    frame:ClearAllPoints();
    frame:SetPoint("CENTER");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlLocMapFrame_OnLoad()
    wlLocMapFrameText:SetText(UnitName("player")..": 100.0, 100.0  -  "..NOT_APPLICABLE..": 100.0, 100.0");
    wlLocMapFrame:SetWidth(wlLocMapFrameText:GetStringWidth() + 20);
    wlLocMapFrame:SetFrameLevel(WorldMapFrame:GetFrameLevel() + 1);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlLocMapFrame_OnUpdate()
    -- Player
    -- Use the current world map instead of the real players map here.
    local location = C_Map.GetPlayerMapPosition(WorldMapFrame:GetMapID() or C_Map.GetBestMapForUnit("player"), "player");
    local pX, pY = 0, 0;

    if location then
        pX, pY = location:GetXY();
    end

    local playerStr = UnitName("player")..": |cffffffff";
    if not pX or pX == 0 or pY == 0 then
        playerStr = playerStr..NOT_APPLICABLE;
    else
        playerStr = ("%s%.1f, %.1f"):format(playerStr, pX * 100, pY * 100);
    end

    -- Cursor
    -- GetNormalizedCursorPosition already returns the correct position values (with and without zoom).
    local cX, cY = WorldMapFrame.ScrollContainer:GetNormalizedCursorPosition();

    -- Multiply with 100
    cX, cY = cX * 100, cY * 100;

    local cursorStr = WL_LOC_CURSOR..": |cffffffff";
    if cX <= 0 or cX >= 100 or cY <= 0 or cY >= 100 then
        cursorStr = cursorStr..NOT_APPLICABLE;
    else
        cursorStr = ("%s%.1f, %.1f"):format(cursorStr, cX, cY);
    end

    wlLocMapFrameText:SetText(playerStr.."|r  -  "..cursorStr.."|r");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlLocTooltipFrame_OnUpdate()
    if wlSetting.locTooltip then
       local pX, pY = GetPlayerMapPosition("player");
        if not pX or (pX == 0 and pY == 0) then
            wlLocTooltipFrameText:SetText(NOT_APPLICABLE);
        else
            wlLocTooltipFrameText:SetText(("%.1f, %.1f"):format(pX * 100, pY * 100));
        end
        wlLocTooltipFrame:SetWidth(wlLocTooltipFrameText:GetStringWidth() + 14);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlIdTooltipFrame_OnUpdate()
    local name, id, kind = wlUnitName("npc"), wlUnitGUID("npc");

    if not name or not id then
        name, id, kind = wlUnitName("target"), wlUnitGUID("target");

        if not name or not id then
            name, id, kind = wlUnitName("mouseover"), wlUnitGUID("mouseover");

            if not name or not id then
                wlIdTooltipFrameText:SetText(NOT_APPLICABLE);
            end
        end
    end

    if name and id then
        wlIdTooltipFrameText:SetText(name.."|n"..("%s: %s"):format(kind, id));
    end

    wlIdTooltipFrame:SetWidth(wlIdTooltipFrameText:GetStringWidth() + 14);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlPopupBox(staticText, editText)
    wlPopupFrameCaption:SetText(staticText or "");
    wlPopupFrameEdit:SetText(editText or "");
    wlPopupFrame:Show();
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlMessage(msg, userInitiated)
    if not msg then
        return;
    end

    if userInitiated then
        DEFAULT_CHAT_FRAME:AddMessage(msg);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlEnabledDisabled(good)
    if good then
        return WL_ENABLED;
    else
        return WL_DISABLED;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlPrint(...)
    wlDebugEdit:SetText(wlDebugEdit:GetText()..wlConcatToken(" : ", ...).."\n");
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local wlGlobalEvents = {};
function wlGlobalUnregister(eventName)
    if wlGlobalEvents[eventName] then
        return;
    end

    wlGlobalEvents[eventName] = { GetFramesRegisteredForEvent(eventName) };

    for _, frame in ipairs(wlGlobalEvents[eventName]) do
        frame:UnregisterEvent(eventName);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGlobalRegister(eventName)
    if type(wlGlobalEvents[eventName]) ~= "table" then
        return;
    end

    for _, frame in ipairs(wlGlobalEvents[eventName]) do
        frame:RegisterEvent(eventName);
    end

    wlGlobalEvents[eventName] = nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--



--------------------------
--------------------------
--                      --
--   PARSE  FUNCTIONS   --
--                      --
--------------------------
--------------------------

-- |cffffffff|Hcurrency:1226|h[Nethershard]|h|r
-- |cffffff00|Hquest:10002:64|h[The Firewing Liaison]|h|r
-- |cffffff00|Hquest:11506:-1|h[Spirits of Auchindoun]|h|r
-- (color) : (id) : (name)
local WL_CURRENCYLINK = "|c(%x+)|Hcurrency:(%d+)|h%[(.+)%]|h|r";
function wlParseCurrencyLink(link)
    if link then
       for color, id, name in link:gmatch(WL_CURRENCYLINK) do
            return tonumber(id);
        end
    end
end

--    (color) : (id) : (enchant) : (1st socket) : (2nd socket) : (3rd socket) : (4th socket) : (subid) : (guid) : (playerLevel) : (specId) : (upgradeType) : (bonusContext) : (numBonus) (: ...bonusIds...) : (upgradeId) : (name)
local WL_ITEMLINK = "|c(%x+)|Hitem:(%d+):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*)([^|]*)|h%[(.+)%]|h|r";

function wlParseItemLink(link)
    if link then

        local found, _, color, id, enchant, socket1, socket2, socket3, socket4, subId, guid, pLevel, specId, upgradeType, bonusContext, numBonus, bonuses, name = link:find(WL_ITEMLINK);

        if found then
            id, subId, guid = tonumber(id), tonumber(subId) or 0, tonumber(guid) or 0;

            if subId ~= 0 then
                wlUpdateVariable(wlItemSuffix, id, subId, "add", 1);

                if subId < 0 then
                    wlUpdateVariable(wlItemSuffix, id, "sF", "set", bit_band(guid, 0xFFFF));
                end
            end

            bonusContext, numBonus = tonumber(bonusGroup) or 0, tonumber(numBonus) or 0;
            if bonusContext and bonusContext ~= 0 then
                wlUpdateVariable(wlItemBonuses, id, bonusContext, "add", 1);
            end

            if numBonus and numBonus > 0 and bonuses then
                local p1, p2 = bonuses:find(":");
                if p1 and p1 == 1 then
                    bonuses = { strsplit(":", bonuses:sub(2)) };
                    local allBonuses = {};
                    for index = 1, math.min(16, numBonus), 1 do
                        table.insert(allBonuses, bonuses[index]);
                    end
                    if next(allBonuses) ~= nil then
                        wlUpdateVariable(wlItemBonuses, id, "bonuses", table.concat(allBonuses, ":"), "add", 1);
                    end
                end
            end

            return id, subId, tonumber(enchant) or 0, tonumber(socket1) or 0, tonumber(socket2) or 0, tonumber(socket3) or 0, tonumber(socket4) or 0, name, color, guid, tonumber(pLevel) or 0;
        end
    end

    return 0, 0, 0, 0, 0, 0, 0, "", "", 0, 0;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

-- |cffffff00|Hquest:10002:64|h[The Firewing Liaison]|h|r
-- |cffffff00|Hquest:11506:-1|h[Spirits of Auchindoun]|h|r
-- (color) : (id) : (level) : (name)
local WL_QUESTLINK = "|c(%x+)|Hquest:(%d+):(-?%d*)|h%[(.+)%]|h|r";

function wlParseQuestLink(link)
    if link then
        for color, id, level, name in link:gmatch(WL_QUESTLINK) do
            return tonumber(id), tonumber(level) or 0, name, color;
        end
    end

    return 0, 0, "", "";
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

-- (id) : (color) : (name)
local WL_SPELLLINK = "|Hspell:(%d+)|h|r|c(%x+)%[(.+)%]|r|h";

function wlParseSpellLink(link)
    if link then
        for id, color, name in link:gmatch(WL_SPELLLINK) do
            return tonumber(id), name, color;
        end
    end

    return 0, "", "";
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local WL_CURRENCY = {
    ["1"] = COPPER_AMOUNT:gsub("%%d ", ""),
    ["100"] = SILVER_AMOUNT:gsub("%%d ", ""),
    ["10000"] = GOLD_AMOUNT:gsub("%%d ", ""),
};

function wlParseCoin(strCoin)
    local coin = 0;
    for k, v in pairs(WL_CURRENCY) do
        local found, _, a = strCoin:find("(%d+) "..v);
        if found then
            coin = coin + a * tonumber(k);
        end
    end

    return coin;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local GUID_TOKENS = {
    ["Creature|Pet|Vehicle"] = {
        "(%d+)-(%d+)-(%d+)-(%d+)-(%d+)-(%x+)",
        5,
        "npc",
    },
    ["GameObject"] = {
        "(%d+)-(%d+)-(%d+)-(%d+)-(%d+)-(%x+)",
        5,
        "object",
    },
    ["Item"] = {
        "(%d+)-(%d+)-(%x+)",
        2,
        "item",
    }
};

function wlParseGUID(guid)
    if not guid then
        return;
    end

    local id, kind;

    for token, tokenData in pairs(GUID_TOKENS) do
        for subToken in token:gmatch("[^|]+") do
            if guid:match("^" .. subToken) then
                local matches = { guid:match(tokenData[1]) };
                if matches and next(matches) ~= nil then
                    id, kind = matches[tokenData[2]], tokenData[3];
                    break;
                end
            end
        end
    end

    if id == 0 then
        id = nil;
    end

    return id, kind;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlParseString(template, str)
    if not template or not str then
        return nil;
    end

    template = template:gsub("%%s", "(.+)");
    template = template:gsub("%%d", "(%%d+)");

    return wlParseFind(str:find(template));
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlParseFind(found, _, ...)
    if not found then
        return nil;
    end

    return ...;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local wlQuestKeywords = nil;
function wlGetSourceText(str, nameOnly) -- @BUG@

    if GetLocale() == "ruRU" then
        return str;
    end

    -- Init
    if not wlQuestKeywords then
        wlQuestKeywords = {};

        -- Race
        local race = UnitRace("player");
        wlQuestKeywords[race] = "R"..(wlQuestKeywords[race] or "");

        -- Class
        local class = UnitClass("player");
        wlQuestKeywords[class] = "C"..(wlQuestKeywords[class] or "");

        -- Player name
        local name = UnitName("player");
        wlQuestKeywords[name] = "N"..(wlQuestKeywords[name] or "");
    end

    if not str or str == "" then
        return "";
    end


    -- Mapping function
    local findNreplace = function(str, word, key)
        -- all string
        if str == word then
            return "$"..key;
        end

        -- start of string
        str = str:gsub("^"..word.."([^%w])", "$"..key.."%1");

        -- middle of string
        str = str:gsub("([^%w])"..word.."([^%w])", "%1$"..key.."%2");

        -- end of string
        str = str:gsub("([^%w])"..word.."$", "%1$"..key);

        return str;
    end;

    -- Scanning...
    for word, key in pairs(wlQuestKeywords) do
        if not nameOnly or key == "N" then
            str = findNreplace(str, word, key); -- Uppercase
            str = findNreplace(str, word:lower(), key:lower()); -- Lowercase
        end
    end

    return str;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetPlayerRealmId()
    local guid = wlScans.guid
    local realmId = 0
    if guid then
        realmId = tonumber(strmatch(guid, "^Player%-(%d+)"))
    end

    return realmId;
end

----------------------------
----------------------------
--                        --
--   COMPUTE  FUNCTIONS   --
--                        --
----------------------------
----------------------------

local WL_OPS = {
    init =function(a, b) if type(a) ~= "nil" then return a; end return b; end, -- <false> is a valid init state
    initArray =function(a, _) if type(a) ~= "nil" then return a; end return {}; end, -- <false> is a valid init state
    set =function(_, b) return b; end,
    add =function(a, b) return (tonumber(a) or 0) + b; end,
    multiply =function(a, b) return (tonumber(a) or 1) * b; end,
    concat =function(a, b) return (a or "") .. b; end,
    min =function(a, b) a, b = tonumber(a), tonumber(b); return a and b and math.min(a, b) or a or b; end,
    max =function(a, b) a, b = tonumber(a), tonumber(b); return a and b and math.max(a, b) or a or b; end,
};

function wlUpdateVariable(master, first, ...)

    local nParams = select("#", ...);

    if not master or not first or nParams <= 1 then
        return nil;

    elseif nParams == 2 then
        if not WL_OPS[wlSelectOne(1, ...)] then
            return nil;
        end

        master[first] = WL_OPS[wlSelectOne(1, ...)](master[first], wlSelectOne(2, ...));
        return master[first];

    else
        if not master[first] then
            master[first] = {};
        end

        return wlUpdateVariable(master[first], ...);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlSelectOne(i, ...)
    -- We only want the first returned value
    local v = select(i, ...);

    return v;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetFullCost(cost, standing)
    if not cost or cost == 0 then
        return 0;
    end

    local costMod = 1;
    if IsSpellKnown(83964) then -- bartering guild lvl 24
        costMod = costMod - 0.1;
    end
    local race = select(2, UnitRace("player"));
    if standing and race == "Goblin" then -- Goblin's Best Deals Anywhere = exalted everywhere
        costMod = costMod - WL_REP_DISCOUNT[8];
    elseif standing and WL_REP_DISCOUNT[standing] then
        costMod = costMod - WL_REP_DISCOUNT[standing];
    end

    return floor(cost/costMod);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableWalk(a, f)
    for k, v in pairs(a) do
        a[k] = f(k, v);
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableClear(a)
    wlTableWalk(a, function() return false; end);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetDate()
    if (C_Calendar) then
        local date = C_Calendar.GetDate();
        return date.month, date.monthDay, date.year;
    elseif (C_DateAndTime and C_DateAndTime.GetTodaysDate) then
        local date = C_DateAndTime.GetTodaysDate();
        return date.month, date.day, date.year;
    elseif (C_DateAndTime and C_DateAndTime.GetCurrentCalendarTime) then
        local date = C_DateAndTime.GetCurrentCalendarTime();
        return date.month, date.monthDay, date.year;
    end
    return nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local wlTimeOffset = nil;
-- returns a unix timestamp in milliseconds
function wlGetTime()
    -- Init
    if not wlTimeOffset then
        wlTimeOffset = floor((GetServerTime() - GetTime()) * 1000);
    end

    return wlTimeOffset + floor(GetTime() * 1000);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlIsValidInterval(value1, value2, delta)
    return abs(value1 - value2) <= (wlSelectOne(3, GetNetStats()) + delta);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlIsEqualValues(value1, value2, delta)
    return abs(value1 - value2) <= delta;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

local UNKNOWNOBJECT, UKNOWNBEING, UNKNOWN = _G.UNKNOWNOBJECT:lower(), _G.UKNOWNBEING:lower(), _G.UNKNOWN:lower();
function wlIsValidName(name)
    return name and name ~= "" and name:lower() ~= UNKNOWNOBJECT and name:lower() ~= UKNOWNBEING and name:lower() ~= UNKNOWN;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlConcat(...)
    return wlConcatToken("^", ...);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlConcatToken(token, ...)
    local str = wlToString(wlSelectOne(1, ...));

    for i=2, select("#", ...) do
        str = str..token..wlToString(wlSelectOne(i, ...));
    end

    return str;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlToString(v)
    local typeV = type(v);

    if typeV == "table" or typeV == "function" or typeV == "thread" or typeV == "userdata" then
        return "<"..typeV..">";

    elseif typeV == "boolean" then
        return v and "<true>" or "<false>";
    end

    return v or "<nil>";
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableCopy(Tr, Tx)
    for k, v in pairs(Tx) do
        Tr[k] = v;
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableFind(a, f, ...)
    for k, v2 in pairs(a) do
        if type(f) == "function" then
            if f(v2, ...) then
                return k;
            end
        else
            if f == v2 then
                return k;
            end
        end
    end

    for k, v2 in ipairs(a) do
        if type(f) == "function" then
            if f(v2, ...) then
                return k;
            end
        else
            if f == v2 then
                return k;
            end
        end
    end

    return nil;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTablePrint(t, indent)
    indent = indent or "";

    for k, v in pairs(t) do
        local typeK, typeV = type(k), type(v);

        if typeK == "number" then
            k = indent.."["..k.."]".." = ";
        else
            k = indent.."[\""..k.."\"]".." = ";
        end

        if typeV == "table" then
            wlPrint(k.."{");
            wlTablePrint(v, indent.."    ");
            wlPrint(indent.."},");

        elseif typeV == "function" or typeV == "thread" or typeV == "userdata" then
            wlPrint(k.."<"..typeV.."> ...,");

        elseif typeV == "boolean" then
            wlPrint(k.."<boolean> "..(v and "true" or "false")..",");

        elseif typeV == "string" then
            wlPrint(k.."<string> \""..v.."\",");

        else
            wlPrint(k.."<"..typeV.."> "..(v or k)..",");
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableCountValues(t)
    if "table" ~= type(t) then return end

    local count = 0
    for key, value in pairs(t) do
        if type(value) == "table" then
            count = count + wlTableCountValues(value)
        else
            count = count + 1
        end
    end

    return count
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableConcatValues(t, token)
    if "table" ~= type(t) then return end

    local text, first, temp = "", true;

    for key, value in pairs(t) do
        if type(value) == "table" then
            temp = wlTableConcatValues(value, token);
        else
            temp = value;
        end

        if temp and temp ~= "" then
            if first then
                first = false;
                text = temp;
            else
                text = text..token..temp;
            end
        end
    end

    return text;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableConcatKeys(t, token)
    local text, first, temp = "", true;

    for key, value in pairs(t) do
        if type(value) == "table" then
            temp = wlTableConcatKeys(value, token);
        else
            temp = key;
        end

        if temp and temp ~= "" then
            if first then
                first = false;
                text = temp;
            else
                text = text..token..temp;
            end
        end
    end

    return text;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableConcatKeyValues(t, token)
    local text, first, tempKey, tempValue = "", true;

    for key, value in pairs(t) do
        if type(value) == "table" then
            tempKey = wlTableConcatKeyValues(value, token);
            tempValue = nil;
        else
            tempKey = key;
            tempValue = value;
        end

        if tempValue and tempValue ~= "" and tempKey and tempKey ~= "" then
            if first then
                first = false;
                text = tempKey..token..tempValue;
            else
                text = text..token..tempKey..token..tempValue;
            end
        elseif tempKey and tempKey ~= "" then
            if first then
                first = false;
                text = tempKey;
            else
                text = text..token..tempKey;
            end
        end
    end

    return text;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlTableIsEmpty(t)
    if type(t) == "table" then
        for _ in pairs(t) do
            return false;
        end
    end

    return true;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--



-------------------------
-------------------------
--                     --
--   HOOK  FUNCTIONS   --
--                     --
-------------------------
-------------------------

function wlReloadUI()
    wlUIReloaded = true;
    return wlDefaultReloadUI();
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlConsoleExec(cmd)
    if cmd:lower() == "reloadui" then
        wlUIReloaded = true;
    end
    return wlDefaultConsoleExec(cmd);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlHook()
    wlDefaultChatFrame_DisplayTimePlayed = ChatFrame_DisplayTimePlayed;
    ChatFrame_DisplayTimePlayed = wlChatFrame_DisplayTimePlayed;

    wlDefaultGetQuestReward = GetQuestReward;
    GetQuestReward = wlGetQuestReward;

    wlDefaultReloadUI = ReloadUI;
    ReloadUI = wlReloadUI;

    wlDefaultConsoleExec = ConsoleExec;
    ConsoleExec = wlConsoleExec;

    hooksecurefunc("UseItemByName", function(name, target)
        if not target then
            wlBagItemOnUse(wlSelectOne(2, GetItemInfo(name)));
        end
    end);

    hooksecurefunc("UseContainerItem", function(bag, slot, target)
        if not target then
            wlBagItemOnUse(GetContainerItemLink(bag, slot), bag, slot);
        end
    end);

    hooksecurefunc("PlaceAuctionBid", wlPlaceAuctionBid);
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlUnhook()
    ChatFrame_DisplayTimePlayed = wlDefaultChatFrame_DisplayTimePlayed;
    GetQuestReward = wlDefaultGetQuestReward;
    ReloadUI = wlDefaultReloadUI;
    ConsoleExec = wlDefaultConsoleExec;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--


--------------------------
--------------------------
--                      --
--   STATS  FUNCTIONS   --
--                      --
--------------------------
--------------------------

function wlReset()
    wlVersion, wlUploaded, wlStats, wlExportData, wlRealmList = WL_VERSION, 0, "", "", {};
    wlAuction, wlEvent, wlItemSuffix, wlObject, wlProfile, wlUnit = {}, {}, {}, {}, {}, {};
    wlItemDurability, wlItemBonuses = {}, {};
    wlProfileData, wlTradeSkillDifficulty = {}, {};
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetItemDurability()
    for i=0, NUM_BAG_SLOTS do
        for j=1, GetContainerNumSlots(i) do
            local itemID = GetContainerItemID(i, j);
            if itemID and itemID ~= 0 then
                local _, maxDura = GetContainerItemDurability(i, j);
                wlItemDurability[itemID] = maxDura or 0;
            end
        end
    end

    for i=0, 19 do
        if i ~= INVSLOT_AMMO then
            local itemID = GetInventoryItemID("player", i);
            if itemID and itemID ~= 0 then
                local _, maxDura = GetInventoryItemDurability(i);
                wlItemDurability[itemID] = maxDura or 0;
            end
        end
    end
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlRegisterStats()
    local nDrops, nQuests, nCharacters, _ = 0, 0, 0;

    for _, a in pairs(wlEvent) do
        for _, b in pairs(a) do
            for _, c in pairs(b) do
                if c.what == "loot" then
                    nDrops = nDrops + 1;
                elseif c.what == "quest" then
                    nQuests = nQuests + 1;
                end
            end
        end
    end

    _, nCharacters = wlExportData:gsub(";", "");

    wlStats = wlConcat(wlArrayLength(wlUnit), wlArrayLength(wlObject), nQuests, nDrops, wlArrayLength(wlAuction, 2), nCharacters, GetLocale(), wlSelectOne(2, GetBuildInfo()));
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlArrayLength(array, depth)
    if not array then
        return 0;
    end

    local count = 0;

    depth = depth or 0;
    if depth > 0 then
        for _, subA in pairs(array) do
            count = count + wlArrayLength(subA, depth - 1);
        end
    else
        for _, _ in pairs(array) do
            count = count + 1;
        end
    end

    return count;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--

function wlGetCurrentUiMapID()
    local uiMapID = C_Map.GetBestMapForUnit("player") or WorldMapFrame:GetMapID();

    -- uiMapID can be nil after fresh teleports and map/instance changes.
    if not uiMapID then
        return nil;
    end

    local uiMapDetails = C_Map.GetMapInfo(uiMapID);

    if WL_ZONE_EXCEPTION[uiMapDetails.name] then
        uiMapID = WL_ZONE_EXCEPTION[uiMapDetails.name];
    else
        uiMapID = C_Map.GetBestMapForUnit("player") or WorldMapFrame:GetMapID();
    end

    return uiMapID;
end

--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
