

// TODO:
// window size: 640x760
// if screenHeight >= 800
// change window size to 590x700
// don't allow resize

window.document.addEventListener("DOMContentLoaded", function() {

	function asyncGetPrimaryDisplayObject() {
		return new Promise((resolve, reject) => {
			overwolf.utils.getMonitorsList(result => {
				if ((result === null) || (result.displays === null)) {
					console.error("failed to get primary monitor object");
					return reject();
				}

				let primaryDisplay = result.displays.find(display => {
					return display.is_primary;
				});

				if (primaryDisplay === null) {
					return reject();
				}

				return resolve(primaryDisplay);
			});
		});
	}

	function setSizeBasedOnScreenHeight(windowId, screenHeight) {
		if (screenHeight >= 800) {
			overwolf.windows.changeSize(windowId, 640, 760)
		} else {
			overwolf.windows.changeSize(windowId, 590, 700)
		}
	}

	function setSize() {
		overwolf.windows.getCurrentWindow(function(res) {


			asyncGetPrimaryDisplayObject().then(display => {
				setSizeBasedOnScreenHeight(res.window.id, display.height);
			}).catch(err => {
				setSizeBasedOnScreenHeight(res.window.id, window.screen.height);
			});
		});
	}

	setSize();

});