--------------------------------------------------------------------------------
-- Namespace
--------------------------------------------------------------------------------
local addon_name, kk = ...;
kk.addon = {};
local addon = kk.addon;

--------------------------------------------------------------------------------
-- Events /etrace https://wowwiki-archive.fandom.com/wiki/Events_A-Z_(full_list)
--------------------------------------------------------------------------------
local dev_tools = CreateFrame("Frame");
dev_tools:RegisterEvent("ADDON_LOADED");
dev_tools:SetScript("OnEvent", kk.dev.tools);

local slash_commands = CreateFrame("Frame");
slash_commands:RegisterEvent("ADDON_LOADED");
slash_commands:SetScript("OnEvent", kk.slash_commands);

local interface_options = CreateFrame("Frame");
interface_options:RegisterEvent("ADDON_LOADED");
interface_options:SetScript("OnEvent", kk.interface_options);