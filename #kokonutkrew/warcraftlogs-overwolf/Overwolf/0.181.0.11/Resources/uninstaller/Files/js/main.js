window.main = new function () {

  let self = this;
  let ALL_SLIDES;

  let _currentSlideIndex = 0;
  let _sourceApp;

  let _firstSlide = new FirstSlide(self);
  let _progressSlide = new ProgressSlide(self);

  const APPS_IDS = {
    REPLAY_HUD: 'hffhbjnafafjnehejohpkfhjdenpifhihebpkhni',
    GAME_EVENTS_PROVIDER: 'ggfmakpbllghoepnmfelddbminamnbmfelbahfdp',
    ACHIEVEMENT_REWARDS: 'cmhjmacifnhhboffmobjofpejedkbnfolcgijhpc',
	  ACHIEVEMENT_REWARDS_UI: 'hadnijlcblooohinkbaggccaedldhpfdnaagefci',
    MANA_STORM: 'kfnacgfblhkjdgcndfdobooemjaapcefaminngbk',
    OVERWOLF_SUPPORT_APP: 'piodpklmkmghphlgebfnglkcgfmgddmbdgomgfao',
    OVERWOLF_REMOTE_CONF: 'ppagiehdogdjlomggmoejfamedbjggdggnjbilhe',
    DOCK_GUIDANCE: 'geaeplkgcaapcplbkdbjaabekkehcgoekbkmcnie',
    TEAMSPEAK: "jnabojaampcpfclojlbildognlnebnhfhibiielh",
    GAME_CAPTURE: "lnhebboianabbebhnpoodokcdcnmikacoeijpjfe",
    BROWSER: "jgbnfkaeklillfmfafgkodhlcnfdgkmjmjngaaof",

    //TODO: remove game summary from the list after it is considered an app
    GAME_SUMMARY: 'nafihghfcpikebhfhdhljejkcifgbdahdhngepfb'
  };
  const APPS_IDS_TO_IGNORE = [
    APPS_IDS.MANA_STORM,
    APPS_IDS.DOCK_GUIDANCE,
    APPS_IDS.OVERWOLF_REMOTE_CONF,
    APPS_IDS.OVERWOLF_SUPPORT_APP
  ];

  const APPS_TYPES_TO_IGNORE = ["Skin", "GameEventsProvider"];
  let extensionsWithActiveSubscriptions = [];

  function updatePixelRatio() {
     let pr = window.devicePixelRatio;
     console.log("device pixel ratio changed", pr);
    //  console.log(window.innerWidth)

    if(pr > 1) {
      document.querySelector('body').classList.add('small-dpi');
    } else {
      document.querySelector('body').classList.remove('small-dpi');
    }

  }

  window.document.addEventListener("DOMContentLoaded", async function() {
    let mqString = `(resolution: ${window.devicePixelRatio}dppx)`;
    updatePixelRatio();
    matchMedia(mqString).addEventListener("change", updatePixelRatio);

    ALL_SLIDES = document.querySelector('.state-slides').querySelectorAll('li');
    extensionsWithActiveSubscriptions =
      await Commands.getExtensionsWithActiveSubscriptions();
    _createFirstSlideUI();
    self.selectSlide("first");
  });

  this.isOverwolfSelected = false;

  this.selectSlide = function selectSlide(slideName) {
    for(let slide of ALL_SLIDES){
      slide.classList.remove("active");
    }
    switch(slideName){
      case "first":
        console.log("Showing first slide");
        _currentSlideIndex = 0;
        ALL_SLIDES[0].classList.add("active");
        _firstSlide.bindFirstSlideEvents(extensionsWithActiveSubscriptions);
        // _firstSlide.updateAppsStatus();
        break;
      case "progress":
        console.log("Showing progress slide");
        Analytics.reportUninstallClick(_sourceApp);

        if(this.isOverwolfSelected){
          _reportUninstallAnalytics();
          console.log(`uninstalling overwolf entirely`);
          Commands.startUninstall(null);
        }
        else {
          let apps = _firstSlide.getAppsToUninstall();
          Commands.startUninstall(apps);
          _currentSlideIndex = 1;
          ALL_SLIDES[1].classList.add("active");
          _progressSlide.start();
        }
        break;
      case "finish":
        console.log("Showing finish slide");
        _currentSlideIndex = 2;
        _reportUninstallAnalytics();
        ALL_SLIDES[2].classList.add("active");
        break;
    }

    for(let slide of ALL_SLIDES){
      slide.style.setProperty('--translateX', _currentSlideIndex*-100+'%');
    }
  };

  this.closeWindow = function closeWindow() {
    if(_currentSlideIndex !== 1){
      Analytics.reportCloseClicked(_sourceApp);
      Commands.closeWindow();
    }
  };

  this.openStore = function openStore() {
    Analytics.reportDiscoverClicked(_sourceApp);
    Commands.openStore();
  };

  this.navigateToSurvey = function navigateToSurvey(){
    Analytics.reportShareFeedbackClick();
    overwolfUninstaller.getClientInfo(function(client){
      overwolfUninstaller.openUrlInDefaultBrowser(`https://www.overwolf.com/pages/uninstall/survey?muid=${client.machineId}`, function(){});
    });
  };

  this.closeSubscriptionModal = function() {
    const popup = document.getElementById("subscription-popup");
    popup.classList.remove("active");
  };

  this.confirmSubscriptionModal = function() {
    self.closeSubscriptionModal();
    self.selectSlide("progress");
  };

  function _createFirstSlideUI() {
    let appCount = 0;
    let selectedElement;
    let appTemplate = Templates.app;
    _sourceApp = _getSelectedAppsToUninstall();

    Commands.getInstalledApps(async function (result) {
      let apps = [];

      if (!result || result.status !== "success" || !result.apps) {
        console.log("Failed to get installed apps");
      } else {
        apps = result.apps;

      }

      let parent = document.getElementsByClassName("uninstall-apps-section")[0];

      let hasGameSummary = false;
      let isSelected = false;

      for (let index = 0; index < apps.length; index++) {
        let app = apps[index];

        if (_shouldIgnoreApp(app)) {
          continue;
        }

        if(app.UID === APPS_IDS.GAME_SUMMARY){
          hasGameSummary = true;
        }

        appCount++;

        const isSubscribed =
          extensionsWithActiveSubscriptions.includes(app.UID);

        let subtitle = _createSubtitle(app);
        let iconPath = app.path_on_disk + "\\" + app.meta.icon;
        let appHtml = appTemplate.replace(new RegExp("{{appId}}", 'g'), app.UID)
          .replace("{{icon}}", iconPath)
          .replace("{{appName}}", app.meta.dock_button_title || app.meta.name)
          .replace("{{subtitle}}", subtitle)
          .replace("{{active}}", isSubscribed? "active" : "");

        let element = document.createElement("div");
        element.innerHTML = appHtml;
        element.className = "form-section uninstall-app";
        element.id = "uninstall-app-" + app.UID;

        isSelected = app.UID === _sourceApp;
        if (isSelected) {
          selectedElement = element;
        }

        parent.appendChild(element);

        if (subtitle.length === 0 &&
            app.game_targeting && app.game_targeting.game_ids) {
          Commands.getGameInfo(app.game_targeting.game_ids[0], function (result) {
            if (result.status === "success") {

              let subtitleElement = element.getElementsByTagName("p")[0];
              subtitleElement.innerHTML = result.gameInfo.GameTitle;
            }
          })
        }
      }

      let elements = document.getElementsByClassName("form-section uninstall-app");

      // if only 1 app (including GS), select OW and app
      if (appCount === 1) {
        self.isOverwolfSelected = true;

        document.getElementById('overwolf-checkbox').checked = true;
        let appElement = elements[0];
        appElement.getElementsByTagName("input")[0].checked = true;
      }

      // if more than 1 app and source is app
      else if(_sourceApp && _sourceApp.length > 0){
        selectedElement.getElementsByTagName("input")[0].checked = true;

        // if GS and one app, select all
        if(hasGameSummary && appCount === 2 && _sourceApp !== APPS_IDS.GAME_SUMMARY){
          document.getElementById('overwolf-checkbox').checked = true;
          document.getElementById('uninstall-app-' + APPS_IDS.GAME_SUMMARY).getElementsByTagName("input")[0].checked = true;
        }
      }

      if(appCount > 3 && !self.isOverwolfSelected && isSelected){
        selectedElement.scrollIntoView();
      }

      Analytics.reportWindowOpen(_sourceApp);
    });

  }

  function _createSubtitle(app) {
    let targeting = app.game_targeting;
	  if (!targeting) {
		  return "";
	  }
    if(targeting.type === "all"){
      return "All Games";
    }
    else{
      let gameIds = targeting.game_ids;
      if(gameIds && gameIds.length > 1){
        return gameIds.length + " games";
      }
      else{
        return "";
      }
    }
  }

  function _reportUninstallAnalytics() {
    let apps = _firstSlide.getAppsToUninstall();
    if(apps) {
      for (let appId of apps) {
        Analytics.reportAppUninstalled(appId);
      }
    }
  }

  function _shouldIgnoreApp(app) {
    let isIgnoreId = APPS_IDS_TO_IGNORE.indexOf(app.UID) >= 0;
    let isIgnoreType = APPS_TYPES_TO_IGNORE.indexOf(app.type) >= 0;
    return isIgnoreId || isIgnoreType;
  }

  function _getSelectedAppsToUninstall() {
    return _getUrlParameterByName("extensionId");
  }

  function _getUrlParameterByName(name) {
    let regex, results;
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
    results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
  }
};