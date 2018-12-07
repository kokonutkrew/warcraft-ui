-- Author: jtrack3d
-- Last Updated: @file-dateiso@

local AddOn, ZbGm = ...

local BAD_DATE = "    NA";
local ZBGMICON = "ZBGMICON";
local zbGuildManager = _G.LibStub("AceAddon-3.0"):NewAddon("zbGuildManager", "AceConsole-3.0");
local L = _G.LibStub("AceLocale-3.0"):GetLocale("zbGuildManager", true);

-- Add-on Icon
local zbGmDB = _G.LibStub("LibDataBroker-1.1"):NewDataObject(ZBGMICON, {
	type = "data source",
	text = "zbGm",
	icon = "Interface\\Icons\\Achievement_General_ClassicBattles",
	--icon = "ZBMini",
	OnClick = function() ZbGm:ToggleVisibility() end,
});
local icon = _G.LibStub("LibDBIcon-1.0");

local c = {
	BLUE   = BATTLENET_FONT_COLOR_CODE,
	GOLD   = NORMAL_FONT_COLOR_CODE,
	GRAY   = "|cff9f9f9f",
	GREEN  = "|cff7fff7f",
	ORANGE = "|cffff9f7f",
	PURPLE = "|cff9f7fff",
};

-------------------------------------------------------------------------------------
-- REGISTER ADD-ON SLASH COMMAND
-- None of this add-on is "created" until the "show" command is executed.
-------------------------------------------------------------------------------------
SLASH_zbGuildManager1 = '/zb';
local function slashCommandHandler(msg, editbox)
	if msg == 'show' then
		ZbGm:ToggleVisibility()
	end
	if msg == 'db' then
		if ZbGmHistoryDB.MemberJoinDates then
			local count = 0;
			for idx in pairs(ZbGmHistoryDB.MemberJoinDates) do
				count=count+1;
			end
			print (count .. " members in history ");
		end
	end
	if msg:sub(1,5) == "dump " then
		print (msg:sub(6));
		ZbGm.ZRoster:DumpPlayer(msg:sub(6));
	end
end
SlashCmdList["zbGuildManager"] = slashCommandHandler;

-------------------------------------------------------------------------------------
-- INTERNAL STANDARD LIBRARY FUNCTIONS
-------------------------------------------------------------------------------------

-- Convert string mm-dd-yy to time number format
local function _DateFromString(dateString)
	local pmonth,pday,pyear;
	pmonth,pday,pyear =  dateString:match("(%d+)-(%d+)-(%d+)");

	if pmonth == nil then
		pmonth,pday,pyear =  dateString:match("(%d+)/(%d+)/(%d+)");
	end

	if pyear and pday and pmonth then
		pyear  = tonumber(pyear);
		pday   = tonumber(pday);
		pmonth = tonumber(pmonth);

		if pyear < 2000 then
			pyear = pyear + 2000;
		end
		return time({tz="GMT",day=pday,month=pmonth,year=pyear,hour=0,min=0,sec=0});
	else
		return 0;
	end
end

-- Converts a time to a relative time string, # to 3mo5dys.
local function _TimeToRelative(joinDate)
	if not joinDate then
		return ""
	end

	local today = time();

	local delta = today - joinDate

	local years = math.floor((delta) / (86400*365))
	delta = delta - years * 86400*365
	local months = math.floor((delta) / (86400*30))
	delta = delta - months * 86400*30
	local days = math.floor((delta) / 86400)

	if (joinDate == 0) then
		return "";
	elseif years > 1 then
		return years .. "y";
	elseif years > 0 then
		return "1y " .. months .. "m";
	elseif months > 0 then
		return months .. "m " .. days .. "d";
	else
		return days .. "d";
	end
end

local function _SplitNameRealm(name, defaultRealm)
	if not name then return end
	local matches = name:gmatch("([^%-]+)")
	if matches then
		local nameOnly = matches()
		local realm = matches()
		if not realm then
			realm = defaultRealm
		end
		return nameOnly, realm
	end
	return nil
end

-- Convert date to string
--   	dateValue - milliseconds time value
--		display 	- boolean indicating if formating should be used.
local function _StringFromDate(dateValue, display)
	local formatConvert = {
		["MM-DD-YY"] = "%m-%d-%y",
		["MM/DD/YY"] = "%m/%d/%y",
		["YY-MM-DD"] = "%y-%m-%d",
	};

  if dateValue ~= nil and type(dateValue) == "number" and dateValue ~= 0 then
		if display then

			local displayformat = ZbGmOptions.dateDisplayFormat;
			if displayFormat == nil then
				displayFormat = "%m-%d-%y";
			end

			local dateformat = formatConvert[displayformat];

			return date(dateformat, dateValue, dateValue, dateValue);
		else
			return date("%m-%d-%y", dateValue, dateValue, dateValue)
		end
    else
        return BAD_DATE;
    end
end

-- Trim Spaces of the provided string.
local function _TrimString(s)
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end

-------------------------------------------------------------------------------------
-- Addon-Wide Event Handlers
-------------------------------------------------------------------------------------

ZbGm.RAID_CLASS_COLORS = {
	["HUNTER"] = { r = 0.67, g = 0.83, b = 0.45, colorStr = "ffabd473" },
	["WARLOCK"] = { r = 0.53, g = 0.53, b = 0.93, colorStr = "ff8788ee" },
	["PRIEST"] = { r = 1.0, g = 1.0, b = 1.0, colorStr = "ffffffff" },
	["PALADIN"] = { r = 0.96, g = 0.55, b = 0.73, colorStr = "fff58cba" },
	["MAGE"] = { r = 0.25, g = 0.78, b = 0.92, colorStr = "ff3fc7eb" },
	["ROGUE"] = { r = 1.0, g = 0.96, b = 0.41, colorStr = "fffff569" },
	["DRUID"] = { r = 1.0, g = 0.49, b = 0.04, colorStr = "ffff7d0a" },
	["SHAMAN"] = { r = 0.0, g = 0.44, b = 0.87, colorStr = "ff0070de" },
	["WARRIOR"] = { r = 0.78, g = 0.61, b = 0.43, colorStr = "ffc79c6e" },
	["DEATHKNIGHT"] = { r = 0.77, g = 0.12 , b = 0.23, colorStr = "ffc41f3b" },
	["MONK"] = { r = 0.0, g = 1.00 , b = 0.59, colorStr = "ff00ff96" },
	["DEMONHUNTER"] = { r = 0.64, g = 0.19, b = 0.79, colorStr = "ffa330c9" },
};

--------------------------------------------------------------------------------
-- COMMAND FUNCTIONS
--------------------------------------------------------------------------------

-- Use to print debug messages to the user.  When debug off, no message is displayed.
function ZbGm:Debug(...)
	if ZbGmOptions and ZbGmOptions.debug then
		local prefix = string.format("|cfff442e2%s|r", "zbGM:");
		DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, tostringall(...)));
	end
end

function ZbGm:Error(...)
	local prefix = string.format("|cfff442e2%s|r", "zbGM:");
	DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, tostringall(...)));
end

-- Applies a new rank to a character index.
function ZbGm:ApplyRank(charIndex, newRank)
		--print(character)

	-- Can the activating player even promote a user.
	if CanGuildPromote() then

		-- Locate the "Index" in the roster of the player name.
		local playerIndex, rankNum, oldRank;
		for i = 1, GetNumGuildMembers() do
			local fullName, rank, rankIndex, _, class, _, note, officernote, _, _, _, _, _, _, _, _ = GetGuildRosterInfo(i);
			--print (playerIndex .. " " .. fullName)
			if fullName == charIndex then
				playerIndex = i;
				oldRank = rankIndex + 1;
				ZbGm:Debug("Apply Rank: Found Player Index " .. playerIndex);

				-- end the player search for index
				break
			end
		end

		for i = 1, GuildControlGetNumRanks() do
			if GuildControlGetRankName(i) == newRank then
				-- Break out of the loop
				rankNum = i
				break
			end
		end

		-- have player, have rank.
		if playerIndex and rankNum and rankNum ~= oldRank then
			local allowed, reason = IsGuildRankAssignmentAllowed(playerIndex, rankNum)
			if allowed then
				SetGuildMemberRank(playerIndex, rankNum)
				return true
			else
				ZbGm:Debug("Unable to promote because " .. reason);
			end
		end
	end
	return false
end

function ZbGm:UpdatePublicNote(character, note)
	if CanEditPublicNote() then
		local playerIndex = -1;

		-- Locate the game "index" number of the character to update.  Needed by "SetPublicNote".
		for i = 1, GetNumGuildMembers() do
			local fullName, rank, rankIndex, _, class, _, note, officernote, _, _, _, _, _, _, _, _ = GetGuildRosterInfo(i)
			--print (playerIndex .. " " .. fullName)
			if fullName == character.full then
				ZbGm:Debug("Located " .. fullName .. " is at " .. i);
				-- end the player search for index
				playerIndex = i
				--print ("Found Player Index " .. playerIndex);
				break
			end
		end

		if playerIndex > 0 then
			ZbGm:Debug("Updating Note: '" .. note .. "'");
			GuildRosterSetPublicNote(playerIndex, note);
		else
			ZbGm:Debug("Cannot locate player "..character.full);
		end
	end
end

function ZbGm.SetAlt_OnAccept (self, data)
	-- Cannot set alt if main isn't a main yet.

	-- Update the player note.
	local playerNameIndex = ZbGm.newMemberFrame.data[ZbGm.newMemberFrame.selectedIndex];
	local newMainIndex = ZbGm.memberframe.main;

	-- Cannot set as child.
	if not ZbGm.ZRoster:IsMain(newMainIndex) then
		ZbGm:Error(string.format(L["%s needs to be set as main first (player has no join date)"], newMainIndex));
		return nil;
	end

	local altNote = "(" .. newMainIndex:sub(1,ZbGm.ZRoster.IndexMaxLen) .. ")"

	ZbGm.ZRoster:SetMain(playerNameIndex, newMainIndex);
	ZbGm:UpdatePublicNote(ZbGm.ZRoster:GetCharacter(playerNameIndex), altNote);

	-- Remove from the unassociated list.
	table.remove(ZbGm.newMemberFrame.data,ZbGm.newMemberFrame.selectedIndex);
	ZbGm.newMemberFrame.selectedIndex = nil;

	-- Force main window to refresh to remove the "alt" if window shows only mains.
	ZbGm.ZRoster:BuildFilteredIndex(ZbGm.frame.searchTextField:GetText(), ZbGm.frame.mainsCheck:GetChecked());

	-- Tell both scroll lists to update.
	ZbGm:UpdateNewMemberViewTable();

	-- Update member view to show new alt.
	ZbGm.memberframe.numberOfCharacters = ZbGm.ZRoster:GetCharacterIndices(ZbGm.ZRoster:GetCharacter(playerNameIndex), ZbGm.memberframe.characterList);

	--print("new number " .. ZbGm.memberframe.numberOfCharacters);

	ZbGm:UpdateMemberViewTable();

	-- Update Main View.
	ZbGm:UpdateMainViewTable();
end

function ZbGm.CopyCharacterName(self, arg1, arg2, checked)
	ZbGm:Debug("Copy Character Name");

	if ZbGm.frame.contextMenuFrame.character then
		ZbGm:Debug(ZbGm.frame.contextMenuFrame.character.full);
		_G.StaticPopupDialogs["ZbGm_CopyCharacterName"] =
		_G.StaticPopupDialogs["ZbGm_CopyCharacterName"] or {
					text = L["Use CTRL+C to copy name"],
					button1 = OKAY,
					whileDead = true,
					hideOnEscape = true,
					showAlert = false,
					timeout = 0,
					enterClicksFirstButton = true,
					hasEditBox = true,
					OnShow = function(self, data)
						self.editBox:SetText(ZbGm.frame.contextMenuFrame.character.full);
						self.editBox:HighlightText(0, -1);
					end,
		}

		local dialog = _G.StaticPopup_Show("ZbGm_CopyCharacterName");
	end
end

function ZbGm.EditOfficerNote(self, arg1, arg2, checked)
	ZbGm:Debug("Edit Officer Note");
	ZbGm:Debug(ZbGm.frame.contextMenuFrame.character.full);
end

-- Sets the currently selected unassociated character as an alt of the selected main
function ZbGm.SetNewAlt()

	-- Be sure frame exists.
	if ZbGm.newMemberFrame then

		-- Be sure a member is selected
		if ZbGm.newMemberFrame.selectedIndex then

			-- Make sure main screen has character selected
			if ZbGm.frame.selectedIndex and ZbGm.memberframe:IsVisible() then

				_G.StaticPopupDialogs["ZbGm_SetGuildMemberAlt"] =
				_G.StaticPopupDialogs["ZbGm_SetGuildMemberAlt"] or {
					text = L["Make %s an alt of %s?"],
					button1 = ACCEPT,
					button2 = CANCEL,
					whileDead = true,
					hideOnEscape = true,
					showAlert = false,
					timeout = 0,
					enterClicksFirstButton = true,
					hasEditBox = false,
					OnAccept = ZbGm.SetAlt_OnAccept,
					OnShow = function(self, data)
						self.editBox:SetText(_StringFromDate(time()));
					end,
				}

				--print (ZbGm.newMemberFrame.data[ZbGm.newMemberFrame.selectedIndex]);
				--print (ZbGm.memberframe.main);
				-- Don't allow alt of self.
				if ZbGm.newMemberFrame.data[ZbGm.newMemberFrame.selectedIndex] ~= ZbGm.memberframe.main then
					local dialog = _G.StaticPopup_Show("ZbGm_SetGuildMemberAlt", ZbGm.newMemberFrame.data[ZbGm.newMemberFrame.selectedIndex], ZbGm.memberframe.main);
				end
			end
		else
			ZbGm:Error(L["No character selected"]);
		end
	end
end

function ZbGm:SortMainBy(column)
	if ZbGm.ZRoster.sortIndexBy == column then
		ZbGm.ZRoster.sortIndexBy = column .. "Desc"
	else
		ZbGm.ZRoster.sortIndexBy = column
	end
	PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
	ZbGm.frame.selectedIndex = nil
	ZbGm.ZRoster:SortIndex()
	ZbGm:UpdateMainViewTable()
end

function ZbGm:ConfirmRemove()
	local countSelected = 0
	local indexSelected = 0

	for i=1, ZbGm.memberframe.numberOfCharacters do
		if ZbGm.memberframe.selectedList[i] then
			indexSelected = i
			countSelected = countSelected + 1
		end
	end

	if countSelected > 0 then
		local playerName = countSelected .. " characters"
		_G.StaticPopupDialogs["ZbGm_RemoveGuildMember"] =
			_G.StaticPopupDialogs["ZbGm_RemoveGuildMember"] or {
						text = L["Are you sure you wish to remove selected players from the guild?"],
						button1 = L["Yes"],
						button2 = L["No"],
						whileDead = true,
						hideOnEscape = true,
						showAlert = true,
						timeout = 0,
						enterClicksFirstButton = false,
						OnAccept = function(self, data)
							ZbGm:RemoveCharacters()
						end,
		}

		local dialog = _G.StaticPopup_Show("ZbGm_RemoveGuildMember", playerName)
	end
end

function ZbGm.SetMain_OnAccept(self, data)
	if data then
		local dateString = self.editBox:GetText()
		local dateValue = _DateFromString(dateString);
		local newMainCharacter = ZbGm.ZRoster:GetCharacter(data);

		-- Doesn't parse!
		if dateValue == BAD_DATE then
			ZbGm:Debug("Bad Date Format " .. dateString);
			-- Tell the dialog code to reject the date and stay up.
			return false;
		else
			ZbGm:Debug("Set Main Date " .. dateString);
		end

		-- Update the player note.
		ZbGm:UpdatePublicNote(newMainCharacter, dateString)

		-- Remove from the unassociated list.
		table.remove(ZbGm.newMemberFrame.data,ZbGm.newMemberFrame.selectedIndex)
		ZbGm.newMemberFrame.selectedIndex = nil;

		-- Fix memory model
		ZbGm.ZRoster.players[data].joindate = dateValue

		-- Tell both scroll lists to update.
		ZbGm:FixAllNotes(newMainCharacter);
		ZbGm:UpdateNewMemberViewTable()
		ZbGm:UpdateMainViewTable()
	end
end

function ZbGm.MakeMain()
	-- Be sure frame exists.
	if ZbGm.newMemberFrame then

		-- Be sure a member is selected
		if ZbGm.newMemberFrame.selectedIndex then

			local playerNameIndex = ZbGm.newMemberFrame.data[ZbGm.newMemberFrame.selectedIndex];
			ZbGm:Debug("MakeMain: " .. playerNameIndex);

			_G.StaticPopupDialogs["ZbGm_SetGuildMemberMain"] =
			_G.StaticPopupDialogs["ZbGm_SetGuildMemberMain"] or {
						text = "Join Date (format MM-DD-YY) for '%s'",
						button1 = ACCEPT,
						button2 = CANCEL,
						whileDead = true,
						hideOnEscape = true,
						showAlert = false,
						maxLetters = 8,
						timeout = 0,
						enterClicksFirstButton = true,
						hasEditBox = true,
						OnAccept = ZbGm.SetMain_OnAccept,
						OnShow = function(self, data)
							self.editBox:SetText(_StringFromDate(time()));
						end,
			}

			local dialog = _G.StaticPopup_Show("ZbGm_SetGuildMemberMain", ZbGm.ZRoster:GetCharacter(playerNameIndex).name, playerNameIndex, playerNameIndex)


		end
	end
end


function ZbGm.ApplyNewRank(self)
	for i=1, ZbGm.memberframe.numberOfCharacters do
		if ZbGm.memberframe.selectedList[i] then
			local success = ZbGm:ApplyRank(ZbGm.memberframe.characterList[i], ZbGm.memberframe.selectedRank)

			if success then
				ZbGm.ZRoster:SetRank(ZbGm.memberframe.characterList[i], ZbGm.memberframe.selectedRank);
				ZbGm:UpdateMainViewTable() -- Update Main window
				ZbGm:UpdateMemberViewTable() -- Update Member Frame
			end
		end
	end
	ZbGm:UpdateMemberViewTable()
end

function ZbGm:DissociateSelected()
	local countSelected = 0;
	local countRemoved = 0;

	for i=1, ZbGm.memberframe.numberOfCharacters do
		if ZbGm.memberframe.selectedList[i] then
			indexSelected = i;
			countSelected = countSelected + 1;
		end
	end

	if countSelected > 0 then

		--print(countSelected);

		-- First pass remove alts.
		for i=1, ZbGm.memberframe.numberOfCharacters do
			if ZbGm.memberframe.selectedList[i] then
				local removeToon = ZbGm.ZRoster:GetCharacter(ZbGm.memberframe.characterList[i]);
				if removeToon.parentNode then
					--print(removeToon.full);
					countRemoved = countRemoved+1;
					ZbGm:UpdatePublicNote(removeToon, "");
					ZbGm.ZRoster:RemoveChildNode(removeToon);
					removeToon.parentNode = nil;
					removeToon.joindate = 0;
					removeToon.note = "";
				end
			end
		end

		-- Check if the parent is being removed... can't have child nodes.
		for i=1, ZbGm.memberframe.numberOfCharacters do
			if ZbGm.memberframe.selectedList[i] then
				local removeToon = ZbGm.ZRoster:GetCharacter(ZbGm.memberframe.characterList[i]);
				if removeToon.parentNode == nil then
					if removeToon.childNode ~= nil then
						ZbGm:Error("Warning! Cannot dissociate a main if it has alts.  Change mains first");
					else
						ZbGm:Error("Warning! You just dissociated a main, last join date - " .. _StringFromDate(removeToon.joindate));
						removeToon.parentNode = nil;
						removeToon.joindate = 0;
						removeToon.note = "";
						ZbGm:UpdatePublicNote(removeToon, "");
						countRemoved = countRemoved+1;
						ZbGm:HideMemberFrame();
					end
				end
			end
		end

		-- REBUILD THE member frame.
		local parentToon = ZbGm.ZRoster:GetCharacter(ZbGm.memberframe.main);
		--print (ZbGm.memberframe.main);
		ZbGm.memberframe.numberOfCharacters = ZbGm.ZRoster:GetCharacterIndices(parentToon, ZbGm.memberframe.characterList);
		--print(ZbGm.memberframe.numberOfCharacters);
		-- Fix-up the selected list.
		for i=1, ZbGm.memberframe.numberOfCharacters do
			--print(ZbGm.memberframe.characterList[i]);
			ZbGm.memberframe.selectedList[i] = false;
		end

		ZbGm:UpdateMemberViewTable();
		--print ("count remove = " .. countRemoved);
		if countRemoved > 0 then
			ZbGm:ShowNewMemberFrame();
		end
	end
end

function ZbGm:FixAllNotes(character)
	local parentNode = character;
	if character.parentNode ~= nil then
		parentNode = character.parentNode;
	end

	-- UGH, have to traverse the structure which shouldn't be observable.
	local joinDate = _StringFromDate(ZbGm.ZRoster:GetJoinDate(parentNode));
	local altNote = "(" .. parentNode.full:sub(1,ZbGm.ZRoster.IndexMaxLen) .. ")"

	ZbGm:Debug("Set parent note:");
	ZbGm:UpdatePublicNote(parentNode, joinDate)

	local ptr = parentNode.childNode;
	local loopStop = 1;   -- We use Loop to ensure no infinite loops.
	while ptr and loopStop < 100 do
		loopStop = loopStop + 1;
		ZbGm:UpdatePublicNote(ptr, altNote);
		ptr = ptr.nextChild;
	end
end

function ZbGm:RemoveCharacters()
	local countSelected = 0
	local playerIndexImpact = false
	local newIndexName

	-- must have UI
	if ZbGm.memberframe then
		-- must have main selected
		if ZbGm.memberframe.main then
			for i=ZbGm.memberframe.numberOfCharacters,1,-1 do
				if ZbGm.memberframe.selectedList[i] then
					--print (i);
					local toon = ZbGm.ZRoster:GetCharacter(ZbGm.memberframe.characterList[i])
					local playerName = toon.full;

					--print ("Removing .. " .. playerName)

					for j=i,ZbGm.memberframe.numberOfCharacters-1 do
						ZbGm.memberframe.characterList[j]=ZbGm.memberframe.characterList[j+1];
					end
					ZbGm.memberframe.numberOfCharacters = ZbGm.memberframe.numberOfCharacters - 1;

					---------------------
					-- EDITING ROSTER! --
					---------------------
					GuildUninvite(playerName)
					ZbGm.frame.totalMembers = ZbGm.frame.totalMembers - 1;

					newIndexName = ZbGm.ZRoster:RemoveCharacter(toon.full);

					-- See if we need to update the "frame" on which character is main.
					if newIndexName == nil then
						-- We deleted them, no new parent, so hide the window.
						ZbGm.memberframe:Hide();
					elseif newIndexName.full ~= ZbGm.memberframe.main then
						-- We recieved a new parent name, so update the parent name and leave up.
						playerIndexImpact = true
						ZbGm.memberframe.main = newIndexName.full;
						ZbGm:UpdateMemberViewTable()
					end
				end
			end

			if playerIndexImpact then
				ZbGm:FixAllNotes(newIndexName)
			end

			-- Update main window.
			ZbGm.ZRoster:BuildFilteredIndex(ZbGm.frame.searchTextField:GetText(), ZbGm.frame.mainsCheck:GetChecked())
			ZbGm:UpdateMainViewTable()
		end
	end
end

function ZbGm:SelectAllCharacters()
	-- Count number selected, if all selected, then deselect instead of select.
	local countSelected = 0
	if ZbGm.memberframe.main then
		for i=1, ZbGm.memberframe.numberOfCharacters do
			if ZbGm.memberframe.selectedList[i] then
				countSelected = countSelected + 1
			end
		end

		local selectVal = (countSelected ~= ZbGm.memberframe.numberOfCharacters)

		for i=1, ZbGm.memberframe.numberOfCharacters do
			ZbGm.memberframe.selectedList[i] = selectVal
		end

		ZbGm:UpdateMemberViewTable()
	end
end

function ZbGm.SwapMain()
	if CanEditPublicNote() then
		local countSelected = 0
		local indexSelected = 0
		for i=1, ZbGm.memberframe.numberOfCharacters do
			if ZbGm.memberframe.selectedList[i] then
				indexSelected = i
				countSelected = countSelected + 1
			end
		end

		if countSelected == 1 and ZbGm.memberframe.selectedList[indexSelected] ~= ZbGm.memberframe.main then
			-- Tell UI List Structure to swap

			local newMainIndex = ZbGm.memberframe.characterList[indexSelected];
			local newMainToon = ZbGm.ZRoster:GetCharacter(newMainIndex);

			ZbGm.ZRoster:SwapMain(ZbGm.memberframe.main, newMainIndex);
			ZbGm:FixAllNotes(newMainToon);

			ZbGm:MemberViewSetCharacter(self, newMainToon);
			ZbGm:UpdateMainViewTable();

		end
	end
end

function ZbGm.GuildRankDropDownSelect(button, arg1, arg2, checked)
	--print(ZbGm.memberframe.rankDropdown)
	--UIDropDownMenu_SetSelectedID(ZbGm.memberframe.rankDropdown, this:GetID() );
	UIDropDownMenu_SetText(ZbGm.memberframe.rankDropdown,arg2)
	ZbGm.memberframe.selectedRank = arg2
	--ToggleDropDownMenu(1, nil, DropDownTest_DropDown, button, 0, 0)
	--ZbGm.memberframe.rankDropdown:SetText(
end

function ZbGm.GuildRankDropDownInit(self, level, menulist)
	local numRanks = GuildControlGetNumRanks();
	local memberIndex = GetGuildRosterSelection();
	local _, _, memberRankIndex = GetGuildRosterInfo(GetGuildRosterSelection());
	memberRankIndex = memberRankIndex + 1;  -- adjust to 1-based
	local _, _, userRankIndex = GetGuildInfo("player");
	userRankIndex = userRankIndex + 1;	-- adjust to 1-based

	local highestRank = userRankIndex + 1;
	if not ( CanGuildPromote() ) then
		highestRank = memberRankIndex;
	end
	local lowestRank = numRanks;
	if not ( CanGuildDemote() ) then
		lowestRank = memberRankIndex;
	end

	for listRank = highestRank, lowestRank do
		local info = UIDropDownMenu_CreateInfo();
		info.text = GuildControlGetRankName(listRank);
		info.func = ZbGm.GuildRankDropDownSelect;
		info.checked = listRank == memberRankIndex;
		info.value = listRank;
		info.arg1 = listRank;
		info.arg2 = info.text
		-- check
		if ( not info.checked ) then
			local allowed, reason = IsGuildRankAssignmentAllowed(memberIndex, listRank);
			if ( not allowed and reason == "authenticator" ) then
				info.disabled = true;
				info.tooltipWhileDisabled = 1;
				info.tooltipTitle = GUILD_RANK_UNAVAILABLE;
				info.tooltipText = GUILD_RANK_UNAVAILABLE_AUTHENTICATOR;
				info.tooltipOnButton = 1;
			end
		end
		UIDropDownMenu_AddButton(info);
	end
end

function ZbGm:LoadRosterFromServer()
	if _G.IsInGuild() then
		ZbGm:Debug("Loading Guild Roster");
		ZbGm.loadedTime = time();

		-- Determine the guild and default realm.
		local guildName, gRank, gRankIndex, gRealm = GetGuildInfo("player");
		local numMembers, numOnline, numOnlineAndMobile = GetNumGuildMembers()

		if not gRealm then
			gRealm = GetRealmName();
			gRealm = gRealm:gsub("%s+", "");
		end

		ZbGm:Debug("Guild Name ".. guildName);
		ZbGm:Debug("Realm ".. gRealm);

		ZbGm.frame.totalMembers = numMembers;

		--gRealm = "KulTiras"

		for i = 1, numMembers do
			local fullName, rank, rankIndex, _, _, _, note, officernote, _, _, class, _, _, _, _, _ = GetGuildRosterInfo(i)
			local nameOnly, realmOnly = _SplitNameRealm(fullName, gRealm)

			-- Reconstruct full toon name/server since same realms don't have realm.
			fullName = nameOnly .. "-" .. realmOnly

			local lastOnlineDate = 0
			if online then
				lastOnlineDate = time()
			else
				local years, months, days, hours = _G.GetGuildRosterLastOnline(i)

				if years and months and days and hours then
					lastOnlineDate = time() - (years*365*86400) - (months*30*86400) - (days*86400) - (hours*3600)
				else
					lastOnlineDate = time()
				end
			end

			-- See if this is an ALT by comment
			local main = string.match(note, "^[Aa][Ll][Tt]:%s*([%a\128-\255-]+)");
			if main == nil then
				main = string.match(note, "^%(([%a\128-\255-]+)%)");
			else

			end

			if main then
				--print(note .. " " .. main)
				main = _TrimString(main)
				local mainNameOnly, mainRealmOnly = _SplitNameRealm(main, gRealm)
				local parentFullName = mainNameOnly .. "-" .. mainRealmOnly
				main = parentFullName
			end

			-- NEW Roster Load
			local joinDate = _DateFromString(note)
			ZbGm.ZRoster:AddCharacter(main, nameOnly, realmOnly, rank, class, note, officernote, lastOnlineDate, joinDate)
		end

		-- Tell ZRoster to clean-up, builds linked lists and calls-back on errors.
		-- Returns a list of alts that were converted to mains because main was missing.
		local fixIdxList = ZbGm.ZRoster:ReconstructLists(ZbGmHistoryDB.MemberJoinDates);

		-- Save Join Dates locally (HistoryDB) if they have ability to edit and could use the data.
		-- Fix Notes if missing mains and can access History.

		if CanEditPublicNote() then
			if fixIdxList then
				for i=1, #fixIdxList do
					local newMainCharacter = ZbGm.ZRoster:GetCharacter(fixIdxList[i]);
					ZbGm:FixAllNotes(newMainCharacter);
				end
			end

			-- Update saved variables.
			ZbGm.ZRoster:UpdateHistorySave(ZbGmHistoryDB.MemberJoinDates);
		end

		local totalCount = ZbGm.ZRoster.ActiveCount + ZbGm.ZRoster.SemiActiveCount + ZbGm.ZRoster.InactiveCount + ZbGm.ZRoster.AbsentCount;
		ZbGm.frame.statusScale = ZbGm.frame.statuswidth / totalCount;

		-- Update the Bar Charts
		ZbGm.frame.activeStatusBar:SetWidth(math.max(ZbGm.ZRoster.ActiveCount*ZbGm.frame.statusScale,1));
		ZbGm.frame.lessActiveStatusBar:SetWidth(math.max(ZbGm.ZRoster.SemiActiveCount*ZbGm.frame.statusScale,1));
		ZbGm.frame.InactiveStatusBar:SetWidth(math.max(ZbGm.ZRoster.InactiveCount*ZbGm.frame.statusScale,1));
		ZbGm.frame.AbsentStatusBar:SetWidth(math.max(ZbGm.ZRoster.AbsentCount*ZbGm.frame.statusScale,1));

		--print("Active" .. ZbGm.ZRoster.ActiveCount);
		--print("semi" .. ZbGm.ZRoster.SemiActiveCount);
		--print("inactive" .. ZbGm.ZRoster.InactiveCount);
		--print("absent" .. ZbGm.ZRoster.AbsentCount);

		--print("filter = " .. ZbGm.frame.searchTextField:GetText());
		ZbGm.ZRoster:BuildFilteredIndex(ZbGm.frame.searchTextField:GetText(), ZbGm.frame.mainsCheck:GetChecked());
		ZbGm:UpdateMainViewTable();
	end
end

function ZbGm.QueuedReload()
	if ZbGm.frame:IsVisible() then
		ZbGm:LoadRosterFromServer();

		if CanEditPublicNote() then
			if ZbGm.ZRoster:HasUnassociated() then

				if not ZbGm.frame.unassocBtn:IsEnabled() then
					ZbGm.frame.unassocBtn:Enable();
					ZbGm.frame.unassocBtn.Glow:Play();
				else
					ZbGm.frame.unassocBtn:Enable();
				end
			else
				ZbGm.frame.unassocBtn.Glow:Stop();
				ZbGm.frame.unassocBtn:Disable();
			end
		end

		ZbGm.loadQueue = false;
	end
end


function ZbGm.OnEvent(self, event, ...)
	if ( not self:IsShown() ) then
		return;
	end

	if ( event == "GUILD_ROSTER_UPDATE" ) then
		--print ("ROSTER EVENT");

		-- Allows the roster data to be loaded only on the first Roster Update Event
		-- This needs to be modified to allow roster updates, non-destructively.
		--if not ZbGm.roster_loaded then
		if arg then
			print ("arg");
		end

		local timeSince = time() - ZbGm.loadedTime;

		-- If we ask for a reload too soon, then we queue a load in advance, only once.
		if timeSince < 60 then

			if not ZbGm.loadQueue then
				-- Delay and load if first time.
				ZbGm.loadQueue = true;

				-- Queue for the next 60 second mark.
				C_Timer.After(60 - timeSince, ZbGm.QueuedReload);
			end
		else
			-- It was over 60, so just reload.
			--print ("reload data");
			ZbGm:LoadRosterFromServer()
			ZbGm:UpdateMainViewTable()

			if CanEditPublicNote() then

				if ZbGm.ZRoster:HasUnassociated() then

					if not ZbGm.frame.unassocBtn:IsEnabled() then
						ZbGm.frame.unassocBtn:Enable();
						ZbGm.frame.unassocBtn.Glow:Play();
					else
						ZbGm.frame.unassocBtn:Enable();
					end
				else
					ZbGm.frame.unassocBtn.Glow:Stop();
					ZbGm.frame.unassocBtn:Disable();
				end

			end
		end
	end
end

-------------------------------------------------------------------------------------
-- USER INTERFACE
-------------------------------------------------------------------------------------

function ZbGm:UpdateMainViewTable()
	local line; -- 1 through 5 of our window to scroll
	local lineplusoffset; -- an index into our data calculated from the scroll offset
	local numInList = ZbGm.ZRoster:GetFilteredIndexCount()

	FauxScrollFrame_Update(ZbGm.frame.scrollBar, numInList, #ZbGm.frame.table, 20)
	for line=1, #ZbGm.frame.table do
		lineplusoffset = line + FauxScrollFrame_GetOffset(ZbGm.frame.scrollBar);
		local baseElement = "zbGuildManagerMainFrameTableItem"..line
		if lineplusoffset <= numInList then
			local toon = ZbGm.ZRoster:GetFilteredCharacter(lineplusoffset)
			--local player = ZbGm.roster:GetFilteredParent(lineplusoffset)
			local nameElement = baseElement.."Name"

			if ZbGm.RAID_CLASS_COLORS[toon.class] then
				_G[nameElement]:SetTextColor(ZbGm.RAID_CLASS_COLORS[toon.class].r, ZbGm.RAID_CLASS_COLORS[toon.class].g, ZbGm.RAID_CLASS_COLORS[toon.class].b)
			else
				_G[nameElement]:SetTextColor(0.25, 0.25, 0.25)
			end

			_G[nameElement]:SetText(toon.name);
			_G[baseElement.."Realm"]:SetText(toon.server);
			_G[baseElement.."Seniority"]:SetText(_TimeToRelative(ZbGm.ZRoster:GetJoinDate(toon)));
			_G[baseElement.."Rank"]:SetText(toon.rank);
			_G[baseElement.."AltsNum"]:SetText(ZbGm.ZRoster:GetNumAlts(toon));

			local lastLog = ZbGm.ZRoster:GetLastLogin(toon);

			_G[baseElement.."LastLog"]:SetText(_StringFromDate(lastLog, true));

			if lastLog then
				local deltaLog = (time() - lastLog) / (86400*7);
				if deltaLog < 2 then   		-- Green
					_G[baseElement.."LastLog"]:SetTextColor(0.0, 1.0, 0.0, 0.8);
				elseif deltaLog < 4 then  	-- Yellow
					--_G["zbGuildManagerMainFrameTableItem"..line.."ActiveBar"]:SetColorTexture(1.0, 1.0, 0.0, 0.4)
					_G[baseElement.."LastLog"]:SetTextColor(1.0, 1.0, 0.0, 0.8);
				elseif deltaLog < 19 then  	-- Orange
					_G[baseElement.."LastLog"]:SetTextColor(1.0, 0.7, 0.0, 0.8);
				else						-- Red
					_G[baseElement.."LastLog"]:SetTextColor(1.0, 0.0, 0.0, 0.8);
				end
			else
				_G[baseElement.."ActiveBar"]:SetColorTexture(0.0, 1.0, 0.0, 0.0);
			end

			if ZbGm.frame.selectedIndex then
				if ZbGm.frame.selectedIndex == lineplusoffset then
					_G[baseElement]:LockHighlight();
				else
					_G[baseElement]:UnlockHighlight();
				end
			end

			_G[baseElement]:Show();
		else
			_G[baseElement]:Hide();
		end
	end

	_G["zbGuildManagerMainFrameResultsLabelValue"]:SetText(string.format("%d/%d",numInList,ZbGm.frame.totalMembers));

end

function ZbGm:MemberViewSetCharacter(self, characterNode)
	local joinDate = ZbGm.ZRoster:GetJoinDate(characterNode);
	local lastOn = ZbGm.ZRoster:GetLastLogin(characterNode);

	ZbGm.memberframe.main = characterNode.full;
	ZbGm.memberframe.Title:SetText(characterNode.full);
	ZbGm.memberframe.joinedText:SetText( _StringFromDate(joinDate,true)..
		" (" .. _TimeToRelative(joinDate) .. ")")
	ZbGm.memberframe.lastOnText:SetText(_StringFromDate(lastOn,true)..
		" (" .. _TimeToRelative(lastOn) .. ")")


	-- Setup the data array.
	ZbGm.memberframe.numberOfCharacters = ZbGm.ZRoster:GetCharacterIndices(characterNode, ZbGm.memberframe.characterList);
	-- Fix-up the selected list.
	for i=1, ZbGm.memberframe.numberOfCharacters do
		ZbGm.memberframe.selectedList[i] = false;
	end

	ZbGm:UpdateMemberViewTable();
end

-- Main Window Item Mouse Click
function ZbGm:ScrollTable_OnClick(self, line, button)
	local lineplusoffset = line + FauxScrollFrame_GetOffset(ZbGm.frame.scrollBar);
	if lineplusoffset <= ZbGm.ZRoster:GetFilteredIndexCount() then
		local character = ZbGm.ZRoster:GetFilteredCharacter(lineplusoffset);
		if character then

			if button=="LeftButton" then

				-- Save in the main table which is selected.
				if ZbGm.frame.selectedIndex then
					-- Unhighlight all
					for line=1,#ZbGm.frame.table do
						ZbGm.frame.table[line]:UnlockHighlight();
					end
				end
				ZbGm.frame.selectedIndex = lineplusoffset
				self:LockHighlight();

				-- Ensures a character can be set as alt.
				if ZbGm.newMemberFrame and ZbGm.newMemberFrame:IsVisible() then
					ZbGm.newMemberFrame.setAltBtn:Enable();
				end

				-- Clear what is selected "Player" member frame
				ZbGm:MemberScrollTableClearSelection();

				-- Setup member data
				local mainChar = character;
				if mainChar.parentNode then mainChar = mainChar.parentNode end

				ZbGm:MemberViewSetCharacter(self, mainChar);
				ZbGm:ShowMemberFrame();
			else

				ZbGm.frame.contextMenuFrame.character = character;
				EasyMenu(ZbGm.contextMenu, ZbGm.frame.contextMenuFrame, "cursor", 0 , 0, "MENU");
			end

		end
	end
end

function ZbGm:NewMemberScrollTable_OnClick(self, line)
	local lineplusoffset = line + FauxScrollFrame_GetOffset(ZbGm.newMemberFrame.scrollBar);
	local numCharacters = #ZbGm.newMemberFrame.data
	if lineplusoffset <= numCharacters then

		if ZbGm.newMemberFrame.selectedIndex then
			-- Unhighlight all
			for line=1,#ZbGm.newMemberFrame.table do
				_G["zbGmNewMemberTableItem"..line]:UnlockHighlight();
			end
		end
		ZbGm.newMemberFrame.selectedIndex = lineplusoffset;
		self:LockHighlight();
		ZbGm.newMemberFrame.setMainBtn:Enable();

		-- Disable Set Alt button if another toon is a child of this one, can only be "Set Main"
		-- Or Set Main's date.
		--print(ZbGm.newMemberFrame.selectedIndex);
		local toonNode = ZbGm.ZRoster:GetCharacter(ZbGm.newMemberFrame.data[ZbGm.newMemberFrame.selectedIndex]);
		if toonNode.childNode or not ZbGm.frame.selectedIndex then
			ZbGm.newMemberFrame.setAltBtn:Disable();
		else
			ZbGm.newMemberFrame.setAltBtn:Enable();
		end
	end
	PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
end

function ZbGm:MemberScrollTable_OnClick(self, line)
	local lineplusoffset = line + FauxScrollFrame_GetOffset(ZbGm.memberframe.scrollBar);
	if lineplusoffset <= ZbGm.memberframe.numberOfCharacters then
		if not ZbGm.memberframe.selectedList[lineplusoffset] then
			ZbGm.memberframe.selectedList[lineplusoffset] = true;
			self:LockHighlight()
			PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
		else
			ZbGm.memberframe.selectedList[lineplusoffset] = false;
			self:UnlockHighlight()
			PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
		end
	end
end

function ZbGm:MemberScrollTableClearSelection()
	--print(ZbGm.memberframe.main)

	if ZbGm.memberframe.main then
		--ZbGm.memberframe.selected = nil
		for line=1,#ZbGm.memberframe.table do
			--print (type(ZbGm.memberframe.table[line]));
			--ZbGm.memberframe.table[line]:UnlockHightlight();
			_G["zbGuildManagerMemberFrameTableItem"..line]:UnlockHighlight()
		end

		for i=1, #ZbGm.memberframe.selectedList do
			ZbGm.memberframe.selectedList[i] = false;
		end
	end
end

function ZbGm:UpdateMemberViewTable()
	local line;
	local lineplusoffset; -- an index into our data calculated from the scroll offset
	--local toon = ZbGm.roster[ZbGm.memberframe.main]

	-- Was removed, hide window
	--print ("Get Char for " .. ZbGm.memberframe.main);

	local character = ZbGm.ZRoster:GetCharacter(ZbGm.memberframe.main);
	if character == nil then
		ZbGm:HideMemberFrame()
	end

	local numCharacters = ZbGm.ZRoster:GetNumAlts(character);
	ZbGm:Debug(string.format("%s has %d characters.", character.full, numCharacters));

	FauxScrollFrame_Update(ZbGm.memberframe.scrollBar, numCharacters, #ZbGm.memberframe.table, 20)
	for line=1,#ZbGm.memberframe.table do
		lineplusoffset = line + FauxScrollFrame_GetOffset(ZbGm.memberframe.scrollBar);
		if lineplusoffset <= numCharacters then
			local altToon = ZbGm.ZRoster:GetCharacter(ZbGm.memberframe.characterList[lineplusoffset])
			local nameElement = "zbGuildManagerMemberFrameTableItem"..line.."Name"

			if altToon.parentNode or altToon.joindate == 0 then
				_G["zbGuildManagerMemberFrameTableItem"..line.."LeadIcon"]:Hide()
			else
				_G["zbGuildManagerMemberFrameTableItem"..line.."LeadIcon"]:Show()
			end

			_G[nameElement]:SetText(altToon.name);

			if ZbGm.RAID_CLASS_COLORS[altToon.class] then
				_G[nameElement]:SetTextColor(ZbGm.RAID_CLASS_COLORS[altToon.class].r, ZbGm.RAID_CLASS_COLORS[altToon.class].g, ZbGm.RAID_CLASS_COLORS[altToon.class].b)
			else
				_G[nameElement]:SetTextColor(0.25, 0.25, 0.25)
			end
			_G[nameElement]:SetText(altToon.name);
			_G["zbGuildManagerMemberFrameTableItem"..line.."Rank"]:SetText(altToon.rank);
			_G["zbGuildManagerMemberFrameTableItem"..line]:Show();

			if ZbGm.memberframe.selectedList[lineplusoffset] then
				_G["zbGuildManagerMemberFrameTableItem"..line]:LockHighlight()
			else
				_G["zbGuildManagerMemberFrameTableItem"..line]:UnlockHighlight()
			end
		else
			_G["zbGuildManagerMemberFrameTableItem"..line]:Hide();
		end
	end
end

function ZbGm:UpdateNewMemberViewTable()
	local line;
	local lineplusoffset; -- an index into our data calculated from the scroll offset

	local numCharacters = #ZbGm.newMemberFrame.data

	FauxScrollFrame_Update(ZbGm.newMemberFrame.scrollBar, numCharacters, #ZbGm.newMemberFrame.table, 20)
	for line=1,#ZbGm.newMemberFrame.table do
		lineplusoffset = line + FauxScrollFrame_GetOffset(ZbGm.newMemberFrame.scrollBar);
		if lineplusoffset <= numCharacters then
			local altToon = ZbGm.ZRoster:GetCharacter(ZbGm.newMemberFrame.data[lineplusoffset])
			local nameElement = "zbGmNewMemberTableItem"..line.."Name"

			if mainChar ~= altToon then
				_G["zbGmNewMemberTableItem"..line.."LeadIcon"]:Hide()
			else
				_G["zbGmNewMemberTableItem"..line.."LeadIcon"]:Show()
			end

			_G[nameElement]:SetText(altToon.name);

			if ZbGm.RAID_CLASS_COLORS[altToon.class] then
				_G[nameElement]:SetTextColor(ZbGm.RAID_CLASS_COLORS[altToon.class].r, ZbGm.RAID_CLASS_COLORS[altToon.class].g, ZbGm.RAID_CLASS_COLORS[altToon.class].b)
			else
				_G[nameElement]:SetTextColor(0.25, 0.25, 0.25)
			end
			_G[nameElement]:SetText(altToon.name);
			_G["zbGmNewMemberTableItem"..line.."Rank"]:SetText(altToon.rank);
			_G["zbGmNewMemberTableItem"..line]:Show();

			if altToon.selected then
				_G["zbGmNewMemberTableItem"..line]:LockHighlight()
			else
				_G["zbGmNewMemberTableItem"..line]:UnlockHighlight()
			end
		else
			_G["zbGmNewMemberTableItem"..line]:Hide();
		end
	end
end

function ZbGm:ToggleVisibility()
	if not self.frame then
		ZbGm:CreateMainFrame()

		-- Delay and load if first time.
		C_Timer.After(2, ZbGm.QueuedReload)
	end

	if self.frame and self.frame:IsShown() then
		ZbGm.frame:UnregisterEvent("GUILD_ROSTER_UPDATE");
		self.frame:Hide()
	else
		PlaySound(SOUNDKIT.IG_MAINMENU_OPEN);
		ZbGm.frame:RegisterEvent("GUILD_ROSTER_UPDATE");
		GuildRoster();
		self.frame:Show();
		--[[
		if ZbGmOptions then
			print(ZbGmOptions.MainFrameX)
			print(ZbGmOptions.MainFrameY)
			self.frame:SetPoint("TOPLEFT", UIParent, ZbGmOptions.MainFrameX, ZbGmOptions.MainFrameY-self.frame:GetHeight()/2)
		end
		--]]
	end
end

function ZbGm:ShowNewMemberFrame()
	if not self.newMemberFrame then
		ZbGm:CreateNewMemberFrame()
	end

	-- See if reason to show dialog.
	if ZbGm.ZRoster:HasUnassociated() then

		-- Configure the dialog with current unassociated characters.
		local unassoc = ZbGm.ZRoster:BuildUnassociatedList();
		ZbGm.newMemberFrame.data = unassoc;
		ZbGm.frame.unassocBtn.Glow:Stop();

		-- Clear selected and disable buttons, because no selected.
		ZbGm.newMemberFrame.selectedIndex = nil;
		ZbGm.newMemberFrame.setMainBtn:Disable();
		ZbGm.newMemberFrame.setAltBtn:Disable();

		-- Update the list of charactesr on the dialog.
		ZbGm:UpdateNewMemberViewTable();

		-- If not visible make dialog visible.
		if not self.newMemberFrame:IsVisible() then
			self.newMemberFrame:SetPoint("TOPRIGHT", ZbGm.frame, "TOPLEFT", 1, -15)
			PlaySound(SOUNDKIT.IG_MAINMENU_OPEN);
			self.newMemberFrame:Show()
		end
	else
		ZbGm.frame.unassocBtn:Disable();
	end
end

function ZbGm:ShowMemberFrame()
	if not self.memberframe then
		ZbGm:CreateMemberFrame()
	end
	-- reset location
	self.memberframe:SetPoint("TOPLEFT", self.frame, "TOPRIGHT", 1, -15)

	-- Player softer sound if already visible.
	if self.memberframe:IsVisible() then
		PlaySound(SOUNDKIT.U_CHAT_SCROLL_BUTTON);
	else
		PlaySound(SOUNDKIT.IG_MAINMENU_OPEN);
	end

	self.memberframe:Show()
end

function ZbGm:ShowExportFrame()
	if not self.exportframe then
		ZbGm:CreateExportFrame();
	end
	-- reset location
	self.exportframe:SetPoint("CENTER");
	PlaySound(SOUNDKIT.IG_MAINMENU_OPEN);

	ZbGm.exportframe.exportText:SetText(ZbGm.ZRoster:ExportCSV());

	self.exportframe:Show()
end

function ZbGm:HideMemberFrame()
	if self.memberframe then
		PlaySound(SOUNDKIT.IG_MAINMENU_CLOSE);
		self.memberframe:Hide()
	end
end

function ZbGm:HideNewMemberFrame()
	if self.newMemberFrame then
		PlaySound(SOUNDKIT.IG_MAINMENU_CLOSE);
		self.newMemberFrame:Hide()
	end
end

function ZbGm:OnBarEnter(self, motion)
	local totalCount = ZbGm.ZRoster.ActiveCount + ZbGm.ZRoster.SemiActiveCount + ZbGm.ZRoster.InactiveCount + ZbGm.ZRoster.AbsentCount;

	-- Setup the tool tip and display it.
	GameTooltip:SetOwner(self, "ANCHOR_LEFT");
	GameTooltip:SetText(L["Guild Activity"]);
    GameTooltip:AddDoubleLine(L["Active"], string.format("%d (%0.1f%%)", ZbGm.ZRoster.ActiveCount, ZbGm.ZRoster.ActiveCount/totalCount*100));
	GameTooltip:AddDoubleLine(L["Semi"], string.format("%d (%0.1f%%)", ZbGm.ZRoster.SemiActiveCount, ZbGm.ZRoster.SemiActiveCount/totalCount*100));
	GameTooltip:AddDoubleLine(L["Inactive"], string.format("%d (%0.1f%%)", ZbGm.ZRoster.InactiveCount, ZbGm.ZRoster.InactiveCount/totalCount*100));
	GameTooltip:AddDoubleLine(L["Absent"], string.format("%d (%0.1f%%)", ZbGm.ZRoster.AbsentCount, ZbGm.ZRoster.AbsentCount/totalCount*100));
	GameTooltip:Show();
end

function ZbGm:OnBarLeave(self, motion)
	GameTooltip:Hide();
end

--
-- ZbGm:OnEnter - Handles Tooltip display.
--
function ZbGm:OnEnter(self, motion)
	-- Locate which row is displayed in the main window.
	local lineplusoffset = self.row + FauxScrollFrame_GetOffset(ZbGm.frame.scrollBar);

	-- Load the character from that line.
	local toonNameIndex = ZbGm.ZRoster:GetFilteredCharacter(lineplusoffset);

	-- Setup the tool tip and display it.
	GameTooltip:SetOwner(self, "ANCHOR_LEFT");
	GameTooltip:SetText(string.format("%sNote: %s%s",c.GOLD, c.GRAY,toonNameIndex.note));
	if CanViewOfficerNote() then
		GameTooltip:AddLine(string.format("%sONote: %s%s",c.GOLD, c.GRAY,toonNameIndex.onote));
	end
	GameTooltip:Show()
end

--
-- ZbGm:OnLeave - Handles Tooltip hide.
--
function ZbGm:OnLeave(self, motion)
	GameTooltip:Hide()
end

--
-- ZbGm:CreateMainFrame - Creates the main window.
--
function ZbGm:CreateMainFrame()
	ZbGm.loadedTime = 0;  -- indicate data never loaded.

	-- Created Saved Variables.
	if not ZbGmOptions then
		ZbGmOptions = {};
	end
	if not ZbGmHistoryDB then
		ZbGmHistoryDB = {};
		ZbGmHistoryDB.MemberJoinDates = {};
	end

	local mf = CreateFrame("Frame", "zbGuildManagerMainFrame", UIParent, "zbGMPanel");
	self.frame = mf
	self.frame.statuswidth = 532;
	--mf:SetFrameStrata("TOOLTIP")
	mf:SetMovable(true)
	mf:SetClampedToScreen(true)
	mf:Hide()
	mf:SetToplevel(true)
	mf:SetSize(555, 413);
	mf:SetPoint("CENTER")
	mf:RegisterForDrag("LeftButton")

	mf.totalMembers = 0;

	mf:SetScript("OnEvent", ZbGm.OnEvent)
	mf:SetScript("OnHide", function(self, event)
		-- Hide Child Frames if main frame is hidden.
		PlaySound(SOUNDKIT.IG_MAINMENU_CLOSE);
		ZbGm:HideMemberFrame()
		ZbGm:HideNewMemberFrame()
	end)

	--local nameSortBtn = ZbGm:CreateSortButton("Name", mf, 125, "TOPLEFT", mf, 10, -30);
	--local sortByRealmButton = ZbGm:CreateSortButton("Rank", mf, 90, nameSortBtn, -2, 0);

	--[[local background = mf:CreateTexture("ZbGMTexture", "ARTWORK");
	background:SetSize(125,25);
	background:SetTexture("Interface\\FrameGeneral\\UI-Background-Rock");
	background:SetPoint("TOPLEFT", mf, 10, -28);
	background:SetPoint("BOTTOMRIGHT", mf, -6, 345);
	--]]

	mf.contextMenuFrame = CreateFrame("Frame", "ZgBmContextMenuFrame", UIParent, "UIDropDownMenuTemplate")



	if CanEditOfficerNote() then
		ZbGm.contextMenu = {
			{ text = L["Character"], isTitle = true},
			{ text = L["Copy Name"], hasArrow = false, func = ZbGm.CopyCharacterName },
			{ text = L["Edit Officer Note"], func = ZbGm.EditOfficerNote },
		}
	else
		ZbGm.contextMenu = {
			{ text = L["Character"], isTitle = true},
			{ text = L["Copy Name"], hasArrow = false, func = ZbGm.CopyCharacterName },
		}
	end

	mf.activeStatusBar = CreateFrame("StatusBar", nil, mf)
	mf.activeStatusBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	mf.activeStatusBar:GetStatusBarTexture():SetHorizTile(false)
	mf.activeStatusBar:SetMinMaxValues(0, 100)
	mf.activeStatusBar:SetValue(100)
	mf.activeStatusBar:SetWidth(1);
	mf.activeStatusBar:SetHeight(10)
	mf.activeStatusBar:SetPoint("TOPLEFT",mf,14,-30);
	mf.activeStatusBar:SetStatusBarColor(0,1,0)

	mf.activeStatusBar:SetScript("OnEnter", function(self, motion)
		ZbGm:OnBarEnter(mf.activeStatusBar, motion);
	end)
	mf.activeStatusBar:SetScript("OnLeave", function(self, motion)
		ZbGm:OnBarLeave(mf.activeStatusBar, motion);
	end)


	mf.lessActiveStatusBar = CreateFrame("StatusBar", nil, mf)
	mf.lessActiveStatusBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	mf.lessActiveStatusBar:GetStatusBarTexture():SetHorizTile(false)
	mf.lessActiveStatusBar:SetMinMaxValues(0, 100)
	mf.lessActiveStatusBar:SetValue(100)
	mf.lessActiveStatusBar:SetWidth(1);
	mf.lessActiveStatusBar:SetHeight(10)
	mf.lessActiveStatusBar:SetPoint("TOPLEFT",mf.activeStatusBar,"TOPRIGHT",0,0);
	mf.lessActiveStatusBar:SetStatusBarColor(1,1,0);

	mf.lessActiveStatusBar:SetScript("OnEnter", function(self, motion)
		ZbGm:OnBarEnter(mf.lessActiveStatusBar, motion);
	end)
	mf.lessActiveStatusBar:SetScript("OnLeave", function(self, motion)
		ZbGm:OnBarLeave(mf.lessActiveStatusBar, motion);
	end)

	mf.InactiveStatusBar = CreateFrame("StatusBar", nil, mf);
	mf.InactiveStatusBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar");
	mf.InactiveStatusBar:GetStatusBarTexture():SetHorizTile(false);
	mf.InactiveStatusBar:SetMinMaxValues(0, 100);
	mf.InactiveStatusBar:SetValue(100);
	mf.InactiveStatusBar:SetWidth(1);
	mf.InactiveStatusBar:SetHeight(10);
	mf.InactiveStatusBar:SetPoint("TOPLEFT",mf.lessActiveStatusBar,"TOPRIGHT",0,0);
	mf.InactiveStatusBar:SetStatusBarColor(1,0.7,0);

	mf.InactiveStatusBar:SetScript("OnEnter", function(self, motion)
		ZbGm:OnBarEnter(mf.InactiveStatusBar, motion);
	end)
	mf.InactiveStatusBar:SetScript("OnLeave", function(self, motion)
		ZbGm:OnBarLeave(mf.InactiveStatusBar, motion);
	end)

	mf.AbsentStatusBar = CreateFrame("StatusBar", nil, mf);
	mf.AbsentStatusBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar");
	mf.AbsentStatusBar:GetStatusBarTexture():SetHorizTile(false);
	mf.AbsentStatusBar:SetMinMaxValues(0, 100);
	mf.AbsentStatusBar:SetValue(100);
	mf.AbsentStatusBar:SetWidth(1);
	mf.AbsentStatusBar:SetHeight(10);
	mf.AbsentStatusBar:SetPoint("TOPLEFT",mf.InactiveStatusBar,"TOPRIGHT",0,0);
	mf.AbsentStatusBar:SetStatusBarColor(1,0,0);

	mf.AbsentStatusBar:SetScript("OnEnter", function(self, motion)
		ZbGm:OnBarEnter(mf.AbsentStatusBar, motion);
	end)
	mf.AbsentStatusBar:SetScript("OnLeave", function(self, motion)
		ZbGm:OnBarLeave(mf.AbsentStatusBar, motion);
	end)

	local nameSortBtn = CreateFrame("Button", "zbGuildManagerMainFrameNameSortButton", mf, "zbGMSortButtonTemplate")
	nameSortBtn:SetSize(125,25)
	nameSortBtn:SetPoint("TOPLEFT", mf, 10, -43);
	nameSortBtn:SetText(L["Name"])
	nameSortBtn:SetScript("OnClick", function(self, event)
		ZbGm:SortMainBy("Name")
	end)

	local sortByRealmButton = CreateFrame("Button", "zbGuildManagerMainFrameRankSortButton", mf, "zbGMSortButtonTemplate")
	sortByRealmButton:SetSize(90,25)
	sortByRealmButton:SetPoint("TOPLEFT", nameSortBtn, "TOPRIGHT", -2, 0)
	sortByRealmButton:SetText(L["Realm"])
	sortByRealmButton:SetScript("OnClick", function(self, event)
		ZbGm:SortMainBy("Realm")
	end)

	local sortByRankButton = CreateFrame("Button", "zbGuildManagerMainFrameSeniorSortButton", mf, "zbGMSortButtonTemplate")
	sortByRankButton:SetSize(110,25)
	sortByRankButton:SetPoint("TOPLEFT", sortByRealmButton, "TOPRIGHT", -2, 0)
	sortByRankButton:SetText(L["Rank"])
	sortByRankButton:SetScript("OnClick", function(self, event)
		ZbGm:SortMainBy("Rank")
	end)

	local sortByJoinButton = CreateFrame("Button", "zbGuildManagerMainFrameJoinSortButton", mf, "zbGMSortButtonTemplate")
	sortByJoinButton:SetSize(75,25)
	sortByJoinButton:SetPoint("TOPLEFT", sortByRankButton, "TOPRIGHT", -2, 0)
	sortByJoinButton:SetText(L["Joined"])
	sortByJoinButton:SetScript("OnClick", function(self, event)
		ZbGm:SortMainBy("Join")
	end)


	local sortByLastOnButton = CreateFrame("Button", "zbGuildManagerMainFrameLastOnSortButton", mf, "zbGMSortButtonTemplate")
	sortByLastOnButton:SetSize(75,25)
	sortByLastOnButton:SetPoint("TOPLEFT", sortByJoinButton, "TOPRIGHT", -2, 0)
	sortByLastOnButton:SetText(L["Last On"])
	sortByLastOnButton:SetScript("OnClick", function(self, event)
		ZbGm:SortMainBy("Log")
	end)

	local sortByAltNumButton = CreateFrame("Button", "zbGuildManagerMainFrameAltNumSortButton", mf, "zbGMSortButtonTemplate")
	sortByAltNumButton:SetSize(56,25)
	sortByAltNumButton:SetPoint("TOPLEFT", sortByLastOnButton, "TOPRIGHT", -2, 0)
	sortByAltNumButton:SetText(L["# Alts"])
	sortByAltNumButton:SetScript("OnClick", function(self, event)
		ZbGm:SortMainBy("Alts")
	end)

	-- Scroll Frame
	mf.scrollBar = CreateFrame("ScrollFrame","zbGuildManagerMainFrameScrollBar",mf,"FauxScrollFrameTemplate");
	mf.scrollBar:SetPoint("TOPLEFT", nameSortBtn, "BOTTOMLEFT", 0, -1);
	mf.scrollBar:SetPoint("BOTTOMRIGHT", mf, -30, 40);

	mf.table = {}

	for i = 1, 15 do
		mf.table[i] = CreateFrame("Button", "zbGuildManagerMainFrameTableItem" .. i, mf, "zbGMTableButtonTemplate");
		mf.table[i]:SetPoint("TOPLEFT", nameSortBtn, "BOTTOMLEFT", 4, (i-1)*-20-6);

		-- Button's only respond to LeftButton, unless you do this.
		mf.table[i]:RegisterForClicks("AnyDown");

		mf.table[i]:SetScript("OnClick", function(self, button)
			ZbGm:ScrollTable_OnClick(self, i, button);
		end)
		mf.table[i].row = i;

		mf.table[i]:SetScript("OnEnter", function(self, motion)
			ZbGm:OnEnter(self, motion);
		end)
		mf.table[i]:SetScript("OnLeave", function(self, motion)
			ZbGm:OnLeave(self, motion);
		end)
	end

	-- make closeable with ESC
	tinsert(UISpecialFrames, "zbGuildManagerMainFrame")

	local titleButton = CreateFrame("Frame", nil, mf)
	titleButton:SetSize(555,28)
	titleButton:SetPoint("TOPLEFT")
	titleButton:EnableMouse(true)
	titleButton:RegisterForDrag("LeftButton")
	mf.titleButton = titleButton


	titleButton:SetScript("OnDragStart", function(self)
		mf.moving = true
		mf:StartMoving()
	end)
	titleButton:SetScript("OnDragStop", function(self)
		mf.moving = nil
		ZbGmOptions.MainFrameX = ZbGm.frame:GetLeft();
		ZbGmOptions.MainFrameY = ZbGm.frame:GetTop();
		--print("New y" .. ZbGmOptions.MainFrameY)
		mf:StopMovingOrSizing()
	end)

	mf.scrollBar:SetScript("OnShow", function(self)
		ZbGm:UpdateMainViewTable()
	end)

	mf.scrollBar:SetScript("OnVerticalScroll", function(self,offset)
		FauxScrollFrame_OnVerticalScroll(self,offset,20,ZbGm.UpdateMainViewTable)
	end)

	mf.resultLabel = mf:CreateFontString("zbGuildManagerMainFrameResultsLabel", "OVERLAY", "GameFontNormal")
	mf.resultLabel:SetPoint("BOTTOMRIGHT", -100, 18)
	mf.resultLabel:SetText(L["Total"])

	mf.searchTextField = CreateFrame("EditBox", "zbGuildManagerMainFrameSearch", mf, "SearchBoxTemplate")
	mf.searchTextField:SetSize(150, 20);
	mf.searchTextField:SetPoint("BOTTOMLEFT", 25, 16)
	mf.searchTextField:SetAutoFocus(false)

	mf.mainsCheck = CreateFrame("CheckButton", "zbGuildMgrMainsCheckBtn", mf, "UICheckButtonTemplate");
	mf.mainsCheck:SetPoint("LEFT", mf.searchTextField, "RIGHT", 7, -2);
	mf.mainsCheck:SetSize(28,28);
	_G[mf.mainsCheck:GetName() .. "Text"]:SetText(L["Mains/All"]);
	ZbGm.frame.mainsCheck:SetChecked(ZbGmOptions.filterMains);

	mf.resultValueLabel = mf:CreateFontString("zbGuildManagerMainFrameResultsLabelValue", "OVERLAY", "GameFontHighlight");
	mf.resultValueLabel:SetPoint("BOTTOMRIGHT", -30, 18);
	mf.resultValueLabel:SetText("0");

	mf.exportBtn = CreateFrame("Button", "zbGmExportBtn", mf, "UIPanelButtonTemplate");
	mf.exportBtn:SetSize(70,25);
	mf.exportBtn:SetText(L["Export"]);
	mf.exportBtn:SetPoint("RIGHT", mf.resultLabel,"LEFT", -10, 0);
	mf.exportBtn:SetScript("OnClick", function(self, event)
		ZbGm:ShowExportFrame();
	end)

	mf.unassocBtn = CreateFrame("Button", "zbGmUnassocBtn", mf, "GlowingPanelButtonTemplate");
	mf.unassocBtn:SetSize(75,25);
	mf.unassocBtn:SetText("Unassoc");
	mf.unassocBtn:SetPoint("RIGHT", mf.exportBtn,"LEFT", -3, 0);
	mf.unassocBtn:SetScript("OnClick", function(self, event)
		ZbGm:ShowNewMemberFrame();
	end)
	mf.unassocBtn:Disable();


	-- TITLE BAR TEXT
	mf.Title:SetText("zbGuildManager (" .. GetAddOnMetadata("zbGuildManager", "Version") .. ")" );

	mf.searchTextField:SetScript("OnChar", function(self, text)
		ZbGm.ZRoster:BuildFilteredIndex(mf.searchTextField:GetText(), ZbGm.frame.mainsCheck:GetChecked())
		ZbGm:UpdateMainViewTable()
	end)
	mf.searchTextField:SetScript("OnEditFocusLost", function(self, text)
		ZbGm.ZRoster:BuildFilteredIndex(mf.searchTextField:GetText(), ZbGm.frame.mainsCheck:GetChecked())
		ZbGm:UpdateMainViewTable()
	end)

	-- Capture the "X" button on the search field to "clear" the search.
	_G["zbGuildManagerMainFrameSearchClearButton"]:SetScript("OnClick",function(self, text)
		-- Since we overrode the original onclick, call the method it did to clear the field.
		SearchBoxTemplateClearButton_OnClick(self,text)
		ZbGm.ZRoster:BuildFilteredIndex(mf.searchTextField:GetText(), ZbGm.frame.mainsCheck:GetChecked())
		ZbGm:UpdateMainViewTable()
	end)

	mf.mainsCheck:SetScript("OnClick", function(self, text)
		ZbGm.ZRoster:BuildFilteredIndex(mf.searchTextField:GetText(), ZbGm.frame.mainsCheck:GetChecked());
		ZbGmOptions.filterMains = ZbGm.frame.mainsCheck:GetChecked();  -- saves for reload settings.

		-- Clear selected
		if ZbGm.frame.selectedIndex then
			ZbGm.frame.selectedIndex = nil;
			-- Unhighlight all
			for line=1,#ZbGm.frame.table do
				ZbGm.frame.table[line]:UnlockHighlight();
			end
		end

		ZbGm:UpdateMainViewTable();
	end)

	ZbGm:CreateMemberFrame()
end

function ZbGm:CreateMemberFrame()
	local mf = CreateFrame("Frame", "zbGuildManagerMemberFrame", UIParent, "UIPanelDialogTemplate")
	mf:SetFrameStrata("DIALOG")
	mf:SetMovable(true)
	mf:SetClampedToScreen(true)
	mf:Hide()
	mf:SetToplevel(true)
	mf:SetSize(320, 350)
	mf:SetPoint("TOPLEFT", self.frame, "TOPRIGHT", 1, -15)
	mf:RegisterForDrag("LeftButton")

	-- Joined: 01-01-01 (5yrs)
	mf.joinedLabel = mf:CreateFontString("zbGmPlayerJoinedLabel", "OVERLAY", "GameFontNormalSmall")
	mf.joinedLabel:SetPoint("TOPLEFT", 15, -35)
	mf.joinedLabel:SetText(L["Joined"] .. ":")

	mf.joinedText = mf:CreateFontString("zbGmPlayerJoinedLabel", "OVERLAY", "GameFontHighlight")
	mf.joinedText:SetPoint("BOTTOMLEFT", mf.joinedLabel, "BOTTOMRIGHT", 5, 0)
	mf.joinedText:SetText("01-01-01 (5 yrs)")

	-- Last On: 01-01-01 (5yrs)
	mf.lastOnLabel = mf:CreateFontString("zbGmPlayerLastOnLabel", "OVERLAY", "GameFontNormalSmall")
	mf.lastOnLabel:SetPoint("TOPLEFT", mf.joinedLabel, "BOTTOMLEFT", 0, -5)
	mf.lastOnLabel:SetText(L["Last On"] .. ":")

	mf.lastOnText = mf:CreateFontString("zbGmPlayerLastOnLabel", "OVERLAY", "GameFontHighlight")
	mf.lastOnText:SetPoint("BOTTOMLEFT", mf.lastOnLabel, "BOTTOMRIGHT", 5, 0)
	mf.lastOnText:SetText("00-00-00 (5 yrs)")

	mf.selectAllButton = CreateFrame("Button", "zbGmPlayerLastOnLabelSelectAllButton", mf, "UIPanelButtonTemplate");
	mf.selectAllButton:SetSize(100,25);
	mf.selectAllButton:SetText(L["Select All"]);
	mf.selectAllButton:SetPoint("TOPRIGHT", mf, -15, -34);
	mf.selectAllButton:SetScript("OnClick", function(self, event)
		ZbGm:SelectAllCharacters();
	end)

	local sortByNameButton = CreateFrame("Button", "zbGuildManagerMemberFrameSortButton", mf, "zbGMSortButtonTemplate")
	sortByNameButton:SetSize(125,19)
	sortByNameButton:SetPoint("TOPLEFT", mf.lastOnLabel, "BOTTOMLEFT", -3, -5)
	sortByNameButton:SetText(L["Name"])

	local sortByRankButton = CreateFrame("Button", "zbGuildManagerMemberFrameRankSortButton", mf, "zbGMSortButtonTemplate")
	sortByRankButton:SetSize(125,19)
	sortByRankButton:SetPoint("TOPLEFT", sortByNameButton, "TOPRIGHT", -2, 0)
	sortByRankButton:SetText(L["Rank"])

	mf.table = {};			     -- List of buttons on the window.
	mf.characterList = {};       -- List of character indexes to display.
	mf.selectedList = {};        -- List of which are selected.
	mf.numberOfCharacters = 0;   -- Number of active elements in the array of chars/selected.

	for i = 1, 9 do
		mf.table[i] = CreateFrame("Button", "zbGuildManagerMemberFrameTableItem" .. i, mf, "zbGMAltTableButtonTemplate")
		mf.table[i]:SetPoint("TOPLEFT", sortByNameButton, "BOTTOMLEFT", 4, (i-1)*-20-6)
		mf.table[i]:SetScript("OnClick", function(self)
			--print("handler " .. i)
			ZbGm:MemberScrollTable_OnClick(self, i)
		end)
	end

	-- Scroll Frame
	mf.scrollBar = CreateFrame("ScrollFrame","zbGuildManagerMemberFrameScrollBar",mf,"FauxScrollFrameTemplate")
	mf.scrollBar:SetPoint("TOPLEFT", sortByNameButton, "BOTTOMRIGHT", 0, -1)
	mf.scrollBar:SetPoint("BOTTOMRIGHT", mf, -30, 76)

	mf.scrollBar:SetScript("OnVerticalScroll", function(self,offset)
		FauxScrollFrame_OnVerticalScroll(self,offset,20,ZbGm.UpdateMemberViewTable)
	end)

	-- Create the dropdown, and configure its appearance
	local dropDown = CreateFrame("Frame", "zbGuildManagerMemberFrameRankDropdown", mf, "UIDropDownMenuTemplate")
	dropDown:SetPoint("BOTTOMLEFT", mf, 0, 5)
	UIDropDownMenu_SetWidth(dropDown, 135)
	UIDropDownMenu_SetText(dropDown, "Rank")
	UIDropDownMenu_Initialize(dropDown, ZbGm.GuildRankDropDownInit)

	-- Set Main Button
	mf.setMainBtn = CreateFrame("Button", "zbGmPlayerSetMainBtn", mf, "UIPanelButtonTemplate")
	mf.setMainBtn:SetSize(92,25)
	mf.setMainBtn:SetText(L["Set Main"])
	mf.setMainBtn:SetPoint("BOTTOMLEFT", dropDown, "TOPLEFT", 15, 2)
	if CanEditPublicNote() then
		mf.setMainBtn:SetScript("OnClick", function(self, event)
			ZbGm:SwapMain()
		end)
	else
		mf.setMainBtn:Disable()
	end

	-- Set Rank Button
	mf.setRankBtn = CreateFrame("Button", "zbGmPlayerSetRankBtn", mf, "UIPanelButtonTemplate")
	mf.setRankBtn:SetSize(92,25)
	mf.setRankBtn:SetText(L["Set Rank"])
	mf.setRankBtn:SetPoint("BOTTOMRIGHT", mf, -20, 12)
	if CanGuildPromote() or CanGuildDemote() then
		mf.setRankBtn:SetScript("OnClick", function(self, event)
			ZbGm:ApplyNewRank()
		end)
	else
		mf.setRankBtn:Disable()
	end

	mf.setRankBtn:Disable()

	
	-- Dissociate Button
	mf.dissociateBtn = CreateFrame("Button", "zbGmPlayerDissociateBtn", mf, "UIPanelButtonTemplate")
	mf.dissociateBtn:SetSize(92,25)
	mf.dissociateBtn:SetText(L["Dissociate"])
	mf.dissociateBtn:SetPoint("TOPLEFT", mf.setMainBtn, "TOPRIGHT", 5, 0)
	if CanEditPublicNote() then
		mf.dissociateBtn:SetScript("OnClick", function(self, event)
			ZbGm:DissociateSelected()
		end)
	else
		mf.dissociateBtn:Disable()
	end
	--mf.dissociateBtn:Disable()

	-- Kick Button
	mf.kickBtn = CreateFrame("Button", "zbGmPlayerKickBtn", mf, "UIPanelButtonTemplate")
	mf.kickBtn:SetSize(100,25)
	mf.kickBtn:SetText(L["Remove"])
	mf.kickBtn:SetPoint("TOPLEFT", mf.dissociateBtn, "TOPRIGHT", 5, 0)
	if CanGuildRemove() then
		mf.kickBtn:SetScript("OnClick", function(self, event)
			ZbGm:ConfirmRemove()
		end)
	else
		mf.kickBtn:Disable()
	end

	mf.kickBtn:Disable()

	ZbGm.memberframe       = mf
	ZbGm.memberframe.rankDropdown = dropDown

	-- FAKE DATA
	--ZbGmHistoryDB.MemberJoinDates["Kurstoon-KulTiras"] = {join=_DateFromString("01-01-08"), update=0};

end

function ZbGm:CreateNewMemberFrame()
	local mf = CreateFrame("Frame", "zbGmNewMemberFrame", UIParent, "UIPanelDialogTemplate")
	mf:SetFrameStrata("DIALOG")
	mf:SetMovable(true)
	mf:SetClampedToScreen(true)
	mf:Hide()
	mf:SetToplevel(true)
	mf:SetSize(320, 350)
	mf:SetPoint("TOPRIGHT", self.frame, "TOPLEFT", 1, -15)
	mf:RegisterForDrag("LeftButton")

	local sortByNameButton = CreateFrame("Button", "zbGmNewMemberNameSortButton", mf, "zbGMSortButtonTemplate")
	sortByNameButton:SetSize(125,19)
	sortByNameButton:SetPoint("TOPLEFT", mf, 3, -35)
	sortByNameButton:SetText(L["Name"])

	local sortByRankButton = CreateFrame("Button", "zbGmNewMemberRankSortButton", mf, "zbGMSortButtonTemplate")
	sortByRankButton:SetSize(125,19)
	sortByRankButton:SetPoint("TOPLEFT", sortByNameButton, "TOPRIGHT", -2, 0)
	sortByRankButton:SetText(L["Rank"])

	mf.table = {}

	for i = 1, 9 do
		mf.table[i] = CreateFrame("Button", "zbGmNewMemberTableItem" .. i, mf, "zbGMAltTableButtonTemplate")
		mf.table[i]:SetPoint("TOPLEFT", sortByNameButton, "BOTTOMLEFT", 4, (i-1)*-20-6)
		mf.table[i]:SetScript("OnClick", function(self)
			--print("handler " .. i)
			ZbGm:NewMemberScrollTable_OnClick(self, i)
		end)
	end

	-- Scroll Frame
	mf.scrollBar = CreateFrame("ScrollFrame","zbGmNewMemberScrollBar",mf,"FauxScrollFrameTemplate")
	mf.scrollBar:SetPoint("TOPLEFT", sortByNameButton, "BOTTOMRIGHT", 0, -1)
	mf.scrollBar:SetPoint("BOTTOMRIGHT", mf, -30, 76)

	mf.scrollBar:SetScript("OnVerticalScroll", function(self,offset)
		FauxScrollFrame_OnVerticalScroll(self,offset,20,ZbGm.UpdateNewMemberViewTable)
	end)

	-- Set Main Button
	mf.setMainBtn = CreateFrame("Button", "zbGmNewPlayerSetMainBtn", mf, "UIPanelButtonTemplate")
	mf.setMainBtn:SetSize(145,25)
	mf.setMainBtn:SetText(L["Set Main / Join Date"])
	mf.setMainBtn:SetPoint("BOTTOMLEFT", mf, "BOTTOMLEFT", 15, 15)
	if CanEditPublicNote() then
		mf.setMainBtn:SetScript("OnClick", function(self, event)
			ZbGm:MakeMain()
		end)
	else
		mf.setMainBtn:Disable()
	end
	--mf.setMainBtn:Disable()

	-- Set Alt Button
	mf.setAltBtn = CreateFrame("Button", "zbGmNewPlayerSetAltBtn", mf, "UIPanelButtonTemplate")
	mf.setAltBtn:SetSize(92,25)
	mf.setAltBtn:SetText(L["Set Alt"])
	mf.setAltBtn:SetPoint("TOPLEFT", mf.setMainBtn, "TOPRIGHT", 5, 0)
	if CanEditPublicNote() then
		mf.setAltBtn:SetScript("OnClick", function(self, event)
			ZbGm:SetNewAlt()
		end)
	else
		mf.setAltBtn:Disable()
	end

	mf.Title:SetText(L["Unassociated Characters"])
	ZbGm.newMemberFrame       = mf
end

function ZbGm:CreateExportFrame()
	local mf = CreateFrame("Frame", "zbGmExportFrame", UIParent, "DialogBoxFrame");
	mf:SetSize(450, 350);
	--mf:SetToplevel(true);

	mf.title = mf:CreateFontString("$parentTitle", "OVERLAY", "GameFontNormal") ;
	mf.title:SetPoint("TOP", 0, -12);
	mf.title:SetText(L["Export Data"]);

	local scrollFrame = CreateFrame("ScrollFrame", "$parentScrollFrame", mf, "UIPanelScrollFrameTemplate")
	scrollFrame:SetSize(400, 250)
	scrollFrame:SetPoint("TOPLEFT", 16, -32)
	scrollFrame.ScrollBar:SetPoint("TOPLEFT", scrollFrame, "TOPRIGHT", 6, -13)
	mf.scrollFrame = scrollFrame

	mf.exportText = CreateFrame("EditBox", "zbGmExportExportText", mf, "InputBoxTemplate");
	mf.exportText:SetMultiLine(true);
	mf.exportText:SetSize(400, 250)
	mf.exportText:SetPoint("TOPLEFT", mf, 15, -35);
	--mf.exportText:SetPoint("BOTTOMRIGHT", mf, -6, 345);
	mf.exportText:SetText("Text");
	--mf.exportText:Disable();

	scrollFrame:SetScrollChild(mf.exportText)

	ZbGm.exportframe = mf;
end

--
-- OPTIONS PANEL CODE
--

local function OptionsDateFormatDropdown_Init(self)
	local formats = {"MM-DD-YY", "MM/DD/YY", "YY-MM-DD"};

	-- Gets the current text in the DropDown frame
	local ddtext = UIDropDownMenu_GetText(zbGmOptionsFrame_FormatDateDropDown);

	local info = UIDropDownMenu_CreateInfo();

	for i=1, #formats do
		info.text = formats[i];

		-- Give it a tick instead of a radio button, and only tick when selected
		--
		info.isNotRadio = false;
		info.checked = (info.text == ddtext);

		-- Function to be called when the menu option is selected
		--
		info.func = function (self)
			-- Sets the text of the DropDown frame
			--
			UIDropDownMenu_SetText(zbGmOptionsFrame_FormatDateDropDown, self:GetText());
		end

		UIDropDownMenu_AddButton(info);
	end
end

function ZbGm:Variables_Loaded()
	-- Initialising the DropDown box
	UIDropDownMenu_Initialize(zbGmOptionsFrame_FormatDateDropDown, OptionsDateFormatDropdown_Init);
	ZbGm:OptionsCancelLoad();

	-- If minimap settings don't exist, create them.
	if not ZbGmOptions.minimap then
		ZbGm:Debug("Create minimap");
		ZbGmOptions.minimap = { hide = false };
	else
		ZbGm:Debug(ZbGmOptions.minimap);
	end

	icon:Register(ZBGMICON, zbGmDB, ZbGmOptions.minimap);

	--print ("after mini");
	--ZbGmOptions.minimap.hide = true;
	--print (ZbGmOptions.minimap.hide);

	if ZbGmOptions.minimap.hide then
		icon:Hide(ZBGMICON);
	else
		icon:Show(ZBGMICON);
	end
end

function ZbGm.OptionsOnEvent(self, event, ...)
	--print("event" .. event);
	ZbGm:Debug("OptionsOnEvent");

	if ( event == "ADDON_LOADED" ) then
		ZbGm:Variables_Loaded();
	end
	self:UnregisterEvent("ADDON_LOADED");
end

function ZbGm:OptionsClose()
	ZbGm:Debug("ZbGm: Options Close");
	ZbGmOptions.debug = zbGmOptionsFrame_Debug:GetChecked();
	ZbGmOptions.dateDisplayFormat = UIDropDownMenu_GetText(zbGmOptionsFrame_FormatDateDropDown);
	ZbGmOptions.minimap.hide = not zbGmOptionsFrame_Minibutton:GetChecked();

	if ZbGmOptions.minimap.hide then
		icon:Hide(ZBGMICON);
	else
		icon:Show(ZBGMICON);
	end
	--print (ZbGmOptions.debug);
end

function ZbGm:OptionsCancelLoad()
	--print("ZbGm: Options CancelLoad");
	if ZbGmOptions.debug then
		zbGmOptionsFrame_Debug:SetChecked(ZbGmOptions.debug);
	end

	if ZbGmOptions.minimap then
		zbGmOptionsFrame_Minibutton:SetChecked(not ZbGmOptions.minimap.hide);
	end

	if ZbGmOptions.dateDisplayFormat then
		UIDropDownMenu_SetText(zbGmOptionsFrame_FormatDateDropDown, ZbGmOptions.dateDisplayFormat);
	else
		UIDropDownMenu_SetText(zbGmOptionsFrame_FormatDateDropDown, "MM-DD-YY");
	end
end

-- The GUI OnLoad function.
--
function ZbGm:CreateOptionsGUI()
	-- If Options don't exist, create them.
	-- CANNOT call debug here because debug=true is not loaded yet.

	if not ZbGmOptions then
		ZbGmOptions = {};
	end

	local mf = CreateFrame("Frame", "zbGmOptionsFrame", nil, "zbGmOptionsTemplate");

	ZbGm.optionsPanel = mf;
	ZbGm.optionsPanel:SetScript("OnEvent", ZbGm.OptionsOnEvent);

	-- Tells add-on the data is loaded.
	ZbGm.optionsPanel:RegisterEvent("ADDON_LOADED");

	-- Set localized text.
	zbGmOptionsFrameFormatDate:SetText(L["Date Display Format"]);
    zbGmOptionsFrame_DebugText:SetText(L["Debug"]);
	zbGmOptionsFrame_MinibuttonText:SetText(L["Minimap Icon"]);

    mf.name = "ZbGuildManager";
    mf.okay = function (self) ZbGm:OptionsClose(); end;
    mf.cancel = function (self) ZbGm:OptionsCancelLoad();  end;
    InterfaceOptions_AddCategory(mf);
	--ZbGm:OptionsCancelLoad();
end

ZbGm:CreateOptionsGUI();
