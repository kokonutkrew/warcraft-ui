local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
ZygorGuidesViewer.Gold.guides_loaded=true
if ZGV:DoMutex("GoldGatherHLEG") then return end
if UnitFactionGroup("player")~="Horde" then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
