let Commands = {
  getInstalledApps: function (callback) {
    if(typeof overwolfUninstaller !== 'undefined' && overwolfUninstaller !== null && overwolfUninstaller.getInstalledApps) {
      overwolfUninstaller.getInstalledApps(callback);
    }
    else{
      let apps = getInstalledApps();
      callback({status: "success", apps: apps});
    }
  },

  closeWindow: function closeWindow() {
    console.log("Closing app");
    if(typeof overwolfUninstaller !== 'undefined' && overwolfUninstaller !== null && overwolfUninstaller.closeWindow){
      overwolfUninstaller.closeWindow();
    }
  },
  
  openStore: function () {
    console.log("Openning store");
    if(typeof overwolfUninstaller !== 'undefined' && overwolfUninstaller !== null && overwolfUninstaller.openStore) {
      overwolfUninstaller.openStore("");
    }
  },

  startUninstall: function (apps) {

    if(!apps || main.isOverwolfSelected){
      console.log("Uninstalling Overwolf");
      overwolfUninstaller.uninstall();
    }
    else{
      console.log("Uninstalling apps: " + JSON.stringify(apps));
      if(typeof overwolfUninstaller !== 'undefined' && overwolfUninstaller !== null && overwolfUninstaller.openStore){
        overwolfUninstaller.uninstall(apps);
      }
    }
  },

  startDragging: function () {
    if(typeof overwolfUninstaller !== 'undefined' && overwolfUninstaller !== null && overwolfUninstaller.dragWindow) {
      overwolfUninstaller.dragWindow()
    }
  },

  getGameInfo: function (appId, callback) {
    if(typeof overwolfUninstaller !== 'undefined' && overwolfUninstaller !== null && overwolfUninstaller.getGameInfo) {
      overwolfUninstaller.getGameInfo(appId, callback);
    }
  },

  getExtensionsWithActiveSubscriptions: async function() {
    try {
      const extensionsWithActiveSubscriptions =
        await odk.getExtensionsWithActiveSubscriptions();
      return extensionsWithActiveSubscriptions;
    } catch (e) {
      console.error(`failed to get extensions with subscriptions: ${e.message}`);
      return [];
    }



  }
};
