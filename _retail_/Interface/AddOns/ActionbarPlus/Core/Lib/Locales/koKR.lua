--[[-----------------------------------------------------------------------------
Local Vars
-------------------------------------------------------------------------------]]
--- @type Namespace
local _, ns = ...

local LocUtil = ns.O.LocalizationUtil

---@type AceLocale
local L = LibStub("AceLocale-3.0"):NewLocale(ns.name, "koKR");
if not L then return end

--[[-----------------------------------------------------------------------------
Localization Keys That need to be defined for Bindings.xml
-------------------------------------------------------------------------------]]
local actionBarText = '바'
local buttonBarText = '버튼'

L['ABP_ACTIONBAR_BASE_NAME']                             = actionBarText
L['ABP_BUTTON_BASE_NAME']                                = buttonBarText

LocUtil:SetupKeybindNames(L, actionBarText, buttonBarText)

--[[-----------------------------------------------------------------------------
Keybinding Localization
The contents below this block will be generated automatically.
-------------------------------------------------------------------------------]]

--[[Translation missing --]]
L["Addon Info"] = "Addon Info"
--[[Translation missing --]]
L["Addon Initialized Text Format"] = "%s Initialized.  Type %s on the console for available commands."
--[[Translation missing --]]
L["Alpha"] = "Alpha"
--[[Translation missing --]]
L["Alpha::Description"] = "Set the opacity of the frame handle."
--[[Translation missing --]]
L["ALT"] = "ALT"
--[[Translation missing --]]
L["Always"] = "Always"
--[[Translation missing --]]
L["Available console commands"] = "Available console commands"
--[[Translation missing --]]
L["Character Specific Frame Positions"] = "Character Specific Frame Positions"
--[[Translation missing --]]
L["Character Specific Frame Positions::Description"] = "By default, all frame positions (or anchors) are global across characters. If checked, the frame positions are saved at the character level."
--[[Translation missing --]]
L["Columns"] = "Columns"
--[[Translation missing --]]
L["Columns::Description"] = "The number of columns for the buttons"
--[[Translation missing --]]
L["Combat Override Key"] = "Combat Override Key"
--[[Translation missing --]]
L["Combat Override Key::Description"] = "Choose when you want the tooltip to show during combat. If a modifier is chosen, then you need to hold that modifier down to show the tooltip."
--[[Translation missing --]]
L["CTRL"] = "CTRL"
--[[Translation missing --]]
L["Debugging"] = "Debugging"
--[[Translation missing --]]
L["Debugging Configuration"] = "Debugging Configuration"
--[[Translation missing --]]
L["Debugging::Description"] = "Debug Settings for troubleshooting"
--[[Translation missing --]]
L["Enable"] = "Enable"
--[[Translation missing --]]
L["Frame Handle Settings"] = "Frame Handle Settings"
--[[Translation missing --]]
L["General"] = "General"
--[[Translation missing --]]
L["General Configuration"] = "General Configuration"
--[[Translation missing --]]
L["Hide"] = "Hide"
--[[Translation missing --]]
L["Hide countdown numbers on cooldowns"] = "Hide countdown numbers on cooldowns"
--[[Translation missing --]]
L["Hide countdown numbers on cooldowns::Description"] = "When checked, this option hides countdown numbers from a spell, item, macro, etc"
--[[Translation missing --]]
L["Hide during taxi"] = "Hide during taxi"
--[[Translation missing --]]
L["Hide during taxi::Description"] = "Hides the action bars while the player is in taxi; flying from one point to another."
--[[Translation missing --]]
L["Hide text for smaller buttons"] = "Hide text for smaller buttons"
--[[Translation missing --]]
L["Hide text for smaller buttons::Description"] = "When checked, this option hides item count, keybind and index text when buttons are smaller than 35 in size"
--[[Translation missing --]]
L["In-Combat"] = "In-Combat"
--[[Translation missing --]]
L["Info Console Command Text"] = "Prints additional information about the addon on this console"
--[[Translation missing --]]
L["Lock Actionbar"] = "Lock Actionbar"
--[[Translation missing --]]
L["Lock Actionbar::Description"] = [=[

Options:
  Always: lock the frame at all times.
  In-Combat: lock the frame during combat.

Note: this option only prevents the frame from being moved and does not lock individual
action items.]=]
--[[Translation missing --]]
L["Log Level"] = "Log Level"
--[[Translation missing --]]
L["Log Level::Description"] = "Higher log levels generate more logs"
--[[Translation missing --]]
L["Mouseover"] = "Mouseover"
--[[Translation missing --]]
L["Mouseover Glow"] = "Mouseover Glow"
--[[Translation missing --]]
L["Mouseover Glow::Description"] = "Enables action button mouseover glow"
--[[Translation missing --]]
L["Mouseover::Description"] = "Hide the frame mover at the top of the actionbar by default.  Mouseover to make it visible for moving the frame."
--[[Translation missing --]]
L["No"] = "No"
--[[Translation missing --]]
L["options"] = "options"
--[[Translation missing --]]
L["Options Dialog"] = "Options Dialog"
--[[Translation missing --]]
L["Reset Anchor"] = "Reset Anchor"
--[[Translation missing --]]
L["Reset Anchor::Description"] = "Resets the anchor (position) of the action bar group to the center of the screen.  This can be useful when the actionbar drag frame goes off screen."
--[[Translation missing --]]
L["Right-click to open config UI"] = "Right-click to open config UI"
--[[Translation missing --]]
L["Rows"] = "Rows"
--[[Translation missing --]]
L["Rows::Description"] = "The number of rows for the buttons"
--[[Translation missing --]]
L["Settings"] = "Settings"
--[[Translation missing --]]
L["SHIFT"] = "SHIFT"
--[[Translation missing --]]
L["Show"] = "Show"
--[[Translation missing --]]
L["Show Button Numbers"] = "Show Button Numbers"
--[[Translation missing --]]
L["Show Button Numbers::Description"] = "Show each button index on %s"
--[[Translation missing --]]
L["Show empty buttons"] = "Show empty buttons"
--[[Translation missing --]]
L["Show empty buttons::Description"] = "Check this option to always show the buttons on the action bar, even when they are empty."
--[[Translation missing --]]
L["Show Keybind Text"] = "Show Keybind Text"
--[[Translation missing --]]
L["Show Keybind Text::Description"] = "Show each button keybind text on %s"
--[[Translation missing --]]
L["Shows the config UI (default)"] = "Shows the config UI (default)"
--[[Translation missing --]]
L["Shows this help"] = "Shows this help"
--[[Translation missing --]]
L["Size (Width & Height)"] = "Size (Width & Height)"
--[[Translation missing --]]
L["Size (Width & Height)::Description"] = "The width and height of a buttons"
--[[Translation missing --]]
L["Tooltip Anchor"] = "Tooltip Anchor"
--[[Translation missing --]]
L["Tooltip Anchor::Description"] = "Select how and where the game tooltip should be displayed when hovering over an action button"
--[[Translation missing --]]
L["Tooltip Options"] = "Tooltip Options"
--[[Translation missing --]]
L["Tooltip Visibility"] = "Tooltip Visibility"
--[[Translation missing --]]
L["Tooltip Visibility::Description"] = "Choose when you want the tooltip to show when not in combat. If a modifier is chosen, then you need to hold that modifier down to show the tooltip."
--[[Translation missing --]]
L["usage"] = "usage"

