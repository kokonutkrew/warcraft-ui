local AdiBags_Soulbound, namespace = ...
local L = namespace.L

-- Get the local instance of AdiBags
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

-- Register this filter with the Adibags filter handler
local soulboundFilter = AdiBags:RegisterFilter(L["Soulbound"], 50, "ABEvent-1.0")

-- Set the name of this filter
soulboundFilter.uiName = L["Soulbound"];

-- Set the description for this filter
soulboundFilter.uiDesc = L["Place items that are soulbound in a separate section"]

-- Setup initialization of the filter
function soulboundFilter:OnInitialize()
	-- Register the namespace with AdiBags
    self.db = AdiBags.db:RegisterNamespace(L["Soulbound"], {
	-- Setup the structure of variables handling the behavior
        profile = {
			-- Setup equippable items to be selected by default
            onlyEquippableItems = true,
        }
    })
end

-- Define the update function
function soulboundFilter:Update()
	-- Noitify myself that the filtering options have changed
	self:SendMessage("AdiBags_FiltersChanged")
end

-- Define the function to be called when enabling happens
function soulboundFilter:OnEnable()
	-- Notify myself that an option for the filter has been enabled
	AdiBags:UpdateFilters()
end

-- Define the function to be called when disabling happens
function soulboundFilter:OnDisable()
	-- Notify myself that an option for the filter has been disabled
	AdiBags:UpdateFilters()
end

function soulboundFilter:Filter(slotData)
	-- Extract the item loaction based on the given bag and slot
	local itemLocation = ItemLocation:CreateFromBagAndSlot(slotData.bag, slotData.slot)
  
	-- Make sure the location is valid
	if itemLocation:IsValid() then
		-- Use API call to check if the item is soulbound
		local isSoulbound = C_Item.IsBound(itemLocation)
  
		-- Get the inventory type of the item
		local inventoryType = C_Item.GetItemInventoryType(itemLocation)
  
		-- Check if the item is equippable (inventory type 0 is used for non-equippable items)
		local isEqiuppable = not (inventoryType == 0)
  
		-- Now enter the condition if either soulbound and equippable or simply if soulbound and option for equippable not ticked
		if (isSoulbound and (isEqiuppable or not self.db.profile.onlyEquippableItems)) then
			-- Assign the item to the "Soulbound" group
			return L["Soulbound"];
		end
	end
end

-- Define the options page
function soulboundFilter:GetOptions()
	return {
		-- Setup the option for equippable items
		onlyEquippableItems = {
			-- Name of the option
			name = L["Equippable Items"],
			-- Description of the option
			desc = L["Only filter the items that are also equippable instead of all soulbound items"],
			-- Make it a tick box
			type = "toggle",
			-- Set the sorting order
			order = 10
		}
	},
	-- Attach this addon to the option handler of adibags to ensure proper call of update functions
	AdiBags:GetOptionHandler(self, false, function ()
		return self:Update()
	end)
end

