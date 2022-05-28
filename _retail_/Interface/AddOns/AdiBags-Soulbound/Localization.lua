-- localization table; returns English phrase if translation is not found -----
-- see https://phanx.net/addons/tutorials/localize for details ----------------

local _, namespace = ...

local L = setmetatable({}, { __index = function(t, k)
	local v = tostring(k)
	rawset(t, k, v)
	return v
end })

namespace.L = L

local LOCALE = GetLocale()

if LOCALE == "enUS" then
	-- The EU English game client also
	-- uses the US English locale code.
return end

if LOCALE == "deDE" then
	-- German translations go here
	L["Soulbound"] = "Seelengebunden"
	L["Place items that are soulbound in a separate section"] = "Platziere seelengebundene Gegenstände in ihre eigene Gruppe"
	L["Equippable Items"] = "Tragbare Gegenstände"
	L["Only filter the items that are also equippable instead of all soulbound items"] = "Nur tragbare im Vergleich zu alle seelengebundene Gegenstände filtern"
return end

if LOCALE == "frFR" then
	-- French translations go here
	-- L["Soulbound"] = ""
	-- L["Place items that are soulbound in a separate section"] = ""
	-- L["Equippable Items"] = ""
	-- L["Only filter the items that are also equippable instead of all soulbound items"] = ""
return end

if LOCALE == "esES" or LOCALE == "esMX" then
	-- Spanish translations go here
	-- L["Soulbound"] = ""
	-- L["Place items that are soulbound in a separate section"] = ""
	-- L["Equippable Items"] = ""
	-- L["Only filter the items that are also equippable instead of all soulbound items"] = ""
return end

if LOCALE == "ptBR" then
	-- Brazilian Portuguese translations go here
	-- L["Soulbound"] = ""
	-- L["Place items that are soulbound in a separate section"] = ""
	-- L["Equippable Items"] = ""
	-- L["Only filter the items that are also equippable instead of all soulbound items"] = ""
	-- Note that the EU Portuguese WoW client also
	-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
	-- Russian translations go here
	-- L["Soulbound"] = ""
	-- L["Place items that are soulbound in a separate section"] = ""
	-- L["Equippable Items"] = ""
	-- L["Only filter the items that are also equippable instead of all soulbound items"] = ""
return end

if LOCALE == "koKR" then
	-- Korean translations go here
	-- L["Soulbound"] = ""
	-- L["Place items that are soulbound in a separate section"] = ""
	-- L["Equippable Items"] = ""
	-- L["Only filter the items that are also equippable instead of all soulbound items"] = ""
return end

if LOCALE == "zhCN" then
	-- Simplified Chinese translations go here
	-- L["Soulbound"] = ""
	-- L["Place items that are soulbound in a separate section"] = ""
	-- L["Equippable Items"] = ""
	-- L["Only filter the items that are also equippable instead of all soulbound items"] = ""
return end

if LOCALE == "zhTW" then
	-- Traditional Chinese translations go here
	-- L["Soulbound"] = ""
	-- L["Place items that are soulbound in a separate section"] = ""
	-- L["Equippable Items"] = ""
	-- L["Only filter the items that are also equippable instead of all soulbound items"] = ""
return end