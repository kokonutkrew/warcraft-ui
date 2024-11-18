local XP_Calculation = {}

local XP_Table = _G.XP_Table
local xpBonusItemIDs

function XP_Calculation:Initialize(xpBonusIDs)
    xpBonusItemIDs = xpBonusIDs
end

function XP_Calculation:GetRequiredXP(level)
    for _, data in ipairs(XP_Table) do
        if data.Lvl == level then
            return data.RequiredXP
        end
    end
    return nil
end

function XP_Calculation:GetXpTokens(level)
    for _, data in ipairs(XP_Table) do
        if data.Lvl == level then
            return data.BlueXPToken + 2, data.EpicXPToken + 2
        end
    end
    return 2, 2
end

function XP_Calculation:CountXpBonusItemsInMail()
    local xpCounts = { Normal = 0, Heroic = 0, Raid = 0 }
    local numItems = GetInboxNumItems()

    for mailIndex = 1, numItems do
        for attachmentIndex = 1, ATTACHMENTS_MAX_RECEIVE do
            local itemLink = GetInboxItemLink(mailIndex, attachmentIndex)
            if itemLink then
                local itemID = select(2, strsplit(":", itemLink))
                itemID = tonumber(itemID)
                local quality = xpBonusItemIDs[itemID]
                if quality then
                    xpCounts[quality] = xpCounts[quality] + 1
                end
            end
        end
    end

    return xpCounts
end

function XP_Calculation:GetCloakBonusXP()
    local cloakBonusXP = 0
    for i = 1, 40 do
        local buffData = C_UnitAuras.GetBuffDataByIndex("player", i, "HELPFUL")
        if not buffData then break end
        if buffData.spellId == 440393 then
            cloakBonusXP = tonumber(buffData.points[10]) or 0
            break
        end
    end
    return cloakBonusXP
end

function XP_Calculation:CalculateTokens(currentLevel, currentXP, xpTokensInMail, cloakBonusXP)
    local requiredDungeonTokens = 0
    local requiredRaidTokens = 0
    local requiredRaidTokensUnder25 = 0
    local currentLevelBlueXPToken = 0
    local currentLevelEpicXPToken = 0

    for i, v in ipairs(XP_Table) do
        if v.Lvl >= currentLevel then
            local blueToken = v.BlueXPToken + 2
            local epicToken = v.EpicXPToken + 2
            
            requiredDungeonTokens = requiredDungeonTokens + (v.RequiredXP / (blueToken + blueToken * cloakBonusXP / 100))

            if epicToken ~= 0 then
                requiredRaidTokens = requiredRaidTokens + (v.RequiredXP / (epicToken + epicToken * cloakBonusXP / 100))
            end

            if v.Lvl < 25 then
                requiredRaidTokensUnder25 = requiredRaidTokensUnder25 + (v.RequiredXP / (blueToken + blueToken * cloakBonusXP / 100))
            end
        end

        if v.Lvl == currentLevel then
            currentLevelBlueXPToken = v.RequiredXP / (blueToken + blueToken * cloakBonusXP / 100)
            if epicToken ~= 0 then
                currentLevelEpicXPToken = v.RequiredXP / (epicToken + epicToken * cloakBonusXP / 100)
            end
        end
    end

    requiredRaidTokens = requiredRaidTokens + requiredRaidTokensUnder25 * 0.625

    local xpBarPercentage = currentXP / UnitXPMax("player")
    local missingDungeonTokens = requiredDungeonTokens - (xpTokensInMail.Normal + xpTokensInMail.Heroic + xpBarPercentage * (1 + cloakBonusXP / 100))
    local missingRaidTokens = requiredRaidTokens - (xpTokensInMail.Normal * 0.625 + xpTokensInMail.Heroic * 0.625 + xpTokensInMail.Raid + xpBarPercentage * (1 + cloakBonusXP / 100))

    return requiredDungeonTokens, missingDungeonTokens, requiredRaidTokens, missingRaidTokens, currentLevelBlueXPToken, currentLevelEpicXPToken
end

function XP_Calculation:CalculateOverflowXP(currentLevel, missingTokens, tokenType, cloakBonusXP)
    local level69RequiredXP = 0
    for _, data in ipairs(XP_Table) do
        if data.Lvl == 69 then
            level69RequiredXP = data[tokenType]
            break
        end
    end

    local overflowXP = level69RequiredXP * (missingTokens * -1) * (1 + cloakBonusXP / 100)
    return overflowXP
end

function XP_Calculation:CalculateHCTokensOnly(currentLevel, currentXP, hcTokensInMail, cloakBonusXP)
    local requiredHCTokens = 0
    local currentLevelHCTokenXP = 0

    for _, data in ipairs(XP_Table) do
        if data.Lvl >= currentLevel then
            requiredHCTokens = requiredHCTokens + (data.RequiredXP / (data.BlueXPToken + data.BlueXPToken * cloakBonusXP / 100))
        end

        if data.Lvl == currentLevel then
            currentLevelHCTokenXP = data.RequiredXP / (data.BlueXPToken + data.BlueXPToken * cloakBonusXP / 100)
        end
    end

    local xpBarPercentage = currentXP / UnitXPMax("player")
    local missingHCTokens = requiredHCTokens - (hcTokensInMail.Normal + hcTokensInMail.Heroic + xpBarPercentage * (1 + cloakBonusXP / 100))

    return requiredHCTokens, missingHCTokens, currentLevelHCTokenXP
end

_G.XP_Calculation = XP_Calculation
return XP_Calculation
