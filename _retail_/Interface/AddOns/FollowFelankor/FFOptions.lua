--[[################# FFOptions.lua ####################
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
    
function FFOptions_OnLoad(panel)

    --Add the FFOptions frame to the WoW options interface
    panel.name = FFMSG_ADDON_NAME;
    panel.okay = function (self) FFOptions_OK_OnClick(); end;
    panel.cancel = function (self) FFOptions_Cancel_OnClick(); end;
    panel.default = function (self) FFOptions_Defaults_OnClick(self); end;
    InterfaceOptions_AddCategory(panel);
    
end

function FFOptionsAnnouncements_OnLoad(panel)

    --Add FFOptionsAnnouncements frame to the WoW options interface
    panel.name = FFOPTIONS_ANNOUNCEMENTS_PANEL;
    panel.parent = FFMSG_ADDON_NAME;
    panel.okay = function (self) FFOptions_OK_OnClick(); end;
    panel.cancel = function (self) FFOptions_Cancel_OnClick(); end;
    panel.default = function (self) FFOptionsAnnouncements_Defaults_OnClick(self); end;
    InterfaceOptions_AddCategory(panel);
    
end

function FFOptionsDualBox_OnLoad(panel)

    --Add FFOptionsDualBox frame to the WoW options interface
    panel.name = FFOPTIONS_DUALBOX_PANEL;
    panel.parent = FFMSG_ADDON_NAME;
    panel.okay = function (self) FFOptions_OK_OnClick(); end;
    panel.cancel = function (self) FFOptions_Cancel_OnClick(); end;
    panel.default = function (self) FFOptionsDualBox_Defaults_OnClick(self); end;
    InterfaceOptions_AddCategory(panel);
    
end

function FFOptions_Load()

    --Check/Uncheck the check boxes to display the current settings
    
    --FFOptions Panel
    FFOptions_Check_Enable:SetChecked(FF_Options["Enabled"]);
    
    FFOptions_Check_AIR:SetChecked(FF_Options["AllowInviteRequests"]["Enabled"]);
    FFOptions_Check_AIR_Guild:SetChecked(FF_Options["AllowInviteRequests"]["Guild"]);
    FFOptions_Check_AIR_Friends:SetChecked(FF_Options["AllowInviteRequests"]["Friends"]);
    FFOptions_Check_AIR_Master:SetChecked(FF_Options["AllowInviteRequests"]["Master"]);
    
    FFOptions_Check_AAP:SetChecked(FF_Options["AllowAutoAcceptParty"]["Enabled"]);
    FFOptions_Check_AAP_Guild:SetChecked(FF_Options["AllowAutoAcceptParty"]["Guild"]);
    FFOptions_Check_AAP_Friends:SetChecked(FF_Options["AllowAutoAcceptParty"]["Friends"]);
    FFOptions_Check_AAP_Master:SetChecked(FF_Options["AllowAutoAcceptParty"]["Master"]);
    
    FFOptions_Check_AAR:SetChecked(FF_Options["AllowAcceptResurrect"]["Enabled"]);
    FFOptions_Check_AAR_Guild:SetChecked(FF_Options["AllowAcceptResurrect"]["Guild"]);
    FFOptions_Check_AAR_Friends:SetChecked(FF_Options["AllowAcceptResurrect"]["Friends"]);
    FFOptions_Check_AAR_Group:SetChecked(FF_Options["AllowAcceptResurrect"]["Group"]);
    FFOptions_Check_AAR_Raid:SetChecked(FF_Options["AllowAcceptResurrect"]["Raid"]);
    FFOptions_Check_AAR_Master:SetChecked(FF_Options["AllowAcceptResurrect"]["Master"]);
    
    FFOptions_Check_PFWB:SetChecked(FF_Options["PreventFollowWhenBusy"]);
    FFOptions_Check_PSI:SetChecked(FF_Options["ShowPartyStatusIcons"]);
    
    FFOptions_Check_AEC:SetChecked(FF_Options["AllowEmoteCommand"]["Enabled"]);
    FFOptions_Check_AEC_Guild:SetChecked(FF_Options["AllowEmoteCommand"]["Guild"]);
    FFOptions_Check_AEC_Friends:SetChecked(FF_Options["AllowEmoteCommand"]["Friends"]);
    FFOptions_Check_AEC_Group:SetChecked(FF_Options["AllowEmoteCommand"]["Group"]);
    FFOptions_Check_AEC_Raid:SetChecked(FF_Options["AllowEmoteCommand"]["Raid"]);
    FFOptions_Check_AEC_Master:SetChecked(FF_Options["AllowEmoteCommand"]["Master"]);
    
    FFOptions_EnableLogging:SetChecked(FF_Options["EnableLogging"]);
    FFOptions_Check_EMMB:SetChecked(FF_Options["ShowMinimapButton"]);
    
    --FFOptionsAnnouncements Panel
    FFOptionsAnnouncements_Check_AA:SetChecked(FF_Options_Announcements["AnnounceAll"]);
    FFOptionsAnnouncements_Check_AFStart:SetChecked(FF_Options_Announcements["AnnounceFollowStart"]);
    FFOptionsAnnouncements_Check_AFStop:SetChecked(FF_Options_Announcements["AnnounceFollowStop"]);
    FFOptionsAnnouncements_Check_AAFK:SetChecked(FF_Options_Announcements["AnnounceAFK"]);
    FFOptionsAnnouncements_Check_AR:SetChecked(FF_Options_Announcements["AnnounceResurrection"]);
    FFOptionsAnnouncements_Check_AAI:SetChecked(FF_Options_Announcements["AnnounceAutoInvite"]);
    FFOptionsAnnouncements_Check_AAIR:SetChecked(FF_Options_Announcements["AnnounceRequestInviteForFriend"]);
    FFOptionsAnnouncements_Check_SCN:SetChecked(FF_Options_Announcements["StatusCheckNotify"]);
    
    --FFOptionsDualBox Panel
    FFOptionsDualBox_Check_ARF:SetChecked(FF_Options_DualBox["ResumeFollow"]["Enabled"]);
    FFOptionsDualBox_Check_ARF_Guild:SetChecked(FF_Options_DualBox["ResumeFollow"]["Guild"]);
    FFOptionsDualBox_Check_ARF_Friends:SetChecked(FF_Options_DualBox["ResumeFollow"]["Friends"]);
    FFOptionsDualBox_Check_ARF_Group:SetChecked(FF_Options_DualBox["ResumeFollow"]["Group"]);
    FFOptionsDualBox_Check_ARF_Raid:SetChecked(FF_Options_DualBox["ResumeFollow"]["Raid"]);
    FFOptionsDualBox_Check_ARF_Master:SetChecked(FF_Options_DualBox["ResumeFollow"]["Master"]);
    
    FFOptionsDualBox_Check_CRSC:SetChecked(FF_Options_DualBox["CancelResumeOnSpellCast"]);
    FFOptionsDualBox_Check_AAQ:SetChecked(FF_Options_DualBox["AutoAcceptQuests"]);
    FFOptionsDualBox_Check_AHW:SetChecked(FF_Options_DualBox["AnnounceHealthWarning"]);
    
    FF_ToggleOptions();
    FF_ToggleAnnounceSubMenus();
    
end

function FF_ToggleAnnounceSubMenus()

    --If Announce All check box is checked, disable individual announcement check boxes and vice versa

    if (FFOptionsAnnouncements_Check_AA:GetChecked() == 1) then
        FFOptionsAnnouncements_Check_AFStart:Enable();
        FFOptionsAnnouncements_Check_AFStop:Enable();
        FFOptionsAnnouncements_Check_AAFK:Enable();
        FFOptionsAnnouncements_Check_AR:Enable();
        FFOptionsAnnouncements_Check_AAI:Enable();
        FFOptionsAnnouncements_Check_AAIR:Enable();
        FFOptionsAnnouncements_Check_SCN:Enable();
    else
        FFOptionsAnnouncements_Check_AFStart:Disable();
        FFOptionsAnnouncements_Check_AFStop:Disable();
        FFOptionsAnnouncements_Check_AAFK:Disable();
        FFOptionsAnnouncements_Check_AR:Disable();
        FFOptionsAnnouncements_Check_AAI:Disable();
        FFOptionsAnnouncements_Check_AAIR:Disable();
        FFOptionsAnnouncements_Check_SCN:Disable();
    end

end
    

function FF_ToggleOptions() --Toggles Guild, Friends, Group and Raid sub options when parent option is checked/unchecked
    
    --Allow Invite Requests with !ff_inviteme
    if (FFOptions_Check_AIR:GetChecked() == 1) then
        FFOptions_Check_AIR_Guild:Enable();
        FFOptions_Check_AIR_Friends:Enable();
        FFOptions_Check_AIR_Master:Enable();
    else
        FFOptions_Check_AIR_Guild:Disable();
        FFOptions_Check_AIR_Friends:Disable();
        FFOptions_Check_AIR_Master:Disable();
    end
    
    --Auto Accept Party
    if (FFOptions_Check_AAP:GetChecked() == 1) then
        FFOptions_Check_AAP_Guild:Enable();
        FFOptions_Check_AAP_Friends:Enable();
        FFOptions_Check_AAP_Master:Enable();
    else
        FFOptions_Check_AAP_Guild:Disable();
        FFOptions_Check_AAP_Friends:Disable();
        FFOptions_Check_AAP_Master:Disable();
    end
    
    --Auto Accept Ressurect
    if (FFOptions_Check_AAR:GetChecked() == 1) then
        FFOptions_Check_AAR_Guild:Enable();
        FFOptions_Check_AAR_Friends:Enable();
        FFOptions_Check_AAR_Group:Enable();
        FFOptions_Check_AAR_Raid:Enable();
        FFOptions_Check_AAR_Master:Enable();
    else
        FFOptions_Check_AAR_Guild:Disable();
        FFOptions_Check_AAR_Friends:Disable();
        FFOptions_Check_AAR_Group:Disable();
        FFOptions_Check_AAR_Raid:Disable();
        FFOptions_Check_AAR_Master:Disable();
    end
    
    --Allow Emote Command
    if (FFOptions_Check_AEC:GetChecked() == 1) then
        FFOptions_Check_AEC_Guild:Enable();
        FFOptions_Check_AEC_Friends:Enable();
        FFOptions_Check_AEC_Group:Enable();
        FFOptions_Check_AEC_Raid:Enable();
        FFOptions_Check_AEC_Master:Enable();
    else
        FFOptions_Check_AEC_Guild:Disable();
        FFOptions_Check_AEC_Friends:Disable();
        FFOptions_Check_AEC_Group:Disable();
        FFOptions_Check_AEC_Raid:Disable();
        FFOptions_Check_AEC_Master:Disable();
    end
    
    --Auto Resume Follow
    if (FFOptionsDualBox_Check_ARF:GetChecked() == 1) then
        FFOptionsDualBox_Check_ARF_Guild:Enable();
        FFOptionsDualBox_Check_ARF_Friends:Enable();
        FFOptionsDualBox_Check_ARF_Group:Enable();
        FFOptionsDualBox_Check_ARF_Raid:Enable();
        FFOptionsDualBox_Check_ARF_Master:Enable();
    else
        FFOptionsDualBox_Check_ARF_Guild:Disable();
        FFOptionsDualBox_Check_ARF_Friends:Disable();
        FFOptionsDualBox_Check_ARF_Group:Disable();
        FFOptionsDualBox_Check_ARF_Raid:Disable();
        FFOptionsDualBox_Check_ARF_Master:Disable();
    end
    
end --End: function FF_ToggleOptions()

function FFOptions_OK_OnClick(panel)

    --Save the new settings
    --FFOptions Panel
    FF_Options["Enabled"] = FFGetChecked(FFOptions_Check_Enable);
    
    FF_Options["AllowInviteRequests"]["Enabled"] = FFGetChecked(FFOptions_Check_AIR);
    FF_Options["AllowInviteRequests"]["Guild"] = FFGetChecked(FFOptions_Check_AIR_Guild);
    FF_Options["AllowInviteRequests"]["Friends"] = FFGetChecked(FFOptions_Check_AIR_Friends);
    FF_Options["AllowInviteRequests"]["Master"] = FFGetChecked(FFOptions_Check_AIR_Master);
    
    FF_Options["AllowAutoAcceptParty"]["Enabled"] = FFGetChecked(FFOptions_Check_AAP);
    FF_Options["AllowAutoAcceptParty"]["Guild"] = FFGetChecked(FFOptions_Check_AAP_Guild);
    FF_Options["AllowAutoAcceptParty"]["Friends"] = FFGetChecked(FFOptions_Check_AAP_Friends);
    FF_Options["AllowAutoAcceptParty"]["Master"] = FFGetChecked(FFOptions_Check_AAP_Master);
    
    FF_Options["AllowAcceptResurrect"]["Enabled"] = FFGetChecked(FFOptions_Check_AAR);
    FF_Options["AllowAcceptResurrect"]["Guild"] = FFGetChecked(FFOptions_Check_AAR_Guild);
    FF_Options["AllowAcceptResurrect"]["Friends"] = FFGetChecked(FFOptions_Check_AAR_Friends);
    FF_Options["AllowAcceptResurrect"]["Group"] = FFGetChecked(FFOptions_Check_AAR_Group);
    FF_Options["AllowAcceptResurrect"]["Raid"] = FFGetChecked(FFOptions_Check_AAR_Raid);
    FF_Options["AllowAcceptResurrect"]["Master"] = FFGetChecked(FFOptions_Check_AAR_Master);
    
    FF_Options["PreventFollowWhenBusy"] = FFGetChecked(FFOptions_Check_PFWB);
    FF_Options["ShowPartyStatusIcons"] = FFGetChecked(FFOptions_Check_PSI);
    
    FF_Options["AllowEmoteCommand"]["Enabled"] = FFGetChecked(FFOptions_Check_AEC);
    FF_Options["AllowEmoteCommand"]["Guild"] = FFGetChecked(FFOptions_Check_AEC_Guild);
    FF_Options["AllowEmoteCommand"]["Friends"] = FFGetChecked(FFOptions_Check_AEC_Friends);
    FF_Options["AllowEmoteCommand"]["Group"] = FFGetChecked(FFOptions_Check_AEC_Group);
    FF_Options["AllowEmoteCommand"]["Raid"] = FFGetChecked(FFOptions_Check_AEC_Raid);
    FF_Options["AllowEmoteCommand"]["Master"] = FFGetChecked(FFOptions_Check_AEC_Master);
    
    FF_Options["EnableLogging"] = FFGetChecked(FFOptions_EnableLogging);
    FF_Options["ShowMinimapButton"] = FFGetChecked(FFOptions_Check_EMMB);
    
    --FFOptionsAnnouncement Panel
    FF_Options_Announcements["AnnounceAll"] = FFGetChecked(FFOptionsAnnouncements_Check_AA);
    FF_Options_Announcements["AnnounceFollowStart"] = FFGetChecked(FFOptionsAnnouncements_Check_AFStart);
    FF_Options_Announcements["AnnounceFollowStop"] = FFGetChecked(FFOptionsAnnouncements_Check_AFStop);
    FF_Options_Announcements["AnnounceAFK"] = FFGetChecked(FFOptionsAnnouncements_Check_AAFK);
    FF_Options_Announcements["AnnounceResurrection"] = FFGetChecked(FFOptionsAnnouncements_Check_AR);
    FF_Options_Announcements["AnnounceAutoInvite"] = FFGetChecked(FFOptionsAnnouncements_Check_AAI);
    FF_Options_Announcements["AnnounceRequestInviteForFriend"] = FFGetChecked(FFOptionsAnnouncements_Check_AAIR);
    FF_Options_Announcements["StatusCheckNotify"] = FFGetChecked(FFOptionsAnnouncements_Check_SCN);

    --FFOptionsDualBox Panel
    FF_Options_DualBox["ResumeFollow"]["Enabled"] = FFGetChecked(FFOptionsDualBox_Check_ARF);
    FF_Options_DualBox["ResumeFollow"]["Guild"] = FFGetChecked(FFOptionsDualBox_Check_ARF_Guild);
    FF_Options_DualBox["ResumeFollow"]["Friends"] = FFGetChecked(FFOptionsDualBox_Check_ARF_Friends);
    FF_Options_DualBox["ResumeFollow"]["Group"] = FFGetChecked(FFOptionsDualBox_Check_ARF_Group);
    FF_Options_DualBox["ResumeFollow"]["Raid"] = FFGetChecked(FFOptionsDualBox_Check_ARF_Raid);
    FF_Options_DualBox["ResumeFollow"]["Master"] = FFGetChecked(FFOptionsDualBox_Check_ARF_Master);
    
    FF_Options_DualBox["CancelResumeOnSpellCast"] = FFGetChecked(FFOptionsDualBox_Check_CRSC);
    FF_Options_DualBox["AutoAcceptQuests"] = FFGetChecked(FFOptionsDualBox_Check_AAQ);
    FF_Options_DualBox["AnnounceHealthWarning"] = FFGetChecked(FFOptionsDualBox_Check_AHW);
    
    FF_UpdateStatus();
    
end

function FFOptions_Cancel_OnClick(panel)
    FFOptions_Load(); --Refresh the panel to show the original settings
end

function FFOptions_Defaults_OnClick(panel)

    --Restore default options

    for key, value in pairs(FF_Options_Defaults) do
    
        if (FF_Options[key]) then
            FF_Options[key] = value;
        end
        
    end
    
    FFOptions_Load(); --Refresh the panel to show the new settings
    FF_UpdateStatus();

end

function FFOptionsAnnouncements_Defaults_OnClick(panel)

    --Restore default options

    for key, value in pairs(FF_Options_Announcements_Defaults) do
    
        if (FF_Options_Announcements[key]) then
            FF_Options_Announcements[key] = value;
        end
        
    end
    
    FFOptions_Load(); --Refresh the panel

end

function FFOptionsDualBox_Defaults_OnClick(panel)

    --Restore default options

    for key, value in pairs(FF_Options_DualBox_Defaults) do
    
        if (FF_Options_DualBox[key]) then
            FF_Options_DualBox[key] = value;
        end
        
    end
    
    FFOptions_Load(); --Refresh the panel

end

function FFGetChecked(CheckBox)

    if CheckBox:GetChecked() == 1 then
        return 1;
    else
        return 0;
    end

end