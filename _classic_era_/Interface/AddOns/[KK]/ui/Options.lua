local ADDON_NAME, L = ...

local panel = CreateFrame("Frame")
panel.name = ADDON_NAME               -- see panel fields
InterfaceOptions_AddCategory(panel)  -- see InterfaceOptions API

-- General Options
local title = panel:CreateFontString("ARTWORK", nil, "GameFontNormalLarge")
title:SetPoint("TOP")
title:SetText(ADDON_NAME)

-- Submenus
panel.Debug = CreateFrame("Frame", panel)
panel.Debug.name = "Debug"
panel.Debug.parent = panel.name
InterfaceOptions_AddCategory(panel.Debug)