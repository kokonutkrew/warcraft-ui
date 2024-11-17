local addon, ns				= ...
local version				= C_AddOns.GetAddOnMetadata(tostring(addon), "Version")
local bronzeID				= 3100
local f						= CreateFrame("Frame")
local chatMessageColor		= WHITE_FONT_COLOR
local soundChannel			= "Master"
local showLoginMessage		= true
local playerName			= UnitName("player")
local playSounds			= false
local db					= {}
local defaults				= {}
local sounds = {
	drip					= 614993, -- sound/doodad/fx_water_drip_9.ogg
	coin					= 942961 -- sound/spells/spell_treasure_goblin_coin_burst_06.ogg
}
local dev					= false

-- local function isEmpty(t)
-- 	return next(t) == nil
-- end

local function dbg(...)
	if not dev then return end
	local msg = tostring(...)
	local addon = tostring(addon)
	local colorstring = RED_FONT_COLOR:WrapTextInColorCode(addon.." :: "..msg)
	DEFAULT_CHAT_FRAME:AddMessage(colorstring)
end

local function printf(color, ...)
	local msg = tostring(...)
	if color ~= nil then
		if color == "o" then
			chatMessageColor = LEGENDARY_ORANGE_COLOR
		elseif color == "b" then
			chatMessageColor = BLUE_FONT_COLOR
		elseif color == "y" then
			chatMessageColor = YELLOW_FONT_COLOR
		elseif color == "g" then
			chatMessageColor = GREEN_FONT_COLOR
		end
	else
		chatMessageColor = WHITE_FONT_COLOR
	end
	local coloredString = chatMessageColor:WrapTextInColorCode(msg)
	SELECTED_CHAT_FRAME:AddMessage(coloredString)
end

-- local function checkSavedVariables()
	-- if BronzeTokenTrackerDB == nil or isEmpty(BronzeTokenTrackerDB) then
		-- BronzeTokenTrackerDB = {}
		-- printf("g", addon .. " created new save data.")
	-- end
	-- db = BronzeTokenTrackerDB
-- end

local function bronzetokenUpdate()
	local bronzetoken = C_CurrencyInfo.GetCurrencyInfo(bronzeID).quantity
	local lifetimebronze =  C_CurrencyInfo.GetCurrencyInfo(bronzeID).trackedQuantity
	C_Timer.After(0, function()
		printf("o", playerName.. " has " .. bronzetoken .. " Bronze Token" .. (bronzetoken ~= 1 and "s" or "") .. ". (" .. lifetimebronze .. ")" )
	end)
end

local function OnEvent(self, event, id, quantity, quantityChange, ...)
	if event == "CURRENCY_DISPLAY_UPDATE" then
		dbg(event)
		if (id == bronzeID) then
			dbg(id)
			dbg(C_CurrencyInfo.GetCurrencyInfo(bronzeID).quantity)
			dbg(C_CurrencyInfo.GetCurrencyInfo(bronzeID).trackedQuantity)
			if (quantityChange > 0) then -- gained
				dbg("PlaySoundFile :: " .. sounds.drip)
				if playSounds then
					PlaySoundFile(sounds.drip, soundChannel)
				end
			elseif (quantityChange < 0) then -- lost
				dbg("PlaySoundFile :: " .. sounds.coin)
				if playSounds then
					PlaySoundFile(sounds.coin, soundChannel)
				end
			end
			bronzetokenUpdate()
		end
	elseif event == "PLAYER_LOGIN" and showLoginMessage then
		dbg(event)
		bronzetokenUpdate()
	end
end

local function slashHandler(msg) -- slash commands
	if msg == "help" or msg == "h" then
		printf("b", "•••")
		printf("b", addon .. " commands:")
		printf("b", "•••")
		printf("b", "/ck help, h - Show the options.")
		printf("b", "/ck version, v - Show the add-on version.")
		--printf("b", "/ck reset, r - Reset all saved variables.")
		return false
	-- elseif msg == "reset" or msg == "r" then
		-- dbg("Wiping Save Data")
		-- wipe(BronzeTokenTrackerDB)
		-- checkSavedVariables()
		-- bronzetokenUpdate()
		-- return true
	-- elseif msg == "dump" or msg == "d" then
		-- dbg("Dumping Save Data")
		-- dumptable(BronzeTokenTrackerDB, "BronzeTokenTrackerDB")
		-- return true
	elseif msg == "version" or msg == "v" then
		printf("b", addon .. " v." .. version)
		return true
	else
		bronzetokenUpdate()
		return true
	end
end

SLASH_BronzeTokenTracker1 = "/bt"
SlashCmdList.BronzeTokenTracker = slashHandler

f:SetScript("OnEvent", OnEvent)
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("CURRENCY_DISPLAY_UPDATE")
