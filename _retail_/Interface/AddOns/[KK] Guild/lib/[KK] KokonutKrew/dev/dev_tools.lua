--------------------------------------------------------------------------------
-- Namespace
--------------------------------------------------------------------------------
local addon_name, kk = ...;
kk.dev = {};
local dev = kk.dev;

--------------------------------------------------------------------------------
-- Developer Tools
--------------------------------------------------------------------------------
function dev:tools(event, name)
	if (name ~= addon_name) then return end;

	local dev_tools_enabled = true;
	if (dev_tools_enabled == false) then return end;

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

	DEFAULT_CHAT_FRAME:AddMessage("dev tools loaded");
end

function dump(table)
	if type(table) == 'table' then
	   local s = '{ ';
	   for k,v in pairs(table) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end;
		  s = s .. '['..k..'] = ' .. dump(v) .. ',';
	   end
	   return s .. '} ';
	else
	   return tostring(table);
	end
end

function debug(value)
	if type(value) == 'string' then
		return DEFAULT_CHAT_FRAME:AddMessage(value);
	end
	if type(value) == 'table' then
		return DEFAULT_CHAT_FRAME:AddMessage(dump(value));
	end
	DEFAULT_CHAT_FRAME:AddMessage("Debug type has not been defined");
end