--
-- OmniAuras
--	Track auras on any Blizzard frame.
--	Copyright 2018-2023 Treebonker. All rights reserved.
--
--	https://www.curseforge.com/wow/addons/omniauras
--

-- PrivateAura woes (PTR)
--	When someone leaves a raid group, unitId are decremented to fill the gap. If there was a member with
--	privateauras then it will incorrectly show up on following unitId member which now has the matching unitId
--	and then stick to the raidframe when it times out.

local E, L = select(2, ...):unpack()
if not E.isDF then
	return
end

local module = E.Aura
local AuraTooltip = CreateFrame("GameTooltip", "OmniAurasAuraTooltip", UIParent, "GameTooltipTemplate")
local TOOLTIP_UPDATE_TIME = 0.2
AuraTooltip.updateTooltipTimer = TOOLTIP_UPDATE_TIME

local pairs, ipairs, type, find, min, floor = pairs, ipairs, type, string.find, math.min, math.floor
local GetTime, GetNumGroupMembers = GetTime, GetNumGroupMembers
local UnitExists, UnitGUID, UnitIsUnit, UnitCanAttack, UnitIsPlayer, UnitPlayerControlled, UnitIsPossessed = UnitExists, UnitGUID, UnitIsUnit, UnitCanAttack, UnitIsPlayer, UnitPlayerControlled, UnitIsPossessed
local AuraUtil_ForEachAura = AuraUtil.ForEachAura
local AuraUtil_IsPriorityDebuff = AuraUtil.IsPriorityDebuff
local AuraUtil_ShouldDisplayBuff = AuraUtil.ShouldDisplayBuff
local C_NamePlate_GetNamePlateForUnit = C_NamePlate.GetNamePlateForUnit
local C_UnitAuras_GetAuraDataByAuraInstanceID = C_UnitAuras.GetAuraDataByAuraInstanceID
local band = bit.band
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local UnitChannelInfo = UnitChannelInfo
local GetSpellInfo = C_Spell and C_Spell.GetSpellName or GetSpellInfo
local GetSpellTexture = C_Spell and C_Spell.GetSpellTexture or GetSpellTexture
local GetSchoolString = C_Spell and C_Spell.GetSchoolString or GetSchoolString
local IsAddOnLoaded = C_AddOns and C_AddOns.IsAddOnLoaded or IsAddOnLoaded

local db
local userGUID = E.userGUID
local blacklist

local Aura_Enabled = { raidFrame = {}, nameplate = {}, friendlyNameplate = {}, unitFrame = {}, arenaFrame = {}, playerFrame = {}, largerIcon = {}, glow = {}, alert = {} }
local Aura_NoFriend = {}

local CompactUnitFrameContainer = {}
local NameplateContainer = {}
local UnitFrameContainer = {} -- unitId to container
local ActiveUnitContainer = { HARMFUL = {}, HELPFUL = {}, MYHELPFUL = {} }
local ActiveUnitCompactUnitFrame = {}
local ActiveUnitNameplate = {}
local SpellLockedGUIDS = {}
local CallbackTimers = {}

local NUM_RF_OVERLAYS = { HARMFUL = 15, HELPFUL = 3, MYHELPFUL = 9 }
local NUM_AF_OVERLAYS = { HARMFUL = 6, HELPFUL = 3 }
local NUM_UF_OVERLAYS = 1
local NUM_NP_OVERLAYS = 12
local BASE_ICON_SIZE = 39
local UNDETACHEDFRAME_LASTINDEX = NUM_RF_OVERLAYS.HARMFUL - 6 -- opt max value

local AuraComparator = {}

function AuraComparator.default(a, b)
	local aFromPlayer = (a.sourceUnit ~= nil) and UnitIsUnit("player", a.sourceUnit) or false;
	local bFromPlayer = (b.sourceUnit ~= nil) and UnitIsUnit("player", b.sourceUnit) or false;
	if aFromPlayer ~= bFromPlayer then
		return aFromPlayer;
	end

	if a.canApplyAura ~= b.canApplyAura then
		return a.canApplyAura;
	end

	return a.auraInstanceID < b.auraInstanceID;
end

function AuraComparator.none(a, b)
	if a.canApplyAura ~= b.canApplyAura then
		return a.canApplyAura
	end
	return a.auraInstanceID < b.auraInstanceID
end

function AuraComparator.prioOld(a, b)
	if a.priority ~= b.priority then
		return a.priority > b.priority
	end
	return a.auraInstanceID < b.auraInstanceID
end

function AuraComparator.prioNew(a, b)
	if a.priority ~= b.priority then
		return a.priority > b.priority
	end
	return a.auraInstanceID > b.auraInstanceID
end

function AuraComparator.scaleOld(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	return a.auraInstanceID < b.auraInstanceID
end

function AuraComparator.scaleNew(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	return a.auraInstanceID > b.auraInstanceID
end

function AuraComparator.scalePrioOld(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	return AuraComparator.prioOld(a, b)
end

function AuraComparator.scalePrioNew(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	return AuraComparator.prioNew(a, b)
end

function AuraComparator.scaleDebuffOld(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return a.isHarmful
	end
	return a.auraInstanceID < b.auraInstanceID
end

function AuraComparator.scaleDebuffNew(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return a.isHarmful
	end
	return a.auraInstanceID > b.auraInstanceID
end

function AuraComparator.scaleBuffOld(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return b.isHarmful
	end
	return a.auraInstanceID < b.auraInstanceID
end

function AuraComparator.scaleBuffNew(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return b.isHarmful
	end
	return a.auraInstanceID > b.auraInstanceID
end

function AuraComparator.scaleDebuffPrioOld(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return a.isHarmful
	end
	return AuraComparator.prioOld(a, b)
end

function AuraComparator.scaleDebuffPrioNew(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return a.isHarmful
	end
	return AuraComparator.prioNew(a, b)
end

function AuraComparator.scaleBuffPrioOld(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return b.isHarmful
	end
	return AuraComparator.prioOld(a, b)
end

function AuraComparator.scaleBuffPrioNew(a, b)
	if a.scale ~= b.scale then
		return a.scale > b.scale
	end
	if a.isHarmful ~= b.isHarmful then
		return b.isHarmful
	end
	return AuraComparator.prioNew(a, b)
end

-- in DF, tooltip shows an empty text if the spell hasn't been cached yet
local function AuraTooltip_OnUpdate(self, elapsed)
	if module.isInTestMode then
		return
	end

	self.updateTooltipTimer = self.updateTooltipTimer - elapsed
	if self.updateTooltipTimer > 0 then
		return
	end
	self.updateTooltipTimer = TOOLTIP_UPDATE_TIME
	local owner = self:GetOwner()
	if owner then
		if owner.container.filter == "HELPFUL" then
			self:SetUnitBuffByAuraInstanceID(owner.container.unit, owner.auraInstanceID, owner.filter)
		else
			if owner.isBossBuff then
				self:SetUnitBuffByAuraInstanceID(owner.container.unit, owner.auraInstanceID, owner.filter)
			else
				self:SetUnitDebuffByAuraInstanceID(owner.container.unit, owner.auraInstanceID, owner.filter)
			end
		end

		if E.global.quickBlacklist then
			local spellId = owner.spellId
			if spellId and blacklist[spellId] == nil and IsControlKeyDown() and IsAltKeyDown() then
				local spellName = GetSpellInfo(spellId)
				blacklist[spellId] = true
				E:AddAuraToBlacklist(spellId)
				E:ACR_NotifyChange()
				module:Refresh()
				E.write(format(L["%s added to blacklist"], spellName))
			end
		end
	end
end
AuraTooltip:SetScript("OnUpdate", AuraTooltip_OnUpdate)

local function Overlay_OnEnter(self)
	AuraTooltip:SetOwner(self, "ANCHOR_RIGHT", 0, 0)
	if module.isInTestMode and self.spellId then -- test auras have fake auraInstanceID
		AuraTooltip:SetSpellByID(self.spellId)
	elseif self.auraInstanceID then
		if self.container.filter == "HELPFUL" then
			AuraTooltip:SetUnitBuffByAuraInstanceID(self.container.unit, self.auraInstanceID, self.filter)
		else
			if self.isBossBuff then
				AuraTooltip:SetUnitBuffByAuraInstanceID(self.container.unit, self.auraInstanceID, self.filter)
			else
				AuraTooltip:SetUnitDebuffByAuraInstanceID(self.container.unit, self.auraInstanceID, self.filter)
			end
		end
	end
end

local function Overlay_OnLeave()
	AuraTooltip:Hide()
end

local function ClearHideOverlayFrame(self)
	self:Hide()
	if self.spellId then
		self.spellId = nil
		self.expirationTime = nil
		self.stack = nil
		self.iconTexture = nil
		self.cooldown:Clear()
		self.debuffScale = nil
	end
	if self.HighlightFlash.Anim:IsPlaying() then
		self.HighlightFlash.Anim:Stop()
		self.HighlightFlash:Hide()
	end
end

local pendingPassThroughButtons = {}
local function UpdatePassThroughButtons()
	for i = #pendingPassThroughButtons, 1, -1 do
		local overlay = pendingPassThroughButtons[i]
		overlay:SetPassThroughButtons("LeftButton", "RightButton")
		overlay.isPassThrough = true
		if overlay.container.db.showTooltip then
			overlay:EnableMouse(true)
		end
		pendingPassThroughButtons[i] = nil
	end
end

local textureUVs = {
	"borderTop", "borderBottom", "borderRight", "borderLeft",
}

local function CreateOverlay(container, inherit)
	local overlay = CreateFrame("Button", nil, container, inherit or "OmniAurasUnitAuraTemplate")
	overlay.container = container
	overlay.cooldown.counter = overlay.cooldown:GetRegions()
	overlay.count = overlay.CountFrame.Count
	if container.frameType ~= "unitFrame" then -- TT
		overlay:SetScript("OnEnter", Overlay_OnEnter)
		overlay:SetScript("OnLeave", Overlay_OnLeave)
		if overlay.SetPassThroughButtons then
			if module.inLockdown then
				tinsert(pendingPassThroughButtons, overlay)
			else
				overlay:SetPassThroughButtons("LeftButton", "RightButton")
				overlay.isPassThrough = true
			end
		end
	end
	for _, pieceName in ipairs(textureUVs) do
		local region = overlay[pieceName]
		if region then
			region:SetTexelSnappingBias(0.0)
			region:SetSnapToPixelGrid(false)
		end
	end
	overlay.icon:SetTexelSnappingBias(0.0)
	overlay.icon:SetSnapToPixelGrid(false)
	return overlay
end

--
-- Unit Frame
--

-- UF aura.scale is nil. use sort method without comparing scale
local function UnitFrame_ProcessAura(self, aura)
	if not aura or not aura.name then
		return false
	end
	local spellId, sourceUnit = aura.spellId, aura.sourceUnit
	local enabledAuraData = not blacklist[spellId] and self.enabledAura[spellId]
	if enabledAuraData
		and (self.isMerged or aura[self.auraType])
		and (not Aura_NoFriend[spellId] or (self.auraType == "isHarmful" and sourceUnit and UnitCanAttack("player", sourceUnit))) then
		aura.priority = self.priority[ enabledAuraData[1] ]
		aura.forceGlow = self.db.alwaysGlowCC and (enabledAuraData[1] == "hardCC" or enabledAuraData[1] == "softCC")
		return true
	end
end

local function UnitFrame_ParseAllAuras(self, unit)
	if module.isInTestMode then
		module.InjectTestAuras(self)
		return
	end

	if self.auraInfo == nil then
		self.auraInfo = TableUtil.CreatePriorityTable(self.sorter, true)
	else
		self.auraInfo:Clear()
	end

	local batchCount = nil
	local usePackedAura = true
	local function HandleAura(aura)
		local type = UnitFrame_ProcessAura(self, aura)
		if type then
			self.auraInfo[aura.auraInstanceID] = aura
		end
	end
	AuraUtil_ForEachAura(unit, self.filter, batchCount, HandleAura, usePackedAura)

	if self.filter == "HARMFUL" then
		local guid = self.guid or UnitGUID(unit)
		if SpellLockedGUIDS[guid] then
			for auraInstanceID, callbackTimer in pairs(SpellLockedGUIDS[guid]) do
				--local aura = callbackTimer.args[3] -- can use src table for UF as scale doesn't change -> priority can -> =(
				local aura = E:DeepCopy(callbackTimer.args[3])
				aura.priority = self.priority.softCC + 1
				self.auraInfo[auraInstanceID] = aura
			end
		end
		if self.isMerged then
			AuraUtil_ForEachAura(unit, "HELPFUL", batchCount, HandleAura, usePackedAura)
		end
	end
end

local function UnitFrame_OnEvent(self, event, ...)
	if event == 'UNIT_AURA' then
		local unit, unitAuraUpdateInfo, auraChanged = ...

		if unitAuraUpdateInfo == nil or unitAuraUpdateInfo.isFullUpdate or self.auraInfo == nil then
			self:ParseAllAuras(unit)
			auraChanged = true
		else
			if unitAuraUpdateInfo.addedAuras ~= nil then
				for i, aura in ipairs(unitAuraUpdateInfo.addedAuras) do
					local type = UnitFrame_ProcessAura(self, aura)
					if type then
						self.auraInfo[aura.auraInstanceID] = aura
						auraChanged = true
					end
				end
			end

			if unitAuraUpdateInfo.updatedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.updatedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						local newAura = C_UnitAuras_GetAuraDataByAuraInstanceID(unit, auraInstanceID)
						if newAura ~= nil then
							newAura.priority = self.auraInfo[auraInstanceID].priority
							newAura.scale = self.auraInfo[auraInstanceID].scale
						end
						self.auraInfo[auraInstanceID] = newAura
						auraChanged = true
					end
				end
			end

			if unitAuraUpdateInfo.removedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.removedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						self.auraInfo[auraInstanceID] = nil
						auraChanged = true
					end
				end
			end
		end

		if auraChanged then
			local aura = self.auraInfo:GetTop()
			if not aura then
				local overlay = self[1]
				ClearHideOverlayFrame(overlay)
				return
			end

			local count, expirationTime, spellId, icon, duration = aura.applications, aura.expirationTime, aura.spellId, aura.icon, aura.duration
			local overlay = self[1]
			if spellId ~= overlay.spellId or aura.expirationTime ~= overlay.expirationTime or count ~= overlay.stack then
				if count > 1 then
					overlay.count:SetText(count)
					overlay.count:Show()
				else
					overlay.count:Hide()
				end
				overlay.icon:SetTexture(icon)
				if expirationTime > 0 then
					local startTime = expirationTime - duration
					overlay.cooldown:SetCooldown(startTime, duration)
					if self.shouldGlow and (Aura_Enabled.glow[spellId] or aura.forceGlow) and spellId ~= overlay.spellId and GetTime() - startTime < 0.1 then
						overlay.HighlightFlash:Show()
						overlay.HighlightFlash.Anim:Play()
					elseif overlay.HighlightFlash.Anim:IsPlaying() then
						overlay.HighlightFlash.Anim:Stop()
						overlay.HighlightFlash:Hide()
					end
				else
					overlay.cooldown:Clear()
					if overlay.HighlightFlash.Anim:IsPlaying() then
						overlay.HighlightFlash.Anim:Stop()
						overlay.HighlightFlash:Hide()
					end
				end
				overlay.spellId = spellId
				overlay.expirationTime = expirationTime
				overlay.stack = count
				overlay.iconTexture = icon
				overlay:Show()
			end
		end
	elseif event == 'PLAYER_TARGET_CHANGED' or event == 'PLAYER_FOCUS_CHANGED' then
		local unit = self.unit
		local guid = UnitGUID(unit)
		if guid then -- don't run on target removal -> have to toggle visibility for manual position
			self.guid = guid
			UnitFrame_OnEvent(self, 'UNIT_AURA', unit, nil)
			self:Show()
		else
			self:Hide()
		end
	end
end

local DebuffTypeColor = {}
DebuffTypeColor["none"] = { r = 0.80, g = 0, b = 0 }
DebuffTypeColor["Magic"] = { r = 0.20, g = 0.60, b = 1.00 }
DebuffTypeColor["Curse"] = { r = 0.60, g = 0.00, b = 1.00 }
DebuffTypeColor["Disease"] = { r = 0.60, g = 0.40, b = 0 }
DebuffTypeColor["Poison"] = { r = 0.00, g = 0.60, b = 0 }
DebuffTypeColor[""] = DebuffTypeColor["none"]
local AdjustedDebuffTypeColor, AdjustedDebuffTypeColorArena, AdjustedDebuffTypeColorNamePlate = {}, {}, {}

local UnitFrameDebuffType_BossDebuff = 5
local UnitFrameDebuffType_BossBuff = 4
local UnitFrameDebuffType_PriorityDebuff = 3
local UnitFrameDebuffType_NonBossRaidDebuff = 2
local UnitFrameDebuffType_NonBossDebuff = 1

local function CompactArenaFrame_ProcessAura(self, aura)
	if not aura or not aura.name then
		return false
	end
	local spellId = aura.spellId
	if not blacklist[spellId] then
		local enabledAuraData = self.enabledAura[spellId]
		if enabledAuraData then
			if (self.isMerged or aura[self.auraType])
				and (not Aura_NoFriend[spellId] or (self.auraType == "isHarmful" and aura.sourceUnit and UnitCanAttack("player", aura.sourceUnit))) then
				local type = enabledAuraData[1]
				local scale = self.db.typeScale and self.db.typeScale[type] or 1
				if self.db.largerIcon and Aura_Enabled.largerIcon[spellId] then
					scale = scale * self.db.largerIcon
				end
				aura.scale = scale
				aura.priority = self.priority[type]
				aura.forceGlow = self.db.alwaysGlowCC and (enabledAuraData[1] == "hardCC" or enabledAuraData[1] == "softCC")
				return true
			end
		elseif self.db.redirectBlizzardDebuffs then
			local priority
			if aura.isBossAura then
				priority = aura.isHarmful and UnitFrameDebuffType_BossDebuff or UnitFrameDebuffType_BossBuff
			elseif aura.isHarmful then
				if AuraUtil_IsPriorityDebuff(spellId) then
					priority = UnitFrameDebuffType_PriorityDebuff
				elseif AuraUtil.ShouldDisplayDebuff(aura.sourceUnit, spellId) then
					priority = UnitFrameDebuffType_NonBossDebuff
				end
			end
			if priority then
				aura.scale = aura.isBossAura and module.arenaCurrBossScale or 1
				aura.priority = priority
				return true
			end
		end
	end
end

local function CompactArenaFrame_ParseAllAuras(self, unit)
	if module.isInTestMode then
		module.InjectTestAuras(self)
		return
	end

	if self.auraInfo == nil then
		self.auraInfo = TableUtil.CreatePriorityTable(self.sorter, true)
	else
		self.auraInfo:Clear()
	end

	local batchCount = nil
	local usePackedAura = true
	local function HandleAura(aura)
		local type = CompactArenaFrame_ProcessAura(self, aura)
		if type then
			self.auraInfo[aura.auraInstanceID] = aura
		end
	end
	AuraUtil_ForEachAura(unit, self.filter, batchCount, HandleAura, usePackedAura)

	if self.filter == "HARMFUL" then
		local guid = self.guid or UnitGUID(unit)
		if SpellLockedGUIDS[guid] then
			for auraInstanceID, callbackTimer in pairs(SpellLockedGUIDS[guid]) do
				local aura = E:DeepCopy(callbackTimer.args[3])
				aura.scale = self.db.typeScale.softCC + 1
				aura.priority = self.priority.softCC
				self.auraInfo[auraInstanceID] = aura
			end
		end
		if self.isMerged then
			AuraUtil_ForEachAura(unit, "HELPFUL", batchCount, HandleAura, usePackedAura)
		end
	end
end

local function CompactArenaFrame_OnEvent(self, event, ...)
	if event == 'UNIT_AURA' then
		local unitId, unitAuraUpdateInfo, auraChanged = ...

		if unitAuraUpdateInfo == nil or unitAuraUpdateInfo.isFullUpdate or self.auraInfo == nil then
			self:ParseAllAuras(unitId)
			auraChanged = true
		else
			if unitAuraUpdateInfo.addedAuras ~= nil then
				for i, aura in ipairs(unitAuraUpdateInfo.addedAuras) do
					local type = CompactArenaFrame_ProcessAura(self, aura)
					if type then
						self.auraInfo[aura.auraInstanceID] = aura
						auraChanged = true
					end
				end
			end

			if unitAuraUpdateInfo.updatedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.updatedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						local newAura = C_UnitAuras_GetAuraDataByAuraInstanceID(unitId, auraInstanceID)
						if newAura ~= nil then
							newAura.priority = self.auraInfo[auraInstanceID].priority
							newAura.scale = self.auraInfo[auraInstanceID].scale
						end
						self.auraInfo[auraInstanceID] = newAura
						auraChanged = true
					end
				end
			end

			if unitAuraUpdateInfo.removedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.removedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						self.auraInfo[auraInstanceID] = nil
						auraChanged = true
					end
				end
			end
		end

		if auraChanged then
			local frameNum = self.auraInfo:Size()
			local oldNum = self.frameNum
			if frameNum == 0 and oldNum and oldNum > 0 then
				for i = 1, oldNum do
					local overlay = self[i]
					ClearHideOverlayFrame(overlay)
				end
				self.frameNum = frameNum
				return
			end

			local now = GetTime()
			local isDebuff = self.filter == "HARMFUL"
			local db = self.db
			local maxIcons = db.maxIcons
			local currBaseSize = module.arenaCurrBaseSize
			local currMaxScale = module.arenaCurrMaxScale
			local numInnerDebuffs = isDebuff and module.arenaNumInnerDebuffs
			local numUnused
			frameNum = 1
			self.auraInfo:Iterate(function(auraInstanceID, aura)
				local overlay = self[frameNum]
				local count, expirationTime, spellId, icon, duration = aura.applications, aura.expirationTime, aura.spellId, aura.icon, aura.duration
				if spellId ~= overlay.spellId or expirationTime ~= overlay.expirationTime or count ~= overlay.stack then
					overlay.icon:SetTexture(icon)
					if count > 1 then
						if count >= 100 then
							count = BUFF_STACKS_OVERFLOW
						end
						overlay.count:SetText(count)
						overlay.count:Show()
					else
						overlay.count:Hide()
					end
					if expirationTime and expirationTime ~= 0 then
						local startTime = expirationTime - duration
						overlay.cooldown:SetCooldown(startTime, duration)
						if db.glow and (Aura_Enabled.glow[spellId] or aura.forceGlow) and spellId ~= overlay.spellId and now - startTime < 0.1 then
							overlay.HighlightFlash:Show()
							overlay.HighlightFlash.Anim:Play()
						elseif overlay.HighlightFlash.Anim:IsPlaying() then
							overlay.HighlightFlash.Anim:Stop()
							overlay.HighlightFlash:Hide()
						end
					else
						overlay.cooldown:Clear()
						if overlay.HighlightFlash.Anim:IsPlaying() then
							overlay.HighlightFlash.Anim:Stop()
							overlay.HighlightFlash:Hide()
						end
					end

					if isDebuff then
						local scale = (not numInnerDebuffs or frameNum < numInnerDebuffs) and aura.scale or 1
						if scale > 1 and numInnerDebuffs then
							scale = min(scale, currMaxScale)
						end
						if scale ~= overlay.debuffScale then
							local debuffSize
							if scale > 1 then
								debuffSize = scale * currBaseSize
							else
								debuffSize = currBaseSize
							end
							overlay:SetSize(debuffSize, debuffSize)
							overlay.cooldown.counter:SetScale(module.arenaCurrCounterScale * db.counterScale * scale)
							overlay.cooldown:SetHideCountdownNumbers(db.hideCounter or (scale == 1 and db.hideNonCCCounter))
							overlay.HighlightFlash:SetScale(debuffSize / BASE_ICON_SIZE)
							overlay.debuffScale = scale
						end
						if db.borderType == "blizzard" then
							local color = DebuffTypeColor[aura.dispelName] or DebuffTypeColor["none"]
							overlay.border:SetVertexColor(color.r, color.g, color.b)
						elseif db.borderType == "pixelDebuff" then
							local color = AdjustedDebuffTypeColorArena[aura.dispelName] or AdjustedDebuffTypeColorArena["none"]
							local r, g, b = color.r, color.g, color.b
							overlay.borderTop:SetVertexColor(r, g, b)
							overlay.borderBottom:SetVertexColor(r, g, b)
							overlay.borderLeft:SetVertexColor(r, g, b)
							overlay.borderRight:SetVertexColor(r, g, b)
						end
					end
					overlay.filter = nil
					overlay.auraInstanceID = auraInstanceID
					overlay.spellId = spellId
					overlay.expirationTime = expirationTime
					overlay.stack = count
					overlay.iconTexture = icon
					overlay:Show()
				end

				if numInnerDebuffs and frameNum < numInnerDebuffs then
					local currentFrameScale = overlay.debuffScale
					if currentFrameScale and currentFrameScale > 1 then
						numUnused = (numUnused or 0) + (currentFrameScale - 1)
					end
					if numUnused then
						local numEffectiveInnerFrames = floor(module.arenaTotInnerDebuffs - numUnused)
						if frameNum >= numEffectiveInnerFrames then
							for i = frameNum + 1, numInnerDebuffs do
								local ol = self[i]
								ClearHideOverlayFrame(ol)
							end
							frameNum = numInnerDebuffs
						end
					end
				end
				frameNum = frameNum + 1

				return frameNum > maxIcons
			end)

			if maxIcons > 1 and db.point == "CENTER" then
				local newOffsetX = -currBaseSize / 2 * (frameNum - 2)
				if (unitAuraUpdateInfo == nil or newOffsetX ~= self.cOffsetX) then
					local leadOverlay = self[1]
					leadOverlay:ClearAllPoints()
					leadOverlay:SetPoint(db.point, self, db.point, newOffsetX, 0)
					self.cOffsetX = newOffsetX
				end
			end

			frameNum = frameNum - 1
			if oldNum and oldNum > frameNum then
				for i = frameNum + 1, oldNum do
					local overlay = self[i]
					ClearHideOverlayFrame(overlay)
				end
			end
			self.frameNum = frameNum
		end
	elseif event == 'ARENA_OPPONENT_UPDATE' then
		local unit, updateReason = ...
		if unit == self.unit then -- 'arenaN' is invalid for RegisterUnitEvent
			-- toggle visibility to prevent last icon texture being shown on a new "seen" event
			if updateReason == "seen" then
				local guid = UnitGUID(unit)
				if guid then
					self.guid = guid
					CompactArenaFrame_OnEvent(self, 'UNIT_AURA', unit, nil)
				end
				self:Show()
			elseif updateReason == "unseen" then
				self:Hide()
			end
		end
	end
end

-- NOTE: UF uses fake unitIds for player, and party1-4
local function UnitFrame_RegisterUnitAura(self, unit, filter)
	local unitId = unit == "player" and "uplayer" or unit
	ActiveUnitContainer[filter][unitId] = self
	self:RegisterUnitEvent('UNIT_AURA', unit)
	self:UpdateAuras('UNIT_AURA', unit, nil)
	self:Show()
end

local function UnitFrame_UnregisterUnitAura(self, unit, filter)
	unit = unit == "player" and "uplayer" or unit
	if ActiveUnitContainer[filter][unit] then
		ActiveUnitContainer[filter][unit] = nil
		self:UnregisterEvent('UNIT_AURA')
		self:Hide() -- this isn't needed here. see Nameplate_UnregisterUnitAura
	end
end

local UF_FRAMENAME = {
	["player"]="PlayerFrame",["target"]="TargetFrame",["focus"]="FocusFrame",["pet"]="PetFrame",
	["arena1"]="CompactArenaFrameMember1",["arena2"]="CompactArenaFrameMember2",["arena3"]="CompactArenaFrameMember3",["arena4"]="CompactArenaFrameMember4",["arena5"]="CompactArenaFrameMember5", -- 10.1.5
--	["arena1"]="ArenaEnemyMatchFrame1",["arena2"]="ArenaEnemyMatchFrame2",["arena3"]="ArenaEnemyMatchFrame3",["arena4"]="ArenaEnemyMatchFrame4",["arena5"]="ArenaEnemyMatchFrame5", -- now loads in BG only
--	["targettarget"]="TargetFrameToT",["focustarget"]="FocusFrameToT",
}
for memberFrame in PartyFrame.PartyMemberFramePool:EnumerateActive() do
	UF_FRAMENAME[memberFrame.unit] = memberFrame -- memberFrame can now be directly accessed via _G.PartyFrame.MemberFrame1-4 (no frame name)
end

local UF_UNITTYPE = {
	["player"]="player",["target"]="target",["focus"]="focus",["pet"]="pet",
	["party1"]="party",["party2"]="party",["party3"]="party",["party4"]="party",
	["arena1"]="arena",["arena2"]="arena",["arena3"]="arena",["arena4"]="arena",["arena5"]="arena",
--	["targettarget"]="targettarget",["focustarget"]="focustarget",
}

local AURA_FILTER = { "HARMFUL", "HELPFUL" }

function module:CreateUnitFrameOverlays_OnLoad()
	for unit, frameName in pairs(UF_FRAMENAME) do
		local unitType = UF_UNITTYPE[unit]
		local isArenaUnit = unitType == "arena"
		local uf = unitType == "party" and frameName or _G[frameName]
		if uf and not UnitFrameContainer[unit] then
			UnitFrameContainer[unit] = {}

			-- All db settings are done in Refresh for UF
			-- NOTE: UnitFrame_Initialize will save each portrait frame reference to frame.portrait (arena saved in .classPortrait .specPortrait)
			local portrait = (unitType == "party" and frameName.portrait) or _G[frameName].portrait
			for _, filter in pairs(AURA_FILTER) do
				local isHARMFUL = filter == "HARMFUL"
				local container = CreateFrame("Frame", nil, UIParent)
				if isArenaUnit then -- parenting to UF causes taint in 10.1.7
					container.parent = uf
					container:SetParent(uf)
				end
				container:SetSize(1, 1)
				container.frameType = isArenaUnit and "arenaFrame" or "unitFrame"
				container.filter = filter
				container.auraType = isHARMFUL and "isHarmful"or "isHelpful"
				container.ParseAllAuras = isArenaUnit and CompactArenaFrame_ParseAllAuras or UnitFrame_ParseAllAuras
				container.UpdateAuras = isArenaUnit and CompactArenaFrame_OnEvent or UnitFrame_OnEvent
				container:SetScript("OnEvent", container.UpdateAuras)

				container.unit = unit
				container.guid = unit == "player" and E.userGUID
				container.enabledAura = unit == "player" and Aura_Enabled.playerFrame or (isArenaUnit and Aura_Enabled.arenaFrame) or Aura_Enabled.unitFrame
				container.isArenaDebuff = isHARMFUL and isArenaUnit
				container.key = format("%s%s%s", "OmniAuras", unitType == "party" and "PartyMemberFrame" .. frameName.layoutIndex or frameName, filter)
				container:SetMovable(true)
				container.portrait = portrait

				local n = isArenaUnit and NUM_AF_OVERLAYS[filter] or NUM_UF_OVERLAYS
				for j = 1, n do
					local overlay
					if isArenaUnit then
						overlay = CreateOverlay(container, isHARMFUL and "OmniAurasCompactDebuffTemplate" or "OmniAurasCompactAuraTemplate")
						overlay.cooldown.counter:SetFontObject(E.RFCounter)
					else
						overlay = CreateOverlay(container)
						overlay.cooldown.counter:SetFontObject(E.UFCounter)
						overlay.count:SetFontObject("NumberFontNormalLarge")
						overlay.count:ClearAllPoints()
						overlay.count:SetPoint("TOPRIGHT", 3, 2)
						overlay.portrait = portrait
						overlay.portraitParent = portrait:GetParent()
					end
					overlay:SetScript("OnMouseDown", E.OmniAurasAnchor_OnMouseDown)
					overlay:SetScript("OnMouseUp", E.OmniAurasAnchor_OnMouseUp)
					container[j] = overlay
				end
				UnitFrameContainer[unit][filter] = container
			end
		end
	end
end

--
-- Compact Unit Frame
--

OmniAurasCompactUnitPrivateAuraAnchorMixin = {}

function OmniAurasCompactUnitPrivateAuraAnchorMixin:SetUnit(unit)
	if unit == self.unit then
		return
	end
	self.unit = unit

	if self.anchorID then
		C_UnitAuras.RemovePrivateAuraAnchor(self.anchorID)
		self.anchorID = nil
	end

	if unit then
		local iconAnchor =
		{
			point = "CENTER",
			relativeTo = self,
			relativePoint = "CENTER",
			offsetX = 0,
			offsetY = 0,
		}

		local privateAnchorArgs = {}
		privateAnchorArgs.unitToken = unit
		privateAnchorArgs.auraIndex = self.auraIndex
		privateAnchorArgs.parent = self
		privateAnchorArgs.showCountdownFrame = true
		privateAnchorArgs.showCountdownNumbers = false
		privateAnchorArgs.iconInfo =
		{
			iconAnchor = iconAnchor,
			iconWidth = self:GetWidth(),
			iconHeight = self:GetHeight(),
		}
		privateAnchorArgs.durationAnchor = nil

		self.anchorID = C_UnitAuras.AddPrivateAuraAnchor(privateAnchorArgs)
	end
end

local function CompactUnitFrame_UpdatePrivateAuras(self)
	if not self.PrivateAuraAnchors then
		return
	end

	if self.PrivateAuraAnchors then
		for _, auraAnchor in ipairs(self.PrivateAuraAnchors) do
			auraAnchor:SetUnit(self.unit)
		end
	end

	local lastShownDebuff
	if module.numInnerDebuffs then
		for i = module.numInnerDebuffs, 1, -1 do
			local debuff = self[i]
			if debuff:IsShown() then
				lastShownDebuff = debuff
				break
			end
		end
	else
		lastShownDebuff = self[self.frameNum]
	end
	self.PrivateAuraAnchor1:ClearAllPoints()
	if lastShownDebuff then
		if self.db.preset == "raidFrameLeft" then
			self.PrivateAuraAnchor1:SetPoint("BOTTOMRIGHT", lastShownDebuff, "BOTTOMLEFT", 0, 0)
		else
			self.PrivateAuraAnchor1:SetPoint("BOTTOMLEFT", lastShownDebuff, "BOTTOMRIGHT", 0, 0)
		end
	else
		if self.db.preset == "raidFrameLeft" then
			self.PrivateAuraAnchor1:SetPoint("BOTTOMRIGHT", self[1], "BOTTOMRIGHT", 0, 0)
		else
			self.PrivateAuraAnchor1:SetPoint("BOTTOMLEFT", self[1], "BOTTOMLEFT", 0, 0)
		end
	end
end

local function CompactUnitFrame_ProcessAura(self, aura)
	if not aura or not aura.name then
		return false
	end
	local spellId = aura.spellId
	if not blacklist[spellId] then
		if self.isMyBuffs then -- include enabledAura since it can be masked by higher priorities
			if not aura.isBossAura and aura.isHelpful then
				local priority = AuraUtil_ShouldDisplayBuff(aura.sourceUnit, spellId, aura.canApplyAura) and UnitFrameDebuffType_NonBossDebuff
				if priority then
					aura.priority = priority
					return true
				end
			end
			return
		end

		local enabledAuraData = self.enabledAura[spellId]
		if enabledAuraData then
			if aura[self.auraType] and (not Aura_NoFriend[spellId] or (self.auraType == "isHarmful" and aura.sourceUnit and UnitCanAttack("player", aura.sourceUnit))) then
				local type = enabledAuraData[1]
				local scale = self.db.typeScale and self.db.typeScale[type] or 1
				if self.db.largerIcon and Aura_Enabled.largerIcon[spellId] then -- only harmful has this for now
					scale = scale * self.db.largerIcon
				end
				aura.scale = scale
				aura.priority = aura.isHarmful and aura.dispelName == "none" and self.priority[type] + 1 or self.priority[type]
				return true
			end
		elseif self.db.redirectBlizzardDebuffs then -- redirect debuffs that aren't enabledAura
			local priority
			if aura.isBossAura then
				priority = aura.isHarmful and UnitFrameDebuffType_BossDebuff or UnitFrameDebuffType_BossBuff
			elseif aura.isHarmful then
				if aura.isRaid then
					priority = UnitFrameDebuffType_NonBossRaidDebuff
				elseif AuraUtil_IsPriorityDebuff(spellId) then
					priority = UnitFrameDebuffType_PriorityDebuff
				elseif AuraUtil.ShouldDisplayDebuff(aura.sourceUnit, spellId) then
					priority = UnitFrameDebuffType_NonBossDebuff
				end
			end
			if priority then
				aura.scale = aura.isBossAura and module.currBossScale or 1
				aura.priority = priority
				return true
			end
		end
	end
end

local function CompactUnitFrame_ParseAllAuras(self, unit)
	if module.isInTestMode then
		module.InjectTestAuras(self)
		return
	end

	if self.auraInfo == nil then
		self.auraInfo = TableUtil.CreatePriorityTable(self.sorter, true)
	else
		self.auraInfo:Clear()
	end

	local batchCount = nil
	local usePackedAura = true
	local function HandleAura(aura)
		local type = CompactUnitFrame_ProcessAura(self, aura)
		if type then
			self.auraInfo[aura.auraInstanceID] = aura
		end
	end
	AuraUtil_ForEachAura(unit, self.filter, batchCount, HandleAura, usePackedAura)

	if self.filter == "HARMFUL" then
		local guid = self.guid or UnitGUID(unit)
		if SpellLockedGUIDS[guid] then
			for auraInstanceID, callbackTimer in pairs(SpellLockedGUIDS[guid]) do
				local aura = E:DeepCopy(callbackTimer.args[3])
				aura.scale = self.db.typeScale.softCC
				aura.priority = self.priority.softCC + 1
				self.auraInfo[auraInstanceID] = aura
			end
		end
	end
end

local function CompactUnitFrame_OnEvent(self, event, ...)
	if event == 'UNIT_AURA' then
		local unitId, unitAuraUpdateInfo, auraChanged = ...

		if unitAuraUpdateInfo == nil or unitAuraUpdateInfo.isFullUpdate or self.auraInfo == nil then
			self:ParseAllAuras(unitId)
			auraChanged = true
		else
			if unitAuraUpdateInfo.addedAuras ~= nil then
				for i, aura in ipairs(unitAuraUpdateInfo.addedAuras) do
					local type = CompactUnitFrame_ProcessAura(self, aura)
					if type then
						self.auraInfo[aura.auraInstanceID] = aura
						auraChanged = true
					end
				end
			end

			if unitAuraUpdateInfo.updatedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.updatedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						local newAura = C_UnitAuras_GetAuraDataByAuraInstanceID(unitId, auraInstanceID)
						if newAura ~= nil then
							newAura.priority = self.auraInfo[auraInstanceID].priority
							newAura.scale = self.auraInfo[auraInstanceID].scale
						end
						self.auraInfo[auraInstanceID] = newAura
						auraChanged = true
					end
				end
			end

			if unitAuraUpdateInfo.removedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.removedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						self.auraInfo[auraInstanceID] = nil
						auraChanged = true
					end
				end
			end
		end

		if auraChanged then
			local frameNum = self.auraInfo:Size()
			local oldNum = self.frameNum
			if frameNum == 0 then
				if oldNum and oldNum > 0 then
					for i = 1, oldNum do
						local overlay = self[i]
						ClearHideOverlayFrame(overlay)
					end
				end
				self.frameNum = frameNum

				if self.detachedFrameNum and self.detachedFrameNum > 0 then
					for i = self.detachedFrameNum, 1, -1 do
						local overlay = self[UNDETACHEDFRAME_LASTINDEX + i]
						ClearHideOverlayFrame(overlay)
					end
				end
				self.detachedFrameNum = frameNum
				--CompactUnitFrame_UpdatePrivateAuras(self)
				return
			end

			local isDebuff = self.filter == "HARMFUL"
			local now = GetTime()
			local db = self.db
			local maxIcons = module.maxOverlays[self.rawFilter] or db.maxIcons
			local currBaseSize = module.currBaseSize
			local currMaxScale = module.currMaxScale
			local numInnerDebuffs = isDebuff and module.numInnerDebuffs
			local numUnused
			local detachedFrameNum = 1
			frameNum = 1
			self.auraInfo:Iterate(function(auraInstanceID, aura)
				local count, expirationTime, spellId, icon, duration = aura.applications, aura.expirationTime, aura.spellId, aura.icon, aura.duration

				local debuffScale
				if isDebuff then
					if numInnerDebuffs then
						debuffScale = frameNum < numInnerDebuffs and aura.scale or 1
						if debuffScale > 1 then
							debuffScale = min(debuffScale, currMaxScale) -- limit used for inner overlays (inner doesn't use db.scale and is fixed @1)
						end
						if frameNum <= numInnerDebuffs then
							numUnused = (numUnused or 0) + (debuffScale - 1)
							local numEffectiveInnerFrames = floor(module.totInnerDebuffs - numUnused) -- use every available space to fit another frame in
							if frameNum > numEffectiveInnerFrames then
								debuffScale = 1
								for i = frameNum, numInnerDebuffs do
									local ol = self[i]
									ClearHideOverlayFrame(ol)
								end
								frameNum = numInnerDebuffs + 1
								-- If outer is being used then increase the soft cap to compensate for skipped inner frames, else just cut off.
								if db.alwaysShowMaxNumIcons or maxIcons > numInnerDebuffs then
									maxIcons = min(maxIcons + (numInnerDebuffs - numEffectiveInnerFrames), module.totDebuffs)
								end
							end
						end
					else
						debuffScale = aura.scale or 1
					end
				end

				if frameNum > maxIcons then
					return true -- end iteration
				end

				local overlay, isDetachedFrame
				if debuffScale and module.shouldDetachBigDebuffs then
					if debuffScale >= db.detachScale and detachedFrameNum <= db.detachMaxIcons then
						overlay = self[UNDETACHEDFRAME_LASTINDEX + detachedFrameNum]
						isDetachedFrame = true
					else
						overlay = self[frameNum]
						debuffScale = 1
					end
				else
					overlay = self[frameNum]
				end

				if spellId ~= overlay.spellId or expirationTime ~= overlay.expirationTime or count ~= overlay.stack then
					overlay.icon:SetTexture(icon)
					if count > 1 then
						if count >= 100 then
							count = BUFF_STACKS_OVERFLOW
						end
						overlay.count:SetText(count)
						overlay.count:Show()
					else
						overlay.count:Hide()
					end
					if expirationTime and expirationTime ~= 0 then
						local startTime = expirationTime - duration
						overlay.cooldown:SetCooldown(startTime, duration)
					--	if db.glow and Aura_Enabled.glow[spellId] and icon ~= overlay.iconTexture and now - startTime < 0.1 then
						if db.glow and Aura_Enabled.glow[spellId] and spellId ~= overlay.spellId and now - startTime < 0.1 then -- fix aura's with trigger+effect that uses the same texture (e.g. Binding Shot)
							overlay.HighlightFlash:Show()
							overlay.HighlightFlash.Anim:Play()
						elseif overlay.HighlightFlash.Anim:IsPlaying() then
							overlay.HighlightFlash.Anim:Stop()
							overlay.HighlightFlash:Hide()
						end
					else
						overlay.cooldown:Clear()
						if overlay.HighlightFlash.Anim:IsPlaying() then
							overlay.HighlightFlash.Anim:Stop()
							overlay.HighlightFlash:Hide()
						end
					end

					if isDebuff then
						if debuffScale ~= overlay.debuffScale then
							local debuffSize
							if debuffScale > 1 then
								debuffSize = debuffScale * currBaseSize
							else
								debuffSize = currBaseSize
							end
							overlay:SetSize(debuffSize, debuffSize) -- set size instead of scale for pixel borders
							overlay.cooldown.counter:SetScale(module.currCounterScale * db.counterScale * debuffScale)
							overlay.cooldown:SetHideCountdownNumbers(db.hideCounter or (debuffScale == 1 and db.hideNonCCCounter))
							overlay.HighlightFlash:SetScale(debuffSize / BASE_ICON_SIZE)
							overlay.debuffScale = debuffScale
						end
						if db.borderType == "blizzard" then
							local color = DebuffTypeColor[aura.dispelName] or DebuffTypeColor["none"]
							overlay.border:SetVertexColor(color.r, color.g, color.b)
						elseif db.borderType == "pixelDebuff" then
							local color = AdjustedDebuffTypeColor[aura.dispelName] or AdjustedDebuffTypeColor["none"]
							local r, g, b = color.r, color.g, color.b
							overlay.borderTop:SetVertexColor(r, g, b)
							overlay.borderBottom:SetVertexColor(r, g, b)
							overlay.borderLeft:SetVertexColor(r, g, b)
							overlay.borderRight:SetVertexColor(r, g, b)
						end
					else
						overlay.isBossBuff = aura.isBossAura -- TT
					end
					overlay.filter = aura.isRaid and AuraUtil.AuraFilters.Raid or nil -- TT
					overlay.auraInstanceID = auraInstanceID -- TT
					overlay.spellId = spellId
					overlay.expirationTime = expirationTime
					overlay.stack = count
					overlay.iconTexture = icon
					overlay:Show()
				end

				if isDetachedFrame then
					detachedFrameNum = detachedFrameNum + 1
				else
					frameNum = frameNum + 1
				end

				return false
			end)

			if maxIcons > 1 and db.point == "CENTER" then
				local newOffsetX = -currBaseSize / 2 * (frameNum - 2)
				if (unitAuraUpdateInfo == nil or newOffsetX ~= self.cOffsetX) then -- nil check to force update on reg unitaura
					local leadOverlay = self[1]
					leadOverlay:ClearAllPoints()
					leadOverlay:SetPoint(db.point, self, db.point, newOffsetX, 0)
					self.cOffsetX = newOffsetX
				end
			end

			frameNum = frameNum - 1
			if oldNum and oldNum > frameNum then
				for i = frameNum + 1, oldNum do
					local ol = self[i]
					ClearHideOverlayFrame(ol)
				end
			end
			self.frameNum = frameNum

			detachedFrameNum = detachedFrameNum - 1
			if self.detachedFrameNum and self.detachedFrameNum > detachedFrameNum then
				for i = detachedFrameNum + 1, self.detachedFrameNum do
					local ol = self[UNDETACHEDFRAME_LASTINDEX + i]
					ClearHideOverlayFrame(ol)
				end
			end
			self.detachedFrameNum = detachedFrameNum
			--CompactUnitFrame_UpdatePrivateAuras(self)
		end
	elseif event == 'PLAYER_REGEN_ENABLED' or event == 'PLAYER_REGEN_DISABLED' then
		CompactUnitFrame_OnEvent(self, 'UNIT_AURA', self.unit, nil)
	end
end

local function CompactUnitFrame_RegisterUnitAura(self, unit, filter, guid, isRefresh)
	if ActiveUnitContainer[filter][unit] ~= self -- compare CRF-to-unitId (raid)
		or self.guid ~= guid -- compare CPF-to-unit (party)
		or isRefresh then -- Refresh hides all overlays so force update
		self:UnregisterEvent('UNIT_AURA')
		self:RegisterUnitEvent('UNIT_AURA', unit)
		if filter ~= "HELPFUL" then
			self:RegisterEvent('PLAYER_REGEN_ENABLED')
			self:RegisterEvent('PLAYER_REGEN_DISABLED')
		end
		ActiveUnitContainer[filter][unit] = self
		self.unit = unit
		self.guid = guid
		CompactUnitFrame_OnEvent(self, 'UNIT_AURA', unit, nil) -- pass nil to force update
		self:Show()
	end

	if ( filter ~= "HELPFUL" ) then
		local shouldHide = filter == "MYHELPFUL" or self.db.redirectBlizzardDebuffs or nil
		if ( shouldHide ~= self.isBlizzardAuraHidden ) then
			local auraFrames = self.parent[filter == "MYHELPFUL" and "buffFrames" or "debuffFrames"]
			if ( auraFrames ) then
				local n = #auraFrames
				for i = 1, n do
					local auraFrame = auraFrames[i]
					auraFrame:SetAlpha(shouldHide and 0 or 1)
					auraFrame:EnableMouse(not shouldHide)
				end
				self.isBlizzardAuraHidden = shouldHide
			end
		end
	end
end

local function CompactUnitFrame_UnregisterUnitAura(self, unit, filter)
	if ActiveUnitContainer[filter][unit] then
		self:UnregisterEvent('UNIT_AURA')
		if filter ~= "HELPFUL" then
			self:UnregisterEvent('PLAYER_REGEN_ENABLED')
			self:UnregisterEvent('PLAYER_REGEN_DISABLED')
		end
		self.unit = nil
		self.guid = nil
		ActiveUnitContainer[filter][unit] = nil
		self:Hide()
	end

	if ( self.isBlizzardAuraHidden ) then
		local auraFrames = self.parent[filter == "MYHELPFUL" and "buffFrames" or "debuffFrames"]
		if ( auraFrames ) then
			local n = #auraFrames
			for i = 1, n do
				local auraFrame = auraFrames[i]
				auraFrame:SetAlpha(1)
				auraFrame:EnableMouse(true)
			end
			self.isBlizzardAuraHidden = nil
		end
	end
end

local Refresh_OnTimerEnd = function()
	E:Refresh() -- propagate
	CallbackTimers.hookDelay = nil
end

function module:HookFunc()
	if self.enabled and not CallbackTimers.hookDelay then
		CallbackTimers.hookDelay = C_Timer.NewTicker(0.5, Refresh_OnTimerEnd, 1)
	end
end

function module:UI_SCALE_CHANGED()
	E:SetPixelMult()
	self:HookFunc()
end

local pauseTimer
local function ResetPause() pauseTimer = nil end
local function UpdatePosition_OnRefreshMembers()
	module:PLAYER_ROLES_ASSIGNED()
	pauseTimer = C_Timer.NewTimer(6, ResetPause)
end

function module:SetHooks()
	if self.hooked then
		return
	end

	if not IsAddOnLoaded("Blizzard_CompactRaidFrames") or not IsAddOnLoaded("Blizzard_CUFProfiles") then
		return
	end

	self.useRaidStylePartyFrames = EditModeManagerFrame:UseRaidStylePartyFrames()
	self.keepGroupsTogether = EditModeManagerFrame:ShouldRaidFrameShowSeparateGroups()
	self.isCompactFrameSetShown = CompactRaidFrameManager_GetSetting("IsShown")

	-- HUD Raid Frame
	hooksecurefunc(EditModeManagerFrame, "UpdateRaidContainerFlow", function()
		if self.isInEditMode then
			self.keepGroupsTogether = EditModeManagerFrame:ShouldRaidFrameShowSeparateGroups()
			self:HookFunc()
		end
	end)

	-- HUD Party Frame (Raid Frame UpdateRaidContainerFlow equiv. called by every option)
	hooksecurefunc(PartyFrame, "UpdatePaddingAndLayout", function()
		if self.isInEditMode then -- Do not remove. This is super spammy
			self.useRaidStylePartyFrames = EditModeManagerFrame:UseRaidStylePartyFrames()
			self:HookFunc()
		end
	end)

	-- see OmniCD
	if CompactPartyFrame_RefreshMembers then
		hooksecurefunc("CompactPartyFrame_RefreshMembers", function()
			if not pauseTimer and not self.disabledCUF and self.isInArena
				and EditModeManagerFrame:GetSettingValue(Enum.EditModeSystem.UnitFrame, Enum.EditModeUnitFrameSystemIndices.Party, Enum.EditModeUnitFrameSetting.SortPlayersBy) ~= 1 then
				UpdatePosition_OnRefreshMembers()
			end
		end)
	else
		hooksecurefunc(CompactPartyFrame, "RefreshMembers", function() -- prob not needed for CompactArenaFrame
			if not pauseTimer and not self.disabledCUF and self.isInArena
				and EditModeManagerFrame:GetSettingValue(Enum.EditModeSystem.UnitFrame, Enum.EditModeUnitFrameSystemIndices.Party, Enum.EditModeUnitFrameSetting.SortPlayersBy) ~= 1 then
				UpdatePosition_OnRefreshMembers()
			end
		end)
	end

	self.hooked = true
end

local COMPACT_RAID = {
	"CompactRaidFrame1", "CompactRaidFrame2", "CompactRaidFrame3", "CompactRaidFrame4", "CompactRaidFrame5",
	"CompactRaidFrame6", "CompactRaidFrame7", "CompactRaidFrame8", "CompactRaidFrame9", "CompactRaidFrame10",
	"CompactRaidFrame11", "CompactRaidFrame12", "CompactRaidFrame13", "CompactRaidFrame14", "CompactRaidFrame15",
	"CompactRaidFrame16", "CompactRaidFrame17", "CompactRaidFrame18", "CompactRaidFrame19", "CompactRaidFrame20",
	"CompactRaidFrame21", "CompactRaidFrame22", "CompactRaidFrame23", "CompactRaidFrame24", "CompactRaidFrame25",
	"CompactRaidFrame26", "CompactRaidFrame27", "CompactRaidFrame28", "CompactRaidFrame29", "CompactRaidFrame30",
	"CompactRaidFrame31", "CompactRaidFrame32", "CompactRaidFrame33", "CompactRaidFrame34", "CompactRaidFrame35",
	"CompactRaidFrame36", "CompactRaidFrame37", "CompactRaidFrame38", "CompactRaidFrame39", "CompactRaidFrame40",
	"CompactRaidFrame41", "CompactRaidFrame42", "CompactRaidFrame43", "CompactRaidFrame44", "CompactRaidFrame45",
	"CompactRaidFrame46", "CompactRaidFrame47", "CompactRaidFrame48", "CompactRaidFrame49", "CompactRaidFrame50",
	"CompactRaidFrame51", "CompactRaidFrame52", "CompactRaidFrame53", "CompactRaidFrame54", "CompactRaidFrame55",
	"CompactRaidFrame56", "CompactRaidFrame57", "CompactRaidFrame58", "CompactRaidFrame59", "CompactRaidFrame60",
}

local COMPACT_RAID_KGT = { -- pet frames use COMPACT_RAID
	"CompactRaidGroup1Member1", "CompactRaidGroup1Member2", "CompactRaidGroup1Member3", "CompactRaidGroup1Member4", "CompactRaidGroup1Member5",
	"CompactRaidGroup2Member1", "CompactRaidGroup2Member2", "CompactRaidGroup2Member3", "CompactRaidGroup2Member4", "CompactRaidGroup2Member5",
	"CompactRaidGroup3Member1", "CompactRaidGroup3Member2", "CompactRaidGroup3Member3", "CompactRaidGroup3Member4", "CompactRaidGroup3Member5",
	"CompactRaidGroup4Member1", "CompactRaidGroup4Member2", "CompactRaidGroup4Member3", "CompactRaidGroup4Member4", "CompactRaidGroup4Member5",
	"CompactRaidGroup5Member1", "CompactRaidGroup5Member2", "CompactRaidGroup5Member3", "CompactRaidGroup5Member4", "CompactRaidGroup5Member5",
	"CompactRaidGroup6Member1", "CompactRaidGroup6Member2", "CompactRaidGroup6Member3", "CompactRaidGroup6Member4", "CompactRaidGroup6Member5",
	"CompactRaidGroup7Member1", "CompactRaidGroup7Member2", "CompactRaidGroup7Member3", "CompactRaidGroup7Member4", "CompactRaidGroup7Member5",
	"CompactRaidGroup8Member1", "CompactRaidGroup8Member2", "CompactRaidGroup8Member3", "CompactRaidGroup8Member4", "CompactRaidGroup8Member5",
}

local COMPACT_PARTY = {
	"CompactPartyFrameMember1", "CompactPartyFrameMember2", "CompactPartyFrameMember3", "CompactPartyFrameMember4", "CompactPartyFrameMember5",
}

function module:FindRelativeFrame(guid)
	local isInRaid = IsInRaid()
	-- Prioritize where to anchor the test frames
	local compactFrame = nil
	if isInRaid and not self.isInArena then
		compactFrame = self.isCompactFrameSetShown and (self.keepGroupsTogether and COMPACT_RAID_KGT or COMPACT_RAID)
	elseif GetNumGroupMembers() > 0 then
		compactFrame = self.useRaidStylePartyFrames and COMPACT_PARTY or false
	elseif EditModeManagerFrame:ArePartyFramesForcedShown() then
		compactFrame = EditModeManagerFrame:UseRaidStylePartyFrames() and COMPACT_PARTY or false
	elseif EditModeManagerFrame:AreRaidFramesForcedShown() then
		compactFrame = self.isCompactFrameSetShown and (self.keepGroupsTogether and COMPACT_RAID_KGT or COMPACT_RAID)
	end

	if compactFrame then
		local n = #compactFrame
		for i = 1, n do
			local name = compactFrame[i]
			local f = _G[name]
			local unit = f and f.unit
			if unit and UnitGUID(unit) == guid then
				return f:IsVisible() and f
			end
		end
	end
end

local CUF_NAME_SECTION_SIZE = 15
local CUF_AURA_BOTTOM_OFFSET = 2
local NATIVE_UNIT_FRAME_HEIGHT = 36
local NATIVE_UNIT_FRAME_WIDTH = 72
local BOSS_DEBUFF_SIZE_INCREASE = 9

function module:GetBuffFrameBaseSize()
	local raidDB = db.raidFrame
	local isParty = self.isInArena
		or (IsInGroup() and not IsInRaid()) -- ignore EditMode while in a group
		or (not IsInGroup() and (EditModeManagerFrame:ArePartyFramesForcedShown() or not EditModeManagerFrame:AreRaidFramesForcedShown())) -- set true if nothing is shown. fix returning CRF values for CPF
	local systemIndex = CompactRaidGroupTypeEnum and (isParty and CompactRaidGroupTypeEnum.Party or CompactRaidGroupTypeEnum.Raid) or isParty
	local frameWidth = EditModeManagerFrame:GetRaidFrameWidth(systemIndex)
	local frameHeight = EditModeManagerFrame:GetRaidFrameHeight(systemIndex)
	local componentScale = min(frameHeight / NATIVE_UNIT_FRAME_HEIGHT, frameWidth / NATIVE_UNIT_FRAME_WIDTH)
	local buffSize = min(raidDB.globalScale, 11 * componentScale)

	local options = DefaultCompactUnitFrameSetupOptions
	local powerBarHeight = 8
	local powerBarUsedHeight = options.displayPowerBar and powerBarHeight or 0
	local maxDebuffSize = frameHeight - powerBarUsedHeight - CUF_AURA_BOTTOM_OFFSET - CUF_NAME_SECTION_SIZE

	-- TEMP use blizzard values in raid so it aligns with privateaura
	if self.zone == "raid" then
		buffSize = min(15, buffSize)
		maxDebuffSize = min(20, maxDebuffSize)
	end
	self.currBaseSize = buffSize
	self.currMaxScale = maxDebuffSize / buffSize
	self.currBossScale = (buffSize + BOSS_DEBUFF_SIZE_INCREASE) / buffSize

	local maxDebuffSpace = frameWidth - 6 -- default offset
	local minDebuffSpace = maxDebuffSpace - (3 * buffSize + 3) -- our center padding
	local totInnerDebuffs
	local numInnerDebuffs
	local shouldDetachBigDebuffs
	if raidDB.HARMFUL.preset == "overDebuffs" then
		if raidDB.HARMFUL.detachBigDebuffs[self.zone] then
			shouldDetachBigDebuffs = true
		elseif not raidDB.MYHELPFUL.enabled or raidDB.MYHELPFUL.preset == "overBuffs" then
			totInnerDebuffs = minDebuffSpace / buffSize
			numInnerDebuffs = floor(totInnerDebuffs)
		elseif raidDB.MYHELPFUL.preset == "raidFrameRight" then
			totInnerDebuffs = maxDebuffSpace / buffSize
			numInnerDebuffs = floor(totInnerDebuffs)
		end
	end
	self.totInnerDebuffs = totInnerDebuffs -- no limit if nil
	self.numInnerDebuffs = numInnerDebuffs
	self.shouldDetachBigDebuffs = shouldDetachBigDebuffs

	-- limit maxIcons by group type to avoid covering adjacent frames (anchor set to L/R of raidframe isn't affected)
	self.totDebuffs = numInnerDebuffs and min(9+numInnerDebuffs, NUM_RF_OVERLAYS.HARMFUL)
	self.maxOverlays = self.maxOverlays or {}
	if isParty then
		self.maxOverlays.HARMFUL = shouldDetachBigDebuffs and min(9, raidDB.HARMFUL.maxIcons) or min(self.totDebuffs or NUM_RF_OVERLAYS.HARMFUL, raidDB.HARMFUL.maxIcons)
		self.maxOverlays.MYHELPFUL = raidDB.MYHELPFUL.maxIcons
	else
		self.maxOverlays.HARMFUL = min(numInnerDebuffs or 3, raidDB.HARMFUL.maxIcons)
		self.maxOverlays.MYHELPFUL = min(6, raidDB.MYHELPFUL.maxIcons)
	end

	local counterScale = componentScale / 2 -- Set to 1 when CUF is at max size (i.e. componentScale == 2)
	counterScale = counterScale * (buffSize / (11 * componentScale)) -- match legacy counter size as non-legacy overlay scaling goes much higher
	self.currCounterScale = counterScale

	return buffSize
end

local RAID_UNIT = {
	"raid1","raid2","raid3","raid4","raid5","raid6","raid7","raid8","raid9","raid10",
	"raid11","raid12","raid13","raid14","raid15","raid16","raid17","raid18","raid19","raid20",
	"raid21","raid22","raid23","raid24","raid25","raid26","raid27","raid28","raid29","raid30",
	"raid31","raid32","raid33","raid34","raid35","raid36","raid37","raid38","raid39","raid40",
}

local PARTY_UNIT = {
	"party1","party2","party3","party4","player",
}

local RF_AURA_FILTER = {
	"HARMFUL", "HELPFUL", "MYHELPFUL",
}

local function CreateCompactUnitFrameContainer(parentFrame, filter)
	local container = CreateFrame("Frame", nil, parentFrame)
	container.parent = parentFrame
	container:SetSize(1, 1)
	container.frameType = "raidFrame"
	container.isMyBuffs = filter == "MYHELPFUL"
	container.rawFilter = filter
	container.filter = filter == "MYHELPFUL" and "HELPFUL" or filter
	container.auraType = filter == "HARMFUL" and "isHarmful"or "isHelpful"
	container.enabledAura = Aura_Enabled.raidFrame
	container.ParseAllAuras = CompactUnitFrame_ParseAllAuras
	container:SetScript("OnEvent", CompactUnitFrame_OnEvent)
	container.UpdateAuras = CompactUnitFrame_OnEvent
	return container
end

function module:GetEffectiveNumGroupMembers()
	local n = GetNumGroupMembers()
	return n == 0 and self.isInTestMode and 1 or n
end

function module:CompactFrameIsActive(isInRaid)
	return (isInRaid or IsInRaid()) and not self.isInArena or self.useRaidStylePartyFrames
end

local RAID_UNITID_HASH = {
	["raid1"]=true,["raid2"]=true,["raid3"]=true,["raid4"]=true,["raid5"]=true,["raid6"]=true,["raid7"]=true,["raid8"]=true,["raid9"]=true,["raid10"]=true,
	["raid11"]=true,["raid12"]=true,["raid13"]=true,["raid14"]=true,["raid15"]=true,["raid16"]=true,["raid17"]=true,["raid18"]=true,["raid19"]=true,["raid20"]=true,
	["raid21"]=true,["raid22"]=true,["raid23"]=true,["raid24"]=true,["raid25"]=true,["raid26"]=true,["raid27"]=true,["raid28"]=true,["raid29"]=true,["raid30"]=true,
	["raid31"]=true,["raid32"]=true,["raid33"]=true,["raid34"]=true,["raid35"]=true,["raid36"]=true,["raid37"]=true,["raid38"]=true,["raid39"]=true,["raid40"]=true,
}

local PARTY_UNITID_HASH = {
	["party1"]=true,["party2"]=true,["party3"]=true,["party4"]=true,["player"]=true,
}

local function CompactUnitFrame_UnregisterAllUnitAura(removeParty, removeAll)
	for filter, t in pairs(ActiveUnitContainer) do
		for unit, container in pairs(t) do
			if removeAll then
				if PARTY_UNITID_HASH[unit] or RAID_UNITID_HASH[unit] then
					CompactUnitFrame_UnregisterUnitAura(container, unit, filter)
				end
			elseif removeParty then
				if PARTY_UNITID_HASH[unit] then
					CompactUnitFrame_UnregisterUnitAura(container, unit, filter)
				end
			else
				if RAID_UNITID_HASH[unit] then
					CompactUnitFrame_UnregisterUnitAura(container, unit, filter)
				end
			end
		end
	end
end

local partyFrameUnitIdentifier = {
	["party1"]="uparty1",["party2"]="uparty2",["party3"]="uparty3",["party4"]="uparty4",
}

local partyFrameUnitId = {
	["uparty1"]="party1",["uparty2"]="party2",["uparty3"]="party3",["uparty4"]="uparty4",
}

local function PartyUnitFrame_RegisterUnitAura(self, unit, filter, guid, isRefresh)
	local uId = partyFrameUnitIdentifier[unit]
	if ActiveUnitContainer[filter][uId] ~= self then -- exist check
		ActiveUnitContainer[filter][uId] = self
		self:RegisterUnitEvent('UNIT_AURA', unit)
		self:Show()
	end
	if guid ~= self.guid or isRefresh then -- The unitId-to-PF is fixed, and actualUnit-to-PF changes (giving lead will reassign unitId to party1)
		self.guid = guid
		UnitFrame_OnEvent(self, 'UNIT_AURA', unit, nil)
	end
end

local function PartyUnitFrame_UnregisterUnitAura(self, unit, filter)
	local uId = partyFrameUnitIdentifier[unit] or unit
	if ActiveUnitContainer[filter][uId] then
		self:UnregisterEvent('UNIT_AURA')
		self.guid = nil
		ActiveUnitContainer[filter][uId] = nil
		self:Hide()
	end
end

local function PartyUnitFrame_UnregisterAllUnitAura()
	for filter, t in pairs(ActiveUnitContainer) do
		for unit, container in pairs(t) do
			if partyFrameUnitId[unit] then
				PartyUnitFrame_UnregisterUnitAura(container, unit, filter)
			end
		end
	end
end

-- NOTE: Everything relys on the unitId being correctly updated on GRU to the newly assigned unit.
-- Using EditMode even once will delay updating the frame.unit to the correct unitId when GRU fires, so
-- we're listening to PLAYER_ROLES_ASSIGNED which fires a frame after GRU (same Timestamp)
function module:PLAYER_ROLES_ASSIGNED(isRefresh)
	local isCompactFrameActive = self:CompactFrameIsActive()
	local areRaidFramesForcedShown = EditModeManagerFrame:AreRaidFramesForcedShown()
	local arePartyFramesForcedShown = EditModeManagerFrame:ArePartyFramesForcedShown()
	local isInRaid = IsInRaid()
	local size = self:GetEffectiveNumGroupMembers()

	-- Remove units no longer in group
	-- Do before iterating curr group, else any frame that was reassigned will get removed if it belonged to a unit no longer in group
	for unit, frame in pairs(ActiveUnitCompactUnitFrame) do
		if size == 0 or not UnitExists(unit) then
			for filter, container in pairs(CompactUnitFrameContainer[frame]) do
				CompactUnitFrame_UnregisterUnitAura(container, unit, filter, nil)
			end
			ActiveUnitCompactUnitFrame[unit] = nil -- NOTE: can have party1 raid1, if same unit
		end
	end
	if size == 0 then
		return
	end

	-- Remove unitIds no longer in current CUF/PF - if group type changed
	if isInRaid ~= self.isInRaid then
		if isInRaid then
			if self.isCompactFrameActive then
				CompactUnitFrame_UnregisterAllUnitAura(true) -- remove party#
			else
				PartyUnitFrame_UnregisterAllUnitAura() -- remove uparty#
			end
		else
			CompactUnitFrame_UnregisterAllUnitAura() -- remove raid#
		end
	end

	if size > 0 then
		if not self.disabledCUF and (isCompactFrameActive or areRaidFramesForcedShown) then
			local raidDB = db.raidFrame
			local buffSize = self:GetBuffFrameBaseSize()
			for i = 1, size do
				local unit = isInRaid and RAID_UNIT[i] or PARTY_UNIT[i == size and 5 or i]
				local guid = UnitGUID(unit)
				local frame = self:FindRelativeFrame(guid)
				if frame then
					if not CompactUnitFrameContainer[frame] then
						CompactUnitFrameContainer[frame] = {}
						for _, filter in pairs(RF_AURA_FILTER) do
							local db = raidDB[filter]
							local container = CreateCompactUnitFrameContainer(frame, filter)
							self:CompactUnitFrame_UpdateSettings(container, filter, frame, raidDB, buffSize)
							CompactUnitFrameContainer[frame][filter] = container
							if db.enabled and (guid ~= userGUID or db.showPlayer) then
								CompactUnitFrame_RegisterUnitAura(container, unit, filter, guid, true)
							end
						end
					else
						for filter, container in pairs(CompactUnitFrameContainer[frame]) do
							local db = raidDB[filter]
							-- Resize overlays for current CRF/CPF - if group type changed
							if container.buffSize ~= buffSize then -- fix size not updating. comparing ea container to avoid LFR problems
								local n = NUM_RF_OVERLAYS[filter]
								for j = 1, n do
									local overlay = container[j]
									overlay:SetSize(buffSize, buffSize)
									overlay.HighlightFlash:SetScale(buffSize / BASE_ICON_SIZE)
								end
								container.buffSize = buffSize
							end
							-- Set individual filter visibility (Refresh toggles entire CUF on and off)
							if db.enabled and (guid ~= userGUID or db.showPlayer) then
								CompactUnitFrame_RegisterUnitAura(container, unit, filter, guid, isRefresh)
							else
								CompactUnitFrame_UnregisterUnitAura(container, unit, filter)
							end
						end
					end
					--> if we're planning on disabling MYHELPFUL by group Type then toggle alpha and TT here as UpdateSettings only gets called on Refresh

					if ActiveUnitCompactUnitFrame[unit] ~= frame then
						ActiveUnitCompactUnitFrame[unit] = frame
					end
				end
			end
		-- This is for the party UF. Confused yet?
		elseif not self.disabledPartyUF and (not isCompactFrameActive or arePartyFramesForcedShown) then
			local isMerged = db.unitFrame.party.mergeAuraFrame
			for i = 1, 4 do
				local unit = PARTY_UNIT[i]
				local guid = UnitGUID(unit)
				for filter, container in pairs(UnitFrameContainer[unit]) do
					if i <= size and container.db.enabled and (not isMerged or filter == "HARMFUL") then
						PartyUnitFrame_RegisterUnitAura(container, unit, filter, guid, isRefresh)
					else
						PartyUnitFrame_UnregisterUnitAura(container, unit, filter)
					end
				end
			end
		end
	end

	self.isCompactFrameActive = isCompactFrameActive
	self.isInRaid = isInRaid

	E.Libs.CBH:Fire("RefreshMembers")
end
module.GROUP_ROSTER_UPDATE = module.PLAYER_ROLES_ASSIGNED

local reversePoint = {
	["BOTTOMLEFT"] = "BOTTOMRIGHT",
	["BOTTOMRIGHT"] = "BOTTOMLEFT",
	["LEFT"] = "RIGHT",
	["RIGHT"] = "LEFT",
}

function module:CompactUnitFrame_UpdateSettings(container, filter, frame, raidDB, buffSize)
	local db = raidDB[filter]
	local isHARMFUL = filter == "HARMFUL"
	local isMYHELPFUL = filter == "MYHELPFUL"

	-- Toggle Blizzard frame visibility
	local shouldHide = raidDB.visibility[self.zone] and raidDB.enabled and db.enabled -- recheck all
	if isHARMFUL then
		shouldHide = shouldHide and db.redirectBlizzardDebuffs
		if frame.debuffFrames then
			local n = #frame.debuffFrames -- preloaded with 3 debuff frames
			for i = 1, n do
				local debuffFrame = frame.debuffFrames[i]
				debuffFrame:SetAlpha(shouldHide and 0 or 1)
				debuffFrame:EnableMouse(not shouldHide)
			end
			container.isBlizzardAuraHidden = shouldHide
		end
		--[[ privateaura
		if frame.PrivateAuraAnchors then
			for _, auraAnchor in ipairs(frame.PrivateAuraAnchors) do
				auraAnchor:SetAlpha(shouldHide and 0 or 1)
				auraAnchor:EnableMouse(not shouldHide)
			end
		end
		]]
	elseif isMYHELPFUL then
		if frame.buffFrames then
			local n = #frame.buffFrames -- preloaded with 8 buff frames. <cf: NP returns 0
			for i = 1, n do
				local buffFrame = frame.buffFrames[i]
				buffFrame:SetAlpha(shouldHide and 0 or 1)
				buffFrame:EnableMouse(not shouldHide)
			end
			container.isBlizzardAuraHidden = shouldHide
		end
	end

	-- Container settings
	container:SetFrameLevel(frame:GetFrameLevel() + db.frameLevel)
	container:ClearAllPoints()
	local relTo, xOfs, yOfs, scale
	if db.relativeFrame == "debuffFrame" and frame.debuffFrames then
		relTo = frame.debuffFrames[1]
	elseif db.relativeFrame == "buffFrame" and frame.buffFrames then
		relTo = frame.buffFrames[1]
	else
		relTo = frame
	end
	if db.preset == "overDebuffs" or db.preset == "overBuffs" then
		xOfs, yOfs, scale = 0, 0, 1
	else
		xOfs, yOfs, scale = db.preset == "raidFrameLeft" and -db.offsetX or db.offsetX, db.offsetY, db.scale
	end
	container:SetPoint(db.point, relTo, db.relativePoint, xOfs, yOfs)
	container.priority = raidDB.priority
	container.sorter = AuraComparator[db.sortby]
	container.db = db
	container.frameNum = nil -- XXX clear old num frames since we hide all overlays here else detached frame can be hidden
	container.detachedFrameNum = nil
	container.buffSize = buffSize

	-- Overlay settings
	local point = db.point == "CENTER" and "LEFT" or db.point
	local relPoint = db.point == "CENTER" and "RIGHT" or reversePoint[db.point]
	local edgeSize
	local r, g, b = db.borderColor.r, db.borderColor.g, db.borderColor.b
	local n = NUM_RF_OVERLAYS[filter]
	local numInnerDebuffs, shouldDetachBigDebuffs, detachedFrameStart
	if isHARMFUL then
		numInnerDebuffs = self.numInnerDebuffs
		shouldDetachBigDebuffs = self.shouldDetachBigDebuffs
		detachedFrameStart = UNDETACHEDFRAME_LASTINDEX + 1
	end
	for j = 1, n do
		local overlay = container[j]
		if not overlay then
			overlay = CreateOverlay(container, isHARMFUL and "OmniAurasCompactDebuffTemplate" or "OmniAurasCompactAuraTemplate") -- BuffTemplate not used yet
			overlay.cooldown.counter:SetFontObject(E.RFCounter)
			container[j] = overlay
		else -- XXX hide all overlays on Refresh. Subsequent PEW will ParseAllAuras
			ClearHideOverlayFrame(overlay)
		end

		overlay:SetScale(scale) -- do before GetEffectiveScale is called
		overlay:ClearAllPoints()
		if j == 1 then
			overlay:SetPoint(db.point, container, db.point)
			edgeSize = E.uiUnitFactor / overlay:GetEffectiveScale()
		elseif shouldDetachBigDebuffs then
			if j < 4 then
				overlay:SetPoint("BOTTOMLEFT", container[j-1], "BOTTOMRIGHT", 0, 0)
			elseif j < detachedFrameStart then
				overlay:SetPoint("BOTTOMLEFT", container[j-3], "TOPLEFT", 0, 0)
			else
				overlay:SetPoint(db.detachPoint, j == detachedFrameStart and (db.detachRelativeFrame == "debuffFrame" and frame.debuffFrames[1] or frame.buffFrames[1]) or container[j-1],
				db.detachRelativePoint, db.detachPreset == "raidFrameLeft" and (j > detachedFrameStart and -1 or -db.detachOffsetX) or (j > detachedFrameStart and 1 or db.detachOffsetX), 0)
			end
		elseif numInnerDebuffs then -- HARMFUL only
			if db.stackOuter and j > numInnerDebuffs + 3 then
				overlay:SetPoint("BOTTOMRIGHT", container[j-3], "TOPRIGHT")
			elseif j > numInnerDebuffs then
				overlay:SetPoint(reversePoint[point], container[j == numInnerDebuffs + 1 and 1 or j-1], reversePoint[relPoint])
			else
				overlay:SetPoint(point, container[j-1], relPoint)
			end
		elseif isMYHELPFUL and db.preset == "overBuffs" and db.numInnerIcons < 9 and raidDB.HARMFUL.preset ~= "raidFrameRight" and (not self.shouldDetachBigDebuffs or raidDB.HARMFUL.detachPreset ~= "raidFrameRight") then
			if j > db.numInnerIcons then
				overlay:SetPoint(reversePoint[point], container[j == db.numInnerIcons+1 and 1 or j-1], reversePoint[relPoint])
			elseif j > 3 then
				overlay:SetPoint("BOTTOMRIGHT", container[j-3], "TOPRIGHT")
			else
				overlay:SetPoint(point, container[j-1], relPoint)
			end
		else
			if isMYHELPFUL and j > 3 then
				overlay:SetPoint("BOTTOMRIGHT", container[j-3], "TOPRIGHT")
			else
				overlay:SetPoint(point, container[j-1], relPoint)
			end
		end

		overlay:SetSize(buffSize, buffSize)
		overlay.HighlightFlash:SetScale(buffSize / BASE_ICON_SIZE)
		overlay:SetAlpha(db.opacity)
		overlay:EnableMouse(overlay.isPassThrough and db.showTooltip)
		overlay.cooldown:SetSwipeColor(0, 0, 0, db.swipeAlpha)
		overlay.cooldown.counter:SetScale(self.currCounterScale * db.counterScale)
		overlay.cooldown:SetHideCountdownNumbers(db.hideCounter) -- hiding base size overlay's counter done in UNIT_AURA

		if db.borderType == "blizzard" then
			overlay.border:Show()
			overlay.borderTop:Hide()
			overlay.borderBottom:Hide()
			overlay.borderLeft:Hide()
			overlay.borderRight:Hide()
			overlay.icon:SetTexCoord(0, 1, 0, 1)
		else
			if overlay.border then -- Blizzard
				overlay.border:Hide()
			end

			overlay.borderTop:ClearAllPoints()
			overlay.borderTop:SetPoint("TOPLEFT", overlay, "TOPLEFT")
			overlay.borderTop:SetPoint("BOTTOMRIGHT", overlay, "TOPRIGHT", 0, -edgeSize)
			overlay.borderTop:SetVertexColor(r, g, b)
			overlay.borderTop:Show()

			overlay.borderBottom:ClearAllPoints()
			overlay.borderBottom:SetPoint("BOTTOMLEFT", overlay, "BOTTOMLEFT")
			overlay.borderBottom:SetPoint("TOPRIGHT", overlay, "BOTTOMRIGHT", 0, edgeSize)
			overlay.borderBottom:SetVertexColor(r, g, b)
			overlay.borderBottom:Show()

			overlay.borderRight:ClearAllPoints()
			overlay.borderRight:SetPoint("TOPRIGHT", overlay.borderTop, "BOTTOMRIGHT")
			overlay.borderRight:SetPoint("BOTTOMLEFT", overlay.borderBottom, "TOPRIGHT", -edgeSize, 0)
			overlay.borderRight:SetVertexColor(r, g, b)
			overlay.borderRight:Show()

			overlay.borderLeft:ClearAllPoints()
			overlay.borderLeft:SetPoint("TOPLEFT", overlay.borderTop, "BOTTOMLEFT")
			overlay.borderLeft:SetPoint("BOTTOMRIGHT", overlay.borderBottom, "TOPLEFT", edgeSize, 0)
			overlay.borderLeft:SetVertexColor(r, g, b)
			overlay.borderLeft:Show()

			overlay.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		end
	end

	--[[ privateaura
	if isHARMFUL then
		if not container.PrivateAuraAnchors then
			container.PrivateAuraAnchor1 = CreateFrame("Frame", nil, container, "OmniAurasCompactUnitPrivateAuraAnchorTemplate")
			container.PrivateAuraAnchor1.auraIndex = 1
			container.PrivateAuraAnchor2 = CreateFrame("Frame", nil, container, "OmniAurasCompactUnitPrivateAuraAnchorTemplate")
			container.PrivateAuraAnchor2.auraIndex = 2
			container.PrivateAuraAnchors = { container.PrivateAuraAnchor1, container.PrivateAuraAnchor2 }
		end
		for _, privateAuraAnchor in ipairs(container.PrivateAuraAnchors) do
			local size = buffSize * self.currBossScale
			privateAuraAnchor:SetSize(size, size);
		end
		if db.preset == "raidFrameLeft" then
			container.PrivateAuraAnchor2:SetPoint("BOTTOMRIGHT", container.PrivateAuraAnchor1, "BOTTOMLEFT", 0, 0)
		else
			container.PrivateAuraAnchor2:SetPoint("BOTTOMLEFT", container.PrivateAuraAnchor1, "BOTTOMRIGHT", 0, 0)
		end
	end
	]]
end

--
-- Nameplate
--

local function Nameplate_ProcessAura(self, aura)
	if not aura or not aura.name then
		return false
	end
	local spellId, sourceUnit = aura.spellId, aura.sourceUnit
	if not blacklist[spellId] and (self.isMerged or aura[self.auraType])
		and (not Aura_NoFriend[spellId] or (self.auraType == "isHarmful" and sourceUnit and UnitCanAttack("player", sourceUnit))) then
		local enabledAuraData = self.enabledAura[spellId]
		if enabledAuraData then
			local type = enabledAuraData[1]
			local scale = self.db.typeScale and self.db.typeScale[type] or 1
			if Aura_Enabled.largerIcon[spellId] then
				scale = scale * self.db.largerIcon
			end
			aura.scale = scale
			aura.priority = self.priority[type]
			return true
		elseif self.db.redirectBlizzardDebuffs and not self.shouldShowCCOnly
			and (aura.nameplateShowAll or (aura.nameplateShowPersonal and (aura.sourceUnit == "player" or aura.sourceUnit == "pet" or aura.sourceUnit == "vehicle"))) then
			aura.scale = self.db.blizzardDebuffs
			aura.priority = 0
			return true
		end
	end
end

local function Nameplate_ParseAllAuras(self, unit)
	if module.isInTestMode then
		module.InjectTestAuras(self)
		return
	end

	if self.auraInfo == nil then
		self.auraInfo = TableUtil.CreatePriorityTable(self.sorter, true)
	else
		self.auraInfo:Clear()
	end

	local batchCount = nil
	local usePackedAura = true
	local function HandleAura(aura)
		local type = Nameplate_ProcessAura(self, aura)
		if type then
			self.auraInfo[aura.auraInstanceID] = aura
		end
	end
	AuraUtil_ForEachAura(unit, self.filter, batchCount, HandleAura, usePackedAura)

	if self.filter == "HARMFUL" then
		local guid = self.guid or UnitGUID(unit)
		if SpellLockedGUIDS[guid] then
			for auraInstanceID, callbackTimer in pairs(SpellLockedGUIDS[guid]) do
				local aura = E:DeepCopy(callbackTimer.args[3])
				aura.scale = self.db.typeScale.softCC
				aura.priority = self.priority.softCC + 1
				self.auraInfo[auraInstanceID] = aura
			end
		end
		if self.isMerged then
			AuraUtil_ForEachAura(unit, "HELPFUL", batchCount, HandleAura, usePackedAura)
		end
	end
end

local sameIconHT = {
	[221527] = true, -- Imprison (HT) debuff
	[199448] = true, -- Ultimate Sacrifice buff on target
}

local function NameplateFrame_OnEvent(self, event, ...)
	if event == 'UNIT_AURA' then
		local unitId, unitAuraUpdateInfo, auraChanged = ...

		if unitAuraUpdateInfo == nil or unitAuraUpdateInfo.isFullUpdate or self.auraInfo == nil then
			self:ParseAllAuras(unitId)
			auraChanged = true
		else
			if unitAuraUpdateInfo.addedAuras ~= nil then
				for i, aura in ipairs(unitAuraUpdateInfo.addedAuras) do
					local type = Nameplate_ProcessAura(self, aura)
					if type then
						self.auraInfo[aura.auraInstanceID] = aura
						auraChanged = true
					end
				end
				self.auraInfo:Iterate(function(auraInstanceID, aura)
				end)
			end

			if unitAuraUpdateInfo.updatedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.updatedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						local newAura = C_UnitAuras_GetAuraDataByAuraInstanceID(unitId, auraInstanceID)
						if newAura ~= nil then
							newAura.priority = self.auraInfo[auraInstanceID].priority
							newAura.scale = self.auraInfo[auraInstanceID].scale
						end
						self.auraInfo[auraInstanceID] = newAura
						auraChanged = true
					end
				end
			end

			if unitAuraUpdateInfo.removedAuraInstanceIDs ~= nil then
				for _, auraInstanceID in ipairs(unitAuraUpdateInfo.removedAuraInstanceIDs) do
					if self.auraInfo[auraInstanceID] ~= nil then
						self.auraInfo[auraInstanceID] = nil
						auraChanged = true
					end
				end
			end
		end

		if auraChanged then -- and self.auraInfo then -- req if we're limiting the number of nameplate on TestMode
			local frameNum = self.auraInfo:Size()
			local oldNum = self.frameNum
			if frameNum == 0 and oldNum and oldNum > 0 then
				for i = 1, oldNum do
					local overlay = self[i]
					ClearHideOverlayFrame(overlay)
				end
				self.frameNum = frameNum
				return
			end

			local now = GetTime()
--			local isDebuff = self.filter == "HARMFUL"
			local db = self.db
			local maxIcons = db.maxIcons
			--[[
			local cOffsetX =  maxIcons > 1 and db.point == "CENTER" and 0 -- no clean way to have it centered over debuffs
			local leadOverlay, leadScale
			]]
			frameNum = 1
			self.auraInfo:Iterate(function(auraInstanceID, aura)
				local overlay = self[frameNum]
				local buffScale
				local count, expirationTime, spellId, icon, duration, scale = aura.applications, aura.expirationTime, aura.spellId, aura.icon, aura.duration, aura.scale
				if spellId ~= overlay.spellId or expirationTime ~= overlay.expirationTime or count ~= overlay.stack then
					buffScale = db.scale * scale
					overlay:SetScale(buffScale)
					--overlay.buffSizeScale = buffScale -- cOffsetX

					--[[ NOTE: Nameplates have dynamic scaling based on range and the games jagged transition
					makes pixel shifting worse. Keep the pixel borders black or use textures instead.]]--
					if ( db.borderType == "texture" ) then
						if ( sameIconHT[spellId] ) then
							overlay.Border:SetVertexColor(1, 0, 0)
						elseif ( self.isMerged and aura.isHelpful ) then
							overlay.Border:SetVertexColor(0, 1, 0)
						else
							overlay.Border:SetVertexColor(1, 1, 0)
						end
					elseif db.borderType == "pixelDebuff" then -- experimenting. debuff colors on everything is too distractive
						local color = aura.isHelpful and AdjustedDebuffTypeColorNamePlate["buff"] or (AdjustedDebuffTypeColorNamePlate[aura.dispelName] or AdjustedDebuffTypeColorNamePlate["none"])
						overlay.border:SetVertexColor(color.r, color.g, color.b)
					end

					if count and count > 1 then
						-- static stack size for scaled CC's
--						if buffScale then
--							overlay.count:SetScale(1 / buffScale)
--						end

						overlay.count:SetText(count)
						overlay.count:Show()
					else
						overlay.count:Hide()
					end
					overlay.icon:SetTexture(icon)

					if expirationTime > 0 then
						local startTime = expirationTime - duration
						overlay.cooldown:SetCooldown(startTime, duration)
						if db.glow and Aura_Enabled.glow[spellId] and spellId ~= overlay.spellId and now - startTime < 0.1 then
							overlay.HighlightFlash:Show()
							overlay.HighlightFlash.Anim:Play()
						elseif overlay.HighlightFlash.Anim:IsPlaying() then
							overlay.HighlightFlash.Anim:Stop()
							overlay.HighlightFlash:Hide()
						end
					else
						overlay.cooldown:Clear()
						if overlay.HighlightFlash.Anim:IsPlaying() then
							overlay.HighlightFlash.Anim:Stop()
							overlay.HighlightFlash:Hide()
						end
					end
					overlay.filter = nil
					overlay.auraInstanceID = auraInstanceID
					overlay.spellId = spellId
					overlay.expirationTime = expirationTime
					overlay.stack = count
					overlay.iconTexture = icon
					overlay:Show()
				end

				--[[
				if cOffsetX then
					buffScale = buffScale or overlay.buffSizeScale
					if frameNum == 1 then
						leadOverlay = overlay
						leadScale = buffScale
					elseif isDebuff then
						cOffsetX = cOffsetX + (BASE_ICON_SIZE + db.paddingX) * buffScale
					end
				end
				]]

				frameNum = frameNum + 1
				return frameNum > maxIcons
			end)

			--[[
			if cOffsetX and (unitAuraUpdateInfo == nil or (not isDebuff or cOffsetX ~= self.cOffsetX)) then
				leadOverlay:ClearAllPoints()
				leadOverlay:SetPoint(db.point, self, db.point, isDebuff and -cOffsetX / 2 / leadScale or -(BASE_ICON_SIZE + db.paddingX) / 2 * (frameNum - 2), 0)
				self.cOffsetX = cOffsetX
			end
			]]

			frameNum = frameNum - 1
			if oldNum and oldNum > frameNum then
				for i = frameNum + 1, oldNum do
					local overlay = self[i]
					ClearHideOverlayFrame(overlay)
				end
			end
			self.frameNum = frameNum
		end
	end
end

local function Nameplate_RegisterUnitAura(self, unit, filter)
	ActiveUnitContainer[filter][unit] = self -- update namePlateFrameBase to unit
	self:RegisterUnitEvent('UNIT_AURA', unit)
	NameplateFrame_OnEvent(self, 'UNIT_AURA', unit, nil)
	self:Show()
end

local function Nameplate_UnregisterUnitAura(self, unit, filter)
	if ActiveUnitContainer[filter][unit] then
		self:UnregisterEvent('UNIT_AURA')
		ActiveUnitContainer[filter][unit] = nil
		--[[ Do not remove. NP can selectively disable friendly nameplates.
		If the frame was previously on a hostile unit then the last icon texture will
		show up stuck on the friendly overlay (timers are cleared on Hide, textures are not)]]--
		self:Hide()
	end
end

local function CreateNamePlateContainer(parentFrame, filter)
	local container = CreateFrame("Frame", nil, parentFrame)
	container.parent = parentFrame
	container:SetSize(1, 1)
	container.frameType = "nameplate"
	container.filter = filter
	container.auraType = filter == "HARMFUL" and "isHarmful"or "isHelpful"
	container.ParseAllAuras = Nameplate_ParseAllAuras
	container:SetScript("OnEvent", NameplateFrame_OnEvent)
	container.UpdateAuras = NameplateFrame_OnEvent
	return container
end

function module:NAME_PLATE_UNIT_ADDED(unit)
	-- namePlateFrameBase:GetName() == namePlateFrameBase.namePlateUnitToken == namePlateFrameBase.UnitFrame.unit == "nameplate#"
	local namePlateFrameBase = C_NamePlate_GetNamePlateForUnit(unit)
	local isPlayerControlled = UnitPlayerControlled(unit)
	if not namePlateFrameBase or namePlateFrameBase:IsForbidden() or not namePlateFrameBase.UnitFrame or (db.nameplate.disableNPC and not isPlayerControlled) then
		return
	end

	local guid = UnitGUID(unit)
	local isMinion = isPlayerControlled and not UnitIsPlayer(unit) --strfind(guid, "^Player")
	if isMinion and db.nameplate.disableMinions then
		return
	end

	ActiveUnitNameplate[unit] = namePlateFrameBase

	local nameDB = db.nameplate
	local isMerged = nameDB.mergeAuraFrame or nameDB.showCCOnly
	local isUser = guid == userGUID
	local shouldShowCCOnly = nameDB.showCCOnly or ( isMinion and nameDB.showMinionCCOnly )

	local isHostile, enabledAura
	if isUser then
		enabledAura = Aura_Enabled.playerFrame
	else
		-- NOTE: nameplate becoming hostile in a duel still require this event to fire again
		if UnitIsPossessed(unit) then
			isHostile = not UnitCanAttack("player", unit)
		else
			isHostile = UnitCanAttack("player", unit)
		end
		if shouldShowCCOnly then
			enabledAura = isHostile and Aura_Enabled.nameplate.CC or Aura_Enabled.friendlyNameplate.CC
		else
			enabledAura = isHostile and Aura_Enabled.nameplate or Aura_Enabled.friendlyNameplate
		end
	end

	if not NameplateContainer[namePlateFrameBase] then
		NameplateContainer[namePlateFrameBase] = {}
		for _, filter in pairs(AURA_FILTER) do
			local db = nameDB[filter]
			local container = CreateNamePlateContainer(namePlateFrameBase, filter)
			container.unit = unit
			container.guid = guid
			container.isUser = isUser
			container.isHostile = isHostile
			container.shouldShowCCOnly = shouldShowCCOnly
			container.enabledAura = enabledAura
			--[[ NOTE: .UnitFrame is niled when nameplates are hidden before _REMOVED fires (points to the same frame when reacquired).
			Cache BuffFrame so we can update settings on Refresh for hidden nameplates, else we would have to run
			Nameplate_UpdateSettings everytime this event fires]]--
			container.BuffFrame = namePlateFrameBase.UnitFrame.BuffFrame -- width depends on active number of debuffs (full width at 0 debuffs)
			container.healthBar = namePlateFrameBase.UnitFrame.healthBar
			self:Nameplate_UpdateSettings(container, filter, namePlateFrameBase, nameDB, isMerged)
			NameplateContainer[namePlateFrameBase][filter] = container
			if db.enabled and (isUser and db.showPlayer or (not isUser and (isHostile or db.showFriendly)))
				and (not isMerged or filter == "HARMFUL") then
				Nameplate_RegisterUnitAura(container, unit, filter)
			end
		end
	else
		for filter, container in pairs(NameplateContainer[namePlateFrameBase]) do
			local db = nameDB[filter]
			container.guid = guid
			container.unit = unit
			container.isUser = isUser
			container.isHostile = isHostile
			container.shouldShowCCOnly = shouldShowCCOnly
			container.enabledAura = enabledAura
			if db.enabled and (isUser and db.showPlayer or (not isUser and (isHostile or db.showFriendly)))
				and (not isMerged or filter == "HARMFUL") then
				if filter == "HARMFUL" then
					local shouldHide = db.redirectBlizzardDebuffs or db.hideBlizzardDebuffs or nil
					if ( shouldHide ~= container.isBlizzardAuraHidden ) then
						container.BuffFrame:SetAlpha(shouldHide and 0 or 1)
						container.isBlizzardAuraHidden = shouldHide
					end
				end
				Nameplate_RegisterUnitAura(container, unit, filter)
			end
		end
	end

--	E.Libs.CBH:Fire("OnNamePlateAdded", unit)
end

function module:NAME_PLATE_UNIT_REMOVED(unit)
	local namePlateFrameBase = ActiveUnitNameplate[unit]
	if namePlateFrameBase then
		local t = NameplateContainer[namePlateFrameBase]
		for filter, container in pairs(t) do
			if ( container.isBlizzardAuraHidden ) then
				container.BuffFrame:SetAlpha(1) -- reset
				container.isBlizzardAuraHidden = nil
			end
			Nameplate_UnregisterUnitAura(container, unit, filter)
		end
		ActiveUnitNameplate[unit] = nil
	end

--	E.Libs.CBH:Fire("OnNamePlateRemoved", unit)
end

-- Overlays not updating position when you have no target (switching target works) is caused by
-- Blizzard not updating the buffFrame position
function module:Nameplate_UpdateSettings(container, filter, namePlateFrameBase, nameDB, isMerged)
	local db = nameDB[filter]

	-- Toggle Blizzard frame visibility. Set alpha (visibility resets on target change etc) on parent (unlike RF, debuff buttons are added on demand)
	-- TODO: disable tooltips for debuff icons
	if filter == "HARMFUL" then
		local shouldHide = nameDB.visibility[self.zone] and nameDB.enabled and db.enabled
			and (db.redirectBlizzardDebuffs or db.hideBlizzardDebuffs)
			and (container.isUser and db.showPlayer or (not container.isUser and (container.isHostile or db.showFriendly)))
		container.BuffFrame:SetAlpha(shouldHide and 0 or 1)
		container.isBlizzardAuraHidden = shouldHide
	end

	-- Container settings
	container:SetFrameStrata(db.frameStrata) -- set above elite icon
	container:SetFrameLevel(namePlateFrameBase:GetFrameLevel() + db.frameLevel) -- set above nameplate healthbar
	container:ClearAllPoints()
	local relTo = db.relativeFrame == "healthBar" and container.healthBar or container.BuffFrame
	local relPoint = (nameDB.HARMFUL.redirectBlizzardDebuffs or nameDB.HARMFUL.hideBlizzardDebuffs) and db.relativeFrame == "debuffFrame" and db.point or db.relativePoint -- XXX if redirecting then also change rel point for HELPFUL
	container:SetPoint(db.point, relTo, relPoint, db.point == "RIGHT" and -db.offsetX or db.offsetX, db.offsetY)
	container.isMerged = isMerged
	container.priority = nameDB.priority
	container.sorter = AuraComparator[isMerged and filter == "HARMFUL" and (db.maxIcons < 3 and "prioNew" or db.mergedSortby) or db.sortby]
	container.db = db

	-- Overlay settings
	local paddingX = find(db.point, "RIGHT") and -db.paddingX or db.paddingX
	local scale = db.scale
	local edgeSize
	local r, g, b = 0, 0, 0
	for j = 1, NUM_NP_OVERLAYS do
		local overlay = container[j]
		if not overlay then
			overlay = CreateOverlay(container)
			overlay.cooldown.counter:SetFontObject(E.NpCounter)
			container[j] = overlay
		else
			ClearHideOverlayFrame(overlay)
		end
		overlay:ClearAllPoints()
		if j == 1 then
			overlay:SetPoint(db.point, container, db.point)
			-- NOTE: Do not use GetEffectiveScale on animated frames. Nameplates are scaled from 0 which
			-- causes it to return values close to 0, making the icons gigantic
			edgeSize = E.PixelMult / scale
		else
			local rel = db.point == "BOTTOM" and "BOTTOMRIGHT" or reversePoint[db.point]
			overlay:SetPoint(db.point == "BOTTOM" and "BOTTOMLEFT" or db.point, container[j-1], rel, paddingX, 0)
		end

		overlay:SetSize(BASE_ICON_SIZE, BASE_ICON_SIZE)
		overlay:SetScale(scale)
		overlay.count:SetScale(1 / scale)
		overlay:SetAlpha(db.opacity)
		overlay:EnableMouse(overlay.isPassThrough and db.showTooltip)
		overlay.cooldown:SetSwipeColor(0, 0, 0, db.swipeAlpha)
		overlay.cooldown.counter:SetScale(db.counterScale)
		overlay.cooldown:SetHideCountdownNumbers(db.hideCounter)
		overlay.cooldown:SetDrawEdge(db.drawEdge)

		if db.borderType == "pixel" then
			overlay.Border:Hide()
			if overlay.border then
				overlay.border:Hide()
			end

			--Region:SetIgnoreParentScale(ignore)
			--Region:SetIgnoreParentAlpha(ignore)
			overlay.borderTop:ClearAllPoints()
			overlay.borderTop:SetPoint("TOPLEFT", overlay, "TOPLEFT")
			overlay.borderTop:SetPoint("BOTTOMRIGHT", overlay, "TOPRIGHT", 0, -edgeSize)
			overlay.borderTop:SetVertexColor(r, g, b)
			overlay.borderTop:Show()

			overlay.borderBottom:ClearAllPoints()
			overlay.borderBottom:SetPoint("BOTTOMLEFT", overlay, "BOTTOMLEFT")
			overlay.borderBottom:SetPoint("TOPRIGHT", overlay, "BOTTOMRIGHT", 0, edgeSize)
			overlay.borderBottom:SetVertexColor(r, g, b)
			overlay.borderBottom:Show()

			overlay.borderRight:ClearAllPoints()
			overlay.borderRight:SetPoint("TOPRIGHT", overlay.borderTop, "BOTTOMRIGHT")
			overlay.borderRight:SetPoint("BOTTOMLEFT", overlay.borderBottom, "TOPRIGHT", -edgeSize, 0)
			overlay.borderRight:SetVertexColor(r, g, b)
			overlay.borderRight:Show()

			overlay.borderLeft:ClearAllPoints()
			overlay.borderLeft:SetPoint("TOPLEFT", overlay.borderTop, "BOTTOMLEFT")
			overlay.borderLeft:SetPoint("BOTTOMRIGHT", overlay.borderBottom, "TOPLEFT", edgeSize, 0)
			overlay.borderLeft:SetVertexColor(r, g, b)
			overlay.borderLeft:Show()

			overlay.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		elseif db.borderType == "pixelDebuff" then
			overlay.borderTop:Hide()
			overlay.borderBottom:Hide()
			overlay.borderLeft:Hide()
			overlay.borderRight:Hide()
			overlay.Border:Hide()

			if not overlay.border then
				overlay.border = CreateFrame("Frame", nil, overlay, "NamePlateFullBorderTemplate")
				overlay.border:SetBorderSizes(1, 1, 1, 1)
				for _, texture in ipairs(overlay.border.Textures) do
					texture:SetTexelSnappingBias(0.0)
					texture:SetSnapToPixelGrid(false)
				end
			end
			overlay.border:UpdateSizes()
			overlay.border:SetVertexColor(0, 0, 0, 1)
			overlay.border:Show()

			overlay.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		else
			overlay.borderTop:Hide()
			overlay.borderBottom:Hide()
			overlay.borderLeft:Hide()
			overlay.borderRight:Hide()
			if overlay.border then
				overlay.border:Hide()
			end

			--[[
			if scale < 1 then -- using two separate texture as atlas texture distorts if scaled down
				--overlay.Border:SetTexture("Interface\\BUTTONS\\UI-Quickslot-Depress")
				--overlay.Border:SetDrawLayer("BORDER") -- draw under icon to mask the depress texture
				overlay.Border:SetTexture("Interface/AddOns/OmniAuras/Config/Libs/Media/omniauras-ui-quickslot-depress2-nodepress")
				overlay.Border:SetDrawLayer("OVERLAY")
				overlay.Border:ClearAllPoints()
				overlay.Border:SetPoint("TOPLEFT", -2.5, 2.5)
				overlay.Border:SetPoint("BOTTOMRIGHT", 2.5, -2.5)
			else
				overlay.Border:SetAtlas("orderhalltalents-spellborder-yellow", true)
				overlay.Border:SetDrawLayer("OVERLAY")
				overlay.Border:ClearAllPoints()
				overlay.Border:SetPoint("CENTER")
			end
			]]
			overlay.Border:SetAtlas("orderhalltalents-spellborder-yellow", true)
			overlay.Border:SetDrawLayer("OVERLAY")
			overlay.Border:ClearAllPoints()
			overlay.Border:SetPoint("CENTER")

			overlay.Border:Show()
			overlay.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		end
	end
end

--
-- Event handling
--

function module:UnitFrame_RegisterEvents()
	local enabled = db.unitFrame.enabled
	local disabled = true
	for unit, t in pairs(UnitFrameContainer) do
		local unitType = UF_UNITTYPE[unit]
		if unitType ~= "party" then -- party done in CompactUnitFrame_RegisterEvents
			local unitTypeDB = db.unitFrame[unitType]
			local guid = UnitGUID(unit)
			local enabledUnitType = enabled and unitTypeDB.enabled
				and (self.isInTestMode or unitTypeDB.visibility[self.zone])
				and (unit ~= "pet" or E.userClass == "WARLOCK" or E.userClass == "HUNTER")
			local isMerged = unitTypeDB.mergeAuraFrame or unitTypeDB.showCCOnly
			for filter, container in pairs(t) do
				if enabledUnitType and unitTypeDB[filter].enabled and (not isMerged or filter == "HARMFUL") then
					-- Handle updating auras on target change
					if unit == "focus" then
						container:RegisterEvent('PLAYER_FOCUS_CHANGED')
					elseif unit == "target" then
						container:RegisterEvent('PLAYER_TARGET_CHANGED')
					-- Handle updating auras on new arena enemy
					elseif unitType == "arena" then
						container:RegisterEvent('ARENA_OPPONENT_UPDATE')
					end
					-- Register UNIT_AURA
					container.guid = guid -- can be nil
					UnitFrame_RegisterUnitAura(container, unit, filter)
					disabled = nil
				else
					if unit == "focus" then
						container:UnregisterEvent('PLAYER_FOCUS_CHANGED')
					elseif unit == "target" then
						container:UnregisterEvent('PLAYER_TARGET_CHANGED')
					elseif unitType == "arena" then
						container:UnregisterEvent('ARENA_OPPONENT_UPDATE')
					end
					UnitFrame_UnregisterUnitAura(container, unit, filter)
				end
			end
		end
	end
	self.disabledUF = disabled
end

function module:CompactUnitFrame_RegisterEvents(isRefresh) -- XXX no self
	local raidDB, unitDB = db.raidFrame, db.unitFrame
	local disabledCUF = not (raidDB.visibility[self.zone] and raidDB.enabled and (raidDB.HARMFUL.enabled or raidDB.HELPFUL.enabled or raidDB.MYHELPFUL.enabled))
	local disabledPartyUF = not (unitDB.party.visibility[self.zone] and unitDB.enabled and unitDB.party.enabled and (unitDB.party.HARMFUL.enabled or unitDB.party.HELPFUL.enabled))
	self.disabledCUF = disabledCUF
	self.disabledPartyUF = disabledPartyUF

	if disabledCUF then
		CompactUnitFrame_UnregisterAllUnitAura(nil, true)
	end
	if disabledPartyUF or self:CompactFrameIsActive() then
		PartyUnitFrame_UnregisterAllUnitAura()
	end
	if disabledCUF and disabledPartyUF then
		-- TODO: double down until I can test this. OmniCD doesn't have issues with scripts moving frames
		self:UnregisterEvent('GROUP_ROSTER_UPDATE')
		self:UnregisterEvent('PLAYER_ROLES_ASSIGNED')
	else
		self:PLAYER_ROLES_ASSIGNED(isRefresh)
		self:RegisterEvent('GROUP_ROSTER_UPDATE')
		self:RegisterEvent('PLAYER_ROLES_ASSIGNED')
	end
end

-- This table is only used to update auras on PEW and Refresh (opt change)
local NAMEPLATE_UNIT = {
	"nameplate1", "nameplate2", "nameplate3", "nameplate4", "nameplate5", "nameplate6", "nameplate7", "nameplate8", "nameplate9", "nameplate10",
	"nameplate11", "nameplate12", "nameplate13", "nameplate14", "nameplate15", "nameplate16", "nameplate17", "nameplate18", "nameplate19", "nameplate20",
	"nameplate21", "nameplate22", "nameplate23", "nameplate24", "nameplate25", "nameplate26", "nameplate27", "nameplate28", "nameplate29", "nameplate30",
	"nameplate31", "nameplate32", "nameplate33", "nameplate34", "nameplate35", "nameplate36", "nameplate37", "nameplate38", "nameplate39", "nameplate40",
--	"nameplate41", "nameplate42", "nameplate43", "nameplate44", "nameplate45", "nameplate46", "nameplate47", "nameplate48", "nameplate49", "nameplate50",
--	"nameplate51", "nameplate52", "nameplate53", "nameplate54", "nameplate55", "nameplate56", "nameplate57", "nameplate58", "nameplate59", "nameplate60",
}

function module:Nameplate_RegisterEvents()
	local nameDB = db.nameplate
	-- init refresh won't have zone info which is needed so that _ADDED registers before ANP
	local enabled = nameDB.visibility[self.zone or select(2,IsInInstance())] and nameDB.enabled and (nameDB.HARMFUL.enabled or nameDB.HELPFUL.enabled)
	if enabled then
		self:RegisterEvent('NAME_PLATE_UNIT_ADDED')
		self:RegisterEvent('NAME_PLATE_UNIT_REMOVED')
		--[[ NOTE: Iterate units from our id table instead of overlays. Overlays only exist for seen units
		so auras won't update immediately when we enable the nameplate option]]--
		for _, unit in ipairs(NAMEPLATE_UNIT) do
			if UnitExists(unit) then -- ActiveUnitNameplate[unit] exists already if show nameplate is enabled in the interface option -> forcing update
				self:NAME_PLATE_UNIT_REMOVED(unit) -- this will unregister HELPFUL container if merge option is toggle on
				self:NAME_PLATE_UNIT_ADDED(unit) -- update auras on existing units. Overlays aren't precreated like UF so call helper event instead of RegisterUnitAura directly
			end
		end
	else
		self:UnregisterEvent('NAME_PLATE_UNIT_ADDED')
		self:UnregisterEvent('NAME_PLATE_UNIT_REMOVED')
		for namePlateFrameBase, t in pairs(NameplateContainer) do
			local unit = t.HARMFUL.unit
			self:NAME_PLATE_UNIT_REMOVED(unit)
		end
	end
	self.disabledNP = not enabled
end

--
-- Spell Lockout
--

local WarningFramePool = {}

local function ReleaseWarningFrame_OnHide(self)
	if self.pulseAnim:IsPlaying() then
		self.pulseAnim:Stop()
	end
	self:Hide()
	self.icon.warningFrame = nil
	tinsert(WarningFramePool, self)
end

local function AcquireWarningFrame(icon)
	local frame = tremove(WarningFramePool)
	if not frame then
		frame = CreateFrame("Frame", nil, UIParent, "OmniAurasLockOutButtonTemplate")
		frame:SetFrameStrata(icon:GetFrameStrata())
		frame:SetFrameLevel(icon:GetFrameLevel()+1)
		frame:SetScript("OnHide", ReleaseWarningFrame_OnHide)
	end
	-- NOTE: SetParent to hide and release the lockout frame whenever UpdateUnitBar is called
	-- as icons may no longer point to the same spell (all icons are hidden initially on SetIconLayout)
	frame:SetParent(icon)
	frame.icon = icon
	frame:ClearAllPoints()
	frame:SetAllPoints(icon)
	return frame
end

local UpdateOmniCDWarning = function(destGUID, auraInstanceID)
	local info = module.OmniCDParty.groupInfo[destGUID]
	if info and not info.isDeadOrOffline then
		local icon = info.spellIcons[45438] -- Ice Block. Ignore Cold Snap availability
		if icon and not icon.active then
			if not icon.warningFrame then
				icon.warningFrame = AcquireWarningFrame(icon)
				icon.warningFrame.pulseAnim:Play()
			end
			-- redirect if duration is off and it sees another frost lockout
			SpellLockedGUIDS[destGUID][auraInstanceID].args.warningFrame = icon.warningFrame
		end
	end
end

local function UpdateAllActiveFrameDebuffs(guid)
	for unit, container in pairs(ActiveUnitContainer.HARMFUL) do
		if container.guid == guid then
			if (unit ~= "target" and unit ~= "focus") or container:IsVisible() then -- target/focus are never removed from ActiveUnitContainer
				container:UpdateAuras('UNIT_AURA', unit, nil)
			end
		end
	end
end

local Lockout_OnTimerEnd = function(destGUID, auraInstanceID)
	local callbacktimer = SpellLockedGUIDS[destGUID] and SpellLockedGUIDS[destGUID][auraInstanceID]
	if callbacktimer then
		if callbacktimer.args.warningFrame then
			-- check if there's another frost lockout
			local found
			for id, timer in pairs(SpellLockedGUIDS[destGUID]) do
				if id ~= auraInstanceID and timer.args[3].mageLockedFrostSchool then
					found = true
				end
			end
			if not found then
				callbacktimer.args.warningFrame:Hide()
			end
		end
		SpellLockedGUIDS[destGUID][auraInstanceID] = nil
		UpdateAllActiveFrameDebuffs(destGUID)
	end
end

local InterruptData = {}

for spellId, spell in pairs(E.aura_db.INTERRUPT) do
	InterruptData[spellId] = {
		icon = spell[6],
		applications = 0,
		dispelName = "none",
		duration = spell[5],
		expirationTime = 0,
		spellId = spellId,
		auraInstanceID = 0,
		isHarmful = true,
		name = GetSpellInfo(spellId),
		priority = 1,
		scale = 1,
	}
end

local spellLockReducer = {
	[317920] = 0.7, -- Concentration Aura (no duration)
	[234084] = 0.3, -- Moon and Stars (10sec duration)
	[383020] = 0.5, -- Tranquil Air (20sec duration)
}

local RegisteredEvents = {}
RegisteredEvents.SPELL_INTERRUPT = {}
RegisteredEvents.SPELL_CAST_SUCCESS = {}

for spellId, spell in pairs(InterruptData) do
	RegisteredEvents.SPELL_INTERRUPT[spellId] = function(destGUID, extraSchool, _, extraSpellId)
		local aura
		for unit, container in pairs(ActiveUnitContainer.HARMFUL) do
			unit = unit == "uplayer" and "player" or partyFrameUnitId[unit] or unit
			local guid = container.guid or UnitGUID(unit)
			if guid == destGUID then
				if not aura then
					aura = E:DeepCopy(spell)
					local duration = aura.duration
					AuraUtil_ForEachAura(unit, "HELPFUL", nil, function(_,_,_,_,_,_,_,_,_, id)
						local mult = spellLockReducer[id]
						if mult then
							duration = duration * mult
						end
					end)
					AuraUtil_ForEachAura(unit, "HARMFUL", nil, function(_,_,_,_,_,_,_,_,_, id)
						if id == 372048 then
							duration = duration * (module.isInPvPInstance and 1.3 or 1.5)
							return true
						end
					end)

					aura.expirationTime = GetTime() + duration
					aura.auraInstanceID = floor(aura.expirationTime)
					aura.lockedSchool = extraSchool
					local isLockedInFrost = band(aura.lockedSchool, 16)
					if isLockedInFrost ~= 0 then
						aura.mageLockedFrostSchool = select(2, UnitClass(unit)) == "MAGE" and isLockedInFrost
					end
					aura.lockedSchoolName = GetSchoolString(extraSchool) -- localized string (e.g 48: Shadowfrost)

					SpellLockedGUIDS[destGUID] = SpellLockedGUIDS[destGUID] or {}
					SpellLockedGUIDS[destGUID][aura.auraInstanceID] = E.TimerAfter(duration, Lockout_OnTimerEnd, destGUID, aura.auraInstanceID, aura)

					if aura.mageLockedFrostSchool and module.OmniCDParty then
						UpdateOmniCDWarning(destGUID, aura.auraInstanceID)
					end
				end
				if container.auraInfo and container.enabledAura[spellId] then
					local caura = E:DeepCopy(aura)
					caura.scale = container.db.typeScale and container.db.typeScale.softCC
					caura.priority = container.priority.softCC + 1
					container.auraInfo[caura.auraInstanceID] = caura
				end
				container:UpdateAuras('UNIT_AURA', unit, E.BLANK, true) -- skip parsing
			end
		end
	end

	--[[ NOTE: Interrupting a channel usually doesn't fire SPELL_INTERRUPT (e.g. Penance).
	Some channels fire SPELL_INTERRUPT (e.g. Ray of Frost), but as long as we're using the same auraInstanceID
	we won't have duplicate icons showing]]--
	-- FIXME: getting double icon occasionally. replace auraInstanceID with spellId?
	RegisteredEvents.SPELL_CAST_SUCCESS[spellId] = function(destGUID)
		local aura
		for unit, container in pairs(ActiveUnitContainer.HARMFUL) do
			unit = unit == "uplayer" and "player" or partyFrameUnitId[unit] or unit
			local guid = container.guid or UnitGUID(unit)
			if guid == destGUID then
				if not aura then
					local _,_,_,_,_,_, notInterruptable, channelID = UnitChannelInfo(unit)
					if notInterruptable ~= false then -- nil when not channeling
						return
					end
					aura = E:DeepCopy(spell)
					local duration = aura.duration
					AuraUtil_ForEachAura(unit, "HELPFUL", nil, function(_,_,_,_,_,_,_,_,_, id)
						local mult = spellLockReducer[id]
						if mult then
							duration = duration * mult
						end
					end)
					AuraUtil_ForEachAura(unit, "HARMFUL", nil, function(_,_,_,_,_,_,_,_,_, id)
						if id == 372048 then
							duration = duration * (module.isInPvPInstance and 1.3 or 1.5)
							return true
						end
					end)

					aura.expirationTime = GetTime() + duration
					aura.auraInstanceID = floor(aura.expirationTime)

					SpellLockedGUIDS[destGUID] = SpellLockedGUIDS[destGUID] or {}
					SpellLockedGUIDS[destGUID][aura.auraInstanceID] = E.TimerAfter(duration, Lockout_OnTimerEnd, destGUID, aura.auraInstanceID, aura)

					if channelID == 205021 then -- Ray of Frost -- TODO: any other channeled frost spells for Mage?
						aura.lockedSchool = 16
						aura.mageLockedFrostSchool = true
						if module.OmniCDParty then
							UpdateOmniCDWarning(destGUID, aura.auraInstanceID)
						end
					end
				end
				if container.auraInfo and container.enabledAura[spellId] then
					local caura = E:DeepCopy(aura)
					caura.scale = container.db.typeScale and container.db.typeScale.softCC
					caura.priority = container.priority.softCC + 1
					container.auraInfo[caura.auraInstanceID] = caura
				end
				container:UpdateAuras('UNIT_AURA', unit, E.BLANK, true)
			end
		end
	end
end

-- Remove Frost lockout on Cold Snap
RegisteredEvents.SPELL_CAST_SUCCESS[235219] = function(_,_, srcGUID)
	if SpellLockedGUIDS[srcGUID] then
		local frostLockoutRemoved
		for auraInstanceID, callbackTimer in pairs(SpellLockedGUIDS[srcGUID]) do
			local aura = callbackTimer.args[3]
			if aura and aura.mageLockedFrostSchool then
				if callbackTimer.args.warningFrame then
					callbackTimer.args.warningFrame:Hide()
				end
				if aura.mageLockedFrostSchool == 16 then
					callbackTimer:Cancel()
					SpellLockedGUIDS[srcGUID][auraInstanceID] = nil
				elseif aura.mageLockedFrostSchool > 16 then
					local newSchool = aura.mageLockedFrostSchool - 16
					aura.lockedSchool = newSchool
					aura.lockedSchoolName = GetSchoolString(newSchool)
					aura.mageLockedFrostSchool = nil
				end
				frostLockoutRemoved = true
			end
		end
		if frostLockoutRemoved then
			UpdateAllActiveFrameDebuffs(srcGUID)
		end
	end
end

function module:COMBAT_LOG_EVENT_UNFILTERED()
	local _, event, _,srcGUID, _,_,_, destGUID, _,_,_, spellId, _,_, extraSpellId, _, extraSchool = CombatLogGetCurrentEventInfo()
	local func = RegisteredEvents[event] and RegisteredEvents[event][spellId]
	if func then
		func(destGUID, extraSchool, srcGUID, extraSpellId)
	end
end

--
-- Callbacks
--

function module:CompactUnitFrame_UpdateAll(updateComparator)
	local raidDB = db.raidFrame
	local buffSize = self:GetBuffFrameBaseSize()
	for frame, t in pairs(CompactUnitFrameContainer) do
		for filter, container in pairs(t) do
			self:CompactUnitFrame_UpdateSettings(container, filter, frame, raidDB, buffSize)
			if updateComparator then
				container.auraInfo = nil
			end
		end
	end
end

function module:Nameplate_UpdateAll(updateComparator)
	local nameDB = db.nameplate
	local isMerged = nameDB.mergeAuraFrame or nameDB.showCCOnly
	for namePlateFrameBase, t in pairs(NameplateContainer) do
		for filter, container in pairs(t) do
			self:Nameplate_UpdateSettings(container, filter, namePlateFrameBase, nameDB, isMerged)
			if updateComparator then
				container.auraInfo = nil
			end
		end
	end
end

function module:GetArenaBuffFrameBaseSize()
	local arenaDB = db.unitFrame.arena
	local systemIndex = CompactRaidGroupTypeEnum.Arena
	local frameWidth = EditModeManagerFrame:GetRaidFrameWidth(systemIndex)
	local frameHeight = EditModeManagerFrame:GetRaidFrameHeight(systemIndex)
	local componentScale = min(frameHeight / NATIVE_UNIT_FRAME_HEIGHT, frameWidth / NATIVE_UNIT_FRAME_WIDTH)
	local buffSize = min(arenaDB.globalScale, 11 * componentScale)

	local options = DefaultCompactUnitFrameSetupOptions
	local powerBarHeight = 8
	local powerBarUsedHeight = options.pvpDisplayPowerBar and powerBarHeight or 0
	local maxDebuffSize = frameHeight - powerBarUsedHeight - CUF_AURA_BOTTOM_OFFSET - CUF_NAME_SECTION_SIZE
	self.arenaCurrMaxScale = maxDebuffSize / buffSize
	self.arenaCurrBaseSize = buffSize
	self.arenaCurrBossScale = (buffSize + BOSS_DEBUFF_SIZE_INCREASE) / buffSize

	local maxDebuffSpace = frameWidth - 6
	local totInnerDebuffs
	local numInnerDebuffs
	if arenaDB.HARMFUL.preset == "overDebuffs" then
		totInnerDebuffs = maxDebuffSpace / buffSize
		numInnerDebuffs = floor(totInnerDebuffs)
	end
	self.arenaTotInnerDebuffs = totInnerDebuffs
	self.arenaNumInnerDebuffs = numInnerDebuffs and min(numInnerDebuffs, NUM_AF_OVERLAYS.HARMFUL)

	local counterScale = componentScale / 2
	counterScale = counterScale * (buffSize / (11 * componentScale))
	self.arenaCurrCounterScale = counterScale

	return buffSize
end

function module:UnitFrame_UpdateAll(updateComparator)
	-- UnitFrame_UpdateSettings

	local buffSize = self:GetArenaBuffFrameBaseSize()
	for unit, t in pairs(UnitFrameContainer) do
		local frameName = UF_FRAMENAME[unit]
		local unitType = UF_UNITTYPE[unit]
		local uf = unitType == "party" and frameName or _G[frameName]
		local unitTypeDB = db.unitFrame[unitType]
		local isMerged = unitTypeDB.mergeAuraFrame or unitTypeDB.showCCOnly
			or (unitTypeDB.HARMFUL.enabled and unitTypeDB.HARMFUL.preset == "PORTRAIT" and unitTypeDB.HELPFUL.enabled and unitTypeDB.HELPFUL.preset == "PORTRAIT")
		local enabledAura = unit == "player" and Aura_Enabled.playerFrame or (unitType == "arena" and Aura_Enabled.arenaFrame) or Aura_Enabled.unitFrame
		enabledAura = unitTypeDB.showCCOnly and enabledAura.CC or enabledAura
		for filter, container in pairs(t) do
			local db = unitTypeDB[filter]
			local isHARMFUL = filter == "HARMFUL"
			local isManual = db.preset == "MANUAL"
			container.isMerged = isMerged
			container.shouldGlow = db.preset ~= "PORTRAIT" and db.glow
			container.priority = unitTypeDB.priority
			container.sorter = AuraComparator[db.sortby]
			container.db = db
			container.enabledAura = enabledAura

			local edgeSize
			local r, g, b = db.borderColor.r, db.borderColor.g, db.borderColor.b

			if unitType == "arena" then
				uf.DebuffFrame:SetAlpha(unitTypeDB.ccFrame.hideCc and 0 or 1) -- shows stealth icon
				--uf.CcRemoverFrame:SetAlpha(unitTypeDB.ccFrame.hideCcRemover and 0 or 1)

				if isHARMFUL then
					if uf.debuffFrames then
						local shouldHide = unitTypeDB.visibility[self.zone] and unitTypeDB.enabled and db.enabled and db.redirectBlizzardDebuffs
						local n = #uf.debuffFrames
						for i = 1, n do
							local debuffFrame = uf.debuffFrames[i]
							debuffFrame:SetAlpha(shouldHide and 0 or 1)
							debuffFrame:EnableMouse(not shouldHide)
						end
					end
				end

				-- Container settings
				container:SetFrameLevel(uf:GetFrameLevel() + db.frameLevel)
				container:ClearAllPoints()
				local scale
				if isManual then
					E.LoadPosition(container)
					scale = db.scale
				else
					local relTo = db.relativeFrame == "castBarIcon" and uf.CastingBarFrame.Icon or uf[db.relativeFrame] or uf
					local xOfs, yOfs
					if db.preset == "overDebuffs" then
						xOfs, yOfs, scale = 0, 0, 1
					else
						xOfs, yOfs, scale = db.offsetX, db.offsetY, db.scale
					end
					container:SetPoint(db.point, relTo, db.relativePoint, xOfs, yOfs)
				end

				-- Overlay settings
				local point = db.point == "CENTER" and "LEFT" or db.point
				local relPoint = db.point == "CENTER" and "RIGHT" or reversePoint[db.point]
				local numInnerDebuffs
				if isHARMFUL then
					numInnerDebuffs = self.arenaNumInnerDebuffs
				end
				local n = NUM_AF_OVERLAYS[filter]
				for j = 1, n do
					local overlay = container[j]
					ClearHideOverlayFrame(overlay)

					overlay:SetScale(scale)
					overlay:ClearAllPoints()
					if isManual then
						overlay:SetPoint("CENTER")
						if self.isInTestMode then
							if not overlay.name then
								overlay.name = overlay:CreateFontString(nil, "OVERLAY", "UFCounter-OmniAuras")
								overlay.name:SetPoint("TOP", overlay, "BOTTOM", 0, -5)
							end
							overlay.name:SetFormattedText("%s|%s%s", unit, isHARMFUL and "debuffs" or "buffs", unitTypeDB.mergeAuraFrame and " + buffs" or "")
						end
						if j == 1 then
							edgeSize = E.PixelMult / db.scale
						else
							overlay:SetPoint("BOTTOMLEFT", container[j-1], "BOTTOMRIGHT")
						end
					elseif j == 1 then
						overlay:SetPoint(db.point, container, db.point)
						edgeSize = E.uiUnitFactor / overlay:GetEffectiveScale()
					elseif numInnerDebuffs and j > numInnerDebuffs then
						overlay:SetPoint(reversePoint[point], container[j == numInnerDebuffs + 1 and 1 or j-1], reversePoint[relPoint])
					else
						overlay:SetPoint(point, container[j-1], relPoint)
					end

					if overlay.name then
						overlay.name:SetShown(isManual and self.isInTestMode)
					end
					overlay:SetSize(buffSize, buffSize)
					overlay.HighlightFlash:SetScale(buffSize / BASE_ICON_SIZE)
					overlay:SetAlpha(db.opacity)
					overlay:EnableMouse(self.isInTestMode and isManual or (overlay.isPassThrough and db.showTooltip))
					overlay.cooldown:SetSwipeColor(0, 0, 0, db.swipeAlpha)
					overlay.cooldown.counter:SetScale(self.arenaCurrCounterScale * db.counterScale)
					overlay.cooldown:SetHideCountdownNumbers(db.hideCounter)

					if db.borderType == "blizzard" then
						overlay.border:Show()
						overlay.borderTop:Hide()
						overlay.borderBottom:Hide()
						overlay.borderLeft:Hide()
						overlay.borderRight:Hide()
						overlay.icon:SetTexCoord(0, 1, 0, 1)
					else
						if overlay.border then -- Blizzard
							overlay.border:Hide()
						end

						overlay.borderTop:ClearAllPoints()
						overlay.borderTop:SetPoint("TOPLEFT", overlay, "TOPLEFT")
						overlay.borderTop:SetPoint("BOTTOMRIGHT", overlay, "TOPRIGHT", 0, -edgeSize)
						overlay.borderTop:SetVertexColor(r, g, b)
						overlay.borderTop:Show()

						overlay.borderBottom:ClearAllPoints()
						overlay.borderBottom:SetPoint("BOTTOMLEFT", overlay, "BOTTOMLEFT")
						overlay.borderBottom:SetPoint("TOPRIGHT", overlay, "BOTTOMRIGHT", 0, edgeSize)
						overlay.borderBottom:SetVertexColor(r, g, b)
						overlay.borderBottom:Show()

						overlay.borderRight:ClearAllPoints()
						overlay.borderRight:SetPoint("TOPRIGHT", overlay.borderTop, "BOTTOMRIGHT")
						overlay.borderRight:SetPoint("BOTTOMLEFT", overlay.borderBottom, "TOPRIGHT", -edgeSize, 0)
						overlay.borderRight:SetVertexColor(r, g, b)
						overlay.borderRight:Show()

						overlay.borderLeft:ClearAllPoints()
						overlay.borderLeft:SetPoint("TOPLEFT", overlay.borderTop, "BOTTOMLEFT")
						overlay.borderLeft:SetPoint("BOTTOMRIGHT", overlay.borderBottom, "TOPLEFT", edgeSize, 0)
						overlay.borderLeft:SetVertexColor(r, g, b)
						overlay.borderLeft:Show()

						overlay.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
					end
				end
			else
				for j = 1, NUM_UF_OVERLAYS do
					local overlay = container[j]
					ClearHideOverlayFrame(overlay)

					overlay:ClearAllPoints()
					if db.preset == "PORTRAIT" then
						overlay:SetParent(overlay.portraitParent)
						overlay:SetFrameLevel(overlay.portraitParent:GetFrameLevel())
						overlay:SetScale(1.0)
						overlay:SetAlpha(1.0)
						overlay:EnableMouse(false)
						-- portrait's textureSubLevel is 1 and frameart is 2 so we need to lower the portrait textureSubLevel to place our texture in between
						overlay.icon:SetDrawLayer("BACKGROUND", 1)
						overlay.portrait:SetDrawLayer("BACKGROUND", -1)
						overlay:SetAllPoints(overlay.portrait)
						if unitType == "arena" then -- fix misalignment
							overlay:SetPoint("BOTTOMLEFT", overlay.portrait, 4, 4)
						end
						if not overlay.mask then
							overlay.mask = overlay:CreateMaskTexture()
							overlay.mask:SetAllPoints(overlay.icon)
							overlay.mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask") --, "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
						end
						overlay.icon:AddMaskTexture(overlay.mask)
						overlay.Border:Hide()
						overlay.borderTop:Hide()
						overlay.borderBottom:Hide()
						overlay.borderLeft:Hide()
						overlay.borderRight:Hide()
						overlay.icon:SetTexCoord(0, 1, 0, 1)
						overlay.cooldown:ClearAllPoints()
						overlay.cooldown:SetPoint("TOPLEFT", 2, -2.5)
						overlay.cooldown:SetPoint("BOTTOMRIGHT", -2.5, 2)
						overlay.cooldown:SetSwipeTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask")
						overlay.cooldown:SetDrawEdge(false)
					else
						overlay:SetParent(overlay.container)
						overlay:SetFrameLevel(600) -- target, focus frame texture is 500
						overlay:SetScale(db.scale) -- do before GetEffectiveScale is called
						overlay:SetAlpha(db.opacity)
						overlay:EnableMouse(self.isInTestMode and isManual)
						if overlay.mask then
							overlay.icon:RemoveMaskTexture(overlay.mask)
							overlay.icon:SetDrawLayer("ARTWORK", 0) -- DF revert
						end
						if isManual then
							overlay:SetPoint("CENTER")
							E.LoadPosition(overlay.container)
							if self.isInTestMode then
								if not overlay.name then
									overlay.name = overlay:CreateFontString(nil, "OVERLAY", "UFCounter-OmniAuras")
									overlay.name:SetPoint("TOP", overlay, "BOTTOM", 0, -5)
								end
								overlay.name:SetFormattedText("%s|%s%s", unit, filter == "HARMFUL" and "debuffs" or "buffs", unitTypeDB.mergeAuraFrame and " + buffs" or "")
							end
							if j == 1 then
								edgeSize = E.PixelMult / db.scale
							end
						else
							if j == 1 then
								overlay:SetPoint(db.point, uf, db.relativePoint, db.offsetX, db.offsetY)
							else
								overlay:SetPoint(db.point, container[j-1], db.relativePoint)
							end
							if j == 1 then
								edgeSize = E.uiUnitFactor / overlay:GetEffectiveScale()
							end
						end
						if db.borderType == "texture" then
							overlay.borderTop:Hide()
							overlay.borderBottom:Hide()
							overlay.borderLeft:Hide()
							overlay.borderRight:Hide()
							overlay.Border:Show()
							overlay.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
						else
							overlay.Border:Hide()

							overlay.borderTop:ClearAllPoints()
							overlay.borderTop:SetPoint("TOPLEFT", overlay, "TOPLEFT")
							overlay.borderTop:SetPoint("BOTTOMRIGHT", overlay, "TOPRIGHT", 0, -edgeSize)
							overlay.borderTop:SetVertexColor(r, g, b)
							overlay.borderTop:Show()

							overlay.borderBottom:ClearAllPoints()
							overlay.borderBottom:SetPoint("BOTTOMLEFT", overlay, "BOTTOMLEFT")
							overlay.borderBottom:SetPoint("TOPRIGHT", overlay, "BOTTOMRIGHT", 0, edgeSize)
							overlay.borderBottom:SetVertexColor(r, g, b)
							overlay.borderBottom:Show()

							overlay.borderRight:ClearAllPoints()
							overlay.borderRight:SetPoint("TOPRIGHT", overlay.borderTop, "BOTTOMRIGHT")
							overlay.borderRight:SetPoint("BOTTOMLEFT", overlay.borderBottom, "TOPRIGHT", -edgeSize, 0)
							overlay.borderRight:SetVertexColor(r, g, b)
							overlay.borderRight:Show()

							overlay.borderLeft:ClearAllPoints()
							overlay.borderLeft:SetPoint("TOPLEFT", overlay.borderTop, "BOTTOMLEFT")
							overlay.borderLeft:SetPoint("BOTTOMRIGHT", overlay.borderBottom, "TOPLEFT", edgeSize, 0)
							overlay.borderLeft:SetVertexColor(r, g, b)
							overlay.borderLeft:Show()

							overlay.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
						end
						overlay.cooldown:ClearAllPoints()
						overlay.cooldown:SetAllPoints()
						overlay.cooldown:SetSwipeTexture("", 0, 0, 0, 1)
						overlay.cooldown:SetDrawEdge(db.drawEdge)
					end
					overlay.cooldown:SetSwipeColor(0, 0, 0, db.swipeAlpha)
					overlay.cooldown.counter:SetScale(db.counterScale)
					overlay.cooldown:SetHideCountdownNumbers(db.hideCounter)
					if overlay.name then
						overlay.name:SetShown(isManual and self.isInTestMode)
					end
				end
			end

			if updateComparator then
				container.auraInfo = nil
			end
		end
	end
end

local AddEnabledAura
AddEnabledAura = function(frame, id, v, ccEnabledFrame)
	if type(id) == "table" then
		for _, mergedId in pairs(id) do
			AddEnabledAura(frame, mergedId, v, ccEnabledFrame)
		end
	else
		Aura_Enabled[frame][id] = v
		if ccEnabledFrame then
			ccEnabledFrame[id] = v
		end
	end
end

local function UpdateEnabledAuras()
	for k, v in pairs(Aura_Enabled) do
		wipe(v)
		if k == "nameplate" or k == "friendlyNameplate" or k == "unitFrame" or k == "playerFrame" then
			Aura_Enabled[k].CC = {}
		end
	end
	for filter, t in pairs(E.aura_db) do
		for id, v in pairs(t) do
			local classPriority, mergedAuraIDs = v[1], v[4]
			local sId = tostring(id)
			local auraData = db.auras[sId] -- blacklist filtered in _ProcessAura
			if auraData then
				for frame, state in pairs(auraData) do
					local ccEnabledFrame = (classPriority == "hardCC" or classPriority == "softCC") and Aura_Enabled[frame].CC
					if state then
						if mergedAuraIDs then
							AddEnabledAura(frame, mergedAuraIDs, v, ccEnabledFrame)
						end
						AddEnabledAura(frame, id, v, ccEnabledFrame)
					end
				end
			end
		end
	end
end

local function FindMergedIDs(spellId)
	for filter, t in pairs(E.aura_db) do
		if t[spellId] then
			return t[spellId][4]
		end
	end
end

local AddNoFriendAura
AddNoFriendAura = function(id)
	if type(id) == "table" then
		for _, mergedId in pairs(id) do
			AddNoFriendAura(mergedId)
		end
	else
		Aura_NoFriend[id] = true
	end
end

local function UpdateFilteredAuras()
	wipe(Aura_NoFriend)
	for type, t in pairs(db.auraFiltered) do
		for sId, state in pairs(t) do
			if state and type == "noFriend" then
				local id = tonumber(sId)
				local mergedAuraIDs = FindMergedIDs(id)
				if mergedAuraIDs then
					AddNoFriendAura(mergedAuraIDs)
				end
				AddNoFriendAura(id)
			end
		end
	end
end

function module:Refresh(updateComparator) -- wipe auraInfo and create new metatable to update comparator. Clear() only empties table
	-- Update db
	db = E.profile
	blacklist = E.global.auraBlacklist
	self.OmniCDParty = db.warnFrostLockout and OmniCD and OmniCD[1] and OmniCD[1].Party

	-- clear timers
	for guid, timers in pairs(SpellLockedGUIDS) do
		for auraInstanceID, callbacktimer in pairs(timers) do
			callbacktimer:Cancel()
		end
		SpellLockedGUIDS[guid] = nil
	end

	-- Update general settings
	E:UpdateFontObjects()
	E:SetPixelMult()

	-- Update auras
	UpdateEnabledAuras()
	UpdateFilteredAuras()

	-- Update display settings
	AdjustedDebuffTypeColor = E:CopyAdjustedColors(db.raidFrame.HARMFUL.debuffTypeColor, 0.7)
	AdjustedDebuffTypeColorArena = E:CopyAdjustedColors(db.unitFrame.arena.HARMFUL.debuffTypeColor, 0.7)
	AdjustedDebuffTypeColorNamePlate = E:CopyAdjustedColors(db.nameplate.HARMFUL.debuffTypeColor, 0.7)
	self:CompactUnitFrame_UpdateAll(updateComparator)
	self:Nameplate_UpdateAll(updateComparator)
	self:UnitFrame_UpdateAll(updateComparator)

	-- Update visibility settings
	self:CompactUnitFrame_RegisterEvents(true)
	self:UnitFrame_RegisterEvents()
	self:Nameplate_RegisterEvents()

	if self.disabledUF and self.disabledNP and self.disabledCUF then
		self:UnregisterEvent('COMBAT_LOG_EVENT_UNFILTERED')
	else
		self:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED')
	end
end

local profileNames = {} -- reuse tbl
function module:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
	local _, instanceType = IsInInstance()
	self.zone = instanceType
	self.isInArena = instanceType == "arena"
	self.isInPvPInstance = self.isInArena or instanceType == "pvp"

	-- load zone profile (NOT USED)
	if ( db.useZoneProfile ) then
		local profile = db.zoneProfile[instanceType]
		if ( profile and profile ~= "current" ) then
			local found
			E.DB:GetProfiles(profileNames)
			for _, name in ipairs(profileNames) do
				if ( name == profile ) then
					found = profile
					break
				end
			end
			profile = found or E.DB:GetCurrentProfile()
			E.DB:SetProfile(profile)
			return
		end
	end

	self:Refresh()
	-- Fix LFR/SS
	-- overlay size n
	CallbackTimers.refreshDelay = E.TimerAfter(5, self.CompactUnitFrame_RegisterEvents, self, nil)
end

--
-- Test Mode
--

module.testAuras = {}

module.testAuras.HARMFUL = {
	[31] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=118699,["icon"]=GetSpellTexture(118699),["dispelName"]="Magic",["duration"]=15,["classType"]="hardCC" }, -- Fear
	[32] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=236077,["icon"]=GetSpellTexture(236077),["dispelName"]="none",["duration"]=15,["classType"]="disarmRoot" }, -- Disarm
	[33] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=198819,["icon"]=GetSpellTexture(198819),["dispelName"]="none",["duration"]=15,["classType"]="debuff" }, -- Mortal Strike (big debuff)
	[34] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" }, -- Mortal Wounds
	[35] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[36] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[37] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[38] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[39] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[40] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[41] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[42] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[43] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[44] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[45] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
	[46] = { ["applications"]=0,["expirationTime"]=0,["isHarmful"]=true,["spellId"]=115804,["icon"]=GetSpellTexture(115804),["dispelName"]="none",["duration"]=15,["classType"]="debuff" },
}
module.testAuras.HELPFUL = {
	[11] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" }, -- Unending Resolve
	[12] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[13] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[14] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[15] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[16] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[17] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[18] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[19] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[20] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[21] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[22] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=104773,["icon"]=GetSpellTexture(104773),["dispelName"]="none",["duration"]=15,["classType"]="otherImmunity" },
	[23] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=47788,["icon"]=GetSpellTexture(47788),["dispelName"]="none",["duration"]=15,["classType"]="defensive" }, -- Guardian Spirit
	[24] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=47788,["icon"]=GetSpellTexture(47788),["dispelName"]="none",["duration"]=15,["classType"]="defensive" },
	[25] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=47788,["icon"]=GetSpellTexture(47788),["dispelName"]="none",["duration"]=15,["classType"]="defensive" },
	[26] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=47788,["icon"]=GetSpellTexture(47788),["dispelName"]="none",["duration"]=15,["classType"]="defensive" },
}
module.testAuras.MYHELPFUL = {
	[51] = { ["applications"]=3,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=203554,["icon"]=GetSpellTexture(203554),["dispelName"]="Magic",["duration"]=15,["classType"]="buff", ["isBossAura"]=true }, -- Focused Growth
	[52] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" }, -- Rejuvenation
	[53] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[54] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[55] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[56] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[57] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[58] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[59] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[60] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[61] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[62] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[63] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[64] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[65] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
	[66] = { ["applications"]=0,["expirationTime"]=0,["isHelpful"]=true,["spellId"]=774,["icon"]=GetSpellTexture(774),["dispelName"]="Magic",["duration"]=15,["classType"]="buff" },
}

local showAllTestAuras = nil
local function ForEachTestAura(self, filter)
	local now = GetTime()
	for fakeInstanceID, aura in pairs(module.testAuras[filter]) do
		if showAllTestAuras or self.frameType ~= "nameplate" or self.enabledAura[aura.spellId] then -- NOTE: only show enabled spells for nameplates
			if filter == "MYHELPFUL" or not self.isMerged or (filter == "HARMFUL" and fakeInstanceID < 37) or (filter == "HELPFUL" and fakeInstanceID < 17) then
				aura = E:DeepCopy(aura) -- tableutil doesn't copy table so other frame scale setting will keep overwriting
				aura.auraInstanceID = fakeInstanceID
				aura.expirationTime = now + aura.duration
				local scale = self.db.typeScale and self.db.typeScale[aura.classType] or 1
				if self.db.largerIcon and Aura_Enabled.largerIcon[aura.spellId] then
					scale = scale * self.db.largerIcon
				end
				aura.scale = scale
				aura.priority = self.priority[aura.classType] + (aura.dispelName == "none" and 1 or 0)
				aura.forceGlow = self.db.alwaysGlowCC and (aura.classType == "hardCC" or aura.classType == "softCC")
				self.auraInfo[fakeInstanceID] = aura
			end
		end
	end
end

function module.InjectTestAuras(self)
	if self.auraInfo == nil then
		self.auraInfo = TableUtil.CreatePriorityTable(self.sorter, true)
	else
		self.auraInfo:Clear()
	end

	ForEachTestAura(self, self.rawFilter or self.filter)
	if self.isMerged and self.filter == "HARMFUL" then
		ForEachTestAura(self, "HELPFUL")
	end
end

function module:ToggleTestMode()
	self.isInTestMode = not self.isInTestMode
	if self.isInTestMode then
		if self.inLockdown then
			self.isInTestMode = false
			return E.write(ERR_NOT_IN_COMBAT)
		end
		if not self.isInEditMode then
			ShowUIPanel(EditModeManagerFrame)
		end
	elseif self.isInEditMode then
		if self.inLockdown then
			self.endTestModeOCC = true
		else
			HideUIPanel(EditModeManagerFrame)
		end
	end

	local updateComparator = true
	E:Refresh(updateComparator) -- propagate
end

function module:PLAYER_REGEN_ENABLED()
	self.inLockdown = false
	if self.endTestModeOCC then
		HideUIPanel(EditModeManagerFrame)
		self.endTestModeOCC = nil
	end
	UpdatePassThroughButtons()
end

function module:PLAYER_REGEN_DISABLED()
	self.inLockdown = true
end

EventRegistry:RegisterCallback("EditMode.Exit", function()
	module.isInEditMode = nil
	if module.isInTestMode then
		module:ToggleTestMode()
		E:ACR_NotifyChange()
	else -- fix temporary unitIds. EditMode w/o raidstylepartframe sets all unit to 'player' until a group is formed
		module:Refresh()
	end
end)

EventRegistry:RegisterCallback("EditMode.Enter", function()
	module.isInEditMode = true -- use EditModeManagerFrame:IsEditModeActive() if this value is needed instantly on Enter
end)

E.NUM_RF_OVERLAYS = NUM_RF_OVERLAYS
E.NUM_AF_OVERLAYS = NUM_AF_OVERLAYS
E.NUM_NP_OVERLAYS = NUM_NP_OVERLAYS
E.NameplateContainer = NameplateContainer -- ANP
E.ActiveUnitContainer = ActiveUnitContainer -- ANP
E.ActiveUnitCompactUnitFrame = ActiveUnitCompactUnitFrame -- APC
E.RAID_UNIT = RAID_UNIT
