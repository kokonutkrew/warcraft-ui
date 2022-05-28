--------------------------------------------------------------------------------
-- Namespace
--------------------------------------------------------------------------------
local addon_name, namespace = ...;
namespace.slash_commands = {};
local slash_commands = namespace.slash_commands;

--------------------------------------------------------------------------------
-- Slash Commands
--------------------------------------------------------------------------------
function namespace:slash_commands(event, name)
	if (name ~= addon_name) then return end

	----------------------------------------------------------------------------
	-- Register
	----------------------------------------------------------------------------
	SLASH_RELOADUI1 = "/rl"; -- new slash command for reloading UI
	SlashCmdList.RELOADUI = ReloadUI;

	SLASH_FRAMESTK1 = "/fs"; -- new slash command for showing framestack tool
	SlashCmdList.FRAMESTK = function()
		LoadAddOn("Blizzard_DebugTools");
		FrameStackTooltip_Toggle();
	end

    SLASH_kk1 = "/kk";
	DEFAULT_CHAT_FRAME:AddMessage("slash-commands loaded");
end