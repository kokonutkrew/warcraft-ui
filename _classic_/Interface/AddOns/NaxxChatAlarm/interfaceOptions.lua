-- Author      : Naxxrama | Everlook - Karsten Potreck
-- Create Date : 10/2/2019 5:30:14 AM


local NaxxChatAlarm = CreateFrame("FRAME", "NaxxChatAlarm");

NaxxChatAlarm.name="NaxxChatAlarm"

-- [[ Add the panel to the Interface Options ]] --
InterfaceOptions_AddCategory(NaxxChatAlarm);

local title = NaxxChatAlarm:CreateFontString(nil, nil, "GameFontNormalLarge")
title:SetPoint("TOPLEFT", 16, -16)
title:SetText("Naxx Chat Alarm - Options") 
----------------------------------------------------Option Button
----------------------------------------------------------------

local button = CreateFrame("Button","Optionen",NaxxChatAlarm,"UIPanelButtonTemplate") --frameType, frameName, frameParent, frameTemplate    
button:SetPoint("CENTER",0,0)
button:SetWidth(200)
button:SetHeight(25)
button:SetText("Optionen")
button:SetNormalFontObject("GameFontNormalSmall")
button:SetScript("OnClick", function()
    btnClose_OnClick();
	btnHint_OnClick();
end)
----------------------------------------------------Reset Button
----------------------------------------------------------------
local buttonR = CreateFrame("Button","Reset",NaxxChatAlarm,"UIPanelButtonTemplate") --frameType, frameName, frameParent, frameTemplate    
buttonR:SetPoint("TOP",0,-300)
buttonR:SetWidth(200)
buttonR:SetHeight(25)
buttonR:SetText("Reset")
buttonR:SetNormalFontObject("GameFontNormalSmall")
buttonR:SetScript("OnClick", function()
    btnReset_OnClick()
end)

--local txt1 = CreateFrame("EditBox", nil,NaxxChatAlarm,"InputBoxTemplate")
--txt1:SetFrameStrata("DIALOG")
--txt1:SetSize (200,200)
--txt1:SetAutoFocus (false)
--txt1:SetPoint("TOPLEFT", 16 ,50)
--txt1:SetMultiLine(false)
--txt1:SetMaxLetters(3)
--txt1:SetFontObject(GameFontNormal)

