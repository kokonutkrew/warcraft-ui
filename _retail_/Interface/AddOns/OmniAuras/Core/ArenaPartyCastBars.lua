--
-- Arena Party CastBars
--	Party raid frame cast bars.
--	Copyright 2024 Treebonker. All rights reserved.
--
-- Raid Frame module dependent
--

local E, L, C, G = select(2, ...):unpack()

local UnitIsUnit = UnitIsUnit
local modname = "ArenaPartyCastBars"
local module = CreateFrame("frame")
local aura = E.Aura
local db
local APC_POINT, APC_RELATIVEPOINT, APC_OFFSETX, APC_OFFSETY
local APC_ICON_OFFSET = 22

C[modname] = {
	preset = "TR",
	point = "TOPLEFT",
	relativePoint = "TOPRIGHT",
	offsetX = 0,
	offsetY = 0,
}

local function AddOptions()
	return {
		disabled = function(info)
			return info[2] and not E:GetModuleEnabled(modname)
		end,
		name = "|cff9146ff" .. L["Arena Party CastBars"],
		order = 900,
		type = "group",
		childGroups = "tab",
		get = function(info)
			return E.profile[modname][ info[#info] ]
		end,
		set = function(info, value)
			E.profile[modname][ info[#info] ] = value
			module:Refresh()
		end,
		args = {
			lb1 = { name = "Party raid frame cast bars\n\n", order = 0, type = "description" },
			enabled = {
				disabled = false,
				name = L["Enable"],
				desc = L["Toggle module on and off"],
				order = 1,
				type = "toggle",
				get = function()
					return E:GetModuleEnabled(modname)
				end,
				set = function()
					local state = E:GetModuleEnabled(modname)
					E:SetModuleEnabled(modname, not state)
				end,
			},
			test = {
				name = L["Test"],
				order = 2,
				type = "toggle",
				handler = aura,
				get = function()
					return aura.isInTestMode
				end,
				set = "ToggleTestMode",
			},
			position = {
				name = L["Position"],
				order = 10,
				type = "group",
				args = {
					lb1 = {
						name = format("|TInterface\\FriendsFrame\\InformationIcon:14:14:0:0|t %s", L["Raid Frame module must be enabled."]), order = 0, type = "description",
					},
					preset = {
						name = L["Presets"],
						order = 1,
						type = "select",
						values = {
							TR = L["TOPRIGHT"],
							BR = L["BOTTOMRIGHT"],
							TL = L["TOPLEFT"],
							BL = L["BOTTOMLEFT"],
							INNER = L["CENTER"],
						},
						set = function(info, value)
							if value == "TR" then
								E.profile[modname].point = "TOPLEFT"
								E.profile[modname].relativePoint = "TOPRIGHT"
							elseif value == "TL" then
								E.profile[modname].point = "TOPRIGHT"
								E.profile[modname].relativePoint = "TOPLEFT"
							elseif value == "BR" then
								E.profile[modname].point = "BOTTOMLEFT"
								E.profile[modname].relativePoint = "BOTTOMRIGHT"
							elseif value == "BL" then
								E.profile[modname].point = "BOTTOMRIGHT"
								E.profile[modname].relativePoint = "BOTTOMLEFT"
							else
								E.profile[modname].point = "TOPLEFT"
								E.profile[modname].relativePoint = "TOPLEFT"
							end
							E.profile[modname].preset = value
							module:Refresh()
						end,
					},
					--[[
					point = {
						name = L["Point"],
						order = 1,
						type = "select",
						values = {
							["BOTTOMLEFT"] = L["BOTTOMLEFT"],
							["BOTTOMRIGHT"] = L["BOTTOMRIGHT"],
							["CENTER"] = L["CENTER"],
							["LEFT"] = L["LEFT"],
							["RIGHT"] = L["RIGHT"],
							["TOPLEFT"] = L["TOPLEFT"],
							["TOPRIGHT"] = L["TOPRIGHT"],
						},
					},
					relativePoint = {
						name = L["Relative Point"],
						order = 2,
						type = "select",
						values = {
							["BOTTOMLEFT"] = L["BOTTOMLEFT"],
							["BOTTOMRIGHT"] = L["BOTTOMRIGHT"],
							["CENTER"] = L["CENTER"],
							["LEFT"] = L["LEFT"],
							["RIGHT"] = L["RIGHT"],
							["TOPLEFT"] = L["TOPLEFT"],
							["TOPRIGHT"] = L["TOPRIGHT"],
						},
					},
					]]
					offsetX = {
						disabled = function(info)
							return not E:GetModuleEnabled(modname) or E.profile[modname].preset == "INNER"
						end,
						name = L["Offset X"],
						order = 3,
						type = "range", min = -100, max = 100, step = 1,
					},
					offsetY = {
						name = L["Offset Y"],
						order = 4,
						type = "range", min = -100, max = 100, step = 1,
					},
				}
			},
		}
	}
end

E:RegisterModuleOptions(modname, AddOptions, modname)

local partyIDs = { "party1", "party2" }

local unusedCastingBarFrames = {}
local activeCastingBarFrames = {}

local function UpdateCastingBarFrameOptions(self)
	self:SetWidth(db.preset == "INNER" and (EditModeManagerFrame:GetRaidFrameWidth(4)-APC_ICON_OFFSET-1) or 130)
end

function module:CreateCastingBarFrames()
	for i, id in ipairs(partyIDs) do
		local castingBarFrame = CreateFrame("StatusBar", "OmniAurasCastingBarFrame" .. i, UIParent, "ArenaUnitFrameCastingBarTemplate")
		castingBarFrame.UpdateCastingBarFrameOptions = UpdateCastingBarFrameOptions
		unusedCastingBarFrames[i] = castingBarFrame
	end
	self.CreateCastingBarFrames = nil
end

function module:ReleaseAll()
	for i = #activeCastingBarFrames, 1, -1 do
		local castingBarFrame = activeCastingBarFrames[i]
		castingBarFrame:ClearAllPoints()
		castingBarFrame:SetUnit(nil, nil)
		castingBarFrame.isInEditMode = nil
		castingBarFrame:UpdateShownState()
		activeCastingBarFrames[i] = nil
		tinsert(unusedCastingBarFrames, castingBarFrame)
	end
end

function module:Acquire(unit)
	local frame = E.ActiveUnitCompactUnitFrame[unit]
	if (not frame) then
		return
	end
	local castingBarFrame = tremove(unusedCastingBarFrames)
	if (castingBarFrame) then
		castingBarFrame:SetParent(frame)
		castingBarFrame:SetFrameLevel(15) -- show over overlay 12, border 13, counter 14
		castingBarFrame:ClearAllPoints()
		-- cache all db values locally. db is niled when oa's callback fires on refresh til apc refresh runs
		castingBarFrame:SetPoint(APC_POINT, frame, APC_RELATIVEPOINT, APC_OFFSETX, APC_OFFSETY)
		castingBarFrame:SetUnit(unit, unit)
		castingBarFrame.isInEditMode = aura.isInTestMode
		castingBarFrame:UpdateCastingBarFrameOptions()
		if (aura.isInTestMode) then
			castingBarFrame:UpdateShownState()
		end
		tinsert(activeCastingBarFrames, castingBarFrame)
	end
end

function module:RefreshTestMembers()
	self:ReleaseAll()

	if (not E.Aura.useRaidStylePartyFrames) then
		return
	end
	self:Acquire("player")
end

function module:RefreshExistingMembers()
	self:ReleaseAll()

	if (GetNumGroupMembers() == 0 or not E.Aura.useRaidStylePartyFrames or not self.isInArena) then
		return
	end
	for i = 1, GetNumGroupMembers() do
		local unit = "raid" .. i
		if (not UnitIsUnit("player", unit)) then
			self:Acquire(unit)
		end
	end
end

function module:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi, isRefresh)
	self.isInArena = aura.isInTestMode or select(2, IsInInstance()) == "arena"

	if (self.isInArena) then
		if (self.CreateCastingBarFrames) then
			self:CreateCastingBarFrames()
		end
		self:RefreshMembers()
		E.RegisterCallback(self, "RefreshMembers")
	else
		self:ReleaseAll()
		E.UnregisterCallback(self, "RefreshMembers")
	end
end

function module:Refresh()
	db = E.DB.profile[modname]
	APC_POINT = db.point
	APC_RELATIVEPOINT = db.relativePoint
	APC_OFFSETX = db.preset == "INNER" and APC_ICON_OFFSET or db.offsetX
	APC_OFFSETY = db.offsetY + ((db.preset == "BR" or db.preset == "BL") and 14 or -2)
	self.RefreshMembers = aura.isInTestMode and self.RefreshTestMembers or self.RefreshExistingMembers

	self:PLAYER_ENTERING_WORLD(nil, nil, true)
end

function module:Enable()
	if (self.enabled) then
		return
	end
	self:RegisterEvent('PLAYER_ENTERING_WORLD')
	self:SetScript("OnEvent", function(self, event, ...)
		self[event](self, ...)
	end)
	self.enabled = true
	self:Refresh()
end

function module:Disable()
	if (not self.enabled) then
		return
	end
	if (aura.isInTestMode) then
		aura:ToggleTestMode()
		E:ACR_NotifyChange()
	end
	E.UnregisterAllCallbacks(self)
	self:UnregisterAllEvents()
	self:ReleaseAll()
	self.enabled = false
end

E[modname] = module
