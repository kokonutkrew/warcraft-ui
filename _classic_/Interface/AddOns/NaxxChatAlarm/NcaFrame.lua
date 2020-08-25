-- Author      : Naxxrama | Everlook - Karsten Potreck
-- Create Date : 10/2/2019 5:30:14 AM

local NChatAlarm, CA= ...
local oldChat;
local Chatcounter=0;

Chat_ShouldColorChatByClass = function() 
	if chkBtnPlayerColor:GetChecked() then
		return true;
	else
		return false;
	end	
end

SLASH_NCA1, SLASH_NCA2 = '/naxx', '/nca'; 
function SlashCmdList.NCA(msg, editbox) 
	if (not NcaFrame:IsShown()) then
		print("Willkommen zur\195\188ck!");	
	CheckChannels();
	btnClose_OnClick();
	end 
end

function CheckChannels() 

		local channelNr=ChannelExist(1);--lokal
		if (channelNr) then
			_G[chkBtnGeneral:GetName () .. "Text"]:SetText (channelNr.."-"..CA.Channels[locale][1]);
			chkBtnGeneral:Enable();
		else
			chkBtnGeneral:Disable();
			chkBtnGeneral:SetChecked(false);
			ChatAlarm.chkBtnGeneral=false;
		end
		channelNr=ChannelExist(2);--lfg

		if (channelNr) then
			_G[chkBtnLFG:GetName () .. "Text"]:SetText (channelNr.."-"..CA.Channels[locale][2]);
			chkBtnLFG:Enable();
		else
			chkBtnLFG:Disable();
			chkBtnLFG:SetChecked(false);
			ChatAlarm.chkBtnLFG=false;
		end
		channelNr=ChannelExist(3);--trade
	
		if (channelNr) then
			_G[chkBtnTrade:GetName () .. "Text"]:SetText (channelNr.."-"..CA.Channels[locale][3]);
			chkBtnTrade:Enable();
		else
			chkBtnTrade:Disable();
			chkBtnTrade:SetChecked(false);
			ChatAlarm.chkBtnTrade=false;
		end	
		InGuild(); --guild
end

-- sind Channel vorhanden
function ChannelExist(count) 
local index
		index = GetChannelName(CA.Channels[locale][count]);
		if (index>0)then
			return index;
		else
			return false;
		end
end

--Gildencheck 
function InGuild()
			local guildName, guildRankName, guildRankIndex = GetGuildInfo("player");
			if (guildName) then
				chkBtnPostGuild:Enable();
				return true;
			else
				chkBtnPostGuild:Disable();
				chkBtnPostGuild:SetChecked(false);
				ChatAlarm.chkBtnPostGuild=false;
				return false;
			end
end

--Farbfunktion
local function ShowColorPicker(r, g, b, a, changedCallback)
	 ColorPickerFrame:SetColorRGB(r,g,b);
	 ColorPickerFrame.hasOpacity, ColorPickerFrame.opacity = (a ~= nil), a;
	 ColorPickerFrame.previousValues = {r,g,b,a};
	 ColorPickerFrame.func, ColorPickerFrame.opacityFunc, ColorPickerFrame.cancelFunc = 
	 changedCallback, changedCallback, changedCallback;
	 ColorPickerFrame:Hide(); -- Need to run the OnShow handler.
	 ColorPickerFrame:Show();
end

--Callback Farbfunktion
local function myColorCallback(restore)
	 local newR, newG, newB, newA;
	 if restore then
	  -- benutzt alte farbe für den color picker
	  newR, newG, newB, newA = unpack(restore);
	 else
	  -- geänderte farbe
	  newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB();
	 end
	 -- farbe updaten
	ChatAlarm.r[CA.ColorPicker], ChatAlarm.g[CA.ColorPicker],ChatAlarm.b[CA.ColorPicker]= newR, newG, newB;
	if (CA.ColorPicker==1) then
		lblColor1:SetTextColor(ChatAlarm.r[CA.ColorPicker],ChatAlarm.g[CA.ColorPicker],ChatAlarm.b[CA.ColorPicker],1);
		CA.color1=rgbToHex(ChatAlarm.r[CA.ColorPicker],ChatAlarm.g[CA.ColorPicker],ChatAlarm.b[CA.ColorPicker]);
	end 
	if (CA.ColorPicker==2) then
		lblColor2:SetTextColor(ChatAlarm.r[CA.ColorPicker],ChatAlarm.g[CA.ColorPicker],ChatAlarm.b[CA.ColorPicker],1);
		CA.color2=rgbToHex(ChatAlarm.r[CA.ColorPicker],ChatAlarm.g[CA.ColorPicker],ChatAlarm.b[CA.ColorPicker]);
	end 	
end

-- Splitt Funktion 
function mysplit (inputstr, sep)
        if sep == nil then
                sep = "\+"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end

local function myChatFilter(self, event, msg, author,...)

	local searchBox={txtChat1:GetText(),txtChat2:GetText(),txtChat3:GetText(),txtChat4:GetText()}


	if (event=="CHAT_MSG_GUILD" and chkBtnGuild:GetChecked()==false) then 
		return false;
	end
		
	--Wenn player = poster dann raus 
	if ((CA.playerName.."-"..CA.realmName==author)and ChatAlarm.chkBtnWithPlayer==true) then
		return false, msg, author, ...
	end
	if (chkBtnActive:GetChecked()==false) then
		return false;
	end 
	if (msg:find("|")) then
		return false;
	end
	-- anti spam schutz 
	if (oldChat~=msg)then
		Chatcounter=Chatcounter+1;
		oldChat=msg;
	end
		
	local verknuepft ={};
	local txtSearch= {};
	local msgLower=strlower(msg);
	local findCounter=0;
	local gefunden=false;
	local count=0;
		-- alle vier Suchfelder durchgehen
		msg=CA.colorMatch1..msg;
		for i=1,4 do
		-- ist Feld nicht leer dann
			if (searchBox[i]~="") then
			-- buchstaben klein machen
			txtSearch[i]=strlower(searchBox[i]);
			findCounter=0;	
			-----------------------------------
			--verknüfung splitten test+test2
				verknuepft=mysplit(searchBox[i])
				--array durchlaufen 
				for k,v in pairs(verknuepft) do
				--wenn gefunden dann raufzählen
					if msgLower:find(strlower(v))then				
						findCounter=findCounter+1;	
					end
					count=k;
					--print (k.."-"..findCounter);
				end
			------------------------------------
			end
			--  alle Wörter im Satz gefunden
			if (findCounter==count and count>0)then
					
					gefunden=true;	
					findCounter=0;
					for o=1,count,1 do 
							msg=gsub(strlower(msg), strlower(verknuepft[o]), CA.colorMatch2..verknuepft[o]..CA.colorMatch1)
					end
					count=0;	
			end
		end
				
		if (gefunden==true) then
			if (ChatAlarm.chkBtnSound==true) then
				PlaySoundFile("Interface\\AddOns\\NaxxChatAlarm\\bip.mp3");	
			end
				msg=gsub(msg,CA.colorMatch1,CA.color1);
				msg=gsub(msg,CA.colorMatch2,CA.color2);
				return false,msg, author,...
			end
end



ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", myChatFilter)
--ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", myChatFilter)



function chkBtnActive_OnClick()
	ChatAlarm.chkBtnActive = chkBtnActive:GetChecked();
end
function chkBtnSound_OnClick()
	ChatAlarm.chkBtnSound=chkBtnSound:GetChecked();
end
function chkBtnWithPlayer_OnClick()
	ChatAlarm.chkBtnWithPlayer=chkBtnWithPlayer:GetChecked();
end
function chkBtnGuild_OnClick()
	ChatAlarm.chkBtnGuild=chkBtnGuild:GetChecked();
end
function chkBtnLFG_OnClick()
	ChatAlarm.chkBtnLFG=chkBtnLFG:GetChecked();
end
function chkBtnGeneral_OnClick()
	ChatAlarm.chkBtnGeneral=chkBtnGeneral:GetChecked();
end
function chkBtnTrade_OnClick()
	ChatAlarm.chkBtnTrade=chkBtnTrade:GetChecked();
end
function chkBtnPostGuild_OnClick()
	ChatAlarm.chkBtnPostGuild=chkBtnPostGuild:GetChecked();	
end
function btnColor_OnClick()
	CA.ColorPicker=1;
	ShowColorPicker(ChatAlarm.r[CA.ColorPicker],ChatAlarm.g[CA.ColorPicker],ChatAlarm.b[CA.ColorPicker],1,myColorCallback);
end
function btnColor2_OnClick()
	CA.ColorPicker=2;
	ShowColorPicker(ChatAlarm.r[CA.ColorPicker],ChatAlarm.g[CA.ColorPicker],ChatAlarm.b[CA.ColorPicker],1,myColorCallback);	
end
function rgbToHex(r,g,b)
	return string.format("|CFF%02X%02X%02X", r*255, g*255, b*255)
end
function btnReset_OnClick()
	CA:reset();
	ReloadUI();
end
function txtAutoChat_OnTextChanged()
	ChatAlarm.autoChat=txtAutoChat:GetText();
end
function chkBtnAutoPost_OnClick()
	Chatcounter=0;
	postTimer();
	--if (chkBtnAutoPost:GetChecked()) then 
	--	PostChannels();
	--end 
end
-- Zeitgeber Ticker
function postTimer()
	local ddtime=UIDropDownMenu_GetSelectedName(DDBoxDelay);
	local num = tonumber(ddtime);
	if (NCATicker) then

			NCATicker:Cancel();
			NCATicker = nil;
	end
	if ((not NCATicker) and (chkBtnAutoPost:GetChecked()) ) then
		NCATicker=C_Timer.NewTicker(num, function()
			
				PlaySoundFile("Interface\\AddOns\\NaxxChatAlarm\\ping.mp3");	
				print ("Jetzt wieder Posten");

		end
	)
	end
end


-- Channel Post
function PostChannels()
CheckChannels();

	if chkBtnLFG:GetChecked() then
	SendChatMessage(txtAutoChat:GetText(), "CHANNEL",nil,ChannelExist(2));
	end 
	if chkBtnGeneral:GetChecked() then
	SendChatMessage(txtAutoChat:GetText(), "CHANNEL",nil,ChannelExist(1));
	end 
	if chkBtnTrade:GetChecked() then
	SendChatMessage(txtAutoChat:GetText(), "CHANNEL",nil,ChannelExist(3));
	end 
	if chkBtnPostGuild:GetChecked() then
	SendChatMessage(txtAutoChat:GetText(), "GUILD",nil);
	end 
	--print(txtAutoChat:GetText()..ChannelExist(CA.Channels,3));
end

function TimeDropDown()
	for i,v in pairs(CA.menu) do
		local info = UIDropDownMenu_CreateInfo();
		info.text = v; -- displayed text
		info.value = i; -- value to work with instead of displayed text
		info.func = TimeDropDownOnSelect; -- function to handle selection
		UIDropDownMenu_AddButton(info);
	end
end

function TimeDropDownOnSelect(self, arg1, arg2, checked)
	if (not checked) then
		UIDropDownMenu_SetSelectedValue(DDBoxDelay, self.value) 
		UIDropDownMenu_SetSelectedName(DDBoxDelay, CA.menu[self.value]) 
		UIDropDownMenu_SetText(DDBoxDelay, CA.menu[self.value])
		ChatAlarm.DDBoxDelay=self.value;
		-- Timer wird geändert
		postTimer();
		ClearFocusAll();
	end
end

function TemplateDropDown()
	for i,v in pairs(CA.TemplateIni[locale]) do
		local info = UIDropDownMenu_CreateInfo();
		info.text = "|cffffff00"..v; -- displayed text
		info.value = i; -- value to work with instead of displayed text
		info.func = TemplateDropDownOnSelect; -- function to handle selection
		UIDropDownMenu_AddButton(info);
	end
end

function TemplateDropDownOnSelect(self, arg1, arg2, checked)

	if (not checked) then
		-- set selected value as selected
		UIDropDownMenu_SetSelectedValue(DDBoxTemplateSearch, self.value) 
		UIDropDownMenu_SetSelectedName(DDBoxTemplateSearch, "|cffffff00"..CA.TemplateIni[locale][self.value]) 
		UIDropDownMenu_SetText(DDBoxTemplateSearch, "|cffffff00"..CA.TemplateIni[locale][self.value]);
		ChatAlarm.DDBoxTemplateSearch=self.value;
		
		chkBtnSearchLFG_OnClick();
		chkBtnSearchLFM_OnClick();
		chkBtnSearchTank_OnClick();
		chkBtnSearchDD_OnClick();
		chkBtnSearchHeal_OnClick();
		txtChatUpdate(self.value);
		postTimer();
	end
	
end

function txtChatUpdate(index)
	for i=1,4 do 
		_G["txtChat"..i]:SetText(ChatAlarm.TemplateWords[index][i]);
	end
		txtINI:SetText(ChatAlarm.TemplateWords[index][5]);
		if (ChatAlarm.TemplateWords[index][6]~=nil) then	
			txtAutoChat:SetText(ChatAlarm.TemplateWords[index][6]);	
		end
end


function AutoChatMerge()
	local ini=ChatAlarm.TemplateWords[ChatAlarm.DDBoxTemplateSearch][5];
	local AutoChatText="";
	local member="";
	local mc=0;
	
	lblSearch:SetText(CA.tooltips[locale].lblSearch[2]..ini);	
	if chkBtnSearchDD:GetChecked() then member=member.."DD";end 
	if chkBtnSearchTank:GetChecked() then 
		if (member=="") then 
			member="Tank"; 
		else
			member=member..ChatAlarm.txtSeperate.."Tank"; 

		end
	end
	if chkBtnSearchHeal:GetChecked() then 
		if (member=="") then 
			member="Heal"; 
		else
				member=member..ChatAlarm.txtSeperate.."Heal"; 
		end	
	end
	if chkBtnSearchLFG:GetChecked() then

		AutoChatText=gsub(ChatAlarm.Merge[2],"<player>",member)
		AutoChatText=gsub(AutoChatText,"<ini>",ini)
	end
	if chkBtnSearchLFM:GetChecked() then

		AutoChatText=gsub(ChatAlarm.Merge[1],"<player>",member)
		AutoChatText=gsub(AutoChatText,"<ini>",ini)
	end
	txtAutoChat:SetText(AutoChatText);
	return AutoChatText;
end

function txtAutoChat_OnTextChanged()
	ChatAlarm.txtAutoChat=txtAutoChat:GetText();
end

function chkBtnSearchLFG_OnClick()
	chkBtnSearchLFM:SetChecked(not chkBtnSearchLFG:GetChecked())
	ChatAlarm.chkBtnSearchLFG=chkBtnSearchLFG:GetChecked();
	ChatAlarm.chkBtnSearchLFM=chkBtnSearchLFM:GetChecked();
	AutoChatMerge()
end

function chkBtnSearchLFM_OnClick()
	chkBtnSearchLFG:SetChecked(not chkBtnSearchLFM:GetChecked())
	ChatAlarm.chkBtnSearchLFM=chkBtnSearchLFM:GetChecked();
	ChatAlarm.chkBtnSearchLFG=chkBtnSearchLFG:GetChecked();
	AutoChatMerge()
end

function chkBtnSearchTank_OnClick()
	ChatAlarm.chkBtnSearchTank=chkBtnSearchTank:GetChecked();
	AutoChatMerge()
end

function chkBtnSearchDD_OnClick()
ChatAlarm.chkBtnSearchDD=chkBtnSearchDD:GetChecked();
	AutoChatMerge()
end

function chkBtnSearchHeal_OnClick()
	ChatAlarm.chkBtnSearchHeal=chkBtnSearchHeal:GetChecked();
	 AutoChatMerge()
end

function ClearFocusAll()
	local txtarray={"txtChat1","txtChat2","txtChat3","txtChat4","txtAutoChat","txtINI","DDBoxTemplateSearch","DDBoxDelay","txtMerge1","txtMerge2","txtSeperate"}
	for k,v in pairs(txtarray) do
		if (_G[v]) then
			_G[v]:SetAutoFocus(false);
			_G[v]:ClearFocus(false);
		end
	end
end

function btnOptions_OnClick()
	if (NcaFrame:GetWidth()>301) then
		
		NcaFrame:SetWidth(300);
		btnOptions:SetText(">");
		btnHint:SetText(">");
		
	else		
		NcaFrame:SetWidth(600);
		btnOptions:SetText("<");
	end

end

function btnHint_OnClick()
	if (NcaFrame:GetWidth()>601) then
		NcaFrame:SetWidth(600);
		btnHint:SetText(">");
	else		
		NcaFrame:SetWidth(880);
		btnHint:SetText("<");

	end
end

function btnSave_OnClick()
	for i=1,4 do
	ChatAlarm.TemplateWords[ChatAlarm.DDBoxTemplateSearch][i]=_G["txtChat"..i]:GetText();	
	end

	if ChatAlarm.DDBoxTemplateSearch >26 then
		ChatAlarm.TemplateWords[ChatAlarm.DDBoxTemplateSearch][6]=txtAutoChat:GetText();
	end
	print("Datensatz gespeichert");
	ClearFocusAll();
end

function NcaFrame_OnLoad(self)
	NcaFrame:Hide();
	btnOptions_OnClick();
	self:RegisterEvent("ADDON_LOADED");
	LoggingChat(1);
	DEFAULT_CHAT_FRAME:AddMessage("|cffff0000NaxxChatAlarm geladen.|r F\195\188r Optionen /naxx oder /nca aufrufen.");
end

function btnClose_OnClick()
	if(NcaFrame:IsShown())then
		NcaFrame:Hide();
		--btnClose:SetText("\\/");
		MyScanningTooltip:Hide();
			
	else
		NcaFrame:ClearAllPoints();
		NcaFrame:SetPoint("TOPLEFT",btnClose);

		CheckChannels();
		NcaFrame:Show();
		--btnClose:SetText("/\\");		
	end
	ClearFocusAll()
end


function ToolTipp(derText,f)
	local  x, y = GetCursorPosition()
	MyScanningTooltip:Hide()
	MyScanningTooltip:SetOwner(f,"ANCHOR_BOTTOMRIGHT")
	MyScanningTooltip:AddLine(derText, 0.9, 0.9,0)
	MyScanningTooltip:Show()
end

function showToolTipp()

	if ChatAlarm.chkBtnTooltip then
		local unpack = unpack
		local pairs = pairs

		local f

		for k,v in pairs(CA.tooltips[locale]) do
		  f = _G[k]
		  if f then
			if (f:IsMouseOver()) then 
				
				ToolTipp(unpack(v,1),f);
				
				return true
			
			end
			f = nil
		  end
		end
	end
end

function chkBtnTooltip_OnClick()
	ChatAlarm.chkBtnTooltip=chkBtnTooltip:GetChecked();
	MyScanningTooltip:Hide();
end

function txtINI_OnTextChanged()
	ChatAlarm.TemplateWords[ChatAlarm.DDBoxTemplateSearch][5]=txtINI:GetText();
	CA:DDBoxTemplateSearchRefresh()
end

function txtMerge1_OnTextChanged()
	ChatAlarm.Merge[1]=txtMerge1:GetText();
end

function txtMerge2_OnTextChanged()
	ChatAlarm.Merge[2]=txtMerge2:GetText();
end

function chkBtnPlayerColor_OnClick()
	ChatAlarm.chkBtnPlayerColor=chkBtnPlayerColor:GetChecked();
end

function txtSeperate_OnTextChanged()
	ChatAlarm.txtSeperate=txtSeperate:GetText();
end

function btnPostIt_OnClick()
	PostChannels()
end

