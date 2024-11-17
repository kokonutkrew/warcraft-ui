local E, L = select(2, ...):unpack()

local GetSpellInfo = C_Spell and C_Spell.GetSpellName or GetSpellInfo
local GetSpellLink = C_Spell and C_Spell.GetSpellLink or GetSpellLink
local GetSpellTexture = C_Spell and C_Spell.GetSpellTexture or GetSpellTexture
local GetSpellDescription = C_Spell and C_Spell.GetSpellDescription or GetSpellDescription

function OmniAuras.delButton_OnClick(id)
	local sId = tostring(id)
	if sId then
		E.blacklist[sId] = nil
		E.global.auraBlacklist[id] = nil
		E:ACR_NotifyChange()
		E:Refresh()
	end
end

function E:AddAuraToBlacklist(id)
	local _, icon = GetSpellTexture(id)
	local name = GetSpellInfo(id)
	local sId = tostring(id)
	self.blacklist[sId] = self.blacklist[sId] or {
		image = icon, imageCoords = E.BORDERLESS_TCOORDS,
		name = name,
		desc = self.isClassic and GetSpellDescription(id) or nil,
		tooltipHyperlink = not self.isClassic and GetSpellLink(id) or nil,

		type = "toggle",
		get = function(info) return self.global.auraBlacklist[id] end,
		set = function(info, state)
			self.global.auraBlacklist[id] = state
			self.Aura:Refresh()
		end,
		arg = -id, -- negative number will trigger removeButton on mouseover
	}
end

function E:AddAuraBlacklist()
	self.blacklist = self.blacklist or { -- XXX accessed directly from lib
		desc = {
			name = format("|TInterface\\FriendsFrame\\InformationIcon:14:14:0:0|t %s\n\n",
			L["Use this to filter out auras that aren't in the addon's auralist when using `Redirect Blizzard Debuffs` or `Blizzard Buffs`"]),
			order = 0,
			type = "description",
		},
		auraId = {
			name = L["Aura ID"],
			desc = L["Enter aura ID to add"],
			order = 1,
			type = "input",
			set = function(info, value)
				if strlen(value) > 9 then
					return self.write(L["Invalid ID"], value)
				end
				local id = tonumber(value)
				local name = id and GetSpellInfo(id)
				if not name then
					return self.write(L["Invalid ID"], value)
				end
				if self.global.auraBlacklist[id] ~= nil then
					return
				end
				self.global.auraBlacklist[id] = true
				self:AddAuraToBlacklist(id)
			end
		},
		quickBlacklist = {
			name = L["Quick Blacklist"],
			desc = L["If Show Tooltip is enabled, pressing CTRL+ALT while mouse overing the addon's aura frame will add it to the blacklist."],
			order = 2,
			type = "toggle",
			get = function() return self.global.quickBlacklist end,
			set = function(_, state) self.global.quickBlacklist = state end,
		},
		hd = {
			name = "", order = 3, type ="header",
		}
	}

	for id, state in pairs(self.global.auraBlacklist) do
		if not E.aura_db.INTERRUPT[id] then -- omit interrupts here
			self:AddAuraToBlacklist(id)
		end
	end

	self.options.args["auraBlacklist"] = {
		name = L["Aura Blacklist"],
		order = 600,
		type = "group",
		args = self.blacklist,
	}
end
