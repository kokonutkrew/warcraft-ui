local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(self, event)
	if event == "PARTY_INVITE_REQUEST" then
		AcceptGroup()
		for i=1, STATICPOPUP_NUMDIALOGS do
			local dlg = _G["StaticPopup"..i]
			if dlg.which == "PARTY_INVITE" then
				dlg.inviteAccepted = 1
				StaticPopup_Hide("PARTY_INVITE")
				break
			end
		end
		
	end
end)

f:RegisterEvent("PARTY_INVITE_REQUEST")