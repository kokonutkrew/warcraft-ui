--------------------------------------------------------------------------------
-- Namespace
--------------------------------------------------------------------------------
local addon_name, kk = ...;
kk.interface_options = {};
local interface_options = kk.interface_options;

function kk:interface_options(event, name)
    if (name ~= addon_name) then return end;
    interface_options.name = name;
    InterfaceOptions_AddCategory(interface_options);
end