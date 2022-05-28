window.odk = (function () {
  function getClientInfo() {
    return new Promise(resolve => {
      overwolfUninstaller.getClientInfo(resolve);
    });
  }

  function getGameInfo(gameId) {
    return new Promise((resolve, reject) => {
      overwolfUninstaller.getGameInfo(gameId, (response) => {
        if (response.status === 'error') {
          reject();
        } else {
          resolve(response);
        }
      });
    });
  }

  function getExtensionsWithActiveSubscriptions() {
    return new Promise((resolve, reject) => {
      overwolfUninstaller.getExtensionsWithActiveSubscriptions((response) => {
        if (response.status === 'error') {
          reject();
        } else {
          resolve(response.data);
        }
      });
    });
  }

  return {
    getClientInfo,
    getGameInfo,
    getExtensionsWithActiveSubscriptions
  }
})();