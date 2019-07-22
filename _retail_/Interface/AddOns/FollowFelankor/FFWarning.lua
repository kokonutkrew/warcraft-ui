--This is a customised version of Blizzard's Raid Warning

function FFWarning_FadeInit( slotFrame )
	FadingFrame_OnLoad(slotFrame);
	FadingFrame_SetFadeInTime(slotFrame, 0.2);
	FadingFrame_SetHoldTime(slotFrame, 10.0);
	FadingFrame_SetFadeOutTime(slotFrame, 3.0);
end

function FFWarning_AddMessage( FFWarningFrame, textString )
	if ( not FFWarningFrame or not FFWarningFrame.slot1 or not FFWarningFrame.slot2 or not textString ) then
		return;
	end

	FFWarningFrame:Show();
	if ( not FFWarningFrame.slot1:IsShown() ) then
		FFWarningFrame.slot1_text = textString;
		Warning_SetSlot( FFWarningFrame.slot1, FFWarningFrame.slot1_text, FFWarningFrame.timings["FF_WARNING_MIN_HEIGHT"] );
		FFWarningFrame.slot1.scrollTime = 0;
	else
		if ( FFWarningFrame.slot2:IsShown() ) then
			FFWarningFrame.slot1_text = FFWarningFrame.slot2_text;
			Warning_SetSlot( FFWarningFrame.slot1, FFWarningFrame.slot1_text, FFWarningFrame.timings["FF_WARNING_MIN_HEIGHT"] );
			FFWarningFrame.slot1.scrollTime = FFWarningFrame.slot2.scrollTime;
		end

		FFWarningFrame.slot2_text = textString;
		Warning_SetSlot( FFWarningFrame.slot2, FFWarningFrame.slot2_text, FFWarningFrame.timings["FF_WARNING_MIN_HEIGHT"] );
		FFWarningFrame.slot2.scrollTime = 0;
	end
end

function Warning_SetSlot( slotFrame, textString, minHeight )
	slotFrame:SetText( textString );
	slotFrame:SetTextHeight(minHeight);
	FadingFrame_Show( slotFrame );
end

local FFWarning_unused = false;
function FFWarning_OnUpdate( FFWarningFrame, elapsedTime )
	if ( not FFWarningFrame or not FFWarningFrame.slot1 or not FFWarningFrame.slot2 ) then
		return;
	end

	FFWarning_unused = true;
	if ( FFWarningFrame.slot1:IsShown() ) then
		FFWarning_UpdateSlot( FFWarningFrame.slot1, FFWarningFrame.timings, elapsedTime );
		FFWarning_unused = false;
	end

	if ( FFWarningFrame.slot2:IsShown() ) then
		FFWarning_UpdateSlot( FFWarningFrame.slot2, FFWarningFrame.timings, elapsedTime );
		FFWarning_unused = false;
	end
	
	if ( FFWarning_unused ) then
		FFWarningFrame:Hide();
	end
end

function FFWarning_UpdateSlot( slotFrame, timings, elapsedTime )
	if ( slotFrame.scrollTime ) then
		slotFrame.scrollTime = slotFrame.scrollTime + elapsedTime;
		if ( slotFrame.scrollTime <= timings["FF_WARNING_SCALE_UP_TIME"] ) then
			slotFrame:SetTextHeight(floor(timings["FF_WARNING_MIN_HEIGHT"]+((timings["FF_WARNING_MAX_HEIGHT"]-timings["FF_WARNING_MIN_HEIGHT"])*slotFrame.scrollTime/timings["FF_WARNING_SCALE_UP_TIME"])));
		elseif ( slotFrame.scrollTime <= timings["FF_WARNING_SCALE_DOWN_TIME"] ) then
			slotFrame:SetTextHeight(floor(timings["FF_WARNING_MAX_HEIGHT"] - ((timings["FF_WARNING_MAX_HEIGHT"]-timings["FF_WARNING_MIN_HEIGHT"])*(slotFrame.scrollTime - timings["FF_WARNING_SCALE_UP_TIME"])/(timings["FF_WARNING_SCALE_DOWN_TIME"] - timings["FF_WARNING_SCALE_UP_TIME"]))));
		else
			slotFrame:SetTextHeight(timings["FF_WARNING_MIN_HEIGHT"]);
			slotFrame.scrollTime = nil;
		end
	end	
	FadingFrame_OnUpdate(slotFrame);
end

function FFWarning_OnLoad(self)
	self.slot1 = FFWarningSlot1;
	self.slot2 = FFWarningSlot2;
	FFWarning_FadeInit( self.slot1 );
	FFWarning_FadeInit( self.slot2 );
	self.timings = { };
	self.timings["FF_WARNING_MIN_HEIGHT"] = 20.0;
	self.timings["FF_WARNING_MAX_HEIGHT"] = 30.0;
	self.timings["FF_WARNING_SCALE_UP_TIME"] = 0.2;
	self.timings["FF_WARNING_SCALE_DOWN_TIME"] = 0.4;
end

function NewFFWarning(message)

    local FFYellow = "|cFFFFFF00";
    local FFSkyBlue = "|cFF00FFFF";
    local FFCloseColour = "|r";
    
    message = "{star} "..FFYellow.."[FF]"..FFCloseColour..FFSkyBlue..message..FFCloseColour.." {star}"; --Add some icons and colour to the message

    --Replace tags with raid icons
    local term;
    for tag in string.gmatch(message, "%b{}") do
        term = strlower(string.gsub(tag, "[{}]", ""));
        if ( ICON_TAG_LIST[term] and ICON_LIST[ICON_TAG_LIST[term]] ) then
            -- Using 0 as the height to make the texture match the font height
            message = string.gsub(message, tag, ICON_LIST[ICON_TAG_LIST[term]] .. "0|t");
        end
    end	
    
    FFWarning_AddMessage(FFWarning, message);
    PlaySound("RaidWarning");
    
end