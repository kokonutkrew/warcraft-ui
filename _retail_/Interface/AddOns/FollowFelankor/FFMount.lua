--[[################ FFEvents.lua ######################
    # Follow Felankor
    # A World of Warcraft UI AddOn
    # By Felankor
    #
    # IMPORTANT: I do not mind people looking at my code
    # to learn from it. If you use any parts of my code
    # please give me credit in your comments. I will
    # do the same if I ever use any code from another
    # AddOn. Thanks.
    ###################################################]]--

FFMounts = {};

--[[#########################################
    #          Mount Functions
    #########################################]]
    
function FF_UpdateMounts()
    
    local FFNewNumMounts = GetNumCompanions("MOUNT");
    
    if FFNewNumMounts > 0 then --If the player has at least one mount
        
        if FFNewNumMounts > FF_NumMounts then --If there is a new mount since the last time we checked
            
            for i=1, FFNewNumMounts do
                local creatureName, spellID, icon, active, isUsable, sourceType, isFavorite, isFactionSpecific, faction, hideOnChar, isCollected = C_MountJournal.GetMountInfo(i);
                local creatureDisplayID, descriptionText, sourceText, isSelfMount, mountType = C_MountJournal.GetMountInfoExtra(i);
                
                local MountIdentified = false;
                
                --Check if the mount is a flying mount
                if mountType == 248 then -- flying mount type
                  table.insert(FF_FlyingMounts, i); --Add the companion id of the mount to FF_FlyingMounts
                  MountIdentified = true;
                elseif mountType == 230 then -- ground mount type
                  table.insert(FF_GroundMounts, i); -- Add the companion id of the mount to FF_GroundMounts
                  MountIdentified = true;
                elseif mountType == 231 or mountType == 232 or mountType == 269 then -- swimming type
                  table.insert(FF_SwimmingMounts, i); -- Add the companion id of the mount to FF_SwimmingMounts
                  MountIdentified = true;
                end
                
                if MountIdentified == false then --If the mount has not been identified yet (I.e. it's not a flying, ground or swimming mount)
                    
                    --If any unknown mounts are discovered the FF_UpdateMounts function will add duplicate mount id's
                    --because the number of discovered mounts will be lower than the number known mounts. To prevent this
                    --we will make a list of unknown mounts which will be added to the total number of discovered mounts.
                    table.insert(FF_UnknownMounts, i);
                    FFDebug("Unknown Mount... Index: "..i.." ID: "..creatureDisplayID.." Name: "..creatureName.." Type: "..mountType);
                    
                end --End: if MountIdentified == false then
                
            end --End: for i=1, FFNewNumMounts do
            
            FF_NumMounts = 0; --Reset the counter
            --Add up the total number of mounts identified
            FF_NumMounts = FF_NumMounts + table.getn(FF_FlyingMounts);
            FF_NumMounts = FF_NumMounts + table.getn(FF_GroundMounts);
            FF_NumMounts = FF_NumMounts + table.getn(FF_SwimmingMounts);
            FF_NumMounts = FF_NumMounts + table.getn(FF_UnknownMounts);
            
        end --End: if FFNewNumMounts > FF_NumMounts then
        
    end --End: if FFNewNumMounts > 0 then
    
end

function FF_MountGround(sender)
   
    if IsMounted() == 1 then --If the player is mounted
        
        if IsFlying() == 1 then --If the player is flying
            FF_SendWhisper(FFMSG_FLYING, sender);
        else
            Dismount();
        end
        
    else
        
        if FF_Static_Ground_Mount ~= "" then --If the user has set a static ground mount

            for i=1, GetNumCompanions("MOUNT") do --For every mount the user has
                
                local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", i); --Get information about the mount
                local FF_MountFound = false;
                
                if (string.lower(FF_Static_Ground_Mount) == string.lower(creatureName)) then --If the creature is found
                    CallCompanion("MOUNT", i);
                    FF_MountFound = true;
                    break; --Exit the loop
                end
                
            end
            
            if (FF_MountFound == false) then --If the static mount wasn't found
                FF_Static_Ground_Mount = ""; --Clear the static ground mount
                FF_MountRandomGround(sender); --Use a random mount instead
            end
                
        elseif table.getn(FF_GroundMounts) > 0 then
            
            if IsSwimming() == 1 and table.getn(FF_SwimmingMounts) > 0 then --If the player is swimming and has swimming mount(s)
                CallCompanion("MOUNT", FF_SwimmingMounts[math.random(table.getn(FF_SwimmingMounts))]);
            else
                CallCompanion("MOUNT", FF_GroundMounts[math.random(table.getn(FF_GroundMounts))]);
            end
            
        else
            FF_SendWhisper(FFMSG_NOMOUNTS, sender);
        end
        
    end
    
end


function FF_MountRandomGround(sender)
   
    if IsMounted() == 1 then --If the player is mounted
        
        if IsFlying() == 1 then --If the player is flying
            FF_SendWhisper(FFMSG_FLYING, sender);
        else
            Dismount();
        end
        
    else
        
        if IsSwimming() == 1 and table.getn(FF_SwimmingMounts) > 0 then --If the player is swimming and has swimming mount(s)
            CallCompanion("MOUNT", FF_SwimmingMounts[math.random(table.getn(FF_SwimmingMounts))]);
        else
            
            if table.getn(FF_GroundMounts) > 0 then
                CallCompanion("MOUNT", FF_GroundMounts[math.random(table.getn(FF_GroundMounts))]);
            elseif table.getn(FF_SlowGroundMounts) > 0 then
                CallCompanion("MOUNT", FF_SlowGroundMounts[math.random(table.getn(FF_SlowGroundMounts))]);
            else
                FF_SendWhisper(FFMSG_NOMOUNTS, sender);
            end
            
        end
        
    end
    
end

function FF_MountFlying(sender)
    
    if IsMounted() == 1 then --If the player is mounted
        
        if IsFlying() == 1 then --If the player is flying
            FF_SendWhisper(FFMSG_FLYING, sender);
        else
            Dismount();
        end
        
    else
        
        if IsFlyableArea() == 1 then
            
            if FF_Static_Flying_Mount ~= "" then --If the user has set a static flying mount
                
                for i=1, GetNumCompanions("MOUNT") do --For every mount the user has
                
                    local creatureID, creatureName, creatureSpellID, icon, issummoned = GetCompanionInfo("MOUNT", i); --Get information about the mount
                    local FF_FoundMount = false;

                    if (string.lower(FF_Static_Flying_Mount) == string.lower(creatureName)) then --If the creature is found
                        CallCompanion("MOUNT", i);
                        FF_FoundMount = true;
                        break; --Exit the loop
                    end
                    
                end
                
                if (FF_FoundMount == false) then --If the static mount was not found
                    FF_Static_Flying_Mount = ""; --Clear the static flying mount
                    FF_MountRandomFlying(sender); --Use a random mount instead
                end
                
            elseif table.getn(FF_FlyingMounts) > 0 then    
                CallCompanion("MOUNT", FF_FlyingMounts[math.random(table.getn(FF_FlyingMounts))]);
            elseif table.getn(FF_SlowFlyingMounts) > 0 then
                CallCompanion("MOUNT", FF_SlowFlyingMounts[math.random(table.getn(FF_SlowFlyingMounts))]);
            else
                FF_SendWhisper(FFMSG_NOMOUNTS, sender);
            end
            
        else
            FF_SendWhisper(FFMSG_CANT_FLY_HERE, sender);
        end
        
    end
    
end

function FF_MountRandomFlying(sender)
    
    if IsMounted() == 1 then --If the player is mounted
        
        if IsFlying() == 1 then --If the player is flying
            FF_SendWhisper(FFMSG_FLYING, sender);
        else
            Dismount();
        end
        
    else
        
        if IsFlyableArea() == 1 then
        
            if table.getn(FF_FlyingMounts) > 0 then    
                CallCompanion("MOUNT", FF_FlyingMounts[math.random(table.getn(FF_FlyingMounts))]);
            elseif table.getn(FF_SlowFlyingMounts) > 0 then
                CallCompanion("MOUNT", FF_SlowFlyingMounts[math.random(table.getn(FF_SlowFlyingMounts))]);
            else
                FF_SendWhisper(FFMSG_NOMOUNTS, sender);
            end
            
        else
            FF_SendWhisper(FFMSG_CANT_FLY_HERE, sender);
        end
        
    end
    
end