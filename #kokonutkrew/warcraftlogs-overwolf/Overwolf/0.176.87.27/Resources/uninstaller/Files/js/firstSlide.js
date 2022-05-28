function FirstSlide(parent) {

  let ALL_CHECKBOXES;
  let APPS_CHECKBOXES;
  let OVERWOLF_CHECKBOX;
  let UNINSTALL_BTN;

  let footerText;
  let finishText;

  let appSelectionStatus = {};
  let extensionsSubscriptions = [];

  function bindFirstSlideEvents(extensionsWithActiveSubscriptions) {
    extensionsSubscriptions = extensionsWithActiveSubscriptions;
    setTimeout(_bindEvents, 500);
  }

  function updateAppsStatus() {
    let footerStatusText;
    let finishStatusText;

    let checkedApps = APPS_CHECKBOXES.filter(checkbox => checkbox.checked);

    if (OVERWOLF_CHECKBOX.checked) {
      // Overwolf checked
      footerStatusText = 'Overwolf and all apps will be uninstalled';


      if (checkedApps.length === 1) {
        // Overwolf checked and only 1 app
        finishStatusText = `Overwolf and ${_getAppNameById(checkedApps[0].id)}<br>successfully uninstalled`;

      } else {
        // Overwolf checked and more than 1 app
        finishStatusText = `Overwolf and all apps<br>successfully uninstalled`;

      }
    } else {
      // Overwolf not checked
      if (checkedApps.length === 0) {
        // Overwolf not checked and no app is checked
        footerStatusText = 'No apps selected';

      }
      else {
        // Overwolf not checked and some apps are checked
        let appsNumberText = (checkedApps.length === 1) ? 'app' : 'apps';


        if (checkedApps.length === 1) {
          // Overwolf not checked and only 1 app is checked
          finishStatusText = `${_getAppNameById(checkedApps[0].id)}<br>successfully uninstalled`;

        } else {
          // Overwolf not checked and more than 1 app is checked
          finishStatusText = `${checkedApps.length} ${appsNumberText}<br>successfully uninstalled`;

        }

        footerStatusText = `${checkedApps.length} ${appsNumberText} will be uninstalled`;

      }
    }

    footerText.innerHTML = footerStatusText;
    finishText.innerHTML = finishStatusText;

    UNINSTALL_BTN.disabled = APPS_CHECKBOXES.length > 0 && checkedApps.length === 0;
  }
  
  function getAppsToUninstall() {
    let result = null;
    for(let appId in appSelectionStatus){
      if(appSelectionStatus.hasOwnProperty(appId)){
        if(appId !== "overwolf-checkbox" && appSelectionStatus[appId]){
          let realAppId = appId.replace("app-", "");
          if(!result){
            result = [];
          }
          result.push(realAppId);
        }
      }
    }
    return result;
  }

  function _bindEvents() {

    ALL_CHECKBOXES = Array.from(document.querySelectorAll('input[type="checkbox"]'));
    APPS_CHECKBOXES = Array.from(document.querySelector('.uninstall-apps-section').querySelectorAll('input[type="checkbox"]'));
    OVERWOLF_CHECKBOX = document.getElementById('overwolf-checkbox');
    UNINSTALL_BTN = document.getElementById('uninstall-btn');

    footerText = document.querySelector('.uninstalled-apps-status-text');
    finishText = document.querySelector('.uninstalled-apps-finish-text');

    for (let app of ALL_CHECKBOXES) {

      appSelectionStatus[app.id] = app.checked;

      app.addEventListener('change', function (e) {
        appSelectionStatus[e.target.id] = e.target.checked;

        if (e.target === OVERWOLF_CHECKBOX) {
          parent.isOverwolfSelected = OVERWOLF_CHECKBOX.checked;
          if (OVERWOLF_CHECKBOX.checked) {
            _checkAllApps();
          } else {
            _unCheckAllApps();
          }
        } else {
          if (!e.target.checked) {
            OVERWOLF_CHECKBOX.checked = false;
            parent.isOverwolfSelected = false;
          }
          else if(_allAppsChecked()){
            OVERWOLF_CHECKBOX.checked = true;
            parent.isOverwolfSelected = true;
          }
        }

        updateAppsStatus();
      });

      updateAppsStatus();
    }

    UNINSTALL_BTN.addEventListener("click", function () {
      const selectedApps = _getSelectedAppIds();
      for (const selectedAppId of selectedApps) {
        if (extensionsSubscriptions.includes(selectedAppId)) {
          const popup = document.getElementById("subscription-popup");
          popup.classList.add("active");
          return;
        }
      }

      parent.selectSlide("progress");
    });
  }

  function _checkAllApps() {
    for (let app of APPS_CHECKBOXES) {
      app.checked = true;
      appSelectionStatus[app.id] = true;
    }
  }

  function _unCheckAllApps() {
    for (let app of APPS_CHECKBOXES) {
      app.checked = false;
      appSelectionStatus[app.id] = false;
    }
  }

  function _getAppNameById(id) {
    return document.querySelector(`[for=${id}]`).querySelector('h2').innerHTML;
  }

  function _allAppsChecked() {
    let result = true;
    for(let appId in appSelectionStatus){
      if(appSelectionStatus.hasOwnProperty(appId)){
        if(appId === "overwolf-checkbox"){
          continue;
        }

        if(!appSelectionStatus[appId]){
          result = false;
          break;
        }
      }
    }
    return result;
  }

  function _getSelectedAppIds() {
    const selectedAppIds = [];
    for (const appKey in appSelectionStatus) {
      if (
        appSelectionStatus.hasOwnProperty(appKey) &&
        appKey.startsWith('app-') &&
        (appSelectionStatus[appKey] === true)
      ) {
        selectedAppIds.push(appKey.replace('app-', ''));
      }
    }
    return selectedAppIds;
  }

  return {
    bindFirstSlideEvents,
    getAppsToUninstall
  }
}