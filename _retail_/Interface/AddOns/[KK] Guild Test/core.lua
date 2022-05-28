--------------------------------------------------------------------------------
-- Namespace
--------------------------------------------------------------------------------
local addon_name, namespace = ...;
namespace.addon = {};
local addon = namespace.addon;

--------------------------------------------------------------------------------
-- Ace Addon
--------------------------------------------------------------------------------
MyAddon = LibStub("AceAddon-3.0"):NewAddon("MyAddon", "AceConsole-3.0")

function MyAddon:OnInitialize()
    -- Code that you want to run when the addon is first loaded goes here.
end

function MyAddon:OnEnable()
    -- Called when the addon is enabled
end

function MyAddon:OnDisable()
    -- Called when the addon is disabled
end