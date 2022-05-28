local CurrentRealm = CreateFrame('Frame')

function CurrentRealm:Print()
    self.realmName = GetRealmName()
    self.normalizedRealmName = GetNormalizedRealmName()
    print("|cffF1D329Current Realm:|r |cff3DD341"..self.realmName.."|r")
    self.connectedRealms = GetAutoCompleteRealms()
    tDeleteItem(self.connectedRealms, self.normalizedRealmName)
    if self.connectedRealms then
        for i=1, #self.connectedRealms do
            print("|cffF1D329Connected Realm:|r |cff3DD341"..self.connectedRealms[i].."|r")
        end
    end
end

CurrentRealm:SetScript("OnEvent", CurrentRealm.Print)
CurrentRealm:RegisterEvent("PLAYER_LOGIN")

SLASH_CURRENTREALM1, SLASH_CURRENTREALM2 = "/currentrealm", "/crealm"
function SlashCmdList.CURRENTREALM()
    CurrentRealm:Print()
end