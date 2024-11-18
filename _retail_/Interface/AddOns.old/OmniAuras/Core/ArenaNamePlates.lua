--
-- Arena NamePlates
--	World of NameCraft cleaner.
--	Copyright 2024 Treebonker. All rights reserved.
--
-- Register nameplate events after OA.
--
local E, L, C, G = select(2, ...):unpack()

local tinsert, tremove = tinsert, tremove
local GetUnitName, UnitClass, UnitIsPlayer, UnitIsUnit, UnitName, UpdateHealth, UpdateHealthMax = GetUnitName, UnitClass, UnitIsPlayer, UnitIsUnit, UnitName, UpdateHealth, UpdateHealthMax
local GetSpellInfo = C_Spell and C_Spell.GetSpellName or GetSpellInfo
local GetSpellTexture = C_Spell and C_Spell.GetSpellTexture or GetSpellTexture
local GetSpellLink = C_Spell and C_Spell.GetSpellLink or GetSpellLink

local modname = "ArenaNamePlates"
local module = CreateFrame("frame")
local db

local TEST_BG = true
local MAX_NUM_PLAYER_NAME_PLATES = TEST_BG and 15 or 5

C[modname] = {
	enabledEnemy = true,
	enemyIndicatorColor = { r = 0.756, g = 0, b = 0.012 },
	enabledFriendly = true,
	showFriendlyIndicator = true,
	friendlyIndicatorColor = { r = 0, g = 0, b = 0 },
	showFriendlyName = false,
	friendlyHealthBarWidth = 86,
	friendlyHealthBarHeight = 4,
	useClassColor = false,
	showTargetMarker = false,
	markerPosition = "LEFT",
	markerPoint = "RIGHT",
	markerRelativePoint = "LEFT",
	markerXofs = -1,
	markerScale = 1,
	enabledMinion = true,
	minionWidth = 60,
	minionHeight = 4.0,
	showSelectedMinionsOnly = false,
	minionList = {},
}

local totemIDs = {
	[204336] = true, -- Grounding Totem
	[8143] = true, -- Tremor Totem
	[192058] = true, -- Capacitor Totem
	[98008] = true, -- Spirit Link Totem
	[204331] = true, -- Counterstrike Totem
	[108280] = true, -- Healing Tide Totem
	[204330] = true, -- Skyfury Totem
	[355580] = true, -- Static Field Totem
	[5394] = false, -- Healing Stream Totem
	[2484] = false, -- Earthbind Totem
	[51485] = true, -- Earthgrab Totem
	[192077] = false, -- Wind Rush Totem
	[198838] = false, -- Earthen Wall Totem
	[157153] = false, -- Cloudburst Totem
	[383017] = false, -- Stoneskin Totem
	[383019] = true, -- Tranquil Air Totem
	[192222] = false, -- Liquid Magma Totem
	[383013] = true, -- Poison Cleansing Totem
	[8512] = false, -- Windfury Totem
	[16191] = true, -- Mana Tide Totem
	[236320] = true, -- War Banner
	[353601] = true, -- Fel Obelisk
	[211522] = true, -- Psyfiend
}

for id, state in pairs(totemIDs) do
	local name = GetSpellInfo(id)
	if (name) then
		C[modname].minionList[name] = state
	end
end

local guardianIDs = { -- TODO: use npcID from guid
	[228049] = true, -- Guardian of the Forgotten Queen
	[212459] = L["Fel Lord"], -- Call Fel Lord
	[265187] = L["Demonic Tyrant"], -- Summon Demonic Tyrant
	[201996] = L["Observer"], -- Call observer
	[205180] = L["Darkglare"], -- Summon Darkglare
}

for id, state in pairs(guardianIDs) do
	local name = state == true and GetSpellInfo(id) or state
	if (name) then
		C[modname].minionList[name] = true
	end
end

local function AddOptions()
	local getColor = function(info)
		local c = E.profile[modname][ info[#info] ]
		return c.r, c.g, c.b
	end
	local setColor = function(info, r, g, b)
		local c = E.profile[modname][ info[#info] ]
		c.r, c.g, c.b = r, g, b
		E:Refresh()
	end

	local getMinionList = function(info)
		return E.profile[modname].minionList[info[#info]]
	end
	local setMinionList = function(info, value)
		E.profile[modname].minionList[info[#info]] = value
		module:Refresh()
	end

	local options = {
		disabled = function(info)
			return info[2] and not E:GetModuleEnabled(modname)
		end,
		name = "|cff9146ff" .. L["Arena NamePlates"],
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
			lb1 = {
				name = "World of NameCraft cleaner.\32\32\32\32No CVars were harmed in the making of this addon.\n\n", order = 0, type = "description"
			},
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
				desc = format("%s\n\n%s", L["Randomly assigns friendly and enemy nameplates. Use in a populated area where there are atleast 5 player nameplates visible."],
				L["NPC units are considered as Minions during test mode."]),
				order = 2,
				type = "toggle",
				handler = module,
				get = function()
					return module.isInTestMode
				end,
				set = "Test",
			},
			fonts = {
				name = L["Font"],
				order = 3,
				type = "execute",
				func = function()
					E.Libs.ACD:SelectGroup(E.AddOn, "General", "fonts")
				end,
				width = 0.5,
			},
			enemyNamePlate = {
				hidden = function(info)
					return info[3] and not GetCVarBool("nameplateShowEnemies")
				end,
				name = L["Enemy Player NamePlates"],
				order = 10,
				type = "group",
				args = {
					tt = {
						hidden = function()
							return GetCVarBool("nameplateShowEnemies")
						end,
						name = "|cffff2020" .. L["Enable enemy player nameplates from the interface option to activate this menu."],
						fontSize = "medium", order = 0, type = "description",
					},
					indicator = {
						name = L["Unit Number"],
						order = 10,
						type = "group",
						inline = true,
						args = {
							enabledEnemy = {
								name = L["Enable"],
								desc = format("%s\n\n|cff99cdff%s", L["Show unit ID number."],
								L["Enabling this option will also disable nameplate names unless it's your target."]),
								order = 1,
								type = "toggle",
							},
							enemyIndicatorColor = {
								disabled = true,
								name = L["Color"],
								order = 2,
								type = "color",
								dialogControl = "ColorPicker-OmniCD",
								get = getColor,
								set = setColor,
							},
						}
					},
				}
			},
			friendlyNamePlate = {
				hidden = function(info)
					return info[3] and not GetCVarBool("nameplateShowFriends")
				end,
				disabled = function(info)
					return not E:GetModuleEnabled(modname) or (info[3] and not E.profile[modname].enabledFriendly)
				end,
				name = L["Friendly Player NamePlates"],
				order = 20,
				type = "group",
				args = {
					tt = {
						hidden = function()
							return GetCVarBool("nameplateShowFriends")
						end,
						name = "|cffff2020" .. L["Enable friendly player nameplates from the interface option to activate this menu."],
						fontSize = "medium", order = 0, type = "description",
					},
					enabledFriendly = {
						disabled = function()
							return not E:GetModuleEnabled(modname)
						end,
						name = L["Enable"],
						desc = format("%s\n\n|cff99cdff%s\n\n%s", L["Replaces the default nameplate with a smaller healthbar."],
						L["Cast bar and debuffs will no longer be visible."],
						L["Unit Number and Target Markers will not fade with distance or occlusion."]),
						order = 0,
						type = "toggle",
					},
					healthBar = {
						name = L["Health Bar"],
						order = 10,
						type = "group",
						inline = true,
						args = {
							useClassColor = {
								name = L["Use Class Color"],
								order = 1,
								type = "toggle",
							},
							friendlyHealthBarWidth = {
								disabled = true,
								name = L["Width"],
								order = 2,
								type = "range", min = 40, max = 90, step = 5,
							},
							friendlyHealthBarHeight = {
								disabled = true,
								name = L["Height"],
								order = 3,
								type = "range", min = 4, max = 6, step = 0.2,
							},
						}
					},
					nameplateName = {
						name = L["Name"],
						order = 20,
						type = "group",
						inline = true,
						args = {
							showFriendlyName = {
								name = L["Enable"],
								desc = format("%s\n\n|cff99cdff%s", L["Show nameplate name."], L["Names are always displayed on your target."]),
								order = 1,
								type = "toggle",
							},
						}
					},
					indicator = {
						name = L["Unit Number"],
						order = 30,
						type = "group",
						inline = true,
						args = {
							showFriendlyIndicator = {
								name = L["Enable"],
								desc = L["Show unit ID number."],
								order = 1,
								type = "toggle",
							},
							friendlyIndicatorColor = {
								disabled = true,
								name = L["Color"],
								order = 2,
								type = "color",
								dialogControl = "ColorPicker-OmniCD",
								get = getColor,
								set = setColor,
							},
						}
					},
					raidMarkers = {
						name = L["Target Marker"] .. " |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:0|t",
						order = 40,
						type = "group",
						inline = true,
						args = {
							showTargetMarker = {
								name = L["Enable"],
								order = 0,
								type = "toggle",
							},
							markerPosition = {
								name = L["Position"],
								order = 1,
								type = "select",
								values = {
									LEFT = L["LEFT"],
									RIGHT = L["RIGHT"],
								},
								set = function(_, value)
									E.profile[modname].markerPosition = value
									if (value == "LEFT") then
										E.profile[modname].markerPoint = "RIGHT"
										E.profile[modname].markerRelativePoint = "LEFT"
										E.profile[modname].markerXofs = -1
									else
										E.profile[modname].markerPoint = "LEFT"
										E.profile[modname].markerRelativePoint = "RIGHT"
										E.profile[modname].markerXofs = 1
									end
									module:Refresh()
								end,
							},
							markerScale = {
								name = L["Scale"],
								order = 2,
								type = "range", min = 1, max = 2, step = 0.1, isPercent = true,
							},
						}
					},
				}
			},
			enemyMinionNamePlate = {
				hidden = function(info)
					return info[3] and (GetCVarBool("nameplateShowFriendlyMinions") or not GetCVarBool("nameplateShowEnemyMinions"))
				end,
				disabled = function(info)
					return not E:GetModuleEnabled(modname) or (info[3] and not E.profile[modname].enabledMinion)
				end,
				name = L["Enemy Minion NamePlates"],
				order = 30,
				type = "group",
				args = {
					tt = {
						hidden = function()
							return not GetCVarBool("nameplateShowFriendlyMinions") and GetCVarBool("nameplateShowEnemyMinions")
						end,
						name = "|cffff2020" .. L["Disable friendly minion nameplates and enable enemy minion nameplates from the interface option to activate this menu."],
						fontSize = "medium", order = 0, type = "description",
					},
					enabledMinion = {
						disabled = function()
							return not E:GetModuleEnabled(modname)
						end,
						name = L["Enable"],
						desc = format("%s\n\n|cff99cdff%s", L["Replaces the default nameplate with a smaller healthbar."],
						L["Cast bar and debuffs will no longer be visible."]),
						order = 1,
						type = "toggle",
					},
					healthBar = {
						name = L["Health Bar"],
						order = 10,
						type = "group",
						inline = true,
						args = {
							minionWidth = {
								disabled = true,
								name = L["Width"],
								order = 1,
								type = "range", min = 40, max = 90, step = 5,
							},
							minionHeight = {
								disabled = true,
								name = L["Height"],
								order = 2,
								type = "range", min = 4, max = 6, step = 0.2,
							},
						}
					},
					showSelectedMinionsOnly = {
						name = L["Show Selected Only"],
						desc = format("%s\n\n|cffff2020%s", L["Enabling this option will show selected minion nameplates only. Selected unit names are colored white even if this option is disabled."],
						L["If the listed name doesn't match the unit name in your language, it will not work."]),
						order = 20,
						type = "toggle",
					},
					totemList = {
						name = L["Totems"],
						order = 30,
						type = "group",
						get = getMinionList,
						set = setMinionList,
						args = {},
					},
					guardianList = {
						name = L["Guardians"],
						order = 40,
						type = "group",
						get = getMinionList,
						set = setMinionList,
						args = {},
					},
				}
			},
		}
	}

	for id in pairs(totemIDs) do
		local name = GetSpellInfo(id)
		options.args.enemyMinionNamePlate.args.totemList.args[name] = {
			image = GetSpellTexture(id),
			imageCoords = E.BORDERLESS_TCOORDS,
			name = name,
			tooltipHyperlink = GetSpellLink(id),
			type = "toggle",
		}
	end

	for id, state in pairs(guardianIDs) do
		local name = state == true and GetSpellInfo(id) or state
		options.args.enemyMinionNamePlate.args.guardianList.args[name] = {
			image = GetSpellTexture(id),
			imageCoords = E.BORDERLESS_TCOORDS,
			name = name,
			tooltipHyperlink = GetSpellLink(id),
			type = "toggle",
		}
	end

	return options
end

E:RegisterModuleOptions(modname, AddOptions, modname)

local FRIENDLY_HEALTHBAR_WIDTH = 86
local FRIENDLY_HEALTHBAR_BASE_OFFSET = -3
local FRIENDLY_HEALTHBAR_OFFSET = FRIENDLY_HEALTHBAR_WIDTH/2 - FRIENDLY_HEALTHBAR_BASE_OFFSET

local playerIDs = { "arena1", "arena2", "arena3", "party1", "party2" }

function module:CreateFrames()
	local UpdateHealth = function(self, unit)
		local hp = UnitHealth(unit)
		self:SetValue(hp)
	end

	local UpdateHealthMax = function(self, unit)
		local hpMax = UnitHealthMax(unit)
		self:SetMinMaxValues(0, hpMax)
		UpdateHealth(self, unit)
	end

	local UpdateSelectionHighlight = function(self, unit)
		unit = unit or self.unit
		if (unit) then
			if (UnitIsUnit(unit, "target")) then
				if (self.showTargetName) then
					local name = GetUnitName(unit, true)
					if (name == UNKNOWN) then
						self:RegisterUnitEvent('UNIT_NAME_UPDATE', unit)
					end
					self.name:SetText(name)
					self.name:Show()
				end
				-- DefaultCompactNamePlateFriendlyFrameOptions .35/.8
				self.border:SetVertexColor(1, 1, 1, .9)
				self.selectionHighlight:Show()
			else
				if (self.showTargetName) then
					self.name:Hide()
				end
				self.border:SetVertexColor(0, 0, 0, 1)
				self.selectionHighlight:Hide()
			end
		end
	end

	local function UpdateName(self, unit)
		self:UnregisterEvent('UNIT_NAME_UPDATE')

		local name = GetUnitName(unit, true)
		local f = self.minionFrame
		if (f) then
			if (db.minionList[name]) then
				self.name:SetVertexColor(1, 1, 1)
			elseif (db.showSelectedMinionsOnly) then
				module:SetMinionNamePlates(f, unit)
				return
			end
		end
		self.name:SetText(name)
	end

	local function eventHandler(self, event, ...)
		local unit = ...
		if (event == 'UNIT_HEALTH') then
			UpdateHealth(self, unit)
		elseif (event == 'UNIT_MAXHEALTH') then
			UpdateHealthMax(self, unit)
		elseif (event == 'PLAYER_TARGET_CHANGED') then
			UpdateSelectionHighlight(self)
		elseif (event == 'UNIT_NAME_UPDATE') then
			if (self.unit == unit) then
				UpdateName(self, unit)
			end
		end
	end

	self.CreateHealthBar = function(parent, wd, ht, r, g, b) -- default small (86, 4)
		local healthBar = CreateFrame("StatusBar", nil, parent)
		PixelUtil.SetSize(healthBar, wd, ht)
		healthBar:SetStatusBarTexture("Interface/TargetingFrame/UI-TargetingFrame-BarFill")
		healthBar:SetStatusBarColor(r, g, b)
		healthBar.UpdateHealthMax = UpdateHealthMax
		healthBar.UpdateSelectionHighlight = UpdateSelectionHighlight
		healthBar:SetScript("OnEvent", eventHandler)

		healthBar.bg = healthBar:CreateTexture(nil, "BACKGROUND")
		healthBar.bg:SetAllPoints(true)
		healthBar.bg:SetColorTexture(0, 0, 0, .85)

		healthBar.border = CreateFrame("Frame", nil, healthBar, "NamePlateFullBorderTemplate")
		healthBar.border:UpdateSizes()
		healthBar.border:SetVertexColor(0, 0, 0, 1)

		healthBar.selectionHighlight = healthBar:CreateTexture(nil, "OVERLAY")
		healthBar.selectionHighlight:Hide()
		healthBar.selectionHighlight:SetAllPoints(true)
		healthBar.selectionHighlight:SetTexture("Interface/TargetingFrame/UI-TargetingFrame-BarFill")
		healthBar.selectionHighlight:SetAlpha(0.25)
		healthBar.selectionHighlight:SetBlendMode("ADD")
		healthBar.selectionHighlight:SetIgnoreParentAlpha(true)

		healthBar.name = healthBar:CreateFontString()
		healthBar.name:SetFontObject(E.NpName)
		healthBar.name:SetTextColor(1, 1, 1)
		PixelUtil.SetPoint(healthBar.name, "BOTTOM", healthBar, "TOP", 0, 2)
		PixelUtil.SetHeight(healthBar.name, healthBar.name:GetLineHeight())
		healthBar.name:SetText("")
		healthBar.name:SetIgnoreParentScale(true)

		return healthBar
	end

	local function UpdatePlayerNamePlateOptions(self)
		self.indicator.bg:SetVertexColor(1, 1, 1)
		self.indicator.r = 1
		self.healthBar.name:SetShown(db.showFriendlyName)
		self.raidTargetFrame:ClearAllPoints()
		self.raidTargetFrame:SetPoint(db.markerPoint, self.healthBar, db.markerRelativePoint, db.markerXofs, 0)
		self.raidTargetFrame:SetScale(db.markerScale)
		self.raidTargetFrame:SetShown(db.showTargetMarker)
	end

	local function ToggleEnemyPlayerName(self, unit)
		unit = unit or self.healthBar.unit
		if (unit) then
			if (UnitIsUnit(unit, "target")) then
				if (self.hideNameOnShow) then
					self.hideNameOnShow = nil
					self.UnitFrame.name:Show()
				end
			else
				if (not self.hideNameOnShow) then
					self.hideNameOnShow = true
					self.UnitFrame.name:Show()
				end
			end
		end
	end

	local function playerEventHandler(self, event, ...)
		if (event == 'PLAYER_TARGET_CHANGED') then
			local unit = ...
			ToggleEnemyPlayerName(self, unit)
		end
	end

	self.numPlayerNamePlates = 0
	self.CreatePlayerNamePlate = function()
		if (self.numPlayerNamePlates > MAX_NUM_PLAYER_NAME_PLATES) then return end
		local f = CreateFrame("Frame", nil, UIParent)
		f:SetSize(1, 1)
		f.ToggleEnemyPlayerName = ToggleEnemyPlayerName
		f:SetScript("OnEvent", playerEventHandler)

		f.healthBar = self.CreateHealthBar(f, FRIENDLY_HEALTHBAR_WIDTH, 4, 0, 1, 0) -- ht 4.8
		PixelUtil.SetPoint(f.healthBar, "RIGHT", f, "LEFT", FRIENDLY_HEALTHBAR_BASE_OFFSET, 0)
		f.healthBar.name:SetVertexColor(0, 1, 0)
		f.healthBar:Hide()

		f.indicator = CreateFrame("Frame", nil, f)
		f.indicator:SetIgnoreParentScale(true)
		f.indicator:SetIgnoreParentAlpha(true)
		PixelUtil.SetSize(f.indicator, 20, 20)
		PixelUtil.SetPoint(f.indicator, "LEFT", f, "LEFT", 0, 0)

		f.indicator.bg = f.indicator:CreateTexture(nil, "ARTWORK")
		f.indicator.bg:SetAllPoints(true)
		f.indicator.bg:SetColorTexture(0.756, 0, 0.012)

		f.indicator.border = CreateFrame("Frame", nil, f.indicator, "NamePlateFullBorderTemplate")
		f.indicator.border:UpdateSizes()
		f.indicator.border:SetVertexColor(0, 0, 0, .8)

		f.indicator.text = f.indicator:CreateFontString()
		f.indicator.text:SetFontObject(E.NpIndicator)
		f.indicator.text:SetTextColor(1, 1, 1)
		PixelUtil.SetPoint(f.indicator.text, "CENTER", f.indicator, "CENTER", 0, -1)
		PixelUtil.SetHeight(f.indicator.text, f.indicator.text:GetLineHeight())
		f.indicator.text:SetText("")

		f.raidTargetFrame = CreateFrame("Frame", nil, f)
		f.raidTargetFrame:SetSize(22, 22)
		f.raidTargetFrame.raidTargetIcon = f.raidTargetFrame:CreateTexture(nil, "ARTWORK")
		f.raidTargetFrame.raidTargetIcon:SetAllPoints(true)
		f.raidTargetFrame.raidTargetIcon:SetTexture("Interface/TargetingFrame/UI-RaidTargetingIcons")
		f.raidTargetFrame:SetIgnoreParentAlpha(true)

		-- Apply settings
		f.UpdateNamePlateOptions = UpdatePlayerNamePlateOptions
		f:UpdateNamePlateOptions()

		self.numPlayerNamePlates = self.numPlayerNamePlates + 1
		return f
	end

	self.playerNamePlates = {}
	self.activePlayerNamePlates = {}
	for i, id in ipairs(playerIDs) do
		local f = self.CreatePlayerNamePlate()
		tinsert(self.playerNamePlates, f)
	end

	local function UpdateMinionNamePlateOptions(self)
		self.raidTargetFrame:SetShown(db.showTargetMarker)
	end

	self.numMinionNamePlates = 0
	self.CreateMinionNamePlate = function()
		if (self.numMinionNamePlates > 30) then return end
		local f = CreateFrame("Frame", nil, UIParent)
		f:SetSize(1, 1)
		f.isMinionFrame = true

		f.healthBar = self.CreateHealthBar(f, 60, 4, 1, 0, 0)
		PixelUtil.SetPoint(f.healthBar, "CENTER", f, "CENTER", 0, 0)
		f.healthBar.minionFrame = f

		f.raidTargetFrame = CreateFrame("Frame", nil, f)
		f.raidTargetFrame:SetSize(22, 22)
		f.raidTargetFrame:SetPoint("RIGHT", f.healthBar, "LEFT", -1, 0)
		f.raidTargetFrame.raidTargetIcon = f.raidTargetFrame:CreateTexture(nil, "ARTWORK")
		f.raidTargetFrame.raidTargetIcon:SetAllPoints(true)
		f.raidTargetFrame.raidTargetIcon:SetTexture("Interface/TargetingFrame/UI-RaidTargetingIcons")
		f.raidTargetFrame:SetIgnoreParentAlpha(true)

		-- Apply settings
		f.UpdateNamePlateOptions = UpdateMinionNamePlateOptions
		f:UpdateNamePlateOptions()

		self.numMinionNamePlates = self.numMinionNamePlates + 1
		return f
	end

	self.minionNamePlates = {}
	self.activeMinionNamePlates = {}
	for i = 1, 5 do
		local f = self.CreateMinionNamePlate()
		tinsert(self.minionNamePlates, f)
	end
end

local hookedNamePlateUnitFrames = {}

local function UpdateAuraAnchorAndVisibility(namePlateFrameBase, f)
	local containers = E.NameplateContainer[namePlateFrameBase]
	if (containers) then
		for filter, container in pairs(containers) do
			if (E.ActiveUnitContainer[filter][namePlateFrameBase.namePlateUnitToken]) then -- UNIT_AURA registered = aura shown
				if (f.isMinionFrame and not f.isShownMinionFrame) then -- hidden minion (minion healthBar visibility doesn't change)
					container:Hide() -- reshown on OA _ADDED
				elseif (f.healthBar:IsShown()) then -- all minion, shown friendly player
					local db = container.db
					if (db.relativeFrame == "healthBar") then
						container:ClearAllPoints()
						container:SetPoint(db.point, f.healthBar, db.relativePoint, db.point == "RIGHT" and -2 or 2, 0)
						container.shouldResetAnchor = true
					end
				end -- nothing to do for hidden friendly player, enemy player
			end
		end
	end
end

local function ResetAuraAnchorAndVisibility(namePlateFrameBase, f)
	local containers = E.NameplateContainer[namePlateFrameBase]
	if (containers) then
		for filter, container in pairs(containers) do
			if (container.shouldResetAnchor) then
				container:ClearAllPoints()
				local db = container.db
				assert(db)
				assert(db.point)
				container:SetPoint(db.point, container.healthBar, db.relativePoint, db.point == "RIGHT" and -db.offsetX or db.offsetX, db.offsetY)
				container.shouldResetAnchor = nil
			end
			-- if namePlateUnitToken exists (not from _REMOVED) then reshow if container is active. Do not use container.unit!
			if (namePlateFrameBase.namePlateUnitToken and E.ActiveUnitContainer[filter][namePlateFrameBase.namePlateUnitToken]) then
				container:Show()
			end
		end
	end
end

local function HideNamePlateUnitFrame_OnShow(self)
	local namePlateFrameBase = self:GetParent()
	if (namePlateFrameBase) then
		local f = module.activePlayerNamePlates[namePlateFrameBase]
		if (f and f.hideOnShow) then
			self:Hide()
		end
	end
end

local function HideNamePlateUnitFrame(namePlateFrameBase, f)
	local unitFrame = f.UnitFrame
	if (not hookedNamePlateUnitFrames[unitFrame]) then
		hooksecurefunc(unitFrame, "Show", HideNamePlateUnitFrame_OnShow)
		hookedNamePlateUnitFrames[unitFrame] = true
	end
	unitFrame:Hide()
	f.hideOnShow = true

	UpdateAuraAnchorAndVisibility(namePlateFrameBase, f)
end

local function ShowNamePlateUnitFrame(namePlateFrameBase, f)
	f.hideOnShow = nil -- keep order
	f.UnitFrame:Show()

	ResetAuraAnchorAndVisibility(namePlateFrameBase, f)
end

local function HideUnitFrameName_OnShow(self)
	local namePlateFrameBase = self:GetParent():GetParent()
	if (namePlateFrameBase) then
		local f = module.activePlayerNamePlates[namePlateFrameBase]
		if (f and f.hideNameOnShow) then
			self:Hide()
		end
	end
end

local function HideUnitFrameName(f)
	local name = f.UnitFrame.name
	if (not hookedNamePlateUnitFrames[name]) then
		hooksecurefunc(name, "Show", HideUnitFrameName_OnShow)
		hookedNamePlateUnitFrames[name] = true
	end
	name:Hide()
	f.hideNameOnShow = true

	f:RegisterEvent('PLAYER_TARGET_CHANGED')
	f:ToggleEnemyPlayerName()
end

local function ShowUnitFrameName(f)
	f.hideNameOnShow = nil -- keep order
	f.UnitFrame.name:Show()
end

local function ReleasePlayerNamePlate(namePlateFrameBase, f)
	f:Hide()
	-- set to enemy default
	f.indicator:Show()
	f.healthBar:Hide()
	--//
	f:ClearAllPoints()
	f:UnregisterEvent('PLAYER_TARGET_CHANGED')
	ShowUnitFrameName(f)
	f.healthBar:UnregisterAllEvents()
	f.healthBar.unit = nil
	f.healthBar.showTargetName = nil
	ShowNamePlateUnitFrame(namePlateFrameBase, f)
	tinsert(module.playerNamePlates, f)
	module.activePlayerNamePlates[namePlateFrameBase] = nil
end

local function ReleaseMinionNamePlate(namePlateFrameBase, f)
	f:Hide()
	f.isShownMinionFrame = nil
	f:ClearAllPoints()
	f.healthBar:UnregisterAllEvents()
	f.healthBar.unit = nil
	ShowNamePlateUnitFrame(namePlateFrameBase, f)
	tinsert(module.minionNamePlates, f)
	module.activeMinionNamePlates[namePlateFrameBase] = nil
end

function module:SetMinionNamePlates(namePlateFrameBase, unit)
	local f = self.activeMinionNamePlates[namePlateFrameBase]
	if (f) then
		ReleaseMinionNamePlate(namePlateFrameBase, f)
	end

	f = tremove(self.minionNamePlates) or self.CreateMinionNamePlate()
	if (not f) then
		return
	end
	f:SetParent(namePlateFrameBase)
	f.healthBar.unit = unit
	-- keep order
	f.UnitFrame = namePlateFrameBase.UnitFrame
	self.activeMinionNamePlates[namePlateFrameBase] = f

	local name = UnitName(unit)
	if (not db.showSelectedMinionsOnly) or (name == UNKNOWN) or (db.minionList[name]) then
		f:SetPoint("CENTER", namePlateFrameBase.UnitFrame.healthBar)
		f.healthBar:RegisterEvent('PLAYER_TARGET_CHANGED')
		f.healthBar:RegisterUnitEvent('UNIT_HEALTH', unit)
		f.healthBar:RegisterUnitEvent('UNIT_MAXHEALTH', unit)
		f.healthBar:UpdateSelectionHighlight(unit)
		f.healthBar:UpdateHealthMax(unit)
		f.healthBar.name:SetText(name)
		if (db.minionList[name]) then
			f.healthBar.name:SetVertexColor(1, 1, 1)
		else
			if (name == UNKNOWN) then
				f.healthBar:RegisterUnitEvent('UNIT_NAME_UPDATE', unit)
			end
			f.healthBar.name:SetVertexColor(1, 0, 0)
		end
		f:Show()
		f.isShownMinionFrame = true
	end

	HideNamePlateUnitFrame(namePlateFrameBase, f)
end

local TestUnitIsUnit = function(unit, _, i)
	return not UnitIsUnit("player", unit) and strfind(unit, i .. "$")
end
local IsSameUnit = UnitIsUnit

local function AcquirePlayerFrame(namePlateFrameBase)
	local f = tremove(module.playerNamePlates) or module.CreatePlayerNamePlate()
	if (not f) then
		return false
	end
	f:SetParent(namePlateFrameBase)
	f.healthBar.unit = namePlateFrameBase.namePlateUnitToken
	f.UnitFrame = namePlateFrameBase.UnitFrame-- cache so we can reset visibility on released frames
	module.activePlayerNamePlates[namePlateFrameBase] = f
	return f
end

function module:SetArenaEnemyNamePlate(unit)
	---[[ REMOVEME ]]  if (not UnitPlayerControlled(unit)) then return end -- every unit should be PC in arena
	local namePlateFrameBase = C_NamePlate.GetNamePlateForUnit(unit)
	if (not namePlateFrameBase or namePlateFrameBase:IsForbidden() or not namePlateFrameBase.UnitFrame) then
		return
	end

	if (UnitIsPlayer(unit)) then
		if (self.enabledEnemy) then
			for i = 1, 3 do
				local id = playerIDs[i]
				if (IsSameUnit(unit, id, i)) then
					local f = self.activePlayerNamePlates[namePlateFrameBase] -- JIC
					if (f) then
						ReleasePlayerNamePlate(namePlateFrameBase, f)
					end
					f = AcquirePlayerFrame(namePlateFrameBase)
					if (not f) then
						break
					end
					f:SetPoint("LEFT", E.isTWW and namePlateFrameBase.UnitFrame.HealthBarsContainer or namePlateFrameBase.UnitFrame.healthBar, "RIGHT", 0, 0)
					if (self.isUnitNameEnemyPlayerName) then
						HideUnitFrameName(f)
					end
					if (f.indicator.index ~= i) then
						f.indicator.text:SetText(i)
						f.indicator.index = i
					end
					f:Show()
					break
				end
			end
		end
	elseif (self.enabledMinion) then
		self:SetMinionNamePlates(namePlateFrameBase, unit)
	end

	if (db.showTargetMarker) then
		self:RAID_TARGET_UPDATE()
	end
end

function module:SetArenaNamePlate(unit)
	---[[ REMOVEME ]] if (not UnitPlayerControlled(unit)) then return end
	local namePlateFrameBase = C_NamePlate.GetNamePlateForUnit(unit)
	if (not namePlateFrameBase or namePlateFrameBase:IsForbidden() or not namePlateFrameBase.UnitFrame) then
		return
	end

	if (UnitIsPlayer(unit)) then
		for i = 1, 5 do
			local id = playerIDs[i]
			local index = i > 3 and i-3 or i
			if (IsSameUnit(unit, id, i)) then
				local f = self.activePlayerNamePlates[namePlateFrameBase]
				if (f) then
					ReleasePlayerNamePlate(namePlateFrameBase, f)
				end
				f = (i > 3 or self.enabledEnemy) and AcquirePlayerFrame(namePlateFrameBase)
				if (not f) then
					break
				end

				local r
				if (i > 3) then
					f:SetPoint("LEFT", namePlateFrameBase.UnitFrame.healthBar, "CENTER", FRIENDLY_HEALTHBAR_OFFSET, 0)
					f.healthBar:RegisterEvent('PLAYER_TARGET_CHANGED')
					f.healthBar:RegisterUnitEvent('UNIT_HEALTH', unit)
					f.healthBar:RegisterUnitEvent('UNIT_MAXHEALTH', unit)
					f.healthBar:UpdateHealthMax(unit)
					if (db.useClassColor) then
						local _, classFilename = UnitClass(unit)
						local c = RAID_CLASS_COLORS[classFilename]
						if (c) then
							if (c.r ~= f.healthBar.r or c.g ~= f.healthBar.g) then
								f.healthBar:SetStatusBarColor(c.r, c.g, c.b)
								f.healthBar.name:SetVertexColor(c.r, c.g, c.b)
								f.healthBar.r = c.r
								f.healthBar.g = c.g
							end
						end
					end

					if (db.showFriendlyName) then
						local name = GetUnitName(unit, true)
						if (name == UNKNOWN) then
							f.healthBar:RegisterUnitEvent('UNIT_NAME_UPDATE', unit)
						end
						f.healthBar.name:SetText(name)
					else
						f.healthBar.showTargetName = true
					end
					f.healthBar:UpdateSelectionHighlight(unit)
					f.healthBar:Show()
					HideNamePlateUnitFrame(namePlateFrameBase, f)
					if (db.showFriendlyIndicator) then
						r = 0
					end
				else
					f:SetPoint("LEFT", E.isTWW and namePlateFrameBase.UnitFrame.HealthBarsContainer or namePlateFrameBase.UnitFrame.healthBar, "RIGHT", 0, 0)
					if (self.isUnitNameEnemyPlayerName) then
						HideUnitFrameName(f)
					end
					r = 1
				end
				if (r) then
					if (f.indicator.r ~= r) then
						f.indicator.bg:SetVertexColor(r, 1, 1)
						f.indicator.r = r
					end
					if (f.indicator.index ~= index) then
						f.indicator.text:SetText(index)
						f.indicator.index = index
					end
				else
					f.indicator:Hide()
				end
				f:Show()
				break
			end
		end
	elseif (self.enabledMinion) then
		self:SetMinionNamePlates(namePlateFrameBase, unit)
	end

	if (db.showTargetMarker) then
		self:RAID_TARGET_UPDATE()
	end
end

function module:SetBGFriendlyPlayerNamePlate(unit)
	local namePlateFrameBase = C_NamePlate.GetNamePlateForUnit(unit)
	if (not namePlateFrameBase or namePlateFrameBase:IsForbidden() or not namePlateFrameBase.UnitFrame) then
		return
	end

	if (UnitIsPlayer(unit)) then
		for i = 1, MAX_NUM_PLAYER_NAME_PLATES do
			local f = self.activePlayerNamePlates[namePlateFrameBase]
			if (f) then
				ReleasePlayerNamePlate(namePlateFrameBase, f)
			end

			local id = E.RAID_UNIT[i]
			if (UnitIsUnit(unit, id)) then
				f = AcquirePlayerFrame(namePlateFrameBase)
				if (not f) then
					break
				end

				f:SetPoint("LEFT", namePlateFrameBase.UnitFrame.healthBar, "CENTER", FRIENDLY_HEALTHBAR_OFFSET, 0)
				f.healthBar:RegisterEvent('PLAYER_TARGET_CHANGED')
				f.healthBar:RegisterUnitEvent('UNIT_HEALTH', unit)
				f.healthBar:RegisterUnitEvent('UNIT_MAXHEALTH', unit)
				f.healthBar:UpdateHealthMax(unit)
				if (db.useClassColor) then
					local _, classFilename = UnitClass(unit)
					local c = RAID_CLASS_COLORS[classFilename]
					if (c) then
						if (c.r ~= f.healthBar.r or c.g ~= f.healthBar.g) then
							f.healthBar:SetStatusBarColor(c.r, c.g, c.b)
							f.healthBar.name:SetVertexColor(c.r, c.g, c.b)
							f.healthBar.r = c.r
							f.healthBar.g = c.g
						end
					end
				end

				if (db.showFriendlyName) then
					local name = GetUnitName(unit, true)
					if (name == UNKNOWN) then
						f.healthBar:RegisterUnitEvent('UNIT_NAME_UPDATE', unit)
					end
					f.healthBar.name:SetText(name)
				else
					f.healthBar.showTargetName = true
				end
				f.healthBar:UpdateSelectionHighlight(unit)
				f.healthBar:Show()
				HideNamePlateUnitFrame(namePlateFrameBase, f)

				f.indicator:Hide()
				f:Show()
				break
			end
		end
	elseif (self.enabledMinion) then
		self:SetMinionNamePlates(namePlateFrameBase, unit)
	end

	if (db.showTargetMarker) then
		self:RAID_TARGET_UPDATE()
	end
end

function module:NAME_PLATE_UNIT_REMOVED(unit)
	local namePlateFrameBase = C_NamePlate.GetNamePlateForUnit(unit, false)
	local f = self.activePlayerNamePlates[namePlateFrameBase]
	if (f) then
		ReleasePlayerNamePlate(namePlateFrameBase, f)
		return
	end
	f = self.activeMinionNamePlates[namePlateFrameBase]
	if (f) then
		ReleaseMinionNamePlate(namePlateFrameBase, f)
	end
end

function module:ReleaseAllFrames()
	if (not self.activePlayerNamePlates) then
		return
	end
	for namePlateFrameBase, f in pairs(self.activePlayerNamePlates) do
		ReleasePlayerNamePlate(namePlateFrameBase, f)
	end
	for namePlateFrameBase, f in pairs(self.activeMinionNamePlates) do
		ReleaseMinionNamePlate(namePlateFrameBase, f)
	end
end

function module:UpdateAllNamePlates(category, partyGUID, isTimer)
	if (not self.isInArena) then
		return
	end
	self:ReleaseAllFrames()

	for _, namePlateFrameBase in pairs(C_NamePlate.GetNamePlates()) do
		local unit = namePlateFrameBase.namePlateUnitToken
		if (unit) then
			self:NAME_PLATE_UNIT_ADDED(unit)
		end
	end

	if (isTimer) then
		self.timer = nil
	end
end

module.DISPLAY_SIZE_CHANGED = module.UpdateAllNamePlates
module.VARIABLES_LOADED = module.UpdateAllNamePlates
module.GROUP_JOINED = module.UpdateAllNamePlates -- shuffle fix?
module.GROUP_ROSTER_UPDATE = module.UpdateAllNamePlates

local optionCVars = {
	["ShowClassColorInFriendlyNameplate"] = true,
	["ShowNamePlateLoseAggroFlash"] = true,
	["ShowClassColorInNameplate"] = true,
	["nameplateShowDebuffsOnFriendly"] = true,
	["nameplateShowFriendlyBuffs"] = true,
	["nameplateResourceOnTarget"] = true,
	["nameplateHideHealthAndPower"] = true,
	["NamePlateVerticalScale"] = true,
	["nameplateShowOnlyNames"] = true,
	["NameplatePersonalClickThrough"] = true,
	["NamePlateHorizontalScale"] = true,
	["NamePlateClassificationScale"] = true,
	["NamePlateMaximumClassificationScale"] = true,
	["nameplateShowPersonalCooldowns"] = true,
	["nameplateClassResourceTopInset"] = true,
}

function module:CVAR_UPDATE(cvar, value)
	if (optionCVars[cvar]) then
		self:UpdateAllNamePlates()
	elseif ((cvar == "nameplateShowEnemies") or (cvar == "nameplateShowFriends") or (cvar == "nameplateShowEnemyMinions") or (cvar == "nameplateShowFriendlyMinions")
		or (cvar == "UnitNameEnemyPlayerName")) then
		E:ACR_NotifyChange()
		self:Refresh()
	end
end

function module:RAID_TARGET_UPDATE()
	for _, namePlateFrameBase in pairs(C_NamePlate.GetNamePlates()) do
		local f = self.activePlayerNamePlates[namePlateFrameBase] or self.activeMinionNamePlates[namePlateFrameBase]
		if (f) then
			local icon = f.raidTargetFrame.raidTargetIcon
			local index = GetRaidTargetIndex(namePlateFrameBase.namePlateUnitToken)
			if (index and f.healthBar:IsVisible()) then
				SetRaidTargetIconTexture(icon, index)
				icon:Show()
			else
				icon:Hide()
			end
		end
	end
end

function module:PLAYER_LOGOUT() -- acedb cleared here. _REMOVED can fire after _LOGOUT causing db nil err
	self:UnregisterEvent('NAME_PLATE_UNIT_REMOVED')
end

function module:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi, isRefresh)
	local _, instanceType = IsInInstance()
	self.isInArena = self.isInTestMode or instanceType == "arena"
	---[[ REMOVEME ]] self.isInArena = true; IsSameUnit = TestUnitIsUnit;

	if (TEST_BG) then
		self.NAME_PLATE_UNIT_ADDED = instanceType == "pvp" and self.SetBGFriendlyPlayerNamePlate
			or (self.enabledFriendly and self.SetArenaNamePlate or self.SetArenaEnemyNamePlate)
	end

	if (not isRefresh and self.isInTestMode) then
		self:Test()
	end

	if (self.isInArena) then
		if (not self.playerNamePlates) then
			self:CreateFrames()
		end
		-- Event frames are notified in the order they were registered. Make sure OA registers first
		-- see Nameplate_RegisterEvents
		self:RegisterEvent('NAME_PLATE_UNIT_ADDED')
		self:RegisterEvent('NAME_PLATE_UNIT_REMOVED')
		self:RegisterEvent('DISPLAY_SIZE_CHANGED')
		self:RegisterEvent('GROUP_JOINED')
		self:RegisterEvent('GROUP_ROSTER_UPDATE')
		if (db.showTargetMarker) then
			self:RegisterEvent('RAID_TARGET_UPDATE')
		else
			self:UnregisterEvent('RAID_TARGET_UPDATE')
		end
		self:RegisterEvent('PLAYER_LOGOUT')
		self:UpdateAllNamePlates() -- for Refresh. nameplates haven't been assigned yet on pew
		if (not self.timer) then -- TODO: temp lfg fix. not sure why nameplates aren't updated on entering instance occasionally
			self.timer = E.TimerAfter(5, self.UpdateAllNamePlates, self, nil, nil, true)
		end
	elseif (self.playerNamePlates) then
		self:UnregisterEvent('NAME_PLATE_UNIT_ADDED')
		self:UnregisterEvent('NAME_PLATE_UNIT_REMOVED')
		self:UnregisterEvent('DISPLAY_SIZE_CHANGED')
		self:UnregisterEvent('GROUP_JOINED')
		self:UnregisterEvent('GROUP_ROSTER_UPDATE')
		self:UnregisterEvent('RAID_TARGET_UPDATE')
		self:UnregisterEvent('PLAYER_LOGOUT')
		self:ReleaseAllFrames() -- sticky fix
	end
end

local function ResetAllNamePlateOptions()
	module:ReleaseAllFrames()

	for _, f in pairs(module.playerNamePlates) do
		if (not db.useClassColor) then
			f.healthBar:SetStatusBarColor(0, 1, 0)
			f.healthBar.name:SetVertexColor(0, 1, 0)
			f.healthBar.r, f.healthBar.g = 0, 1
		end
		f:UpdateNamePlateOptions()
	end
	for _, f in pairs(module.minionNamePlates) do
		f:UpdateNamePlateOptions()
	end
end

function module:Refresh()
	db = E.profile[modname]

	self.enabledEnemy = db.enabledEnemy and GetCVarBool("nameplateShowEnemies")
	self.enabledFriendly = db.enabledFriendly and GetCVarBool("nameplateShowFriends")
	self.enabledMinion = db.enabledMinion and GetCVarBool("nameplateShowEnemyMinions") and (self.isInTestMode or not GetCVarBool("nameplateShowFriendlyMinions"))
	if (not self.enabledEnemy and not self.enabledFriendly and not self.enabledMinion) then
		self:Disable()
		return
	end
	self.isUnitNameEnemyPlayerName = GetCVarBool("UnitNameEnemyPlayerName")
	self.NAME_PLATE_UNIT_ADDED = self.enabledFriendly and self.SetArenaNamePlate or self.SetArenaEnemyNamePlate

	-- Reset settings that are omitted in release, _ADDED to default enemy nameplates settings.
	if (self.playerNamePlates) then
		ResetAllNamePlateOptions()
	end

	self:PLAYER_ENTERING_WORLD(nil, nil, true)
end

function module:Enable()
	if (self.enabled) then
		return
	end
	self:RegisterEvent('CVAR_UPDATE')
	self:RegisterEvent('VARIABLES_LOADED')
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
	if (self.isInTestMode) then
		self:Test()
		E:ACR_NotifyChange()
	end
	self:UnregisterAllEvents()
	self:ReleaseAllFrames()
	self.enabled = false
end

function module:Test()
	self.isInTestMode = not self.isInTestMode
	IsSameUnit = self.isInTestMode and TestUnitIsUnit or UnitIsUnit
	self:Refresh()
end

E[modname] = module
