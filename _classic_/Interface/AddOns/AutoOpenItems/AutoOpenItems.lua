-- Creating a script 
local AutoOpenItems = CreateFrame('Frame')
AutoOpenItems:SetScript('OnEvent', function(self, event, ...) self[event](...) end)

-- Add id here: 

local Whitelist = {
	[5523]	 = true, 
--  [45533]	 = true, you can copy paste this line, change id and delete "--"

}

function AutoOpenItems:Register(event, func)
	self:RegisterEvent(event)
	self[event] = function(...)
		func(...)
	end
end

-- Search through bag for the item ID's and use them

AutoOpenItems:Register('BAG_UPDATE_DELAYED', function(bag)
	
	for bag = 0, 4 do
		for slot = 0, GetContainerNumSlots(bag) do
			local id = GetContainerItemID(bag, slot)
			if id and Whitelist[id] then
				UseContainerItem(bag, slot)
				DEFAULT_CHAT_FRAME:AddMessage("|cFF00FF00Opening : " .. GetContainerItemLink(bag, slot) .. " ID: " .. GetContainerItemID(bag, slot))
				return
			end
		end
	end
end)
