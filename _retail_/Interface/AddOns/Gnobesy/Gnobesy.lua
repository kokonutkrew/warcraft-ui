local guildBankOpen = false;
local GNOBESY_VERSION = "0.2.1";

local moves = {};
local depth = 0;
local frame = CreateFrame("Frame");
local t = 0;
local interval = 0.01;
local current = nil;
local buttons = {};

local function GetIDFromLink(link)
    if link and link:find("\124Hbattlepet:") then -- caged battle pets all share a single itemid
       return 82800
    end
    return link and tonumber(string.match(link, "item:(%d+)"));
end

local function AbortMoves()
    buttons["sortButton"]:Show();
    buttons["sortCancelButton"]:Hide();
    DEFAULT_CHAT_FRAME:AddMessage(GNOBESY_STATUS_SORT_ABORTED);
    PlaySound(846, "SFX");
    PlaySound(57843, "SFX");
    PlaySound(1475, "SFX");
    moves = {};
    current = nil;
    frame:Hide();
    cancelSort = nil;
end

local function DoMoves()

    while (current ~= nil or #moves > 0) do
        if current ~= nil then
            if CursorHasItem() then
                local type, id = GetCursorInfo();
                if current ~= nil and current.id == id then
                    if current.sourcebag ~= nil then

                        PickupContainerItem(current.targetbag, current.targetslot);

                        local link = select(7, GetContainerItemInfo(current.targetbag, current.targetslot));
                        if current.id ~= GetIDFromLink(link) then
                            return;
                        end
                    end
                else
                    AbortMoves();
                    return;
                end
            else
                if current.sourcebag ~= nil then
                    local link = select(7, GetContainerItemInfo(current.targetbag, current.targetslot));
                    if current.id ~= GetIDFromLink(link) then
                        return;
                    end
                end
                current = nil;
            end
        else
            if #moves > 0 then

                current = table.remove(moves, 1);

                if current.sourcebag ~= nil then
                    PickupContainerItem(current.sourcebag, current.sourceslot);
                    if CursorHasItem() == false then
                        return;
                    end

                    PickupContainerItem(current.targetbag, current.targetslot);
                    local link = select(7, GetContainerItemInfo(current.targetbag, current.targetslot));
                    if current.id == GetIDFromLink(link) then
                        current = nil;
                    else
                        return;
                    end
                else
                    --PlaySound(10829, "SFX");
                    PickupGuildBankItem(current.sourcetab, current.sourceslot);
                    PickupGuildBankItem(current.targettab, current.targetslot);
                    if CursorHasItem() then
                        PickupGuildBankItem(current.sourcetab, current.sourceslot);
                    end
                    current = nil;
                    return;
                end

            end
        end
    end
    buttons["sortButton"]:Show();
    buttons["sortCancelButton"]:Hide();
    local tabName = GetGuildBankTabInfo(GetCurrentGuildBankTab());
	if ( not tabName or tabName == "" ) then
		tabName = format(GUILDBANK_TAB_NUMBER, GetCurrentGuildBankTab());
    end
    DEFAULT_CHAT_FRAME:AddMessage(GNOBESY_STATUS_SORTED_1 .. tabName .. GNOBESY_STATUS_SORTED_2);
    PlaySound(73277, "SFX");
    frame:Hide();
end

local function CompareItems(lItem, rItem)
    if rItem.id == nil then
        return true;
    elseif lItem.id == nil then
        return false;
    elseif lItem.quality ~= rItem.quality then
        return (lItem.quality > rItem.quality);
    elseif lItem.class ~= rItem.class then
        return (lItem.class < rItem.class);
    elseif lItem.subclass ~= rItem.subclass then
        return (lItem.subclass < rItem.subclass);
    elseif lItem.name ~= rItem.name then
        return (lItem.name < rItem.name);
    elseif lItem.count ~= rItem.count then
        return (lItem.count >= rItem.count);
    else
        return true;
    end
end

local scanTooltip = CreateFrame("GameTooltip", "GNOBESY_Tooltip", UIParent, "GameTooltipTemplate");
scanTooltip:SetOwner(UIParent, "ANCHOR_NONE");

local function CreateMove(source, target)
    local move = {};
    if source.id ~= nil then
        move.id = source.id;
        move.name = source.name;
        move.sourcebag = source.bag;
        move.sourcetab = source.tab;
        move.sourceslot = source.slot;
        move.targetbag = target.bag;
        move.targettab = target.tab;
        move.targetslot = target.slot;
    else
        move.id = target.id;
        move.name = target.name;
        move.sourcebag = target.bag;
        move.sourcetab = target.tab;
        move.sourceslot = target.slot;
        move.targetbag = source.bag;
        move.targettab = source.tab;
        move.targetslot = source.slot;
    end
    return move;
end


local function SortCollection(collection)

    for i=1,#collection,1 do
        local lowest = i;
        for j = #collection, i + 1, -1 do
            if (CompareItems(collection[lowest],collection[j]) == false) then
                lowest = j;
            end
        end
        if i ~= lowest then

            -- store move
            local move = CreateMove(collection[lowest], collection[i]);
            table.insert(moves, move);

            -- swap items
            local tmp = collection[i];
            collection[i] = collection[lowest];
            collection[lowest] = tmp;

            -- swap slots
            tmp = collection[i].slot;
            collection[i].slot = collection[lowest].slot;
            collection[lowest].slot = tmp;
            tmp = collection[i].bag;
            collection[i].bag = collection[lowest].bag;
            collection[lowest].bag = tmp;
            tmp = collection[i].tab;
            collection[i].tab = collection[lowest].tab;
            collection[lowest].tab = tmp;
        end
    end
    PlaySound(57842, "SFX");
end

local function SortCollectionReverse(collection)

    for i=#collection, 1, -1 do
        local lowest = i;
        for j = 1, i - 1, 1 do
            if (CompareItems(collection[lowest],collection[j]) == false) then
                lowest = j;
            end
        end
        if i ~= lowest then

            -- store move
            local move = CreateMove(collection[lowest], collection[i]);
            table.insert(moves, move);

            -- swap items
            local tmp = collection[i];
            collection[i] = collection[lowest];
            collection[lowest] = tmp;

            -- swap slots
            tmp = collection[i].slot;
            collection[i].slot = collection[lowest].slot;
            collection[lowest].slot = tmp;
            tmp = collection[i].bag;
            collection[i].bag = collection[lowest].bag;
            collection[lowest].bag = tmp;
            tmp = collection[i].tab;
            collection[i].tab = collection[lowest].tab;
            collection[lowest].tab = tmp;
        end
    end
end

local function AddItem(i, collection, tab)
    local item = {};
    local _, count = GetGuildBankItemInfo(tab, i);
    local link = GetGuildBankItemLink(tab, i);
    item.tab = tab;
    item.slot = i;
    item.name = "<EMPTY>";
    item.id = GetIDFromLink(link);
    if item.id ~= nil then
        item.count = count;
        item.name, _, item.quality, _, _, item.class, item.subclass, _, item.type, _, item.price = GetItemInfo(item.id);
        if item.id == 82800 then -- GetItemInfo returns a bogus name for caged pets
            local speciesID, level, breedQuality, maxHealth, power, speed, name = scanTooltip:SetGuildBankItem(tab, i);
            item.name = strjoin("#",name,level,breedQuality,maxHealth,power,speed);
        end
    end
    table.insert(collection, item);
end

local function CreateCollectionFromTab(tab)

    local items = MAX_GUILDBANK_SLOTS_PER_TAB;
    local collection = {};

    for i=1, items, 1 do
        AddItem(i, collection, tab); -- collection is a table, table is a reference type
    end
    return collection;
end

local function GuildBankSortCancelButton()
    AbortMoves();
end

local function GuildBankSortButton(self)

    DEFAULT_CHAT_FRAME:AddMessage(GNOBESY_STATUS_STARTING);

    local collection = CreateCollectionFromTab(GetCurrentGuildBankTab());

    PlaySound(73275, "SFX");

    buttons["sortButton"]:Hide();
    buttons["sortCancelButton"]:Show();

    if GNOBESY.Reverse then
        SortCollectionReverse(collection);
    else
        SortCollection(collection);
    end

    interval = 1;
    frame:Show();
end

function GNOBESY_SlashCommand(cmd, arg2)

    if cmd == "gbank" then
        GuildBankSortButton(nil);
    else
        InterfaceOptionsFrame_OpenToCategory(GNOBESY_TITLE);
    end
end

local function CreateSortButton(name, parent, x, y, handler)

    local sortButton = CreateFrame("Button", name, parent, "UIPanelButtonTemplate");
    sortButton.parentFrame = parent;
    sortButton:SetWidth(20);
    sortButton:SetHeight(20);
    sortButton:SetNormalTexture("Interface\\Icons\\INV_Pet_Broom") -- INV_Pet_Mechanicalsquirrel later
    sortButton:ClearAllPoints();
    sortButton:SetPoint("TOPLEFT", parent, "TOPLEFT", x, y);

    if GNOBESY.IsEnabled == true then
        sortButton:Show();
    else
        sortButton:Hide();
    end

    sortButton:SetScript("OnClick", handler);
    sortButton:SetScript("OnEnter", function(self)
    	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
    	GameTooltip:SetText("Deploy your Mechanical Sorting Squirrel.", nil, nil, nil, nil, true);
    	GameTooltip:Show();
    end);

    buttons["sortButton"] = sortButton;
end

local function CreateSortCancelButton(name, parent, x, y, handler)

    local cancelButton = CreateFrame("Button", name, parent, "UIPanelButtonTemplate");
    cancelButton.parentFrame = parent;
    cancelButton:SetWidth(20);
    cancelButton:SetHeight(20);
    cancelButton:SetNormalTexture("Interface\\Icons\\Inv_box_petcarrier_01") -- INV_Pet_Mechanicalsquirrel later
    cancelButton:ClearAllPoints();
    cancelButton:SetPoint("TOPLEFT", parent, "TOPLEFT", x, y);
    cancelButton:SetScript("OnClick", handler);
    cancelButton:SetScript("OnEnter", function(self)
    	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
    	GameTooltip:SetText("Cage your Mechanical Sorting Squirrel and abort the sorting process.", nil, nil, nil, nil, true);
    	GameTooltip:Show();
    end);

    cancelButton:Hide();
    buttons["sortCancelButton"] = cancelButton;
end

local function CreateGuildControlButton(name, parent, x, y, handler)

    local guildControlButton = CreateFrame("Button", name, parent, "UIPanelButtonTemplate");
    guildControlButton.parentFrame = parent;
    guildControlButton:SetWidth(20);
    guildControlButton:SetHeight(20);
    guildControlButton:SetNormalTexture("Interface\\Icons\\Achievement_GuildPerk_EverybodysFriend")
    guildControlButton:ClearAllPoints();
    guildControlButton:SetPoint("TOPLEFT", parent, "TOPLEFT", x, y);

    if GNOBESY.IsEnabled == true then
        guildControlButton:Show();
    else
        guildControlButton:Hide();
    end

    guildControlButton:SetScript("OnClick", handler);

    guildControlButton:SetScript("OnEnter", function(self)
    	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
    	GameTooltip:SetText("Open the Guild Settings panel, where can change Guild Bank permissions.", nil, nil, nil, nil, true);
    	GameTooltip:Show();
    end);

    buttons["guildControlButton"] = guildControlButton;
end

local function hook_GuildBankTab_OnClick(...)

    local tab = GetCurrentGuildBankTab();
    if tab > GetNumGuildBankTabs() then
        _G["GBankFrameSortButton"]:Disable();
    else
        _G["GBankFrameSortButton"]:Enable();
    end
end

-- can't see to actually go direct to tab due to permissions issues
local function GuildUIBankPermissionsTab()
    UIParentLoadAddOn("Blizzard_GuildControlUI");
    ShowUIPanel(GuildControlUI);
end

function GNOBESY_MainFrame_OnEvent(self, event, ...)
    if event == "GUILDBANKFRAME_OPENED" then
        if guildBankOpen == false then
            guildBankOpen = true;
            local gbframe = _G["GuildBankFrame"];
            if gbframe then
                CreateSortButton("GBankFrameSortButton", gbframe, 574, -34, GuildBankSortButton);
                CreateSortCancelButton("GBankFrameSortCancelButton", gbframe, 574, -34, GuildBankSortCancelButton);
                CreateGuildControlButton("GuildControlButton", gbframe, 550, -34, GuildUIBankPermissionsTab);

                if GuildBankTab_OnClick then
                    hooksecurefunc("GuildBankTab_OnClick", hook_GuildBankTab_OnClick);
                end
            end
        end

        -- show the button
        if GNOBESY.IsEnabled == true then
            _G["GBankFrameSortButton"]:Show();
            _G["GuildControlButton"]:Show();
        else
            _G["GBankFrameSortButton"]:Hide();
            _G["GuildControlButton"]:Hide();
        end

    elseif event == "VARIABLES_LOADED" then
        InterfaceOptions_AddCategory(GNOBESY_OptionsPanel);
    end
end


function GNOBESY_MainFrame_OnLoad(self)
    local fEnable = true;
    local fReverse = false;
    local fAltLoc = false;
    if GNOBESY ~= nil and GNOBESY.IsEnabled ~= nil then
        fEnable = GNOBESY.IsEnabled;
        fReverse = GNOBESY.Reverse;
        fAltLoc = GNOBESY.AltLoc;
    end

    GNOBESY = {};
    GNOBESY.IsEnabled = fEnable;
    GNOBESY.Reverse = fReverse;
    GNOBESY.AltLoc = fAltLoc;

    GNOBESY_OPTIONSPANEL_CREDITS1 = "Gnobesy is maintained by Dalar of Wyrmrest Accord.";
    GNOBESY_OPTIONSPANEL_CREDITS2 = "Gnobesy was inspired by Sushi Sort by the guildies of <Sushi Regular> on US-Draka.";
    GNOBESY_OPTIONSPANEL_ENABLE = "Enable";
    GNOBESY_OPTIONSPANEL_ENABLE_TIP = "Why would you disable this? WHY?!";
    GNOBESY_OPTIONSPANEL_REVERSE = "Reverse Order";
    GNOBESY_OPTIONSPANEL_REVERSE_TIP = "Reverse the order of the sort.";
    GNOBESY_OPTIONSPANEL_SETTINGS = "Gnobesy Settings";
    GNOBESY_SORT = "Sort";
    GNOBESY_TITLE = "Gnobesy";
    GNOBESY_STATUS_SORTED_1 = "Guild bank tab \"";
    GNOBESY_STATUS_SORTED_2 = "\" is sorted!";
    GNOBESY_STATUS_STARTING = "Deploying Mechanical Sorting Squirrel... click the cage to abort.";
    GNOBESY_STATUS_SORT_ABORTED = "Mechanical Sorting Squirrel caged. Sorting aborted.";
    GNOBESY_LOAD_BANNER = "Gnobesy " .. GNOBESY_VERSION .. " is loaded. Use \"/GNOBESY\" to access settings.";

    frame:SetScript("OnUpdate", function(self, elapsed)
        t = t + elapsed;
        if t > interval then
            t = 0
            DoMoves();
        end
    end)
    frame:Hide();

    DEFAULT_CHAT_FRAME:AddMessage(GNOBESY_LOAD_BANNER);

    self:RegisterEvent("GUILDBANKFRAME_OPENED");
    self:RegisterEvent("VARIABLES_LOADED");
end

function GNOBESY_OptionsPanel_OnOk(self)
    GNOBESY.IsEnabled = GNOBESY_OptionsPanel_SortEnabled:GetChecked();

    GNOBESY.Reverse = GNOBESY_OptionsPanel_ReverseOrder:GetChecked();

    if GNOBESY.IsEnabled == true then
        if _G["GBankFrameSortButton"] ~= nil then
            _G["GBankFrameSortButton"]:Show();
        end
    else
        if _G["GBankFrameSortButton"] ~= nil then
            _G["GBankFrameSortButton"]:Hide();
        end
    end
 end

function GNOBESY_OptionsPanel_OnCancel(self)
    GNOBESY_OptionsPanel_SortEnabled:SetChecked(GNOBESY.IsEnabled);
    GNOBESY_OptionsPanel_ReverseOrder:SetChecked(GNOBESY.Reverse);
 end

function GNOBESY_OptionsPanel_OnDefault(self)
    GNOBESY.IsEnabled = true;
    GNOBESY.Reverse = false;
    GNOBESY_OptionsPanel_OnCancel()
 end

function GNOBESY_OptionsPanel_OnRefresh(self)
    GNOBESY_OptionsPanel_OnCancel()
end

function GNOBESY_OptionsPanel_OnLoad(panel)
    panel.name = GNOBESY_TITLE;
    panel.okay = GNOBESY_OptionsPanel_OnOk;
    panel.cancel = GNOBESY_OptionsPanel_OnCancel;
    panel.default = GNOBESY_OptionsPanel_OnDefault;
    panel.refresh = GNOBESY_OptionsPanel_OnRefresh;
    GNOBESY_OptionsPanel_OnCancel();
end

SLASH_GNOBESY1, SLASH_GNOBESY2 = "/GNOB", "/GNOBESY";
SlashCmdList["GNOBESY"] = GNOBESY_SlashCommand;
