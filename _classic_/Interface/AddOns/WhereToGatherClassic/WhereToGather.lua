local addonName, namespace = ...

local lineAdded = false
local match = string.match
local strsplit = strsplit

local function FindTooltipString(itemId)
	local sZones = ""
	
	sZones = namespace.herbsName(itemId)
	if sZones ~= "" then
		return sZones
	end
	sZones = namespace.metalsName(itemId)
	if sZones ~= "" then
		return sZones
	end
	sZones = namespace.leatherName(itemId)
	if sZones ~= "" then
		return sZones
	end
	sZones = namespace.clothName(itemId)
	if sZones ~= "" then
		return sZones
	end
	sZones = namespace.enchName(itemId)
	if sZones ~= "" then
		return sZones
	end
	sZones = namespace.elementalName(itemId)
	if sZones ~= "" then
		return sZones
	end
	sZones = namespace.gemName(itemId)
	if sZones ~= "" then
		return sZones
	end
	sZones = namespace.inscriptionName(itemId)
	if sZones ~= "" then
		return sZones
	end
	return sZones
end

local function OnTooltipSetItem(tooltip, ...)
	if not lineAdded then
		
		local _, link = tooltip:GetItem()
		
		if not link then return; end
		
		if link ~= "" then
			local itemString = match(link, "item[%-?%d:]+")
			if itemString == nil then return; end
			local _, itemId = strsplit(":", itemString)
		
			if (itemId == "" or itemId == "0") and TradeSkillFrame ~= nil and TradeSkillFrame:IsVisible() and GetMouseFocus().reagentIndex then
				local selectedRecipe = TradeSkillFrame.RecipeList:GetSelectedRecipeID()
				for i = 1, 8 do
					if GetMouseFocus().reagentIndex == i then
						itemId = C_TradeSkillUI.GetRecipeReagentItemLink(selectedRecipe, i):match("item:(%d*)") or nil
					break
					end
				end
			end
		
			--tooltip:AddLine('Item ID: ' .. itemId)
		
			local sZones = ""
		
			sZones = FindTooltipString(itemId)
		
			if sZones ~= "" then		
				tooltip:AddLine(sZones)
			end
		end
	end
end

local function OnTooltipCleared(tooltip, ...)
   lineAdded = false
end

GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
GameTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)