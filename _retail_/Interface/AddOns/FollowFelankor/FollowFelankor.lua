--[[############# FollowFelankor.lua ##################
    # Follow Felankor
    # A World of Warcraft UI AddOn
    # By Felankor
    #
    # DESCRIPTION: Allows your group and raid members to put you on Auto-Follow + more.
    # Hate it when your in a group and your phone rings or someone
    # knocks your door, then you find that when you return your
    # group has gone on without you and you have to try and catch up?
    #
    # Follow Felankor allows people in your group or raid to
    # make you follow them. So that they don't leave you behind
    # if you go AFK.
    #
    # It also has some other features. See READ ME.txt for more info.
    #
    # NOTE: Your friends, guild, group and raid members DO NOT need
    #       this AddOn installed to be able to command you.
    #
    # IMPORTANT: I do not mind people looking at my code
    # to learn from it. If you use any parts of my code
    # please give me credit in your comments. I will
    # do the same if I ever use any code from another
    # AddOn. Thanks.
    #
    # Credits:
    # Thanks to crippe13 for the Unit Popup Menu (I.e. Menu when you right click char portrait)
    ###################################################]]--

--[[#########################################
    #             Variables
    #########################################]]
FF_Version = GetAddOnMetadata("FollowFelankor", "Version");--Get the version of the addon from the toc file (Mustn't be local)
local FF_LoadMessage = FFMSG_ADDON_NAME.." v"..FF_Version..FFMSG_ADDON_LOADED;
FF_Sender = "";
FF_Following = false;
FF_LastFollowed = "";
FF_Leader = "";
FF_Announce_Following = false;

FF_Master = ""; --DualBox Master

FF_AddonMessagePrefix = "FollowFelankor"; --Musn't be local (Used as the prefix for messages sent with SendAddonMessage)

FF_SemiEnabled = 0; --Musn't be local

FF_AnnouncedUpdate = false; --Set to true once it has been announced that an update is available

--Table (FF_Options_Defaults) Used to update saved variables when FollowFelankor has been updated to a newer version
-- 1 = true, 0 = false
FF_Options_Defaults = {
    ["Enabled"] = 1,
    ["AllowInviteRequests"] = {
        ["Enabled"] = 1,
        ["Guild"] = 1,
        ["Friends"] = 1,
        ["Master"] = 1
    },
    
    ["AllowAutoAcceptParty"] = {
        ["Enabled"] = 1,
        ["Guild"] = 1,
        ["Friends"] = 1,
        ["Master"] = 1
    },
    
    ["AllowAcceptResurrect"] = {
        ["Enabled"] = 1,
        ["Guild"] = 1,
        ["Friends"] = 1,
        ["Group"] = 1,
        ["Raid"] = 1,
        ["Master"] = 1
    },
    
    ["AllowEmoteCommand"] = {
        ["Enabled"] = 1,
        ["Guild"] = 1,
        ["Friends"] = 1,
        ["Group"] = 0,
        ["Raid"] = 0,
        ["Master"] = 1
    },
    
    ["PreventFollowWhenBusy"] = 1,
    ["ShowPartyStatusIcons"] = 1,
    ["EnableLogging"] = 1,

--Minimap Button Settings
    ["ShowMinimapButton"] = 1,
    ["MinimapPosition"] = 275,

--Whisper Log Dialog Settings
    ["WhisperLogSettings"] = {
        ["OrderBy"] = "Date",
        ["Order"] = "Desc"
    },

--Ban List Dialog Settings
    ["BanListOrder"] = "Asc",
    
}

FF_Options_Announcements_Defaults = {

--Announcement Settings
    ["AnnounceAll"] = 1,
    ["AnnounceFollowStart"] = 1,
    ["AnnounceFollowStop"] = 1,
    ["AnnounceAFK"] = 1,
    ["AnnounceResurrection"] = 1,
    ["AnnounceAutoInvite"] = 1,
    ["AnnounceRequestInviteForFriend"] = 0, --Keep disabled by default (I.e. 0)
    ["StatusCheckNotify"] = 1
    
}

FF_Options_DualBox_Defaults = {

    --DualBox Settings
    ["ResumeFollow"] = {
        ["Enabled"] = 1,
        ["Guild"] = 1,
        ["Friends"] = 1,
        ["Group"] = 1,
        ["Raid"] = 1,
        ["Master"] = 1
    },
    ["CancelResumeOnSpellCast"] = 1,
    ["AutoAcceptQuests"] = 0,
    ["AnnounceHealthWarning"] = 1,

}

--Table (FF_Options)
FF_Options = {};

--Table (FF_Options_Announcements)
FF_Options_Announcements = {};

--Table (FF_Options_DualBox)
FF_Options_DualBox = {};

--Table (FF_Ban_List)
FF_Ban_List = {};

--Table (FF_Whisper_Log)
FF_Whisper_Log = {};

--Table (FF_GroundMounts)
FF_GroundMounts = {};
FF_SlowGroundMounts = {}; -- depricated

--Table (FF_FlyingMounts)
FF_FlyingMounts = {};
FF_SlowFlyingMounts = {}; -- depricated

--Table (FF_SwimmingMounts)
FF_SwimmingMounts = {};

--Table (FF_UnknownMounts)
FF_UnknownMounts = {};

--Table (FF_Users)
FF_Users = {};

--Table (FF_GuildUsers)
FF_GuildUsers = {};

--Table (FF_PartyUsers)
FF_PartyUsers = {};

--Table (FF_RaidUsers)
FF_RaidUsers = {};

--Mounts to use when whisper is received (A random will be used if these are null)
FF_Static_Ground_Mount = "";
FF_Static_Flying_Mount = "";

--Number of mounts player has
FF_NumMounts = 0;

--Variables used to track if player is busy and should not auto follow
FF_MerchantStatus = 0; --Tracks if an NPC frame is open
FF_AuctionStatus = 0; --Tracks when the auction house is open
FF_BankStatus = 0; --Tracks when the bank is open
FF_GuildBankStatus = 0; --Tracks when the guild bank is open
FF_TaxiMapStatus = 0; --Tracks when the flight path/taxi map frame is open
FF_LootStatus = 0; --Tracks when a loot box is open

--[[#########################################
    #         Chat Output Functions
    #########################################]]
    
function FF_LocalMessage(Msg)
--CHAT_FRAME:AddMessage("message", Red(0.0-1.0), Green(0.0-1.0), Blue(0.0-1.0), Alpha(0.0-1.0), HoldTime(in seconds));
    DEFAULT_CHAT_FRAME:AddMessage(string.format("|cff%2x%2x%2x[FF] |r%s", 255, 255, 0, Msg), 0.0, 1.0, 1.0);--, 1.0, 5); --Original Color (0.25, 0.55, 1.0)
end

function FFDebug(Msg)
    DEFAULT_CHAT_FRAME:AddMessage(string.format("|cff%2x%2x%2x[FF] Debug: |r%s", 255, 255, 0, Msg), 0.0, 1.0, 1.0);
end

function FF_SendWhisper(WMsg, WTo)
    if (WTo) then --If a player name was given to whisper
        SendChatMessage("[FF] "..WMsg, "WHISPER", nil, WTo);
    end
end

function FF_SendPartyMessage(PMsg)
    if (FF_Options_Announcements["AnnounceAll"] == 1) then
        SendChatMessage("[FF] "..PMsg, "PARTY", nil);
    end
end

function FF_SendRaidMessage(RMsg)
    if (FF_Options_Announcements["AnnounceAll"] == 1) then
        SendChatMessage("[FF] "..RMsg, "RAID", nil);
    end
end


--[[#########################################
    #         Loading Functions
    #########################################]]
    
function FF_OnLoad()
    
    SLASH_FFMENU1 = FFSLASH_MENU;
    SLASH_FFMENU2 = FFSLASH_MENU_ALIAS;
    SlashCmdList["FFMENU"] = FF_ShowMenu; --Define slash commands for displaying the follow felankor menu

    SLASH_FFENABLE1 = FFSLASH_ENABLE_ADDON;
    SLASH_FFENABLE2 = FFSLASH_ENABLE_ADDON_ALIAS;
    SlashCmdList["FFENABLE"] = FF_Enable; --Define slash commands for enabling FF
    
    SLASH_FFDISABLE1 = FFSLASH_DISABLE_ADDON;
    SLASH_FFDISABLE2 = FFSLASH_DISABLE_ADDON_ALIAS;
    SlashCmdList["FFDISABLE"] = FF_Disable; --Define slash commands for enabling FF
    
    SLASH_FFSTATUS1 = FFSLASH_ADDON_STATUS;
    SLASH_FFSTATUS2 = FFSLASH_ADDON_STATUS_ALIAS;
    SlashCmdList["FFSTATUS"] = FF_Status;
    
    SLASH_FFSHOWOPTIONS1 = FFSLASH_SHOW_OPTIONS;
    SLASH_FFSHOWOPTIONS2 = FFSLASH_SHOW_OPTIONS_ALIAS;
    SlashCmdList["FFSHOWOPTIONS"] = FF_Show_Options;
    
    SLASH_FFINVREQON1 = FFSLASH_ALLOW_INVITE_REQUESTS;
    SLASH_FFINVREQON2 = FFSLASH_ALLOW_INVITE_REQUESTS_ALIAS;
    SlashCmdList["FFINVREQON"] = FF_AllowInviteRequests;
    
    SLASH_FFBAN1 = FFSLASH_BAN_LIST_BAN;
    SLASH_FFBAN2 = FFSLASH_BAN_LIST_BAN_ALIAS;
    SlashCmdList["FFBAN"] = FF_Ban_Player;
    
    SLASH_FFUNBAN1 = FFSLASH_BAN_LIST_UNBAN;
    SLASH_FFUNBAN2 = FFSLASH_BAN_LIST_UNBAN_ALIAS;
    SlashCmdList["FFUNBAN"] = FF_UnBan_Player;
    
    SLASH_FFSHOWBAN1 = FFSLASH_BAN_LIST_SHOW_BANS;
    SLASH_FFSHOWBAN2 = FFSLASH_BAN_LIST_SHOW_BANS_ALIAS;
    SlashCmdList["FFSHOWBAN"] = FF_Show_Bans;
    
    SLASH_FFAUTOACCEPTPARTY1 = FFSLASH_AUTO_ACCEPT_PARTY;
    SLASH_FFAUTOACCEPTPARTY2 = FFSLASH_AUTO_ACCEPT_PARTY_ALIAS;
    SlashCmdList["FFAUTOACCEPTPARTY"] = FF_AllowAutoAcceptParty;
    
    SLASH_FFACCEPTRESURRECT1 = FFSLASH_ACCEPT_RESURRECT;
    SLASH_FFACCEPTRESURRECT2 = FFSLASH_ACCEPT_RESURRECT_ALIAS;
    SlashCmdList["FFACCEPTRESURRECT"] = FF_AllowAcceptResurrect;
    
    SLASH_FFALLOWEMOTECOMMAND1 = FFSLASH_ALLOW_EMOTE_COMMAND;
    SLASH_FFALLOWEMOTECOMMAND2 = FFSLASH_ALLOW_EMOTE_COMMAND_ALIAS;
    SlashCmdList["FFALLOWEMOTECOMMAND"] = FF_AllowEmoteCommand;
    
    SLASH_FFUSEGMOUNT1 = FFSLASH_USE_GMOUNT;
    SLASH_FFUSEGMOUNT2 = FFSLASH_USE_GMOUNT_ALIAS;
    SlashCmdList["FFUSEGMOUNT"] = FF_SetGMount;
    
    SLASH_FFUSEFMOUNT1 = FFSLASH_USE_FMOUNT;
    SLASH_FFUSEFMOUNT2 = FFSLASH_USE_FMOUNT_ALIAS;
    SlashCmdList["FFUSEFMOUNT"] = FF_SetFMount;
    
    SLASH_FFCREATEMACROS1 = FFSLASH_CREATE_MACROS;
    SLASH_FFCREATEMACROS2 = FFSLASH_CREATE_MACROS_ALIAS;
    SlashCmdList["FFCREATEMACROS"] = FF_CreateMacros;
    
    SLASH_FFANNOUNCE1 = FFSLASH_ANNOUNCE;
    SLASH_FFANNOUNCE2 = FFSLASH_ANNOUNCE_ALIAS;
    SlashCmdList["FFANNOUNCE"] = FF_Announce;
    
    SLASH_FFCHECKSTATUS1 = FFSLASH_CHECK_STATUS;
    SLASH_FFCHECKSTATUS2 = FFSLASH_CHECK_STATUS_ALIAS;
    SlashCmdList["FFCHECKSTATUS"] = FF_CheckStatus;
    
    SLASH_FFHELP1 = FFSLASH_SHOW_HELP;
    SLASH_FFHELP2 = FFSLASH_SHOW_HELP_ALIAS;
    SlashCmdList["FFHELP"] = FF_Show_Help;
    
    --DualBox Slash Commands
    SLASH_FFSETMASTER1 = FFSLASH_SET_MASTER;
    SLASH_FFSETMASTER2 = FFSLASH_SET_MASTER_ALIAS;
    SlashCmdList["FFSETMASTER"] = FF_SetDualBoxMaster;
    
    SLASH_FFCLEARMASTER1 = FFSLASH_CLEAR_MASTER;
    SLASH_FFCLEARMASTER2 = FFSLASH_CLEAR_MASTER_ALIAS;
    SlashCmdList["FFCLEARMASTER"] = FF_ClearDualBoxMaster;
    
    SLASH_FFCANCELRESUMEFOLLOW1 = FFSLASH_CANCEL_RESUME_FOLLOW;
    SLASH_FFCANCELRESUMEFOLLOW2 = FFSLASH_CANCEL_RESUME_FOLLOW_ALIAS;
    SlashCmdList["FFCANCELRESUMEFOLLOW"] = FF_CancelAutoResumeFollow;
    
    FFFrame:RegisterEvent("ADDON_LOADED");--Hook when the saved variables have been loaded
    FFFrame:RegisterEvent("CHAT_MSG_WHISPER");--Hook whispers (listen for incomming whispers)
    FFFrame:RegisterEvent("CHAT_MSG_ADDON");--Hook addon messages (to receive addon messages from other Follow Felankor users)
    FFFrame:RegisterEvent("AUTOFOLLOW_BEGIN");--Hook when player begins to follow someone
    FFFrame:RegisterEvent("AUTOFOLLOW_END");--Hook when player stops following someone
    FFFrame:RegisterEvent("CHAT_MSG_SYSTEM");--Hook when player goes afk or dnd etc
    FFFrame:RegisterEvent("PARTY_INVITE_REQUEST");--Hook when someone invites you to a party
    FFFrame:RegisterEvent("GROUP_ROSTER_UPDATE");--As of 3.1 this event must be hooked before StaticPopup_Hide("PARTY_INVITE") can be called or the invitation will be declined
    FFFrame:RegisterEvent("GUILD_ROSTER_UPDATE");--Hook when guild members come online/offline
    FFFrame:RegisterEvent("RESURRECT_REQUEST");--Hook whe someone tries to resurrect you
    FFFrame:RegisterEvent("COMPANION_UPDATE");--Hook when mounts are updated
    FFFrame:RegisterEvent("QUEST_ACCEPT_CONFIRM"); --Hooks when escort quests are shared
    FFFrame:RegisterEvent("QUEST_DETAIL"); --Hooks when any quest window opens (except for escort quests started by somebody else)
    FFFrame:RegisterEvent("UNIT_HEALTH"); --Hooks when the players health changes
    FFFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED"); --Hooks when the player finishes casting a spell
    FFFrame:RegisterEvent("PLAYER_REGEN_ENABLED"); --Hook when the player leaves combat (PLAYER_REGEN_ENABLED = health and mana regeneration re-enabled after combat)
    
    --Track NPC windows to stop auto follow closing them
    FFFrame:RegisterEvent("MERCHANT_SHOW"); --Hook when an NPC frame opens
    FFFrame:RegisterEvent("MERCHANT_CLOSED"); --Hook when an NPC frame closes
    FFFrame:RegisterEvent("AUCTION_HOUSE_SHOW"); --Hook when the auction house opens
    FFFrame:RegisterEvent("AUCTION_HOUSE_CLOSED"); --Hook when the auction house closes
    FFFrame:RegisterEvent("BANKFRAME_OPENED"); --Hook when the bank opens
    FFFrame:RegisterEvent("BANKFRAME_CLOSED"); --Hook when the bank closes
    FFFrame:RegisterEvent("GUILDBANKFRAME_OPENED"); --Hook when the guild bank opens
    FFFrame:RegisterEvent("GUILDBANKFRAME_CLOSED"); --Hook when the guild bank closes
    FFFrame:RegisterEvent("TAXIMAP_OPENED"); --Hook when the flight master/taxi map frame is opened
    FFFrame:RegisterEvent("TAXIMAP_CLOSED"); --Hook when the flight master/taxi map frame is closed
    FFFrame:RegisterEvent("LOOT_OPENED"); --Hook when the loot box opens
    FFFrame:RegisterEvent("LOOT_CLOSED"); --Hook when the loot box closes
    
    --Register AddOn Message Prefix
    RegisterAddonMessagePrefix(FF_AddonMessagePrefix); --Allows the addon to receive addon messages sent to it
    
end

function FF_LoadVariables()
    
    -- The following is used if a new option is added to FF_Options in a new version of FollowFelankor
    -- I.E. If the user was using and old version of FollowFelankor and updates to a newer version that
    -- has a new key in FF_Options, the new key will not be saved unless the user deletes their saved variables.
    -- This fixes that so that they dont have to delete their saved variables.

    for key, value in pairs(FF_Options_Defaults) do
    
        if (not FF_Options[key]) then
            FF_Options[key] = value;
        end
        
    end
    
    for key, value in pairs(FF_Options_Announcements_Defaults) do
    
        if (not FF_Options_Announcements[key]) then
            FF_Options_Announcements[key] = value;
        end
        
    end
    
    for key, value in pairs(FF_Options_DualBox_Defaults) do
    
        if (not FF_Options_DualBox[key]) then
            FF_Options_DualBox[key] = value;
        end
        
    end
    
    --[[ The following was added in 2.4.1 after certain options were improved to allow selection of who is able to use commands on you. 
        The reason it was added is to prevent an error. ]]

    if (type(FF_Options["AllowInviteRequests"]) == "number") then
        local FFOldSetting = FF_Options["AllowInviteRequests"];
        FF_Options["AllowInviteRequests"] = {
            ["Enabled"] = FFOldSetting,
            ["Guild"] = FF_Options_Defaults["AllowInviteRequests"]["Guild"],
            ["Friends"] = FF_Options_Defaults["AllowInviteRequests"]["Friends"],
            ["Master"] = FF_Options_Defaults["AllowInviteRequests"]["Master"]
        };
    end
    
    if (type(FF_Options["AllowAutoAcceptParty"]) == "number") then
        local FFOldSetting = FF_Options["AllowAutoAcceptParty"];
        FF_Options["AllowAutoAcceptParty"] = {
            ["Enabled"] = FFOldSetting,
            ["Guild"] = FF_Options_Defaults["AllowAutoAcceptParty"]["Guild"],
            ["Friends"] = FF_Options_Defaults["AllowAutoAcceptParty"]["Friends"],
            ["Master"] = FF_Options_Defaults["AllowAutoAcceptParty"]["Master"]
        };
    end
    
    if (type(FF_Options["AllowAcceptResurrect"]) == "number") then
        local FFOldSetting = FF_Options["AllowAcceptResurrect"];
        FF_Options["AllowAcceptResurrect"] = {
            ["Enabled"] = FFOldSetting,
            ["Guild"] = FF_Options_Defaults["AllowAcceptResurrect"]["Guild"],
            ["Friends"] = FF_Options_Defaults["AllowAcceptResurrect"]["Friends"],
            ["Group"] = FF_Options_Defaults["AllowAcceptResurrect"]["Group"],
            ["Raid"] = FF_Options_Defaults["AllowAcceptResurrect"]["Raid"],
            ["Master"] = FF_Options_Defaults["AllowAcceptResurrect"]["Master"]
        };
    end
    
    if (type(FF_Options["AllowEmoteCommand"]) == "number") then
        local FFOldSetting = FF_Options["AllowEmoteCommand"];
        FF_Options["AllowEmoteCommand"] = {
            ["Enabled"] = FFOldSetting,
            ["Guild"] = FF_Options_Defaults["AllowEmoteCommand"]["Guild"],
            ["Friends"] = FF_Options_Defaults["AllowEmoteCommand"]["Friends"],
            ["Group"] = FF_Options_Defaults["AllowEmoteCommand"]["Group"],
            ["Raid"] = FF_Options_Defaults["AllowEmoteCommand"]["Raid"],
            ["Master"] = FF_Options_Defaults["AllowEmoteCommand"]["Master"]
        };
    end

    if (type(FF_Options_DualBox["ResumeFollow"]) == "number") then
    
        local FFOldSetting = FF_Options_DualBox["ResumeFollow"];
        FF_Options_DualBox["ResumeFollow"] = {
            ["Enabled"] = FFOldSetting,
            ["Guild"] = FF_Options_DualBox_Defaults["ResumeFollow"]["Guild"],
            ["Friends"] = FF_Options_DualBox_Defaults["ResumeFollow"]["Friends"],
            ["Group"] = FF_Options_DualBox_Defaults["ResumeFollow"]["Group"],
            ["Raid"] = FF_Options_DualBox_Defaults["ResumeFollow"]["Raid"],
            ["Master"] = FF_Options_DualBox_Defaults["ResumeFollow"]["Master"]
        };
    end
    
    --[[ End of error prevention. See previous comment for more information. ]]
    
    FF_UpdateStatus();
    
    --[[ The following was added in 2.3.2 after the static mount variables were changed to store the mount name instead of
        the mount position id. The reason it was added is purely to prevent error messages for people who's static mount variables
        are still id numbers. ]]

    if (FF_Static_Ground_Mount ~= "") then --If a static ground mount has been set
        
        
        if (type(FF_Static_Ground_Mount) == "number") then --If the variable has stored the mount's position id
            
            local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", FF_Static_Ground_Mount); --Get information about the mount
            FF_Static_Ground_Mount = creatureName; --Store the mount's name instead
            
        end
        
    end

    if (FF_Static_Flying_Mount ~= "") then --If a static flying mount has been set
        
        
        if (type(FF_Static_Flying_Mount) == "number") then --If the variable has stored the mount's position id
            
            local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", FF_Static_Flying_Mount); --Get information about the mount
            FF_Static_Flying_Mount = creatureName; --Store the mount's name instead
            
        end
        
    end
    
    --[[ End of error prevention. See previous comment for more information. ]]
    
    FF_LocalMessage(FF_LoadMessage);--Display loaded message
    FF_LocalMessage(FFMSG_ADDON_STARTUP_HELP1);
    FF_LocalMessage(FFMSG_ADDON_STARTUP_HELP2);
    
end

--[[#########################################
    #        Slash Command Functions
    #########################################]]

function FF_ShowMenu()
    FFMenu:Show();
end
    
function FF_Enable()
    FF_Options["Enabled"] = 1;--Enable the addon
    FF_UpdateStatus();
    FF_LocalMessage(FFMSG_ADDON_NAME.." v"..FF_Version..FFMSG_ADDON_ENABLED);--Tell the user the addon was enabled
end

function FF_Disable()
    FF_Options["Enabled"] = 0;--Enable the addon
    FF_UpdateStatus();
    FF_LocalMessage(FFMSG_ADDON_NAME.." v"..FF_Version..FFMSG_ADDON_DISABLED);--Tell the user the addon was enabled
end

function FF_Status()
    local FF_Status = nil;
    if (FF_Options["Enabled"] == 1) then--If ff is enabled
        FF_Status = FFMSG_ENABLED;
    elseif (FF_Options["Enabled"] == 0) then--If ff is disabled
        FF_Status = FFMSG_DISABLED;
    end
    
    FF_UpdateStatus();
    FF_LocalMessage(FFMSG_ADDON_NAME.." v"..FF_Version..FF_Status);--Tell the user the staus of the addon
    
end

function FF_Show_Options()
    InterfaceOptionsFrame_OpenToCategory(FFOptions);
end

function FF_AllowInviteRequests(cmd)

    if (string.lower(cmd) == "on") then
        FF_Options["AllowInviteRequests"]["Enabled"] = 1;
        FF_LocalMessage(FFMSG_ALLOWING_INVITE_REQUESTS);
    elseif (string.lower(cmd) == "off") then
        FF_Options["AllowInviteRequests"]["Enabled"] = 0;
        FF_LocalMessage(FFMSG_BLOCKING_INVITE_REQUESTS);
    else
        FF_LocalMessage(FFSLASH_ALLOW_INVITE_REQUESTS_USAGE);
    end
    FF_UpdateStatus();
    
end

function FF_AllowAutoAcceptParty(cmd)

    if (string.lower(cmd) == "on") then
        FF_Options["AllowAutoAcceptParty"]["Enabled"] = 1;
        FF_LocalMessage(FFMSG_ALLOWING_AUTO_ACCEPT_PARTY);
    elseif (string.lower(cmd) == "off") then
        FF_Options["AllowAutoAcceptParty"]["Enabled"] = 0;
        FF_LocalMessage(FFMSG_BLOCKING_AUTO_ACCEPT_PARTY);
    else
        FF_LocalMessage(FFSLASH_AUTO_ACCEPT_PARTY_USAGE);
    end

    FF_UpdateStatus();
end

function FF_AllowAcceptResurrect(cmd)

    if (string.lower(cmd) == "on") then
        FF_Options["AllowAcceptResurrect"]["Enabled"] = 1;
        FF_LocalMessage(FFMSG_ALLOWING_AUTO_ACCEPT_RESURRECT);
    elseif (string.lower(cmd) == "off") then
        FF_Options["AllowAcceptResurrect"]["Enabled"] = 0;
        FF_LocalMessage(FFMSG_BLOCKING_AUTO_ACCEPT_RESURRECT);
    else
        FF_LocalMessage(FFSLASH_ACCEPT_RESURRECT_USAGE);
    end
    FF_UpdateStatus();
    
end

function FF_AllowEmoteCommand(cmd)

    if (string.lower(cmd) == "on") then
        FF_Options["AllowEmoteCommand"]["Enabled"] = 1;
        FF_LocalMessage(FFMSG_ALLOWING_EMOTE_COMMAND);
    elseif (string.lower(cmd) == "off") then
        FF_Options["AllowEmoteCommand"]["Enabled"] = 0;
        FF_LocalMessage(FFMSG_BLOCKING_EMOTE_COMMAND);
    else
        FF_LocalMessage(FFSLASH_ALLOW_EMOTE_COMMAND_USAGE);
    end
    FF_UpdateStatus();

end

function FF_SetGMount(cmd)

    local MountFound = false;
    local MountName = "";

    if cmd ~= "" then
        
        if (string.lower(cmd) == "clear") then
            FF_Static_Ground_Mount = ""; --Clear the prefered mount
            FF_LocalMessage(FFMSG_GMOUNT_CLEARED);
            MountFound = "cleared"; --Prevent final message being displayed by making sure MountFound is not set to true or false
        elseif (string.find(cmd, "spell:%d+")) then
            
            local linkedMountID = string.gsub(cmd,".-\124Hspell:([^\124]*)\124h.*", "%1");
            MountName = string.gsub(cmd, ".-%[(.-)%].-", "%1");
            
            for i=1, GetNumCompanions("MOUNT") do
                
                local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", i);
                
                if (tonumber(linkedMountID) == tonumber(creatureSpellID)) then --If the creature is found
                    
                    FF_Static_Ground_Mount = creatureName; --Set the static mount to the creature's name
                    
                    MountFound = true;
                    MountName = creatureName;
                    
                    break; --No need to search the rest of the mounts
                    
                end --End: if
                
            end --End: for
            
        else
            
            for i=1, GetNumCompanions("MOUNT") do
                
                local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", i);
                
                MountName = cmd;
                
                if (string.lower(cmd) == string.lower(creatureName)) then --If the creature is found
                    
                    FF_Static_Ground_Mount = creatureName; --Set the static mount to the creature's name
                    
                    MountFound = true;
                    MountName = creatureName;
                    
                    break; --No need to search the rest of the mounts
                    
                end --End: if
                
            end --End: for
            
        end --End: if (string.lower(cmd) == "clear") then
        
        if (MountFound == true) then
            FF_LocalMessage(FFMSG_STATIC_GMOUNT_SET..MountName);
        elseif (MountFound == false) then
            FF_LocalMessage(FFMSG_STATIC_GMOUNT_NOT_FOUND..MountName);
        end
        
    else
        FF_LocalMessage(FFSLASH_USE_GMOUNT_USAGE);
    end
    
end

function FF_SetFMount(cmd)
    
    local MountFound = false;
    local MountName = "";

    if cmd ~= "" then
        
        if (string.lower(cmd) == "clear") then
            FF_Static_Flying_Mount = ""; --Clear the prefered mount
            FF_LocalMessage(FFMSG_FMOUNT_CLEARED);
            MountFound = "cleared"; --Prevent final message being displayed by making sure MountFound is not set to true or false
        elseif (string.find(cmd, "spell:%d+")) then
            
            local linkedMountID = string.gsub(cmd,".-\124Hspell:([^\124]*)\124h.*", "%1");
            MountName = string.gsub(cmd, ".-%[(.-)%].-", "%1");
            
            for i=1, GetNumCompanions("MOUNT") do
                
                local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", i);
                
                if (tonumber(linkedMountID) == tonumber(creatureSpellID)) then --If the creature is found
                    
                    FF_Static_Flying_Mount = creatureName; --Set the static mount to the creature's name
                    
                    MountFound = true;
                    MountName = creatureName;
                    
                    break; --No need to search the rest of the mounts
                    
                end --End: if
                
            end --End: for
            
        else
            
            for i=1, GetNumCompanions("MOUNT") do
                
                local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", i);
                
                MountName = cmd;
                
                if (string.lower(cmd) == string.lower(creatureName)) then --If the creature is found
                    
                    FF_Static_Flying_Mount = creatureName; --Set the static mount to the companion id
                    
                    MountFound = true;
                    MountName = creatureName;
                    
                    break; --No need to search the rest of the mounts
                    
                end --End: if
                
            end --End: for
            
        end --End: if (string.lower(cmd) == "clear") then
        
        if (MountFound == true) then
            FF_LocalMessage(FFMSG_STATIC_FMOUNT_SET..MountName);
        elseif (MountFound == false) then
            FF_LocalMessage(FFMSG_STATIC_FMOUNT_NOT_FOUND..MountName);
        end
        
    else
        FF_LocalMessage(FFSLASH_USE_FMOUNT_USAGE);
    end
    
end

function FF_CreateMacros()
    --NOTE Usage: CreateMacro("Macro Name", "Icons Spell Name", "macro commands", 0=all characters OR 1=per character)
    CreateMacro(FFMACRO_FOLLOW_NAME, "Ability_Rogue_Sprint", "/script SendChatMessage(\""..FFWHISP_FOLLOW.."\", \"WHISPER\", nil, UnitName(\"target\"))", 1);
    CreateMacro(FFMACRO_SIT_NAME, "Spell_ChargeNegative", "/script SendChatMessage(\""..FFWHISP_SIT.."\", \"WHISPER\", nil, UnitName(\"target\"))", 1);
    CreateMacro(FFMACRO_STAND_NAME, "Spell_ChargePositive", "/script SendChatMessage(\""..FFWHISP_STAND.."\", \"WHISPER\", nil, UnitName(\"target\"))", 1);
    CreateMacro(FFMACRO_INVITE_ME_NAME, "Spell_Holy_PrayerofSpirit", "/script SendChatMessage(\""..FFWHISP_INVITE_ME.."\", \"WHISPER\", nil, UnitName(\"target\"))", 1);
    CreateMacro(FFMACRO_DANCE_NAME, "Ability_Creature_Cursed_04", "/script SendChatMessage(\""..FFWHISP_DANCE.."\", \"WHISPER\", nil, UnitName(\"target\"))", 1);
    CreateMacro(FFMACRO_MOUNT_GROUND, "Ability_Mount_Charger", "/script SendChatMessage(\""..FFWHISP_MOUNTGROUND.."\", \"WHISPER\", nil, UnitName(\"target\"))", 1);
    CreateMacro(FFMACRO_MOUNT_FLYING, "Ability_Druid_FlightForm", "/script SendChatMessage(\""..FFWHISP_MOUNTFLYING.."\", \"WHISPER\", nil, UnitName(\"target\"))", 1);
    FF_LocalMessage(FFMSG_MACROS_CREATED);
    FF_ShowMacroFrame();
end

function FF_ShowMacroFrame()

    if (IsAddOnLoaded("Blizzard_MacroUI")) then
        ShowUIPanel(MacroFrame);
        
        PanelTemplates_SetTab(MacroFrame, 2); --Select the 2nd tab (char specific macros)
        MacroFrame_SaveMacro(); --Save any unsaved changes to selected macro
		MacroFrame_SetCharacterMacros(); --Selects the first Macro
		MacroFrame_Update(); --Updates Macro list
		MacroButtonScrollFrame:SetVerticalScroll(0); --Reset the Macro frame scroll bar
    else
        
        if (IsAddOnLoadOnDemand("Blizzard_MacroUI")) then
            LoadAddOn("Blizzard_MacroUI");
            ShowUIPanel(MacroFrame); --Open the Macro frame
            
            PanelTemplates_SetTab(MacroFrame, 2); --Select the 2nd tab (char specific macros)
            MacroFrame_SaveMacro(); --Save any unsaved changes to selected macro
			MacroFrame_SetCharacterMacros(); --Selects the first Macro
			MacroFrame_Update(); --Updates Macro list
			MacroButtonScrollFrame:SetVerticalScroll(0); --Reset the Macro frame scroll bar
        end
        
    end
 
end

function FF_Ban_Player(cmd)
    local FF_AllreadyBanned = false;
    local FF_newKey = table.getn(FF_Ban_List) + 1;--Get the next index number
    
    for i=1, table.getn(FF_Ban_List) do--for every banned player
        
        if (FF_Ban_List[i] == string.lower(cmd)) then--if the banned players name is the same as the one to be unbanned
            FF_AllreadyBanned = true;
        end
        
    end
    
    if (FF_AllreadyBanned == true) then
        FF_LocalMessage(cmd..FFMSG_PLAYER_ALLREADY_BANNED);--Tell the player the person was banned
    else
        FF_Ban_List[FF_newKey] = string.lower(cmd);--Add the player to the ban list table
        
        if (FF_Ban_List[FF_newKey] == string.lower(cmd)) then
            FF_LocalMessage(cmd..FFMSG_PLAYER_BANNED);--Tell the player the person was banned
        else
            FF_LocalMessage(cmd..FFMSG_PLAYER_WASNT_BANNED);--Tell the player the person wasn't banned
        end
        
    end
    
end

function FF_UnBan_Player(cmd)
    local FF_UnBanned = false;
    for i=1, table.getn(FF_Ban_List) do--for every banned player
    
        if (FF_Ban_List[i] == string.lower(cmd)) then--if the banned players name is the same as the one to be unbanned
            table.remove(FF_Ban_List, i);--Remove the player from the ban list
            FF_UnBanned = true;
        end
        
    end
    
    if (FF_UnBanned == true) then
        FF_LocalMessage(cmd..FFMSG_PLAYER_UNBANNED);--Tell the player the person was banned
    else
        FF_LocalMessage(cmd..FFMSG_PLAYER_WASNT_BANNED);--Tell the player the person was banned
    end
    
end

function FF_Show_Bans()
    FFBanList:Show(); --Show the ban list
end

function FF_Announce()

    if (UnitInRaid("player")) then --if player is in a raid
        FF_SendRaidMessage(FFMSG_ANNOUNCEMENT);
    elseif (UnitInParty("player")) then--if player is in a group
        FF_SendPartyMessage(FFMSG_ANNOUNCEMENT);
    end
    
end

function FF_CheckStatus(player)
    
    if player ~= "" then
        FF_LocalMessage(FFMSG_CHECKING_STATUS_START..player..FFMSG_CHECKING_STATUS_STOP);
        SendAddonMessage(FF_AddonMessagePrefix, "ForcedStatusCheck", "WHISPER", player); --Find out if the player is using Follow Felankor
    else
        FF_LocalMessage(FFSLASH_CHECK_STATUS_USAGE);
    end
    
end

function FF_Show_Help(cmd)

    local FF_SlashCommandFound=false;

    if (string.len(cmd) > 0) then
    
        for i=1, table.getn(FFSLASH_HELP_TABLE) do
        
            if (cmd == string.lower(string.sub(FFSLASH_HELP_TABLE[i], 2, string.len(FFSLASH_HELP_TABLE[i])))) then
                FF_LocalMessage(FFSLASH_HELP_DESCRIPTIONS_TABLE[i]);
                FF_SlashCommandFound = true;
            end
            
        end
    
        if (FF_SlashCommandFound == false) then
            FF_LocalMessage(FFMSG_SLASH_COMMAND_UNKOWN..cmd);
        end

    else
        
        FFHelp:Show();
        
    end

end

--[[#########################################
    #          DualBox Functions
    #########################################]]

function FF_SetDualBoxMaster(MasterName)
    
    if (string.len(MasterName) > 0) then
        FF_Master = MasterName; --Set the DualBox Master for this session. (We will not save the master, it must be set each time you log in)
        FF_LocalMessage(FFMSG_MASTER_SET..FF_Master); --Inform the player that the DualBox Master has been set.
    else
        FF_LocalMessage(FFSLASH_SET_MASTER_USAGE);
    end -- End: if (string.len(MasterName) > 0) then
    
end --End: function FF_SetDualBoxMaster(MasterName)

function FF_ClearDualBoxMaster()
    FF_Master = ""; --Clear the DualBox Master.
    FF_LocalMessage(FFMSG_MASTER_CLEARED); --Inform the player that the DualBox Master has been cleared.
end --End: function FF_ClearDualBoxMaster()

function FF_CancelAutoResumeFollow()
    FF_LastFollowed = "";
    FF_LocalMessage(FFMSG_AUTO_RESUME_FOLLOW_CANCELED);
end --End: function FF_CancelAutoResumeFollow()

--[[#########################################
    #          Other Functions
    #########################################]]

function FF_UpdateStatus()

    FF_GetStatus();
    FF_UpdateMinimapButton();

end
    
function FF_GetStatus()
    
    FF_SemiEnabled = 0;
    
    if (FF_Options["AllowInviteRequests"]["Enabled"] == 0) then
        FF_SemiEnabled = 1;
    elseif (FF_Options["AllowAutoAcceptParty"]["Enabled"] == 0) then
        FF_SemiEnabled = 1;
    elseif (FF_Options["AllowAcceptResurrect"]["Enabled"] == 0) then
        FF_SemiEnabled = 1;
    elseif (FF_Options["PreventFollowWhenBusy"] == 0) then
        FF_SemiEnabled = 1;
    elseif (FF_Options["ShowPartyStatusIcons"] == 0) then
        FF_SemiEnabled = 1;
    elseif (FF_Options["AllowEmoteCommand"]["Enabled"] == 0) then
        FF_SemiEnabled = 1;
    end
    
end

function FF_UpdatePartyStatus()
    
    --Hide all of the status icons
    FF_PartyMember1:Hide();
    FF_PartyMember2:Hide();
    FF_PartyMember3:Hide();
    FF_PartyMember4:Hide();
    
    if FF_Options["ShowPartyStatusIcons"] == 1 then --If the party status icons feature is enabled
        
        --Show status icons for the people who are using Follow Felankor

        for i=1, GetNumSubgroupMembers() do --For each party/group member

            for j=1, table.getn(FF_PartyUsers) do --Check through an array of every party member who is using Follow Felankor

                if UnitName("party"..i) == FF_PartyUsers[j][1] then --If the party member has been found in the array

                    if i == 1 then --If the party member is in position 1
                        FF_PartyMember1:Show();
                        FF_PartyMember1:EnableMouse(false);
                        FF_PartyMember1Status:EnableMouse(false);
                    elseif i == 2 then --If the party member is in position 2
                        FF_PartyMember2:Show();
                        FF_PartyMember2:EnableMouse(false);
                        FF_PartyMember2Status:EnableMouse(false);
                    elseif i == 3 then --If the party member is in position 3
                        FF_PartyMember3:Show();
                        FF_PartyMember3:EnableMouse(false);
                        FF_PartyMember3Status:EnableMouse(false);
                    elseif i == 4 then --If the party member is in position 4
                        FF_PartyMember4:Show();
                        FF_PartyMember4:EnableMouse(false);
                        FF_PartyMember4Status:EnableMouse(false);
                    end --End: if i == 1 then
                    
                end --End:  if UnitName("party"..i) == FF_PartyUsers[j][1] then
                
            end --End:  for j=1, table.getn(FF_PartyUsers) do
            
        end --End: for i=1, GetNumSubgroupMembers() do
        
    end --End: if FF_Options["ShowPartyStatusIcons"] == 1 then
    
end

function FF_CheckForUpdate()
    
    if (FF_AnnouncedUpdate == true) then --If the player has allready been notified of an available update, don't keep spamming the message
        return 0;
    else
        
        local i = 0;
        
        local MyVersion = string.sub(FF_Version, 1, (string.len(FF_Version) - 8));
        local MyMajorVersion = string.sub(MyVersion, 1, (string.find(MyVersion, "%.") - 1));
        local MyMinorVersion = string.sub(MyVersion, string.len(MyMajorVersion) + 2, (string.find(MyVersion, "%.", string.len(MyMajorVersion) + 2) - 1));
        local MyRevisionVersion = string.sub(MyVersion, (string.len(MyMajorVersion) + string.len(MyMinorVersion) + 3), string.len(MyVersion));
        
        --The results above are in string format, so convert them to intergers
        MyMajorVersion = tonumber(MyMajorVersion);
        MyMinorVersion = tonumber(MyMinorVersion);
        MyRevisionVersion = tonumber(MyRevisionVersion);
        
        for i = 1, table.getn(FF_PartyUsers) do --For each user in the party table
            
            local PlayerVersion = string.sub(FF_PartyUsers[i][2], 1, (string.len(FF_PartyUsers[i][2]) - 8));
            local PlayerMajorVersion = string.sub(PlayerVersion, 1, (string.find(PlayerVersion, "%.") - 1));
            local PlayerMinorVersion = string.sub(PlayerVersion, string.len(PlayerMajorVersion) + 2, (string.find(PlayerVersion, "%.", string.len(PlayerMajorVersion) + 2) - 1));
            local PlayerRevisionVersion = string.sub(PlayerVersion, (string.len(PlayerMajorVersion) + string.len(PlayerMinorVersion) + 3), string.len(PlayerVersion));
            
            --The results above are in string format, so convert them to intergers
            PlayerMajorVersion = tonumber(PlayerMajorVersion);
            PlayerMinorVersion = tonumber(PlayerMinorVersion);
            PlayerRevisionVersion = tonumber(PlayerRevisionVersion);
            
            --Compare the versions
            if (PlayerMajorVersion > MyMajorVersion) then --If the players Major version is higher than mine
                FF_LocalMessage(FF_PartyUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                FF_AnnouncedUpdate = true;
                return 1; --Don't let the message get announced more than once
            elseif (PlayerMajorVersion == MyMajorVersion) then --If the players Major version is the same as mine
                
                if (PlayerMinorVersion > MyMinorVersion) then --And their Minor version is higher
                    FF_LocalMessage(FF_PartyUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                    FF_AnnouncedUpdate = true;
                    return 1; --Don't let the message get announced more than once
                elseif (PlayerMinorVersion == MyMinorVersion) then --If the players Minor version is the same as mine
                
                    if (PlayerRevisionVersion > MyRevisionVersion) then --And the their Revision version is higher than mine
                        FF_LocalMessage(FF_PartyUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                        FF_AnnouncedUpdate = true;
                        return 1; --Don't let the message get announced more than once
                    end
                    
                end
                
            end
            
        end --for i = 1, table.getn(FF_PartyUsers) do
        
        for i = 1, table.getn(FF_RaidUsers) do --For each user in the raid table
            
            local PlayerVersion = string.sub(FF_RaidUsers[i][2], 1, (string.len(FF_RaidUsers[i][2]) - 8));
            local PlayerMajorVersion = string.sub(PlayerVersion, 1, (string.find(PlayerVersion, "%.") - 1));
            local PlayerMinorVersion = string.sub(PlayerVersion, string.len(PlayerMajorVersion) + 2, (string.find(PlayerVersion, "%.", string.len(PlayerMajorVersion) + 2) - 1));
            local PlayerRevisionVersion = string.sub(PlayerVersion, (string.len(PlayerMajorVersion) + string.len(PlayerMinorVersion) + 3), string.len(PlayerVersion));
            
            --The results above are in string format, so convert them to intergers
            PlayerMajorVersion = tonumber(PlayerMajorVersion);
            PlayerMinorVersion = tonumber(PlayerMinorVersion);
            PlayerRevisionVersion = tonumber(PlayerRevisionVersion);
            
            --Compare the versions
            if (PlayerMajorVersion > MyMajorVersion) then --If the players Major version is higher than mine
                FF_LocalMessage(FF_RaidUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                FF_AnnouncedUpdate = true;
                return 1; --Don't let the message get announced more than once
            elseif (PlayerMajorVersion == MyMajorVersion) then --If the players Major version is the same as mine
                
                if (PlayerMinorVersion > MyMinorVersion) then --And their Minor version is higher
                    FF_LocalMessage(FF_RaidUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                    FF_AnnouncedUpdate = true;
                    return 1; --Don't let the message get announced more than once
                elseif (PlayerMinorVersion == MyMinorVersion) then --If the players Minor version is the same as mine
                
                    if (PlayerRevisionVersion > MyRevisionVersion) then --And the their Revision version is higher than mine
                        FF_LocalMessage(FF_RaidUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                        FF_AnnouncedUpdate = true;
                        return 1; --Don't let the message get announced more than once
                    end
                    
                end
                
            end
            
        end --for i = 1, table.getn(FF_RaidUsers) do
        
        for i = 1, table.getn(FF_GuildUsers) do --For each user in the guild table
            
            local PlayerVersion = string.sub(FF_GuildUsers[i][2], 1, (string.len(FF_GuildUsers[i][2]) - 8));
            local PlayerMajorVersion = string.sub(PlayerVersion, 1, (string.find(PlayerVersion, "%.") - 1));
            local PlayerMinorVersion = string.sub(PlayerVersion, string.len(PlayerMajorVersion) + 2, (string.find(PlayerVersion, "%.", string.len(PlayerMajorVersion) + 2) - 1));
            local PlayerRevisionVersion = string.sub(PlayerVersion, (string.len(PlayerMajorVersion) + string.len(PlayerMinorVersion) + 3), string.len(PlayerVersion));
            
            --The results above are in string format, so convert them to intergers
            PlayerMajorVersion = tonumber(PlayerMajorVersion);
            PlayerMinorVersion = tonumber(PlayerMinorVersion);
            PlayerRevisionVersion = tonumber(PlayerRevisionVersion);
            
            --Compare the versions
            if (PlayerMajorVersion > MyMajorVersion) then --If the players Major version is higher than mine
                FF_LocalMessage(FF_GuildUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                FF_AnnouncedUpdate = true;
                return 1; --Don't let the message get announced more than once
            elseif (PlayerMajorVersion == MyMajorVersion) then --If the players Major version is the same as mine
                
                if (PlayerMinorVersion > MyMinorVersion) then --And their Minor version is higher
                    FF_LocalMessage(FF_GuildUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                    FF_AnnouncedUpdate = true;
                    return 1; --Don't let the message get announced more than once
                elseif (PlayerMinorVersion == MyMinorVersion) then --If the players Minor version is the same as mine
                
                    if (PlayerRevisionVersion > MyRevisionVersion) then --And the their Revision version is higher than mine
                        FF_LocalMessage(FF_GuildUsers[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                        FF_AnnouncedUpdate = true;
                        return 1; --Don't let the message get announced more than once
                    end
                    
                end
                
            end
            
        end --for i = 1, table.getn(FF_GuildUsers) do
        
        for i = 1, table.getn(FF_Users) do --For each user in the users table
            
            local PlayerVersion = string.sub(FF_Users[i][2], 1, (string.len(FF_Users[i][2]) - 8));
            local PlayerMajorVersion = string.sub(PlayerVersion, 1, (string.find(PlayerVersion, "%.") - 1));
            local PlayerMinorVersion = string.sub(PlayerVersion, string.len(PlayerMajorVersion) + 2, (string.find(PlayerVersion, "%.", string.len(PlayerMajorVersion) + 2) - 1));
            local PlayerRevisionVersion = string.sub(PlayerVersion, (string.len(PlayerMajorVersion) + string.len(PlayerMinorVersion) + 3), string.len(PlayerVersion));
            
            --The results above are in string format, so convert them to intergers
            PlayerMajorVersion = tonumber(PlayerMajorVersion);
            PlayerMinorVersion = tonumber(PlayerMinorVersion);
            PlayerRevisionVersion = tonumber(PlayerRevisionVersion);
            
            --Compare the versions
            if (PlayerMajorVersion > MyMajorVersion) then --If the players Major version is higher than mine
                FF_LocalMessage(FF_Users[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                FF_AnnouncedUpdate = true;
                return 1; --Don't let the message get announced more than once
            elseif (PlayerMajorVersion == MyMajorVersion) then --If the players Major version is the same as mine
                
                if (PlayerMinorVersion > MyMinorVersion) then --And their Minor version is higher
                    FF_LocalMessage(FF_Users[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                    FF_AnnouncedUpdate = true;
                    return 1; --Don't let the message get announced more than once
                elseif (PlayerMinorVersion == MyMinorVersion) then --If the players Minor version is the same as mine
                
                    if (PlayerRevisionVersion > MyRevisionVersion) then --And the their Revision version is higher than mine
                        FF_LocalMessage(FF_Users[i][1]..FFMSG_USING_NEWER_VERSION_START..PlayerVersion..FFMSG_USING_NEWER_VERSION_END);
                        FF_AnnouncedUpdate = true;
                        return 1; --Don't let the message get announced more than once
                    end
                    
                end
                
            end
            
        end --for i = 1, table.getn(FF_Users) do
        
    end
    
    
    
end
    
function FF_SortTableAscending(Table, Field)
    if (Field) then
        table.sort(Table, function (a,b) return (a[Field] < b[Field]) end);
    else
        table.sort(Table, function (a,b) return (a < b) end);
    end
    
end

function FF_SortTableDescending(Table, Field)
   if (Field) then
        table.sort(Table, function (a,b) return (a[Field] > b[Field]) end);
    else
        table.sort(Table, function (a,b) return (a > b) end);
    end
    
end

function FF_ColourText(FFText, FFColour)

--Usage: FF_ColourText("text to be coloured", "red"); --Colours are: red, green, blue, white, yellow, skyblue
--OR
--Usage: FF_ColourText("text to be coloured", "FF00FF"); --Colour in hexadacimal code format (i.e. WoW colour code without the beginning |cFF)

local FFRed = "|cFFFF0000";
local FFGreen = "|cFF00FF00";
local FFBlue = "|cFF0000FF";
local FFWhite = "|cFFFFFFFF";
local FFYellow = "|cFFFFFF00";
local FFSkyBlue = "|cFF00FFFF";
local FFCloseColour = "|r";
local FFColourize = nil;
    
    if (FFColourize == 1) then
    
        if (FFColour == "red") then
            FFText = FFRed..FFText..FFCloseColour;
        elseif (FFColour == "green") then
            FFText = FFGreen..FFText..FFCloseColour;
        elseif (FFColour == "blue") then
            FFText = FFBlue..FFText..FFCloseColour;
        elseif (FFColour == "white") then
            FFText = FFWhite..FFText..FFCloseColour;
        elseif (FFColour == "yellow") then
            FFText = FFYellow..FFText..FFCloseColour;
        elseif (FFColour == "skyblue") then
            FFText = FFYellow..FFText..FFCloseColour;
        else
            FFText = "|cFF"..FFColour..FFText..FFCloseColour;
        end
    
    end

    FFColourize = nil;
    
    return FFText;
    
end

function FF_isNumeric(a)
    return type(tonumber(a)) == "number"
end