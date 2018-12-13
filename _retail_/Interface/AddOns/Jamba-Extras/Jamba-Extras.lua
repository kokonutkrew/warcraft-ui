local AJM = LibStub( "AceAddon-3.0" ):NewAddon( 
	"JambaExtras", 
	"JambaModule-1.0", 
	"AceConsole-3.0", 
	"AceEvent-3.0",
	"AceHook-3.0"
)

-- Load libraries.
local JambaUtilities = LibStub:GetLibrary( "JambaUtilities-1.0" )
local JambaHelperSettings = LibStub:GetLibrary( "JambaHelperSettings-1.0" )
local AceGUI = LibStub:GetLibrary( "AceGUI-3.0" )
local LibItemUtilsJamba = LibStub:GetLibrary( "LibItemUtilsJamba-1.0" )
local LibGratuity = LibStub( "LibGratuity-3.0" )



--  Constants and Locale for this module.
AJM.moduleName = "Jamba-Extras"
AJM.settingsDatabaseName = "JambaExtrasProfileDB"
AJM.chatCommand = "jamba-extras"


local LDB = LibStub:GetLibrary("LibDataBroker-1.1", true)
local databroker = LDB:NewDataObject ("JambaBroker", {        
   type = "data source",
   text = "Jamba",
   icon = "Interface\\Icons\\ability_priest_darkness",
   OnClick = function (self, button)     
      JambaPrivate.SettingsFrame.Widget:Show()    
   end
})
