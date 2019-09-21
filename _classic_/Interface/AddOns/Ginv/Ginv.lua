


GINV = CreateFrame("Frame")
local f = GINV
local GuildInvite = GuildInvite

f:RegisterEvent("CHAT_MSG_WHISPER")


f:SetScript("OnEvent", function(self, event, msg, sender, ...)
  if (event == "CHAT_MSG_WHISPER" and msg == "ginv") then
	  

C_FriendList.SetWhoToUi(false)
C_FriendList.SendWho('n-"'..sender..'"')	


C_Timer.After(2, function()

p = C_FriendList.GetWhoInfo(1)	

if (GetLocale() == "deDE") then
	 text1 = " "..sender.."(".. p.level..", ".. p.classStr..") möchte deiner Gilde beitreten!"
elseif (GetLocale() == "enGB") then
	 text1 = " "..sender.."(".. p.level..", ".. p.classStr..") wants to joint your Guild!"
end


StaticPopupDialogs["EXAMPLE_HELLOWORLD"] = {
  
	text = text1,
	
  button1 = "Ja",
  button2 = "Nein",
  OnAccept = function()
       
	   
	   if (GetLocale() == "deDE") then
	   message(''..sender..' wurde zur Gilde eingeladen!')
	   elseif (GetLocale() == "enGB") then
		message(''..sender..' was succesfully invited!')
	end
	   
	   GuildInvite(sender) 
  end,
  timeout = 15,
  whileDead = true,
  hideOnEscape = true,
  preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
}


	     	   
StaticPopup_Show ("EXAMPLE_HELLOWORLD")
	   
end)   
	   
	   
	   
  end
end)