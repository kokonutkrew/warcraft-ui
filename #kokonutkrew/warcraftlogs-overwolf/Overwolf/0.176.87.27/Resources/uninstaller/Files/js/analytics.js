let Analytics = {
  reportWindowOpen: function (appId) {
    Analytics.trackRSEvent("win_uninstall_open", appId ? 0 : 1, null);
  },
  reportCloseClicked: function (appId) {
    let extra = {
      appId: appId
    };
    let counter = 0;

    if (!appId){
      extra["appId"] = "overwolf";
      counter = 1;
    }

    Analytics.trackRSEvent("win_uninstall_cancel", counter, extra);
  },
  reportUninstallClick: function (appId) {
    let source = appId;
    let counter = 0;
    if(!appId){
      source = "overwolf";
      counter = 1;
    }
    let extra = {
      appId: source,
      entireUninstalledOverwolf: main.isOverwolfSelected
    };
    Analytics.trackRSEvent("win_uninstall_confirm", counter, extra);
  },
  reportDiscoverClicked: function (appId) {
    let counter = 0;
    let extra = {
      appId: appId
    };
    if(!appId){
      extra["appId"] = "overwolf";
      counter = 1;
    }
    Analytics.trackRSEvent("win_uninstall_discover", counter, extra);
  },
  reportAppUninstalled: function(appId){
    let extra = {
      appId: appId
    };
    Analytics.trackRSEvent("uninstalled_app_uninstaller", -1, extra);
  },
  reportShareFeedbackClick: function() {
    Analytics.trackRSEvent("uninstall_survey_click", 2 /* src = uninstaller app*/, null);
  },
  trackRSEvent: function(eventName, value, extra){
    if(typeof overwolfUninstaller !== 'undefined' && overwolfUninstaller !== null && overwolfUninstaller.trackRSEvent) {
      overwolfUninstaller.trackRSEvent(eventName, value, extra);
    }
  }
};
