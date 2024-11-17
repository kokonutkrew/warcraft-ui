local E, L, C = select(2, ...):unpack()

local LSM = E.Libs.LSM
LSM:Register("font", "PT Sans Narrow", "Interface\\Addons\\OmniAuras\\Libs\\Fonts\\PTSansNarrow-Bold.ttf", bit.bor(LSM.LOCALE_BIT_western, LSM.LOCALE_BIT_ruRU, LSM.LOCALE_BIT_koKR, LSM.LOCALE_BIT_zhCN, LSM.LOCALE_BIT_zhTW))

local LSM_Font = {}

local defaultFonts = {}

if LOCALE_koKR then
	defaultFonts.rfCounter = {"PT Sans Narrow", 10, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.ufCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npName = {"기본 글꼴", 15, "NONE", 0, 0, 0, 1, -1}
	defaultFonts.npIndicator = {"PT Sans Narrow", 16, "OUTLINE", 0, 0, 0, 0, 0}
elseif LOCALE_zhCN then
	defaultFonts.rfCounter = {"PT Sans Narrow", 10, "OUTLINE", 0, 0, 0, 0, 0} -- numeric only
	defaultFonts.ufCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npName = {"默认", 15, "NONE", 0, 0, 0, 1, -1}
	defaultFonts.npIndicator = {"PT Sans Narrow", 16, "OUTLINE", 0, 0, 0, 0, 0}
elseif LOCALE_zhTW then
	defaultFonts.rfCounter = {"PT Sans Narrow", 10, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.ufCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npName = {"預設", 15, "NONE", 0, 0, 0, 1, -1}
	defaultFonts.npIndicator = {"PT Sans Narrow", 16, "OUTLINE", 0, 0, 0, 0, 0}
else
	defaultFonts.rfCounter = {"PT Sans Narrow", 10, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.ufCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npCounter = {"PT Sans Narrow", 15, "OUTLINE", 0, 0, 0, 0, 0}
	defaultFonts.npName = {"PT Sans Narrow", 13, "NONE", 0, 0, 0, 1, -1}
	defaultFonts.npIndicator = {"PT Sans Narrow", 16, "OUTLINE", 0, 0, 0, 0, 0}
end

C["General"] = {
	fonts = {},
}

for k, v in pairs(defaultFonts) do
	C.General.fonts[k] = {}
	C.General.fonts[k].font = v[1]
	C.General.fonts[k].size = v[2]
	C.General.fonts[k].flag = v[3]
	C.General.fonts[k].r = v[4]
	C.General.fonts[k].g = v[5]
	C.General.fonts[k].b = v[6]
	C.General.fonts[k].ofsX = v[7]
	C.General.fonts[k].ofsY = v[8]
end

local flagFixForDF = {
	["NONE"] = "",
	-- TODO: seems these were reverted
--	["THICKOUTLINE"] = "OUTLINE, THICK",
--	["MONOCHROMEOUTLINE"] = "OUTLINE, MONOCHROME",
}

function E:SetFontProperties(fontString, db)
	local ofsX, flag = db.ofsX, db.flag
	if db.font == "Homespun" then -- force
		ofsX, flag = 0, "MONOCHROMEOUTLINE"
	end
	fontString:SetShadowOffset(ofsX, -ofsX) -- not using ofsY
	fontString:SetShadowColor(db.r, db.g, db.b, ofsX == 0 and 0 or 1)

	flag = (E.isDF or E.isWOTLKC341) and flagFixForDF[flag] or flag
	fontString:SetFont(LSM:Fetch("font", db.font), db.size, flag)
end

function E:ConfigTextures()
	for k in pairs(self.moduleOptions) do
		local module = self[k]
		local func = module.ConfigTextures
		if func then
			func(module)
		end
	end
end

local getTextColor = function(info)
	local db = E.DB.profile.General.cooldownText[ info[3] ][ info[#info] ]
	return db.r, db.g, db.b
end

local setTextColor = function(info, r, g, b)
	local db = E.DB.profile.General.cooldownText[ info[3] ][ info[#info] ]
	db.r = r
	db.g = g
	db.b = b
	E:Refresh()
end

local fontInfo = {
	font = {
		name = L["Font"],
		order = 1,
		type = "select",
--		dialogControl = "LSM30_Font",
--		values = AceGUIWidgetLSMlists.font,
		values = LSM_Font,
	},
	size = {
		name = FONT_SIZE,
		order = 2,
		type = "range",
		min = 8, max = 32, step = 1,
	},
	flag = {
		disabled = function(info) return E.DB.profile.General.fonts[ info[3] ].font == "Homespun" end,
		name = L["Font Outline"],
		order = 3,
		type = "select",
		values = {
			["NONE"] = "NONE",
			["OUTLINE"] = "OUTLINE",
			["MONOCHROMEOUTLINE"] = "MONOCHROMEOUTLINE",
			["THICKOUTLINE"] = "THICKOUTLINE"
		},
	},
	ofsX = {
		disabled = function(info) return E.DB.profile.General.fonts[ info[3] ].font == "Homespun" end,
		name = L["Font Shadow"],
		order = 4,
		type = "select",
		values = {
			[0] = NONE,
			[1] = "1, -1",
		}
	},
}

local General = {
	name = GENERAL,
	order = 10,
	type = "group",
	childGroups = "tab",
	args = {
		fonts = {
			name = L["Fonts"],
			order = 10,
			type = "group",
			get = function(info) return E.DB.profile.General.fonts[ info[3] ][ info[#info] ] end,
			set = function(info, value) E.DB.profile.General.fonts[ info[3] ][ info[#info] ] = value E:UpdateFontObjects() end,
			args ={
				rfCounter = {
					name = L["Raid Frame Counter"],
					order = 0,
					type = "group",
					inline = true,
					args = fontInfo
				},
				ufCounter = {
					name = L["Unit Frame Counter"],
					order = 0.1,
					type = "group",
					inline = true,
					args = fontInfo
				},
				npCounter = {
					name = L["Nameplate Counter"],
					order = 0.2,
					type = "group",
					inline = true,
					args = fontInfo
				},
				npIndicator = {
					name = "|cff9146ff" .. L["Nameplate Unit ID Number"],
					order = 0.3,
					type = "group",
					inline = true,
					args = fontInfo
				},
				npName = {
					name = "|cff9146ff" .. L["Nameplate Name"],
					order = 0.4,
					type = "group",
					inline = true,
					args = fontInfo
				},
			}
		},
	}
}

function E:AddGeneral()
	self.dummyFontString = self.dummyFontString or self:CreateFontString()
	for fontName, fontPath in pairs(LSM:HashTable("font")) do
		self.dummyFontString:SetFont(fontPath, 22)
		LSM_Font[fontName] = fontName
	end

	self.options.args["General"] = General
end
