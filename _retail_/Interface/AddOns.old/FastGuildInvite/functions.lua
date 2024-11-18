local addon=FGI
local fn=addon.functions
local L = FGI:GetLocale()
local CLASS = L.class
local interface = addon.interface
local settings = L.settings
local GUI = LibStub("AceGUI-3.0")
local Serializer = LibStub:GetLibrary("AceSerializer-3.0")
local LibDeflate = LibStub:GetLibrary("LibDeflate")
local libWho = LibStub("FGI-WhoLib")
local color = addon.color
addon.search = {progress=1, inviteList={}, timeShift=0, tempSendedInvites={}, whoQueryList = {}, oldCount = 0,}
addon.removeMsgList = {}
local DB
local debugDB
local Analytic = addon.lib.WagoAnalytics
local staticAreas, allAreas = {}, {};

addon.searchInfo = {unique = {0}, sended = {0}, invited = {0}, filtered = {0}}
local mt = {
	__call = function(self,n)
		self[1] = self[1] + (n==0 and -self[1] or (n or 1))
		interface.mainFrame.searchInfo.update(addon.searchInfo())
		return self[1]
	end
}
setmetatable(addon.searchInfo.unique,mt);setmetatable(addon.searchInfo.sended,mt);setmetatable(addon.searchInfo.invited,mt);setmetatable(addon.searchInfo.filtered,mt);
setmetatable(addon.searchInfo,{__call = function(self)
	return {self.unique[1], self.sended[1], self.invited[1], self.filtered[1]}
end});

local time, next = time, next

--[====[@version-classic@
-- race and class mappings table
local RaceClassCombo = {
	Dwarf = {CLASS.Warrior,CLASS.Priest,CLASS.Hunter,CLASS.Paladin,CLASS.Rogue},
	Gnome = {CLASS.Warrior,CLASS.Mage,CLASS.Rogue,CLASS.Warlock},
	Human = {CLASS.Warrior,CLASS.Priest,CLASS.Mage,CLASS.Paladin,CLASS.Rogue,CLASS.Warlock},
	NightElf = {CLASS.Warrior,CLASS.Druid,CLASS.Priest,CLASS.Hunter,CLASS.Rogue},
	Orc = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Shaman,CLASS.Warlock},
	Tauren = {CLASS.Warrior,CLASS.Hunter,CLASS.Shaman,CLASS.Druid},
	Troll = {CLASS.Warrior,CLASS.Priest,CLASS.Mage,CLASS.Hunter,CLASS.Rogue,CLASS.Shaman},
	Undead = {CLASS.Warrior,CLASS.Priest,CLASS.Mage,CLASS.Rogue,CLASS.Warlock},
}
--@end-version-classic@]====]
--[====[@version-wrath@
-- race and class mappings table
local RaceClassCombo = {
	Draenei = {CLASS.Hunter,CLASS.Mage,CLASS.Paladin,CLASS.Priest,CLASS.Shaman,CLASS.Warrior,CLASS.DeathKnight},
	Dwarf = {CLASS.Hunter,CLASS.Paladin,CLASS.Priest,CLASS.Rogue,CLASS.Warrior,CLASS.DeathKnight},
	Gnome = {CLASS.Mage,CLASS.Rogue,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	Human = {CLASS.Mage,CLASS.Paladin,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	NightElf = {CLASS.Druid,CLASS.Hunter,CLASS.Priest,CLASS.Rogue,CLASS.Warrior,CLASS.DeathKnight},
	BloodElf = {CLASS.Hunter,CLASS.Mage,CLASS.Paladin,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.DeathKnight},
	Orc = {CLASS.Hunter,CLASS.Rogue,CLASS.Shaman,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	Tauren = {CLASS.Druid,CLASS.Hunter,CLASS.Shaman,CLASS.Warrior,CLASS.DeathKnight},
	Troll = {CLASS.Hunter,CLASS.Mage,CLASS.Priest,CLASS.Rogue,CLASS.Shaman,CLASS.Warrior,CLASS.DeathKnight},
	Undead = {CLASS.Mage,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
}
--@end-version-wrath@]====]
--[====[@version-cata@
-- race and class mappings table
local RaceClassCombo = {
	Draenei = {CLASS.Hunter,CLASS.Mage,CLASS.Paladin,CLASS.Priest,CLASS.Shaman,CLASS.Warrior,CLASS.DeathKnight},
	Dwarf = {CLASS.Hunter,CLASS.Mage,CLASS.Paladin,CLASS.Priest,CLASS.Rogue,CLASS.Shaman,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	Gnome = {CLASS.Mage,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	Human = {CLASS.Mage,CLASS.Hunter,CLASS.Paladin,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	NightElf = {CLASS.Mage,CLASS.Druid,CLASS.Hunter,CLASS.Priest,CLASS.Rogue,CLASS.Warrior,CLASS.DeathKnight},
	Worgen = {CLASS.DeathKnight,CLASS.Druid,CLASS.Hunter,CLASS.Mage,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.Warrior},
	BloodElf = {CLASS.Hunter,CLASS.Mage,CLASS.Paladin,CLASS.Priest,CLASS.Warrior,CLASS.Rogue,CLASS.Warlock,CLASS.DeathKnight},
	Orc = {CLASS.Mage,CLASS.Hunter,CLASS.Rogue,CLASS.Shaman,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	Tauren = {CLASS.Druid,CLASS.Hunter,CLASS.Paladin,CLASS.Priest,CLASS.Shaman,CLASS.Warrior,CLASS.DeathKnight},
	Troll = {CLASS.Druid,CLASS.Hunter,CLASS.Mage,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.Shaman,CLASS.Warrior,CLASS.DeathKnight},
	Undead = {CLASS.Hunter,CLASS.Mage,CLASS.Priest,CLASS.Rogue,CLASS.Warlock,CLASS.Warrior,CLASS.DeathKnight},
	Goblin = {CLASS.DeathKnight,CLASS.Hunter,CLASS.Mage,CLASS.Priest,CLASS.Rogue,CLASS.Shaman,CLASS.Warlock,CLASS.Warrior},
}
--@end-version-cata@]====]
--@version-retail@
-- race and class mappings table
local RaceClassCombo = {
	Orc = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Shaman,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DeathKnight},
	Undead = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DeathKnight},
	Tauren = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Priest,CLASS.Shaman,CLASS.Monk,CLASS.Druid,CLASS.DeathKnight},
	Troll = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.Druid,CLASS.DeathKnight},
	Human = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DeathKnight},
	Dwarf = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DeathKnight},
	NightElf = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Monk,CLASS.Druid,CLASS.DemonHunter,CLASS.DeathKnight},
	Gnome = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DeathKnight},
	BloodElf = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DemonHunter,CLASS.DeathKnight},
	Goblin = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Warlock,CLASS.DeathKnight},
	Nightborne = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Monk},
	HightmountainTauren = {CLASS.Warrior,CLASS.Hunter,CLASS.Shaman,CLASS.Monk,CLASS.Druid},
	MagharOrc = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Monk},
	Pandaren = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Monk},
	Draenei = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Monk,CLASS.DeathKnight},
	Worgen = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Druid,CLASS.DeathKnight},
	VoidElf = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Monk},
	LightforgedDraenei = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Priest,CLASS.Mage},
	DarkIronDwarf = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Warlock,CLASS.Monk},
	KulTiran = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Monk,CLASS.Druid,},
	ZandalariTroll = {CLASS.Warrior,CLASS.Paladin,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Monk,CLASS.Druid,},
	Mechagnome = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DeathKnight},
	Vulpera = {CLASS.Warrior,CLASS.Hunter,CLASS.Rogue,CLASS.Priest,CLASS.Shaman,CLASS.Mage,CLASS.Warlock,CLASS.Monk,CLASS.DeathKnight},
	Dracthyr = {CLASS.Evoker},
}
--@end-version-retail@

---
--- restore filter settings
---
---@param filterName string
function fn:FilterChange(filterName)
	local filtersFrame = interface.settings.filters.filtersFrame
	local addfilterFrame = interface.settings.filters.addfilterFrame
	local filter = FGI.DB.realm.filtersList[filterName]
	local class = filter.classFilter
	local raceFilter = filter.raceFilter

	filtersFrame.frame:Hide()
	addfilterFrame.frame:Show()


	if not class then
		addfilterFrame.classesCheckBoxIgnore:SetValue(true)
	else
		addfilterFrame.classesCheckBoxIgnore:SetValue(false)
		addfilterFrame.classesCheckBoxDruid:SetValue(class[CLASS.Druid] or false)
		addfilterFrame.classesCheckBoxHunter:SetValue(class[CLASS.Hunter] or false)
		addfilterFrame.classesCheckBoxMage:SetValue(class[CLASS.Mage] or false)
		addfilterFrame.classesCheckBoxPaladin:SetValue(class[CLASS.Paladin] or false)
		addfilterFrame.classesCheckBoxPriest:SetValue(class[CLASS.Priest] or false)
		addfilterFrame.classesCheckBoxRogue:SetValue(class[CLASS.Rogue] or false)
		addfilterFrame.classesCheckBoxShaman:SetValue(class[CLASS.Shaman] or false)
		addfilterFrame.classesCheckBoxWarlock:SetValue(class[CLASS.Warlock] or false)
		addfilterFrame.classesCheckBoxWarrior:SetValue(class[CLASS.Warrior] or false)
		
		--@non-version-classic@
		addfilterFrame.classesCheckBoxDeathKnight:SetValue(class[CLASS.DeathKnight] or false)
		--@end-non-version-classic@

		--@version-retail@
		addfilterFrame.classesCheckBoxMonk:SetValue(class[CLASS.Monk] or false)
		addfilterFrame.classesCheckBoxDemonHunter:SetValue(class[CLASS.DemonHunter] or false)
		addfilterFrame.classesCheckBoxEvoker:SetValue(class[CLASS.Evoker] or false)
		--@end-version-retail@
	end


	if not raceFilter then
		addfilterFrame.rasesCheckBoxIgnore:SetValue(true)
	else
		addfilterFrame.rasesCheckBoxIgnore:SetValue(false)
		for i=1, #addfilterFrame.rasesCheckBoxRace do
			local race = addfilterFrame.rasesCheckBoxRace[i]
			local name = race:GetLabel()
			race:SetValue(raceFilter[name] and true or false)
		end
	end

	addfilterFrame.filterNameEdit:SetText(filterName)
	addfilterFrame.filterNameEdit:SetDisabled(true)
	addfilterFrame.excludeNameEditBox:SetText(filter.filterByName or "")
	addfilterFrame.lvlRangeEditBox:SetText(filter.lvlRange or "")
	addfilterFrame.rioMPlusEditBox:SetText(filter.rioMPlus or '')
	if filter.rioRaid then
		addfilterFrame.rioRaidProgressName_EditBox:SetText(filter.rioRaid.name)
		addfilterFrame.rioRaidProgressN_EditBox:SetText(filter.rioRaid[1])
		addfilterFrame.rioRaidProgressH_EditBox:SetText(filter.rioRaid[2])
		addfilterFrame.rioRaidProgressM_EditBox:SetText(filter.rioRaid[3])
	else
		addfilterFrame.rioRaidProgressName_EditBox:SetText('')
		addfilterFrame.rioRaidProgressN_EditBox:SetText('')
		addfilterFrame.rioRaidProgressH_EditBox:SetText('')
		addfilterFrame.rioRaidProgressM_EditBox:SetText('')
	end

	fn:classIgnoredToggle()
	fn:racesIgnoredToggle()
	addfilterFrame.change = true
end
---
--- changing the Font and Size for
---
---@param frame table mutable frame
---@param font string text font
---@param size number text size
function fn.fontSize(frame, font, size)
	font = font or settings.Font
	size = size or settings.FontSize
	frame:SetFont(font, size)
end
---
--- list of static areas
---
---@return table areas {area1 = true, area2 = true, ...}
function fn.getStaticAreas()
	-- cache
	for _ in pairs(staticAreas) do
		return staticAreas;
	end

	local areas = {};
	for i=1, #FGI_CONST.areas do
		local area = C_Map.GetAreaInfo(FGI_CONST.areas[i]);
		if area then
			areas[area] = true;
		end
	end

	staticAreas = areas;

	return areas;
end
---
--- list of player and static areas
---
---@param force ?boolean true - skip cache
---@return table areas {area1 = true, area2 = true, ...}
function fn.getAreas(force)
	if not force then
		-- cache
		for _ in pairs(allAreas) do
			return allAreas;
		end
	end

	local areas = {};
	for k,v in pairs(fn.getStaticAreas()) do
		areas[k] = v;
	end
	for i=1, #DB.global.customQuietList do
		areas[DB.global.customQuietList[i]] = true;
	end

	allAreas = areas;

	return areas;
end

FGI.animations.notification = CreateFrame("Frame")
local anim = FGI.animations.notification
	anim:SetSize(1,1)
	anim:Hide()
	anim:SetPoint("TOP", UIParent, "TOP", 0, -150)
	anim.f = anim:CreateFontString(nil, "BACKGROUND", "GameFontHighlightSmall")
	anim.f.font = anim.f:GetFont()
	anim.f:SetText("Test TEXT")
	anim.f:SetPoint("CENTER", anim)
	anim.f.animation = anim:CreateAnimationGroup()
local animation = anim.f.animation:CreateAnimation("Alpha")
	animation:SetDuration(0.5)
	animation:SetFromAlpha(1)
	animation:SetToAlpha(0)
	animation:SetStartDelay(3)
anim.f.animation:SetScript("OnFinished", function()anim:Hide()end)

---
--- start animation
---
---@param self Frame
---@param text string
---@param font string
---@param size number
function anim.Start(self, text, font, size)
	if not text then return end
	font = font or settings.Font
	size = size or 21
	text = "|cffffff00<|r|cff16ABB5FGI|r|cffffff00>|r "..text
	anim.f:SetFont(font, size, "OUTLINE")
	self.f:SetText(text)

	self:Show()
	self.f.animation:Play()
end
---
--- get the current time accurate to hours
---
---@return number
function fn.getTime()
	return time({year = date("%Y"), month = date("%m"), day = date("%d"), hour = date("%H")});
end
---
--- update invite button text
---
---@param text string
local function inviteBtnText(text)
	interface.scanFrame.invite:SetText(text)
end
---
--- checking if a player is blacklisted
---
---@param name string player name
---@param full boolean is this a deep search
---@return boolean|string
local function IsInBlackList(name, full)
	local n1 = name:lower()
	local n2 = name:gsub("^%l", string.upper)
	if DB.realm.blackList[n1] then return n1 end
	if DB.realm.blackList[n2] then return n2 end
	if not full then return false end
	n1 = "^"..n1
	n2 = "^"..n2
	for k,v in pairs(DB.realm.blackList) do
		if k:find(n1) or k:find(n2) then
			return k
		end
	end
	return false
end
---
--- checking if a player leaves the guild
---
---@param name string player name
---@return boolean
local function IsInLeaveList(name)
	return DB.realm.leave[name] and true or false
end
---
--- checking if this player is in our invite queue
---
---@param name string player name
---@return boolean
local function IsInTempList(name)
	return addon.search.tempSendedInvites[name] and true or false
end
---
--- checking if we have previously invited this player
---
---@param name string player name
---@return boolean
local function IsInAlreadySendedList(name)
	return DB.realm.alreadySended[name] and true or false
end
---
--- checking if the player passes our filters, if any
---
---@param player string player name
---@return boolean
local function IsCustomFiltered(player)
	return (DB.realm.enableFilters and fn:filtered(player)) and true or false
end
---
--- checking if the player is in an area we don't want to disturb him. if enabled in settings
---
---@param area string area name
---@return boolean
local function IsInQuietZone(area)
	return (DB.global.quietZones and fn.getAreas()[area]) and true or false
end
--- show the data of the current player in the scan window
local function onListUpdate()
	local list = addon.search.inviteList
	interface.scanFrame.player:SetText(#list > 0 and format("%s%s %d %s|r", color[list[1].NoLocaleClass:upper()] or color.gray, list[1].name, list[1].lvl, list[1].class) or "")
	if #list > 0 then
		interface.scanFrame.player.data = {
			name = list[1].name:find("%-") and list[1].name:match("(.*)%-") or list[1].name,
			realm = list[1].name:find("%-") and list[1].name:match("%-(.*)") or GetNormalizedRealmName()
		}
	else
		interface.scanFrame.player.data = {}
	end
	inviteBtnText(format("+(%d)", #list))
end
---
--- remove from blacklist
---
---@param name string player name
function fn:blacklistRemove(name)
	DB.realm.blackList[name:lower()] = nil
	DB.realm.blackList[name:gsub("^%l", string.upper)] = nil
end
---
--- get player name only
---
---@param name string player name
---@return string name
function fn:parseName(name)
	return name:match("([^%s-]+)")
end
---
--- parse blacklist chat command
---
---@param cmd any
---@param str any
---@return string fullName player name for same realm or name-realm for crossrealm
---@return string|boolean reason the reason for adding a player to the blacklist
function fn:parseBL(cmd, str)
	local name, realm, reason
		str = str:gsub(cmd, '')
	if str:find('.+%-.+%s%-%s.+') then
		name,realm,reason = str:match("^%s?(.+)%-(.+)%s%-%s(.+)")
	elseif str:find('.+%s%-%s.+') then
		name,reason = str:match("^%s?(.+)%s%-%s(.+)")
	elseif str:find('.+%-.+') then
		name,realm,reason = str:match("^%s?(.+)-(.+)")
	else
		name = str:match("^%s?([^%s]+)")
		reason = false
	end
	return realm and name..'-'..realm or name, reason
end
function fn:pairsByKeys(t, f)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	table.sort(a, f)
	local i = 0	 -- iterator variable
	local iter = function () -- iterator function
		i = i + 1
		if a[i] == nil then return nil
			else return a[i], t[a[i]]
		end
	end
	return iter
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("CHAT_MSG_SYSTEM")
frame:SetScript("OnEvent", function(_,_,msg)
	local place = strfind(ERR_GUILD_JOIN_S,"%s",1,true)
	if (place) then
		local n = strsub(msg,place)
		local name = strsub(n,1,(strfind(n,"%s") or 2)-1)
		if format(ERR_GUILD_JOIN_S,name) == msg then
			fn.history:joined();
			if DB.realm.alreadySended[name] then
				addon.searchInfo.invited()
				fn.history:onAccept(name);
			end
			C_Timer.After(5, function() fn:setNote(name) end)
		end
	end
end)
--- addon database init
function fn:initDB()
	DB = addon.DB
	debugDB = addon.debugDB
	addon.search = (DB.global.saveSearch and DB.factionrealm.search) and DB.factionrealm.search or addon.search
end
---
--- set guild player note
---
---@param name string player name
function fn:setNote(name)
	if name == nil or name == '' then return end
	if DB.global.setNote or DB.global.setOfficerNote then
		name = name:match("([^-]+)-?")
		for index=1, GetNumGuildMembers() do
			local n, _, _, _, _, _, publicNote, officerNote = GetGuildRosterInfo(index)
			if n and n:match("([^-]+)-?") == name then
				if DB.global.setNote and DB.global.setNote ~= "" and CanEditPublicNote() and publicNote == "" then
					-- GuildRosterSetPublicNote(index, date(DB.global.noteText))
					GuildRosterSetPublicNote(index, date(fn:msgMod(DB.global.noteText, name)))
					-- print("set note \""..date(DB.global.noteText).."\" for "..name)
				end
				if DB.global.setOfficerNote and DB.global.setOfficerNote ~= "" and C_GuildInfo.CanEditOfficerNote() and officerNote == "" then
					-- GuildRosterSetOfficerNote(index, date(DB.global.officerNoteText))
					GuildRosterSetOfficerNote(index, date(fn:msgMod(DB.global.officerNoteText, name)))
					-- print("set officer note \""..date(DB.global.officerNoteText).."\" for "..name)
				end
				return
			end
		end
	end
end
---
--- get real string length
---
---@param str string
---@return number stringLength
function fn:getCharLen(str)
	return #(str):gsub('[\128-\191]', '')
end
---
--- add player to kick list
---
---@param name string player name
local function guildKick(name)
	StaticPopupDialogs["FGI_BLACKLIST"].add(name)
end
--- check players for kick
function fn:blacklistKick()
	for i=1, GetNumGuildMembers() do
		local name = GetGuildRosterInfo(i):match("(.*)-")
		if IsInBlackList(name) then guildKick(name) end
	end
end
---
--- check players for kick
---
--- listening to chat, checking all players joining the guild
---
function fn:blackListAutoKick()
	if not IsInGuild() then return end
	-- autoKick on entering world
	fn:blacklistKick()

	--init autoKick on guild entering
	local frame = CreateFrame("Frame")
	frame:RegisterEvent("CHAT_MSG_SYSTEM")
	frame:SetScript("OnEvent", function(_,_,msg)
		local place = strfind(ERR_GUILD_JOIN_S,"%s",1,true)
		if (place) then
			local n = strsub(msg,place)
			local name = strsub(n,1,(strfind(n,"%s") or 2)-1)
			if format(ERR_GUILD_JOIN_S,name) == msg then
				if IsInBlackList(name) then guildKick(name) end
			end
		end
	end)
end
---
---	removing the realm from the player name if it matches the current realm
---
---@param playerName string
---@return string playerName
local function removeSelfRealm(playerName)
	return playerName
		:gsub('-' .. GetRealmName(), '') -- realm with space
		:gsub('-' .. GetRealmName():gsub(' ', ''), '') -- realm without space
		:gsub(' ', '') -- spaces
end
---
--- add player in blacklist
---
---@param name string player name
---@param reason string|boolean
function fn:blackList(name, reason)
	name = removeSelfRealm(name)

	DB.realm.blackList[name] = reason or (DB.global.blacklistReasonText == nil and L.defaultReason or DB.global.blacklistReasonText)
	-- fn.updateTableForSync('blackList', {name = name, time = DB.realm.blackList[name]})
	if not DB.global.addonMSG then
		print(format("%s%s|r", color.red, format(L["Игрок %s добавлен в черный список."], name)))
	end
	fn:blacklistKick()
end
---
--- remove from blacklist
---
---@param name string player name
function fn:unblacklist(name)
	name = removeSelfRealm(name)
	local inBlacklist = IsInBlackList(name, true)
	if inBlacklist then
		fn:blacklistRemove(inBlacklist)
		print(format(L["Игрок %s удален из черного списка"], inBlacklist))
	else
		print(format(L["Игрок %s не найден в черном списке"], name))
	end
end
---
--- button points change
---
---@param obj table button
function fn:closeBtn(obj)
	obj.text:SetPoint("TOPLEFT", 2, -1)
	obj.text:SetPoint("BOTTOMRIGHT", -2, 1)
end
function fn.debug(...)
	if not addon.debug then return end
	local msg, colored = ...
	if msg == nil or type(msg) == "table" then
		table.insert(debugDB,format("%swrong debug input - msg = %s\n%s",color.red,type(msg)))
		return
	end
	if colored then msg = format("%s%s|r", colored, msg) end
	table.insert(debugDB,msg)
end
local debug = fn.debug
---
---@param key string
---@param keyType string
function fn:SetKeybind(key, keyType)
	local DBkey = addon.DB.global.keyBind
	if key then
		if keyType == "invite" then
			DBkey.invite = key
			SetBindingClick(key, interface.scanFrame.invite.frame:GetName())
		elseif keyType == "nextSearch" then
			DBkey.nextSearch = key
			SetBindingClick(key, interface.scanFrame.pausePlay.frame:GetName())
		end
	else
		DBkey[keyType] = false
	end

	interface.settings.KeyBind.invite:SetLabel(format(L["Назначить кнопку (%s)"], DBkey.invite or L["none"]))
	interface.settings.KeyBind.invite:SetKey(DBkey.invite)
	interface.settings.KeyBind.nextSearch:SetLabel(format(L["Назначить кнопку (%s)"], DBkey.nextSearch or L["none"]))
	interface.settings.KeyBind.nextSearch:SetKey(DBkey.nextSearch)
end
function fn:FiltersInit()
	local parent = interface.settings.filters.filtersFrame
	local list = parent.filterList
	for i=1, FGI_FILTERSLIMIT do
		local frame = GUI:Create("FilterButton")
		frame:Hide()
		parent:AddChild(frame)
		table.insert(list, frame)
	end
end
--- update filters state
function fn:FiltersUpdate()
	local list = interface.settings.filters.filtersFrame.filterList
	for i=1, FGI_FILTERSLIMIT do
		list[i]:Hide()
	end
	local i = 1
	for name,v in pairs(DB.realm.filtersList) do
		local filter = DB.realm.filtersList[name]
		local frame = list[i]
		frame:Show()
		frame:SetID(name)
		frame:SetText(name)
		local state = filter.filterOn and L["Включен"]:upper() or L["Выключен"]:upper()
		local lvlRange = filter.lvlRange or L["Откл."]
		local filterByName = filter.filterByName or L["Откл."]
		local letterFilterVowels, letterFilterConsonants = filter.letterFilter==false and 0,0 or fn:split(filter.letterFilter, ":")
		local class = ""
		if not filter.classFilter then
			class = L["Откл."]
		else
			for k,v in pairs(filter.classFilter) do class = class..k.."," end
			class = class:sub(1, -2)
		end
		local race = ""
		if not filter.raceFilter then
			race = L["Откл."]
		else
			for k,v in pairs(filter.raceFilter) do race = race..k.."," end
			race = race:sub(1, -2)
		end
		local count = filter.filteredCount

		frame:SetTooltip(format(L["filterTooltip"], name, state, filterByName, lvlRange, letterFilterVowels, letterFilterConsonants, class, race, count))

		i = i + 1

	end
end
---
---@param str string
---@param arr table|nil
function fn:messageSplit(str, arr)
	if not str then return {} end
	arr = arr or {''}
	while(str:len()>0) do
		local _,e = str:find("[%s%.%,]")
		local s = ''
		if e then
			s = str:sub(1,e)
			str = str:sub(e+1, -1)
		else
			s = str
			str = ''
		end
		if arr[#arr]:len()+s:len()<=255 then
			arr[#arr] = arr[#arr] .. s
		else
			table.insert(arr, s)
		end
	end
	for i=1, #arr do
		if arr[i]:len()>255 then arr={};break;end
	end
	return arr
end
---
--- replacement of placeholders
---
---@param msg string message template
---@param name string|nil player name
---@param noErr boolean show errors
---@return string|nil modifiedMessage
function fn:msgMod(msg, name, noErr)
	if not msg then return end
	if msg:find("NAME") then
		msg = msg:gsub("NAME", name or 'PLAYER_NAME')
	end
	if msg:find("GUILDLINK") then
		local club, link
		DB.factionrealm.guildLinks = DB.factionrealm.guildLinks or {}
		if DB.factionrealm.guildLinks[GetGuildInfo("player")] then
			link = DB.factionrealm.guildLinks[GetGuildInfo("player")]
		elseif ClubFinderGetCurrentClubListingInfo then
			club = ClubFinderGetCurrentClubListingInfo(C_Club.GetGuildClubId())
			if club then
				link = GetClubFinderLink(club.clubFinderGUID, club.name)
				DB.factionrealm.guildLinks[link:match("%[.*: (.*)%]")] = link
			end
		end

		msg = msg:gsub("GUILDLINK", link and link:gsub(" ", " ") or 'G_LINK')

		if not link and not noErr then
			print(L["Невозможно создать ссылку гильдии. Откройте окно гильдии и попробуйте снова. Если проблема не устранена, вероятно вы не можете создавать ссылку гильдии."])
			return nil
		end
	end
	if msg:find("GUILD") then
		local guildName, guildRankName, guildRankIndex, realm = GetGuildInfo("player")
		msg = msg:gsub("GUILD", format("<%s>", guildName and guildName:gsub(" ", " ") or 'GUILD_NAME'))
	end
	return msg
end
function fn.hideWhisper(...)
	local text, _, _, _, name = select(3, ...)
	name = name:match("([^-]*)")

	if addon.removeMsgList[name] ~= nil then
		for _, msg in pairs(addon.removeMsgList[name]) do
			if text == msg then
				return true
			end
		end
	end

	return false, select(3,...)
end
---@param name string player name
function fn:sendWhisper(name)
	local msg = fn:getRndMsg()
	if not msg then return print("<FGI> - "..L["Выберите сообщение"]) end
	if not name then return debug("send message - nil name") end

	debug(format("Send whisper: %s %s",name, msg))
	msg = fn:msgMod(msg, name)

	if msg ~= nil then
		if DB.realm.sendMSG then
			addon.removeMsgList[name:match("([^-]*)")] = {}
		end
		for _, message in pairs(fn:messageSplit(msg)) do
			if addon.removeMsgList[name:match("([^-]*)")] ~= nil then
				table.insert(addon.removeMsgList[name:match("([^-]*)")], message)
			end

			SendChatMessage(message:gsub(" ", " "), 'WHISPER', GetDefaultLanguage("player"), name)
		end
	end
end
---@param name string player name
function fn:rememberPlayer(name)
	DB.realm.alreadySended[name] = fn.getTime();
	fn.updateTableForSync('alreadySended', {name = name, time = DB.realm.alreadySended[name]})
	addon.search.tempSendedInvites[name] = nil
	debug(format("Remember: %s",name))
end
---
--- get random message from message list
---
---@return string message
function fn:getRndMsg()
	return DB.factionrealm.messageList[math.random(1, math.max(1,#DB.factionrealm.messageList))]
end
---
---@param noInv boolean don't real invite
function fn:invitePlayer(noInv)
	local list = addon.search.inviteList
	if #list==0 then return end
	-- if IsInAlreadySendedList(list[1].name) then return table.remove(list, 1) end
	if (DB.global.inviteType == 2 or DB.global.inviteType == 4) and not noInv then
		addon.msgQueue[list[1].name] = true
	elseif DB.global.inviteType == 3 and not noInv then
		fn:sendWhisper(list[1].name)
	end
	if (DB.global.inviteType == 1 or DB.global.inviteType == 2 or DB.global.inviteType == 4) and not noInv then
		debug(format("Invite: %s",list[1].name))
		GuildInvite(list[1].name)
	end
	if not noInv or DB.global.rememberAll then
		fn:rememberPlayer(list[1].name)
		local data = fn.encodeData({
			type = "REMEMBER",
			playerName = list[1].name
		})
		ChatThrottleLib:SendAddonMessage("NORMAL", FGISYNC_PREFIX_G, data, "GUILD")
	end
	if not noInv then
		addon.searchInfo.sended()
		fn.history:onSend();
	end
	table.remove(list, 1)
	onListUpdate()
end

local frame = CreateFrame('Frame')
frame:RegisterEvent('PLAYER_ENTERING_WORLD')
frame:SetScript('OnEvent', function()
	-- C_ChatInfo.SendAddonMessage(FGISYNC_PREFIX, "LOGIN|GET_FGI_USERS", "GUILD")
end)
---
--- get depth of search level
---
---@param query string search query
---@return number|boolean
local function getSearchDeepLvl(query)
	local l2 = L["r-"]:gsub("-","%%-")
	local l3 = (("%s.+ %s"):format(L["r-"],L["c-"])):gsub("-","%%-")
	local l4 = (("%s.+ %s.+ %s"):format(L["r-"],L["c-"],L["z-"])):gsub("-","%%-")
	if query:find(l4) then
		return 4
	elseif query:find(l3) then
		return 3
	elseif query:find(l2) then
		return 2
	elseif query:find("%d+%-%d+") then
		return 1
	else
		return false
	end
end
---
--- get search params from query string
---
---@param query string search query
---@return table queryParameters
local function searchGetParams(query)
	local class = query:match(("%s%%\"(%s+)%%\""):format(L["c-"],addon.ruReg):gsub("-","%%-"))
	local race = query:match(("%s%%\"(%s+)%%\""):format(L["r-"],addon.ruReg):gsub("-","%%-"))
	local lvl = {}
	for s in query:gmatch("%d+") do
		table.insert(lvl, s)
	end

	return {class = class,race = race, min = lvl[1], max = lvl[2]}
end
---
---@param query string search query
---@return boolean
local function isQueryFiltered(query)
	if DB.realm.filtersList == {} or not DB.realm.enableFilters then return false end
	local filter = {}
	local q = searchGetParams(query)
	q.min = tonumber(q.min)
	q.max = tonumber(q.max)
	for fName,v in pairs(DB.realm.filtersList) do
		local lvl = {}
		if v.filterOn then
			filter[fName] = {min = false, max = false, --[[race = false,class = false,]]}
			if v.lvlRange then
				for s in v.lvlRange:gmatch("%d+") do
					table.insert(lvl, tonumber(s))
				end
				filter[fName].min, filter[fName].max = lvl[1], lvl[2] or lvl[1]
			end
			if v.raceFilter then filter[fName].race = v.raceFilter[q.race] and q.race or false end
			if v.classFilter then filter[fName].class = v.classFilter[q.class] and q.class or false end
		end
	end
	for fName,f in pairs(filter) do
		local sLevel = getSearchDeepLvl(query)
		local lvlFiltered, raceFiltered, classFiltered = (f.min and (f.min <= q.min and f.max >= q.max)), (f.race and (f.race==q.race)), (f.class and (f.class==q.class))
		local queryFiltered = false
		if sLevel == 1 then
			queryFiltered = lvlFiltered and f.race==nil and f.class==nil
		elseif sLevel == 2 then
			queryFiltered = f.class==nil and ((lvlFiltered and raceFiltered) or (not f.min and raceFiltered)) or (lvlFiltered and f.race==nil and f.class==nil)
		elseif sLevel == 3 then
			queryFiltered = (lvlFiltered and (f.race==nil and f.class==nil) or (raceFiltered and f.class==nil) or (f.race==nil and classFiltered) or (raceFiltered and classFiltered)) or (not f.min and (raceFiltered and f.class==nil) or (f.race==nil and classFiltered))
		else
			debug('wrong search Level', color.red)
		end
		if queryFiltered then debug(string.format('query (%s) filtered by filter (%s)', query, fName), color.blue);return true end
	end
	return false
end
---
--- search query split
---
---@param query string search query
---@param lvl number search level depth
local function searchAddWhoList(query, lvl)
	local progress = addon.search.progress-1
	local tAddN = 0
	local function LVLsplit(query)
		local v1 = query:gsub("(%d+)%-(%d+)", function(a,b)
			local dif = b-a
			b = b - math.floor(dif/2)-1
			tAddN = tAddN+1
			return a.."-"..b
		end)
		local v2 = query:gsub("(%d+)%-(%d+)", function(a,b)
			local dif = b-a
			a = a + math.ceil(dif/2)
			tAddN = tAddN+1
			return a.."-"..b
		end)
		table.remove(addon.search.whoQueryList, progress)


		if isQueryFiltered(v1) then
			tAddN = tAddN-1
		else
			debug(format("Add new lvl query: (%s); Query: %s", v1, query))
			table.insert(addon.search.whoQueryList, progress, v1)
		end
		if isQueryFiltered(v2) then
			tAddN = tAddN-1
		else
			debug(format("Add new lvl query: (%s); Query: %s", v2, query))
			table.insert(addon.search.whoQueryList, progress+1-(2-tAddN), v2)
		end



		local min, max = interface.scanFrame.progressBar:GetMinMax()
		-- interface.scanFrame.progressBar:SetMinMax(min, max+tAddN*FGI_SCANINTERVALTIME)
		addon.search.progress = addon.search.progress - 1
	end
	local function RACEsplit(query)
		local new = 0
		table.remove(addon.search.whoQueryList, progress)
		for _,v in pairs(L.race) do
			local newQuery = format("%s %s\"%s\"",query,L["r-"],v)
			if not isQueryFiltered(newQuery) then
				table.insert(addon.search.whoQueryList, progress+new, newQuery)
				new = new + 1
			end
		end
		if new==0 then return table.insert(addon.search.whoQueryList, progress, query) end
		debug(format("Add new race queries: %d; Query: %s", new, query))
		local min, max = interface.scanFrame.progressBar:GetMinMax()
		-- interface.scanFrame.progressBar:SetMinMax(min, max+(new)*FGI_SCANINTERVALTIME)
		addon.search.progress = addon.search.progress - 1
	end
	local function CLASSsplit(query, race)
		local new = 0
		table.remove(addon.search.whoQueryList, progress)
		if race then
			for k,v in pairs(L.race) do
				if v==race then
					race = k
					break
				end
			end

			if not RaceClassCombo[race] then return print("FGI Error race -",race) end
		else
			return table.insert(addon.search.whoQueryList, progress, query)
		end
		for k,v in pairs(RaceClassCombo[race]) do
			local newQuery = format("%s %s\"%s\"",query,L["c-"],v)
			if not isQueryFiltered(newQuery) then
				table.insert(addon.search.whoQueryList, progress+new, newQuery)
				new = new + 1
			end
		end
		if #RaceClassCombo[race]==0 then return table.insert(addon.search.whoQueryList, progress, query) end
		debug(format("Add new class queries: %d; Query: %s", #RaceClassCombo[race], query))
		local min, max = interface.scanFrame.progressBar:GetMinMax()
		-- interface.scanFrame.progressBar:SetMinMax(min, max+(new)*FGI_SCANINTERVALTIME)
		addon.search.progress = addon.search.progress - 1
	end
	local function locationSplit(query)
		local locations = DB.factionrealm.locations
		local new = 0
		table.remove(addon.search.whoQueryList, progress)
		for _, location in pairs(locations) do
			local newQuery = format("%s %s\"%s\"", query, L["z-"], location)
			if not isQueryFiltered(newQuery) then
				table.insert(addon.search.whoQueryList, progress+new, newQuery)
				new = new + 1
			end
		end
		addon.search.progress = addon.search.progress - 1
	end

	local queryParams = searchGetParams(query)
	local difference = (queryParams.max - queryParams.min) > 0
	if difference then
		LVLsplit(query)
	elseif lvl == 1 then
		RACEsplit(query)
	elseif lvl == 2 then
		CLASSsplit(query, queryParams.race)
	elseif lvl == 3 and #DB.factionrealm.locations > 0 then
		locationSplit(query)
	end
end
---
--- find female class name
---
---@param className string
---@return string|boolean className
local function findClass(className)
	for k,v in pairs(L.femaleClass) do
		if v==className then return L.class[k] end
	end
	return false
end
---
--- find female race name
---
---@param raceName string
---@return string|boolean raceName
local function findRace(raceName)
	for k,v in pairs(L.femaleRace) do
		if v==raceName then return L.race[k] end
	end
	return false
end
---
--- get player raid progress by RIO
---
---@param name string player name
---@param realm string|boolean realm name
---@return table raidProgress
local function getCharacterRaidProgress(name, realm)
	if not RaiderIO or not name then return {} end
	local result = {}
	local rio = RaiderIO.GetProfile(name, realm or GetNormalizedRealmName(), addon.playerInfo.faction)
	if not rio or not rio.raidProfile then return {} end
	for _,v in pairs(rio.raidProfile.sortedProgress or {}) do
		--local dif = RAID_DIFFICULTY[v.progress.difficulty].name
		result[#result+1] = {
			raidShortName	= v.progress.raid.shortName,
			difficultyID	= v.progress.difficulty,
			progress 		= v.progress.progressCount,
			bossCount		= v.progress.raid.bossCount,
		}
	end
	return result -- result = {[i] = { raidShortName, difficultyID--[[1-Normal, 2-Heroic, 3-Mythic]], progress, bossCount }, [i+1] = { ... }}
end
---
--- check finded player on filters
---
---@param player table player data: level, name, class, race, rio*
---@return boolean
function fn:filtered(player)
	for _,v in pairs(DB.realm.filtersList) do
		if v.filterOn then
			if v.lvlRange then
				local min, max = fn:split(v.lvlRange, ":", -1)
				if player.Level >= min and player.Level <= max then
					v.filteredCount = v.filteredCount + 1
					fn:FiltersUpdate()
					return true--,"lvl"
				end
			end
			if v.filterByName then
				for k in v.filterByName:gmatch("([^;]+)") do
					if player.Name:find(k) then
						v.filteredCount = v.filteredCount + 1
						fn:FiltersUpdate()
						return true--,"name"
					end
				end
			end
			if v.classFilter then
				if v.classFilter[player.Class] or v.classFilter[findClass(player.Class)] then
					v.filteredCount = v.filteredCount + 1
					fn:FiltersUpdate()
					return true--,"class"
				end
			end
			if v.raceFilter then
				if v.raceFilter[player.Race] or v.raceFilter[findRace(player.Race)] then
					v.filteredCount = v.filteredCount + 1
					fn:FiltersUpdate()
					return true--,"race"
				end
			end
			if v.rioMPlus and v.rioMPlus > 0 and RaiderIO then
				local score = RaiderIO.GetProfile(player.Name .. '-' .. (player.Realm or GetNormalizedRealmName()), addon.playerInfo.faction)
				if not score or not score.mythicKeystoneProfile then
					v.filteredCount = v.filteredCount + 1
					fn:FiltersUpdate()
					return true -- no score data
				else
					score = {
						current = score.mythicKeystoneProfile.currentScore or 0,
						main = score.mythicKeystoneProfile.mainCurrentScore or 0,
						curPrev = score.mythicKeystoneProfile.previousScore or 0,
						mainPrev = score.mythicKeystoneProfile.mainPreviousScore or 0
					}
					if
						not(
						(score.current >= v.rioMPlus)							-- check current score
						or
						(v.rioCheckMain and score.main >= v.rioMPlus)			-- check main score
						or
						(v.rioCheckCurPrev and score.curPrev >= v.rioMPlus)		-- check previous score
						or
						(v.rioCheckMainPrev and score.mainPrev >= v.rioMPlus)	-- check previous main score
						)
					then
						v.filteredCount = v.filteredCount + 1
						fn:FiltersUpdate()
						return true--,"mPlus"
					end
				end
			end
			if v.rioRaid and RaiderIO then
				local filtered = {[1] = 0, [2] = 0,	[3] = 0}
				local RIOData = RaiderIO.GetProfile(player.Name .. '-' .. (player.Realm or GetNormalizedRealmName()), addon.playerInfo.faction)
				if
					RIOData == nil
					or RIOData.raidProfile == nil
					or RIOData.raidProfile.raidProgress == nil
				then
					return true
				end
				
				for _, raidProgress in pairs(RIOData.raidProfile.raidProgress) do
					if v.rioRaid.name == raidProgress.raid.dungeon.shortName then
						for _, progress in pairs(raidProgress.progress) do
							filtered[progress.difficulty] = progress.kills
						end
					end
				end
				if filtered[1] < v.rioRaid[1] or filtered[2] < v.rioRaid[2] or filtered[3] < v.rioRaid[3] then
					return true--,"raidProgress"
				end
			end
		end
	end
	return false
end
---
--- check the found player and add him if he meets all the requirements
---
---@param p table player data
function fn:addNewPlayer(p)
	local list = addon.search.inviteList
	local playerInfoStr = format("%s - lvl:%d; race:%s; class:%s; Guild: \"%s\"; Zone: \"%s\"", p.Name, p.Level, p.Race, p.Class, p.Guild, p.Zone)

	if not(p.Guild == "" or FGI.ai) then
		debug(format("Player (%s) already have guild.", playerInfoStr), color.yellow)
		return
	end
	if IsInBlackList(p.Name) then
		debug(format("Player (%s) was found in the blacklist.", playerInfoStr), color.red)
		return
	end
	if IsInLeaveList(p.Name) then
		debug(format("Player (%s) previously exited (or was expelled) from the guild.", playerInfoStr), color.red)
		return
	end
	if IsInTempList(p.Name) then
		debug(format("Player (%s) alrady added", playerInfoStr), color.yellow)
		return
	end
	if IsInAlreadySendedList(p.Name) then
		debug(format("Invitation has already been sent to the player %s", playerInfoStr), color.yellow)
		return
	end
	if IsInQuietZone(p.Zone) then
		debug(format("Player (%s) located in a quiet area", playerInfoStr), color.yellow)
		return
	end
	addon.searchInfo.unique()
	if IsCustomFiltered(p) then
		addon.searchInfo.filtered()
		debug(format("Player (%s) has been fitlered", playerInfoStr), color.yellow)
		return
	end
	fn.history:onFound({lvl = p.Level, race = p.Race, class = p.Class});
	table.insert(list, {name = p.Name, lvl = p.Level, race = p.Race, class = p.Class, NoLocaleClass = p.NoLocaleClass})
	addon.search.tempSendedInvites[p.Name] = true
	debug(format("Add player %s", playerInfoStr), color.green)
	Analytic:IncrementCounter('players fit')
end
---
---@param query string search query
---@param results table list of found players
local function searchWhoResultCallback(query, results)
	local searchLvl = getSearchDeepLvl(query)
	if DB.global.logs.on then print(("%s " .. L["Запрос: %s. Поиск вернул игроков: %d"]):format("|cffffff00<|r|cff16ABB5FGI|r|cffffff00>|r", query, #results)) end
	if #results >= FGI_MAXWHORETURN and DB.realm.customWho then
		if not DB.global.addonMSG then
			print(format(L["Поиск вернул 50 или более результатов, рекомендуется изменить настройки поиска. Запрос: %s"], query))
		end
		debug(format("Query (%s) return 50 or more results; SearchLevel-%d", query, searchLvl))
	end
	addon.search.progress = addon.search.progress + 1
	debug(format("Query %s", query))
	if(not DB.realm.strictCustom or not DB.realm.customWho) then
		if searchLvl == 1 and #results>=FGI_MAXWHORETURN then
			searchAddWhoList(query,1)
		elseif searchLvl == 2 and #results>=FGI_MAXWHORETURN then
			searchAddWhoList(query,2)
		elseif searchLvl == 3 and #results>=FGI_MAXWHORETURN then
			searchAddWhoList(query,3)
		end
		-- 4lvl can't modified
	end

	addon.search.oldCount = #addon.search.inviteList
	for i=1,#results do
		local player = results[i]
		fn:addNewPlayer(player)
	end
	if DB.global.queueNotify and #addon.search.inviteList > addon.search.oldCount then
		FGI.animations.notification:Start(format(L["Игроков найдено: %d"], #addon.search.inviteList - addon.search.oldCount))
	end
	if DB.global.saveSearch then
		DB.factionrealm.search = addon.search
	end

	local list = addon.search.inviteList
	interface.scanFrame.progressBar:SetMinMax(0, #addon.search.whoQueryList)
	interface.scanFrame.progressBar:SetProgress(addon.search.progress-1)

	onListUpdate()
end
local function timeCallbackStart()
	interface.scanFrame.pausePlay:SetDisabled(true)
	interface.scanFrame.pausePlayLabel.timer = libWho:GetInterval()
	interface.scanFrame.pausePlayLabel.frame:SetFrameStrata("TOOLTIP")
	interface.scanFrame.pausePlayLabel.frame:Show()
	C_Timer.NewTicker(1, function()
		local n = interface.scanFrame.pausePlayLabel.timer
		interface.scanFrame.pausePlayLabel.timer = interface.scanFrame.pausePlayLabel.timer-1
		interface.scanFrame.pausePlayLabel:SetText(interface.scanFrame.pausePlayLabel.timer)
		if interface.scanFrame.pausePlayLabel.timer == 0 then interface.scanFrame.pausePlayLabel.frame:Hide() end
	end, libWho:GetInterval())
	interface.scanFrame.pausePlayLabel:SetText(interface.scanFrame.pausePlayLabel.timer)
end
local function timeCallbackEnd()
	interface.scanFrame.pausePlay:SetDisabled(false)
	if DB.global.searchAlertNotify then
		FGI.animations.notification:Start(L["Поиск разблокирован"])
	end
end

libWho:SetCallback(searchWhoResultCallback)
libWho:SetInterval(FGI_SCANINTERVALTIME)
libWho:SetTimeCallbackStart(timeCallbackStart)
libWho:SetTimeCallbackEnd(timeCallbackEnd)

--- init new search
function fn:nextSearch()
	if #addon.search.whoQueryList == 0 then
		if DB.realm.customWho then
			for i=1, #DB.faction.customWhoList do
				table.insert(addon.search.whoQueryList, DB.faction.customWhoList[i])
			end
		else
		addon.search.whoQueryList = {DB.global.lowLimit.."-"..DB.global.highLimit}
		end
	end
	addon.search.progress = (addon.search.progress <= (#addon.search.whoQueryList or 1)) and addon.search.progress or 1
	local curQuery = addon.search.whoQueryList[addon.search.progress]
	if curQuery == nil then
		print("epmty search query")
		return
	end
	fn.history:onSearch()
	libWho:GetWho(curQuery)
	Analytic:IncrementCounter('new search')
end
local function dump(t,l)
	local str = '{'
	l = l or 1
	if l>100 then return 'overstack' end
	for k,v in pairs(t) do
	str = str.."\n"..string.rep('   ', l)..'['..(type(k)=='string' and "'"..k.."'" or k).."] = "
	if type(v) == 'table' then
		str = str..dump(v,l+1)
	elseif type(v) == 'function' then
		str = str..'function'
	elseif type(v) == 'string' then
		str = str.."'"..v.."'"
	else
		str = str..tostring(v)
	end
	end
	str = str..'\n'..string.rep('   ', l-1)..'},'
	if l==1 then
	print(str)
	else
	return str
	end
end
math.progress = function(End, cur)
	local percentageDone = cur*100/End
	return percentageDone>100 and 100 or percentageDone
end
math.round = function (val, decimal)
	if (decimal) then
		return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
	else
		return math.floor(val+0.5)
	end
end
table.pack = function(...)
	return { ... }
end
---
--- split string by delimiter
---
---@param inputstr string
---@param sep string|nil delimiter
---@param isNumber boolean
---@return ...
function fn:split(inputstr, sep, isNumber)
	isNumber = isNumber or false
	if sep == nil then sep = "%s" end
	if not inputstr:find(sep) then return inputstr end
	local t={}
	for str in inputstr:gmatch("([^"..sep.."]+)") do
		table.insert(t, (tonumber(str)==nil and not isNumber) and str or (tonumber(str) or isNumber))
	end
	return unpack(t)
end
---
--- checking if the player is in the guild and if he can invite
---
---@return boolean
function fn:inGuildCanInvite()
	if not addon.debug then
		if not IsInGuild() then return false end
		if not CanGuildInvite() then return false end
	end

	return true
end
function fn.hideSysMsg()
	return true
end

--[[----------------------------------------------------------------------------------------------
									Synch
]]------------------------------------------------------------------------------------------------
local CHANNEL_MOD = "GUILD"; -- Defaulf: GUILD. PARTY for test
FGI_CHANNEL_MOD = CHANNEL_MOD; -- DEBUG global var for tests
local MSG_MULTI_FIRST = "\001";
local MSG_MULTI_NEXT  = "\002";
local MSG_MULTI_LAST  = "\003";
local MSG_MULTI_END	  = "\004";
local syncSettings;
local Sync = {
	-- queue = {},			--TODO sync queue
	cache = {},			-- list of synchronized data for each player. we avoid transferring unnecessary data
	trusted = {},		-- list of verified players
	target = '',		-- player name
	receivedStr = '',	-- received String
	sendTable = {},		-- table for send
	curTable = '',		-- the name of the table that is currently being passed
	stateTable = {		-- state table
		'CLOSED',			-- ready for receiving/transmitting
		'LISTEN',			-- incoming/outgoing connection, exchange of settings, data preparation
		'ESTABLISHED',		-- broadcast
		'CHECK',			-- hash check. final check
	}
};
Sync.state = Sync.stateTable[1]; -- default state - CLOSED
---
--- get only last week data
---
---@param t table
---@param total boolean is tables of table
---@param full? boolean is full copy
---@return table lastWeek
local function getLasWeekData(t, total, full)
	local result = {};
	local startDate = time({year = date('%Y'), month = date("%m"), day = date("%d")-7, hour = date("%H")});
	if total then
		for k, v in pairs(t) do
			result[k] = getLasWeekData(v, false, full);
		end
	else
		for name, date in pairs(t) do
			if full or date >= startDate then
				result[name] = date;
			end
		end
	end
	return result;
end
---
--- checking if the player is in combat
---
---@param close boolean close connect if in combat
local function IsInCombat(close)
	if UnitAffectingCombat("player") then
		-- further actions can cause a heavy load on the PC, so we discard this in combat mode.
		if close then
			Sync.closeConnect();
		end
		return true;
	end
	return false;
end
---
--- make table copy. Don't set `copies`
---
---@param orig table
---@return table copy
local function table_copy(orig, copies)
    copies = copies or {};
    local orig_type = type(orig);
    local copy;
    if orig_type == 'table' then
        if copies[orig] then
            copy = copies[orig];
        else
            copy = {};
            copies[orig] = copy;
            for orig_key, orig_value in next, orig, nil do
                copy[table_copy(orig_key, copies)] = table_copy(orig_value, copies);
            end
            setmetatable(copy, table_copy(getmetatable(orig), copies));
        end
    else -- number, string, boolean, etc
        copy = orig;
    end
    return copy;
end
---@param text string
local function StringHash(text)
    local counter = 1;
    local len = string.len(text);
    for i = 1, len, 3 do
        counter = math.fmod(counter*8161, 4294967279) +  -- 2^32 - 17: Prime!
            (string.byte(text,i)*16776193) +
            ((string.byte(text,i+1) or (len-i+256))*8372226) +
            ((string.byte(text,i+2) or (len-i+256))*3932164);
    end
    return math.fmod(counter, 4294967291); -- 2^32 - 5: Prime (and different from the prime in the loop)
end
---
--- object Table to array Table
---
---@param t table
---@param order function sort function
---@return table newSortedTable
local function spairs(t, order)
	-- collect the keys
	local keys = {};
	for k in pairs(t) do table.insert(keys, k); end

	-- if order function given, sort by it by passing the table and keys a, b,
	-- otherwise just sort the keys
	if order then
			table.sort(keys, function(a,b) return order(t, a, b) end);
	else
			table.sort(keys, function(a,b) return tostring(a) < tostring(b) end);
	end
	return keys;
end
---
--- get hash sum of table
---
---@param t table
---@param global boolean `true` for total hash
---@return number hash
local function getTableHash(t, global)
	if IsInCombat(true) then
		return 0;
	end
    return StringHash(Serializer:Serialize(global and t or spairs(t)));
end
---
--- hash of all sync tables
---
---@return number hash
local function getTotalHash()
	if IsInCombat(true) then
		return 0;
	end
	local result = {};
	for k in pairs(Sync.tablesForSync) do
		table.insert(result, spairs(Sync.tablesForSync[k]));
	end
	return getTableHash(result, true);
end
---
--- return full table length
---
---@param t table
---@return number table_length
local function table_len(t)
	local c = 0;
	for _ in pairs(t) do
		c = c + 1;
	end
	return c;
end
---
---	add new player to Sync.tablesForSync
---
---@param t string subtable name
---@param player table {name: string, time: any}
---@return nil
function fn.updateTableForSync(t, player)
	if not t or not player.name then return end
	Sync.tablesForSync[t][player.name] = player.time or fn.getTime();
end

---
--- Sends a message to the specified channel for addons. Only FGI prefix is used
---
---@param message string most 255 characters
---@param chatType string channel "GUILD" | "WHISPER" | "PARTY"(for test only)
---@param target? string player name. if `chatType` ~= `WHISPER`
---@param prio? string priority "BULK" | "NORMAL"(default) | "ALERT"
local function SendSyncAddonMessage(message, chatType, target, prio)
	prio = prio or "NORMAL";
	message = tostring(message);
	-- print('|cffffff00', FGISYNC_PREFIX, message, chatType, target or '', '|r')
	if chatType ~= "WHISPER" or (chatType == "WHISPER" and target and target ~= '') then
    	ChatThrottleLib:SendAddonMessage(prio, FGISYNC_PREFIX, message, chatType, target, nil, Sync.callback, Sync.callbackArg);
	end
end
---
--- prepare the table for verification and send it
---
---@param channel string GUILD | WHISPER
---@param target string|nil player name if `channel = WHISPER`
local function checkSync(channel, target)
    SendSyncAddonMessage(fn.encodeData({h = getTotalHash()}), channel, target);
end
---
--- sends part of the data array to send
---
---@param Next boolean resend the last part if `false`
local function SendSyncAddonStream(Next)
	if Next then
		table.remove(Sync.sendTable,1);
	end
	local message = Sync.sendTable[1];
	if message then
		SendSyncAddonMessage(message, "WHISPER", Sync.target, "BULK");
	end
end
---
--- Restoring default values.
---
local function restoreSyncDefaultValues()
	Sync.state = Sync.stateTable[1]; -- CLOSED
	Sync.target = '';
	Sync.receivedStr = '';
	Sync.sendTable = {};
	Sync.curTable = '';
end
---
--- Closing the connection with `Sync.target`. Restoring default values.
---
Sync.closeConnect = function()
	if Sync.target ~= '' then
		SendSyncAddonMessage("CLOSE_CONNECT", "WHISPER", Sync.target)
	end
	restoreSyncDefaultValues();
end
Sync.timeout = {
	timeout = FGI_MAXSYNCHWAIT,
};

---
--- initiate new timeout timer
---
---@param callback function
---@return table Timer
Sync.timeout.new = function(callback)
	Sync.timeout.timer = C_Timer.NewTimer(Sync.timeout.timeout, callback);
	return Sync.timeout.timer;
end;
---
--- Cancel timeout timer
---
---@return nil
Sync.timeout.stop = function()
	Sync.timeout.timer:Cancel();
end
---
--- Checks if the `playerName` is a member of our `CHANNEL_MOD` and returns the result
---
---@param playerName string
---@return boolean isInOurGuild
local function IsTrustedPlayer(playerName)
	if Sync.trusted[playerName] then
		return true;
	end
	if CHANNEL_MOD == "PARTY" then
		if IsInGroup(CHANNEL_MOD) then
			for i=1, GetNumGroupMembers(CHANNEL_MOD) - 1 do
				if playerName == UnitName(CHANNEL_MOD..i) then
					Sync.trusted[playerName] = true;
					return true;
				end
			end
		end
	else
		for i=1, GetNumGuildMembers() do
			if GetGuildRosterInfo(i) == playerName then
				Sync.trusted[playerName] = true;
				return true;
			end
		end
	end
	return false;
end
---
--- Converts the table to an encrypted and compressed string
---
---@param data table
---@return string encodedStr
function fn.encodeData(data)
	local serialized = Serializer:Serialize(data);
	local compress = LibDeflate:CompressDeflate(serialized);
	local encoded = LibDeflate:EncodeForWoWAddonChannel(compress);
	return encoded; -- encoded data
end
---
--- return decoded table or `false` if error
---
---@param data string
---@return table|boolean
function fn.decodeData(data)
	local data_decoded_WoW_addon = LibDeflate:DecodeForWoWAddonChannel(data);
	--Decompress the decoded data
	local decompress_deflate = LibDeflate:DecompressDeflate(data_decoded_WoW_addon);
	if decompress_deflate == nil then
		print("|cffff0000<FGI>|r: error decompressing." .. (Sync.target ~= '' and "Data from " .. Sync.target or '')); -- DEBUG print
		return false;
	end

	-- Deserialize the decompressed data
	local success, final = Serializer:Deserialize(decompress_deflate);
	if (not success) then
		print("|cffff0000<FGI>|r: error deserializing " .. final .. (Sync.target ~= '' and "; Data from " .. Sync.target or '')); -- DEBUG print
		return false;
	end
	return final; --decoded msg
end

local function prepareTableForSend()
	local t = table_copy(Sync.tablesForSync[Sync.curTable]);
	if Sync.cache[Sync.target] and Sync.cache[Sync.target][Sync.curTable] then
		for k,_ in pairs(Sync.cache[Sync.target][Sync.curTable]) do
			t[k] = nil;
		end
	end
	local text = fn.encodeData(t);
	local textlen = #text;
	local maxtextlen = 255;
	local arr = {};

	local multipart = textlen+1 > maxtextlen and true or false;
	if multipart then
		maxtextlen = maxtextlen - 1;
		-- first part
		local chunk = strsub(text, 1, maxtextlen);
		table.insert(arr, MSG_MULTI_FIRST..chunk);

		-- continuation
		local pos = 1 + maxtextlen;

		while pos + maxtextlen < textlen do
			chunk = strsub(text, pos, pos + maxtextlen - 1);
			table.insert(arr, MSG_MULTI_NEXT..chunk);
			pos = pos + maxtextlen;
		end

		-- final part
		chunk = strsub(text, pos);
		table.insert(arr, MSG_MULTI_LAST..chunk);
	else
		table.insert(arr, MSG_MULTI_END..text);
	end
	return arr;
end

local syncFrame = CreateFrame("Frame");
syncFrame:RegisterEvent("CHAT_MSG_ADDON");
syncFrame:SetScript("OnEvent", function(_, _, prefix, msg, channel, sender)
	-- FGISYNC_PREFIX_G - permanent prefix
	if prefix == FGISYNC_PREFIX_G then
		if channel ~= CHANNEL_MOD then return; end
		msg = fn.decodeData(msg);
		if not msg then
			-- decode error
			return;
		end
		if msg.type == "REMEMBER" then
			fn:rememberPlayer(msg.playerName);
			local list = addon.search.inviteList;
			for i=1,#list do
				if list[i].name == msg.playerName then
					table.remove(list, i);
					onListUpdate();
					break
				end
			end
		end
		return;
	end

	if prefix ~= FGISYNC_PREFIX then return; end
	sender = sender:match("([^-]+)");
	-- print(GetTime(), '|cff00ff00',prefix, msg, channel, sender, '|r')
	if channel == CHANNEL_MOD then
		if sender == UnitName('player') then
			-- do not reply to our own message
			return;
		end
		msg = fn.decodeData(msg);
		if not msg then
			-- decode error
			return;
		end
		if msg.h ~= getTotalHash() then
			Sync.state = Sync.stateTable[2]; -- LISTEN
			Sync.target = sender;
			SendSyncAddonMessage('initSync', 'WHISPER', sender);
			Sync.timeout.new(Sync.closeConnect);
		else
			print('|cff00ff00<FGI>|r The hash was checked with '.. sender .. ', the same hash.') -- DEBUG print
		end
	elseif channel == "WHISPER" then
		if Sync.state == "CLOSED" then
			if msg == "initSync" then
				print('|cff00ff00<FGI>|r Init synchronization from '.. sender); -- DEBUG print
				if not IsTrustedPlayer(sender) then
					-- we only trust the players of our guild
					return;
				end
				Sync.state = Sync.stateTable[2]; -- LISTEN
				Sync.target = sender;
				SendSyncAddonMessage("choose_table", "WHISPER", Sync.target);
				Sync.timeout.new(Sync.closeConnect);
				return;
			end
		else
			if sender ~= Sync.target then
				-- we already have a task, we are not answering other players
				return;
			end
		end
		if msg == "CLOSE_CONNECT" then
			Sync.closeConnect();
			return;
		end
		if Sync.state == "LISTEN" then
			Sync.timeout.stop();
			if msg == 'choose_table' then
				local hash, len;
				for k,v in pairs(Sync.tablesForSync) do
					if Sync.curTable == '' then
						Sync.curTable = k;
						hash = getTableHash(v);
						len = table_len(v);
						break;
					elseif Sync.curTable == k then
						Sync.curTable = '';
					end
				end
				if hash and len then
					SendSyncAddonMessage(fn.encodeData({msg = 1, h = hash, l = len, t = Sync.curTable}), "WHISPER", Sync.target);
				else
					SendSyncAddonMessage(fn.encodeData({msg = 0, h = getTotalHash()}), "WHISPER", Sync.target);
				end
			elseif msg == "approve_connect" then
				Sync.sendTable = prepareTableForSend();
				syncSettings = {
					msg = 2,
					b = #Sync.sendTable,
					t = Sync.curTable,
				};
				SendSyncAddonMessage(fn.encodeData(syncSettings), "WHISPER", Sync.target);
			elseif msg == "approve_settings" then
				print('|cffffff00<FGI>|r Start synchronization with '.. sender); -- DEBUG print
				Sync.state = Sync.stateTable[3]; -- ESTABLISHED
				SendSyncAddonStream();
			else
				syncSettings = fn.decodeData(msg);
				if not syncSettings then
					-- Error decrypting the message. Closing a connection
					Sync.closeConnect();
					return;
				end
				if syncSettings.msg == 0 then	-- total hash
					if syncSettings.h == getTotalHash() then
						-- Total hash is ok. Closing a connection
						Sync.closeConnect();
					end
				elseif syncSettings.msg == 1 then	-- target table hash
					if syncSettings.h == getTableHash(Sync.tablesForSync[syncSettings.t]) then
						SendSyncAddonMessage("choose_table", "WHISPER", Sync.target);
					else
						local tbllen = table_len(Sync.tablesForSync[syncSettings.t]);
						if syncSettings.l > tbllen then
							SendSyncAddonMessage("approve_connect", "WHISPER", Sync.target);
						else
							Sync.curTable = syncSettings.t
							Sync.sendTable = prepareTableForSend();
							syncSettings = {
								msg = 2,
								b = #Sync.sendTable,
								t = Sync.curTable,
							};
							SendSyncAddonMessage(fn.encodeData(syncSettings), "WHISPER", Sync.target);
						end
					end
				elseif syncSettings.msg == 2 then -- change state
					Sync.state = Sync.stateTable[3]; -- ESTABLISHED
					Sync.type = syncSettings.t
					SendSyncAddonMessage("approve_settings", "WHISPER", Sync.target);
				else
					-- Sync.state, unregistered syncSettings msg type
				end
			end
			Sync.timeout.new(Sync.closeConnect);
			return;
		elseif Sync.state == "ESTABLISHED" then
			Sync.timeout.stop();
			if msg == "OK" then -- if we are server
				-- send next chunk
				SendSyncAddonStream(true);
			elseif msg == "CHECK" then -- client received all the data. go to check
				Sync.state = Sync.stateTable[4]; -- CHECK
				checkSync("WHISPER", Sync.target);
			else -- if we are client. read server message
				local control, data = string.match(msg, "^([\001-\009])(.*)");
				if control == MSG_MULTI_FIRST then
					Sync.receivedStr = data;
				elseif control == MSG_MULTI_NEXT then
					Sync.receivedStr = Sync.receivedStr .. data;
				elseif control == MSG_MULTI_LAST or control == MSG_MULTI_END then
					if control == MSG_MULTI_END then
						Sync.receivedStr = data;
					else
						Sync.receivedStr = Sync.receivedStr .. data;
					end
					-- check data
					local checked = fn.decodeData(Sync.receivedStr)
					if checked then
						if not Sync.cache[Sync.target] then
							Sync.cache[Sync.target] = {
								[Sync.type] = {}
							};
						elseif not Sync.cache[Sync.target][Sync.type] then
							Sync.cache[Sync.target][Sync.type] = {};
						end
						for k,v in pairs(checked) do
							-- we remember the players(k) so that when synchronizing with this character(Sync.target) we send less data
							Sync.cache[Sync.target][Sync.type][k] = true;
							-- remember the player if he is not on our list
							if not DB.realm[Sync.type][k] then
								DB.realm[Sync.type][k] = v;
								-- add to tablesForSync so as not to update it completely
								Sync.tablesForSync[Sync.type][k] = v;
							end
						end
						Sync.state = Sync.stateTable[4]; -- CHECK
						SendSyncAddonMessage('CHECK', "WHISPER", Sync.target);
						Sync.timeout.new(Sync.closeConnect);
						return;
					end
				end
				SendSyncAddonMessage('OK', "WHISPER", Sync.target, "ALERT");
			end
			Sync.timeout.new(Sync.closeConnect);
		elseif Sync.state == "CHECK" then
			Sync.timeout.stop();
			if msg == "initSync" then
				print('|cffffff00<FGI>|r Start back sync with '.. sender); -- DEBUG print
				Sync.state = Sync.stateTable[2]; -- LISTEN
				Sync.curTable = '';
			else
				msg = fn.decodeData(msg);
				if not msg then
					-- decode error
					Sync.closeConnect();
					return;
				end
				if msg.h == getTotalHash() then
					print('|cff00ff00<FGI>|r Successful synchronization with '.. sender); -- DEBUG print
					Sync.closeConnect();
					checkSync(CHANNEL_MOD);
				else
					Sync.state = Sync.stateTable[2]; -- LISTEN
					Sync.curTable = '';
					SendSyncAddonMessage('initSync', 'WHISPER', sender);
					SendSyncAddonMessage('choose_table', 'WHISPER', sender);
				end
			end
			Sync.timeout.new(Sync.closeConnect);
		end
	end
end);

local frame = CreateFrame('Frame')
frame:RegisterEvent('PLAYER_LOGIN')
frame:SetScript('OnEvent', function()
	DB = DB and DB or addon.DB
	--[[ THINK: Synchronization of the blacklist. How to provide a general list, with the possibility of deletion?
				blacklist requires key - value, currently used by ipairs
	]]
	Sync.tablesForSync = {
		['leave'] = getLasWeekData(DB.realm.leave, false, true),	-- leave
		['alreadySended'] = getLasWeekData(DB.realm.alreadySended),		-- invited
		-- ['blackList'] = getLasWeekData(DB.realm.blackList),				-- blacklist
	};
	if Sync.target == '' then
		checkSync(CHANNEL_MOD);
	end;
end)
