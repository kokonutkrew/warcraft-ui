local addonName = ...
local U = LibStub("LibAddonUtils-1.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName, true)
local addon = LibStub("AceAddon-3.0"):GetAddon(L.addonName)

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function addon:ShowTooltip(barID, buttonID)
    if buttonID then
        GameTooltip:SetOwner(self.bars[barID].buttons[buttonID], "ANCHOR_BOTTOMRIGHT")
        GameTooltip[addonName] = true

        local barDB = self.db.char.bars[barID]
        if barDB.objectives[buttonID] and barDB.objectives[buttonID].type then
            local objectiveType = barDB.objectives[buttonID].type

            if objectiveType == "item" then
                local objectiveID = barDB.objectives[buttonID].itemID
                U.CacheItem(objectiveID, function(objectiveID)
                    local _, _, _, iLvl, _, iType, sType, stackSize = GetItemInfo(objectiveID)
                    local count = GetItemCount(objectiveID, barDB.objectives[buttonID].includeBank)

                    -- Hyperlink
                    GameTooltip:SetHyperlink("item:" .. objectiveID)

                    -- Divider
                    GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
                    GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
                    GameTooltip:AddTexture(389194, {width = 200, height = 10})

                    -- Item info
                    GameTooltip:AddLine(string.format("%s%s", iType, sType == iType and "" or string.format(" (%s)", sType)), 1, .82, 0, 1)
                    GameTooltip:AddDoubleLine(L["Item ID"], string.format("%d", objectiveID), 1, 1, 1, 1, 1, 1)
                    GameTooltip:AddDoubleLine(L["Item Level"], string.format("%d", iLvl), 1, 1, 1, 1, 1, 1)
                    GameTooltip:AddDoubleLine(L["Stack Size"], string.format("%d", stackSize), 1, 1, 1, 1, 1, 1)

                    -- Blank line
                    GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

                    -- Include bank
                    GameTooltip:AddDoubleLine(L["Include Bank"], barDB.objectives[buttonID].includeBank and L["TRUE"] or L["FALSE"], 1, 1, 1, 1, 1, 1)

                    -- Blank line
                    GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

                    -- Count/objective info
                    GameTooltip:AddDoubleLine(L["Count"], string.format("%s %s", U.iformat(count, 1), count > 0 and string.format("(%s stack%s)", U.round(count / stackSize, 1), U.round(count / stackSize, 1) == 1 and "" or "s") or ""), 1, 1, 1, 1, 1, 1)
                    if barDB.objectives[buttonID].objective then
                        local objectiveComplete = count >= barDB.objectives[buttonID].objective
                        GameTooltip:AddDoubleLine(L["Objective"], string.format("%s", U.iformat(barDB.objectives[buttonID].objective, 1)), 1, 1, 1, 1, 1, 1)
                        GameTooltip:AddDoubleLine(L["Objective Complete"], objectiveComplete and string.format("%dx", math.floor(count / barDB.objectives[buttonID].objective)) or L["FALSE"], 1, 1, 1, objectiveComplete and 0 or 1, objectiveComplete and 1 or 0, 0)
                    end

                    -- Footer
                    self:GameTooltip_AddItemFooter(barID, buttonID)
                end, objectiveID)
            elseif objectiveType == "currency" then
                local objectiveID = barDB.objectives[buttonID].currencyID
                local _, count, _, _, _, totalMax = GetCurrencyInfo(objectiveID)

                -- Hyperlink
                GameTooltip:SetHyperlink("currency:" .. objectiveID)

                -- Divider
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
                GameTooltip:AddTexture(389194, {width = 200, height = 10})

                -- Currency info
                GameTooltip:AddLine(L["Currency"], 1, .82, 0, 1)
                GameTooltip:AddDoubleLine(L["Currency ID"], string.format("%d", objectiveID), 1, 1, 1, 1, 1, 1)
                if totalMax > 0 then
                    GameTooltip:AddDoubleLine(L["Total Maximum"], string.format("%d", totalMax), 1, 1, 1, 1, 1, 1)
                end

                -- Blank line
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

                -- Count/objective info
                GameTooltip:AddDoubleLine(L["Count"], string.format("%s%s", U.iformat(count, 1), totalMax > 0 and string.format("/%s", totalMax) or ""), 1, 1, 1, 1, 1, 1)

                if barDB.objectives[buttonID].objective then
                    local objectiveComplete = count >= barDB.objectives[buttonID].objective
                    GameTooltip:AddDoubleLine(L["Objective"], string.format("%s", U.iformat(barDB.objectives[buttonID].objective, 1)), 1, 1, 1, 1, 1, 1)
                    GameTooltip:AddDoubleLine(L["Objective Complete"], objectiveComplete and string.format("%dx", math.floor(count / barDB.objectives[buttonID].objective)) or L["FALSE"], 1, 1, 1, objectiveComplete and 0 or 1, objectiveComplete and 1 or 0, 0)
                end

                -- Footer
                self:GameTooltip_AddItemFooter(barID, buttonID)
            elseif objectiveType == "mixedItems" then
                local objectiveTable = barDB.objectives[buttonID]
                local count = self.bars[barID].buttons[buttonID]:GetCount()
                local objectiveComplete = count >= objectiveTable.objective

                -- Objective name/include bank
                GameTooltip:SetText(string.format("%s (%s)", objectiveTable.title, L["Mixed Items"]), _, _, _, _, true)
                GameTooltip:AddDoubleLine(L["Include Bank"], objectiveTable.includeBank and L["TRUE"] or L["FALSE"], 1, 1, 1, 1, 1, 1)

                -- Blank line
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

                -- Count/objective info
                GameTooltip:AddDoubleLine(L["Count"], count, 1, 1, 1, 1, 1, 1)
                GameTooltip:AddDoubleLine(L["Objective"], objectiveTable.objective, 1, 1, 1, 1, 1, 1)
                GameTooltip:AddDoubleLine(L["Objective Complete"], objectiveComplete and string.format("%dx", math.floor(count / barDB.objectives[buttonID].objective)) or L["FALSE"], 1, 1, 1, objectiveComplete and 0 or 1, objectiveComplete and 1 or 0, 0)

                -- Blank line
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

                -- Items list
                GameTooltip:AddLine(L["Items"], 1, .82, 0, 1)

                local items = {}

                -- Adding items to a temporary table so we can sort it by name and not item ID
                for k, v in pairs(objectiveTable.items) do
                    local objectiveID = v
                    U.CacheItem(objectiveID, function(objectiveID)
                        local name, _, _, _, _, _, _, _, _, texture = GetItemInfo(objectiveID)
                        items[name] = {objectiveID = objectiveID, texture = texture}
                    end, objectiveID)
                end

                -- Actually displaying the items on the tooltip
                for k, v in pairs(items) do
                    GameTooltip:AddDoubleLine(k, GetItemCount(v.objectiveID, objectiveTable.includeBank), 1, 1, 1, 1, 1, 1)
                    GameTooltip:AddTexture(v.texture)
                end

                -- Footer
                self:GameTooltip_AddItemFooter(barID, buttonID)
            elseif objectiveType == "shoppingList" then
                local objectiveTable = barDB.objectives[buttonID]
                local count = self.bars[barID].buttons[buttonID]:GetCount()
                local objectiveComplete = count >= objectiveTable.objective

                -- Objective name/include bank
                GameTooltip:SetText(string.format("%s (%s)", objectiveTable.title, L["Shopping List"]), _, _, _, _, true)
                GameTooltip:AddDoubleLine(L["Include Bank"], objectiveTable.includeBank and L["TRUE"] or L["FALSE"], 1, 1, 1, 1, 1, 1)

                -- Blank line
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

                -- Count/objective info
                GameTooltip:AddDoubleLine(L["Count"], count, 1, 1, 1, 1, 1, 1)
                GameTooltip:AddDoubleLine(L["Objective"], objectiveTable.objective, 1, 1, 1, 1, 1, 1)
                GameTooltip:AddDoubleLine(L["Objective Complete"], objectiveComplete and string.format("%dx", math.floor(count / barDB.objectives[buttonID].objective)) or L["FALSE"], 1, 1, 1, objectiveComplete and 0 or 1, objectiveComplete and 1 or 0, 0)

                -- Blank line
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

                -- Items list
                GameTooltip:AddLine(L["Items"], 1, .82, 0, 1)

                local items = {}

                -- Adding items to a temporary table so we can sort it by name and not item ID
                for k, v in pairs(objectiveTable.items) do
                    local objectiveID = k
                    U.CacheItem(objectiveID, function(objectiveID)
                        local name, _, _, _, _, _, _, _, _, texture = GetItemInfo(objectiveID)
                        items[name] = {objectiveID = objectiveID, texture = texture, objective = v}
                    end, objectiveID)
                end

                -- Actually displaying the items on the tooltip
                for k, v in pairs(items) do
                    local count = GetItemCount(v.objectiveID, objectiveTable.includeBank)
                    local objectiveComplete = count >= v.objective

                    GameTooltip:AddDoubleLine(k, string.format("%d/%d", count, v.objective), 1, 1, 1, objectiveComplete and 0 or 1, objectiveComplete and 1 or .82, 0)
                    GameTooltip:AddTexture(v.texture)
                end

                -- Footer
                self:GameTooltip_AddItemFooter(barID, buttonID)
            end
        elseif barDB.showEmpties and not self.bars[barID].buttons[buttonID].type then
            -- Button ID
            GameTooltip:AddDoubleLine(L["Button ID"], string.format("%d:%d", barID, buttonID), 1, 1, 1, 1, 1, 1)

            -- Check if tips are enabled before outputting
            if self.db.global.tooltips.buttonTips then
                -- Divider
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
                GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
                GameTooltip:AddTexture(389194, {width = 200, height = 10})

                -- Bottom: tips
                GameTooltip:AddLine(L._Tooltips("button", 11), 0, 1, 0)
                GameTooltip:AddLine(L._Tooltips("button", 9), 0, 1, 0)
            end
        end
    else
        GameTooltip:SetOwner(self.bars[barID], "ANCHOR_BOTTOMRIGHT")
        GameTooltip[addonName] = true

        local barDB = self.db.char.bars[barID]

        -- Bar number/name
        GameTooltip:SetText(string.format("%s %s", L.GetBarIDString(barID), barDB.desc ~= "" and string.format("(%s)", barDB.desc) or ""), _, _, _, _, true)
        GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

        -- Bar info
        GameTooltip:AddDoubleLine(L["Growth Direction"], self.directionInfo[barDB.direction].displayText, 1, 1, 1, 1, 1, 1)
        GameTooltip:AddDoubleLine(L["Row/Column Direction"], barDB.rowDirection == 1 and L["Normal"] or L["Reverse"], 1, 1, 1, 1, 1, 1)
        GameTooltip:AddDoubleLine(L["Visible Buttons"], string.format("%d/%d", barDB.visibleButtons, self.maxButtons), 1, 1, 1, 1, 1, 1)
        GameTooltip:AddDoubleLine(L["Alpha"], string.format("%d%%", barDB.alpha * 100), 1, 1, 1, 1, 1, 1)
        GameTooltip:AddDoubleLine(L["Scale"], string.format("%d%%", barDB.scale * 100), 1, 1, 1, 1, 1, 1)
        GameTooltip:AddDoubleLine(L["Position"], barDB.movable and L["Unlocked"] or L["Locked"], 1, 1, 1, 1, 1, 1)


        -- Check if tips are enabled before outputting
        if self.db.global.tooltips.barTips then
            -- Divider
            GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
            GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
            GameTooltip:AddTexture(389194, {width = 200, height = 10})

            -- Left click tips
            GameTooltip:AddLine(L._Tooltips("bar", 1), 0, 1, 0)
            GameTooltip:AddLine(L._Tooltips("bar", 2), 0, 1, 0)
            GameTooltip:AddLine(L._Tooltips("bar", 3), 0, 1, 0)

            -- Blank line
            GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

            -- Right click tips
            GameTooltip:AddLine(L._Tooltips("bar", 4), 0, 1, 0)
            GameTooltip:AddLine(L._Tooltips("bar", 5), 0, 1, 0)
            GameTooltip:AddLine(L._Tooltips("bar", 6), 0, 1, 0)
        end
    end

    GameTooltip:Show()
end

function addon:GameTooltip_AddItemFooter(barID, buttonID)
    -- Blank line
    GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

    -- Button ID
    GameTooltip:AddDoubleLine(L["Button ID"], string.format("%d:%d", barID, buttonID), 1, 1, 1, 1, 1, 1)


    -- Check if tips are enabled before outputting
    if self.db.global.tooltips.buttonTips then
        -- Divider
        GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
        GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)
        GameTooltip:AddTexture(389194, {width = 200, height = 10})

        -- Left click tips
        GameTooltip:AddLine(L._Tooltips("button", 1), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 2), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 3), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 4), 0, 1, 0)

        -- Blank line
        GameTooltip_AddBlankLinesToTooltip(GameTooltip, 1)

        -- Right click tips
        GameTooltip:AddLine(L._Tooltips("button", 5), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 6), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 7), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 8), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 9), 0, 1, 0)
        GameTooltip:AddLine(L._Tooltips("button", 10), 0, 1, 0)
    end
end