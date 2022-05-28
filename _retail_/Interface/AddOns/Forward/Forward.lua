local ForwardEnv, autorunId = (GetManagedEnvironment(Forward))
local AB = OneRingLib and OneRingLib.ext and OneRingLib.ext.ActionBook:compatible(2, 17)
if not AB then return end

local function hint()
	return true, ForwardEnv.ar and 1 or 0, [[Interface\Icons\misc_arrowlup]], "Toggle Autorun", 0, 0, 0
end
local function get()
	autorunId = autorunId or AB:CreateActionSlot(hint, nil, "attribute", "type","macro", "macrotext","/click Forward auto 1")
	return autorunId
end
local function describe()
	return "Forward", "Toggle Autorun", [[Interface\Icons\misc_arrowlup]]
end

AB:RegisterActionType("forward.autorun", get, describe)
AB:AddActionToCategory("Miscellaneous", "forward.autorun")