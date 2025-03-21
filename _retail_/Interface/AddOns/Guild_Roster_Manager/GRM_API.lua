-- GRM PUBLIC ACCESS API TO QUERY GRM DATABASE

-- NOTES ON GENERAL USE:

-- * API calls do not need to include guild. They will default to current guild you are in.
-- * If the player cannot be found, results will return as 'nil`
-- * Please note, the "GET" data returned is a copy of the GRM DB and not linked to the GRM database to be modified.

-- Table to hold all methods.
GRM_API = {};

-- Error Protection
GRM_API.GetCheck = function ( name , guild , formerMemberDB )
    local isValid = false;
    local guildData;
    if not formerMemberDB then
        guildData = GRM_GuildMemberHistory_Save;
    else
        guildData = GRM_PlayersThatLeftHistory_Save;
    end

    name = GRM.AppendServerName ( name );
    guild = guild or GRM_G.guildName;

    if name ~= "" and guild ~= "" then
        if  guildData[guild] and guildData[guild][name] then
            isValid = true;
        end
    end

    return isValid , name , guild ;
end

--------------------------------
-- Public Access GRM database --
--------------------------------

-- Method:          GRM_API.GetMember ( string [,string] )
-- What it Does:    Returns the member and all player data stored by GRM
GRM_API.GetMember = function ( name , guild )
    local result;
    local isValid;
    isValid , name , guild = GRM_API.GetCheck ( name , guild );

    if isValid then
        result = GRM.DeepCopyArray ( GRM_GuildMemberHistory_Save[name] );
    end

    return result;
end

-- Method:          GRM_API.GetFormerMember ( string [,string] )
-- What it Does:    Returns the former Member and all player data stored by GRM
GRM_API.GetFormerMember = function ( name , guild )
    local result;
    local isValid;
    isValid , name , guild = GRM_API.GetCheck ( name , guild , true );

    if isValid then
        result = GRM.DeepCopyArray ( GRM_PlayersThatLeftHistory_Save[guild][name] );
    end

    return result;
end

-- Method:          GRM_API.GetMemberAlts ( string [,string] )
-- What it Does:    Returns an alphabetically sorted list of alts in a string array
GRM_API.GetMemberAlts = function ( name , guild )
    local result;
    local isValid;
    isValid , name , guild = GRM_API.GetCheck ( name , guild );

    if isValid then
        result = GRM.GetAltNamesList ( GRM.GetPlayer ( name , false , guild ) , GRM.GetGuildAlts ( guild ) );
    end

    return result;
end


-- GRM_API.GetCustomNote = function()


-- end

-- GRM_API.SetCustomNote = function()


-- end

-- GRM_API.GetPlayerNote = function()

-- end

-- GRM_API.GetOfficerNote = function()

-- end


-- GRM_API.GetBirthday = function()


-- end


-- GRM_API.GetJoinDates = function()


-- end


-- GRM_API.GetPromotionDates = function()


-- end


-- GRM_API.GetBanedPlayers = function()

-- end


-- GRM_API.GetTimeAsMember = function()

-- end


-- GRM_API.GetTimeAtRank = function()

-- end


-- GRM_API.GetRankHistory = function()

-- end


-- GRM_API.GetMembershipHistory = function()

-- end


-- GRM_API.GetWhoInvited = function()

-- end


-- GRM_API.GetRoles = function()       -- Pending GRM feature

-- end


-- GRM_API.GetNickname = function()    -- Pending GRM Feature

-- end


------------------------------------------------------
------------------------------------------------------
---- TOOLBOX FOR UNIQUE API POWER TOOLS --------------
---- WARNING!!! USE WITH CAUTION!! -------------------
------------------------------------------------------

-- Method:          GRM.ClearFriendsList()
-- What it Does:    Clears the entire server side, non-battletag friends list completely to zero
-- Purpose:         To cleanup friends if you wanted
GRM_API.ClearFriendsList = function()
    for i = C_FriendList.GetNumFriends() , 1 , -1 do
        C_FriendList.RemoveFriend ( C_FriendList.GetFriendInfoByIndex ( i ).name );
    end
end

-- Method:          GRM.ClearAllOfficerNotes()
-- What it Does:    Clears every officer note to every player in the guild
-- Purpose:         Mass cleanup abilities
GRM_API.ClearAllOfficerNotes = function()
    if GRM.CanEditOfficerNote() then
        for i = 1 , GetNumGuildMembers() do
            GuildRosterSetOfficerNote ( i , "" );
        end
    end
end

-- Method:          GRM.ClearAllPublicNotes()
-- What it Does:    Clears every public note to every player in the guild
-- Purpose:         Mass cleanup abilities
GRM_API.ClearAllPublicNotes = function()
    if GRM.CanEditPublicNote() then
        for i = 1 , GetNumGuildMembers() do
            GuildRosterSetPublicNote ( i , "" );
        end
    end
end

-- Method:          GRM.RestoreAllPublicNotesFromSave()
-- What it Does:    Looks at the GRM save database and restores all the public notes
-- Purpose:         In case someone nefariously overwrites all public notes
GRM_API.RestoreAllPublicNotesFromSave = function()
    local guildData = GRM_GuildDataBackup_Save[GRM_G.guildName].members;

    if GRM.CanEditPublicNote() then
        for i = 1 , GRM.GetNumGuildies() do
            local guildie_name , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , guid  = GetGuildRosterInfo(i);

            for name , player in pairs ( guildData ) do
                if type ( player ) == "table" and guildie_name == name and guid == player.GUID then
                    GuildRosterSetPublicNote ( i , player.note);
                end
            end
        end
    end
end

-- Method:          GRM.RestoreAllOfficerNotesFromSave()
-- What it Does:    Looks at the GRM save database and restores all the officer notes
-- Purpose:         In case someone nefariously overwrites all officer notes
GRM_API.RestoreAllOfficerNotesFromSave = function()
    local guildData = GRM_GuildDataBackup_Save[GRM_G.guildName].members;

    if GRM.CanEditOfficerNote() then
        for i = 1 , GRM.GetNumGuildies() do
            local guildie_name , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , guid  = GetGuildRosterInfo(i);

            for name , player in pairs ( guildData ) do
                if type ( player ) == "table" and guildie_name == name and guid == player.GUID then
                    GuildRosterSetOfficerNote ( i , player.officerNote );
                end
            end
        end
    end
end

-- Method:          GRM_API.RestoreAllPublicNotes ( [string] )
-- What it Does:    Takes all the saved strings and overwrites all public notes
-- Purpose:         To enable players to restore all their public notes from a GRM physical backup save of the WTF \
--                  saveVariables file if they did not have an internal save point. Run the script immediately after logging in.
-- TIP:             Disable all other addons aside from GRM to ensure speedy login and run this script immediately after logging in. You only have seconds.
-- Example:         /run GRM_API.RestoreAllPublicNotes()  -- Paste into chat ASAP
GRM_API.RestoreAllPublicNotes = function( name )

    if IsInGuild() then
        if GRM.CanEditPublicNote() then
            local guildName = "";

            if not name then
                local gName , _ , _ , server = GetGuildInfo ( "PLAYER" );

                if server ~= nil then
                    guildName = gName .. "-" .. string.gsub ( string.gsub ( server , "-" , "" ) , "%s+" , "" );
                else
                    guildName = gName .. "-" .. GRM_G.realmName;
                end
            else
                guildName = name;
            end
            local guildData = GRM.GetGuild( guildName );

            if guildData then
                local memberName = "";

                for i = 1 , GRM.GetNumGuildies() do
                    local guildie_name , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , guid  = GetGuildRosterInfo(i);
                    for n , player in pairs ( guildData ) do
                        if type ( player ) == "table" and guildie_name == n and guid == player.GUID then

                            GuildRosterSetPublicNote ( i , player.note);
                            break;
                        end
                    end
                end

            else
                -- print("Trouble finding guild...")
            end
        else
            -- print("Player does not have permission to edit public notes")
        end
    else
        -- print("Player is not currently in a guild")
    end
end

-- Method:          GRM_API.SetAllUnlinkedPlayersToMain()
-- What it Does:    Any player that is not a main, and does not have any linked alts will be set as main.
-- Purpose:         Mass tool for OCD people who want to set all as main.
GRM_API.SetAllUnlinkedPlayersToMain = function()
    local guildData = GRM.GetGuild();

    for name , player in pairs ( guildData ) do
        if type ( player ) == "table" then
            if player.altGroup == "" then
                GRM.SetMain ( name );
            end
        end
    end

    GRM_UI.RefreshSelectFrames ( false , true , false , true , true , false );

end

-- Method:          GRM_API.SetAllUnknownPromoteDates ( int , int , int )
-- What it Does:    Sets all players who do not have a rank change date set yet as the given date
-- Purpose:         Mass tool to cleanup timestamps if you really do not want to investigate
-- NOTES:           This is not really recommended to use, in that it is better to try to determine at least relative join dates
GRM_API.SetAllUnknownPromoteDates = function ( day , month , year )

    if GRM.Time.IsValidSubmitDate ( day , month , year ) then
        local guildData = GRM.GetGuild();

        for _ , player in pairs ( guildData ) do
            if type ( player ) == "table" then

                -- Ok, let's do the rank history first
                if player.promoteDateUnknown or player.rankHist[1][2] == 0 then

                    player.rankHist = { { player.rankName , 0 , 0 , 0 , "0" , 0 , false , 1 } }; -- Wipe the history
                    player.rankHist[1][1] = player.rankName;
                    player.rankHist[1][2] = day;
                    player.rankHist[1][3] = month;
                    player.rankHist[1][4] = year;
                    player.rankHist[1][5] = GRM.ConvertToStandardFormatDate ( day , month , year );
                    player.rankHist[1][6] = time();
                    player.rankHist[1][7] = true;
                    player.rankHist[1][8] = 1;

                    -- If player had it set to "unknown before"
                    player.promoteDateUnknown = false;

                end

            end
        end

        GRM_UI.RefreshSelectFrames ( false , true , false , false , false , true );

    end
end

-- Method:          GRM_API.SetAllUnknownJoinDates ( int , int , int )
-- What it Does:    Sets all players who do not have a promote date set yet as the given date
-- Purpose:         Mass tool to cleanup timestamps if you really do not want to investigate
-- NOTES:           This is not really recommended to use, in that it is better to try to determine at least relative join dates
GRM_API.SetAllUnknownJoinDates = function ( day , month , year )
    local guildData = GRM.GetGuild();

    if GRM.Time.IsValidSubmitDate ( day , month , year ) then

        for _ , player in pairs ( guildData ) do
            if type ( player ) == "table" then

                -- Now, Join Date
                if player.joinDateUnknown or player.joinDateHist[1][1] == 0 then

                    player.joinDateHist = {};
                    table.insert ( player.joinDateHist , { day , month , year , GRM.Time.ConvertToStandardFormatDate ( day , month , year ) , time() , true , 1 } );

                    player.joinDateUnknown = false;

                    GRM.AddTimeStampToNote ( player.name , player.GUID , GRM.Time.FormatTimeStamp ( { day , month , year } , false , false , false ) );

                    player.events[1][1][1] = day;
                    player.events[1][1][2] = month;
                    player.events[1][2] = false;  -- Gotta Reset the "reported already" boolean!
                    GRM.RemoveFromCalendarQue ( player.name , 1 , nil );

                end
            end
        end

        GRM_UI.RefreshSelectFrames ( false , true , false , false , false , true );

    end
end

-- Method:          GRM_API.ClearAllUnverifiedPromoteDates()
-- What it Does:    Removes all the unverified promotion dates, but only the first layer, and it will not remove it if it is the ONLY promotion date
-- Purpose:         Save for the rank change error.
GRM_API.ClearAllUnverifiedPromoteDates = function()
    local guildData = GRM.GetGuild();

    for _ , player in pairs ( guildData ) do
        if type ( player ) == "table" then

            -- Ok, let's do the rank history first
            if #player.rankHist > 1 and not player.rankHist[1][7] then
                table.remove ( player.rankHist , 1 );
            end

        end
    end
    GRM_UI.RefreshSelectFrames ( false , true , false , false , false , false );
end

-- Method:          GRM_API.RollBackToVerifiedPromotionDatesOnly()
-- What it Does:    Rather than just rolling back ALL dates, it only rolls back as long as the previous date is verified.
-- Purpose:         Rank change error, but not general for all.
GRM_API.RollBackToVerifiedPromotionDatesOnly = function()
    local guildData = GRM.GetGuild();

    for _ , player in pairs ( guildData ) do
        if type(player) == "table" then
            if #player.rankHist > 1 then
                if not player.rankHist[1][7] and player.rankHist[2][7] then
                    table.remove(player.rankHist , 1)
                end
            end
        end
    end

    GRM_UI.RefreshSelectFrames ( false , true , false , false , false , false );
end

-----------------
-- LOG DETAILS --
-----------------

-- GRM_API.AddCustomLogEntry = function ( type_of_entry , text , name , name2 , refresh_log )

--     GRM.AddLog

--     -- Only refresh log if directed to do so, and it is visible
--     if refresh_log and GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame:IsVisible() then
--         GRM.BuildLogComplete( true , true );
--     end
-- end

GRM_API.AddCustomRejoinEntry = function( player_who_invited , player_who_rejoined , date_rejoined_table , date_left_table , first_ever_join_table , times_in_guild , player_level, optional_previous_name, orig_rank )

    local how_long_ago = GRM.ConvertToStandardFormatDate ( date_left_table[1] , date_left_table[2] , date_left_table[3] )

    local rejoinText = GRM.GetJoinOrRejoinString( true , player_who_invited, player_who_rejoined , date_rejoined_table, true , player_level, optional_previous_name, times_in_guild, false, "", date_left_table , how_long_ago, first_ever_join_table, orig_rank, "", false);

    GRM.AddLog ( { 7 , rejoinText , true , player_who_invited, player_who_rejoined, date_rejoined_table, true, player_level, optional_previous_name, times_in_guild, false, "", date_left_table , how_long_ago, first_ever_join_table, orig_rank, "", false })

    if GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame:IsVisible() then
        GRM.BuildLogComplete( true , true );
    end
end

-- MISC DEV TOOLS
--------------------

-- Help figure out the value of new interface rules
-- GetCVar('useClassicGuildUI') -- Need the string
GRM_API.DetermineInterfaceRule = function( text_match )
    local settings = ConsoleGetAllCommands();
    for i = 1 , #settings do
        if string.find(string.lower(settings[i].command),text_match) ~= nil then
            print(settings[i].command .. " - " ..i);
        end
    end
end