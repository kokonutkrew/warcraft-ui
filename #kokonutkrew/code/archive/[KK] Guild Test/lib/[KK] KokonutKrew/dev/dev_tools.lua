--------------------------------------------------------------------------------
-- Namespace
--------------------------------------------------------------------------------
local addon_name, namespace = ...;
namespace.dev = {};
local dev = namespace.dev;

--------------------------------------------------------------------------------
-- Developer Tools
--------------------------------------------------------------------------------
function namespace:enable_dev_tools(event, name)

	----------------------------------------------------------------------------
	-- Slash Commands
	----------------------------------------------------------------------------
	SLASH_RELOADUI1 = "/rl"; -- new slash command for reloading UI
	SlashCmdList.RELOADUI = ReloadUI;

	SLASH_FRAMESTK1 = "/fs"; -- new slash command for showing framestack tool
	SlashCmdList.FRAMESTK = function()
		LoadAddOn("Blizzard_DebugTools");
		FrameStackTooltip_Toggle();
	end

	DEFAULT_CHAT_FRAME:AddMessage("dev_tools loaded");
end